package com.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.app.pojos.Login_Info;

public interface LoginRepository extends JpaRepository<Login_Info,Integer>{
	@Modifying
	@Query(value="insert into login_info(id,email,password) values (default,:email,:pass)",nativeQuery=true)
	public void loginInfoInsert(@Param("email") String email,@Param("pass") String pass );
}