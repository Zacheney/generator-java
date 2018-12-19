package com.zc.generator.base;

import java.io.File;
import java.io.IOException;

import cn.hutool.core.date.DateUtil;
import freemarker.template.Configuration;
import freemarker.template.Version;

public abstract class BaseGenerator {
	
	protected Configuration config;
	
	protected BaseGenerator() {
		try {
			this.config = new Configuration(new Version("2.3.23"));
			this.config
					.setDirectoryForTemplateLoading(new File(this.getClass().getResource(".").getPath() + "template"));
			System.out.println(DateUtil.now() + "==>>初始化完毕,开始生成代码");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

}
