//
//  main.m
//  test
//
//  Created by zhouke on 2019/2/22.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class suprerClass = [NSObject class];
        Class DynamicClass = objc_allocateClassPair(suprerClass, "DynamicClass", 0);
        objc_registerClassPair(DynamicClass);
        id dynamicInstance = [[DynamicClass alloc] init];
        NSLog(@"%@", dynamicInstance);
    }
    return 0;
}
