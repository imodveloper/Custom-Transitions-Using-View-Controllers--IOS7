//
//  FromCollection.m
//  UiviewTranslations iOS7
//
//  Created by Borinschi Ivan on 9/11/13.
//  Copyright (c) 2013 Winify AG. All rights reserved.
//

#import "FromCollection.h"
#import "ToCollection.h"

@interface FromCollection ()
@end

@implementation FromCollection

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) { }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)back:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{ }];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ToCollection *vc = (ToCollection*)segue.destinationViewController;
    vc.useLayoutToLayoutNavigationTransitions = YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
