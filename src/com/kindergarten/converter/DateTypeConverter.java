package com.kindergarten.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * 日期类型转换器
 * @author hp
 *
 */
public class DateTypeConverter implements Converter<String,Date> {

	@Override
	public Date convert(String source) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd");
		Date date=null;
		if(source!=null&&!"".equals(source))
		{
			try {
				date=sdf.parse(source);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		return date;
	}

	
}
