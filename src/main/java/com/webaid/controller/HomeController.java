package com.webaid.controller;

import java.io.File;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.DecimalFormat;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.webaid.domain.CategoryVO;
import com.webaid.domain.CautionVO;
import com.webaid.domain.ClinicListVO;
import com.webaid.domain.ClinicResListVO;
import com.webaid.domain.EventVO;
import com.webaid.domain.HospitalTimeVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.PageMakerWith12;
import com.webaid.domain.PageMakerWith8;
import com.webaid.domain.PageMakerWith9;
import com.webaid.domain.RealStoryVO;
import com.webaid.domain.ReservationJsonVO;
import com.webaid.domain.ReviewVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.domain.SearchCriteria12;
import com.webaid.domain.SearchCriteria8;
import com.webaid.domain.SearchCriteria9;
import com.webaid.domain.StatisticVO;
import com.webaid.domain.UserVO;
import com.webaid.service.AdviceService;
import com.webaid.service.BeforeAfterService;
import com.webaid.service.CautionService;
import com.webaid.service.ClinicListService;
import com.webaid.service.ClinicResListService;
import com.webaid.service.EventService;
import com.webaid.service.HospitalTimeService;
import com.webaid.service.NoticeService;
import com.webaid.service.RealStoryService;
import com.webaid.service.ReviewService;
import com.webaid.service.StatisticService;
import com.webaid.service.UserService;
import com.webaid.util.FileDelete;
import com.webaid.util.SmsSendUtil;

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
	
	@Autowired
	private RealStoryService rsService;
	
	@Autowired
	private ReviewService rService;
	
	@Autowired
	private EventService eService;
	
	@Autowired
	private CautionService cService;
	
	@Autowired
	private ClinicListService clService;
	
	@Autowired
	private ClinicResListService crlService;
	
	@Autowired
	private HospitalTimeService htService;
	
	@Autowired
	private StatisticService sService;
	
	@RequestMapping(value="/id_duplicate_chk/{id}", method=RequestMethod.POST)
	public ResponseEntity<String> id_duplicate_chk(@PathVariable("id") String id){
		ResponseEntity<String> entity = null;
		
		UserVO vo = uService.selectById(id);
		System.out.println(vo);
		if(vo == null){
			entity = new ResponseEntity<String>("empty", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("exist", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value = "/landing", method = RequestMethod.GET)
	public String landing(HttpServletRequest req, Model model) {
		logger.info("index GET");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);
			
			return "landing/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "landing/mIndex";
		}else if(device.isTablet()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "landing/mIndex";
		}else{
			deviceType="normal";
			logger.info("디바이스타입= "+deviceType);
			return "landing/index";
		}
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		logger.info("index GET");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		String url = req.getRequestURL()+"";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);
			if(url.contains("danielclinic.kr")){
				return "landing/index";
			}else{
				return "main/index";
			}
			//return "main/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			if(url.contains("danielclinic.kr")){
				return "landing/mIndex";
			}else{
				return "main/mIndex";
			}
			//return "main/mIndex";
		}else if(device.isTablet()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);
			if(url.contains("danielclinic.kr")){
				return "landing/mIndex";
			}else{
				return "main/mIndex";
			}
			//return "main/mIndex";
		}else{
			deviceType="normal";
			logger.info("디바이스타입= "+deviceType);
			if(url.contains("danielclinic.kr")){
				return "landing/index";
			}else{
				return "main/index";
			}
			//return "main/index";
		}
	}
	
	@RequestMapping(value="/statisticRegister", method=RequestMethod.POST)
	public ResponseEntity<String> statisticRegister(@RequestBody Map<String, String> info){
		logger.info("statistic register");
		ResponseEntity<String> entity = null;
		
		StatisticVO vo = new StatisticVO();
		vo.setDate(info.get("date"));
		vo.setDayofweek(info.get("dayofweek"));
		vo.setHour(Integer.parseInt(info.get("hour")));
		vo.setMinute(Integer.parseInt(info.get("minute")));
		vo.setBrowser(info.get("browser"));
		vo.setOs(info.get("os"));
		vo.setPrev_url(info.get("prev_url"));
		
		sService.insert(vo);
		entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		return entity;
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
	
	@RequestMapping(value = "/snsLogin/{user}", method = RequestMethod.GET)
	public String snsLogin(@PathVariable("user")String user, @ModelAttribute("targeturl")String targeturl, Model model, HttpSession session) {
		logger.info("login GET");
		session.setAttribute("id", user);
		if(targeturl.equals("menu09_03")){
			return "redirect:/menu09_03";
		}else if(targeturl.equals("menu09_05")){
			return "redirect:/menu09_05";
		}else{
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "/loginCallback", method = RequestMethod.GET)
	public String loginCallback(Model model, @ModelAttribute("purl")String purl) {
		logger.info("loginCallback GET");
		System.out.println(purl);
		model.addAttribute("menu", purl);
		return "sub/loginCallback";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.info("login GET");
		
		return "sub/login";
	}
	
	@RequestMapping(value = "/loginIdPwChk", method = RequestMethod.POST)
	public ResponseEntity<String> login(@RequestBody Map<String, String> info, HttpSession session) {
		logger.info("loginIdPwChk");
		ResponseEntity<String> entity = null;
		
		UserVO vo = uService.selectById(info.get("id"));
		UserVO newVO = new UserVO();
		if(vo == null){
			entity = new ResponseEntity<String>("empty", HttpStatus.OK);
		}else{
			if(vo.getPw_change_state().equals("x")){
				newVO.setNo(vo.getNo());
				newVO.setPw(info.get("pw"));
				newVO.setPw_change_state("o");
				uService.updatePwChangeState(newVO);
				session.setAttribute("id", vo.getId());
				session.setAttribute("no", vo.getNo());
				uService.updateLoginCnt(vo.getNo());
				entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			}else{
				if(vo.getPw().equals(info.get("pw"))){
					session.setAttribute("id", vo.getId());
					session.setAttribute("no", vo.getNo());
					uService.updateLoginCnt(vo.getNo());
					entity = new ResponseEntity<String>("ok", HttpStatus.OK);
				}else{
					entity = new ResponseEntity<String>("no", HttpStatus.OK);
				}
			}
		}
		return entity;
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public String findId(HttpServletRequest req, Model model){
		GregorianCalendar today = new GregorianCalendar ( );
		int year = today.get ( today.YEAR );
		model.addAttribute("year", year);
		return "sub/findId";
	}
	
	@RequestMapping(value="/findId", method=RequestMethod.POST)
	public ResponseEntity<String> findId(@RequestBody Map<String, String> info){
		ResponseEntity<String> entity = null;
		UserVO searchVO = new UserVO();
		searchVO.setName(info.get("name"));
		searchVO.setEmail(info.get("email"));
		UserVO vo = uService.selectByNameEmail(searchVO);
		if(vo == null){
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>(vo.getNo()+"", HttpStatus.OK);
		}
		return entity;
	}
	
	@RequestMapping(value="/findIdEnd", method=RequestMethod.POST)
	public String findIdEnd(int no, Model model){
		logger.info("findIdEnd Get");
		
		UserVO vo = uService.selectOne(no);
		model.addAttribute("item", vo);
		return "sub/findIdEnd";
	}
	
	@RequestMapping(value="/findPw", method=RequestMethod.GET)
	public String findPw(HttpServletRequest req, Model model){
		
		return "sub/findPw";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest req){
		HttpSession session = req.getSession(false);
		if(session != null){
			session.invalidate();
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		logger.info("join GET");
		
		return "sub/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ResponseEntity<String> joinPost(@RequestBody Map<String, String> info) {
		logger.info("join POST");
		ResponseEntity<String> entity = null;
		System.out.println(info);
		try {
			UserVO vo = new UserVO();
			vo.setId(info.get("id"));
			vo.setName(info.get("name"));
			vo.setLv("일반회원");
			vo.setPw(info.get("pw"));
			vo.setPhone(info.get("phone"));
			vo.setBirth("");
			vo.setGender(info.get("gender"));
			vo.setAddr("");
			vo.setEmail(info.get("email"));
			vo.setRegdate(info.get("regdate"));
			vo.setLogin_cnt(0);
			
			uService.insert(vo);
			
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}	
		return entity;
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public String myInfo(Model model){
		logger.info("myinfo get");
		
		return "sub/myInfo";
	}
	
	@RequestMapping(value="/myInfo", method=RequestMethod.POST)
	public ResponseEntity<String> myInfoPost(@RequestBody Map<String, String> info, Model model){
		logger.info("myinfo POST");
		ResponseEntity<String> entity = null;
		UserVO vo = uService.selectById(info.get("id"));
		
		if(vo == null){
			entity = new ResponseEntity<String>("empty", HttpStatus.OK);
		}else{
			if(vo.getPw().equals(info.get("pw"))){
				entity = new ResponseEntity<String>("ok", HttpStatus.OK);
				
			}else{
				entity = new ResponseEntity<String>("no", HttpStatus.OK);
			}
		}
		return entity;
	}
	
	@RequestMapping(value="/myInfoEdit", method=RequestMethod.GET)
	public String myInfoEditGet(HttpServletRequest req, Model model){
		logger.info("myinfoEdit get");
		HttpSession session = req.getSession(false);
		if(session == null){
			return "redirect:/login";
		}else{
			System.out.println(session.getAttribute("no"));
			int no = Integer.parseInt(session.getAttribute("no")+"");
			UserVO vo = uService.selectOne(no);
			model.addAttribute("item", vo);
		}
		
		return "sub/myInfoEdit";
	}
	
	@RequestMapping(value="/myInfoEdit", method=RequestMethod.POST)
	public ResponseEntity<String> myInfoEditPost(@RequestBody Map<String, String> info, Model model){
		logger.info("myinfoEdit POST");
		ResponseEntity<String> entity = null;
		try {
			UserVO vo = new UserVO();
			vo.setNo(Integer.parseInt(info.get("no")));
			vo.setName(info.get("name"));
			vo.setPhone(info.get("phone"));
			vo.setBirth("");
			vo.setGender(info.get("gender"));
			vo.setEmail(info.get("email"));
			if(info.get("new_pw").length() <2){
				UserVO prevVO = uService.selectOne(Integer.parseInt(info.get("no")));
				vo.setPw(prevVO.getPw());
			}else{
				vo.setPw(info.get("new_pw"));
			}
			
			uService.update(vo);
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/quickInquireRegister", method=RequestMethod.POST)
	public ResponseEntity<String> quickInquireRegister(@RequestBody Map<String, String> info, Model model){
		logger.info("quickInquireRegister POST");
		ResponseEntity<String> entity = null;
		InetAddress local;
		String ip = "";
		try {
			local = InetAddress.getLocalHost();
			ip = local.getHostAddress();
			System.out.println("local ip : "+ip); 
		} catch (UnknownHostException e1){ 
			e1.printStackTrace();
		}

		try {
			AdviceVO vo = new AdviceVO();
			vo.setName(info.get("name"));
			vo.setPhone(info.get("phone"));
			vo.setRegdate(info.get("regdate"));
			vo.setEmail(info.get("email"));
			vo.setState("상담예정");
			vo.setSecret("x");
			vo.setPw("");
			vo.setTitle("");
			vo.setContent(info.get("content"));
			vo.setReply("");
			vo.setMemo("");
			vo.setIp(ip);
			vo.setAccess_url(info.get("access_url"));
			vo.setReply_date("");
			vo.setUpload_origin("");
			vo.setUpload_stored("");
			vo.setQuick_state("o");
			
			aService.insert(vo);
			
			SmsSendUtil ssu = new SmsSendUtil();
			ssu.sendSMS("빠른상담", info.get("name"), info.get("phone"));
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		return entity;
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
	
	@RequestMapping(value = "/menu04_05", method = RequestMethod.GET)
	public String menu04_05(Model model) {
		logger.info("menu04_05 GET");
		
		return "sub/menu04_05";
	}
	
	@RequestMapping(value = "/menu04_06", method = RequestMethod.GET)
	public String menu04_06(Model model) {
		logger.info("menu04_06 GET");
		
		return "sub/menu04_06";
	}
	
	@RequestMapping(value = "/menu04_07", method = RequestMethod.GET)
	public String menu04_07(Model model) {
		logger.info("menu04_07 GET");
		
		return "sub/menu04_07";
	}
	
	@RequestMapping(value = "/menu04_08", method = RequestMethod.GET)
	public String menu04_08(Model model) {
		logger.info("menu04_08 GET");
		
		return "sub/menu04_08";
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
	
	@RequestMapping(value = "/menu06_01", method = RequestMethod.GET)
	public String menu06_01(Model model) {
		logger.info("menu06_01 GET");
		
		return "sub/menu06_01";
	}
	
	@RequestMapping(value = "/menu06_02", method = RequestMethod.GET)
	public String menu06_02(Model model) {
		logger.info("menu06_02 GET");
		
		return "sub/menu06_02";
	}
	
	@RequestMapping(value = "/menu06_03", method = RequestMethod.GET)
	public String menu06_03(Model model) {
		logger.info("menu06_03 GET");
		
		return "sub/menu06_03";
	}
	
	@RequestMapping(value = "/menu06_04", method = RequestMethod.GET)
	public String menu06_04(Model model) {
		logger.info("menu06_04 GET");
		
		return "sub/menu06_04";
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
	
	@RequestMapping(value = "/menu07_06", method = RequestMethod.GET)
	public String menu07_06(Model model) {
		logger.info("menu07_06 GET");
		
		return "sub/menu07_06";
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
	
	@RequestMapping(value = "/menu08_04", method = RequestMethod.GET)
	public String menu08_04(Model model) {
		logger.info("menu08_04 GET");
		
		return "sub/menu08_04";
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
		
		SmsSendUtil ssu = new SmsSendUtil();
		ssu.sendSMS("온라인 상담", mtfReq.getParameter("name"), mtfReq.getParameter("phone"));
		
		return "redirect:/menu09_02";
	}
	
	@RequestMapping(value = "/menu09_02pwChk", method = RequestMethod.GET)
	public String menu09_02pwChkGet(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("menu09_02pwChk GET");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("no", no);
		return "sub/menu09_02pwChk";
	}
	
	@RequestMapping(value = "/menu09_02pwChk", method = RequestMethod.POST)
	public ResponseEntity<String> menu09_02pwChkPost(@RequestBody Map<String, String> info) {
		logger.info("menu09_02pwChk GET");
		ResponseEntity<String> entity = null;
		AdviceVO vo = aService.selectOne(Integer.parseInt(info.get("no")));
		if(vo.getPw().equals(info.get("pw"))){
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}
		
		return entity;
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
	public String menu09_04(@ModelAttribute("cri") SearchCriteria8 cri, Model model) throws Exception {
		logger.info("menu09_04 GET");
		List<RealStoryVO> list = rsService.listSearch8(cri);
		
		PageMakerWith8 pageMaker = new PageMakerWith8();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rsService.listSearchCount8(cri));
		pageMaker.setFinalPage(rsService.listSearchCount8(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_04";
	}
	
	@RequestMapping(value = "/menu09_04read", method = RequestMethod.GET)
	public String menu09_04read(int no, @ModelAttribute("cri") SearchCriteria8 cri, Model model) throws Exception {
		logger.info("menu09_04read GET");
		rsService.updateCnt(no);
		RealStoryVO vo = rsService.selectOne(no);
		RealStoryVO beforeVO = rsService.selectBefore(no);
		RealStoryVO afterVO = rsService.selectAfter(no);
		
		PageMakerWith8 pageMaker = new PageMakerWith8();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rsService.listSearchCount8(cri));

		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_04read";
	}
	
	@RequestMapping(value = "/menu09_05", method = RequestMethod.GET)
	public String menu09_05(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu09_05 GET");
		List<ReviewVO> list = rService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rService.listSearchCount(cri));
		pageMaker.setFinalPage(rService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_05";
	}
	
	@RequestMapping(value = "/menu09_05read", method = RequestMethod.GET)
	public String menu09_05read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu09_05read GET");
		rService.updateCnt(no);
		ReviewVO vo = rService.selectOne(no);
		ReviewVO beforeVO = rService.selectBefore(no);
		ReviewVO afterVO = rService.selectAfter(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(rService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu09_05read";
	}
	
	@RequestMapping(value = "/menu09_06", method = RequestMethod.GET)
	public String menu09_06(@ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("menu09_06 GET");
		List<EventVO> list = eService.listSearch12(cri);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount12(cri));
		pageMaker.setFinalPage(eService.listSearchCount12(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_06";
	}
	
	@RequestMapping(value = "/menu09_06read", method = RequestMethod.GET)
	public String menu09_06read(int no, @ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("menu09_06read GET");
		
		EventVO vo = eService.selectOne(no);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(eService.listSearchCount12(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub/menu09_06read";
	}
	
	@RequestMapping(value = "/menu09_07", method = RequestMethod.GET)
	public String menu09_07(@ModelAttribute("cri") SearchCriteria cri, Model model) {
		logger.info("menu09_07 GET");
		/*List<ClinicListVO> list = clService.listSearch(cri);
		List<String> arr1 = new ArrayList<>();
		for(int i=0; i<list.size(); i++){
			arr1.add(list.get(i).getC1());
		}
		HashSet<String> arr2 = new HashSet<String>(arr1);
		List<String> c1List=new ArrayList<String>(arr2);
		System.out.println(c1List);
		model.addAttribute("c1List", c1List);
		model.addAttribute("list", list);*/
		return "sub/menu09_07";
	}
	
	@RequestMapping(value="/menu09_07timeByDow/{dow}", method=RequestMethod.POST)
	public ResponseEntity<HospitalTimeVO> menu09_07timeGet(@PathVariable("dow")String dow){
		ResponseEntity<HospitalTimeVO> entity = null;
		HospitalTimeVO vo = htService.selectByDow(dow);
		
		entity = new ResponseEntity<HospitalTimeVO>(vo, HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/menu09_07getList", method = RequestMethod.GET)
	public ResponseEntity<List<ClinicListVO>> menu09_07getList() {
		logger.info("menu09_07getList");
		ResponseEntity<List<ClinicListVO>> entity = null;
		SearchCriteria cri = new SearchCriteria();
		List<ClinicListVO> list = clService.listSearch(cri);
		entity = new ResponseEntity<List<ClinicListVO>>(list, HttpStatus.OK);

		return entity;
	}
	
	@RequestMapping(value = "/menu09_07register", method = RequestMethod.POST)
	public ResponseEntity<String> menu09_07register(@RequestBody ReservationJsonVO info) {
		logger.info("menu09_07register");
		ResponseEntity<String> entity = null;
		try {
			DecimalFormat df = new DecimalFormat("###,###");
			
			ClinicResListVO vo = new ClinicResListVO();
			vo.setRegdate(info.getR_regdate());
			vo.setPrice(Integer.parseInt(info.getR_pay()));
			vo.setCounseling(info.getR_counsel());
			vo.setRes_date(info.getR_date());
			vo.setRes_time(info.getR_time());
			vo.setName(info.getR_name());
			vo.setPhone(info.getR_phone());
			vo.setEmail(info.getR_email());
			vo.setMemo(info.getR_memo());
			vo.setRes_state("o");
			
			List<CategoryVO> categoryList = info.getCategoryList();
			String str = "";
			if(categoryList.size() > 0){
				
				for(int i=0; i<categoryList.size(); i++){
					str += categoryList.get(i).getCategory1_nm();
					str += " > ";
					str += categoryList.get(i).getCategory2_nm();
					if(categoryList.get(i).getCategory3_nm().equals("") || categoryList.get(i).getCategory3_nm().isEmpty()){
						str += " <strong>["+df.format(Integer.parseInt(categoryList.get(i).getCategory_pay()))+"원]</strong>";
						if(i != categoryList.size()-1){
							str += "<br>";
						}
					}else{
						str += " > ";
						str += categoryList.get(i).getCategory3_nm();
						str += " <strong>["+df.format(Integer.parseInt(categoryList.get(i).getCategory_pay()))+"원]</strong>";
						if(i != categoryList.size()-1){
							str += "<br>";
						}
					}
				}
			}
			vo.setClinic_list(str);
			
			crlService.insert(vo);
			
			entity = new ResponseEntity<String>("OK", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("NO", HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/menu09_08", method = RequestMethod.GET)
	public String menu09_08(@ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("menu09_08 GET");
		
		List<CautionVO> list = cService.listSearch12(cri);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount12(cri));
		pageMaker.setFinalPage(cService.listSearchCount12(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_08";
	}
	
	@RequestMapping(value = "/menu09_08read", method = RequestMethod.GET)
	public String menu09_08read(int no, @ModelAttribute("cri") SearchCriteria12 cri, Model model) throws Exception {
		logger.info("menu09_08read GET");
		cService.updateCnt(no);
		CautionVO vo = cService.selectOne(no);
		CautionVO beforeVO = cService.selectBefore(no);
		CautionVO afterVO = cService.selectAfter(no);
		
		PageMakerWith12 pageMaker = new PageMakerWith12();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount12(cri));

		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		return "sub/menu09_08read";
	}
}
