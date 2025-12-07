@interface ICSettingsGesturesBottomRightViewController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICSettingsGesturesBottomRightViewController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICSettingsGesturesBottomRightViewController;
  [(ICSettingsGesturesBottomRightViewController *)&v4 viewDidAppear:appear];
  [(ICSettingsGesturesBottomRightViewController *)self ic_submitNavigationEventForIdentifier:ICBottomRightCornerSwipePrefIdentifier titleStringKey:@"BOTTOM_RIGHT_CORNER_SWIPE" navigationComponents:&off_1EE78];
}

@end