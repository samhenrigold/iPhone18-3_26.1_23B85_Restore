@interface APUIAppIconDataSource
+ (id)_appClipIconForIdentifier:(id)identifier;
+ (id)_appClipIconTreatmentForCGImage:(CGImage *)image;
+ (id)iconForBundleIdentifier:(id)identifier shouldApplyMask:(BOOL)mask;
+ (void)openApplication:(id)application completion:(id)completion;
- (APUIAppIconDataSourceDelegate)delegate;
- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info;
@end

@implementation APUIAppIconDataSource

+ (id)_appClipIconForIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277D75D70] webClipWithIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    iconImage = [v4 iconImage];
    v7 = iconImage;
    if (iconImage)
    {
      v8 = [self _appClipIconTreatmentForCGImage:{objc_msgSend(iconImage, "CGImage")}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_appClipIconTreatmentForCGImage:(CGImage *)image
{
  v18[1] = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:image scale:v6];
  v8 = objc_alloc(MEMORY[0x277D1B1A8]);
  v18[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v10 = [v8 initWithImages:v9];

  v11 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
  [v11 setShape:5];
  v12 = [v10 prepareImageForDescriptor:v11];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277D755B8];
    cGImage = [v12 CGImage];
    [v13 scale];
    v16 = [v14 imageWithCGImage:cGImage scale:0 orientation:?];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)iconForBundleIdentifier:(id)identifier shouldApplyMask:(BOOL)mask
{
  maskCopy = mask;
  identifierCopy = identifier;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  lowercaseString = [identifierCopy lowercaseString];
  v10 = [lowercaseString isEqualToString:@"com.apple.mobilecal"];

  v11 = objc_alloc(MEMORY[0x277D1B1A8]);
  v12 = v11;
  if (v10)
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v12 initWithDate:date calendar:currentCalendar format:0];
  }

  else
  {
    v15 = [v11 initWithBundleIdentifier:identifierCopy];
  }

  v16 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
  [v16 setShouldApplyMask:maskCopy];
  v17 = [v15 prepareImageForDescriptor:v16];
  v18 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v17 scale:"CGImage") orientation:{0, v8}];

  return v18;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  applicationBundleID = [icon applicationBundleID];
  if ([applicationBundleID length])
  {
    if ([MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:applicationBundleID])
    {
      v5 = [MEMORY[0x277D75D70] webClipWithIdentifier:applicationBundleID];
      title = [v5 title];
    }

    else
    {
      title = [MEMORY[0x277CEB3B8] localizedNameForBundle:applicationBundleID];
    }
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  applicationBundleID = [icon applicationBundleID];
  if ([applicationBundleID length] && objc_msgSend(MEMORY[0x277CEB3B8], "isAppClipWebClipBundleId:", applicationBundleID))
  {
    v5 = [objc_opt_class() _appClipIconForIdentifier:applicationBundleID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info
{
  applicationBundleID = [icon applicationBundleID];
  if ([applicationBundleID length])
  {
    v5 = [objc_opt_class() iconForBundleIdentifier:applicationBundleID shouldApplyMask:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained appIconDataSource:self launchAppFromIcon:iconCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    applicationBundleID = [iconCopy applicationBundleID];
    v11 = [applicationBundleID length];
    v9 = v11 != 0;
    if (v11)
    {
      [objc_opt_class() openApplication:applicationBundleID completion:0];
    }

    else
    {
      v12 = __atxlog_handle_ui(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [APUIAppIconDataSource icon:v12 launchFromLocation:? context:?];
      }
    }
  }

  return v9;
}

+ (void)openApplication:(id)application completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  completionCopy = completion;
  if ([applicationCopy length])
  {
    v7 = [MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:applicationCopy];
    if (v7)
    {
      v8 = __atxlog_handle_ui(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = applicationCopy;
        _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "AppIconDataSource: +openApplication asked to open clip: %@", buf, 0xCu);
      }

      [MEMORY[0x277D66CE8] launchWebClipWithIdentifier:applicationCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v10 = [applicationCopy copy];

      v12 = __atxlog_handle_ui(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "AppIconDataSource: +openApplication launching app: %@", buf, 0xCu);
      }

      v13 = dispatch_get_global_queue(25, 0);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__APUIAppIconDataSource_openApplication_completion___block_invoke;
      v14[3] = &unk_278C90D88;
      applicationCopy = v10;
      v15 = applicationCopy;
      v16 = completionCopy;
      dispatch_async(v13, v14);
    }
  }

  else
  {
    v9 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [APUIAppIconDataSource icon:v9 launchFromLocation:? context:?];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, 0);
    }
  }
}

void __52__APUIAppIconDataSource_openApplication_completion___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v3 = *MEMORY[0x277D0AC70];
  v9[0] = *MEMORY[0x277D0AC28];
  v9[1] = v3;
  v10[0] = @"AppPredictions";
  v10[1] = MEMORY[0x277CBEC38];
  v9[2] = *MEMORY[0x277D0AC58];
  v10[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277D0AD60] optionsWithDictionary:v4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2;
  v7[3] = &unk_278C90D60;
  v8 = *(a1 + 40);
  [v2 openApplication:v5 withOptions:v6 completion:v7];
}

void __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_ui(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2_cold_1(v7, v8);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v7 == 0, v7);
  }
}

- (APUIAppIconDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "AppIconDataSource: could not open app: %@", &v2, 0xCu);
}

@end