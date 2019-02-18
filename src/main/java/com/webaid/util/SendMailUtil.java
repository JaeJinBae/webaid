package com.webaid.util;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import com.webaid.domain.AdviceVO;

public class SendMailUtil{
	public void SendEmail(AdviceVO vo) {
		System.out.println("sendMailUtil 진입");
		String host = "smtp.naver.com";
		String user = "bjj7425";
		String password = "qowowls7425!";
		int port=465;
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("bjj7425@naver.com"));

			// Subject
			String subject = "웹에이드 상담문의신청입니다.";
			try {
				message.setSubject(MimeUtility.encodeText(subject, "UTF-8", "B"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String PwMeg = "회사명:" + vo.getCname() + "<br>" + "담당자:" + vo.getPname() + "<br>" + "연락처:" + vo.getPhone() + "<br>" + "이메일:" + vo.getEmail()
					+ "<br>" + "현재사이트:" + vo.getNsite() + "<br>" + "참고사이트1:" + vo.getRsite1() + "<br>" + "참고사이트2:" + vo.getRsite2()
					+ "<br>" + "업로드파일명:"+vo.getUpload() + "<br>" + "문의내용:"+vo.getContent();

			// Text/Project_JSP/img/login/login.gif
			message.setText(PwMeg, "UTF-8");
			message.setHeader("content-Type", "text/html");

			// send the message
			Transport.send(message);
			System.out.println("전송성공");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
