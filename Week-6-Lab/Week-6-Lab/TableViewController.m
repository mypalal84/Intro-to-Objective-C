//
//  TableViewController.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/18/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "TableViewController.h"
#import "EmployeeDatabase.h"

@interface TableViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
//    [self.tableView reloadData];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[EmployeeDatabase shared] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeCell" forIndexPath:indexPath];
 
    // Configure the cell...
    NSArray *employees = [[EmployeeDatabase shared]allEmployees];
    Employee *currentEmployee = employees[indexPath.row];
    cell.textLabel.text =  currentEmployee.firstName;
    
    return cell;
}

@end
