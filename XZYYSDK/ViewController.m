//
//  ViewController.m
//  XZYYSDK
//
//  Created by kkxz on 2018/12/8.
//  Copyright © 2018 kkxz. All rights reserved.
//

#import "ViewController.h"
#import "UserModel.h"
#import "Book.h"
#import "BookModel.h"
#import "ContainerModel.h"
#import "BlackAndWhiteListModel.h"
#import "TimeStampModel.h"
#import "XZBook.h"

@interface ViewController ()
@property(nonatomic,assign)NSInteger modeType;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _modeType = 2;
    switch (_modeType) {
        case 1:
        {
            [self originalJsonModelConvert];//原始json数据转换
        }
            break;
        case 2:
        {
            [self simpleModelJsonModelConvert];//简单的数模转换
        }
            break;
        case 3:
        {
            [self containModelJsonModelConvert];//model中包含其他model
        }
            break;
        case 4:
        {
            [self differentJsonKeyModelConvert];//Model属性名和JSON中key不相同
        }
            break;
        case 5:
        {
            [self containerJsonModelConvert];//容器类属性
        }
            break;
        case 6:
        {
            [self blackAndWhiteListModelConvert];//白名单和黑名单
        }
            break;
        case 7:
        {
            [self timestamp];//数据校验与自定义转换
        }
            break;
        default:
            break;
    }
    
}

#pragma JsonModel
//TODO:读取本地json数据
-(NSDictionary*)getJsonDataWithFileName:(NSString*)fileName {
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
}

//TODO：原始json数据转换
-(void)originalJsonModelConvert {
    NSString * jsonStr = @"{\"name\": \"Harry Potter\", \"pages\": 256, \"author\": {\"name\": \"J.K.Rowling\", \"birthday\": \"1965-07-31\" }}";
    XZBook * book = [XZBook yy_modelWithJSON:jsonStr];
    NSLog(@"original book：\n%@\n%@\n%@",book.name,book.author.name,book.author.birthday);
}

//TODO:简单的数模互转
-(void)simpleModelJsonModelConvert {
    NSDictionary *jsonDict = [self getJsonDataWithFileName:@"SimpleModel"];
    // 将 JSON (NSData,NSString,NSDictionary) 转换为 Model
    UserModel *userModel = [UserModel yy_modelWithJSON:jsonDict];
    NSLog(@"userModel：\n%llu\n%@\n%@",userModel.uid,userModel.name,userModel.created);
    
    //将model转换为json对象
    NSDictionary *jsonConvert = [userModel yy_modelToJSONObject];
    NSLog(@"jsonConvert：\n%@",jsonConvert);
}

//TODO:Model中包含其他Model的场景
-(void)containModelJsonModelConvert {
    NSDictionary *json = [self getJsonDataWithFileName:@"DoubleModel"];
    
    //json 转 model
    Book *book = [Book yy_modelWithJSON:json];
    NSLog(@"Book：\n%@ \n%@",book.name,book.author.name);
    
    //model 转 json
    NSDictionary *jsonDict = [book yy_modelToJSONObject];
    NSLog(@"jsonDict：%@",jsonDict);
}

//TODO:Model属性名和JSON中的key不相同
-(void)differentJsonKeyModelConvert {
    NSDictionary *json = [self getJsonDataWithFileName:@"DifferentJSONKey"];
    
    //json 转 model
    BookModel *bookModel = [BookModel yy_modelWithJSON:json];
    NSLog(@"BookModel：\n%@ \n%@ \n%@",bookModel.name,bookModel.desc,bookModel.bookID);
    
    //model 转 json
    NSDictionary *jsonDict = [bookModel yy_modelToJSONObject];
    NSLog(@"jsonDict：%@",jsonDict);
}

//TODO:容器类属性
-(void)containerJsonModelConvert {
    NSDictionary *json = [self getJsonDataWithFileName:@"ContainerModel"];
    ContainerModel * containerModel = [ContainerModel yy_modelWithJSON:json];
    NSLog(@"msg:%@",containerModel.msg);
    
    XZContent *content = containerModel.content;
    XZShopInfo *shopInfo = content.shopInfo;
    NSLog(@"shopInfo:%d %@",shopInfo.isBusiness,shopInfo.businessDesc);
    
    NSArray *commodityList = content.commodityList;
    XZProductListModel *productListModel = commodityList.lastObject;//commodityList.firstObject;
    NSLog(@"kindName：%@ kindDesc：%@",productListModel.kindName,productListModel.kindDesc);
    
    NSArray *productList = productListModel.productList;
    XZSingleProductModel *singleProductModel = productList.lastObject;//productList.firstObject;
    NSLog(@"name：%@ enName：%@ maxAmount：%ld",singleProductModel.name,singleProductModel.enName,singleProductModel.maxAmount);
    
    NSArray *standardList = singleProductModel.standard;
    XZStandard *standardModel = standardList.lastObject;//standardList.firstObject;
    NSLog(@"name：%@ maxAmount：%ld",standardModel.name,standardModel.maxAmount);
    
}

//TODO:白名单与黑名单
-(void)blackAndWhiteListModelConvert {
    NSDictionary *json = [self getJsonDataWithFileName:@"BlacklistAndWhitelist"];
    //json 转 model
    BlackAndWhiteListModel * listModel = [BlackAndWhiteListModel yy_modelWithJSON:json];
    NSLog(@"name：%@ age：%ld",listModel.name,listModel.age);
    //model 转 json
    NSDictionary *jsonDict = [listModel yy_modelToJSONObject];
    NSLog(@"jsonDict：%@",jsonDict);
}

//TODO:数据校验与自定义转换
-(void)timestamp {
    NSDictionary *json = [self getJsonDataWithFileName:@"timestamp"];
    //json 转 model
    TimeStampModel *timestamp = [TimeStampModel yy_modelWithJSON:json];
    NSLog(@"name：%@ createdAt：%@",timestamp.name,timestamp.createdAt);
    //model 转 json
    NSDictionary *jsonDict = [timestamp yy_modelToJSONObject];
    NSLog(@"jsonDict：%@",jsonDict);
}

@end
