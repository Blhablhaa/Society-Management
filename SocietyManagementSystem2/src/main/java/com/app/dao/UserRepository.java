package com.app.dao;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.app.pojos.User;


public interface UserRepository extends JpaRepository<User,String>{
	@Modifying
	@Query(value="insert into user(email,name,password,phone,user_role,house) values (:email,:name,:pass,:phone,:role,:house)",nativeQuery=true)
	public void loginInfoInsert(@Param("email") String email,@Param("name") String name,@Param("pass") String pass,@Param("phone") String phone,@Param("role") String role,@Param("house") String house );
}
/*+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| email     | varchar(20) | NO   | PRI | NULL    |       |
| name      | varchar(20) | NO   |     | NULL    |       |
| password  | varchar(20) | NO   |     | NULL    |       |
| phone     | varchar(20) | YES  |     | NULL    |       |
| user_role | varchar(20) | YES  |     | NULL    |       |
| house     | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
*/