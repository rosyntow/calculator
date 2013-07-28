//
//  ViewController.m
//  eCalculator2
//
//  Created by Rosina Otchere-Nyarko on 7/26/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import "ViewController.h"
#import "calculate.h"

@interface ViewController () <CalculateDelegate>
@property (strong, nonatomic) IBOutlet UITextField *userTextField1;
@property (strong, nonatomic) IBOutlet UITextField *userTextField2;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextField *userTextField3;
@property (nonatomic,strong) NSArray *nameArray;
@property (strong,nonatomic) NSString *userOperatorSelected;

@end

@implementation ViewController
@synthesize  userOperatorSelected,userTextField1,userTextField2,userTextField3,label;

- (void)viewDidLoad
{
    [super viewDidLoad];
   // self.nameArray = [[NSArray alloc] initWithObjects:@"+",@"-",@"*",@"/",nil];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Picker Views

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{

   // return [self.nameArray count];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 30.0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    //return [self.nameArray objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
   // Let's print in the console what the user had chosen;
    NSLog(@"Chosen item: %@", [self.nameArray objectAtIndex:row]);
    userOperatorSelected = [self.nameArray objectAtIndex:row];
   NSString *labelValue = [[NSString alloc] initWithFormat:@"( %@ )",self.userOperatorSelected];
    
    label.text = labelValue;
   Calculate *calculator = [[Calculate alloc] init];
    

    NSString *userValue1 = userTextField1.text;
    NSString *userValue2 = userTextField2.text;
    NSString *userAnswer = userTextField3.text;
    [calculator newCalculateValueOne:userValue1 withValueTwo:userValue2 andOperator:userOperatorSelected setAnswerTextField:userAnswer];
   // [self newCalculateValueOne:textField1.text withValueTwo:textField2.text andOperator:userOperatorSelected];

}
 
@end
