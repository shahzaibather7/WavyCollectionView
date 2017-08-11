//
//  CustomFlowLayout.m
//  WavyCollectionViewLayout
//
//  Created by Mohammad Shahzaib Ather on 2017-08-10.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "CustomFlowLayout.h"

@implementation CustomFlowLayout



-(void)prepareLayout{


    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
   
    NSArray <UICollectionViewLayoutAttributes*> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSArray<UICollectionViewLayoutAttributes *> *newAttrs = superAttrs.copy;
    
    

    
    for (int i = 0 ; i < superAttrs.count ; i++){
       
        float minValue = 400;
    
        float randomHeight = arc4random_uniform(50) +minValue ;
        float randomYposition = arc4random_uniform(self.collectionView.bounds.size.height);
        
         newAttrs[i].frame = CGRectMake(newAttrs[i].frame.origin.x ,randomYposition ,newAttrs[i].frame.size.width , randomHeight);
        
      
        
    }
    
    return newAttrs;
}
@end
