@interface SDCatalogUtilities
+ (id)_currentCatalog;
+ (void)_resetAssetAudience;
+ (void)_setAudience:(id)audience;
+ (void)_setCatalog:(id)catalog;
@end

@implementation SDCatalogUtilities

+ (void)_setCatalog:(id)catalog
{
  v13 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  v4 = +[SDSeedingLogging fwHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (catalogCopy)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v11 = 136315138;
    uTF8String = [catalogCopy UTF8String];
    v6 = "Seeding: Setting catalog URL: %s";
    v7 = v4;
    v8 = 12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v6 = "Seeding: Clearing catalog URL";
    v7 = v4;
    v8 = 2;
  }

  _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
LABEL_7:

  _currentCatalog = [objc_opt_class() _currentCatalog];
  if ([_currentCatalog isEqualToString:catalogCopy])
  {
    v10 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SDCatalogUtilities _setCatalog:v10];
    }
  }

  else
  {
    CFPreferencesSetValue(@"CatalogURL", catalogCopy, @"com.apple.SoftwareUpdate", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    CFPreferencesAppSynchronize(@"com.apple.SoftwareUpdate");
    notify_post("com.apple.SoftwareUpdate.CheckForCatalogChange");
  }
}

+ (void)_setAudience:(id)audience
{
  v10 = *MEMORY[0x277D85DE8];
  audienceCopy = audience;
  v4 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = audienceCopy;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "will set mobile asset audience [%{public}@]", buf, 0xCu);
  }

  if ([audienceCopy length])
  {
    v5 = MASetPallasAudience();
    v6 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v5;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "did set mobile asset audience with result [%lld]", buf, 0xCu);
    }

    NSLog(&cfstr_AudiencesResul.isa, v5);
  }

  else
  {
    v7 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "Failed to set audience: given value is nil", buf, 2u);
    }
  }
}

+ (void)_resetAssetAudience
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "will reset mobile asset audience", &v5, 2u);
  }

  v3 = MASetPallasAudience();
  v4 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "did reset mobile asset audience with result [%lld]", &v5, 0xCu);
  }
}

+ (id)_currentCatalog
{
  CFPreferencesAppSynchronize(@"com.apple.SoftwareUpdate");
  v2 = CFPreferencesCopyValue(@"CatalogURL", @"com.apple.SoftwareUpdate", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);

  return v2;
}

@end