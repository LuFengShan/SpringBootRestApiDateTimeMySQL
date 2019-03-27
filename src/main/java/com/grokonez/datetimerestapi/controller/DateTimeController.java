package com.grokonez.datetimerestapi.controller;

import com.grokonez.datetimerestapi.model.DateTimeModel;
import com.grokonez.datetimerestapi.repository.DateTimeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api")
public class DateTimeController {

	@Autowired
	DateTimeRepository dateTimeRepository;

	/**
	 * 获取所有的数据
	 *
	 * @return
	 */
	@GetMapping("/getdatetime")
	public Iterable<DateTimeModel> getDateTimeModel() {
		return dateTimeRepository.findAll();
	}

	/**
	 * 保存实体
	 *
	 * @param datetime
	 * @return
	 */
	@PostMapping("/postdatetime")
	public String postDateTimeMode(@RequestBody DateTimeModel datetime) {
		dateTimeRepository.save(datetime);
		return "Done!";
	}

	/**
	 * 获取两个日期之间的实体
	 *
	 * @param startdate
	 * @param enddate
	 * @return
	 */
	@GetMapping("/getallbydatetimebetween")
	public List<DateTimeModel> getAllByDatetimeBetween(
			@RequestParam("startdate") @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date startdate,
			@RequestParam("enddate") @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date enddate) {

		return dateTimeRepository.findAllByDatetimeBetween(startdate, enddate);
	}

	/**
	 * 获取指定日期时间之前的实体
	 *
	 * @param datetime
	 * @return
	 */
	@GetMapping("/getallwithdatetimebefore")
	public List<DateTimeModel> getAllWithDatetimeBefore(
			@RequestParam("datetime") @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date datetime) {

		return dateTimeRepository.findAllWithDatetimeBefore(datetime);
	}
}