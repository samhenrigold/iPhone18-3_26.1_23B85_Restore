@interface PUIReportSensorManager
+ (id)_iconFromImage:(id)image;
+ (id)applicationBundleIdentifierForCategory:(id)category;
+ (id)iconTypeIdentifierForCategory:(id)category;
+ (id)localizedStringForCategory:(id)category;
- (BOOL)shouldIncludeBundleID:(id)d;
- (id)bundleIDsAndLatestDatesFromEvents:(id)events;
- (id)categoriesAndLatestDatesFromEvents:(id)events;
- (id)events:(id)events filtered:(id)filtered;
- (id)eventsFiltered:(id)filtered;
- (id)loadAllEvents;
- (void)dataDidChange;
- (void)reloadDataWithCompletion:(id)completion;
@end

@implementation PUIReportSensorManager

+ (id)localizedStringForCategory:(id)category
{
  v15[7] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v4 = *MEMORY[0x277D412B8];
  v14[0] = *MEMORY[0x277D412A0];
  v14[1] = v4;
  v15[0] = @"LOCATION";
  v15[1] = @"PHOTOS";
  v5 = *MEMORY[0x277D412B0];
  v14[2] = *MEMORY[0x277D41290];
  v14[3] = v5;
  v15[2] = @"CAMERA";
  v15[3] = @"MICROPHONE";
  v6 = *MEMORY[0x277D412A8];
  v14[4] = *MEMORY[0x277D41298];
  v14[5] = v6;
  v15[4] = @"CONTACTS";
  v15[5] = @"MEDIALIBRARY";
  v14[6] = *MEMORY[0x277D412C0];
  v15[6] = @"SCREEN_RECORDING";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];
  v8 = [v7 objectForKeyedSubscript:categoryCopy];
  v9 = PUI_LocalizedStringForAppReport(v8);

  v10 = v9;
  if (![v9 length])
  {
    v11 = _PUILoggingFacility(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PUIReportSensorManager *)categoryCopy localizedStringForCategory:v11];
    }

    v10 = categoryCopy;
  }

  v12 = v10;

  return v10;
}

+ (id)iconTypeIdentifierForCategory:(id)category
{
  categoryCopy = category;
  v4 = __56__PUIReportSensorManager_iconTypeIdentifierForCategory___block_invoke(categoryCopy);
  v5 = [v4 objectForKeyedSubscript:categoryCopy];

  return v5;
}

id __56__PUIReportSensorManager_iconTypeIdentifierForCategory___block_invoke(uint64_t a1)
{
  if (PUIReportSensorManagerDataHasChangedNotification_block_invoke_na_once_token_8 != -1)
  {
    __56__PUIReportSensorManager_iconTypeIdentifierForCategory___block_invoke_cold_1();
  }

  v2 = PUIReportSensorManagerDataHasChangedNotification_block_invoke_na_once_object_8;

  return v2;
}

void __56__PUIReportSensorManager_iconTypeIdentifierForCategory___block_invoke_2()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D412B0];
  v4[0] = *MEMORY[0x277D412A0];
  v4[1] = v0;
  v5[0] = @"com.apple.graphic-icon.location";
  v5[1] = @"com.apple.graphic-icon.microphone-access";
  v1 = *MEMORY[0x277D41290];
  v4[2] = *MEMORY[0x277D412C0];
  v4[3] = v1;
  v5[2] = @"com.apple.graphic-icon.screen-recording";
  v5[3] = @"com.apple.graphic-icon.camera";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = PUIReportSensorManagerDataHasChangedNotification_block_invoke_na_once_object_8;
  PUIReportSensorManagerDataHasChangedNotification_block_invoke_na_once_object_8 = v2;
}

+ (id)applicationBundleIdentifierForCategory:(id)category
{
  categoryCopy = category;
  v4 = __65__PUIReportSensorManager_applicationBundleIdentifierForCategory___block_invoke(categoryCopy);
  v5 = [v4 objectForKeyedSubscript:categoryCopy];

  return v5;
}

id __65__PUIReportSensorManager_applicationBundleIdentifierForCategory___block_invoke(uint64_t a1)
{
  if (PUIReportSensorManagerDataHasChangedNotification_block_invoke_2_na_once_token_9 != -1)
  {
    __65__PUIReportSensorManager_applicationBundleIdentifierForCategory___block_invoke_cold_1();
  }

  v2 = PUIReportSensorManagerDataHasChangedNotification_block_invoke_2_na_once_object_9;

  return v2;
}

void __65__PUIReportSensorManager_applicationBundleIdentifierForCategory___block_invoke_2()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D412A8];
  v3[0] = *MEMORY[0x277D41298];
  v3[1] = v0;
  v4[0] = @"com.apple.MobileAddressBook";
  v4[1] = @"com.apple.Music";
  v3[2] = *MEMORY[0x277D412B8];
  v4[2] = @"com.apple.mobileslideshow";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = PUIReportSensorManagerDataHasChangedNotification_block_invoke_2_na_once_object_9;
  PUIReportSensorManagerDataHasChangedNotification_block_invoke_2_na_once_object_9 = v1;
}

+ (id)_iconFromImage:(id)image
{
  imageCopy = image;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  if (imageCopy && ([imageCopy CGImage], (v7 = LICreateIconForImage()) != 0))
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:0 orientation:v6];
    CGImageRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dataDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PUIReportSensorManagerDataHasChangedNotification" object:0];
}

- (BOOL)shouldIncludeBundleID:(id)d
{
  v3 = MEMORY[0x277CC1E70];
  dCopy = d;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];

  appTags = [v5 appTags];
  v7 = [appTags containsObject:@"hidden"];

  return v7 ^ 1;
}

- (void)reloadDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PUIReportSensorManager_reloadDataWithCompletion___block_invoke;
  v7[3] = &unk_279BA1E00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __51__PUIReportSensorManager_reloadDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadAllEvents];
  [*(a1 + 32) setAllEvents:v2];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PUIReportSensorManager_reloadDataWithCompletion___block_invoke_2;
  v4[3] = &unk_279BA1E00;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __51__PUIReportSensorManager_reloadDataWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) dataDidChange];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)loadAllEvents
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = _PUILoggingFacility(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PUIReportSensorManager loadAllEvents]";
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "%s: Starting query for SFNetworkDomainTracker data", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = objc_opt_new();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getPAAccessReaderClass_softClass_0;
  v20 = getPAAccessReaderClass_softClass_0;
  if (!getPAAccessReaderClass_softClass_0)
  {
    *v26 = MEMORY[0x277D85DD0];
    *&v26[8] = 3221225472;
    *&v26[16] = __getPAAccessReaderClass_block_invoke_0;
    v27 = &unk_279BA0D08;
    v28 = &v17;
    __getPAAccessReaderClass_block_invoke_0(v26);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  sharedInstance = [v3 sharedInstance];
  v16 = 0;
  v6 = [sharedInstance publisherForReportWithError:&v16];
  v7 = v16;

  if (v7)
  {
    v9 = _PUILoggingFacility(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136315394;
      *&v26[4] = "[PUIReportSensorManager loadAllEvents]";
      *&v26[12] = 2112;
      *&v26[14] = v7;
      _os_log_impl(&dword_2657FE000, v9, OS_LOG_TYPE_DEFAULT, "%s: Error when fetching access records, %@", v26, 0x16u);
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__PUIReportSensorManager_loadAllEvents__block_invoke_83;
    v15[3] = &unk_279BA2260;
    v15[4] = &buf;
    v10 = [v6 sinkWithCompletion:&__block_literal_global_82 receiveInput:v15];
  }

  v11 = _PUILoggingFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(*(&buf + 1) + 40) count];
    *v26 = 136315394;
    *&v26[4] = "[PUIReportSensorManager loadAllEvents]";
    *&v26[12] = 2048;
    *&v26[14] = v12;
    _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "%s: Finished query for SFNetworkDomainTracker data: %lu items.", v26, 0x16u);
  }

  v13 = [*(*(&buf + 1) + 40) copy];
  _Block_object_dispose(&buf, 8);

  return v13;
}

void __39__PUIReportSensorManager_loadAllEvents__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  if (v3)
  {
    v4 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 error];
      v6 = 136315394;
      v7 = "[PUIReportSensorManager loadAllEvents]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "%s: Error when sinking access records, %@", &v6, 0x16u);
    }
  }
}

- (id)bundleIDsAndLatestDatesFromEvents:(id)events
{
  v36 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    *&v7 = 136315394;
    v26 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
        {
          [v11 startTime];
          v14 = v13;
          access = [v11 access];
          accessor = [access accessor];
          identifier = [accessor identifier];
          v18 = [v4 objectForKeyedSubscript:identifier];
          [v18 timeIntervalSinceReferenceDate];
          v20 = v19;

          if (v20 < v14)
          {
            v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v14];
            accessor2 = [access accessor];
            identifier2 = [accessor2 identifier];
            [v4 setObject:v21 forKeyedSubscript:identifier2];
          }
        }

        else
        {
          access = _PUILoggingFacility(isKindOfClass);
          if (os_log_type_enabled(access, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v32 = "[PUIReportSensorManager bundleIDsAndLatestDatesFromEvents:]";
            v33 = 2112;
            v34 = v11;
            _os_log_impl(&dword_2657FE000, access, OS_LOG_TYPE_DEFAULT, "%s: Unrecognized record class, %@", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v8);
  }

  v24 = [v4 copy];

  return v24;
}

- (id)categoriesAndLatestDatesFromEvents:(id)events
{
  v34 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 136315394;
    v24 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
        {
          [v11 startTime];
          v14 = v13;
          access = [v11 access];
          category = [access category];
          v17 = [v4 objectForKeyedSubscript:category];
          [v17 timeIntervalSinceReferenceDate];
          v19 = v18;

          if (v19 < v14)
          {
            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v14];
            category2 = [access category];
            [v4 setObject:v20 forKeyedSubscript:category2];
          }
        }

        else
        {
          access = _PUILoggingFacility(isKindOfClass);
          if (os_log_type_enabled(access, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v30 = "[PUIReportSensorManager categoriesAndLatestDatesFromEvents:]";
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_2657FE000, access, OS_LOG_TYPE_DEFAULT, "%s: Unrecognized record class, %@", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v22 = [v4 copy];

  return v22;
}

- (id)eventsFiltered:(id)filtered
{
  filteredCopy = filtered;
  allEvents = [(PUIReportSensorManager *)self allEvents];
  v6 = [(PUIReportSensorManager *)self events:allEvents filtered:filteredCopy];

  return v6;
}

- (id)events:(id)events filtered:(id)filtered
{
  v21 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  filteredCopy = filtered;
  if (filteredCopy)
  {
    v7 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = eventsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (filteredCopy[2](filteredCopy, v13))
          {
            [v7 addObject:{v13, v16}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
  }

  else
  {
    v14 = eventsCopy;
  }

  return v14;
}

+ (void)localizedStringForCategory:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[PUIReportSensorManager localizedStringForCategory:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "%s: unknown category: %@", &v2, 0x16u);
}

@end