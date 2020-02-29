//
//  Calculation.m
//  Calculator
//
//  Created by VirgilChan on 2020/2/7.
//  Copyright © 2020 VirgilChan. All rights reserved.
//

#import "Calculation.h"
#import "Calculation.hpp"

using namespace std;

@implementation Calculation
- (void)onInput:(NSString *)str {
    auto calc = Calculation_cpp::getInstance();
    calc->on_input([str UTF8String]);
}
- (NSString *)getScreenResult {
    auto calc = Calculation_cpp::getInstance();
    return [NSString stringWithCString:calc->get_screen_result().c_str()
                              encoding:[NSString defaultCStringEncoding]];
}
@end
