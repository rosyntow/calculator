//
//  calcualte.m
//  eCalculator2
//
//  Created by Rosina Otchere-Nyarko on 7/26/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import "Calculate.h"

@interface Calculate()

@end


@implementation Calculate

-(id)init {
    self = [super init];
    return self;
}
-(void)newCalculateValueOne:(NSString *)textField1 withValueTwo:(NSString *)textField2 andOperator:(NSString *)operatorValue setAnswerTextField:(NSString *)answerField{
        
       
        
        int userIntValue1 = textField1.integerValue;
        int userIntValue2 = textField2.integerValue;
        
        
        int intResult=0;
        double doubleResult;
        if([operatorValue isEqualToString:@"+"]){
            
            intResult = userIntValue1 + userIntValue2;
           // answerField  =  [NSString stringWithFormat:@"%d",intResult ];
        }else if([operatorValue isEqualToString:@"-"]){
            
            intResult = userIntValue1 - userIntValue2;
           // answerField  =  [NSString stringWithFormat:@"%d",intResult ];
            
        }else if([operatorValue isEqualToString:@"*"]){
            
            intResult = userIntValue1 * userIntValue2;
          //  answerField  =  [NSString stringWithFormat:@"%d",intResult ];
        }else if([operatorValue isEqualToString:@"/"]){
            
            
            doubleResult = (double)userIntValue1 / userIntValue2;
           // answerField  =  [NSString stringWithFormat:@"%f",doubleResult ];
        }
        NSLog(@"method delegate is working also");
        
    }


@end
