//
//  ContainerModel.h
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"

NS_ASSUME_NONNULL_BEGIN
@class XZContent,XZShopInfo,XZProductListModel,XZSingleProductModel,XZStandard;
@interface ContainerModel : NSObject
@property(nonatomic,strong)XZContent * content;
@property(nonatomic,copy)NSString *msg;
@end

@interface XZContent : NSObject
@property(nonatomic,strong)XZShopInfo *shopInfo;
@property(nonatomic,strong)NSArray<XZProductListModel*> *commodityList;
@end

@interface XZShopInfo : NSObject
@property(nonatomic,assign)BOOL isBusiness;
@property(nonatomic,copy)NSString *businessDesc;
@end

@interface XZProductListModel : NSObject
@property(nonatomic,assign)NSInteger sortId;
@property(nonatomic,copy)NSString *kindDesc;
@property(nonatomic,copy)NSString *kindName;
@property(nonatomic,strong)NSArray<XZSingleProductModel*> *productList;
@end

@interface XZSingleProductModel : NSObject
@property(nonatomic,copy)NSString *productId;
@property(nonatomic,copy)NSString *coffeeLabel;
@property(nonatomic,copy)NSString *enName;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger maxAmount;
@property(nonatomic,strong)NSArray<XZStandard*> *standard;
@end

@interface XZStandard : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSUInteger maxAmount;
@end

NS_ASSUME_NONNULL_END
