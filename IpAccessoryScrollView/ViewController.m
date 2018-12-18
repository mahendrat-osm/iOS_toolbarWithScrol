//
//  ViewController.m
//  IpAccessoryScrollView
//
//  Created by Aslam on 12/12/18.
//  Copyright © 2018 Mahendra Thotakura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *txtSample;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIToolbar* toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    toolbar.barStyle = UIBarStyleBlackTranslucent;
    [toolbar setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
//////////// these are the bar buttons for input accessory view toolbar
    
   UIBarButtonItem* buttonDone = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRedo target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPause target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(done:)];
    UIBarButtonItem* buttonDone7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(done:)];
//    UIBarButtonItem* buttonDone8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:self action:@selector(done:)];


    NSArray *itemsArray = [NSArray arrayWithObjects:buttonDone,buttonDone1,buttonDone2,buttonDone3,buttonDone4,buttonDone5,buttonDone6,buttonDone7, nil];
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = toolbar.frame;
    scrollView.bounds = toolbar.bounds;
    scrollView.autoresizingMask = toolbar.autoresizingMask;
    scrollView.showsVerticalScrollIndicator = true;
    scrollView.showsHorizontalScrollIndicator = true;
    scrollView.scrollEnabled = YES;
    
    //scrollView.bounces = false;
    UIView *superView = toolbar.superview;
    [toolbar removeFromSuperview];
    toolbar.autoresizingMask = UIViewAutoresizingNone;
    toolbar.frame = CGRectMake(0, 0, 400, toolbar.frame.size.height);
    toolbar.bounds = toolbar.frame;
    [toolbar setItems:itemsArray];
    scrollView.contentSize = toolbar.frame.size;
    [scrollView addSubview:toolbar];

    [superView addSubview:scrollView];
    
    self.txtSample.inputAccessoryView = scrollView;

}

-(void)done:(id)sender{
    
}
@end
