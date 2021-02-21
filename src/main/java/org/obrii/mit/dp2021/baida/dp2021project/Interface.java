/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.baida.dp2021project;

/**
 *
 * @author danila
 */
import java.util.List;

public interface Interface {
    String getName();
    void setName(String name);
    
    String getPhone();
    void setPhone(String phone);
    
    String getEmail();
    void setEmail(String email);
    
    String getGender();
    void setGender(String gender);
    
    List<String> getLanguage();
    void setLanguage(List<String> language);
    
    String getCountry();
    void setCountry(String country);
    
    String getIsCoolguy();
}
