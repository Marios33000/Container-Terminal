
package com.example.ContainerTerminal.services;

import com.example.ContainerTerminal.models.Seawaybill;
import com.example.ContainerTerminal.repository.SeaWayBillRepository;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class SeaWBImplementation implements SeaWayBillInterface {
    
    
    @Autowired
    SeaWayBillRepository seaWayBill;

  
    
}
