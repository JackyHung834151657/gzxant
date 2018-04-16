package com.gzxant.editor.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gzxant.editor.service.EditorService;
import com.gzxant.enums.HttpCodeEnum;
import com.gzxant.exception.SlifeException;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author: felixu.
 * @createTime: 2017/11/26.
 */
@RestController
@RequestMapping("/service")
@Api(description = "设计器的前端控制器")
public class EditorController {

    @Autowired
    EditorService editorService;

    @ApiOperation(value = "获取设计器页面的json", notes = "获取设计器页面的json")
    @GetMapping("/editor/stencilset")
    public Object getStencilset() {
       return editorService.getStencilset();
    }

    @ApiOperation(value = "根据modelId获取model", notes = "根据modelId获取model")
    @GetMapping(value = "/model/{modelId}/json")
    public Object getEditorJson(@PathVariable(value ="modelId" )  String modelId) {
        Optional.ofNullable(modelId).orElseThrow(() -> new SlifeException(HttpCodeEnum.INVALID_REQUEST));
        return editorService.getEditorJson(modelId);
    }

    @ApiOperation(value = "保存model信息", notes = "保存model信息")
    @PutMapping("/model/{modelId}/save")
    public void saveModel(@PathVariable(value ="modelId" ) String modelId, String name, String description,
                          String json_xml, String svg_xml) {
        Optional.ofNullable(modelId).orElseThrow(() -> new SlifeException(HttpCodeEnum.INVALID_REQUEST));
        editorService.saveModel(modelId, name, description, json_xml, svg_xml);
    }
}
