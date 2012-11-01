//
//  ViewController.m
//  ObserverPattern
//
//  Created by tonyguan on 12-8-30.
//  Copyright (c) 2012年 tonyguan. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteSubject.h"
#import "ConcreteObserver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ConcreteSubject *subject = [ConcreteSubject sharedConcreteSubject];
    [subject notifyObservers];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
