package fr.treeptik.service;

import javax.annotation.security.RolesAllowed;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.ClientDAO;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Client;

@Service
public class ClientService extends GenericService<ClientDAO, Client, Integer>
{
	@Autowired
	private ClientDAO clientDAO;

	@Override
	public ClientDAO getGenericDAO()
	{
		return clientDAO;
	}

	@Override
	@Transactional
	@RolesAllowed(value = "ROLE_ADMIN")
	public Client save(Client entity) throws ServiceException
	{
		return super.save(entity);
	}
}

