//
//  TimeStampModel.h
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimeStampModel : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)NSDate *createdAt;
@end

NS_ASSUME_NONNULL_END
