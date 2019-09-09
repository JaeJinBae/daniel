package com.webaid.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.NoticeService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/m/*")
public class MobileController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	
	@Autowired
	private NoticeService nService;
	
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("index GET");
		
		return "main/mIndex";
	}*/
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String mLogin(Model model) {
		logger.info("login GET");
		
		return "mobile/mLogin";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String mJoin(Model model) {
		logger.info("join GET");
		
		return "mobile/mJoin";
	}
	
	@RequestMapping(value = "/personal", method = RequestMethod.GET)
	public String personal(Model model) {
		logger.info("personal GET");
		
		return "mobile/mfPersonal";
	}
	
	@RequestMapping(value = "/agree", method = RequestMethod.GET)
	public String agree(Model model) {
		logger.info("agree GET");
		
		return "mobile/mfAgree";
	}
	
	@RequestMapping(value = "/menu01_01", method = RequestMethod.GET)
	public String mMenu01_01(Model model) {
		logger.info("menu01_01 GET");
		
		return "mobile/mMenu01_01";
	}
	
	@RequestMapping(value = "/menu01_02", method = RequestMethod.GET)
	public String mMenu01_02(Model model) {
		logger.info("mMenu01_02 GET");
		
		return "mobile/mMenu01_02";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String mMenu01_03(Model model) {
		logger.info("mMenu01_03 GET");
		
		return "mobile/mMenu01_03";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String mMenu01_04(Model model) {
		logger.info("mMenu01_04 GET");
		
		return "mobile/mMenu01_04";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String mMenu01_05(Model model) {
		logger.info("mMenu01_05 GET");
		
		return "mobile/mMenu01_05";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String mMenu02_01(Model model) {
		logger.info("mMenu02_01 GET");
		
		return "mobile/mMenu02_01";
	}
	
	@RequestMapping(value = "/menu02_02", method = RequestMethod.GET)
	public String mMenu02_02(Model model) {
		logger.info("mMenu02_02 GET");
		
		return "mobile/mMenu02_02";
	}
	
	@RequestMapping(value = "/menu02_03", method = RequestMethod.GET)
	public String mMenu02_03(Model model) {
		logger.info("mMenu02_03 GET");
		
		return "mobile/mMenu02_03";
	}
	
	@RequestMapping(value = "/menu02_04", method = RequestMethod.GET)
	public String mMenu02_04(Model model) {
		logger.info("mMenu02_04 GET");
		
		return "mobile/mMenu02_04";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String mMenu03_01(Model model) {
		logger.info("mMenu03_01 GET");
		
		return "mobile/mMenu03_01";
	}
	
	@RequestMapping(value = "/menu03_02", method = RequestMethod.GET)
	public String mMenu03_02(Model model) {
		logger.info("mMenu03_02 GET");
		
		return "mobile/mMenu03_02";
	}
	
	@RequestMapping(value = "/menu03_03", method = RequestMethod.GET)
	public String mMenu03_03(Model model) {
		logger.info("mMenu03_03 GET");
		
		return "mobile/mMenu03_03";
	}
	
	@RequestMapping(value = "/menu03_04", method = RequestMethod.GET)
	public String mMenu03_04(Model model) {
		logger.info("mMenu03_04 GET");
		
		return "mobile/mMenu03_04";
	}
	
	@RequestMapping(value = "/menu03_05", method = RequestMethod.GET)
	public String mMenu03_05(Model model) {
		logger.info("mMenu03_05 GET");
		
		return "mobile/mMenu03_05";
	}
	
	@RequestMapping(value = "/menu03_06", method = RequestMethod.GET)
	public String mMenu03_06(Model model) {
		logger.info("mMenu03_06 GET");
		
		return "mobile/mMenu03_06";
	}
	
	@RequestMapping(value = "/menu03_07", method = RequestMethod.GET)
	public String mMenu03_07(Model model) {
		logger.info("mMenu03_07 GET");
		
		return "mobile/mMenu03_07";
	}
	
	@RequestMapping(value = "/menu04_01", method = RequestMethod.GET)
	public String mMenu04_01(Model model) {
		logger.info("mMenu04_01 GET");
		
		return "mobile/mMenu04_01";
	}
	
	@RequestMapping(value = "/menu04_02", method = RequestMethod.GET)
	public String mMenu04_02(Model model) {
		logger.info("mMenu04_02 GET");
		
		return "mobile/mMenu04_02";
	}
	
	@RequestMapping(value = "/menu04_03", method = RequestMethod.GET)
	public String mMenu04_03(Model model) {
		logger.info("mMenu04_03 GET");
		
		return "mobile/mMenu04_03";
	}
	
	@RequestMapping(value = "/menu04_04", method = RequestMethod.GET)
	public String mMenu04_04(Model model) {
		logger.info("mMenu04_04 GET");
		
		return "mobile/mMenu04_04";
	}
	
	@RequestMapping(value = "/menu05_01", method = RequestMethod.GET)
	public String mMenu05_01(Model model) {
		logger.info("mMenu05_01 GET");
		
		return "mobile/mMenu05_01";
	}
	
	@RequestMapping(value = "/menu05_02", method = RequestMethod.GET)
	public String mMenu05_02(Model model) {
		logger.info("mMenu05_02 GET");
		
		return "mobile/mMenu05_02";
	}
	
	@RequestMapping(value = "/menu05_03", method = RequestMethod.GET)
	public String mMenu05_03(Model model) {
		logger.info("mMenu05_03 GET");
		
		return "mobile/mMenu05_03";
	}
	
	@RequestMapping(value = "/menu05_04", method = RequestMethod.GET)
	public String mMenu05_04(Model model) {
		logger.info("mMenu05_04 GET");
		
		return "mobile/mMenu05_04";
	}
	
	@RequestMapping(value = "/menu05_05", method = RequestMethod.GET)
	public String mMenu05_05(Model model) {
		logger.info("mMenu05_05 GET");
		
		return "mobile/mMenu05_05";
	}
	
	@RequestMapping(value = "/menu05_06", method = RequestMethod.GET)
	public String mMenu05_06(Model model) {
		logger.info("mMenu05_06 GET");
		
		return "mobile/mMenu05_06";
	}
	
	@RequestMapping(value = "/menu05_07", method = RequestMethod.GET)
	public String mMenu05_07(Model model) {
		logger.info("mMenu05_07 GET");
		
		return "mobile/mMenu05_07";
	}
	
	@RequestMapping(value = "/menu05_08", method = RequestMethod.GET)
	public String mMenu05_08(Model model) {
		logger.info("mMenu05_08 GET");
		
		return "mobile/mMenu05_08";
	}
	
	@RequestMapping(value = "/menu05_09", method = RequestMethod.GET)
	public String mMenu05_09(Model model) {
		logger.info("mMenu05_09 GET");
		
		return "mobile/mMenu05_09";
	}
	
	@RequestMapping(value = "/menu05_10", method = RequestMethod.GET)
	public String mMenu05_10(Model model) {
		logger.info("mMenu05_10 GET");
		
		return "mobile/mMenu05_10";
	}
	
	@RequestMapping(value = "/menu06_01", method = RequestMethod.GET)
	public String mMenu06_01(Model model) {
		logger.info("mMenu06_01 GET");
		
		return "mobile/mMenu06_01";
	}
	
	@RequestMapping(value = "/menu07_01", method = RequestMethod.GET)
	public String mMenu07_01(Model model) {
		logger.info("mMenu07_01 GET");
		
		return "mobile/mMenu07_01";
	}
	
	@RequestMapping(value = "/menu07_02", method = RequestMethod.GET)
	public String mMenu07_02(Model model) {
		logger.info("mMenu07_02 GET");
		
		return "mobile/mMenu07_02";
	}
	
	@RequestMapping(value = "/menu07_03", method = RequestMethod.GET)
	public String mMenu07_03(Model model) {
		logger.info("mMenu07_03 GET");
		
		return "mobile/mMenu07_03";
	}
	
	@RequestMapping(value = "/menu07_04", method = RequestMethod.GET)
	public String mMenu07_04(Model model) {
		logger.info("mMenu07_04 GET");
		
		return "mobile/mMenu07_04";
	}
	
	@RequestMapping(value = "/menu07_05", method = RequestMethod.GET)
	public String mMenu07_05(Model model) {
		logger.info("mMenu07_05 GET");
		
		return "mobile/mMenu07_05";
	}
	
	@RequestMapping(value = "/menu08_01", method = RequestMethod.GET)
	public String mMenu08_01(Model model) {
		logger.info("mMenu08_01 GET");
		
		return "mobile/mMenu08_01";
	}
	
	@RequestMapping(value = "/menu08_02", method = RequestMethod.GET)
	public String mMenu08_02(Model model) {
		logger.info("mMenu08_02 GET");
		
		return "mobile/mMenu08_02";
	}
	
	@RequestMapping(value = "/menu09_01", method = RequestMethod.GET)
	public String mMenu09_01(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_01 GET");
		
		List<NoticeVO> topList = nService.selectTopNotice();
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_01";
	}
	
	@RequestMapping(value = "/menu09_01read", method = RequestMethod.GET)
	public String mMenu09_01read(int no, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu09_01read GET");
		
		NoticeVO vo=nService.selectOne(no);
		NoticeVO beforeVO = nService.selectBefore(no);
		NoticeVO afterVO = nService.selectAfter(no);
		
		nService.updateCnt(no);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("beforeItem", beforeVO);
		model.addAttribute("afterItem", afterVO);
		model.addAttribute("pageMaker", pageMaker);
		
		return "mobile/mMenu09_01read";
	}
	
	@RequestMapping(value = "/menu09_02", method = RequestMethod.GET)
	public String mMenu09_02(Model model) {
		logger.info("mMenu09_02 GET");
		
		return "mobile/mMenu09_02";
	}
	
	@RequestMapping(value = "/menu09_02pwChk", method = RequestMethod.GET)
	public String mMenu09_02pwChk(Model model) {
		logger.info("mMenu09_02pwChk GET");
		
		return "mobile/mMenu09_02pwChk";
	}
	
	@RequestMapping(value = "/menu09_02read", method = RequestMethod.GET)
	public String mMenu09_02read(Model model) {
		logger.info("mMenu09_02read GET");
		
		return "mobile/mMenu09_02read";
	}
	
	@RequestMapping(value = "/menu09_02read2", method = RequestMethod.GET)
	public String mMenu09_02read2(Model model) {
		logger.info("mMenu09_02read2 GET");
		
		return "mobile/mMenu09_02read2";
	}
	
	@RequestMapping(value = "/menu09_03", method = RequestMethod.GET)
	public String mMenu09_03(Model model) {
		logger.info("mMenu09_03 GET");
		
		return "mobile/mMenu09_03";
	}
	
	@RequestMapping(value = "/menu09_04", method = RequestMethod.GET)
	public String mMenu09_04(Model model) {
		logger.info("mMenu09_04 GET");
		
		return "mobile/mMenu09_04";
	}
	
	@RequestMapping(value = "/menu09_04read", method = RequestMethod.GET)
	public String mMenu09_04read(Model model) {
		logger.info("mMenu09_04read GET");
		
		return "mobile/mMenu09_04read";
	}
	
	@RequestMapping(value = "/menu09_05", method = RequestMethod.GET)
	public String mMenu09_05(Model model) {
		logger.info("mMenu09_05 GET");
		
		return "mobile/mMenu09_05";
	}
	
	@RequestMapping(value = "/menu09_05read", method = RequestMethod.GET)
	public String mMenu09_05read(Model model) {
		logger.info("mMenu09_05read GET");
		
		return "mobile/mMenu09_05read";
	}
	
	@RequestMapping(value = "/menu09_06", method = RequestMethod.GET)
	public String mMenu09_06(Model model) {
		logger.info("mMenu09_06 GET");
		
		return "mobile/mMenu09_06";
	}
	
	@RequestMapping(value = "/menu09_06read", method = RequestMethod.GET)
	public String mMenu09_06read(Model model) {
		logger.info("mMenu09_06read GET");
		
		return "mobile/mMenu09_06read";
	}
	
	@RequestMapping(value = "/menu09_07", method = RequestMethod.GET)
	public String mMenu09_07(Model model) {
		logger.info("mMenu09_07 GET");
		
		return "mobile/mMenu09_07";
	}
	
	@RequestMapping(value = "/menu09_08", method = RequestMethod.GET)
	public String mMenu09_08(Model model) {
		logger.info("mMenu09_08 GET");
		
		return "mobile/mMenu09_08";
	}
	
	@RequestMapping(value = "/menu09_08read", method = RequestMethod.GET)
	public String mMenu09_08read(Model model) {
		logger.info("mMenu09_08read GET");
		
		return "mobile/mMenu09_08read";
	}
}
