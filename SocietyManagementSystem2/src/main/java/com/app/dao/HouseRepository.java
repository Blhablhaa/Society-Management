package com.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.pojos.House;

@Repository
public interface HouseRepository extends JpaRepository<House,String> {
	@Modifying
	@Query(value="insert into house(house_no,block,owner,number) values (:house,:block,:owner,:number)",nativeQuery=true)
	public void houseInfoInsert(@Param("house") String house,@Param("block") String block,@Param("owner") String owner,@Param("number") String number );
}
/*+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| house_no | varchar(255) | NO   | PRI | NULL    |       |
| block    | varchar(1)   | YES  |     | NULL    |       |
| owner    | varchar(20)  | YES  |     | NULL    |       |
| number   | varchar(255) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+*/