//
//  BottomVC.m
//  CustomBottomSheet
//
//  Created by Saahil Gilani on 05/04/17.
//  Copyright © 2017 Saahil Gilani. All rights reserved.
//

#import "BottomVC.h"

@interface BottomVC ()

@end

@implementation BottomVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
    [self.view addGestureRecognizer:gesture];
}

- (void)viewWillAppear:(BOOL)animated{
    [self prepareBackgroundView];
}

- (void)viewDidAppear:(BOOL)animated{
    [UIView animateWithDuration:0.3 animations:^{
        self.view.frame = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareBackgroundView{
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *veffect = [[UIVisualEffectView alloc] initWithEffect:effect];
    UIVisualEffectView *blurrView = [[UIVisualEffectView alloc] initWithEffect:effect];
    [blurrView.contentView addSubview:veffect];
    
    veffect.frame = [UIScreen mainScreen].bounds;
    blurrView.frame = [UIScreen mainScreen].bounds;
    
    [self.view insertSubview:blurrView atIndex:0];
}

- (void)panGesture:(UIPanGestureRecognizer *)gesture{
    CGPoint x;
    x = [gesture translationInView:self.view];
    self.view.frame = CGRectMake(0,self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    [gesture setTranslation:CGPointZero inView:self.view];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
