package org.hj.service;

import java.util.List;

import org.hj.mapper.PatientMapper;
import org.hj.model.PatientVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PatientService {
    @Autowired
    private PatientMapper patientMapper;

    public List<PatientVo> getAllPatients() {
        return patientMapper.getAllPatients();
    }
    @Transactional
    public void deleteOld() {
    	patientMapper.deleteOld();
    }
}
