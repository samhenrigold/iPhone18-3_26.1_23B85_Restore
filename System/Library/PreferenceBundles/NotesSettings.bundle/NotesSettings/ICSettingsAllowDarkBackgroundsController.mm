@interface ICSettingsAllowDarkBackgroundsController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICSettingsAllowDarkBackgroundsController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICSettingsAllowDarkBackgroundsController;
  [(ICSettingsAllowDarkBackgroundsController *)&v4 viewDidAppear:appear];
  [(ICSettingsAllowDarkBackgroundsController *)self ic_submitNavigationEventForIdentifier:ICAllowDarkBackgroundsPrefIdentifier titleStringKey:@"NOTE_CONTENT_BACKGROUNDS" navigationComponents:&off_1EED8];
}

@end