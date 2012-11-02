//
//  ConcreteSubject.m
//  ObserverPattern
//
//  Created by tonyguan on 12-8-30.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

//zzr 修改

#import "ConcreteSubject.h"

@implementation ConcreteSubject

@synthesize observers;

static ConcreteSubject *sharedConcreteSubject = nil;

+(ConcreteSubject*)sharedConcreteSubject
{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedConcreteSubject = [[self alloc] init];
        sharedConcreteSubject.observers = [[NSMutableArray alloc] init];
    });
    return sharedConcreteSubject;
}


-(void)attach:(Observer*) observer
{
    [self.observers addObject:observer];
}

-(void)detach:(Observer*) observer
{
    [self.observers removeObject:observer];
}

-(void)notifyObservers
{
    for (id obs in self.observers)
    {
       [obs update];
    }
}

@end
