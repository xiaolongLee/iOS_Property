//
//  main.m
//  iOS_property详解
//
//  Created by 李小龙 on 2019/6/4.
//  Copyright © 2019 李小龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Student *stu = [Student new];
        stu.name = @"aaa";
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            for (int i=0; i<1000; ++i) {
                NSLog(@"stu.name = %@",stu.name);
            }
        });
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            stu.name = @"bbb";
        });
        
    }
    return 0;
}
