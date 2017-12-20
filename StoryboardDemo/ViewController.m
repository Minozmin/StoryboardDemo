//
//  ViewController.m
//  StoryboardDemo
//
//  Created by Hehuimin on 2017/12/14.
//  Copyright © 2017年 haoshiqi. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textFieldContent;

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

// 通过segue传参
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"FirstSegue"]) {
        FirstViewController *firstVC = segue.destinationViewController;
        firstVC.content = self.textFieldContent.text;
    }else if ([segue.identifier isEqualToString:@"SecondSegue"]) {
        SecondViewController *secondVC = segue.destinationViewController;
        secondVC.content = self.textFieldContent.text;
    }
}

@end
