//
//  ViewController.m
//  ios_oc_architecture
//
//  Created by ziming.zeng on 26/11/2024.
//

#import "ViewController.h"
#import "./TestViewController.h"

@interface ViewController () <UITabBarControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UILabel *label = [UILabel new];
//    label.text = @"Hello World!";
//    [label sizeToFit];
//    label.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//    
//    [self.view addSubview: label];
//    
//    
//    NSLog(@"first view controller.");
    
    UITabBarController *tabbarController = [UITabBarController new];
    
     
        
    
    UIViewController *controller1 = [TestViewController new];

//    controller1.view.backgroundColor = [UIColor redColor];
    controller1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"新闻" image:[UIImage systemImageNamed:@"house"] selectedImage:[UIImage systemImageNamed:@"house.fill"]];
    
    UIViewController *controller2 = [UIViewController new];
    controller2.view.backgroundColor = [UIColor greenColor];
    controller2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:[UIImage systemImageNamed:@"gear"] selectedImage:[UIImage systemImageNamed:@"gear.fill"]];
    
    UIViewController *controller3 = [UIViewController new];
    controller3.view.backgroundColor = [UIColor blueColor];
    controller3.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"推荐" image:[UIImage systemImageNamed:@"gear"] selectedImage:[UIImage systemImageNamed:@"gear.fill"]];
    
    UIViewController *controller4 = [UIViewController new];
    controller4.view.backgroundColor = [UIColor yellowColor];
    controller4.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"我的" image:[UIImage systemImageNamed:@"gear"] selectedImage:[UIImage systemImageNamed:@"gear.fill"]];
    
    [tabbarController setViewControllers:@[controller1, controller2, controller3, controller4]];
    
    tabbarController.tabBar.backgroundColor = [UIColor lightGrayColor];
    
    tabbarController.delegate = self;
    
    [self initWithRootViewController:tabbarController];

}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"select view controller: %@", viewController);
}



@end
