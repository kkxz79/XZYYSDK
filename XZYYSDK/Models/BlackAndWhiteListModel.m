//
//  BlackAndWhiteListModel.m
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import "BlackAndWhiteListModel.h"

@implementation BlackAndWhiteListModel
// 如果实现了该方法，则处理过程中会忽略该列表内的所有属性
+ (NSArray *)modelPropertyBlacklist {
    return @[@"age",@"name"];
}
// 如果实现了该方法，则处理过程中不会处理该列表外的属性。
//+ (NSArray *)modelPropertyWhitelist {
//    return @[@"name"];
//}
@end
