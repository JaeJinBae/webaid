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
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
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

import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.NoticeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController{

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

	@RequestMapping(value="/reg_advice", method=RequestMethod.POST)
	public String WebSendMail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		logger.info("reg_advice 진입");
		
		
		String to = "실제로 메일을 받을 주소";
		
		if (request.getContentType().startsWith("multipart/form-data")) {
			try {
				
				HashMap data = getMailData(request, response);
				
				sendMail(data);

				/*ServletContext sc = getServletContext();
				RequestDispatcher rd = sc.getRequestDispatcher("sendMailWithFile.jsp");
				rd.forward(request, response);*/
			} catch (MessagingException ex) {
				throw new ServletException(ex);
			}
		} else {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
		return "redirect:/menu04_2";
		
	}
	
	private void sendMail(HashMap mailData) throws MessagingException {
        logger.info("sendMail 진입");
        
		System.setProperty("mail.smtp.starttls.enable", "true"); 
        System.setProperty("mail.smtp.auth", "true"); 
        System.setProperty("mail.smtp.host", "smtp.gmail.com");
        System.setProperty("mail.smtp.port", "587");
        
        //구글 인증
        Authenticator auth = new MyAuthentication();
        Message msg = new MimeMessage(Session.getDefaultInstance(System.getProperties(), auth));
        //받는사람
        InternetAddress[] tos = InternetAddress.parse("bjj7425@naver.com");
        msg.setRecipients(Message.RecipientType.TO, tos);
        //한글을 위한 인코딩
        msg.setHeader("Content-Type", "text/html; charset=UTF-8");
        //제목
        msg.setSubject("webaid 상세 문의신청입니다.");
        msg.setSentDate(new Date());
        
        String PwMeg = "회사명:" + mailData.get("cname") + "\n" + "담당자:" + mailData.get("pname") + "\n" + "연락처:" + mailData.get("phone") + "\n" + "이메일:" + mailData.get("email")
		+ "\n" + "현재사이트:" + mailData.get("nsite") + "\n" + "참고사이트1:" + mailData.get("rsite1") + "\n" + "참고사이트2:" + mailData.get("rsite2")
		+ "\n" + "문의내용:"+mailData.get("content");
       
        //첨부파일이 없으면 내용만 전송
        if(null == mailData.get("upload")){
                 msg.setText(PwMeg);
          } else {
            //첨부파일이 있으면
            BodyPart body = new MimeBodyPart();
              BodyPart upload = (BodyPart)mailData.get("upload");
              body.setText(PwMeg);
              MimeMultipart multipart = new MimeMultipart();
              multipart.addBodyPart(body);
              multipart.addBodyPart(upload);
              msg.setContent(multipart);
              
           }
        //전송
        Transport.send(msg);
    }

	private HashMap getMailData(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, MessagingException {
		logger.info("getMailData 진입");
		
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
						System.out.println("파일이름1= "+filename);
						MimeBodyPart bodyPart = new MimeBodyPart();
						DataSource ds = new ByteArrayDataSource(buffer.toByteArray(), contentType, filename);
						System.out.println("파일이름2= "+filename);
						bodyPart.setDataHandler(new DataHandler(ds));
						bodyPart.setDisposition("attachment; filename=\"" + filename + "\"");
						bodyPart.setFileName(filename);
						mailData.put(name, bodyPart);
						System.out.println("파일이름3= "+filename);
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
						System.out.println("파일이름4= "+filename);
						filename = MimeUtility.encodeText(tokenizer.nextToken());
						System.out.println("파일이름5= "+filename);
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
	
	public class ByteArrayDataSource implements DataSource {
		
		byte[] bytes;
		String contentType;
		String name;
		
		ByteArrayDataSource(byte[] bytes, String contentType, String name) {
			this.bytes = bytes;
			if (contentType == null)
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
			return new ByteArrayInputStream(bytes, 0, bytes.length - 2);
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
	
	class MyAuthentication extends Authenticator {
		
        private PasswordAuthentication pa;
        private String id;
        private String pw;
 
        private MyAuthentication() {
 
            id = "bjj7425@gmail.com"; // 구글 ID
            pw = "qowowls1"; // 구글 비밀번호
            pa = new PasswordAuthentication(id, pw);
        }
 
        // 시스템에서 사용하는 인증정보
        public PasswordAuthentication getPasswordAuthentication() {
            return pa;
        }
    }

	
}
