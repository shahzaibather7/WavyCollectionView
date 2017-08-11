//
//  ViewController.m
//  WavyCollectionViewLayout
//
//  Created by Mohammad Shahzaib Ather on 2017-08-10.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import "CustomFlowLayout.h"
#import "ViewController.h"

@interface ViewController () <UICollectionViewDataSource , UICollectionViewDelegate>

@property UICollectionView* myCollectionView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
   // CustomFlowLayout *flowLayout = [[CustomFlowLayout alloc] init];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCollectionViewCell *customCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    
    [customCell configureCellWithName:[NSString stringWithFormat:@"cell:%li", (long)indexPath.row]];
    
    return customCell;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 13;
}




@end

