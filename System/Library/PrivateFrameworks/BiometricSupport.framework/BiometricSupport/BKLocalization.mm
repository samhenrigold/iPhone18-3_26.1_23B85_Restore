@interface BKLocalization
+ (id)getLocalizedString:(id)string;
+ (id)getLocalizedString:(id)string fromFile:(id)file;
+ (id)getLocalizedString:(id)string fromStringTable:(id)table withBundle:(id)bundle;
+ (id)getLocalizedStringOrNil:(id)nil fromStringTable:(id)table withBundle:(id)bundle;
+ (void)reportLocalizationABC;
@end

@implementation BKLocalization

+ (id)getLocalizedString:(id)string
{
  v4 = MEMORY[0x277CCA8D8];
  stringCopy = string;
  v6 = [v4 bundleWithPath:@"/System/Library/PrivateFrameworks/BiometricSupport.framework"];
  v7 = [self getLocalizedString:stringCopy fromStringTable:@"biometrickitd" withBundle:v6];

  return v7;
}

+ (id)getLocalizedString:(id)string fromFile:(id)file
{
  v6 = MEMORY[0x277CCA8D8];
  fileCopy = file;
  stringCopy = string;
  v9 = [v6 bundleWithPath:@"/System/Library/PrivateFrameworks/BiometricSupport.framework"];
  v10 = [self getLocalizedString:stringCopy fromStringTable:fileCopy withBundle:v9];

  return v10;
}

+ (void)reportLocalizationABC
{
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

+ (id)getLocalizedString:(id)string fromStringTable:(id)table withBundle:(id)bundle
{
  v29 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  tableCopy = table;
  bundleCopy = bundle;
  v11 = [self getLocalizedStringOrNil:stringCopy fromStringTable:tableCopy withBundle:bundleCopy];
  v12 = v11;
  if (!v11 || [v11 isEqualToString:stringCopy])
  {
    v13 = [bundleCopy pathForResource:tableCopy ofType:@"loctable"];
    v14 = MEMORY[0x277D86220];
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x277CCAA00];
      v17 = v15;
      defaultManager = [v16 defaultManager];
      v25 = 138412546;
      v26 = v13;
      v27 = 1024;
      LODWORD(v28) = [defaultManager fileExistsAtPath:v13];
      _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_DEFAULT, "BKLocalization Loctable path='%@' exists=%d\n", &v25, 0x12u);
    }

    v19 = [bundleCopy localizedStringForKey:stringCopy value:0 table:tableCopy localization:@"en"];

    if (__osLog)
    {
      v20 = __osLog;
    }

    else
    {
      v20 = v14;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
      v22 = v20;
      uTF8String = [v19 UTF8String];
      v25 = 138412546;
      v26 = stringCopy;
      v27 = 2080;
      v28 = uTF8String;
      _os_log_impl(&dword_223E00000, v22, OS_LOG_TYPE_DEFAULT, "BKLocalization fallback to en: %@ => %s\n", &v25, 0x16u);
    }

    if (!v19)
    {
      v19 = stringCopy;
    }

    [self reportLocalizationABC];

    v12 = v19;
  }

  return v12;
}

+ (id)getLocalizedStringOrNil:(id)nil fromStringTable:(id)table withBundle:(id)bundle
{
  v44 = *MEMORY[0x277D85DE8];
  nilCopy = nil;
  tableCopy = table;
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v10 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v10 count])
        {
          v11 = (__osLog ? __osLog : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_DEFAULT, "BKLocalization getLocalizedStringOrNil: languagePreferences are empty\n", buf, 2u);
          }
        }

        v12 = MEMORY[0x277CCA8D8];
        localizations = [bundleCopy localizations];
        v14 = [v12 preferredLocalizationsFromArray:localizations forPreferences:v10];

        if (__osLog)
        {
          v15 = __osLog;
        }

        else
        {
          v15 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v14 count];
          *buf = 67109378;
          *v40 = v17;
          *&v40[4] = 2112;
          *&v40[6] = v14;
          _os_log_impl(&dword_223E00000, v16, OS_LOG_TYPE_DEFAULT, "BKLocalization preferred Localizations total: %d contents %@\n", buf, 0x12u);
        }

        v34 = v10;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v36;
LABEL_17:
          v22 = 0;
          while (1)
          {
            if (*v36 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v35 + 1) + 8 * v22);
            v24 = [bundleCopy localizedStringForKey:nilCopy value:0 table:tableCopy localization:v23];
            if (__osLog)
            {
              v25 = __osLog;
            }

            else
            {
              v25 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v23;
              v27 = v25;
              uTF8String = [v23 UTF8String];
              uTF8String2 = [v24 UTF8String];
              *buf = 136315650;
              *v40 = uTF8String;
              *&v40[8] = 2112;
              *&v40[10] = nilCopy;
              v41 = 2080;
              v42 = uTF8String2;
              _os_log_impl(&dword_223E00000, v27, OS_LOG_TYPE_DEFAULT, "BKLocalization [%s] %@ => %s\n", buf, 0x20u);
            }

            if (v24)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v20)
              {
                goto LABEL_17;
              }

              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          v24 = 0;
        }

        v10 = v34;
        goto LABEL_48;
      }

      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_47:
        v24 = 0;
LABEL_48:

        goto LABEL_49;
      }

      *buf = 0;
      v32 = "BKLocalization languagePreferences are not kind of NSArray\n";
    }

    else
    {
      if (__osLog)
      {
        v31 = __osLog;
      }

      else
      {
        v31 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 0;
      v32 = "BKLocalization languagePreferences are not available\n";
    }

    _os_log_impl(&dword_223E00000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_47;
  }

  if (__osLog)
  {
    v30 = __osLog;
  }

  else
  {
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_223E00000, v30, OS_LOG_TYPE_ERROR, "BKLocalization getLocalizedStringOrNil: bundle is nil\n", buf, 2u);
  }

  v24 = 0;
LABEL_49:

  return v24;
}

@end