//
//  Persion.m
//  reflectDemo329
//
//  Created by RM on 2022/3/29.
//成员变量编译过程中做的事情
//https://blog.csdn.net/weixin_38633659/article/details/124558733
#import "Persion.h"
#import <objc/runtime.h>

@implementation Persion
//typedef struct objc_property *objc_property_t;
//
//- (NSArray *) allProperties {
//    unsigned int count;
//    objc_property_t *properties = class_copyPropertyList([self class], &count);
//    NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
//    
//    for (NSUInteger i = 0; i < count ; i++ ) {
//        const char *propertyName = property_getName(properties[i]);
//        NSString *name = [NSString stringWithUTF8String: propertyName];
//        [propertiesArray addObject:name];
//        
//    }
//    
//    free(properties);
//    return propertiesArray;
//}
@end



