package com.shudailaoshi.web.controller.${moduleName};

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shudailaoshi.entity.${moduleName}.${entityName};
import com.shudailaoshi.pojo.query.${moduleName}.${entityName}Query;
import com.shudailaoshi.pojo.annotation.Comment;
import com.shudailaoshi.pojo.vos.common.ResultVO;
import com.shudailaoshi.service.${moduleName}.${entityName}Service;
import com.shudailaoshi.web.controller.base.BaseController;
import com.shudailaoshi.web.utils.ResultUtil;

@RequestMapping("${moduleName}/${packageName}")
@RestController
public class ${entityName}Controller extends BaseController {

	@Autowired
	private ${entityName}Service ${packageName}Service;

	/**
	 * 查询${serviceName}
 	 * 
	 * @createAuthor ${generatorName}
	 * @createDate ${currentDate}
	 * @modifyAuthor ${generatorName}
	 * @modifyDate ${currentDate}
 	 * @param ${packageName}Query
	 * @param start
	 * @param limit
	 * @return
	 */
	@GetMapping("page${entityName}")
	public ResultVO page${entityName}(${entityName}Query ${packageName}Query, Integer start, Integer limit) {
		try {
			return ResultUtil.success(this.${packageName}Service.page${entityName}(${packageName}Query, start, limit));
		} catch (Exception e) {
			return ResultUtil.error(log, e);
		}
	}

	/**
	 * 新增${serviceName}
	 * 
	 * @createAuthor ${generatorName}
	 * @createDate ${currentDate}
	 * @modifyAuthor ${generatorName}
	 * @modifyDate ${currentDate}
	 * @param ${packageName}
	 * @return
	 */
	@Comment("新增${serviceName}")
	@PostMapping("save${entityName}")
	public ResultVO save${entityName}(${entityName} ${packageName}) {
		try {
			this.${packageName}Service.save${entityName}(${packageName});
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(log, e);
		}
	}
	
	/**
	 * 更新${serviceName}
	 * 
	 * @createAuthor ${generatorName}
	 * @createDate ${currentDate}
	 * @modifyAuthor ${generatorName}
	 * @modifyDate ${currentDate}
	 * @param ${packageName}
	 * @return
	 */
	@Comment("更新${serviceName}")
	@PostMapping("update${entityName}")
	public ResultVO update${entityName}(${entityName} ${packageName}) {
		try {
			this.${packageName}Service.update${entityName}(${packageName});
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(log, e);
		}
	}

	/**
	 * 删除${serviceName}
	 * 
	 * @createAuthor ${generatorName}
	 * @createDate ${currentDate}
	 * @modifyAuthor ${generatorName}
	 * @modifyDate ${currentDate}
	 * @param id
	 * @return
	 */
	@Comment("删除${serviceName}")
	@PostMapping("remove${entityName}")
	public ResultVO remove${entityName}(long id) {
		try {
			this.${packageName}Service.remove${entityName}(id);
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(log, e);
		}
	}

	/**
	 * 冻结
	 * 
	 * @createAuthor ${generatorName}
	 * @createDate ${currentDate}
	 * @modifyAuthor ${generatorName}
	 * @modifyDate ${currentDate}
	 * @param id
	 * @return
	 */
	@Comment("冻结${serviceName}")
	@PostMapping("freeze")
	public ResultVO freeze(long id) {
		try {
			this.${packageName}Service.freeze(id);
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(log, e);
		}
	}

	/**
	 * 解冻${serviceName}
	 * 
	 * @createAuthor ${generatorName}
	 * @createDate ${currentDate}
	 * @modifyAuthor ${generatorName}
	 * @modifyDate ${currentDate}
	 * @param id
	 * @return
	 */
	@Comment("解冻${serviceName}")
	@PostMapping("unfreeze")
	public ResultVO unfreeze(long id) {
		try {
			this.${packageName}Service.unfreeze(id);
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(log, e);
		}
	}

}