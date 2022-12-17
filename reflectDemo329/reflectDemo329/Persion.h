//
//  Persion.h
//  reflectDemo329
//
//  Created by RM on 2022/3/29.
//
//
#import <Foundation/Foundation.h>
//
NS_ASSUME_NONNULL_BEGIN
//
////@interface Persion : NSObject
////@property(nonatomic,copy) NSString * abaseClassString;
////@end
@interface Persion : NSObject
///** 姓名 */
@property (strong, nonatomic) NSString *name;
///** age */
@property (assign, nonatomic) int age;
///** weight */
@property (assign, nonatomic) double weight;

@end

NS_ASSUME_NONNULL_END


