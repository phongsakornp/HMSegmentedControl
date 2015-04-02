#import "MoreExampleViewController.h"
#import "HMSegmentedControl.h"

@implementation MoreExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    CGFloat viewWidth = CGRectGetWidth(self.view.frame);
    
    // Segmented control with text and images
    HMSegmentedControl *segmentedControl0 = [[HMSegmentedControl alloc] initWithSectionImages:@[[UIImage imageNamed:@"1"], [UIImage imageNamed:@"2"], [UIImage imageNamed:@"3"]] sectionSelectedImages:@[[UIImage imageNamed:@"1-selected"], [UIImage imageNamed:@"2-selected"], [UIImage imageNamed:@"3-selected"]] titlesForSections:@[@"One", @"Two", @"Three"]];
    segmentedControl0.frame = CGRectMake(0, 120, viewWidth, 50);
    segmentedControl0.selectionIndicatorHeight = 4.0f;
    segmentedControl0.backgroundColor = [UIColor clearColor];
    segmentedControl0.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown;
    segmentedControl0.selectionStyle = HMSegmentedControlSelectionStyleFullWidthStripe;
    segmentedControl0.type = HMSegmentedControlTypeTextImages;
    [self.view addSubview:segmentedControl0];
}

@end
