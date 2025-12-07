@interface SSFeatureEnablerMigrator
+ (void)migrate;
@end

@implementation SSFeatureEnablerMigrator

+ (void)migrate
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v3 = CFPreferencesCopyAppValue(@"SBLastSystemVersion", @"com.apple.springboard");
  if (!v3)
  {
    CFPreferencesAppSynchronize(@"com.apple.migration");
    v3 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.migration");
  }

  v4 = +[SSLogConfig sharedFeatureEnablerMigrationConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v53 = 138543874;
  v54 = objc_opt_class();
  v55 = 2114;
  v56 = v3;
  v57 = 2114;
  v58 = v2;
  v8 = v54;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%{public}@] Feature Enabler migrating from version: %{public}@ to version: %{public}@", &v53, 32);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_14:
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    integerValue = [v3 integerValue];
    if (integerValue != [v2 integerValue])
    {
      CFPreferencesSetAppValue(@"com.apple.storeservices.itfe", 0, @"com.apple.itunesstored");
      CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
      v17 = +[SSLogConfig sharedFeatureEnablerMigrationConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        LODWORD(v19) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v19) = shouldLog2;
      }

      oSLogObject2 = [v17 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v19;
      }

      else
      {
        v19 &= 2u;
      }

      if (v19)
      {
        v21 = objc_opt_class();
        v53 = 138543362;
        v54 = v21;
        v22 = v21;
        LODWORD(v52) = 12;
        v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "[%{public}@] Feature Enabler removing enabled features", &v53, v52);

        if (!v23)
        {
LABEL_30:

          mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
          [mEMORY[0x1E69ADFB8] removeProfileWithIdentifier:@"com.apple.storeservices-itfe"];

          goto LABEL_31;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
        free(v23);
        SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject2);
      }

      goto LABEL_30;
    }
  }

LABEL_31:
  if (v3)
  {
    CFRelease(v3);
  }

  v31 = +[SSDevice currentDevice];
  productVersion = [v31 productVersion];

  v33 = CFPreferencesCopyAppValue(@"performedMigration11", @"com.apple.storeservices.itfe");
  if (SSIsInternalBuild(v33, v34) && [productVersion isEqualToString:@"11.0"] && !v33)
  {
    v35 = CFPreferencesCopyAppValue(@"features", @"com.apple.storeservices.itfe");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 mutableCopy];
    }

    else
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v37 = v36;
    v38 = MEMORY[0x1E695E118];
    [v36 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"amf"];
    CFPreferencesSetAppValue(@"features", v37, @"com.apple.storeservices.itfe");
    CFPreferencesSetAppValue(@"performedMigration11", v38, @"com.apple.storeservices.itfe");
    CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
    v39 = +[SSLogConfig sharedFeatureEnablerMigrationConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      LODWORD(v41) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v41) = shouldLog3;
    }

    oSLogObject3 = [v39 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v41;
    }

    else
    {
      v41 &= 2u;
    }

    if (v41)
    {
      v43 = objc_opt_class();
      v53 = 138543362;
      v54 = v43;
      v44 = v43;
      LODWORD(v52) = 12;
      v45 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "[%{public}@]: Enabling AMF by default for iOS 11", &v53, v52);

      if (!v45)
      {
LABEL_51:

        goto LABEL_52;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:4];
      free(v45);
      SSFileLog(v39, @"%@", v46, v47, v48, v49, v50, v51, oSLogObject3);
    }

    goto LABEL_51;
  }

LABEL_52:
}

@end