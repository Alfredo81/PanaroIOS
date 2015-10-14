//
//  ViewController.m
//  CalabashDemo
//
//  Created by Mattia Cantalù on 06/10/15.
//  Copyright © 2015 Mattia Cantalù. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pushMeBnt;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pushMeBnt.accessibilityLabel = @"button";
    self.textLabel.text = @"";
}

-(IBAction)pushedBtn:(id)sender {
    UIButton* btn = (UIButton*)sender;

    if (!btn.isSelected)
        self.textLabel.text = @"Well Done";
    else
        self.textLabel.text = @"";
    
    btn.selected = !btn.isSelected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
