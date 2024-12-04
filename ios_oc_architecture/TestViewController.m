//
//  TestViewController.m
//  ios_oc_architecture
//
//  Created by ziming.zeng on 2/12/2024.
//

#import "TestViewController.h"
#import "Test2ViewController.h"

@interface TestViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIView *uiView = [UIView new];
//    uiView.frame = CGRectMake(150, 150, 100, 100);
//    uiView.backgroundColor = [UIColor greenColor];
//    
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
//    [uiView addGestureRecognizer:tapGesture];
//    
//    [self.view addSubview:uiView];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [self.view addSubview:tableView];
    
}

-(void)pushController {
    NSLog(@"push Controller...");
    [self.navigationController pushViewController:[Test2ViewController new] animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!tableViewCell){
        tableViewCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"id"];
    }
    tableViewCell.textLabel.text = [NSString stringWithFormat:@"主标题 - %@", @(indexPath.row)];
    tableViewCell.imageView.image = [UIImage systemImageNamed:@"house"];
    
    return tableViewCell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        return 100;
    } else {
        return 50;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog([NSString stringWithFormat:@"主标题 - %@", @(indexPath.row)]);
    UIViewController *controller = [UIViewController new];
    controller.title = [NSString stringWithFormat:@"%@", @(indexPath.row)];
    controller.view.backgroundColor = [UIColor whiteColor];
    
    [self.navigationController pushViewController:controller animated:YES];
    
    
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
