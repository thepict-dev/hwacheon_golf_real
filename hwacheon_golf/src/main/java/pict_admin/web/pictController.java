package pict_admin.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;

//import io.socket.emitter.Emitter;
//import io.socket.emitter.Emitter.Listener;
//import io.socket.client.IO;
//import io.socket.client.Socket;

import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Calendar;

import javax.annotation.Resource;
import javax.mail.PasswordAuthentication;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pict_admin.service.AdminService;
import pict_admin.service.AdminVO;
import pict_admin.service.PictService;
import pict_admin.service.PictVO;

@Controller
public class pictController {
	PasswordAuthentication pa;
	
	@Resource(name = "pictService")
	private PictService pictService;
	
	@Resource(name = "adminService")
	private AdminService adminService;
	
	
	
	@RequestMapping(value = "/main.do")
	public String main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/main/main";
	}
	@RequestMapping(value = "/login.do")
	public String login(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/include/login";
	}
	
	//인사말
	@RequestMapping(value = "/parkgolf/greeting.do")
	public String greeting(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/parkgolf/greeting";
	}
	//소개
	@RequestMapping(value = "/parkgolf/info.do")
	public String info(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/parkgolf/info";
	}
	//오시는길
	@RequestMapping(value = "/parkgolf/map.do")
	public String map(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/parkgolf/map";
	}
	//이용아내
	@RequestMapping(value = "/parkgolf/rules.do")
	public String rules(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/parkgolf/rules";
	}
	//코스소개
	@RequestMapping(value = "/parkgolf/hole.do")
	public String hole(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/parkgolf/hole";
	}
	//부대시설
	@RequestMapping(value = "/parkgolf/facilities.do")
	public String facilities(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/parkgolf/facilities";
	}
	
	
	//예약하기
	@RequestMapping(value = "/reservation/reservation.do")
	public String reservation(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/reservation/reservation";
	}
	//예약확인
	@RequestMapping(value = "/reservation/confirm.do")
	public String confirm(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/reservation/confirm";
	}
	
	
	//공지사항
	@RequestMapping(value = "/bbs/notice.do")
	public String notice(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/notice";
	}
	//공지사항 뷰
	@RequestMapping(value = "/bbs/notice_view.do")
	public String notice_view(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/notice_view";
	}
	//갤러리
	@RequestMapping(value = "/bbs/gallery.do")
	public String gallery(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/gallery";
	}
	//갤러리 뷰
	@RequestMapping(value = "/bbs/gallery_view.do")
	public String gallery_view(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/gallery_view";
	}
	//문의하기
	@RequestMapping(value = "/bbs/inquiry.do")
	public String inquiry(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/inquiry";
	}
	//문의하기 뷰
	@RequestMapping(value = "/bbs/inquiry_view.do")
	public String inquiry_view(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/inquiry_view";
	}
	//문의하기 작성
	@RequestMapping(value = "/bbs/inquiry_register.do")
	public String inquiry_register(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/bbs/inquiry_register";
	}
	
	
	//얼음나라화천 산천어축제
	@RequestMapping(value = "/tour/masusalmon.do")
	public String tour_masusalmon(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/tour/masusalmon";
	}
	//쪽배축제
	@RequestMapping(value = "/tour/jjokbae.do")
	public String jjokbae(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/tour/jjokbae";
	}
	//토마토축제
	@RequestMapping(value = "/tour/tomato.do")
	public String tomato(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/tour/tomato";
	}
	//화천관광
	@RequestMapping(value = "/tour/info.do")
	public String tour_info(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/tour/info";
	}
	//음식점
	@RequestMapping(value = "/tour/restaurant.do")
	public String restaurant(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/tour/restaurant";
	}
	//숙박업
	@RequestMapping(value = "/tour/stay.do")
	public String stay(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {

		return "pict/tour/stay";
	}
	
	
	
	//동작을 위한 컨트롤러
	@RequestMapping("/getWeather.do")
	public void getWeather(HttpServletRequest request, HttpServletResponse response) throws Exception{
		Calendar cal = Calendar.getInstance();
		int yyyy = cal.get(Calendar.YEAR);
		int mm = cal.get(Calendar.MONTH) + 1;
		int dd = cal.get(Calendar.DAY_OF_MONTH);
		int hours = cal.get(Calendar.HOUR_OF_DAY);
		int minutes  = 0;
		
		//String apikey = "qXJzkdIYO4cQQk06COfzHcT0F0vh10a%2BYStd47h%2FT%2FIpoSQ3KJxqZVjmRw7uxvBwp2yT18aEUczQRUALXBqy%2FQ%3D%3D";	// 개발
		String apikey = "7LRqfTL6lN%2BwD%2BLwVQd53W3y5nPfjKOfUTc3RAtiHPLHKDRMKzKshG0MCbqtp9hKo6HSuW1BVQv%2Bgn%2FbmtV77w%3D%3D";	// 운영
		
		if(hours < 2){
			dd--;
			hours = 23;
		}else if(hours < 5){ hours = 2;
		}else if(hours < 8){ hours = 5;
		}else if(hours < 11){ hours = 8;
		}else if(hours < 14){ hours = 11;
		}else if(hours < 17){ hours = 14;
		}else if(hours < 20){ hours = 17;
		}else if(hours < 23){ hours = 20;
		}

		String year = String.valueOf(yyyy);
		String month = String.valueOf(mm);
		String day = String.valueOf(dd);
		String hour = String.valueOf(hours);
		String minute = String.valueOf(minutes);
		if(hours<10) {
	        hour='0'+hour;
	    }
	    if(mm<10) {
	        month='0'+month;
	    }
	    if(dd<10) {
	        day='0'+day;
	    }
	    if(minutes <10){
	    	minute='0'+minute;
	    }
		String baseDate = year+month+day;
		String baseTime = hour+minute;

		String urlStr = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst?serviceKey="+apikey+"&numOfRows=10&pageNo=1&base_date="+year+month+day+"&base_time="+hour+minute+"&nx=72&ny=139";
		System.out.println("urlStr############################"+urlStr);
		
		URL url = new URL(urlStr);
		 
		URLConnection connection = url.openConnection();
		 
		connection.setDoOutput(true);
		 
		// 타입 설정
		connection.setRequestProperty("CONTENT-TYPE","text/xml"); 
		 
		 
		//openStream() : URL페이지 정보를 읽어온다.
		BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(),"utf-8"));
		    
		String inputLine;
		String weatherBuffer = "";
		 
		// 페이지의 정보를 저장한다.
		while ((inputLine = in.readLine()) != null){
			weatherBuffer += inputLine.trim();
		}
		
		//기상 정보를 weatherBuffer에 저장
		in.close();
		
		response.setContentType("text/json;charset=utf-8");
		PrintWriter pr = response.getWriter();
		pr.write(weatherBuffer);
		pr.flush();
		pr.close();
	}
	@RequestMapping("/login_action.do")
	public String login(PictVO pictVO, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		PictVO user = (PictVO) request.getSession().getAttribute("loginVO");
		/*
		if(user == null) {
			PictVO loginCheck = pictService.selectMemberloginCheck(pictVO);

			if(loginCheck == null) {
				model.addAttribute("message", "로그인에 실패하였습니다. 로그인 정보를 확인해주시기 바랍니다.");
				model.addAttribute("retType", ":back");
				
				return "/common/message";
			}else {
				request.getSession().setAttribute("loginVO", loginCheck);
			}

		    String returnUrl = (pictVO.getReturnUrl()==null || pictVO.getReturnUrl().equals("")) ? "/" : pictVO.getReturnUrl();

			model.addAttribute("retType", ":null_submit");
			model.addAttribute("retUrl", returnUrl);

			return "/common/message";
		}else {
			model.addAttribute("message", "이미 로그인 하였습니다.");
			model.addAttribute("retType", ":back");

			return "/common/message";
		}
		*/
		return "";
	}

	/**
	 * 사용자 > 로그아웃
	 * @param memberVO
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/logout.do")
	public String logout(PictVO pictVO, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception{
		PictVO user = (PictVO) request.getSession().getAttribute("loginVO");

		if(user == null) {
			model.addAttribute("message", "로그인이 필요한 서비스입니다.");
			model.addAttribute("retType", ":back");

			return "/common/message";
		}else {
			request.getSession().removeAttribute("loginVO");
		}

		model.addAttribute("retType", ":null_submit");
		model.addAttribute("retUrl", "/");

		return "/common/message";
	}

	/**
	 * 카카오 로그인 action
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/kakaoLoginAction.do")
	public String kakaoLoginAction(HttpServletRequest request, ModelMap model) throws Exception {

		PictVO user = (PictVO) request.getSession().getAttribute("loginVO");
    	System.out.println("::::::::::::::::::카카오 로그인 시작");

		if (user == null) {
			String kakaoId = request.getParameter("kakaoId")==null?"":request.getParameter("kakaoId");
			/*String kakaoName = request.getParameter("kakaoName")==null?"":request.getParameter("kakaoName");*/
			
			PictVO login = new PictVO();
			
			if(!kakaoId.equals("")){
				login.setMemberId("k"+kakaoId);
			}else{
				model.addAttribute("retType", ":submit");
				model.addAttribute("retUrl", "/login");
				model.addAttribute("message", "카카오 로그인시 오류가 발생하였습니다. 다시 시도해주시기 바랍니다.");
				
				return "/common/message";
			}
			
			/*if(!kakaoName.equals("")){
				login.setMemberName(kakaoName);
			}else{
				model.addAttribute("retType", ":submit");
				model.addAttribute("retUrl", "/utility/login");
				model.addAttribute("message", "카카오 로그인시 오류가 발생하였습니다. 다시 시도해주시기 바랍니다.");
				
				return "/common/message";
			}*/
			
			request.getSession().setAttribute("loginVO", login);
	    	System.out.println("::::::::::::::::::카카오 로그인 성공");
			
			String returnPage = (String)request.getSession().getAttribute("returnUrl");
			
			String returnUrl = (returnPage==null || returnPage.equals("")) ? "/" : returnPage;
			
			String loginParam1 = (String)request.getSession().getAttribute("loginParam1");
			String loginParam2 = (String)request.getSession().getAttribute("loginParam2");
			String loginParam3 = (String)request.getSession().getAttribute("loginParam3");
			
			String loginParamName1 = (String)request.getSession().getAttribute("loginParamName1");
			String loginParamName2 = (String)request.getSession().getAttribute("loginParamName2");
			String loginParamName3 = (String)request.getSession().getAttribute("loginParamName3");
			
			
			model.addAttribute("retType", ":null_submit");
			model.addAttribute("retUrl", returnUrl);
			model.addAttribute("hiddenName1", loginParamName1);
			model.addAttribute("hiddenValue1", loginParam1);
			model.addAttribute("hiddenName2", loginParamName2);
			model.addAttribute("hiddenValue2", loginParam2);
			model.addAttribute("hiddenName3", loginParamName3);
			model.addAttribute("hiddenValue3", loginParam3);
	    	System.out.println("::::::::::::::::::카카오 로그인 종료");
			request.getSession().removeAttribute("returnUrl");
			
			return "/common/message";
		} else {
			return "redirect:/";
		}
	}
	
	/**
	 * 네이버 로그인 action
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/naverLoginAction.do")
	public String naverLoginAction(HttpServletRequest request, ModelMap model) throws Exception {

		PictVO user = (PictVO) request.getSession().getAttribute("MemberVO");
    	System.out.println("::::::::::::::::::네이버 로그인 시작");

		if (user == null) {
			//String clientId = "SpTYYF4tvPMxqsSVslso";//애플리케이션 클라이언트 아이디값"; - 개발서버
		    //String clientSecret ="lOdVBJ61Yv";//애플리케이션 클라이언트 시크릿값"; - 개발서버
		    //String redirectURI = URLEncoder.encode("http://localhost:8080", "UTF-8");// - 개발서버
		    
		    String clientId = "1_KsnaDm7xhxlqYb76PV";//애플리케이션 클라이언트 아이디값"; - 운영서버
		    String clientSecret ="sVJIgFjLY0";//애플리케이션 클라이언트 시크릿값"; - 운영서버
		    String redirectURI = URLEncoder.encode("https://hspg.ihc.go.kr", "UTF-8");// - 운영서버
		    
		    String code = request.getParameter("code");
		    String state = request.getParameter("state");
		    
		    String apiURL;
		    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
		    apiURL += "client_id=" + clientId;
		    apiURL += "&client_secret=" + clientSecret;
		    apiURL += "&redirect_uri=" + redirectURI;
		    apiURL += "&code=" + code;
		    apiURL += "&state=" + state;
		
		    String refresh_token = "";
		    StringBuffer res = new StringBuffer(); // token
		    StringBuffer res2 = new StringBuffer(); // 프로필 정보
		    
		    String msg = ""; // token
		    JSONObject jo = null; // token
		    
		    String msg2 = "";  // 프로필 정보
		    JSONObject jo2 = null;  // 프로필 정보
		    JSONObject jo3 = null;  // 프로필 정보
		    
		    BufferedReader br = null;
		    try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("GET");
		      int responseCode = con.getResponseCode();
		      
		      if(responseCode==200) { // 정상 호출
		        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		      } else {  // 에러 발생
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		      }
		      String inputLine;

		      while ((inputLine = br.readLine()) != null) {
		        res.append(inputLine);
		      }
		      br.close();
		      
		      if(responseCode==200) {
		    	  msg = res.toString();
		    	  jo = new JSONObject(msg);
		    	  System.out.println("1::::::::::::::::::네이버 로그인 성공"+msg);
		      }
		    } catch (JSONException e) {
		    	System.out.println("1############# : 네이버 로그인 오류입니다.");
		    	e.printStackTrace();
		    } catch (IOException e) {
		    	System.out.println("3############# : 네이버 로그인 오류입니다.");
		    	e.printStackTrace();
		    } finally {
		    	if(br != null){
		    		br.close();
		    	}
		    }
			
		    String token = "";
		    if(jo != null && jo.has("access_token")){
		    	token = jo.getString("access_token");// 네이버 로그인 접근 토큰;
		    }else{
		    	model.addAttribute("retType", ":submit");
				model.addAttribute("retUrl", "/");
				model.addAttribute("message", "로그인시 오류가 발생하였습니다.");
				return "/common/message";
		    }
		    
			String header = "Bearer " + token; // Bearer 다음에 공백 추가
			br = null;
		    try {
		        String apiURL2 = "https://openapi.naver.com/v1/nid/me";
		        URL url = new URL(apiURL2);
		        HttpURLConnection con = (HttpURLConnection)url.openConnection();
		        con.setRequestMethod("GET");
		        con.setRequestProperty("Authorization", header);
		        int responseCode = con.getResponseCode();
		        
		        if(responseCode==200) { // 정상 호출
		            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		        } else {  // 에러 발생
		            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		        }
		        String inputLine;
		        while ((inputLine = br.readLine()) != null) {
		        	res2.append(inputLine);
		        }
		        br.close();
		        if(responseCode==200) { // 정상 호출
		        	msg2 = res2.toString();
		      	  	jo2 = new JSONObject(msg2);
		      	  	jo3 = new JSONObject(jo2.get("response").toString());
		      	  	
		      	  	PictVO login = new PictVO();
		      	  	login.setMemberId("n"+jo3.get("id").toString());

		      	  	// 로그인 정보를 세션에 저장
		    		request.getSession().setAttribute("loginVO", login);
			    	System.out.println("2::::::::::::::::::네이버 로그인 성공");
		        }
		        
		    } catch (JSONException e) {
		    	System.out.println("4############# : 네이버 로그인 오류입니다.");
		    	e.printStackTrace();
		    } catch (IOException e) {
		    	System.out.println("6############# : 네이버 로그인 오류입니다.");
		    	e.printStackTrace();
		    } finally {
		    	if(br != null){
		    		br.close();
		    	}
		    }
			
			String returnPage = (String)request.getSession().getAttribute("returnUrl");
			
			String returnUrl = (returnPage==null || returnPage.equals("")) ? "/" : returnPage;
			
			String loginParam1 = (String)request.getSession().getAttribute("loginParam1");
			String loginParam2 = (String)request.getSession().getAttribute("loginParam2");
			String loginParam3 = (String)request.getSession().getAttribute("loginParam3");
			
			String loginParamName1 = (String)request.getSession().getAttribute("loginParamName1");
			String loginParamName2 = (String)request.getSession().getAttribute("loginParamName2");
			String loginParamName3 = (String)request.getSession().getAttribute("loginParamName3");
			
			
			model.addAttribute("retType", ":null_submit");
			model.addAttribute("retUrl", returnUrl);
			model.addAttribute("hiddenName1", loginParamName1);
			model.addAttribute("hiddenValue1", loginParam1);
			model.addAttribute("hiddenName2", loginParamName2);
			model.addAttribute("hiddenValue2", loginParam2);
			model.addAttribute("hiddenName3", loginParamName3);
			model.addAttribute("hiddenValue3", loginParam3);
	    	System.out.println("::::::::::::::::::네이버 로그인 종료");
			request.getSession().removeAttribute("returnUrl");
			
			return "/common/message";
		} else {
			return "redirect:/";
		}
	}
}
