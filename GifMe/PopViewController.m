//
//  PopViewController.m
//  GifMe
//
//  Created by andre mietti on 1/29/14.
//  Copyright (c) 2014 BEPID. All rights reserved.
//

#import "PopViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface PopViewController ()

@end

@implementation PopViewController
{
    CIImage *beginImage;
    CIFilter *filter;
}


// getter/setter for header properties
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void)viewDidUnload
{
      [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (void)viewWillAppear:(BOOL)animated {
    
    
  }

- (IBAction)goBack:(id)sender {
  }



-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:nil];
    UIImage *gotImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    beginImage = [CIImage imageWithCGImage:gotImage.CGImage];
    //   [filter setValue:beginImage forKey:kCIInputImageKey];
}

-(IBAction)loadPhoto:(id)sender
{
    UIImagePickerController *pickerC = [[UIImagePickerController alloc]init];
    pickerC.delegate = self;
    [self presentViewController:pickerC animated:YES completion:nil];
}


@end
