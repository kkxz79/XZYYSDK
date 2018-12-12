//
//  BookModel.h
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYModel.h"


NS_ASSUME_NONNULL_BEGIN

@interface BookModel : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSUInteger page;
@property(nonatomic,copy)NSString *desc;
@property(nonatomic,copy)NSString *bookID;
@end

NS_ASSUME_NONNULL_END
