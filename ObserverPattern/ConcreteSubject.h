//
//  ConcreteSubject.h
//  ObserverPattern
//
//  Created by tonyguan on 12-8-30.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//
#import "Subject.h"

@class Observer;

@interface ConcreteSubject : NSObject <Subject>
{
    NSMutableArray* observers;
}

@property (nonatomic ,strong) NSMutableArray* observers;

+(ConcreteSubject*)sharedConcreteSubject;

@end
