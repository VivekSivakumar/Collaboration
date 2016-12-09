package com.portal.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.portal.bean.RegisterModule;
import com.portal.service.RegisterModuleService;

@Component
public class Handlercontroller {
 
	@Autowired
	RegisterModuleService registerModuleService;
	
	public RegisterModule initFlow(){
		return new RegisterModule();
	}
 
	public String validateDetails(RegisterModule registerModule,MessageContext messageContext){
		String status = "success";
		if(registerModule.getFname().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"fname").defaultText("name is must ").build());
			status = "failure";
		}
		if(registerModule.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("email is must").build());
			status = "failure";
		}
		if(registerModule.getDob().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"dob").defaultText("DOB is must").build());
			status = "failure";
		}
		if(registerModule.getUname().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"uname").defaultText("username is must").build());
			status = "failure";
		}
		if(registerModule.getPwrd().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"pwrd").defaultText("password is must").build());
			status = "failure";
		}
		if(registerModule.getRepwrd().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"repwrd").defaultText("password confirmation is must").build());
			status = "failure";
		}
		if(registerModule.getMobno().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobno").defaultText("City is must").build());
			status = "failure";
		}
		List<RegisterModule> usrLt=registerModuleService.getList();
		for(RegisterModule usr:usrLt)
		{
			if(registerModule.getFname().equals(usr.getFname()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"fname").defaultText("Entered UserName is already exists..").build());
				status="failure";
			}
			if(registerModule.getEmail().equals(usr.getEmail()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"email").defaultText("Entered Email ID is already exists..").build());
				status="failure";
			}
		}
		if(status.equals("success"))
		{
			registerModuleService.insertRow(registerModule);
		}
		return status;
	}
}