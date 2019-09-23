package com.webaid.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.BeforeAfterVO;
import com.webaid.domain.CautionVO;
import com.webaid.domain.ClinicListVO;
import com.webaid.domain.ClinicResListVO;
import com.webaid.domain.EventVO;
import com.webaid.domain.HospitalOffVO;
import com.webaid.domain.HospitalTimeVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.RealStoryVO;
import com.webaid.domain.ReviewVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.UserVO;
import com.webaid.service.BeforeAfterService;
import com.webaid.service.CautionService;
import com.webaid.service.ClinicListService;
import com.webaid.service.ClinicResListService;
import com.webaid.service.EventService;
import com.webaid.service.HospitalOffService;
import com.webaid.service.HospitalTimeService;
import com.webaid.service.NoticeService;
import com.webaid.service.RealStoryService;
import com.webaid.service.ReviewService;
import com.webaid.service.UserService;
import com.webaid.util.FileDelete;

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
	
	@Autowired
	private RealStoryService rsService;
	
	@Autowired
	private CautionService cService;
	
	@Autowired
	private ReviewService rService;
	
	@Autowired
	private EventService eService;
	
	@Autowired
	private ClinicResListService crlService;
	
	@Autowired
	private ClinicListService clService;
	
	@Autowired
	private HospitalTimeService htService;
	
	@Autowired
	private HospitalOffService hoService;
	
	@Autowired
	private UserService uService;
	
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
	public String menu01_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
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
	public String menu01_02registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu01_02register POST");
		
		List<String> imgNameList = new ArrayList<String>();
		
		//이미지 업로드
		String innerUploadPath = "resources/img/beforeAfter/";
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
			
			imgNameList.add(fileName);
			imgNameList.add(storedFileName);
			try {
				mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//이미지 업로드 끝
		
		BeforeAfterVO vo = new BeforeAfterVO();
		
		vo.setNo(0);
		vo.setClinic_type(mtfReq.getParameter("clinic_type"));
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		vo.setImg_before_origin(imgNameList.get(0));
		vo.setImg_before_stored(imgNameList.get(1));
		vo.setImg_after_origin(imgNameList.get(2));
		vo.setImg_after_stored(imgNameList.get(3));
		
		
		baService.insert(vo);
		return "redirect:/admin/menu01_02";
	}
	
	@RequestMapping(value = "/menu01_02update", method = RequestMethod.GET)
	public String menu01_02update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu01_02update GET");
		
		BeforeAfterVO vo = baService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(baService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_02update";
	}
	
	@RequestMapping(value = "/menu01_02update", method = RequestMethod.POST)
	public String menu01_02updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu01_02update POST");
		
		
		
		
		List<String> imgNameList = new ArrayList<String>();
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadBeforeAfter/";
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
			
			imgNameList.add(fileName);
			imgNameList.add(storedFileName);
			try {
				//mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//이미지 업로드 끝
		for(int i =0; i<imgNameList.size(); i++){
			System.out.println(imgNameList.get(i));
		}
		String ImgBeforeChange = mtfReq.getParameter("imgBeforeChange");
		String ImgAfterChange = mtfReq.getParameter("imgAfterChange");
		
		BeforeAfterVO vo = new BeforeAfterVO();
		BeforeAfterVO prevVO = baService.selectOne(Integer.parseInt(mtfReq.getParameter("no")));
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setClinic_type(mtfReq.getParameter("clinic_type"));
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		if(ImgBeforeChange.equals("o") && ImgAfterChange.equals("o")){
			vo.setImg_before_origin(imgNameList.get(0));
			vo.setImg_before_stored(imgNameList.get(1));
			vo.setImg_after_origin(imgNameList.get(2));
			vo.setImg_after_stored(imgNameList.get(3));
		}else if(ImgBeforeChange.equals("o")){
			vo.setImg_before_origin(imgNameList.get(0));
			vo.setImg_before_stored(imgNameList.get(1));
			vo.setImg_after_origin(prevVO.getImg_after_origin());
			vo.setImg_after_stored(prevVO.getImg_after_stored());
		}else if(ImgAfterChange.equals("o")){
			vo.setImg_before_origin(prevVO.getImg_before_origin());
			vo.setImg_before_stored(prevVO.getImg_after_stored());
			vo.setImg_after_origin(imgNameList.get(0));
			vo.setImg_after_stored(imgNameList.get(1));
		}else if(ImgBeforeChange.equals("x") && ImgAfterChange.equals("x")){
			vo.setImg_before_origin(prevVO.getImg_before_origin());
			vo.setImg_before_stored(prevVO.getImg_after_stored());
			vo.setImg_after_origin(prevVO.getImg_after_origin());
			vo.setImg_after_stored(prevVO.getImg_after_stored());
		}
		
		baService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(baService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu01_02update";
	}
	
	@RequestMapping(value = "/menu01_02uploadImgDelete", method = RequestMethod.POST)
	public ResponseEntity<String> menu01_02uploadImgDelete(HttpServletRequest req, @RequestBody Map<String, String> info) {
		logger.info("menu01_02update POST");
		ResponseEntity<String> entity = null;
		
		int no = Integer.parseInt(info.get("no"));
		String type = info.get("type");
		
		String innerUploadPath = "resources/img/beforeAfter/";
		String path = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		System.out.println(path);
		BeforeAfterVO prevVO = baService.selectOne(no);
		FileDelete fd = new FileDelete();
		
		BeforeAfterVO vo = new BeforeAfterVO();
		vo.setNo(no);
		
		try {
			if(type.equals("before")){
				fd.fileDelete(path, prevVO.getImg_before_stored());
				
				vo.setImg_before_origin("");
				vo.setImg_before_stored("");
				baService.updateBeforeImg(vo);
			}else{
				fd.fileDelete(path, prevVO.getImg_after_stored());
				
				vo.setImg_after_origin("");
				vo.setImg_after_stored("");
				baService.updateAfterImg(vo);
			}
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
			e.printStackTrace();
		}
		
		
		return entity;
	}
	
	@RequestMapping(value="/menu01_02delete/{no}", method=RequestMethod.GET)
	public String menu01_02delete(@PathVariable("no") int no){
		logger.info("BeforeAfter delete");
		
		baService.delete(no);
		
		return "redirect:/admin/menu01_02";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String menu01_03(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu01_03 GET");
		
		List<RealStoryVO> list = rsService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rsService.listSearchCountAll(cri));
		pageMaker.setFinalPage(rsService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_03";
	}
	
	@RequestMapping(value = "/menu01_03register", method = RequestMethod.GET)
	public String menu01_03register(Model model) {
		logger.info("menu01_03register GET");
		
		return "admin/menu01_03register";
	}
	
	@RequestMapping(value = "/menu01_03register", method = RequestMethod.POST)
	public String menu01_03registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu01_03register POST");
		
		RealStoryVO vo = new RealStoryVO();
		
		vo.setNo(0);
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state("o");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadRealStory/";
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
			
			vo.setThumb_origin(fileName);
			vo.setThumb_stored(storedFileName);
			
			try {
				mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//이미지 업로드 끝
		
		rsService.insert(vo);
		return "redirect:/admin/menu01_03";
	}
	
	@RequestMapping(value = "/menu01_03update", method = RequestMethod.GET)
	public String menu01_03update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu01_03update GET");
		
		RealStoryVO vo = rsService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rsService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_03update";
	}
	
	@RequestMapping(value = "/menu01_03update", method = RequestMethod.POST)
	public String menu01_03updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu01_03update POST");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadRealStory/";
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
		
		String thumbState = mtfReq.getParameter("thumbState");
		
		
		RealStoryVO vo = new RealStoryVO();
		RealStoryVO prevVO = rsService.selectOne(Integer.parseInt(mtfReq.getParameter("no")));
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		if(thumbState.equals("o")){
			vo.setThumb_origin(fileName);
			vo.setThumb_stored(storedFileName);
		}else{
			vo.setThumb_origin(prevVO.getThumb_origin());
			vo.setThumb_stored(prevVO.getThumb_stored());
		}
		
		rsService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(rsService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu01_03update";
	}
	
	@RequestMapping(value = "/menu01_03uploadImgDelete", method = RequestMethod.POST)
	public ResponseEntity<String> menu01_03uploadImgDelete(HttpServletRequest req, @RequestBody Map<String, String> info) {
		logger.info("menu01_03update POST");
		ResponseEntity<String> entity = null;
		
		int no = Integer.parseInt(info.get("no"));
		
		String innerUploadPath = "resources/uploadRealStory/";
		String path = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		System.out.println(path);
		RealStoryVO prevVO = rsService.selectOne(no);
		FileDelete fd = new FileDelete();
		
		RealStoryVO vo = new RealStoryVO();
		vo.setNo(no);
		
		try {
			
			fd.fileDelete(path, prevVO.getThumb_stored());
			
			vo.setThumb_origin("");
			vo.setThumb_stored("");
			rsService.updateThumb(vo);
			
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
			e.printStackTrace();
		}
		
		return entity;
	}
	
	@RequestMapping(value="/menu01_03delete/{no}", method=RequestMethod.GET)
	public String menu01_03delete(@PathVariable("no") int no){
		logger.info("realStory delete");
		
		rsService.delete(no);
		
		return "redirect:/admin/menu01_03";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String menu01_04(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu01_04 GET");
		
		List<CautionVO> list = cService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCountAll(cri));
		pageMaker.setFinalPage(cService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu01_04";
	}
	
	@RequestMapping(value = "/menu01_04register", method = RequestMethod.GET)
	public String menu01_04register(Model model) {
		logger.info("menu01_04register GET");
		
		return "admin/menu01_04register";
	}
	
	@RequestMapping(value = "/menu01_04register", method = RequestMethod.POST)
	public String menu01_04registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu01_04register POST");
		
		CautionVO vo = new CautionVO();
		
		vo.setNo(0);
		vo.setClinic_type(mtfReq.getParameter("clinic_type"));
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state("o");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadCaution/";
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
			
			vo.setThumb_origin(fileName);
			vo.setThumb_stored(storedFileName);
			
			try {
				mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//이미지 업로드 끝
		
		cService.insert(vo);
		return "redirect:/admin/menu01_04";
	}
	
	@RequestMapping(value = "/menu01_04update", method = RequestMethod.GET)
	public String menu01_04update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu01_04update GET");
		
		CautionVO vo = cService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu01_04update";
	}
	
	@RequestMapping(value = "/menu01_04update", method = RequestMethod.POST)
	public String menu01_04updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu01_04update POST");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadCaution/";
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
		
		String thumbState = mtfReq.getParameter("thumbState");
		
		
		CautionVO vo = new CautionVO();
		CautionVO prevVO = cService.selectOne(Integer.parseInt(mtfReq.getParameter("no")));
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setClinic_type(mtfReq.getParameter("clinic_type"));
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		if(thumbState.equals("o")){
			vo.setThumb_origin(fileName);
			vo.setThumb_stored(storedFileName);
		}else{
			vo.setThumb_origin(prevVO.getThumb_origin());
			vo.setThumb_stored(prevVO.getThumb_stored());
		}
		
		cService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(cService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu01_04update";
	}
	
	@RequestMapping(value = "/menu01_04uploadImgDelete", method = RequestMethod.POST)
	public ResponseEntity<String> menu04_03uploadImgDelete(HttpServletRequest req, @RequestBody Map<String, String> info) {
		logger.info("menu01_04update POST");
		ResponseEntity<String> entity = null;
		
		int no = Integer.parseInt(info.get("no"));
		
		String innerUploadPath = "resources/uploadCaution/";
		String path = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		System.out.println(path);
		CautionVO prevVO = cService.selectOne(no);
		FileDelete fd = new FileDelete();
		
		CautionVO vo = new CautionVO();
		vo.setNo(no);
		
		try {
			
			fd.fileDelete(path, prevVO.getThumb_stored());
			
			vo.setThumb_origin("");
			vo.setThumb_stored("");
			cService.updateThumb(vo);
			
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
			e.printStackTrace();
		}
		
		return entity;
	}
	
	@RequestMapping(value="/menu01_04delete/{no}", method=RequestMethod.GET)
	public String menu01_04delete(@PathVariable("no") int no){
		logger.info("caution delete");
		
		cService.delete(no);
		
		return "redirect:/admin/menu01_04";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String menu01_05(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu01_05 GET");
		
		List<ReviewVO> list = rService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rService.listSearchCountAll(cri));
		pageMaker.setFinalPage(rService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu01_05";
	}
	
	@RequestMapping(value = "/menu01_05register", method = RequestMethod.GET)
	public String menu01_05register(Model model) {
		logger.info("menu01_05register GET");
		
		return "admin/menu01_05register";
	}
	
	@RequestMapping(value = "/menu01_05register", method = RequestMethod.POST)
	public String menu01_05registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu01_05register POST");
		
		ReviewVO vo = new ReviewVO();
		
		vo.setNo(0);
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state("o");
		
		rService.insert(vo);
		return "redirect:/admin/menu01_05";
	}
	
	@RequestMapping(value = "/menu01_05update", method = RequestMethod.GET)
	public String menu01_05update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu01_05update GET");
		
		ReviewVO vo = rService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu01_05update";
	}
	
	@RequestMapping(value = "/menu01_05update", method = RequestMethod.POST)
	public String menu01_05updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu01_05update POST");
		
		ReviewVO vo = new ReviewVO();
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setWriter(mtfReq.getParameter("writer"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setCnt(Integer.parseInt(mtfReq.getParameter("cnt")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		rService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(rService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu01_05update";
	}
	
	@RequestMapping(value="/menu01_05delete/{no}", method=RequestMethod.GET)
	public String menu01_05delete(@PathVariable("no") int no){
		logger.info("review delete");
		
		rService.delete(no);
		
		return "redirect:/admin/menu01_05";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String menu02_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu02_01 GET");
		
		List<ClinicResListVO> list = crlService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(crlService.listSearchCountAll(cri));
		pageMaker.setFinalPage(crlService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu02_01";
	}
	
	@RequestMapping(value = "/menu02_01update", method = RequestMethod.GET)
	public String menu02_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu02_01update GET");
		
		ClinicResListVO vo = crlService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(crlService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu02_01update";
	}
	
	@RequestMapping(value = "/menu02_01update", method = RequestMethod.POST)
	public String menu02_01updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu02_01update POST");
		
		ClinicResListVO vo = new ClinicResListVO();
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setCounseling(mtfReq.getParameter("counseling"));
		vo.setName(mtfReq.getParameter("name"));
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setEmail(mtfReq.getParameter("email"));
		vo.setMemo(mtfReq.getParameter("memo"));
		vo.setRes_state(mtfReq.getParameter("res_state"));
		
		crlService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(crlService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu02_01update";
	}
	
	@RequestMapping(value="/menu02_01delete/{no}", method=RequestMethod.GET)
	public String menu02_01delete(@PathVariable("no") int no){
		logger.info("clinicResList delete");
		
		crlService.delete(no);
		
		return "redirect:/admin/menu02_01";
	}
	
	@RequestMapping(value = "/menu02_02", method = RequestMethod.GET)
	public String menu02_02(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu02_02 GET");
		
		List<ClinicListVO> list = clService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(clService.listSearchCountAll(cri));
		pageMaker.setFinalPage(clService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu02_02";
	}
	
	@RequestMapping(value = "/menu02_02register", method = RequestMethod.POST)
	public String menu02_02registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu02_02register POST");
		
		ClinicListVO vo = new ClinicListVO();
		
		vo.setNo(0);
		vo.setC1(mtfReq.getParameter("c1"));
		vo.setC2(mtfReq.getParameter("c2"));
		vo.setC3(mtfReq.getParameter("c3"));
		vo.setC4(mtfReq.getParameter("c4"));
		vo.setC_depth(Integer.parseInt(mtfReq.getParameter("c_depth")));
		vo.setPrice(Integer.parseInt(mtfReq.getParameter("price")));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		clService.insert(vo);
		return "redirect:/admin/menu02_02";
	}
	
	@RequestMapping(value = "/menu02_02update", method = RequestMethod.POST)
	public String menu02_02updatePOST(MultipartHttpServletRequest mtfReq, RedirectAttributes rtts) throws Exception {
		logger.info("menu02_02update POST");
		
		ClinicListVO vo = new ClinicListVO();
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setC1(mtfReq.getParameter("c1"));
		vo.setC2(mtfReq.getParameter("c2"));
		vo.setC3(mtfReq.getParameter("c3"));
		vo.setC4(mtfReq.getParameter("c4"));
		vo.setC_depth(Integer.parseInt(mtfReq.getParameter("c_depth")));
		vo.setPrice(Integer.parseInt(mtfReq.getParameter("price")));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		clService.update(vo);
		
		return "redirect:/admin/menu02_02";
	}
	
	@RequestMapping(value = "/menu02_03", method = RequestMethod.GET)
	public String menu02_03(Model model) throws Exception {
		logger.info("menu02_03");
		
		List<HospitalTimeVO> list = htService.selectAll();
		
		int mon_start = list.get(0).getStart_time();
		int mon_end = list.get(0).getEnd_time();
		int tue_start = list.get(1).getStart_time();
		int tue_end = list.get(1).getEnd_time();
		int wed_start = list.get(2).getStart_time();
		int wed_end = list.get(2).getEnd_time();
		int thu_start = list.get(3).getStart_time();
		int thu_end = list.get(3).getEnd_time();
		int fri_start = list.get(4).getStart_time();
		int fri_end = list.get(4).getEnd_time();
		int sat_start = list.get(5).getStart_time();
		int sat_end = list.get(5).getEnd_time();
		
		model.addAttribute("mon_s", mon_start);
		model.addAttribute("mon_e", mon_end);
		model.addAttribute("tue_s", tue_start);
		model.addAttribute("tue_e", tue_end);
		model.addAttribute("wed_s", wed_start);
		model.addAttribute("wed_e", wed_end);
		model.addAttribute("thu_s", thu_start);
		model.addAttribute("thu_e", thu_end);
		model.addAttribute("fri_s", fri_start);
		model.addAttribute("fri_e", fri_end);
		model.addAttribute("sat_s", sat_start);
		model.addAttribute("sat_e", sat_end);
		return "admin/menu02_03";
	}
	
	@RequestMapping(value = "/menu02_03update", method = RequestMethod.POST)
	public String menu02_03updatePOST(MultipartHttpServletRequest mtfReq, RedirectAttributes rtts) throws Exception {
		logger.info("menu02_03update POST");
		
		int mon_start = (Integer.parseInt(mtfReq.getParameter("mon_start_hour"))*60)+Integer.parseInt(mtfReq.getParameter("mon_start_minute"));
		int mon_end = (Integer.parseInt(mtfReq.getParameter("mon_end_hour"))*60)+Integer.parseInt(mtfReq.getParameter("mon_end_minute"));
		int tue_start = (Integer.parseInt(mtfReq.getParameter("tue_start_hour"))*60)+Integer.parseInt(mtfReq.getParameter("tue_start_minute"));
		int tue_end = (Integer.parseInt(mtfReq.getParameter("tue_end_hour"))*60)+Integer.parseInt(mtfReq.getParameter("tue_end_minute"));
		int wed_start = (Integer.parseInt(mtfReq.getParameter("wed_start_hour"))*60)+Integer.parseInt(mtfReq.getParameter("wed_start_minute"));
		int wed_end = (Integer.parseInt(mtfReq.getParameter("wed_end_hour"))*60)+Integer.parseInt(mtfReq.getParameter("wed_end_minute"));
		int thu_start = (Integer.parseInt(mtfReq.getParameter("thu_start_hour"))*60)+Integer.parseInt(mtfReq.getParameter("thu_start_minute"));
		int thu_end = (Integer.parseInt(mtfReq.getParameter("thu_end_hour"))*60)+Integer.parseInt(mtfReq.getParameter("thu_end_minute"));
		int fri_start =( Integer.parseInt(mtfReq.getParameter("fri_start_hour"))*60)+Integer.parseInt(mtfReq.getParameter("fri_start_minute"));
		int fri_end = (Integer.parseInt(mtfReq.getParameter("fri_end_hour"))*60)+Integer.parseInt(mtfReq.getParameter("fri_end_minute"));
		int sat_start = (Integer.parseInt(mtfReq.getParameter("sat_start_hour"))*60)+Integer.parseInt(mtfReq.getParameter("sat_start_minute"));
		int sat_end = (Integer.parseInt(mtfReq.getParameter("sat_end_hour"))*60)+Integer.parseInt(mtfReq.getParameter("sat_end_minute"));
		
		List<Integer> timeList = new ArrayList<Integer>();
		timeList.add(mon_start);
		timeList.add(mon_end);
		timeList.add(tue_start);
		timeList.add(tue_end);
		timeList.add(wed_start);
		timeList.add(wed_end);
		timeList.add(thu_start);
		timeList.add(thu_end);
		timeList.add(fri_start);
		timeList.add(fri_end);
		timeList.add(sat_start);
		timeList.add(sat_end);
		
		int k= 0;
		
		for(int i=1; i<7; i++){
			HospitalTimeVO vo = new HospitalTimeVO();
			vo.setNo(i);
			vo.setStart_time(timeList.get(k));
			k++;
			vo.setEnd_time(timeList.get(k));
			k++;
			htService.update(vo);
			System.out.println(vo);
		}
		
		return "redirect:/admin/menu02_03";
	}
	
	@RequestMapping(value = "/menu02_04", method = RequestMethod.GET)
	public String menu02_04(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu02_04 GET");
		
		List<HospitalOffVO> list = hoService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(hoService.listSearchCountAll(cri));
		pageMaker.setFinalPage(hoService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu02_04";
	}
	
	@RequestMapping(value = "/menu02_04register", method = RequestMethod.GET)
	public String menu02_04register() throws Exception {
		logger.info("menu02_04register GET");
		
		
		return "admin/menu02_04register";
	}
	
	@RequestMapping(value = "/menu02_04register", method = RequestMethod.POST)
	public String menu02_04registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu02_04register POST");
		
		HospitalOffVO vo = new HospitalOffVO();
		
		vo.setNo(0);
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setOff_date(mtfReq.getParameter("off_date"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		hoService.insert(vo);
		return "redirect:/admin/menu02_04";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String menu03_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu03_01 GET");
		
		List<EventVO> list = eService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCountAll(cri));
		pageMaker.setFinalPage(eService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu03_01";
	}
	
	@RequestMapping(value = "/menu03_01register", method = RequestMethod.GET)
	public String menu03_01register(Model model) {
		logger.info("menu03_01register GET");
		
		return "admin/menu03_01register";
	}
	
	@RequestMapping(value = "/menu03_01register", method = RequestMethod.POST)
	public String menu03_01registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu03_01register POST");
		
		EventVO vo = new EventVO();
		
		vo.setNo(0);
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setStart_date(mtfReq.getParameter("start_date"));
		vo.setEnd_date(mtfReq.getParameter("end_date"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadEvent/";
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
			
			vo.setThumb_origin(fileName);
			vo.setThumb_stored(storedFileName);
			
			try {
				//mFile.transferTo(new File(path+storedFileName));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}//이미지 업로드 끝
		System.out.println(vo);
		eService.insert(vo);
		return "redirect:/admin/menu03_01";
	}
	
	@RequestMapping(value = "/menu03_01update", method = RequestMethod.GET)
	public String menu03_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu03_01update GET");
		
		EventVO vo = eService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu03_01update";
	}
	
	@RequestMapping(value = "/menu03_01update", method = RequestMethod.POST)
	public String menu03_01updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu03_01update POST");
		
		//이미지 업로드
		String innerUploadPath = "resources/uploadEvent/";
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
		
		String thumbState = mtfReq.getParameter("thumbState");
		
		
		EventVO vo = new EventVO();
		EventVO prevVO = eService.selectOne(Integer.parseInt(mtfReq.getParameter("no")));
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setTitle(mtfReq.getParameter("title"));
		vo.setStart_date(mtfReq.getParameter("start_date"));
		vo.setEnd_date(mtfReq.getParameter("end_date"));
		vo.setContent(mtfReq.getParameter("content"));
		vo.setUse_state(mtfReq.getParameter("use_state"));
		
		if(thumbState.equals("o")){
			vo.setThumb_origin(fileName);
			vo.setThumb_stored(storedFileName);
		}else{
			vo.setThumb_origin(prevVO.getThumb_origin());
			vo.setThumb_stored(prevVO.getThumb_stored());
		}
		
		eService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(eService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu03_01update";
	}
	
	@RequestMapping(value="/menu03_01delete/{no}", method=RequestMethod.GET)
	public String menu03_01delete(@PathVariable("no") int no){
		logger.info("event delete");
		
		eService.delete(no);
		
		return "redirect:/admin/menu03_01";
	}
	
	@RequestMapping(value = "/menu04_01", method = RequestMethod.GET)
	public String menu04_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu04_01 GET");
		
		List<UserVO> list = uService.listSearchAll(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(uService.listSearchCountAll(cri));
		pageMaker.setFinalPage(uService.listSearchCountAll(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/menu04_01";
	}
	
	@RequestMapping(value = "/menu04_01register", method = RequestMethod.GET)
	public String menu04_01register() throws Exception {
		logger.info("menu04_01register GET");
		
		
		return "admin/menu04_01register";
	}
	
	@RequestMapping(value = "/menu04_01register", method = RequestMethod.POST)
	public String menu04_01registerPost(MultipartHttpServletRequest mtfReq, Model model) throws IOException {
		logger.info("menu04_01register POST");
		
		UserVO vo = new UserVO();
		
		vo.setNo(0);
		vo.setId(mtfReq.getParameter("id"));
		vo.setName(mtfReq.getParameter("name"));
		vo.setLv(mtfReq.getParameter("lv"));
		vo.setPw(mtfReq.getParameter("pw"));
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setBirth(mtfReq.getParameter("birth"));
		vo.setGender(mtfReq.getParameter("gender"));
		vo.setAddr("");
		vo.setEmail(mtfReq.getParameter("email"));
		vo.setRegdate(mtfReq.getParameter("regdate"));
		vo.setLogin_cnt(1);
		
		uService.insert(vo);
		return "redirect:/admin/menu04_01";
	}
	
	@RequestMapping(value = "/menu04_01update", method = RequestMethod.GET)
	public String menu04_01update(int no, @ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req) throws Exception {
		logger.info("menu04_01update GET");
		
		UserVO vo = uService.selectOne(no);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(uService.listSearchCountAll(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/menu04_01update";
	}
	
	@RequestMapping(value = "/menu04_01update", method = RequestMethod.POST)
	public String menu04_01updatePOST(MultipartHttpServletRequest mtfReq, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts) throws Exception {
		logger.info("menu04_01update POST");
		
		UserVO vo = new UserVO();
		
		vo.setNo(Integer.parseInt(mtfReq.getParameter("no")));
		vo.setName(mtfReq.getParameter("name"));
		if(mtfReq.getParameter("pw_change").equals("o")){
			vo.setPw(mtfReq.getParameter("pw"));
		}
		vo.setPhone(mtfReq.getParameter("phone"));
		vo.setBirth(mtfReq.getParameter("birth"));
		vo.setGender(mtfReq.getParameter("gender"));
		vo.setEmail(mtfReq.getParameter("email"));
		
		
		uService.update(vo);
		
		rtts.addAttribute("no", mtfReq.getParameter("no"));

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		pageMaker.setTotalCount(uService.listSearchCountAll(cri));

		rtts.addAttribute("page", page);
		return "redirect:/admin/menu04_01update";
	}
	
	
	@RequestMapping(value = "/menu04_02", method = RequestMethod.GET)
	public String menu04_02(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu04_02 GET");
		
		
		return "admin/menu04_02";
	}
	
	@RequestMapping(value = "/menu05_01", method = RequestMethod.GET)
	public String menu05_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu05_01 GET");
		
		
		return "admin/menu05_01";
	}
	
	@RequestMapping(value = "/menu05_02", method = RequestMethod.GET)
	public String menu05_02(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu05_02 GET");
		
		
		return "admin/menu05_02";
	}
}
