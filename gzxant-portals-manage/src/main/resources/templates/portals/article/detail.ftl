<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <form class="form-horizontal form-bordered" id="gzxantForm">
                <input type="hidden" name="id" value="${portalsArticles.id}" />
                <input type="hidden" name="id" value="${portalsColumn.id}" />
                <div class="form-group">
                    <label class="col-sm-3 control-label">官网文章标题<span class="required">*</span></label>
                    <div class="col-sm-3">
                    	<input type="text" class="form-control" name="title" placeholder="请输入官网文章标题"
                               value="${portalsArticles.title}" required aria-required="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">官网文章内容<span class="required">*</span></label>
                    <div class="col-sm-9">
                                    <textarea name="aboutMeContent" type="text" class="form-control"
                                              placeholder="请输入官网文章内容">${portalsArticles.content}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">栏目<span class="required">*</span></label>


                    <div class="col-sm-3">
                        <select name="columnId" class="form-control">
                             <#list portalsColumn as pc>
                                 <option value="${pc.id}">${pc.columnName}</option>
                             </#list>
                        </select>
                    </div>

                </div>


                <div class="form-group">
                    <label class="col-sm-3 control-label">官网文章类型<span class="required">*</span></label>
                    <div class="col-sm-3">
                    	<input type="text" class="form-control" name="type" placeholder="请输入官网文章官网文章类型"
                               value="${portalsArticles.type}" required aria-required="true"/>
                    </div>
                </div>


            	<#if action != 'detail'>
                <div class="form-actions fluid">
                    <div class="col-sm-12">
                        <button type="button" onclick="saveForm()" class="btn btn-success btn-block m-t-25">保存</button>
                    </div>
                </div>
            	</#if>
            </form>

		</div>
	</div>
</div>


<script type="text/javascript">
	action = "${action}";
    function  cusFunction() {
        //console.info("提交之前，最后执行自定义的函数");
    }

  	// --------------------------错误图片的默认处理-------------------------------------------------- //
    function errimg() {
        $("#photo").val("${rc.contextPath}/img/log9.png");
        $("#imgshowdiv").attr('src', "${rc.contextPath}/img/log9.png");
    }

    // --------------------------form表单验证-------------------------------------------------- //
    var form = $('#gzxantForm');
    var error = $('.alert-danger', form);
    form.validate({
        errorElement: 'span',
        errorClass: 'error',
        focusInvalid: true,
        rules: {
        	parentId: {
                required: true,
            },
            name: {
                required: true
            }
        }
    });

</script>