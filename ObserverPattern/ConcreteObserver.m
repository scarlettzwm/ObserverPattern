//
//  ConcreteObserver.m
//  ObserverPattern
//
//  Created by tonyguan on 12-8-30.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "ConcreteObserver.h"

@implementation ConcreteObserver

-(void)update
{
    NSLog(@"ConcreteObserver : %@",self);
}

@end
