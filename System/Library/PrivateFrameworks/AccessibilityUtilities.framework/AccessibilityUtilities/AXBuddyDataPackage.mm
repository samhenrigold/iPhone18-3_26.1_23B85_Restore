@interface AXBuddyDataPackage
+ (id)dataBlobForBuddy;
+ (id)dataPackageForCurrentSettings;
+ (void)dataBlobForBuddy;
+ (void)restoreDataBlobForBuddy:(id)buddy;
+ (void)setTestData:(id)data forModel:(id)model hasHomeButton:(BOOL)button largeTextUsesExtendedRange:(BOOL)range;
- (AXBuddyDataPackage)initWithCoder:(id)coder;
- (void)applySavedSettings;
- (void)encodeWithCoder:(id)coder;
- (void)processDomainDictionary:(id)dictionary;
@end

@implementation AXBuddyDataPackage

- (AXBuddyDataPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AXBuddyDataPackage;
  v5 = [(AXBuddyDataPackage *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"accessibilityOptions"];
    [(AXBuddyDataPackage *)v5 setAccessibilityOptions:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredContentSizeCategoryName"];
    [(AXBuddyDataPackage *)v5 setAxPreferredContentSizeCategoryName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"axOSVersion"];
    [(AXBuddyDataPackage *)v5 setAxOSVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"axModel"];
    [(AXBuddyDataPackage *)v5 setAxModel:v9];

    -[AXBuddyDataPackage setUsesExtendedSlider:](v5, "setUsesExtendedSlider:", [coderCopy decodeBoolForKey:@"usesExtendedSlider"]);
    -[AXBuddyDataPackage setHasHomeButton:](v5, "setHasHomeButton:", [coderCopy decodeBoolForKey:@"AXSHasHomeButton"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessibilityOptions = [(AXBuddyDataPackage *)self accessibilityOptions];
  [coderCopy encodeObject:accessibilityOptions forKey:@"accessibilityOptions"];

  axPreferredContentSizeCategoryName = [(AXBuddyDataPackage *)self axPreferredContentSizeCategoryName];
  [coderCopy encodeObject:axPreferredContentSizeCategoryName forKey:@"preferredContentSizeCategoryName"];

  axOSVersion = [(AXBuddyDataPackage *)self axOSVersion];
  [coderCopy encodeObject:axOSVersion forKey:@"axOSVersion"];

  axModel = [(AXBuddyDataPackage *)self axModel];
  [coderCopy encodeObject:axModel forKey:@"axModel"];

  [coderCopy encodeBool:-[AXBuddyDataPackage usesExtendedSlider](self forKey:{"usesExtendedSlider"), @"usesExtendedSlider"}];
  [coderCopy encodeBool:-[AXBuddyDataPackage hasHomeButton](self forKey:{"hasHomeButton"), @"AXSHasHomeButton"}];
}

+ (id)dataPackageForCurrentSettings
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = objc_alloc_init(self);
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = +[AXSettings sharedInstance];
  keysToIgnoreDuringBuddyTransfer = [v2 keysToIgnoreDuringBuddyTransfer];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  obj = [v4 initWithObjects:{*MEMORY[0x1E69E4BB0], *MEMORY[0x1E69E4F30], *MEMORY[0x1E69E4C70], *MEMORY[0x1E69E4D78], *MEMORY[0x1E69E4F78], *MEMORY[0x1E69E4F60], *MEMORY[0x1E69E4FA8], *MEMORY[0x1E69E4E90], *MEMORY[0x1E69E4F20], *MEMORY[0x1E69E4F10], *MEMORY[0x1E69E4E18], 0}];
  v5 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  v35 = keysToIgnoreDuringBuddyTransfer;
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E8B0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = CFPreferencesCopyKeyList(v11, v8, v9);
        if (v12)
        {
          v13 = v12;
          v14 = CFPreferencesCopyMultiple(v12, v11, v8, v9);
          v15 = [(__CFDictionary *)v14 objectForKey:@"AXSIgnoreTrackpad"];

          if (v15)
          {
            v16 = AXLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [(__CFDictionary *)v14 objectForKey:@"AXSIgnoreTrackpad"];
              *buf = 138412290;
              v43 = v17;
              _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, "Transferring ignore trackpad setting: %@", buf, 0xCu);

              keysToIgnoreDuringBuddyTransfer = v35;
            }
          }

          [(__CFDictionary *)v14 removeObjectsForKeys:keysToIgnoreDuringBuddyTransfer];
          if (v14)
          {
            [v36 setObject:v14 forKey:v11];
          }

          CFRelease(v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v6);
  }

  [v34 setAccessibilityOptions:v36];
  v18 = _AXSCopyPreferredContentSizeCategoryName();
  [v34 setAxPreferredContentSizeCategoryName:v18];

  [v34 setUsesExtendedSlider:_AXSLargeTextUsesExtendedRange() != 0];
  testData = [objc_opt_class() testData];

  if (testData)
  {
    v20 = AXLogSettings();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      testData2 = [objc_opt_class() testData];
      *buf = 138412290;
      v43 = testData2;
      _os_log_impl(&dword_18B15E000, v20, OS_LOG_TYPE_INFO, "Using test data mode settings: %@", buf, 0xCu);
    }

    testData3 = [objc_opt_class() testData];
    v23 = [testData3 objectForKey:@"AXSOSVersion"];
    [v34 setAxOSVersion:v23];

    testData4 = [objc_opt_class() testData];
    v25 = [testData4 objectForKey:@"AXSModel"];
    [v34 setAxModel:v25];

    testData5 = [objc_opt_class() testData];
    v27 = [testData5 objectForKey:@"AXSUsesExtendedRange"];
    [v34 setUsesExtendedSlider:{objc_msgSend(v27, "BOOLValue")}];
  }

  else
  {
    productVersionForBuddy = [self productVersionForBuddy];
    [v34 setAxOSVersion:productVersionForBuddy];

    deviceClassForBuddy = [self deviceClassForBuddy];
    [v34 setAxModel:deviceClassForBuddy];

    [v34 setHasHomeButton:{AXDeviceHasHomeButton(v30, v31)}];
  }

  return v34;
}

+ (void)setTestData:(id)data forModel:(id)model hasHomeButton:(BOOL)button largeTextUsesExtendedRange:(BOOL)range
{
  rangeCopy = range;
  buttonCopy = button;
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = @"AXSOSVersion";
  v19[1] = @"AXSModel";
  v20[0] = data;
  v20[1] = model;
  v19[2] = @"AXSHasHomeButton";
  v9 = MEMORY[0x1E696AD98];
  modelCopy = model;
  dataCopy = data;
  v12 = [v9 numberWithBool:buttonCopy];
  v20[2] = v12;
  v19[3] = @"AXSOSVersion";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:rangeCopy];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

  [objc_opt_class() setTestData:v14];
  v15 = AXLogSettings();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    testData = [objc_opt_class() testData];
    v17 = 138412290;
    v18 = testData;
    _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Setting test data mode settings: %@", &v17, 0xCu);
  }
}

- (void)applySavedSettings
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = AXLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_DEFAULT, "Applying saved settings", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(AXBuddyDataPackage *)self accessibilityOptions];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v24 = *v26;
    v6 = *MEMORY[0x1E695E8B8];
    v7 = *MEMORY[0x1E695E8B0];
    v8 = *MEMORY[0x1E695E898];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        accessibilityOptions = [(AXBuddyDataPackage *)self accessibilityOptions];
        v12 = [accessibilityOptions objectForKeyedSubscript:v10];

        [(AXBuddyDataPackage *)self processDomainDictionary:v12];
        v13 = AXLogSettings();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v10;
          _os_log_impl(&dword_18B15E000, v13, OS_LOG_TYPE_DEFAULT, "Applying saved settings domain: %@", buf, 0xCu);
        }

        v14 = AXLogSettings();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v12;
          _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_DEFAULT, "Applying saved settings: %@", buf, 0xCu);
        }

        accessibilityOptions2 = [(AXBuddyDataPackage *)self accessibilityOptions];
        v16 = [accessibilityOptions2 objectForKeyedSubscript:v10];
        CFPreferencesSetMultiple(v16, 0, v10, v6, v7);

        CFPreferencesSynchronize(v10, v6, v8);
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  axPreferredContentSizeCategoryName = [(AXBuddyDataPackage *)self axPreferredContentSizeCategoryName];
  if (axPreferredContentSizeCategoryName)
  {
    axPreferredContentSizeCategoryName2 = [(AXBuddyDataPackage *)self axPreferredContentSizeCategoryName];
    _AXSSetPreferredContentSizeCategoryName();
  }

  v19 = AXLogSettings();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    usesExtendedSlider = [(AXBuddyDataPackage *)self usesExtendedSlider];
    *buf = 67109120;
    LODWORD(v30) = usesExtendedSlider;
    _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_DEFAULT, "Uses extended slider: %d", buf, 8u);
  }

  [(AXBuddyDataPackage *)self usesExtendedSlider];
  _AXSSetLargeTextUsesExtendedRange();
  v21 = AXLogSettings();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = _AXSLargeTextUsesExtendedRange();
    *buf = 67109120;
    LODWORD(v30) = v22;
    _os_log_impl(&dword_18B15E000, v21, OS_LOG_TYPE_DEFAULT, "Saved extended range: %d", buf, 8u);
  }
}

- (void)processDomainDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = +[AXBuddyDataPackage deviceClassForBuddy];
  v6 = +[AXBuddyDataPackage productVersionForBuddy];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{AXDeviceHasHomeButton(v6, v7)}];
  testData = [objc_opt_class() testData];
  if (testData)
  {
    v10 = testData;
    v11 = _AXSInUnitTestMode();

    if (v11)
    {
      testData2 = [objc_opt_class() testData];
      v13 = [testData2 objectForKey:@"AXSOSVersion"];

      testData3 = [objc_opt_class() testData];
      v15 = [testData3 objectForKey:@"AXSModel"];

      testData4 = [objc_opt_class() testData];
      v17 = [testData4 objectForKey:@"AXSHasHomeButton"];

      v8 = v17;
      v6 = v13;
      v5 = v15;
    }
  }

  axModel = [(AXBuddyDataPackage *)self axModel];
  if (axModel)
  {
    v19 = axModel;
    axModel2 = [(AXBuddyDataPackage *)self axModel];
    v21 = [v5 isEqualToString:axModel2];

    if ((v21 & 1) == 0)
    {
      [dictionaryCopy removeObjectForKey:*MEMORY[0x1E6988708]];
    }
  }

  v22 = MEMORY[0x1E69E4F40];
  v23 = [dictionaryCopy objectForKey:*MEMORY[0x1E69E4F40]];
  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (![v23 count] || objc_msgSend(v23, "count") == 1 && objc_msgSend(v23, "containsObject:", &unk_1EFE96BF8)))
  {
    v24 = AXLogSettings();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v23;
      _os_log_impl(&dword_18B15E000, v24, OS_LOG_TYPE_DEFAULT, "Removing TC options because its empty or only has buddy settings: %@", &v26, 0xCu);
    }

    [dictionaryCopy removeObjectForKey:*v22];
  }

  if (([v8 BOOLValue] & 1) == 0 && -[AXBuddyDataPackage hasHomeButton](self, "hasHomeButton") || objc_msgSend(v8, "BOOLValue") && !-[AXBuddyDataPackage hasHomeButton](self, "hasHomeButton"))
  {
    v25 = AXLogSettings();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_18B15E000, v25, OS_LOG_TYPE_DEFAULT, "Removing Reduce motion preference from domain dict because home button changed", &v26, 2u);
    }

    [dictionaryCopy removeObjectForKey:*MEMORY[0x1E69E4EC0]];
  }

  [dictionaryCopy removeObjectForKey:*MEMORY[0x1E69E4F90]];
}

+ (id)dataBlobForBuddy
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AXBuddyDataPackage dataPackageForCurrentSettings];
  v10 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v10];
  v4 = v10;
  v5 = AXLogSettings();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(AXBuddyDataPackage *)v4];
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 length];
      *buf = 134217984;
      v12 = v8;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "Archived data blob for buddy with size %lu", buf, 0xCu);
    }

    v7 = v3;
  }

  return v7;
}

+ (void)restoreDataBlobForBuddy:(id)buddy
{
  v3 = MEMORY[0x1E696ACD0];
  buddyCopy = buddy;
  v10 = 0;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:buddyCopy error:&v10];

  v6 = v10;
  v7 = AXLogSettings();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AXBuddyDataPackage *)v6 restoreDataBlobForBuddy:v8];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_INFO, "Unarchived data blob for buddy", v9, 2u);
    }

    [v5 applySavedSettings];
  }
}

+ (void)dataBlobForBuddy
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error archiving data blob for buddy: %@", &v2, 0xCu);
}

+ (void)restoreDataBlobForBuddy:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving data blob from buddy: %@", &v2, 0xCu);
}

@end