//
//  BookModel.m
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import "BookModel.h"

@implementation BookModel
//返回一个 Dict，将 Model 属性名对映射到 JSON 的 Key。
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"name":@"n",
                @"page":@"p",
                @"desc":@"ext.desc",
                @"bookID":@[@"id",@"ID",@"book_id"]};
}
@end
