package fr.treeptik.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.treeptik.exception.ControllerException;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Client;
import fr.treeptik.service.ClientService;
import fr.treeptik.validator.ClientValidator;

@Controller
@RequestMapping(value = "/client")
public class ClientController
{
	@Autowired
	ClientService clientService;
	
	@Autowired
	ClientValidator clientValidator;
	
	@RequestMapping(value = "/init.do", method = RequestMethod.GET)
	public ModelAndView initForm()
	{
		ModelAndView mv = new ModelAndView("client");
		Client client = new Client();
		mv.addObject("client",client);
		return mv;
	}
	
	@RequestMapping(value = "/save.do", method = RequestMethod.POST)
	public ModelAndView save(@Valid Client client, BindingResult result) throws ControllerException
	{
		clientValidator.validate(client, result);
		
		if(result.hasErrors())
			return new ModelAndView("client", "client", client);
		
		try
		{
			client = clientService.save(client);
		}
		
		catch(ServiceException e)
		{
			throw new ControllerException(e.getMessage(), e);
		}

		ModelAndView mv = new ModelAndView("client-created", "client", client);
		return mv;
	}
}
