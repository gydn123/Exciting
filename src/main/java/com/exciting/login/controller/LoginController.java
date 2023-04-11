package com.exciting.login.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.exciting.dao.LoginDao;
import com.exciting.dto.MemberDTO;
import com.exciting.login.service.LoginService;


@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	LoginService loginService;

	public LoginController() {
		System.out.println("@Controller 스프링 자동생성");
	}

	//  루트만 입력하면 시작되는 곳
	//	@RequestMapping(value = "/", method = RequestMethod.GET)
	//	public String index(Model model) {
	//				
	//		return "home";
	//	}

	//  메인페이지에서 '로그인'링크를 누르면 거쳐가는곳 login.jsp로 이동한다.
	@GetMapping(value = "/login")
	public ModelAndView getLogin(MemberDTO dto,@CookieValue(value="long_login", required=false) String long_login) {
		System.out.println("/login.get() 접근");

		ModelAndView mav = new ModelAndView();
		
//		아이디저장유지 체크박스 클릭/언클릭 확인
		System.out.println("/login/get/cookieValue(long_login) : " + long_login);
		
			if(long_login != null) {
				System.out.println("/login/get/addObject 접근");
				mav.addObject("long_login", long_login);
			}
		
		//		List<BookDTO> list = bookService.list(dto);
		//		System.out.println("list :" + list);
		//		
		//		mav.addObject("data",list);

		mav.setViewName("/login");

		return mav;
	}

	//	'로그인'페이지 login.jsp 에서 로그인버튼을 누르면 오는 페이지(이 페이지로 오기전에 LoginApiController에서 등록된아이디인지 검사후, 등록된 아이디이면 온다)
	@PostMapping(value = "/login")
	public ModelAndView postLogin(MemberDTO dto,HttpServletRequest request,HttpServletResponse response,@RequestParam Map<String,String> map) {
		System.out.println("/login.post() 접근");

		ModelAndView mav = new ModelAndView();

		String member_id = dto.getMember_id();
		System.out.println("member_id : "+member_id);

//		로그인 상태 유지
		HttpSession session = request.getSession();
		session.setAttribute("member_id", member_id);
		
//		아이디 저장(쿠키 생성/삭제)
 		String long_login = map.get("long_login");
		System.out.println("/login/post/long_login: "+long_login);
		if(long_login.equals("on")) {
			System.out.println("/login.post()/쿠키생성 진입");
			Cookie cookie = new Cookie("long_login",member_id);
			cookie.setMaxAge(60*60);
			response.addCookie(cookie);
		}else if(long_login.equals("off")) {
			System.out.println("/login.post()/쿠키제거 진입");
			Cookie Cookie = new Cookie("long_login", null);
		    Cookie.setMaxAge(0); // 쿠키의 expiration 타임을 0으로 하여 없앤다.
		    Cookie.setPath("/"); // 모든 경로에서 삭제 됬음을 알린다.
		    response.addCookie(Cookie);
		}

		
		mav.setViewName("redirect:/");

		return mav;

	}

	//	login 페이지에서 '회원가입'링크를 누르면 거쳐가는곳 signUp.jsp로 이동한다.
	@GetMapping(value = "/signUp")
	public ModelAndView searchList(MemberDTO dto) {
		System.out.println("/signUp.get() 접근");

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/signUp");

		return mav;
	}


	//	signUp.jsp 에서 정보입력후 '회원가입'버튼을 누르면 이동하는곳 회원이 입력한 정보를 member table에 저장하고 메인페이지로 이동한다.
	@PostMapping(value = "/signUp")
	public ModelAndView detail(MemberDTO dto,@RequestParam Map<String,String> map) {
		System.out.println("/signUp.post() 접근");

		ModelAndView mav = new ModelAndView();
		
//		회원가입창에서 사용자가 입력한 값들 정리
		String m_emailfront = map.get("m_emailfront");
		String m_emailselect = map.get("m_emailselect");
		String m_email;
		if(m_emailselect == "") {
			String m_emailback = map.get("m_emailback");
			m_email = m_emailfront + "@" + m_emailback;
		}else {
			m_email = m_emailfront + "@" + m_emailselect;
		}

		dto.setM_email(m_email);

		String year = map.get("year");
		String month = map.get("month");
		String day = map.get("day");

		String m_birth = year+month+day;

		dto.setM_birth(m_birth);

		loginService.insertMember(dto);

		System.out.println("signUp//dto : "+dto);

		mav.setViewName("/login");

		return mav;
	}
	
//	로그아웃 링크를 클릭하면 오는곳
	@GetMapping(value = "/logout")
	public ModelAndView logout(MemberDTO dto,HttpServletRequest request) {
		System.out.println("/logout.get() 접근");

		ModelAndView mav = new ModelAndView();
		
//		session 삭제
		HttpSession session = request.getSession();
		session.removeAttribute("member_id");
		
		mav.setViewName("login");

		return mav;
	}
	
//  회원탈퇴 버튼을 누르면 오는 곳
	@GetMapping(value = "/withdrawal")
	public ModelAndView withdrawal(MemberDTO dto,HttpServletRequest request) {
		System.out.println("/withdrawal.get() 접근");
		
		ModelAndView mav = new ModelAndView();
		
//		세션에서 member_id값 가져와서 dto에 담는다.
		HttpSession session = request.getSession();
		String member_id = session.getAttribute("member_id")+"";
		dto.setMember_id(member_id);
		
		System.out.println("/withdrawal.get()/member_id : "+member_id);
		
//		삭제하려는 member table에 외래키가 많이 연결되있어서 지금은 삭제 못한다.
		loginService.deleteMember(dto);

		mav.setViewName("/index");

		return mav;
	}

}
