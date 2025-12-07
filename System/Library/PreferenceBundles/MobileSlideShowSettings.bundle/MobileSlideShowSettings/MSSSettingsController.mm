@interface MSSSettingsController
- (id)deepLinkURL;
- (id)pathComponentsLocalizedResource;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation MSSSettingsController

- (id)pathComponentsLocalizedResource
{
  v2 = +[MSSSettingsUtilities photosMainPaneLocalizedResource];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)deepLinkURL
{
  v2 = [NSString stringWithFormat:@"%@/%@", @"settings-navigation://com.apple.Settings.Apps", @"com.apple.mobileslideshow"];
  v3 = [NSURL URLWithString:v2];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MSSSettingsController;
  [(SettingsBaseController *)&v7 viewDidAppear:appear];
  paneTitleLocalizedResource = [(MSSSettingsController *)self paneTitleLocalizedResource];
  pathComponentsLocalizedResource = [(MSSSettingsController *)self pathComponentsLocalizedResource];
  deepLinkURL = [(MSSSettingsController *)self deepLinkURL];
  [(MSSSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobileslideshow" title:paneTitleLocalizedResource localizedNavigationComponents:pathComponentsLocalizedResource deepLink:deepLinkURL];
}

@end