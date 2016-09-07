//
//  ViewController.m
//  16_09_07_UIScrollView
//
//  Created by 姚懿恒 on 16/9/7.
//  Copyright © 2016年 姚懿恒. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>{//设置缩放步骤2
    UIImageView *_bigImage;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.添加scrollView
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];

    //1.1添加已初始化的scrollView到控制器View中
    [self.view addSubview:scrollView];

    //2.为scrollView添加图片
    UIImage *image = [UIImage imageNamed:@"桌面.png"];
    _bigImage = [[UIImageView alloc] initWithImage:image];
    [scrollView addSubview:_bigImage];

    //3.设置scrollView的显示范围
    scrollView.contentSize = image.size;

    //4.设置scrollView的代理
    //设置缩放步骤1
    scrollView.delegate = self;

    //5.设置最大最小缩放值
    //设置缩放步骤4
    scrollView.maximumZoomScale = 2.0;
    scrollView.minimumZoomScale = 0.2;

}
#pragma mark 这个方法返回的控件就能进行捏合手势缩放操作
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{   //设置缩放步骤3
    return _bigImage;
}



@end
