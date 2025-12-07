@interface ICSettingsGesturesBottomLeftViewController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICSettingsGesturesBottomLeftViewController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICSettingsGesturesBottomLeftViewController;
  [(ICSettingsGesturesBottomLeftViewController *)&v4 viewDidAppear:appear];
  [(ICSettingsGesturesBottomLeftViewController *)self ic_submitNavigationEventForIdentifier:ICBottomLeftCornerSwipePrefIdentifier titleStringKey:@"BOTTOM_LEFT_CORNER_SWIPE" navigationComponents:&off_1EE60];
}

@end