package com.app.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.app.dao.ComplaintRepository;
import com.app.dao.EventRepository;
import com.app.dao.VisitorRepository;

public class AdminService implements IAdmin{
	@Autowired
	private ComplaintRepository comprepo;
	@Autowired
	private VisitorRepository Visitorrepo; 
	@Autowired
	private EventRepository eventrepo;

}
