//
//  XZShadow.m
//  XZYYSDK
//
//  Created by kkxz on 2018/12/12.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import "XZShadow.h"

@implementation XZShadow
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    return [self yy_modelInitWithCoder:aDecoder];
}

-(id)copyWithZone:(NSZone *)zone {
    return [self yy_modelCopy];
}

-(NSUInteger)hash {
    return [self yy_modelHash];
}

-(BOOL)isEqual:(id)object {
    return [self yy_modelIsEqual:object];
}

-(NSString *)description {
    return [self yy_modelDescription];
}


@end
