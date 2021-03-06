package com.gzxant.service.shop.order;

import com.gzxant.entity.shop.order.ShopOrder;
import com.gzxant.vo.shop.order.ShopOrderVo;
import com.gzxant.base.service.IBaseService;

/**
 * <p>
 * 商城-订单表 服务类
 * </p>
 *
 * @author xiaoyc
 * @since 2018-04-21
 */
public interface IShopOrderService extends IBaseService<ShopOrder> {

	void insert(ShopOrderVo param);
	
}
