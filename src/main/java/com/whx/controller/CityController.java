package com.whx.controller;

import com.whx.entity.City;
import com.whx.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author fishii
 * @date 2021/11/23
 * @apiNote
 */
@Controller
@RequestMapping("city")
public class CityController {
    @Autowired
    private CityService cityService;
    //查询城市列表
    @RequestMapping("findAll")
    public String findAll(Model model){
        List<City> cities=cityService.findAll();
        model.addAttribute("cities",cities);
        return "head/pages/city-list";
    }

    @RequestMapping("save")
    public String save(City city){
        cityService.save(city);
        return "redirect:/city/findAll";
    }

    //查询所有城市列表返回JSON类型的数据
    @RequestMapping("findAllJSON")
    @ResponseBody
    public List<City> findAllJSON(){
        return cityService.findAll();
    }
}
