//
//  MainController.m
//  生成&扫描二维码
//
//  Created by Mr.Q on 16/6/22.
//  Copyright © 2016年 QLS. All rights reserved.
//

#import "MainController.h"
#import "SetController.h"
#import "ScanController.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];

    self.navigationBackgroundColor = [UIColor brownColor];

    ScanController *scanVC = [ScanController new];
    SetController *setVC = [SetController new];

    self.childControllerAndIconArr = @[

                                       @{
                                           VC_VIEWCONTROLLER :setVC,
                                           NORMAL_ICON : @"code",
                                           SELECTED_ICON : @"code_selected",
                                           },
                                       @{
                                           VC_VIEWCONTROLLER :scanVC,
                                           NORMAL_ICON : @"scan",
                                           SELECTED_ICON : @"scan_selected",
                                           },
                                  ];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
