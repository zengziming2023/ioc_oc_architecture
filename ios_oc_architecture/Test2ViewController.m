//
//  Test2ViewController.m
//  ios_oc_architecture
//
//  Created by ziming.zeng on 2/12/2024.
//

#import "Test2ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Test2 Page";
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *uiView = [UIView new];
    uiView.frame = CGRectMake(150, 150, 100, 100);
    uiView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:uiView];
    
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
