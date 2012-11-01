//
//  Subject.h
//  ObserverPattern
//
//  Created by tonyguan on 12-8-30.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

@class Observer;

@protocol Subject

@required
-(void)attach:(Observer*) observer;
-(void)detach:(Observer*) observer;
-(void)notifyObservers;


@end
