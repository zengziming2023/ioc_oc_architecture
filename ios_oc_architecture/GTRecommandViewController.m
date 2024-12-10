//
//  GTRecommandViewController.m
//  ios_oc_architecture
//
//  Created by ziming.zeng on 10/12/2024.
//

#import "GTRecommandViewController.h"

@interface GTRecommandViewController ()<UIScrollViewDelegate>

@end

@implementation GTRecommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    scrollView.backgroundColor = [UIColor lightGrayColor];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 5, self.view.frame.size.height);
    
    NSArray *colorArray = @[[UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor yellowColor], [UIColor grayColor]];
    
    for (int i = 0; i<5; i++) {
        [scrollView addSubview:({
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.frame.size.width * i, 0, scrollView.frame.size.width, scrollView.frame.size.height)];
            view.backgroundColor = [colorArray objectAtIndex:i];
            view;
        })];
    }
    
//    scrollView.pagingEnabled = true;
    scrollView.showsVerticalScrollIndicator = false;
    scrollView.showsHorizontalScrollIndicator = false;
    
    scrollView.delegate = self;
    
    [self.view addSubview:scrollView];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    NSLog(@"scrollViewDidScroll: %@", @(scrollView.contentOffset.x));
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0)) {
    
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    
}


@end
