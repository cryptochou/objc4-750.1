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
        Class someClass = objc_allocateClassPair(suprerClass, "someClass", 0);
        objc_registerClassPair(someClass);
        id someInstance = [[someClass alloc] init];
        NSLog(@"%@", someInstance);
    }
    return 0;
}
