//
//  main.m
//  reflectDemo329
//
//  Created by RM on 2022/3/29.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Class currentClass=NSClassFromString(@"Persion");
        
         id object=[[currentClass alloc] init];
         NSString *key=nil;
         do{
             NSLog(@"------------------Class is %@-----------------",currentClass);
             NSLog(@"Class pointer %p",currentClass);
             unsigned int count;

             
             objc_property_t *properties = class_copyPropertyList(currentClass, &count);
             NSMutableArray *propertiesArray = [NSMutableArray arrayWithCapacity:count];
             
             for (NSUInteger i = 0; i < count ; i++ ) {
                 const char *propertyName = property_getName(properties[i]);
                 NSString *name = [NSString stringWithUTF8String: propertyName];
                 [propertiesArray addObject:name];
                 NSLog(@"variable_value :%@",name);
                 
             }
             
             free(properties);
             return propertiesArray;
           
//             方法2:
//             https://www.jianshu.com/p/1a03524d6668
//             Ivar *vars = class_copyIvarList(currentClass, &count);
//             unsigned int i = 0;
//             for (; i < numIvars; i++) {
//                 Ivar thisIvar = vars[i];
//                 key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
//                 NSLog(@"variable_name :%@", key);
//                 id value = [object valueForKey:key];
//                 NSLog(@"variable_value :%@",value);
//                 if([key isEqualToString:@"isa"]){
//                     NSLog(@"Class pointer %p",value);
//                 }
//             }
             
//             free(vars);
//             currentClass = class_getSuperclass(currentClass);
             
             
         }while(currentClass);
    }
    return 0;
    
}


