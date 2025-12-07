@interface MBRestoreAppsPlugin
- (id)endedBackupWithEngine:(id)engine error:(id)error;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
- (id)startingBackupWithEngine:(id)engine;
- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBRestoreAppsPlugin

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if (MBIsInternalInstall())
  {
    v4 = +[MBBehaviorOptions sharedOptions];
    domainsToBackUpRegex = [v4 domainsToBackUpRegex];

    if (domainsToBackUpRegex)
    {
      v6 = 0;
      goto LABEL_66;
    }
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:@"/var/root/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist"];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v96 = 0;
    v10 = [v9 removeItemAtPath:@"/var/root/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist" error:&v96];
    v11 = v96;

    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleted demoted apps plist written to the old and outdated path", buf, 2u);
        _MBLog(@"Df", "Deleted demoted apps plist written to the old and outdated path");
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v102 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't delete demoted apps plist written to the old and outdated path - %@", buf, 0xCu);
      _MBLog(@"E ", "Couldn't delete demoted apps plist written to the old and outdated path - %@", v11);
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = objc_alloc_init(MBIgnoredAccountsTracker);
  v15 = +[NSMutableArray array];
  v16 = +[NSMutableArray array];
  persona = [engineCopy persona];
  personaIdentifier = [persona personaIdentifier];

  persona2 = [engineCopy persona];
  demotedAppsPlistPath = [persona2 demotedAppsPlistPath];

  if ([engineCopy conformsToProtocol:&OBJC_PROTOCOL___MBHasServiceAccount])
  {
    serviceAccount = [engineCopy serviceAccount];
    v22 = serviceAccount;
    if (serviceAccount)
    {
      isPrimaryAccount = [serviceAccount isPrimaryAccount];
    }

    else
    {
      isPrimaryAccount = 1;
    }
  }

  else
  {
    isPrimaryAccount = 1;
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v102 = personaIdentifier;
    v103 = 1024;
    *v104 = isPrimaryAccount;
    *&v104[4] = 2112;
    *&v104[6] = demotedAppsPlistPath;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fetching demoted apps for persona %{public}@ (%d) (%@)", buf, 0x1Cu);
    _MBLog(@"Df", "Fetching demoted apps for persona %{public}@ (%d) (%@)", personaIdentifier, isPrimaryAccount, demotedAppsPlistPath);
  }

  if (!demotedAppsPlistPath)
  {
    sub_10009F250();
  }

  if (personaIdentifier)
  {
    v25 = 1;
  }

  else
  {
    v25 = isPrimaryAccount;
  }

  if ((v25 & 1) == 0)
  {
    sub_10009F224();
  }

  v26 = objc_autoreleasePoolPush();
  v27 = +[LSApplicationWorkspace defaultWorkspace];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_10006B590;
  v90[3] = &unk_1000FE3D8;
  v95 = isPrimaryAccount;
  v28 = personaIdentifier;
  v91 = v28;
  v29 = v14;
  v92 = v29;
  v30 = v15;
  v93 = v30;
  v31 = v16;
  v94 = v31;
  [v27 enumerateBundlesOfType:0 block:v90];

  objc_autoreleasePoolPop(v26);
  v32 = +[NSMutableDictionary dictionary];
  v85 = v32;
  if (![v31 count])
  {
    if (![v30 count])
    {
      v84 = v30;
      v48 = MBGetDefaultLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "No demoted apps found on device. Skipping", buf, 2u);
        _MBLog(@"Df", "No demoted apps found on device. Skipping");
      }

      v49 = +[NSFileManager defaultManager];
      v50 = [v49 fileExistsAtPath:demotedAppsPlistPath];

      if (!v50)
      {
LABEL_52:
        v56 = copyfile_state_alloc();
        v57 = copyfile([@"/var/installd/Library/MobileInstallation/BackedUpState/SystemAppInstallState.plist" fileSystemRepresentation], objc_msgSend(@"/var/installd/Library/MobileInstallation/BackedUpState/BackupSystemAppInstallState.plist", "fileSystemRepresentation"), v56, 0xEu);
        if (v57)
        {
          v58 = v57;
          v59 = MBGetDefaultLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v102) = v58;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to copy system app plist: %{errno}d", buf, 8u);
            v60 = __error();
            _MBLog(@"E ", "Failed to copy system app plist: %{errno}d", v58, *v60);
          }
        }

        copyfile_state_free(v56);
        if ([engineCopy isDeviceTransferEngine])
        {
          v83 = v28;
          v61 = v11;
          v62 = +[NSFileManager defaultManager];
          v97[0] = NSFileOwnerAccountName;
          v97[1] = NSFileGroupOwnerAccountName;
          v98[0] = @"mobile";
          v98[1] = @"mobile";
          v63 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
          v86 = 0;
          v64 = [v62 createDirectoryAtPath:@"/var/mobile/Media/iTunesRestore" withIntermediateDirectories:1 attributes:v63 error:&v86];
          v65 = v86;

          if ((v64 & 1) == 0)
          {
            v69 = MBGetDefaultLog();
            v47 = v85;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              fileSystemRepresentation = [@"/var/mobile/Media/iTunesRestore" fileSystemRepresentation];
              *buf = 136315394;
              v102 = fileSystemRepresentation;
              v103 = 2112;
              *v104 = v65;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Failed to create directory at %s: %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to create directory at %s: %@", [@"/var/mobile/Media/iTunesRestore" fileSystemRepresentation], v65);
            }

            v6 = v65;
            v11 = v61;
            v28 = v83;
            v30 = v84;
            goto LABEL_65;
          }

          v66 = +[NSURL fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:](NSURL, "fileURLWithFileSystemRepresentation:isDirectory:relativeToURL:", [@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" fileSystemRepresentation], 0, 0);
          v67 = sub_10007E860(v66);

          v30 = v84;
          if (v67)
          {
            v6 = v67;

            v11 = v61;
            v28 = v83;
            goto LABEL_41;
          }

          fileSystemRepresentation2 = [@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" fileSystemRepresentation];
          v73 = MBMobileUID();
          v74 = MBMobileUID();
          v11 = v61;
          v28 = v83;
          if (lchown(fileSystemRepresentation2, v73, v74))
          {
            v68 = [MBError posixErrorWithPath:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" format:@"lchown failed"];
          }

          else
          {
            domainManager = [engineCopy domainManager];
            v76 = [domainManager domainForName:@"MediaDomain"];

            v77 = objc_opt_new();
            [v77 addObject:@"Media/iTunesRestore/RestoreApplications.plist"];
            relativePathsToBackupAndRestore = [v76 relativePathsToBackupAndRestore];

            if (relativePathsToBackupAndRestore)
            {
              relativePathsToBackupAndRestore2 = [v76 relativePathsToBackupAndRestore];
              [v77 unionSet:relativePathsToBackupAndRestore2];
            }

            [v76 setRelativePathsToBackupAndRestore:v77];

            v68 = 0;
            v28 = v83;
          }
        }

        else
        {
          v68 = 0;
        }

        v30 = v84;
        v47 = v85;
        v6 = v68;
        goto LABEL_65;
      }

      v51 = v28;
      v52 = +[NSFileManager defaultManager];
      v87 = v11;
      v53 = [v52 removeItemAtPath:demotedAppsPlistPath error:&v87];
      v54 = v87;

      v55 = MBGetDefaultLog();
      v38 = v55;
      if (v53)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Removed demoted apps plist made from a previous backup because there are no more demoted apps in the ongoing one", buf, 2u);
          _MBLog(@"Df", "Removed demoted apps plist made from a previous backup because there are no more demoted apps in the ongoing one", v80);
        }
      }

      else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v102 = v54;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Couldn't delete demoted apps plist written to the new path during a previous backup - %@", buf, 0xCu);
        _MBLog(@"E ", "Couldn't delete demoted apps plist written to the new path during a previous backup - %@", v54);
      }

      v11 = v54;
      v28 = v51;
LABEL_51:

      goto LABEL_52;
    }

    goto LABEL_29;
  }

  [v32 setObject:v31 forKeyedSubscript:@"IntentionalDowngrades"];
  if ([v30 count])
  {
LABEL_29:
    [v32 setObject:v30 forKeyedSubscript:@"AutomaticDowngrades"];
  }

  v33 = v11;
  v89 = 0;
  v34 = [NSPropertyListSerialization dataWithPropertyList:v32 format:200 options:0 error:&v89];
  v35 = v89;
  v36 = v35;
  if (v34)
  {
    v84 = v30;
    v88 = v35;
    v37 = [v34 writeToFile:demotedAppsPlistPath options:268435457 error:&v88];
    v38 = v88;

    if (v37)
    {
      v81 = v29;
      v82 = v28;
      v39 = MBMobileUID();
      v99[0] = NSFileOwnerAccountID;
      v40 = [NSNumber numberWithUnsignedInt:v39];
      v100[0] = v40;
      v99[1] = NSFileGroupOwnerAccountID;
      v41 = [NSNumber numberWithUnsignedInt:v39];
      v100[1] = v41;
      v99[2] = NSFilePosixPermissions;
      v42 = [NSNumber numberWithUnsignedShort:384];
      v100[2] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:3];

      v44 = +[NSFileManager defaultManager];
      [v44 setAttributes:v43 ofItemAtPath:demotedAppsPlistPath error:0];

      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = demotedAppsPlistPath;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Wrote out demoted apps plist to:%@", buf, 0xCu);
        _MBLog(@"Df", "Wrote out demoted apps plist to:%@", demotedAppsPlistPath);
      }

      v11 = v33;
      v29 = v81;
      v28 = v82;
      goto LABEL_51;
    }

    v46 = MBGetDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v102 = demotedAppsPlistPath;
      v103 = 2112;
      *v104 = v38;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to write demoted app plists at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to write demoted app plists at %@: %@", demotedAppsPlistPath, v38);
    }

    v36 = v38;
    v30 = v84;
  }

  else
  {
    v46 = MBGetDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v102 = v36;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to serialize demoted apps:%@", buf, 0xCu);
      _MBLog(@"E ", "Failed to serialize demoted apps:%@", v36);
    }
  }

  v6 = 0;
  v11 = v33;
LABEL_41:
  v47 = v85;
LABEL_65:

LABEL_66:

  return v6;
}

- (id)endedBackupWithEngine:(id)engine error:(id)error
{
  if ([engine isDeviceTransferEngine])
  {
    v4 = +[NSFileManager defaultManager];
    v9 = 0;
    v5 = [v4 removeItemAtPath:@"/var/mobile/Media/iTunesRestore/RestoreApplications.plist" error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = @"/var/mobile/Media/iTunesRestore";
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove file at: %@ - %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to remove file at: %@ - %@", @"/var/mobile/Media/iTunesRestore", v6);
      }
    }
  }

  return 0;
}

- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy restoresPrimaryAccount] && objc_msgSend(engineCopy, "isDeviceTransferEngine"))
  {
    domainManager = [engineCopy domainManager];
    v6 = [domainManager domainForName:@"MediaDomain"];

    v7 = objc_opt_new();
    [v7 addObject:@"Media/iTunesRestore/RestoreApplications.plist"];
    relativePathsToBackupAndRestore = [v6 relativePathsToBackupAndRestore];

    if (relativePathsToBackupAndRestore)
    {
      relativePathsToBackupAndRestore2 = [v6 relativePathsToBackupAndRestore];
      [v7 unionSet:relativePathsToBackupAndRestore2];
    }

    [v6 setRelativePathsToBackupAndRestore:v7];
  }

  return 0;
}

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy restoresPrimaryAccount])
  {
    persona = [engineCopy persona];
    userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];

    v7 = [NSString stringWithFormat:@"%@%@", userIncompleteRestoreDirectory, @"/var/mobile/Library/Preferences/com.apple.MobileBackup.DemotedApps.plist"];
    if (MBIsInternalInstall())
    {
      v8 = +[NSFileManager defaultManager];
      v9 = [v8 fileExistsAtPath:v7];

      if (v9)
      {
        v10 = +[NSFileManager defaultManager];
        v16 = 0;
        v11 = [v10 copyItemAtPath:v7 toPath:@"/var/mobile/Library/Logs/MobileBackup/DemotedAppsCopy.plist" error:&v16];
        v12 = v16;

        v13 = MBGetDefaultLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v14)
          {
            *buf = 138412290;
            v18 = @"/var/mobile/Library/Logs/MobileBackup/DemotedAppsCopy.plist";
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Demoted app plist copied successfully to: %@", buf, 0xCu);
            _MBLog(@"I ", "Demoted app plist copied successfully to: %@", @"/var/mobile/Library/Logs/MobileBackup/DemotedAppsCopy.plist");
          }
        }

        else if (v14)
        {
          *buf = 138412290;
          v18 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Unable to copy demoted app plist: %@", buf, 0xCu);
          _MBLog(@"I ", "Unable to copy demoted app plist: %@", v12);
        }
      }
    }
  }

  return 0;
}

@end