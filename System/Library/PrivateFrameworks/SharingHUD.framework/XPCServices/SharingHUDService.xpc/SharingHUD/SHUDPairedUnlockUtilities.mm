@interface SHUDPairedUnlockUtilities
+ (id)deviceSpecificViewControllerWithWatchName:(id)name needsLockButton:(BOOL)button needsUpdate:(BOOL)update;
+ (id)trailingButton;
@end

@implementation SHUDPairedUnlockUtilities

+ (id)trailingButton
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOCK" value:0 table:@"Localization"];

  v4 = [UIButton buttonWithType:1];
  [v4 setTitle:v3 forState:0];
  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  v7 = +[UIColor systemRedColor];
  [v4 setTintColor:v7];

  v8 = +[UIColor secondarySystemFillColor];
  [v4 setBackgroundColor:v8];

  [v4 _setCornerRadius:17.0];
  [v4 setUserInteractionEnabled:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

+ (id)deviceSpecificViewControllerWithWatchName:(id)name needsLockButton:(BOOL)button needsUpdate:(BOOL)update
{
  updateCopy = update;
  buttonCopy = button;
  nameCopy = name;
  v8 = SBUIIsSystemApertureEnabled();
  v9 = paired_unlock_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using Jindo", buf, 2u);
    }

    v11 = off_100014278;
  }

  else
  {
    if (v10)
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using BannerKit", v14, 2u);
    }

    v11 = &off_100014280;
  }

  v12 = [objc_alloc(*v11) initWithWatchName:nameCopy withLockButton:buttonCopy withUpdate:updateCopy];

  return v12;
}

@end