//
//  AddEmployeeViewController.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/19/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"
#import "Employee.h"

@interface AddEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployedTextField;
@property (weak, nonatomic) IBOutlet UITextField *managerNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;




- (IBAction)saveButtonPressed:(UIButton *)sender;

- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}



- (IBAction)saveButtonPressed:(UIButton *)sender {
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *age = [f numberFromString:self.ageTextField.text];
    NSNumber *yearsEmployed = [f numberFromString:self.yearsEmployedTextField.text];
    
    Employee *newEmployee = [[Employee alloc] initWithFirstName:self.firstNameTextField.text lastName:self.lastNameTextField.text age:age yearsEmployed:yearsEmployed managerName:self.managerNameTextField.text andEmail:self.emailTextField.text];
    
    [[EmployeeDatabase shared]add:newEmployee];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
