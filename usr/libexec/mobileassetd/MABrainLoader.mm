@interface MABrainLoader
+ (id)sharedInstance;
- (BOOL)healthCheck:(id)check history:(id)history;
- (BOOL)loadCryptex:(BOOL)cryptex bundle:(id)bundle bundleName:(id)name;
- (BOOL)loadTrustCache:(BOOL)cache bundle:(id)bundle bundleName:(id)name needsUnlock:(BOOL *)unlock;
- (BOOL)verify:(id)verify history:(id)history;
- (char)getTrainName;
- (id)loadHistory;
- (int)run:(int)run argv:(char *)argv;
- (int)run:(int)run argv:(char *)argv info:(id)info path:(const char *)path history:(id)history;
- (void)recordLaunch:(id)launch history:(id)history;
@end

@implementation MABrainLoader

+ (id)sharedInstance
{
  if (qword_100010608 != -1)
  {
    sub_1000067E0();
  }

  return qword_100010600;
}

- (BOOL)loadCryptex:(BOOL)cryptex bundle:(id)bundle bundleName:(id)name
{
  cryptexCopy = cryptex;
  bundleCopy = bundle;
  nameCopy = name;
  if (([bundleCopy isPersonalized] & 1) == 0 && (objc_msgSend(bundleCopy, "isGloballySigned") & 1) == 0 && !cryptexCopy)
  {
    v12 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = nameCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ is not personalized, and unpersonalized brains are not allowed.", buf, 0xCu);
    }

    v13 = 0;
LABEL_17:

    v15 = 0;
    goto LABEL_18;
  }

  v9 = sub_100000D90(@"Brain");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (cryptexCopy)
  {
    if (!v10)
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v19 = nameCopy;
    v11 = "[MAB] MobileAssetBrain bundle %@ is personalized, but unpersonalized brains are also allowed.";
  }

  else
  {
    if (!v10)
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v19 = nameCopy;
    v11 = "[MAB] MobileAssetBrain bundle %@ is personalized.";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_13:

  v17 = 0;
  v14 = [bundleCopy graft:&v17];
  v13 = v17;
  if ((v14 & 1) == 0)
  {
    v12 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = nameCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[MAB] Error grafting MobileAssetBrain bundle %@: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v15 = 1;
LABEL_18:

  return v15;
}

- (BOOL)loadTrustCache:(BOOL)cache bundle:(id)bundle bundleName:(id)name needsUnlock:(BOOL *)unlock
{
  LODWORD(v8) = cache;
  bundleCopy = bundle;
  nameCopy = name;
  if ([bundleCopy isPersonalized])
  {
    trustCachePath = [bundleCopy trustCachePath];
    v41 = 0;
    v12 = [NSData dataWithContentsOfFile:trustCachePath options:0 error:&v41];
    v13 = v41;

    if (v13)
    {
      v14 = sub_100000D90(@"Brain");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        LOBYTE(v8) = 0;
LABEL_38:

        goto LABEL_39;
      }

      trustCachePath2 = [bundleCopy trustCachePath];
      *buf = 138412546;
      v43 = trustCachePath2;
      v44 = 2112;
      *v45 = v13;
      v16 = "[MAB] Error loading trust cache at %@: %@";
      v17 = v14;
      v18 = 22;
      goto LABEL_5;
    }

    ticketPath = [bundleCopy ticketPath];
    v40 = 0;
    v14 = [NSData dataWithContentsOfFile:ticketPath options:0 error:&v40];
    v13 = v40;

    if (v13)
    {
      trustCachePath2 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(trustCachePath2, OS_LOG_TYPE_ERROR))
      {
        ticketPath2 = [bundleCopy ticketPath];
        *buf = 138412546;
        v43 = ticketPath2;
        v44 = 2112;
        *v45 = v13;
        _os_log_impl(&_mh_execute_header, trustCachePath2, OS_LOG_TYPE_ERROR, "[MAB] Error loading Cryptex1 ticket at %@: %@", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if ([v12 length] >> 32)
    {
      v22 = 0;
    }

    else
    {
      v22 = [v12 length];
    }

    if ([v14 length]>> 32)
    {
      v23 = 0;
    }

    else
    {
      v23 = [v14 length];
    }

    if (!v12 || !v22 || !v14 || !v23)
    {
      trustCachePath2 = sub_100000D90(@"Brain");
      if (!os_log_type_enabled(trustCachePath2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138412802;
      v43 = nameCopy;
      v44 = 2112;
      *v45 = v12;
      *&v45[8] = 2112;
      *&v45[10] = v14;
      v16 = "[MAB] Trust cache and/or ticket for MobileAssetBrain bundle %@ are invalid\ntrustCache=%@\nticket=%@";
      v17 = trustCachePath2;
      v18 = 32;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
LABEL_36:

      goto LABEL_37;
    }

    hasValidCurrentBootOnlyTicket = [bundleCopy hasValidCurrentBootOnlyTicket];
    bytes = [v12 bytes];
    bytes2 = [v14 bytes];
    if (hasValidCurrentBootOnlyTicket)
    {
      v26 = 24;
    }

    else
    {
      v26 = 17;
    }

    trust_cache = amfi_load_trust_cache(v26, bytes, v22, bytes2, v23, 0, 0);
    v28 = __error();
    if (trust_cache)
    {
      v29 = *v28;
      v30 = sub_100001A94();
      v31 = sub_100000D90(@"Brain");
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (v30)
      {
        if (v32)
        {
          v33 = strerror(v29);
          *buf = 138412802;
          v43 = nameCopy;
          v44 = 1024;
          *v45 = v29;
          *&v45[4] = 2080;
          *&v45[6] = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[MAB] Failed to load trust cache for MobileAssetBrain bundle %@ perhaps due to locked device state: errno=%d (%s)", buf, 0x1Cu);
        }

        LOBYTE(v8) = 0;
        *unlock = 1;
        goto LABEL_38;
      }

      if (v32)
      {
        v38 = strerror(v29);
        *buf = 138412802;
        v43 = nameCopy;
        v44 = 1024;
        *v45 = v29;
        *&v45[4] = 2080;
        *&v45[6] = v38;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[MAB] Failed to load trust cache for MobileAssetBrain bundle %@: errno=%d (%s)", buf, 0x1Cu);
      }

      if (!v8)
      {
        goto LABEL_38;
      }

      v8 = sub_100000D90(@"Brain");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v35 = "[MAB] Proceeding because unpersonalized brains are allowed.";
      v36 = v8;
      v37 = 2;
    }

    else
    {
      v8 = sub_100000D90(@"Brain");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_48:

        LOBYTE(v8) = 1;
        goto LABEL_38;
      }

      *buf = 138412290;
      v43 = nameCopy;
      v35 = "[MAB] Successfully loaded trust cache for MobileAssetBrain bundle %@";
      v36 = v8;
      v37 = 12;
    }

    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
    goto LABEL_48;
  }

  v19 = sub_100000D90(@"Brain");
  v13 = v19;
  if (v8)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain bundle %@ is not personalized, but unpersonalized brains are allowed.", buf, 0xCu);
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ is not personalized, and unpersonalized brains are not allowed.", buf, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

LABEL_39:

  return v8;
}

- (id)loadHistory
{
  memset(&v20, 0, sizeof(v20));
  if (lstat([@"/.nofollow/private/var/run/com.apple.mobileassetd-MobileAssetBrain" fileSystemRepresentation], &v20))
  {
    v2 = *__error();
    v3 = sub_100000D90(@"Brain");
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2 == 2)
    {
      if (v4)
      {
        *buf = 0;
        v5 = "[MAB] mobileassetd has no launch history; possible first launch since boot.";
LABEL_13:
        v16 = v3;
        v17 = 2;
        goto LABEL_14;
      }
    }

    else if (v4)
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 136315138;
      v22 = v15;
      v5 = "[MAB] Error reading mobileassetd launch history file metadata: %s";
      v16 = v3;
      v17 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v5, buf, v17);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v20.st_size <= 0x10000)
  {
    v3 = [NSURL fileURLWithPath:@"/.nofollow/private/var/run/com.apple.mobileassetd-MobileAssetBrain"];
    v19 = 0;
    v6 = [NSDictionary dictionaryWithContentsOfURL:v3 error:&v19];
    v7 = v19;
    v8 = sub_100000D90(@"Brain");
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v7;
        v10 = "[MAB] Could not load mobileassetd launch history: %@";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 12;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "[MAB] mobileassetd launch history successfully loaded";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 2;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v3 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "[MAB] mobileassetd launch history file is too large; disregarding.";
    goto LABEL_13;
  }

LABEL_15:
  v6 = 0;
LABEL_16:

  return v6;
}

- (BOOL)healthCheck:(id)check history:(id)history
{
  historyCopy = history;
  bundleId = [check bundleId];
  v7 = [historyCopy objectForKeyedSubscript:@"LaunchRecords"];
  v8 = [v7 objectForKeyedSubscript:bundleId];

  if (v8)
  {
    v9 = [v8 count];
    v29 = +[NSDate date];
    if (v9)
    {
      v28 = historyCopy;
      v10 = 0;
      v11 = 0;
      v27 = v9;
      v12 = v9 - 1;
      v13 = 0.0;
      do
      {
        v14 = v10;
        v10 = [v8 objectAtIndexedSubscript:v12];

        v15 = [v10 objectForKeyedSubscript:@"LaunchDate"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 timeIntervalSinceDate:v15];
          v13 = v16;
          if (v16 <= 60.0)
          {
            ++v11;
          }
        }

        else
        {
          v17 = sub_100000D90(@"Brain");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v31 = @"LaunchDate";
            v32 = 2112;
            v33 = *&v10;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[MAB] Invalid %@ field in launch record:\n%@", buf, 0x16u);
          }
        }

        --v12;
      }

      while (v12 != -1);
      if (v11 >= 3)
      {
        v18 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v31 = bundleId;
          v32 = 2048;
          v33 = *&v11;
          v34 = 2080;
          v35 = "s";
          v36 = 2048;
          v37 = 0x404E000000000000;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ has been relaunched %lu time%s in the last %0.1f seconds. This is unhealthy!", buf, 0x2Au);
        }

        v19 = 0;
        historyCopy = v28;
        goto LABEL_31;
      }

      if (v13 >= 3600.0)
      {
        v23 = v27 / v13;
        if (v23 >= 0.00111111111)
        {
          v18 = sub_100000D90(@"Brain");
          historyCopy = v28;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v26 = "s";
            *buf = 138412802;
            v31 = bundleId;
            if (v23 * 3600.0 == 1.0)
            {
              v26 = "";
            }

            v32 = 2048;
            v33 = v23 * 3600.0;
            v34 = 2080;
            v35 = v26;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ has been relaunched on average %0.1f time%s per hour. This is unhealthy!", buf, 0x20u);
          }

          v19 = 0;
          goto LABEL_31;
        }
      }

      historyCopy = v28;
      if (v11)
      {
        v18 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v24 = "s";
          *buf = 138413058;
          v31 = bundleId;
          if (v11 == 1)
          {
            v24 = "";
          }

          v32 = 2048;
          v33 = *&v11;
          v34 = 2080;
          v35 = v24;
          v36 = 2048;
          v37 = 0x404E000000000000;
          v20 = "[MAB] MobileAssetBrain bundle %@ has been relaunched %lu time%s in the last %0.1f seconds.";
          v21 = v18;
          v22 = 42;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v10 = 0;
    }

    v18 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = bundleId;
      v20 = "[MAB] MobileAssetBrain bundle %@ appears to be healthy.";
      v21 = v18;
      v22 = 12;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }

LABEL_30:
    v19 = 1;
LABEL_31:

    goto LABEL_32;
  }

  v10 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = bundleId;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MAB] There are no launch records for MobileAssetBrain bundle %@", buf, 0xCu);
  }

  v19 = 1;
LABEL_32:

  return v19;
}

- (BOOL)verify:(id)verify history:(id)history
{
  verifyCopy = verify;
  historyCopy = history;
  bundleId = [verifyCopy bundleId];
  graftPath = [verifyCopy graftPath];
  v10 = [graftPath stringByAppendingPathComponent:@"/System/Library/CoreServices/RestoreVersion.plist"];

  v11 = [NSURL fileURLWithPath:v10];
  v35 = 0;
  v12 = [NSDictionary dictionaryWithContentsOfURL:v11 error:&v35];
  v13 = v35;

  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"RestoreLongVersion"];
    v15 = +[SUCoreDevice sharedDevice];
    restoreVersion = [v15 restoreVersion];

    if (v14 && restoreVersion)
    {
      v34 = historyCopy;
      v17 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v14];
      v18 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:restoreVersion];
      v19 = v18;
      if (!v17 || !v18)
      {
        if (!v17)
        {
          v23 = sub_100000D90(@"Brain");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = bundleId;
            v38 = 2112;
            v39 = v14;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ RestoreVersion string is invalid: %@", buf, 0x16u);
          }
        }

        if (v19)
        {
          goto LABEL_44;
        }

        v20 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = restoreVersion;
          v21 = "[MAB] System RestoreVersion string is invalid: %@";
          v24 = v20;
          v25 = 12;
LABEL_42:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v21, buf, v25);
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      if ([v18 isComparable:v17] & 1) != 0 || (sub_100001910())
      {
        if ([v19 isComparable:v17])
        {
          if ([v19 compare:v17] == 1)
          {
            v20 = sub_100000D90(@"Brain");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v37 = bundleId;
              v38 = 2112;
              v39 = v14;
              v40 = 2112;
              v41 = restoreVersion;
              v21 = "[MAB] MobileAssetBrain bundle %@ is older than current OS: %@ < %@";
LABEL_41:
              v24 = v20;
              v25 = 32;
              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v32 = sub_100000D90(@"Brain");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            buildGroup = [v19 buildGroup];
            buildGroup2 = [v17 buildGroup];
            *buf = 138412802;
            v37 = bundleId;
            v38 = 2048;
            v39 = buildGroup;
            v40 = 2048;
            v41 = buildGroup2;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ is from a different build group than the OS, but cross build group brains are allowed. (%ld -> %ld)", buf, 0x20u);
          }
        }

        if (sub_100001948())
        {
          v28 = sub_100000D90(@"Brain");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MAB] MABrain health check is disabled.", buf, 2u);
          }

          v22 = 1;
        }

        else
        {
          v22 = [(MABrainLoader *)self healthCheck:verifyCopy history:v34];
        }

        goto LABEL_45;
      }

      v20 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        buildGroup3 = [v19 buildGroup];
        buildGroup4 = [v17 buildGroup];
        *buf = 138412802;
        v37 = bundleId;
        v38 = 2048;
        v39 = buildGroup3;
        v40 = 2048;
        v41 = buildGroup4;
        v21 = "[MAB] MobileAssetBrain bundle %@ is from a different build group than the OS. (%ld -> %ld)";
        goto LABEL_41;
      }

LABEL_43:

LABEL_44:
      v22 = 0;
LABEL_45:

      historyCopy = v34;
LABEL_46:

      goto LABEL_47;
    }

    if (v14)
    {
      if (restoreVersion)
      {
LABEL_17:
        v22 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v26 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = bundleId;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ RestoreVersion string is nil", buf, 0xCu);
      }

      if (restoreVersion)
      {
        goto LABEL_17;
      }
    }

    v17 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[MAB] System RestoreVersion string is nil", buf, 2u);
    }

    v22 = 0;
    goto LABEL_46;
  }

  v14 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v37 = bundleId;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ RestoreVersion.plist could not be loaded: %@", buf, 0x16u);
  }

  v22 = 0;
LABEL_48:

  return v22;
}

- (void)recordLaunch:(id)launch history:(id)history
{
  launchCopy = launch;
  historyCopy = history;
  v7 = @"built-in";
  v38 = launchCopy;
  if (launchCopy)
  {
    v7 = launchCopy;
  }

  v40 = v7;
  if (historyCopy)
  {
    v8 = [historyCopy mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(NSMutableDictionary);
  }

  v39 = v8;
  v9 = [historyCopy objectForKeyedSubscript:@"LaunchRecords"];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
  }

  v13 = v12;

  v14 = [v13 objectForKeyedSubscript:v40];
  v15 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = [v14 count];
  v18 = v17;
  if (v17 < 0x33)
  {
    v19 = 0;
    goto LABEL_18;
  }

  v19 = v17 - 50;
  v20 = sub_100000D90(@"Brain");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (launchCopy)
  {
    if (v21)
    {
      *buf = 67109378;
      LODWORD(v44[0]) = 50;
      WORD2(v44[0]) = 2112;
      *(v44 + 6) = launchCopy;
      v22 = "[MAB] Only preserving the last %d launch records for MobileAssetBrain bundle %@";
      v23 = v20;
      v24 = 18;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }
  }

  else if (v21)
  {
    *buf = 67109120;
    LODWORD(v44[0]) = 50;
    v22 = "[MAB] Only preserving the last %d launch records for built-in MobileAssetBrain";
    v23 = v20;
    v24 = 8;
    goto LABEL_16;
  }

LABEL_18:
  if (v19 < v18)
  {
    do
    {
      v25 = [v14 objectAtIndexedSubscript:v19];
      [v15 addObject:v25];

      ++v19;
    }

    while (v18 != v19);
  }

  v26 = +[NSDate date];
  [v16 setObject:v26 forKeyedSubscript:@"LaunchDate"];

  v27 = [NSNumber numberWithInt:getpid()];
  [v16 setObject:v27 forKeyedSubscript:@"PID"];

  [v15 addObject:v16];
  [v13 setObject:v15 forKeyedSubscript:v40];
  [v39 setObject:v13 forKeyedSubscript:@"LaunchRecords"];
  v42 = 0;
  v28 = [NSPropertyListSerialization dataWithPropertyList:v39 format:100 options:0 error:&v42];
  v29 = v42;
  v30 = v29;
  if (v28)
  {
    v41 = v29;
    v31 = [v28 writeToFile:@"/.nofollow/private/var/run/com.apple.mobileassetd-MobileAssetBrain" options:0 error:&v41];
    v32 = v41;

    v33 = sub_100000D90(@"Brain");
    v34 = v33;
    if (v31)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44[0] = v16;
        v35 = "[MAB] Successfully updated launch history with new record:\n%@";
        v36 = v34;
        v37 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
        _os_log_impl(&_mh_execute_header, v36, v37, v35, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44[0] = v32;
      v35 = "[MAB] Could not write launch history: %@";
      v36 = v34;
      v37 = OS_LOG_TYPE_ERROR;
      goto LABEL_29;
    }
  }

  else
  {
    v34 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44[0] = v30;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[MAB] Could not serialize launch history: %@", buf, 0xCu);
    }

    v32 = v30;
  }
}

- (int)run:(int)run argv:(char *)argv info:(id)info path:(const char *)path history:(id)history
{
  v10 = *&run;
  infoCopy = info;
  historyCopy = history;
  v14 = objc_autoreleasePoolPush();
  v15 = [infoCopy mutableCopy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000056EC;
  block[3] = &unk_10000C438;
  block[4] = self;
  v16 = infoCopy;
  v32 = v16;
  v17 = historyCopy;
  v33 = v17;
  if (qword_100010610 != -1)
  {
    dispatch_once(&qword_100010610, block);
  }

  v18 = [NSString stringWithUTF8String:path];
  [v15 setObject:v18 forKeyedSubscript:@"libmobileassetd-path"];

  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"allow-st-extractor-plugin"];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"allow-st-extraction-service-privileged"];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"supports-graceful-ungraft"];
  v19 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    pathCopy = path;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MAB] Attempting to load MobileAssetBrain at %s", buf, 0xCu);
  }

  v20 = dlopen(path, 261);
  if (v20)
  {
    v21 = v20;
    v22 = dlsym(v20, "mobileassetd_main");
    if (v22)
    {
      v23 = v22;
      v24 = [NSDictionary dictionaryWithDictionary:v15];

      v25 = v23(v10, argv, v24);
      v16 = v24;
    }

    else
    {
      v28 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = dlerror();
        *buf = 136315138;
        pathCopy = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[MAB] Failed to find MobileAssetBrain entry point: %s", buf, 0xCu);
      }

      v25 = 1;
    }

    dlclose(v21);
  }

  else
  {
    v26 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = dlerror();
      *buf = 136315138;
      pathCopy = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[MAB] Failed to load MobileAssetBrain: %s", buf, 0xCu);
    }

    v25 = 1;
  }

  objc_autoreleasePoolPop(v14);
  return v25;
}

- (char)getTrainName
{
  if (qword_100010618 != -1)
  {
    sub_1000067F4();
  }

  return qword_100010620;
}

- (int)run:(int)run argv:(char *)argv
{
  v4 = *&run;
  context = objc_autoreleasePoolPush();
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_1000062A0;
  v73 = sub_1000062B0;
  v74 = 0;
  v6 = sub_100001980();
  v7 = v6;
  v8 = @"<unknown>";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v68 = 0;
  loadHistory = [(MABrainLoader *)self loadHistory];
  v11 = sub_1000018BC();
  if (v11)
  {
    *&v85 = 0;
    *(&v85 + 1) = &v85;
    v86 = 0x2020000000;
    v87 = 0;
    v13 = sub_100001414(v11, v12);
    v14 = sub_100001884();
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000062B8;
    v59[3] = &unk_10000C480;
    v64 = &v85;
    v52 = v13;
    v60 = v52;
    selfCopy = self;
    v67 = v14;
    v15 = loadHistory;
    v62 = v15;
    v65 = &v75;
    v63 = v9;
    v66 = &v69;
    v16 = objc_retainBlock(v59);
    v17 = +[__MABuiltinBrainBundle__ proposedTargetPath];
    v58 = 0;
    v18 = [__MABuiltinBrainBundle__ destageProposed:&v58];
    v19 = v58;
    if ((v18 & 1) == 0)
    {
      v20 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[MAB] Error de-staging proposed MobileAssetBrain: %@", buf, 0xCu);
      }
    }

    if ((v16[2])(v16, @"Proposed", v17, &v68 + 1))
    {
      v21 = [v70[5] mutableCopy];
      [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:@"commit"];
      v22 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v84 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MAB] Info dict for proposed brain is %@", buf, 0xCu);
      }

      [(MABrainLoader *)self run:v4 argv:argv info:v21 path:v76[3] history:v15];
    }

    else
    {
      if (HIBYTE(v68) == 1)
      {
        v57 = v19;
        v23 = [__MABuiltinBrainBundle__ stageProposed:v17 error:&v57];
        v24 = v57;

        if ((v23 & 1) == 0)
        {
          v25 = sub_100000D90(@"Brain");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[MAB] Error re-staging proposed MobileAssetBrain for post unlock: %@", buf, 0xCu);
          }

          HIBYTE(v68) = 0;
        }
      }

      else
      {
        if (*(*(&v85 + 1) + 24) != 1)
        {
          goto LABEL_25;
        }

        v26 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v17 lastPathComponent];
          *buf = 138412290;
          v84 = lastPathComponent;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MAB] Proposed MobileAssetBrain bundle %@ requires a reboot", buf, 0xCu);
        }

        v56 = v19;
        v28 = [__MABuiltinBrainBundle__ stageProposed:v17 error:&v56];
        v24 = v56;

        if ((v28 & 1) == 0)
        {
          v29 = sub_100000D90(@"Brain");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v24;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[MAB] Error re-staging proposed MobileAssetBrain for post reboot: %@", buf, 0xCu);
          }
        }
      }

      v19 = v24;
    }

LABEL_25:
    v30 = +[__MABuiltinBrainBundle__ currentTargetPath];

    if ((v16[2])(v16, @"Current", v30, &v68))
    {
      v31 = [v70[5] mutableCopy];
      v32 = v31;
      if (HIBYTE(v68) == 1)
      {
        [v31 setObject:&__kCFBooleanTrue forKeyedSubscript:@"relaunch-on-unlock"];
      }

      v33 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v84 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[MAB] Info dict for current brain is %@", buf, 0xCu);
      }

      [(MABrainLoader *)self run:v4 argv:argv info:v32 path:v76[3] history:v15];
    }

    else
    {
      if (!v30 || (v68 & 1) != 0)
      {
        goto LABEL_38;
      }

      v34 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent2 = [v30 lastPathComponent];
        *buf = 138412290;
        v84 = lastPathComponent2;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[MAB] Current MobileAssetBrain bundle %@ is no longer viable", buf, 0xCu);
      }

      v55 = v19;
      v36 = [__MABuiltinBrainBundle__ destageCurrent:&v55];
      v37 = v55;

      if (v36)
      {
        v19 = v37;
        goto LABEL_38;
      }

      v32 = sub_100000D90(@"Brain");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v37;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[MAB] Error de-staging current MobileAssetBrain: %@", buf, 0xCu);
      }

      v19 = v37;
    }

LABEL_38:
    _Block_object_dispose(&v85, 8);
  }

  fileSystemRepresentation = [@"/usr/lib/libmobileassetd.dylib" fileSystemRepresentation];
  v76[3] = fileSystemRepresentation;
  getTrainName = [(MABrainLoader *)self getTrainName];
  if (getTrainName)
  {
    v81[0] = @"built-in";
    v81[1] = @"_CompatibilityVersion";
    v82[0] = &__kCFBooleanTrue;
    v82[1] = &off_10000CE68;
    v82[2] = v9;
    v81[2] = @"mobileassetd-uuid";
    v81[3] = @"mobileassetd-trainname";
    v40 = [NSString stringWithUTF8String:getTrainName];
    v82[3] = v40;
    v41 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];
    v42 = v70[5];
    v70[5] = v41;
  }

  else
  {
    v43 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v85) = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[MAB] Unable to determine train name", &v85, 2u);
    }

    v79[0] = @"built-in";
    v79[1] = @"_CompatibilityVersion";
    v80[0] = &__kCFBooleanTrue;
    v80[1] = &off_10000CE68;
    v79[2] = @"mobileassetd-uuid";
    v80[2] = v9;
    v44 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:3];
    v40 = v70[5];
    v70[5] = v44;
  }

  v45 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v70[5];
    LODWORD(v85) = 138412290;
    *(&v85 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[MAB] Info dict for builtin brain is %@", &v85, 0xCu);
  }

  if ((v68 & 0x100) != 0 || v68 == 1)
  {
    v47 = [v70[5] mutableCopy];
    [v47 setObject:&__kCFBooleanTrue forKeyedSubscript:@"relaunch-on-unlock"];
    v48 = [NSDictionary dictionaryWithDictionary:v47];
    v49 = v70[5];
    v70[5] = v48;
  }

  v50 = [(MABrainLoader *)self run:v4 argv:argv info:v70[5] path:v76[3] history:loadHistory];

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v75, 8);
  objc_autoreleasePoolPop(context);
  return v50;
}

@end