package com.app.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.ComplaintRepository;
import com.app.pojos.Complaint;

@Service
public class ComplaintService implements IComplaint {
	@Autowired
	private ComplaintRepository complaintRepo;
	
	@Transactional
	@Override
	public Complaint getComplaint(int cid) {
		return complaintRepo.getById(cid);
	}

}
