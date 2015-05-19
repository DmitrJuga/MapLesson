//
//  DDUModel.m
//  MapLesson
//
//  Created by DmitrJuga on 16.05.15.
//  Copyright (c) 2015 Dmitriy Dolotenko. All rights reserved.
//

#import "DDUModel.h"

@implementation DDUModel

+ (DDUModel *)sharedModel {

    static DDUModel *singleton = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[self alloc]init];
    });
    
    return singleton;
}

- (instancetype)init {
    
    self = [super init];
    if (self) {
        self.arrayPoints = [[NSMutableArray alloc] init];
    }
    return self;
}
@end
