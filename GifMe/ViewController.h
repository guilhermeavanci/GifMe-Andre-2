//
//  ViewController.h
//  GifMe
//
//  Created by andre mietti on 1/28/14.
//  Copyright (c) 2014 BEPID. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopViewController.h"
@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UIPopoverControllerDelegate>

@property (strong, nonatomic) IBOutlet UIButton *btStart;
@property (strong, nonatomic) UIStoryboardPopoverSegue *currentPopoverSegue;
@property (strong, nonatomic) PopViewController *pvc;
@end
