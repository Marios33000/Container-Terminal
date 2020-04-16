
package com.example.ContainerTerminal.services;

import com.example.ContainerTerminal.models.Container;
import com.example.ContainerTerminal.repository.ContainerRepository;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ContainerInterfaceImplementation implements ContainerInterface {
    
    
    @Autowired 
    ContainerRepository containerrepo;

    @Override
    public List<Container> getAllContainers() {
             
        List<Container> all=(List<Container>) containerrepo.findAll();
        return all;
    }

  
    
    
    
    
    
}
