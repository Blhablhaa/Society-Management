package com.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.pojos.Visitor;

public interface VisitorRepository extends JpaRepository<Visitor, String>{

}
