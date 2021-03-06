//
//  PGTextField.m
//  Pegasus
//
//  Copyright 2012 Jonathan Ellis
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "PGTextField.h"

@implementation PGTextField

+ (id)internalViewWithAttributes:(NSDictionary *)attributes {
    return [[UITextField alloc] init];
}

+ (NSString *)name {
    return @"textfield";
}

+ (NSDictionary *)properties {
    
    NSMutableDictionary *properties = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                      @"NSString", @"text", 
                                      @"NSString", @"placeholder",
                                      @"UIFont", @"font", 
                                      @"UIColor", @"textColor",
                                      @"UITextAlignment", @"textAlignment", 
                                      @"BOOL", @"adjustsFontSizeToFitWidth",
                                      @"float", @"minimumFontSize", 
                                      @"BOOL", @"editing",
                                      @"UITextBorderStyle", @"borderStyle", 
                                      @"UITextFieldViewMode", @"clearButtonMode",
                                      @"UIImage", @"disabledBackground",
                                      nil];
    
    [properties addEntriesFromDictionary:[PGView properties]];
    
    return properties;
}


@end