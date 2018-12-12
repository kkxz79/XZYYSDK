//
//  ContainerModel.m
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import "ContainerModel.h"
#import "YYModel.h"

@implementation ContainerModel

@end

@implementation XZContent
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"commodityList" : [XZProductListModel class]};
}
@end

@implementation XZShopInfo

@end

@implementation XZProductListModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"productList" : [XZSingleProductModel class]};
}
@end

@implementation XZSingleProductModel
// 返回容器类中的所需要存放的数据类型 (以 Class 或 Class Name 的形式)。
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"standard" : [XZStandard class]};
}
@end

@implementation XZStandard

@end
