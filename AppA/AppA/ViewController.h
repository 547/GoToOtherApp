//
//  ViewController.h
//  AppA
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)B:(id)sender;

- (IBAction)addValueGoToAppB:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *text;
- (IBAction)goToAppatore:(id)sender;

@end

