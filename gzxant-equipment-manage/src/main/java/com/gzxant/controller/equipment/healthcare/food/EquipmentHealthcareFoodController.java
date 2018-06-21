package com.gzxant.controller.equipment.healthcare.food;

import java.util.List;

import com.gzxant.entity.equipment.country.food.safety.EquipmentCountryFoodSafety;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.util.TextUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gzxant.annotation.SLog;
import com.gzxant.base.entity.ReturnDTO;
import com.gzxant.base.vo.DataTable;
import com.gzxant.service.equipment.healthcare.food.IEquipmentHealthcareFoodService;
import com.gzxant.entity.equipment.healthcare.food.EquipmentHealthcareFood;
import com.gzxant.util.ReturnDTOUtil;
import com.gzxant.base.controller.BaseController;

import io.swagger.annotations.ApiOperation;

/**
 * <p>
 * 国家保健食品安全监督抽检 前端控制器
 * </p>
 *
 * @author mojinsheng
 * @since 2018-06-16
 */
@Controller
@RequestMapping("/healthcare_food")
public class EquipmentHealthcareFoodController extends BaseController {
	@Autowired
	private IEquipmentHealthcareFoodService equipmentHealthcareFoodService;

	@ApiOperation(value = "进入国家保健食品安全监督抽检列表界面", notes = "进入国家保健食品安全监督抽检列表界面")
	@GetMapping(value = "")
	public String list(Model model) {
		return "/equipment/sampling/healthcare_food/list";
	}


    @ApiOperation(value = "进入国家保健食品安全监督抽检编辑界面\", notes = \"进入国家保健食品安全监督抽检编辑界面")
    @GetMapping(value = "/{action}/{id}")
    public String update(@PathVariable("action") String action,@PathVariable("id") String id, Model model) {
        if (TextUtils.isEmpty(id)||TextUtils.isEmpty(action)){
            if (StringUtils.isBlank(id)) {
                return "redirect:/healthcare_food";
            }
        }
        EquipmentHealthcareFood equipmentHealthcareFood = equipmentHealthcareFoodService.selectById(id);
        model.addAttribute("action", action);
        //model.addAttribute("foodType", dictService.getDictTree("FOOD_TYPE"));
        model.addAttribute("equipmentHealthcareFood", equipmentHealthcareFood);
        return "/equipment/sampling/healthcare_food/"+action;
    }

	@ApiOperation(value = "进入国家食品安全监督抽检(合格)编辑界面", notes = "进入国家食品安全监督抽检(合格)编辑界面")
	@GetMapping(value = "/insert")
	public String importDate(Model model) {
		model.addAttribute("action", "import");
		return "/equipment/sampling/healthcare_food/import";
	}

	@ApiOperation(value = "获取国家保健食品安全监督抽检列表数据", notes = "获取国家保健食品安全监督抽检列表数据:使用约定的DataTable")
	@PostMapping(value = "/list")
	@ResponseBody
	public DataTable<EquipmentHealthcareFood> list(@RequestBody DataTable<EquipmentHealthcareFood> dt) {
		return equipmentHealthcareFoodService.pageSearch(dt);
	}

	@ApiOperation(value = "添加国家保健食品安全监督抽检", notes = "添加国家保健食品安全监督抽检")
	@PostMapping(value = "/import")
	@ResponseBody
	public ReturnDTO create(EquipmentHealthcareFood param) {
		if (param == null) {
			return ReturnDTOUtil.paramError();
		}
		equipmentHealthcareFoodService.insert(param);
		return ReturnDTOUtil.success();
	}

	@ApiOperation(value = "编辑国家保健食品安全监督抽检", notes = "编辑国家保健食品安全监督抽检")
	@PostMapping(value = "/update")
	@ResponseBody
	public ReturnDTO update(EquipmentHealthcareFood param) {
		if (param == null) {
			return ReturnDTOUtil.paramError();
		}
		equipmentHealthcareFoodService.updateById(param);
		return ReturnDTOUtil.success();
	}

	@SLog("批量删除国家保健食品安全监督抽检")
	@ApiOperation(value = "批量删除国家保健食品安全监督抽检", notes = "批量删除国家保健食品安全监督抽检")
	@PostMapping(value = "/delete")
	@ResponseBody
	public ReturnDTO delete(@RequestParam("ids") List<Long> ids) {
		if (ids == null) {
			return ReturnDTOUtil.paramError();
		}
		boolean success = equipmentHealthcareFoodService.deleteBatchIds(ids);
		if (success) {
			return ReturnDTOUtil.success();
		}
		return ReturnDTOUtil.fail();
	}
}
