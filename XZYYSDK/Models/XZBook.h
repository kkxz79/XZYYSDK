//
//  XZBook.h
//  XZYYSDK
//
//  Created by kkxz on 2018/12/13.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XZAuthor.h"

NS_ASSUME_NONNULL_BEGIN

@interface XZBook : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSUInteger pages;
@property(nonatomic,strong)XZAuthor *author;
@end

NS_ASSUME_NONNULL_END
