package com.Batch1.Mailer;
 
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
public class Mailer {
	
	public static void main(String args[]){
        try{
            SendMail("winwithaman@gmail.com","test","test mail");
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
    
    public static void SendMail(String toMail,String subjectMail,String context)
    {
     String host ="smtp.gmail.com" ;
            String user = "indiakidukaan@gmail.com";
            String pass = "qwerty@123";
            String to = toMail;
            String from = "indiakidukaan@gmail.com";
            String subject = subjectMail;
            String messageText = context;
            boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");
            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
             try {
             Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);
           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           System.out.println("message send successfully");   
        } catch (MessagingException e) {
            throw new RuntimeException(e); 
        }
            
}
}
