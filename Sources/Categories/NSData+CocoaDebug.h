//
//  CocoaDebug.swift
//  demo
//
//  Created by liman on 26/11/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (CocoaDebug)

+ (NSData *)cocoaDebug_dataWithInputStream:(NSInputStream *)stream;

@end