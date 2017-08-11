//
//  CustomCollectionViewCell.m
//  WavyCollectionViewLayout
//
//  Created by Mohammad Shahzaib Ather on 2017-08-10.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@interface CustomCollectionViewCell ()


@property (weak, nonatomic) IBOutlet UILabel *labelName;


@end


@implementation CustomCollectionViewCell

//-(instancetype) initWithFrame:(CGRect)frame {
//    
//    if (self = [super initWithFrame:CGRectZero]){
//     
//        [self addConstraint:
//         [NSLayoutConstraint constraintWithItem:self.nameLabel
//                                      attribute:NSLayoutAttributeCenterX
//                                      relatedBy:0
//                                         toItem:self
//                                      attribute:NSLayoutAttributeCenterX
//                                     multiplier:1
//                                       constant:0]];
//        
//        [self addConstraint:
//         [NSLayoutConstraint constraintWithItem:self.nameLabel
//                                      attribute:NSLayoutAttributeCenterY
//                                      relatedBy:0
//                                         toItem:self
//                                      attribute:NSLayoutAttributeCenterY
//                                     multiplier:1
//                                       constant:0]];
//    
//        [self addSubview:self.nameLabel];
//        
//    }
//    return self;
//}
//


-(void)configureCellWithName:(NSString *)name
{
    self.labelName.text = name;
    self.labelName.textColor = [UIColor blackColor];
    self.backgroundColor = [UIColor magentaColor];
}



@end
