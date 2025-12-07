@interface ICSPhotoSettingsController
- (ICSPhotoSettingsController)init;
@end

@implementation ICSPhotoSettingsController

- (ICSPhotoSettingsController)init
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"MobileSlideShowSettings.bundle" atPath:@"System/Library/PreferenceBundles"];
  v4 = NSClassFromString(&cfstr_Mssphotostream.isa);
  if (v4)
  {
    v5 = objc_alloc_init(v4);
  }

  else
  {
    v6 = LogSubsystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = @"MSSPhotoStreamInAccountSettingsController";
      v10 = 2112;
      v11 = @"MobileSlideShowSettings.bundle";
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "ICSPhotoSettingsController could not find the class %@ in the %@ bundle", &v8, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

@end