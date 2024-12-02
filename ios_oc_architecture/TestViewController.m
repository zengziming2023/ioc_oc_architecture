//
//  TestViewController.m
//  ios_oc_architecture
//
//  Created by ziming.zeng on 2/12/2024.
//

#import "TestViewController.h"
#import "Test2ViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *uiView = [UIView new];
    uiView.frame = CGRectMake(150, 150, 100, 100);
    uiView.backgroundColor = [UIColor greenColor];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    [uiView addGestureRecognizer:tapGesture];
    
    [self.view addSubview:uiView];
    
}

-(void)pushController {
    NSLog(@"push Controller...");
    [self.navigationController pushViewController:[Test2ViewController new] animated:YES];
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
