//
//  Student.h
//  iOS_property详解
//
//  Created by 李小龙 on 2019/6/4.
//  Copyright © 2019 李小龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (atomic,copy) NSString *name;
@property (nonatomic,copy) NSString *sex;

@end

NS_ASSUME_NONNULL_END
