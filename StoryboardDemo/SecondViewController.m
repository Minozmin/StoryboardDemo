//
//  SecondViewController.m
//  StoryboardDemo
//
//  Created by Hehuimin on 2017/12/14.
//  Copyright © 2017年 haoshiqi. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@property (strong, nonatomic) IBOutlet UILabel *labelContent;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Second";
    self.labelContent.text = self.content;
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
- (IBAction)onClick:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ThirdViewController *thirdVC = [storyboard instantiateViewControllerWithIdentifier:@"ThirdViewController"];
    [self.navigationController showViewController:thirdVC sender:self];
}

@end
