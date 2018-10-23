//
//  ViewController.m
//  CustomBottomSheet
//
//  Created by Saahil Gilani on 05/04/17.
//  Copyright © 2017 Saahil Gilani. All rights reserved.
//

#import "ViewController.h"
#import "BottomVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addBottomSheet{
    BottomVC *vc = [[BottomVC alloc] init];
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
    [vc didMoveToParentViewController:self];
    
    vc.view.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
}
- (IBAction)buttonClick:(id)sender {
    [self addBottomSheet];
}

@end
