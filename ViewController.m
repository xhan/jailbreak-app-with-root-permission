//
//  ViewController.m
//  crackMe
//
//  Created by xhan on 9/27/12.
//  Copyright (c) 2012 xhan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label = _label;

- (void)viewDidLoad
{
	self.view.backgroundColor = [UIColor grayColor];
	
	_label = [[UILabel alloc] initWithFrame:(CGRect){{20,20},{60,20}}];
	[self.view addSubview:self.label];
    {
        UIButton*btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = (CGRect){{20,80},{44,44}};
        [btn setTitle:@"+" forState:0];
        [btn addTarget:self
                action:@selector(onValueAdd:)
      forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    {
        UIButton*btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = (CGRect){{70,80},{44,44}};
        [btn setTitle:@"=" forState:0];
        [btn addTarget:self
                action:@selector(onValueUpdate:)
      forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
	
	
    [super viewDidLoad];
    a=10;
	b=100;
	c=1000;
	d=10000;
	// Do any additional setup after loading the view, typically from a nib.
    [self onValueUpdate:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_label release];
    [super dealloc];
}
- (IBAction)onValueAdd:(id)sender {
    a += 1;
	b += 10;
	c += 100;
	d += 1000;
    [self onValueUpdate:nil];
}

- (IBAction)onValueUpdate:(id)sender {
    self.label.text = [NSString stringWithFormat:@"%d",a];
}
@end
