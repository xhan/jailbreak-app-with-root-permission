//
//  ViewController.h
//  crackMe
//
//  Created by xhan on 9/27/12.
//  Copyright (c) 2012 xhan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
	Byte a;
	int16_t b;
	int32_t c;
	int64_t d;
}
@property (retain, nonatomic) IBOutlet UILabel *label;
- (IBAction)onValueAdd:(id)sender;
- (IBAction)onValueUpdate:(id)sender;
@end
