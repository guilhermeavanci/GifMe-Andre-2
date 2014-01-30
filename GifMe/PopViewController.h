//
//  PopViewController.h
//  GifMe
//
//  Created by andre mietti on 1/29/14.
//  Copyright (c) 2014 BEPID. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PopViewControllerDelegate;

@interface PopViewController : UIViewController<UIImagePickerControllerDelegate>


// Declare a property for the delegate
@property (weak) id <PopViewControllerDelegate> delegate;

@end

// Protocol Header
@protocol PopViewControllerDelegate <NSObject>

@required
- (void)dismissPop:(NSString *)value;

@end
