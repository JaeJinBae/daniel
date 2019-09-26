package com.webaid.controller;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.PageMakerWith9;
import com.webaid.domain.RealStoryVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria9;
import com.webaid.domain.UserVO;
import com.webaid.service.AdviceService;
import com.webaid.service.BeforeAfterService;
import com.webaid.service.NoticeService;
import com.webaid.service.UserService;
import com.webaid.util.FileDelete;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private BeforeAfterService baService;
	
	@RequestMapping(value="/id_duplicate_chk/{id}", method=RequestMethod.GET)
	public ResponseEntity<String> id_duplicate_chk(@PathVariable("id") String id){
		ResponseEntity<String> entity = null;
		
		UserVO vo = uService.selectById(id);
		if(vo == null){
			entity = new ResponseEntity<String>("empty", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("exist", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		logger.info("index GET");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);
			
			return "main/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "main/mIndex";
		}else if(device.isTablet()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "main/mIndex";
		}else{
			deviceType="normal";
			logger.info("디바이스타입= "+deviceType);
			
			return "main/index";
		}
	}
	
	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public String personal(Model model) {
		logger.info("personal GET");
		
		return "sub/fPersonal";
	}
	
	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agree(Model model) {
		logger.info("agree GET");
		
		return "sub/fAgree";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.info("login GET");
		
		return "sub/login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		logger.info("join GET");
		
		return "sub/join";
	}
	
	@RequestMapping(value = "/menu01_01", method = RequestMethod.GET)
	public String menu01_01(Model model) {
		logger.info("menu01_01 GET");
		
		return "sub/menu01_01";
	}
	
	@RequestMapping(value = "/menu01_02", method = RequestMethod.GET)
	public String menu01_02(Model model) {
		logger.info("menu01_02 GET");
		
		return "sub/menu01_02";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String menu01_03(Model model) {
		logger.info("menu01_03 GET");
		
		return "sub/menu01_03";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String menu01_04(Model model) {
		logger.info("menu01_04 GET");
		
		return "sub/menu01_04";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String menu01_05(Model model) {
		logger.info("menu01_05 GET");
		
		return "sub/menu01_05";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String menu02_01(Model model) {
		logger.info("menu02_01 GET");
		
		return "sub/menu02_01";
	}
	
	@RequestMapping(value = "/menu02_02", method = RequestMethod.GET)
	public String menu02_02(Model model) {
		logger.info("menu02_02 GET");
		
		return "sub/menu02_02";
	}
	
	@RequestMapping(value = "/menu02_03", method = RequestMethod.GET)
	public String menu02_03(Model model) {
		logger.info("menu02_03 GET");
		
		return "sub/menu02_03";
	}
	
	@RequestMapping(value = "/menu02_04", method = RequestMethod.GET)
	public String menu02_04(Model model) {
		logger.info("menu02_04 GET");
		
		return "sub/menu02_04";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String menu03_01(Model model) {
		logger.info("menu03_01 GET");
		
		return "sub/menu03_01";
	}
	
	@RequestMapping(value = "/menu03_02", method = RequestMethod.GET)
	public String menu03_02(Model model) {
		logger.info("menu03_02 GET");
		
		return "sub/menu03_02";
	}
	
	@RequestMapping(value = "/menu03_03", method = RequestMethod.GET)
	public String menu03_03(Model model) {
		logger.info("menu03_03 GET");
		
		return "sub/menu03_03";
	}
	
	@RequestMapping(value = "/menu03_04", method = RequestMethod.GET)
	public String menu03_04(Model model) {
		logger.info("menu03_04 GET");
		
		return "sub/menu03_04";
	}
	
	@RequestMapping(value = "/menu03_05", method = RequestMethod.GET)
	public String menu03_05(Model model) {
		logger.info("menu03_05 GET");
		
		return "sub/menu03_05";
	}
	
	@RequestMapping(value = "/menu03_06", method = RequestMethod.GET)
	public String menu03_06(Model model) {
		logger.info("menu03_06 GET");
		
		return "sub/menu03_06";
	}
	
	@RequestMapping(value = "/menu03_07", method = RequestMethod.GET)
	public String menu03_07(Model model) {
		logger.info("menu03_07 GET");
		
		return "sub/menu03_07";
	}
	
	@RequestMapping(value = "/menu04_01", method = RequestMethod.GET)
	public String menu04_01(Model model) {
		logger.info("menu04_01 GET");
		
		return "sub/menu04_01";
	}
	
	@RequestMapping(value = "/menu04_02", method = RequestMethod.GET)
	public String menu04_02(Model model) {
		logger.info("menu04_02 GET");
		
		return "sub/menu04_02";
	}
	
	@RequestMapping(value = "/menu04_03", method = RequestMethod.GET)
	public String menu04_03(Model model) {
		logger.info("menu04_03 GET");
		
		return "sub/menu04_03";
	}
	
	@RequestMapping(value = "/menu04_04", method = RequestMethod.GET)
	public String menu04_04(Model model) {
		logger.info("menu04_04 GET");
		
		return "sub/menu04_04";
	}
	
	@RequestMapping(value = "/menu05_01", method = RequestMethod.GET)
	public String menu05_01(Model model) {
		logger.info("menu05_01 GET");
		
		return "sub/menu05_01";
	}
	
	@RequestMapping(value = "/menu05_02", method = RequestMethod.GET)
	public String menu05_02(Model model) {
		logger.info("menu05_02 GET");
		
		return "sub/menu05_02";
	}
	
	@RequestMapping(value = "/menu05_03", method = RequestMethod.GET)
	public String menu05_03(Model model) {
		logger.info("menu05_03 GET");
		
		return "sub/menu05_03";
	}
	
	@RequestMapping(value = "/menu05_04", method = RequestMethod.GET)
	public String menu05_04(Model model) {
		logger.info("menu05_04 GET");
		
		return "sub/menu05_04";
	}
	
	@RequestMapping(value = "/menu05_05", method = RequestMethod.GET)
	public String menu05_05(Model model) {
		logger.info("menu05_05 GET");
		
		return "sub/menu05_05";
	}
	
	@RequestMapping(value = "/menu05_06", method = RequestMethod.GET)
	public String menu05_06(Model model) {
		logger.info("menu05_06 GET");
		
		return "sub/menu05_06";
	}
	
	@RequestMapping(value = "/menu05_07", method = RequestMethod.GET)
	public String menu05_07(Model model) {
		logger.info("menu05_07 GET");
		
		return "sub/menu05_07";
	}
	
	@RequestMapping(value = "/menu05_08", method = RequestMethod.GET)
	public String menu05_08(Model model) {
		logger.info("menu05_08 GET");
		
		return "sub/menu05_08";
	}
	
	@RequestMapping(value = "/menu05_09", method = RequestMethod.GET)
	public String menu05_09(Model model) {
		logger.info("menu05_09 GET");
		
		return "sub/menu05_09";
	}
	
	@RequestMapping(value = "/menu05_10", method = RequestMethod.GET)
	public String menu05_10(Model model) {
		logger.info("menu05_10 GET");
		
		return "sub/menu05_10";
	}
	
	@RequestMapping(value = "/menu06_01", method = RequestMethod.GET)
	public String menu06_01(Model model) {
		logger.info("menu06_01 GET");
		
		return "sub/menu06_01";
	}
	
	@RequestMapping(value = "/menu07_01", method = RequestMethod.GET)
	public String menu07_01(Model model) {
		logger.info("menu07_01 GET");
		
		return "sub/menu07_01";
	}
	
	@RequestMapping(value = "/menu07_02", method = RequestMethod.GET)
	public String menu07_02(Model model) {
		logger.info("menu07_02 GET");
		
		return "sub/menu07_02";
	}
	
	@RequestMapping(value = "/menu07_03", method = RequestMethod.GET)
	public String menu07_03(Model model) {
		logger.info("menu07_03 GET");
		
		return "sub/menu07_03";
	}
	
	@RequestMapping(value = "/menu07_04", method = RequestMethod.GET)
	public String menu07_04(Model model) {
		logger.info("menu07_04 GET");
		
		return "sub/menu07_04";
	}
	
	@RequestMapping(value = "/menu07_05", method = RequestMethod.GET)
	public String menu07_05(Model model) {
		logger.info("menu07_05 GET");
		
		return "sub/menu07_05";
	}
	
	@RequestMapping(value = "/menu08_01", method = RequestMethod.GET)
	public String menu08_01(Model model) {
		logger.info("menu08_01 GET");
		
		return "sub/menu08_01";
	}
	
	@RequestMapping(value = "/menu08_02", method = RequestMethod.GET)
	public String menu08_02(Model model) {
		logger.info("menu08_02 GET");
		
		return "sub/menu08_02";
	}
	
	@RequestMapping(value = "/menu09_01", method = RequestMethod.GET)
	public String menu09_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu09_01 GET");
		
		List<NoticeVO> topList = nService.selectTopNotice("o");
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		pageMaker.setFinalPage(nService.listSearchCount(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu09_01";
	}
	
	@RequestMapping(value = "/menu09_01read", method = RequestMethod.GET)
	public String menu09_01read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu09_01read GET");
		
		NoticeVO vo=nService.selectOne(no);
		NoticeVO beforeVO = nService.selectBefore(no);
		NoticeVO afterVO = nService.selectAfter(no);
		
		nService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		pageMaker.setFinalPage(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu09_01read";
	}
	
	@RequestMapping(value = "/menu09_02", method = RequestMethod.GET)
	public String menu09_02(@ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("menu09_02 GET");
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		pageMaker.setFinalPage(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_02";
	}
	
	@RequestMapping(value = "/menu09_02register", method = RequestMethod.GET)
	public String menu09_02register(Model model) {
		logger.info("menu09_02register GET");
		
		return "sub/menu09_02register";
	}
	
	@RequestMapping(value = "/menu09_02register", method = RequestMethod.POST)
	public String menu09_02registerPost(MultipartHttpServletRequest mtfReq, Model model) {
		logger.info("menu09_02register POST");
		
		AdviceVO vo = new AdviceVO();
		
		vo.setName(mtfReq.getParameter("name"));
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setEmail("");
		vo.setState("상담예정");
		vo.setSecret(mtfReq.getParameter("secret"));
		vo.setPw(mtfReq.getParameter("pw"));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setReply("");
		vo.setMemo("");
		vo.setIp(mtfReq.getParameter("ip"));
		vo.setAccess_url(mtfReq.getParameter("access_url"));
		vo.setReply_date("");
		vo.setQuick_state("x");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadAdvice/";
		String path = (mtfReq.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		String fileName = "";
		String storedFileName = "";
		
		Iterator<String> files = mtfReq.getFileNames();
		mtfReq.getFileNames();
		while(files.hasNext()){
			String uploadFile = files.next();
			
			MultipartFile mFile = mtfReq.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();
			if(fileName.length() == 0){
				storedFileName = "";
			}else{
				storedFileName = System.currentTimeMillis()+"_"+fileName;
			}
			
			vo.setUpload_origin(fileName);
			vo.setUpload_stored(storedFileName);
			
			try {
				mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//이미지 업로드 끝
		
		aService.insert(vo);
		
		return "redirect:/menu09_02";
	}
	
	@RequestMapping(value = "/menu09_02pwChk", method = RequestMethod.GET)
	public String menu09_02pwChk(Model model) {
		logger.info("menu09_02pwChk GET");
		
		return "sub/menu09_02pwChk";
	}
	
	@RequestMapping(value = "/menu09_02read", method = RequestMethod.GET)
	public String menu09_02read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("menu09_02read GET");
		
		AdviceVO vo = aService.selectOne(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu09_02read";
	}
	
	@RequestMapping(value = "/menu09_02update", method = RequestMethod.GET)
	public String menu05_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu09_02update GET");
		
		AdviceVO vo = aService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_02update";
	}
	
	@RequestMapping(value = "/menu09_02update", method = RequestMethod.POST)
	public String menu09_02updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu09_02update POST");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadAdvice/";
		String path = (mtfReq.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		String fileName = "";
		String storedFileName = "";
		
		Iterator<String> files = mtfReq.getFileNames();
		mtfReq.getFileNames();
		while(files.hasNext()){
			String uploadFile = files.next();
			
			MultipartFile mFile = mtfReq.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();
			if(fileName.length() == 0){
				storedFileName = "";
			}else{
				storedFileName = System.currentTimeMillis()+"_"+fileName;
			}
			
			try {
				//mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//이미지 업로드 끝
		
		String uploadState = mtfReq.getParameter("uploadState");
		
		
		AdviceVO vo = new AdviceVO();
		AdviceVO prevVO = aService.selectOne(Integer.parseInt(mtfReq.getParameter("no")));
		
		vo.setNo(prevVO.getNo());
		vo.setName(mtfReq.getParameter("name"));
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setEmail(prevVO.getEmail());
		vo.setState(prevVO.getState());
		vo.setSecret(prevVO.getSecret());
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setReply(prevVO.getReply());
		vo.setReply_date(prevVO.getReply_date());
		vo.setMemo(prevVO.getMemo());
		
		if(uploadState.equals("o")){
			vo.setUpload_origin(fileName);
			vo.setUpload_stored(storedFileName);
		}else{
			vo.setUpload_origin(prevVO.getUpload_origin());
			vo.setUpload_stored(prevVO.getUpload_stored());
		}
		
		aService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		rtts.addAttribute("page", page);
		return "redirect:/menu09_02";
	}
	
	@RequestMapping(value = "/menu09_02uploadImgDelete", method = RequestMethod.POST)
	public ResponseEntity<String> menu09_02uploadImgDelete(HttpServletRequest req, @RequestBody Map<String, String> info) {
		logger.info("menu09_02update POST");
		ResponseEntity<String> entity = null;
		
		int no = Integer.parseInt(info.get("no"));
		
		String innerUploadPath = "resources/uploadAdvice/";
		String path = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		System.out.println(path);
		AdviceVO prevVO = aService.selectOne(no);
		FileDelete fd = new FileDelete();
		
		AdviceVO vo = new AdviceVO();
		vo.setNo(no);
		
		try {
			
			fd.fileDelete(path, prevVO.getUpload_stored());
			
			vo.setUpload_origin("");
			vo.setUpload_stored("");
			aService.updateUpload(vo);
			
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
			e.printStackTrace();
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/menu09_03", method = RequestMethod.GET)
	public String menu09_03(@ModelAttribute("cri") SearchCriteria9 cri, Model model) throws Exception {
		logger.info("menu09_03 GET");
		
		List<BeforeAfterVO> list = baService.listSearch9(cri);
		
		PageMakerWith9 pageMaker = new PageMakerWith9();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(baService.listSearchCount9(cri));
		pageMaker.setFinalPage(baService.listSearchCount9(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu09_03";
	}
	
	@RequestMapping(value = "/menu09_04", method = RequestMethod.GET)
	public String menu09_04(Model model) {
		logger.info("menu09_04 GET");
		
		return "sub/menu09_04";
	}
	
	@RequestMapping(value = "/menu09_04read", method = RequestMethod.GET)
	public String menu09_04read(Model model) {
		logger.info("menu09_04read GET");
		
		return "sub/menu09_04read";
	}
	
	@RequestMapping(value = "/menu09_05", method = RequestMethod.GET)
	public String menu09_05(Model model) {
		logger.info("menu09_05 GET");
		
		return "sub/menu09_05";
	}
	
	@RequestMapping(value = "/menu09_05read", method = RequestMethod.GET)
	public String menu09_05read(Model model) {
		logger.info("menu09_05read GET");
		
		return "sub/menu09_05read";
	}
	
	@RequestMapping(value = "/menu09_06", method = RequestMethod.GET)
	public String menu09_06(Model model) {
		logger.info("menu09_06 GET");
		
		return "sub/menu09_06";
	}
	
	@RequestMapping(value = "/menu09_06read", method = RequestMethod.GET)
	public String menu09_06read(Model model) {
		logger.info("menu09_06read GET");
		
		return "sub/menu09_06read";
	}
	
	@RequestMapping(value = "/menu09_07", method = RequestMethod.GET)
	public String menu09_07(Model model) {
		logger.info("menu09_07 GET");
		
		return "sub/menu09_07";
	}
	
	@RequestMapping(value = "/menu09_08", method = RequestMethod.GET)
	public String menu09_08(Model model) {
		logger.info("menu09_08 GET");
		
		return "sub/menu09_08";
	}
	
	@RequestMapping(value = "/menu09_08read", method = RequestMethod.GET)
	public String menu09_08read(Model model) {
		logger.info("menu09_08read GET");
		
		return "sub/menu09_08read";
	}
}
