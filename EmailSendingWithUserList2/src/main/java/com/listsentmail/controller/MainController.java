package com.listsentmail.controller;

import java.util.List;


import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.listsentmail.models.TandemParking;
import com.listsentmail.repository.TandemParkingRepository;

@Controller
public class MainController {

	@Autowired
	TandemParkingRepository tandemparkingRepository;

	@Autowired
	private JavaMailSender mailSenderObj;

	@GetMapping("/")
	public String welcome() {

		return "welcome";
	}

	@RequestMapping(value = { "/alltenants" }, method = RequestMethod.GET)
	public String viewTandemParkings(Model model) {

		List<TandemParking> allTenants = tandemparkingRepository.findAll();
		model.addAttribute("tandemparkings",  allTenants);
		return "employeelist";

	}

	// sendmail code
	@GetMapping(value = "/sendMail/{id}")
	public ResponseEntity<TandemParking> tandemparkingMail(@PathVariable("id") Integer id, @RequestParam("action") String action) {

		TandemParking tandemparking = tandemparkingRepository.findById(id).get();

		if(action.equalsIgnoreCase("accept")) {
	        sendmail(tandemparking, "Document Accepted");
	    } else if(action.equalsIgnoreCase("reject")) {
	        sendmail(tandemparking, "Document Rejected");
	    }
		return new ResponseEntity<TandemParking>(HttpStatus.OK);

	}

	private void sendmail(TandemParking tandemparking, String action) {

	    final String emailToRecipient = tandemparking.getEmailid();
	    final String emailSubject = action;
	    final String emailMessage = "<html> <body> <p>Dear Sir/Madam,</p><p>Your document has been " + action.toLowerCase() + ".</p></body></html>";

	    mailSenderObj.send(new MimeMessagePreparator() {

	        @Override
	        public void prepare(MimeMessage mimeMessage) throws Exception {

	            MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");

	            mimeMsgHelperObj.setTo(emailToRecipient);
	            mimeMsgHelperObj.setSubject(emailSubject);
	            mimeMsgHelperObj.setText(emailMessage, true);

	            mailSenderObj.send(mimeMessage);
	        }
	    });
	}
}