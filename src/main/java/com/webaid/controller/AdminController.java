package com.webaid.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.BeforeAfterService;
import com.webaid.service.NoticeService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/admin*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private BeforeAfterService baService;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String mainLogin(Model model) {
		logger.info("mainLogin GET");
		
		return "admin/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.info("login GET");
		
		return "admin/login";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model) {
		logger.info("main GET");
		
		return "admin/main";
	}
	
	@ResponseBody
	@RequestMapping("/imgUpload")
	public Map<String, Object> imgaeUpload(HttpServletRequest req, @RequestParam MultipartFile upload, Model model)
			throws Exception {
		logger.info("image upload!!!!!");

		// http body
		OutputStream out = null;

		Map<String, Object> map = new HashMap<String, Object>();

		// 오리지날 파일명
		String originalName = upload.getOriginalFilename();

		// 랜덤이름 생성(중복 방지용)
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;

		// 업로드한 파일 이름
		String fileName = savedName;

		// 바이트 배열로 변환
		byte[] bytes = upload.getBytes();

		// 이미지를 업로드할 디렉토리(배포경로로 설정)
		String innerUploadPath = "resources/upload/";
		String uploadPath = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		logger.info(uploadPath);

		out = new FileOutputStream(new File(uploadPath + fileName));// 서버에 파일 저장
		// 서버에 저장됨
		out.write(bytes);

		String fileUrl = "/" + innerUploadPath + fileName;

		System.out.println(fileUrl);

		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", fileUrl);

		return map;
	}
	
	@RequestMapping(value = "/menu01_01", method = RequestMethod.GET)
	public String menu01_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu01_01 GET");
		
		List<NoticeVO> topList = nService.selectTopNotice("");
		List<NoticeVO> list = nService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCountAll(cri));
		pageMaker.setFinalPage(nService.listSearchCountAll(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_01";
	}
	
	@RequestMapping(value = "/menu01_01register", method = RequestMethod.GET)
	public String menu01_01register(NoticeVO vo) {
		logger.info("menu01_01register GET");

		return "admin/menu01_01register";
	}
	
	@RequestMapping(value = "/menu01_01register", method = RequestMethod.POST)
	public String menu01_01registerPOST(NoticeVO vo) {
		logger.info("menu01_01register POST");
		System.out.println(vo);
		nService.insert(vo);
		return "redirect:/admin/menu01_01";
	}
	
	@RequestMapping(value = "/menu01_01update", method = RequestMethod.GET)
	public String menu01_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("menu01_01update GET");
		
		NoticeVO vo = nService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_01update";
	}
	
	@RequestMapping(value = "/menu01_01update", method = RequestMethod.POST)
	public String menu01_01updatePost(NoticeVO vo, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu01_01update Post");
		
		nService.update(vo);

		rtts.addAttribute("no", vo.getNo());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(nService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/menu01_01update";
	}
	
	@RequestMapping(value="/menu01_01delete/{no}", method=RequestMethod.GET)
	public String menu01_01delete(@PathVariable("no") int no){
		logger.info("notice delete");
		
		nService.delete(no);
		
		return "redirect:/admin/menu01_01";
	}
	
	@RequestMapping(value = "/menu01_02", method = RequestMethod.GET)
	public String menu01_02(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu01_02 GET");
		
		List<BeforeAfterVO> list = baService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(baService.listSearchCountAll(cri));
		pageMaker.setFinalPage(baService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_02";
	}
	
	@RequestMapping(value = "/menu01_02register", method = RequestMethod.GET)
	public String menu01_02register(Model model) {
		logger.info("menu01_02register GET");
		
		return "admin/menu01_02register";
	}
	
	@RequestMapping(value = "/menu01_02register", method = RequestMethod.POST)
	public String menu01_02registerPost(MultipartHttpServletRequest mtfRequest, Model model) {
		logger.info("menu01_02register POST");
		System.out.println(mtfRequest.getParameter("title"));
		//System.out.println(vo);
		
		return "redirect:/admin/menu01_02";
	}
	
	@RequestMapping(value = "/menu01_02update", method = RequestMethod.GET)
	public String menu01_02update(Model model) {
		logger.info("menu01_02update GET");
		
		return "admin/menu01_02update";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String menu01_03(Model model) {
		logger.info("menu01_03 GET");
		
		return "admin/menu01_03";
	}
	
	@RequestMapping(value = "/menu01_03register", method = RequestMethod.GET)
	public String menu01_03register(Model model) {
		logger.info("menu01_03register GET");
		
		return "admin/menu01_03register";
	}
	
	@RequestMapping(value = "/menu01_03update", method = RequestMethod.GET)
	public String menu01_03update(Model model) {
		logger.info("menu01_03update GET");
		
		return "admin/menu01_03update";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String menu01_04(Model model) {
		logger.info("menu01_04 GET");
		
		return "admin/menu01_04";
	}
	
	@RequestMapping(value = "/menu01_04register", method = RequestMethod.GET)
	public String menu01_04register(Model model) {
		logger.info("menu01_04register GET");
		
		return "admin/menu01_04register";
	}
	
	@RequestMapping(value = "/menu01_04update", method = RequestMethod.GET)
	public String menu01_04update(Model model) {
		logger.info("menu01_04update GET");
		
		return "admin/menu01_04update";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String menu01_05(Model model) {
		logger.info("menu01_05 GET");
		
		return "admin/menu01_05";
	}
	
	@RequestMapping(value = "/menu01_05register", method = RequestMethod.GET)
	public String menu01_05register(Model model) {
		logger.info("menu01_05register GET");
		
		return "admin/menu01_05register";
	}
	
	@RequestMapping(value = "/menu01_05update", method = RequestMethod.GET)
	public String menu01_05update(Model model) {
		logger.info("menu01_05update GET");
		
		return "admin/menu01_05update";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String menu02_01(Model model) {
		logger.info("menu02_01 GET");
		
		return "admin/menu02_01";
	}
	
	@RequestMapping(value = "/menu02_01update", method = RequestMethod.GET)
	public String menu02_01update(Model model) {
		logger.info("menu02_01update GET");
		
		return "admin/menu02_01update";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String menu03_01(Model model) {
		logger.info("menu03_01 GET");
		
		return "admin/menu03_01";
	}
	
	@RequestMapping(value = "/menu03_01register", method = RequestMethod.GET)
	public String menu03_01register(Model model) {
		logger.info("menu03_01register GET");
		
		return "admin/menu03_01register";
	}
	
	@RequestMapping(value = "/menu03_01update", method = RequestMethod.GET)
	public String menu03_01update(Model model) {
		logger.info("menu03_01update GET");
		
		return "admin/menu03_01update";
	}
	
	
}
