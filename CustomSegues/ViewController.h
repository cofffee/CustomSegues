//
//  ViewController.h
//  CustomSegues
//
//  Created by Kevin Remigio on 4/7/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *mainScreenLabel;

- (IBAction)transitionOne:(id)sender;
- (IBAction)transitionTwo:(id)sender;
- (IBAction)transitionThree:(id)sender;
- (IBAction)transitionFour:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *echoTextField;
@property (weak, nonatomic) IBOutlet UITableView *segueOptions;


@end

