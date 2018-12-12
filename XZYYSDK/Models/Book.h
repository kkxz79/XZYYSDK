//
//  Book.h
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnthorModel.h"
#import "YYModel.h"

NS_ASSUME_NONNULL_BEGIN
//Model中包含其他Model,什么都不用做，转换会自动完成
@interface Book : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSUInteger pages;
@property(nonatomic,strong)AnthorModel * author;//Book 包含Author属性
@end

NS_ASSUME_NONNULL_END
