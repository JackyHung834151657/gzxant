/**
 * Copyright (c) 2011-2020, hubin (jobob@qq.com).
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package com.baomidou.mybatisplus.plugins.tenancy.handler;

import java.util.Properties;

/**
 * <p>
 * 租户信息处理器
 * </p>
 *
 * @author hubin
 * @since 2017-06-20
 */
public interface TenancyHandler {

    /**
     * <p>
     * 配置设置
     * </p>
     *
     * @param properties mybatis Interceptor setProperties
     */
    void setConfig(Properties properties);

    /**
     * <p>
     * 按照表名处理
     * </p>
     *
     * @param table 表名
     * @return true 执行，false 不执行
     */
    boolean doTable(String table);


    /**
     * <p>
     * 按照statementId处理
     * </p>
     *
     * @param statementId mybatis statementId
     * @return true 执行，false 不执行
     */
    boolean doStatement(String statementId);

}
