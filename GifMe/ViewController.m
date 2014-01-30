//
//  ViewController.m
//  GifMe
//
//  Created by andre mietti on 1/28/14.
//  Copyright (c) 2014 BEPID. All rights reserved.
//

#import "ViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface ViewController ()
{
    UISlider *slider;
}

@end

@implementation ViewController
{
    CIImage *beginImage;
    CIFilter *filter;
}
@synthesize btStart;
@synthesize currentPopoverSegue;
@synthesize pvc;

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    slider = [[UISlider alloc]initWithFrame:CGRectMake(600, 500, 200, 100)];
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * 0.5);
    //    [slider setBounds: CGRectMake(100, 500, 200, 100)];
    slider.transform = trans;
    [self.view addSubview:slider];
    

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



- (void)viewDidUnload
{
    [self setBtStart:nil];

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"segPop"]) {
        currentPopoverSegue = (UIStoryboardPopoverSegue *)segue;
        pvc = [segue destinationViewController];
       // [pvc setDelegate:self];
    }
}

// PopViewControllerDelegate callback function
- (void)dismissPop:(NSString *)value {
    [[currentPopoverSegue popoverController] dismissPopoverAnimated: YES]; // dismiss the popover
}



@end
