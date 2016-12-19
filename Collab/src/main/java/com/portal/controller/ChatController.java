package com.portal.controller;

import java.util.Date;

import org.slf4j.*;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.portal.dto.*;

@Controller

public class ChatController {

  private Logger logger = LoggerFactory.getLogger(getClass());

  @RequestMapping(value="/chats",method=RequestMethod.GET)
  public String viewApplication() {
    return "chats";
  }


  @MessageMapping("/chat")
  @SendTo("/topic/message")
  public OutputMessage sendMessage(Message message) {
    logger.info("Message sent");
    return new OutputMessage(message, new Date());
  }
}
