package com.webaid.controller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.NoticeService;
import com.webaid.util.SendMailUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController extends HttpServlet{

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private NoticeService nService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("home");

		return "main/index";
	}

	@RequestMapping(value = "/menu01_1", method = RequestMethod.GET)
	public String menu01_1() {
		logger.info("menu01_1 GET");

		return "menu01/menu01_01";
	}

	@RequestMapping(value = "/menu01_2", method = RequestMethod.GET)
	public String menu01_2() {
		logger.info("menu01_2 GET");

		return "menu01/menu01_02";
	}

	@RequestMapping(value = "/menu02_1", method = RequestMethod.GET)
	public String menu02_1() {
		logger.info("menu02_1 GET");

		return "menu02/menu02_01";
	}

	@RequestMapping(value = "/menu02_2", method = RequestMethod.GET)
	public String menu02_2() {
		logger.info("menu02_2 GET");

		return "menu02/menu02_02";
	}

	@RequestMapping(value = "/menu02_3", method = RequestMethod.GET)
	public String menu02_3() {
		logger.info("menu02_3 GET");

		return "menu02/menu02_03";
	}

	@RequestMapping(value = "/menu03_1", method = RequestMethod.GET)
	public String menu03_1() {
		logger.info("menu03_1 GET");

		return "menu03/menu03_01";
	}

	@RequestMapping(value = "/menu04_1", method = RequestMethod.GET)
	public String menu04_1(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("menu04_1 GET");

		List<NoticeVO> list = nService.listSearch(cri);

		cri.setKeyword(null);
		cri.setSearchType("n");

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		return "menu04/menu04_01";
	}

	@RequestMapping(value = "/menu04_2", method = RequestMethod.GET)
	public String menu04_2() {
		logger.info("menu04_2 GET");

		return "menu04/menu04_02";
	}

	
	@RequestMapping(value = "/reg_advice", method = RequestMethod.POST)
	public String reg_advice(AdviceVO vo) { logger.info("reg_advice post");
		SendMailUtil sendMail = new SendMailUtil();
		System.out.println(vo.toString());
		sendMail.SendEmail(vo);
	
	return "menu04/menu04_02"; }
 

	/*@RequestMapping(value = "/reg_advice", method = RequestMethod.POST)
	public String reg_advice(AdviceVO vo, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		logger.info("reg_advice post");
		String to = "bjj7425@naver.com";
		if (request.getContentType().startsWith("multipart/form-data")) {
			try {
				HashMap data = getMailData(request, response);
				sendMail(data, vo);

				ServletContext sc = getServletContext();

				RequestDispatcher rd = sc.getRequestDispatcher("redirect:menu04/menu04_02");
				rd.forward(request, response);
			} catch (MessagingException ex) {
				throw new ServletException(ex);
			}
		} else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}

		return "menu04/menu04_02";
	}*/
	
	public class ByteArrayDataSource implements DataSource{
		 
	     byte[] bytes;
	       String contentType;
	       String name;
	 
	       ByteArrayDataSource(byte[] bytes, String contentType, String name) {
	          this.bytes = bytes;
	          if(contentType == null)
	             this.contentType = "application/octet-stream";
	          else
	             this.contentType = contentType;
	          this.name = name;
	       }
	 
	       @Override
	       public String getContentType() {
	          return contentType;
	       }
	       
	       @Override
	       public InputStream getInputStream() {
	          // 가장 마지막의 CR/LF를 없앤다.
	          return new ByteArrayInputStream(bytes,0,bytes.length - 2);
	       }
	       
	       @Override
	       public String getName() {
	          return name;
	       }
	       
	       @Override
	       public OutputStream getOutputStream() throws IOException {
	          throw new FileNotFoundException();
	       }
	}


	private HashMap getMailData(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, MessagingException {
		String boundary = request.getHeader("Content-Type");
		int pos = boundary.indexOf('=');
		boundary = boundary.substring(pos + 1);
		boundary = "--" + boundary;
		ServletInputStream in = request.getInputStream();
		byte[] bytes = new byte[512];
		int state = 0;
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		String name = null, value = null, filename = null, contentType = null;
		HashMap mailData = new HashMap();

		int i = in.readLine(bytes, 0, 512);
		while (-1 != i) {
			String st = new String(bytes, 0, i);
			if (st.startsWith(boundary)) {
				state = 0;
				if (null != name) {
					if (value != null)
						// -2 to remove CR/LF
						mailData.put(name, value.substring(0, value.length() - 2));
					else if (buffer.size() > 2) {
						MimeBodyPart bodyPart = new MimeBodyPart();
						DataSource ds = new ByteArrayDataSource(buffer.toByteArray(), contentType, filename);
						bodyPart.setDataHandler(new DataHandler(ds));
						bodyPart.setDisposition("attachment; filename=\"" + filename + "\"");
						bodyPart.setFileName(filename);
						mailData.put(name, bodyPart);
					}
					name = null;
					value = null;
					filename = null;
					contentType = null;
					buffer = new ByteArrayOutputStream();
				}
			} else if (st.startsWith("Content-Disposition: form-data") && state == 0) {
				StringTokenizer tokenizer = new StringTokenizer(st, ";=\"");
				while (tokenizer.hasMoreTokens()) {
					String token = tokenizer.nextToken();
					if (token.startsWith(" name")) {
						name = tokenizer.nextToken();
						state = 2;
					} else if (token.startsWith(" filename")) {
						filename = tokenizer.nextToken();
						StringTokenizer ftokenizer = new StringTokenizer(filename, "\\/:");
						filename = ftokenizer.nextToken();
						while (ftokenizer.hasMoreTokens())
							filename = ftokenizer.nextToken();
						state = 1;
						break;
					}
				}
			} else if (st.startsWith("Content-Type") && state == 1) {
				pos = st.indexOf(":");
				// + 2 to remove the space
				// - 2 to remove CR/LF
				contentType = st.substring(pos + 2, st.length() - 2);
			} else if (st.equals("\r\n") && state == 1)
				state = 3;
			else if (st.equals("\r\n") && state == 2)
				state = 4;
			else if (state == 4)
				value = value == null ? st : value + st;
			else if (state == 3)
				buffer.write(bytes, 0, i);
			i = in.readLine(bytes, 0, 512);
		}
		return mailData;
	}
	
	private void sendMail(HashMap mailData, AdviceVO vo) throws MessagingException {
        System.setProperty("mail.smtp.starttls.enable", "true"); // gmail은 무조건 true 고정
        System.setProperty("mail.smtp.auth", "true"); // gmail은 무조건 true 고정
        System.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp 서버 주소
        System.setProperty("mail.smtp.port", "587"); // gmail 포트
        //구글 인증
        Authenticator auth = new MyAuthentication();
        Message msg = new MimeMessage(Session.getDefaultInstance(System.getProperties(), auth));
        //받는사람
        InternetAddress[] tos = InternetAddress.parse("bjj7425@naver.com");
        msg.setRecipients(Message.RecipientType.TO, tos);
        //한글을 위한 인코딩
        msg.setHeader("Content-Type", "text/plain; charset=UTF-8");
        //제목
        msg.setSubject((String)mailData.get("subject"));
        msg.setSentDate(new Date());
 
        String PwMeg = "회사명:" + vo.getCname() + "<br>" + "담당자:" + vo.getPname() + "<br>" + "연락처:" + vo.getPhone() + "<br>" + "이메일:" + vo.getEmail()
		+ "<br>" + "현재사이트:" + vo.getNsite() + "<br>" + "참고사이트1:" + vo.getRsite1() + "<br>" + "참고사이트2:" + vo.getRsite2()
		+ "<br>" + "업로드파일명:"+vo.getUpload() + "<br>" + "문의내용:"+vo.getContent();
        
        //첨부파일이 없으면 내용만 전송
        if(null == mailData.get("upload")){
        	
        	msg.setText(PwMeg);;
          } else {
            //첨부파일이 있으면
            BodyPart body = new MimeBodyPart();
              BodyPart attachment = (BodyPart)mailData.get("upload");
              body.setText(PwMeg);
              MimeMultipart multipart = new MimeMultipart();
              multipart.addBodyPart(body);
              multipart.addBodyPart(attachment);
              msg.setContent(multipart, "text/plain; charset=UTF-8");
           }
        //전송
        Transport.send(msg);
    }
	
	 class MyAuthentication extends Authenticator {
		 
	        private PasswordAuthentication pa;
	        private String id;
	        private String pw;
	 
	        private MyAuthentication() {
	 
	            id = "bjj7425"; // 구글 ID
	            pw = "qowowls1"; // 구글 비밀번호
	            pa = new PasswordAuthentication(id, pw);
	        }
	 
	        // 시스템에서 사용하는 인증정보
	        public PasswordAuthentication getPasswordAuthentication() {
	            return pa;
	        }
	    }
}
