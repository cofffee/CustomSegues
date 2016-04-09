//
//  ViewController.m
//  CustomSegues
//
//  Created by Kevin Remigio on 4/7/16.
//  Copyright © 2016 Kevin Remigio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *myArray;
    UIViewController *vc;
    UIStoryboard *storyboard;
    NSArray *setOfMenuOptions;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    vc = [[ViewController alloc] init];
    vc = [storyboard instantiateViewControllerWithIdentifier:@"orange"];
//    self.segueOptions.dataSource = self;
//    self.segueOptions.delegate = self;
    
    setOfMenuOptions = @[@"dog", @"cats", @"ants"];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)transitionOne:(id)sender{

    //vc.modalPresentationStyle = UIModalPresentationPopover;
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    //[self presentViewController:vc animated:YES completion:nil];
    [self presentViewController:vc animated:YES completion:nil];


}
- (IBAction)transitionTwo:(id)sender {
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)transitionThree:(id)sender {
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)transitionFour:(id)sender {
    vc.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)dismissView:(id)sender {
    self.mainScreenLabel.text = self.echoTextField.text;
    //eself.echoTextField.text = nil;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return setOfMenuOptions.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.segueOptions dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [setOfMenuOptions objectAtIndex:indexPath.row];
    
    return cell;

}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *entry = [segue destinationViewController];
    if([segue.identifier isEqualToString:@"segue"]) {
        
        NSIndexPath *indexPath = [self.segueOptions indexPathForSelectedRow];
        //Users *user = [usersArray objectAtIndex:indexPath.row];
        //entry.theUserToEdit = user;
        
        //entry.editUser = YES;
    }
    
    
}
- (IBAction)myUnwindAction:(UIStoryboardSegue*)unwindSegue {}


@end
