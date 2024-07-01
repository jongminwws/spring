package org.hj.mapper;

import org.hj.model.PatientVo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PatientMapper {
	
    @Select("SELECT * FROM patient_info")
    List<PatientVo> getAllPatients();
    
    @Delete("DELETE FROM temper WHERE created_at < DATE_SUB(NOW(), INTERVAL 5 SECOND)")
    void  deleteOld();
}
