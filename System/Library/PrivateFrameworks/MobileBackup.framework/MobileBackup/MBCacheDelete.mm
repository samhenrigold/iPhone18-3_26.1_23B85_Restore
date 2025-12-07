@interface MBCacheDelete
- (id)periodic:(id)periodic urgency:(int)urgency;
- (id)purge:(id)purge urgency:(int)urgency;
- (id)purgeable:(id)purgeable urgency:(int)urgency;
- (void)cancelPurge;
@end

@implementation MBCacheDelete

- (id)purgeable:(id)purgeable urgency:(int)urgency
{
  v4 = [purgeable objectForKeyedSubscript:{@"CACHE_DELETE_VOLUME", *&urgency}];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "CacheDelete requested purgeable amount for volume %@. Unsupported", buf, 0xCu);
    _MBLog(@"Db", "CacheDelete requested purgeable amount for volume %@. Unsupported", v4);
  }

  v8[0] = @"CACHE_DELETE_VOLUME";
  v8[1] = @"CACHE_DELETE_AMOUNT";
  v9[0] = v4;
  v9[1] = &off_100021A80;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)purge:(id)purge urgency:(int)urgency
{
  purgeCopy = purge;
  v5 = [purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v28 = [purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = +[MBPersona allPersonae];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v7)
  {
    v8 = *v32;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        volumeMountPoint = [v10 volumeMountPoint];
        v12 = [volumeMountPoint isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v49 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v42 = v28;
    v43 = 2048;
    urgencyCopy = urgency;
    v45 = 2112;
    v46 = v5;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requested to purge %@ with urgency %ld for volume %@ for persona %@", buf, 0x2Au);
    _MBLog(@"Df", "Requested to purge %@ with urgency %ld for volume %@ for persona %@", v28, urgency, v5, v7);
  }

  v14 = [NSDate dateWithTimeIntervalSinceNow:-60.0];
  v30 = 0;
  v15 = [MBFileSystemManager deleteAllSnapshotsForVolume:v5 withPrefix:@"com.apple.mobilebackup" latestCreationDate:v14 error:&v30];
  v16 = v30;
  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to remove MobileBackup file system snapshots: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to remove MobileBackup file system snapshots: %@", v16);
    }
  }

  v29 = v16;
  v18 = [MBFileSystemManager deleteAllSnapshotsForVolume:v5 withPrefix:@"com.appleinternal.mobilebackup" error:&v29];
  v19 = v29;

  if ((v18 & 1) == 0)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to remove internal MobileBackup file system snapshots: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to remove internal MobileBackup file system snapshots: %@", v19);
    }
  }

  if (!v7)
  {
    v39[0] = @"CACHE_DELETE_VOLUME";
    v39[1] = @"CACHE_DELETE_AMOUNT";
    v40[0] = v5;
    v40[1] = &off_100021A80;
    v25 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    goto LABEL_29;
  }

  if ([v7 isPersonalPersona])
  {
    v21 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
    [MBFileSystemManager removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:v21 persona:v7];
    if (urgency < 2)
    {
      v37[0] = @"CACHE_DELETE_VOLUME";
      v37[1] = @"CACHE_DELETE_AMOUNT";
      v38[0] = v5;
      v38[1] = &off_100021A80;
      v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
      goto LABEL_28;
    }

    v22 = [NSDate dateWithTimeIntervalSinceNow:-864000.0];
    [MBFileSystemManager removeDeviceTransferDirectoryWithEarliestCreationDate:v22];
  }

  v21 = [NSDate dateWithTimeIntervalSinceNow:-3600.0];
  v23 = [v7 removeRestorePrefetchCachesOlderThanDate:v21];
  v35[0] = @"CACHE_DELETE_VOLUME";
  v35[1] = @"CACHE_DELETE_AMOUNT";
  v36[0] = v5;
  v24 = [NSNumber numberWithUnsignedLongLong:v23];
  v36[1] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

LABEL_28:
LABEL_29:

  return v25;
}

- (id)periodic:(id)periodic urgency:(int)urgency
{
  periodicCopy = periodic;
  v6 = [periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v14 = v7;
    v15 = 2048;
    urgencyCopy = urgency;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requested to periodic purge %@ with urgency %ld for volume %@. Unsupported", buf, 0x20u);
    _MBLog(@"Df", "Requested to periodic purge %@ with urgency %ld for volume %@. Unsupported", v7, urgency, v6);
  }

  v11[0] = @"CACHE_DELETE_VOLUME";
  v11[1] = @"CACHE_DELETE_AMOUNT";
  v12[0] = v6;
  v12[1] = &off_100021A80;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)cancelPurge
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Requested to cancel purge. Not supported.", v3, 2u);
    _MBLog(@"Db", "Requested to cancel purge. Not supported.");
  }
}

@end