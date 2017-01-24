package com.collab.controller;

import java.util.Date;

import org.slf4j.*;
import org.springframework.messaging.handler.annotation.*;
import org.springframework.web.bind.annotation.*;

import com.collab.dto.*;

@RestController
public class ChatController {
	
	public ChatController(){
		System.out.println("inside backend");
	}

  private Logger logger = LoggerFactory.getLogger(getClass());

  @RequestMapping(value="/index",method=RequestMethod.GET)
  public @ResponseBody String viewApplication() {
    return "index";
  }

  @MessageMapping("/chat")
  @SendTo("/topic/message")
  @RequestMapping(value="/chat",method=RequestMethod.GET)
  public @ResponseBody OutputMessage sendMessage(Message message) {
    logger.info("Message sent");
    return new OutputMessage(message, new Date());
  }
}