@interface VVDataMigrator
+ (id)carrierServiceName;
- (void)createFoldersIfNecessary;
- (void)performIMAPFilePathMigration;
@end

@implementation VVDataMigrator

+ (id)carrierServiceName
{
  CFPreferencesAppSynchronize(@"com.apple.voicemail.datamigration");
  v2 = CFPreferencesCopyAppValue(@"DataMigrationStatus", @"com.apple.voicemail.datamigration");

  return v2;
}

- (void)createFoldersIfNecessary
{
  accountDir = [(VVDataMigrator *)self accountDir];
  path = [accountDir path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:path];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    v7 = [v6 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0 && v8)
    {
      v9 = vm_vmd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10009E334(path, v8, v9);
      }
    }
  }
}

- (void)performIMAPFilePathMigration
{
  v3 = sub_10008546C(self);
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist"];
  path = [v4 path];

  accountDir = [(VVDataMigrator *)self accountDir];
  v7 = [accountDir URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist"];
  path2 = [v7 path];

  v9 = +[NSFileManager defaultManager];
  LODWORD(accountDir) = [v9 fileExistsAtPath:path2];

  if (accountDir)
  {
    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = path2;
      v11 = "Determined that file exists at destination path: %@, skipping migration";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:path];

  v10 = vm_vmd_log();
  v14 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      *buf = 138412290;
      *&buf[4] = path;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined that file exists at fromFilePath: %@", buf, 0xCu);
    }

    v10 = [[NSDictionary alloc] initWithContentsOfFile:path];
    v53 = [v10 objectForKeyedSubscript:@"AccountSettings"];
    v15 = [v53 objectForKeyedSubscript:@"name"];
    v16 = INIT_DECOMPOSED_PHONE_NUMBER[1];
    *buf = INIT_DECOMPOSED_PHONE_NUMBER[0];
    v64 = v16;
    v17 = INIT_DECOMPOSED_PHONE_NUMBER[3];
    *numBytes = INIT_DECOMPOSED_PHONE_NUMBER[2];
    *v66 = v17;
    normalizedPhoneNumber = [(VVDataMigrator *)self normalizedPhoneNumber];
    [normalizedPhoneNumber cStringUsingEncoding:1];
    isoCountryCode = [(VVDataMigrator *)self isoCountryCode];
    PNDecomposeForCountry();

    v20 = CFStringCreateWithBytes(kCFAllocatorDefault, numBytes[0], LODWORD(numBytes[1]), 0x8000100u, 0);
    v21 = CFStringCreateWithBytes(kCFAllocatorDefault, v66[0], LODWORD(v66[1]), 0x8000100u, 0);
    v22 = [NSString stringWithFormat:@"%@%@", v20, v21];
    v23 = vm_vmd_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 138412546;
      v58 = v15;
      v59 = 2112;
      v60 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Determined userName:%@ strippedPhoneNumberString:%@", v57, 0x16u);
    }

    v54 = v15;
    if (![v15 containsString:v22])
    {
      v27 = vm_vmd_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        normalizedPhoneNumber2 = [(VVDataMigrator *)self normalizedPhoneNumber];
        *v57 = 138412802;
        v58 = path;
        v59 = 2112;
        v60 = normalizedPhoneNumber2;
        v61 = 2112;
        v62 = v54;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Determined that this is not the account we want to migrate: %@, searchHint:%@, userName: %@", v57, 0x20u);
      }

      goto LABEL_32;
    }

    v48 = v22;
    v24 = [[NSURL alloc] initFileURLWithPath:path];
    v25 = [[NSURL alloc] initFileURLWithPath:path2];
    v26 = +[NSFileManager defaultManager];
    v56 = 0;
    v51 = v25;
    v52 = v24;
    LODWORD(v25) = [v26 copyItemAtURL:v24 toURL:v25 error:&v56];
    v27 = v56;

    v28 = vm_vmd_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    v47 = v25;
    v49 = v21;
    v50 = v20;
    if ((v25 & 1) != 0 || !v27)
    {
      if (v29)
      {
        *v57 = 138412546;
        v58 = v52;
        v59 = 2112;
        v60 = v51;
        v30 = "Performed migration fromURL:%@ toURL:%@";
        v31 = v28;
        v32 = 22;
        goto LABEL_21;
      }
    }

    else if (v29)
    {
      *v57 = 138412802;
      v58 = v52;
      v59 = 2112;
      v60 = v51;
      v61 = 2112;
      v62 = v27;
      v30 = "Error while performing migration fromURL:%@ toURL:%@ error:%@";
      v31 = v28;
      v32 = 32;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, v57, v32);
    }

    v35 = sub_10008546C(v34);
    v36 = [v35 URLByAppendingPathComponent:@"Checkpoint.plist"];

    accountDir2 = [(VVDataMigrator *)self accountDir];
    v38 = [accountDir2 URLByAppendingPathComponent:@"Checkpoint.plist"];

    v39 = +[NSFileManager defaultManager];
    v55 = 0;
    v40 = [v39 copyItemAtURL:v36 toURL:v38 error:&v55];
    v41 = v55;

    v42 = vm_vmd_log();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    v22 = v48;
    if ((v40 & 1) != 0 || !v41)
    {
      if (v43)
      {
        *v57 = 138412546;
        v58 = v36;
        v59 = 2112;
        v60 = v38;
        v44 = "Performed migration fromCheckpointURL:%@ toCheckpointURL:%@";
        v45 = v42;
        v46 = 22;
        goto LABEL_28;
      }
    }

    else if (v43)
    {
      *v57 = 138412802;
      v58 = v36;
      v59 = 2112;
      v60 = v38;
      v61 = 2112;
      v62 = v41;
      v44 = "Error while performing migration fromCheckpointURL:%@ toCheckpointURL:%@ error:%@";
      v45 = v42;
      v46 = 32;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v44, v57, v46);
    }

    if ((v47 & v40) == 1)
    {
      CFPreferencesSetAppValue(@"DataMigrationStatus", @"NO", @"com.apple.voicemail.datamigration");
      CFPreferencesAppSynchronize(@"com.apple.voicemail.datamigration");
    }

    v21 = v49;
    v20 = v50;
LABEL_32:

    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 138412290;
    *&buf[4] = path;
    v11 = "Determined that file does not exist at filePath, skipping migration: %@";
    goto LABEL_16;
  }

LABEL_33:
}

@end