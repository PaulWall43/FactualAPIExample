//
//  OBJCViewController.m
//  FactualTest
//
//  Created by Paul Wallace on 9/4/16.
//  Copyright © 2016 BuLeaf. All rights reserved.
//

#import "OBJCViewController.h"
#import <FactualSDK/FactualQuery.h>

@interface OBJCViewController ()

@end

@implementation OBJCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FactualQuery* queryObject = [FactualQuery query];
    [queryObject addFullTextQueryTerm:@"century city mall"];
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

@end
