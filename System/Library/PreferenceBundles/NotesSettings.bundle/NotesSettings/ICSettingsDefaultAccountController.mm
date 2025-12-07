@interface ICSettingsDefaultAccountController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICSettingsDefaultAccountController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICSettingsDefaultAccountController;
  [(ICSettingsDefaultAccountController *)&v4 viewDidAppear:appear];
  [(ICSettingsDefaultAccountController *)self ic_submitNavigationEventForIdentifier:ICDefaultAccountPrefIdentifier titleStringKey:@" " navigationComponents:&off_1EF80];
}

@end