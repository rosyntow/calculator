//
//  calcualte.h
//  eCalculator2
//
//  Created by Rosina Otchere-Nyarko on 7/26/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol CalculateDelegate <NSObject>

@end
@interface Calculate : NSObject
@property (nonatomic, weak) id <CalculateDelegate> delegate;

-(void)newCalculateValueOne:(NSString *)textField1 withValueTwo:(NSString *)textField2 andOperator:(NSString *)operatorValue setAnswerTextField:(NSString *)answerField;
@end
