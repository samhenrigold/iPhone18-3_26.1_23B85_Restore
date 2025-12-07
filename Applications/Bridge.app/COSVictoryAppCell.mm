@interface COSVictoryAppCell
- (__CFString)partnerAppBundleIdentifier;
- (id)localizedAppTitle;
- (id)localizedPartnerTitle;
- (id)partnerAppStoreIdentifier;
@end

@implementation COSVictoryAppCell

- (id)localizedAppTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"VICTORY_APP_NAME" value:&stru_10026E598 table:@"VancouverLocalizable-victory"];

  return v3;
}

- (id)localizedPartnerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"VICTORY_COMPANY_NAME" value:&stru_10026E598 table:@"VancouverLocalizable-victory"];

  return v3;
}

- (id)partnerAppStoreIdentifier
{
  v2 = sub_1000E63CC(self);

  return [NSNumber numberWithInteger:v2];
}

- (__CFString)partnerAppBundleIdentifier
{
  if (PBIsInternalInstall())
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 stringForKey:@"BundleID"];

    if (v2)
    {
      v3 = v2;
      v4 = pbb_bridge_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(NRC) Overriding bundleID %@", &v6, 0xCu);
      }
    }

    else
    {
      v3 = @"com.nike.nikeplus-gps";
    }
  }

  else
  {
    v3 = @"com.nike.nikeplus-gps";
  }

  return v3;
}

@end