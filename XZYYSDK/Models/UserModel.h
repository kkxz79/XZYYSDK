//
//  UserModel.h
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserModel : NSObject
@property(nonatomic,assign)UInt64 uid;
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSDate * created;

@end

NS_ASSUME_NONNULL_END
