@interface MSDHSnapshottedDataSaver
- (BOOL)adjustContentUnder:(id)under userHomePath:(id)path;
- (BOOL)canDeviceHaveEnoughSpaceForItemDomainWithSize:(int64_t)size;
- (BOOL)createIntermdediateDirectoriesInPathAndRestoreAttributes:(id)attributes;
- (id)generateItemDomainsToBeSheltered;
- (id)originalPathFor:(id)for;
- (int64_t)getFileSizeForItemAtPath:(id)path;
- (void)movePreservedFilesToDataShelter:(id)shelter removeFilesOnSuccess:(BOOL)success;
- (void)rescueDataBasedOnItemDomains:(id)domains;
- (void)rescueDataToShelterFromSnapshottedVolumes;
@end

@implementation MSDHSnapshottedDataSaver

- (void)rescueDataToShelterFromSnapshottedVolumes
{
  generateItemDomainsToBeSheltered = [(MSDHSnapshottedDataSaver *)self generateItemDomainsToBeSheltered];
  [(MSDHSnapshottedDataSaver *)self rescueDataBasedOnItemDomains:generateItemDomainsToBeSheltered];
}

- (void)rescueDataBasedOnItemDomains:(id)domains
{
  domainsCopy = domains;
  v4 = +[NSFileManager defaultManager];
  v5 = sub_100021268(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v85 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Rescuing needed files to data shelter at %{public}@", buf, 0xCu);
  }

  if (![v4 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter"])
  {
    v9 = 0;
    goto LABEL_7;
  }

  v82 = 0;
  v6 = [v4 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" error:&v82];
  v7 = v82;
  v8 = v7;
  if (v6)
  {
    v9 = v7;
LABEL_7:
    [(MSDHSnapshottedDataSaver *)self moveBluetoothFilesToDataShelter];
    [(MSDHSnapshottedDataSaver *)self moveSecondPartyAppFilesToDataShelter];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = domainsCopy;
    v57 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (!v57)
    {
      goto LABEL_69;
    }

    v56 = *v79;
    *&v10 = 138543874;
    v52 = v10;
    selfCopy = self;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v79 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v59 = v11;
        v12 = *(*(&v78 + 1) + 8 * v11);
        context = objc_autoreleasePoolPush();
        v60 = +[NSMutableArray array];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v61 = v12;
        v13 = [v61 countByEnumeratingWithState:&v74 objects:v93 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v75;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v75 != v16)
              {
                objc_enumerationMutation(v61);
              }

              v18 = *(*(&v74 + 1) + 8 * i);
              if ([v4 fileExistsAtPath:{v18, v52}])
              {
                v19 = [(MSDHSnapshottedDataSaver *)self getFileSizeForItemAtPath:v18];
                if (v19 < 0)
                {
                  sub_100027480(v91, v18, &v92);
LABEL_52:
                  v40 = v59;
                  goto LABEL_53;
                }

                v15 = (v15 + v19);
              }
            }

            v14 = [v61 countByEnumeratingWithState:&v74 objects:v93 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v15 = 0;
        }

        v21 = sub_100021268(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v85 = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Total free disk space needed for current item domain: %{public, iec-bytes}llu", buf, 0xCu);
        }

        v22 = [(MSDHSnapshottedDataSaver *)self canDeviceHaveEnoughSpaceForItemDomainWithSize:v15];
        if (v22)
        {
          v71 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          v61 = v61;
          v23 = [v61 countByEnumeratingWithState:&v68 objects:v90 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v69;
            v26 = v9;
            while (2)
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v69 != v25)
                {
                  objc_enumerationMutation(v61);
                }

                v28 = *(*(&v68 + 1) + 8 * j);
                v29 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:{v28, v52}];
                stringByDeletingLastPathComponent = [v29 stringByDeletingLastPathComponent];
                v31 = [v4 fileExistsAtPath:v28];
                v32 = v31;
                v33 = sub_100021268(v31);
                v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
                if (v32)
                {
                  if (v34)
                  {
                    *buf = 138543362;
                    v85 = v28;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, ">>> Copying item from: '%{public}@'", buf, 0xCu);
                  }

                  v67 = v26;
                  v35 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v67];
                  v9 = v67;

                  if ((v35 & 1) == 0)
                  {
                    v38 = sub_100021268(v36);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      localizedDescription = [v9 localizedDescription];
                      *buf = 138543618;
                      v85 = stringByDeletingLastPathComponent;
                      v86 = 2114;
                      v87 = localizedDescription;
                      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to create parent folder %{public}@ with error - %{public}@", buf, 0x16u);
                    }

                    goto LABEL_50;
                  }

                  v37 = [v4 cloneFile:v28 to:v29 expectingHash:0 correctOwnership:0];
                  if ((v37 & 1) == 0)
                  {
                    v38 = sub_100021268(v37);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      localizedDescription2 = [v9 localizedDescription];
                      *buf = v52;
                      v85 = v28;
                      v86 = 2114;
                      v87 = v29;
                      v88 = 2114;
                      v89 = localizedDescription2;
                      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to copy item from %{public}@ to %{public}@ with error - %{public}@", buf, 0x20u);
                    }

LABEL_50:

LABEL_51:
                    self = selfCopy;
                    goto LABEL_52;
                  }

                  [v60 addObject:v29];
                  if (![MSDXattr setContentRoot:v29])
                  {
                    goto LABEL_51;
                  }

                  v26 = v9;
                }

                else
                {
                  if (v34)
                  {
                    *buf = 138543362;
                    v85 = v28;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, ">>> Skipping non-existent item: %{public}@", buf, 0xCu);
                  }
                }
              }

              v24 = [v61 countByEnumeratingWithState:&v68 objects:v90 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }

            v9 = v26;
            self = selfCopy;
          }

          goto LABEL_63;
        }

        v61 = sub_100021268(v22);
        v40 = v59;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          sub_1000274FC(&v72, v73, v61);
        }

LABEL_53:

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = v60;
        v41 = [v61 countByEnumeratingWithState:&v63 objects:v83 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v64;
          while (2)
          {
            for (k = 0; k != v42; k = k + 1)
            {
              if (*v64 != v43)
              {
                objc_enumerationMutation(v61);
              }

              v45 = *(*(&v63 + 1) + 8 * k);
              if ([v4 fileExistsAtPath:{v45, v52}])
              {
                v62 = v9;
                v46 = [v4 removeItemAtPath:v45 error:&v62];
                v8 = v62;

                if ((v46 & 1) == 0)
                {
                  v50 = sub_100021268(v47);
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    localizedDescription3 = [v8 localizedDescription];
                    *buf = 138543618;
                    v85 = v45;
                    v86 = 2114;
                    v87 = localizedDescription3;
                    _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to clean up item %{public}@ with error - %{public}@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(context);
                  goto LABEL_73;
                }

                v9 = v8;
              }
            }

            v42 = [v61 countByEnumeratingWithState:&v63 objects:v83 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }

LABEL_63:
          v40 = v59;
        }

        objc_autoreleasePoolPop(context);
        v11 = v40 + 1;
      }

      while (v11 != v57);
      v49 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
      v57 = v49;
      if (!v49)
      {
LABEL_69:
        v8 = v9;
        goto LABEL_73;
      }
    }
  }

  obj = sub_100021268(v7);
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    sub_1000273F0(v8);
  }

LABEL_73:
}

- (id)generateItemDomainsToBeSheltered
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[NSMutableArray array];
  if ([&off_1000564F0 count])
  {
    [v3 addObject:&off_1000564F0];
  }

  v4 = +[NSMutableArray array];
  [v4 addObject:@"/private/var/mobile/Library/Biome"];
  [v4 addObject:@"/private/var/db/biome"];
  [v3 addObject:v4];
  v34 = 1;
  v5 = container_system_group_path_for_identifier();
  if (v5)
  {
    v6 = v5;
    v7 = +[NSMutableArray array];
    v8 = [NSString stringWithUTF8String:v6];
    v9 = [v8 stringByAppendingPathComponent:@"Library"];

    [v7 addObject:v9];
    [v3 addObject:v7];
    free(v6);
  }

  else
  {
    v7 = sub_100021268(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10002753C();
    }
  }

  [v3 addObject:&off_100056508];
  v10 = [NSArray arrayWithObject:@"/private/var/mobile/Library/AggregateDictionary"];
  [v3 addObject:v10];

  v11 = [v2 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" error:0];
  v12 = v11;
  if (v11 && [v11 count])
  {
    v28 = v4;
    v29 = v2;
    v13 = [NSPredicate predicateWithFormat:@"self BEGINSWITH 'log-aggregated-'"];
    v26 = [NSPredicate predicateWithFormat:@"self CONTAINS 'Analytics-'"];
    v27 = v13;
    v36[0] = v13;
    v36[1] = v26;
    v14 = [NSArray arrayWithObjects:v36 count:2];
    v15 = [NSCompoundPredicate orPredicateWithSubpredicates:v14];
    v16 = [v12 filteredArrayUsingPredicate:v15];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [@"/private/var/mobile/Library/Logs/CrashReporter" stringByAppendingPathComponent:*(*(&v30 + 1) + 8 * i)];
          v23 = [NSArray arrayWithObject:v22];
          [v3 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v19);
    }

    v4 = v28;
    v2 = v29;
  }

  v24 = +[NSMutableArray array];
  [v24 addObject:@"/private/var/db/diagnostics"];
  [v24 addObject:@"/private/var/db/uuidtext"];
  [v3 addObject:v24];

  return v3;
}

- (int64_t)getFileSizeForItemAtPath:(id)path
{
  pathCopy = path;
  memset(&v9, 0, sizeof(v9));
  v4 = stat([pathCopy fileSystemRepresentation], &v9);
  if (v4)
  {
    sub_1000275B4(pathCopy);
LABEL_10:
    st_size = -1;
    goto LABEL_11;
  }

  v5 = v9.st_mode & 0xF000;
  if (v5 == 0x8000)
  {
    st_size = v9.st_size;
    goto LABEL_11;
  }

  if (v5 != 0x4000)
  {
    v7 = sub_100021268(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000276EC();
    }

    goto LABEL_10;
  }

  [pathCopy fileSystemRepresentation];
  if (dirstat_np())
  {
    sub_100027650(pathCopy);
    goto LABEL_10;
  }

  st_size = 0;
LABEL_11:

  return st_size;
}

- (BOOL)canDeviceHaveEnoughSpaceForItemDomainWithSize:(int64_t)size
{
  v4 = MGCopyAnswer();
  v5 = v4;
  if (!v4)
  {
    v6 = sub_100021268(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000277CC();
    }

    goto LABEL_13;
  }

  v6 = [v4 objectForKey:kMGQDiskUsageAmountDataAvailable];
  v7 = [v5 objectForKey:kMGQDiskUsageAmountDataReserved];
  v8 = sub_100021268(v7);
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    sub_100027760(v8, v7);
LABEL_13:
    v12 = 0;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    longLongValue = [v6 longLongValue];
    v16 = 2048;
    longLongValue2 = [v7 longLongValue];
    v18 = 2048;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dataAvailable:  %lld - dataReserved:  %lld - itemDomainSize:  %lld", &v14, 0x20u);
  }

  longLongValue3 = [v6 longLongValue];
  v12 = longLongValue3 > ([v7 longLongValue] + size);

LABEL_9:
  return v12;
}

- (void)movePreservedFilesToDataShelter:(id)shelter removeFilesOnSuccess:(BOOL)success
{
  successCopy = success;
  shelterCopy = shelter;
  v56 = +[NSFileManager defaultManager];
  v6 = sub_100021268(v56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v70 = shelterCopy;
    v71 = 1024;
    LODWORD(v72) = successCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Preserving files from %{public}@ - removeFilesOnSuccess:  %{BOOLean}d", buf, 0x12u);
  }

  v53 = successCopy;

  v7 = [NSURL fileURLWithPath:shelterCopy isDirectory:1];
  v78[0] = NSURLIsRegularFileKey;
  v78[1] = NSURLIsDirectoryKey;
  v8 = [NSArray arrayWithObjects:v78 count:2];
  v9 = [v56 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:0 errorHandler:&stru_100050CF0];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v9;
  v58 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  v10 = 0;
  if (v58)
  {
    v57 = *v66;
    v54 = shelterCopy;
    do
    {
      v11 = 0;
      do
      {
        if (*v66 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v65 + 1) + 8 * v11);
        v63 = 0;
        v64 = 0;
        v13 = [v12 getResourceValue:&v64 forKey:NSURLIsRegularFileKey error:&v63];
        v14 = v64;
        v15 = v63;

        if ((v13 & 1) == 0)
        {
          v35 = sub_100021268(v16);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            path = [v12 path];
            localizedDescription = [v15 localizedDescription];
            *buf = 138543618;
            v70 = path;
            v71 = 2114;
            v72 = localizedDescription;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "getResourceValue NSURLIsRegularFileKey failed for %{public}@ with error %{public}@", buf, 0x16u);
          }

          stringByDeletingLastPathComponent = 0;
          v24 = 0;
          v23 = 0;
          v18 = 0;
          goto LABEL_33;
        }

        v61 = 0;
        v62 = 0;
        v17 = [v12 getResourceValue:&v62 forKey:NSURLIsDirectoryKey error:&v61];
        v18 = v62;
        v10 = v61;

        if (v17)
        {
          if (([v14 BOOLValue] & 1) == 0 && !objc_msgSend(v18, "BOOLValue") || (objc_msgSend(v12, "path"), v20 = objc_claimAutoreleasedReturnValue(), v21 = +[MSDXattr isContentRoot:](MSDXattr, "isContentRoot:", v20), v20, !v21))
          {
            stringByDeletingLastPathComponent = 0;
            v24 = 0;
            v23 = 0;
            v34 = 1;
            goto LABEL_21;
          }

          path2 = [v12 path];
          v23 = [path2 substringFromIndex:{objc_msgSend(shelterCopy, "length")}];

          v24 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:v23];
          stringByDeletingLastPathComponent = [v24 stringByDeletingLastPathComponent];
          v26 = v56;
          v27 = [v56 fileExistsAtPath:stringByDeletingLastPathComponent];
          if ((v27 & 1) == 0)
          {
            v60 = v10;
            v28 = [v56 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v60];
            v15 = v60;

            if ((v28 & 1) == 0)
            {
              v35 = sub_100021268(v27);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                localizedDescription2 = [v15 localizedDescription];
                *buf = 138543618;
                v70 = stringByDeletingLastPathComponent;
                v71 = 2114;
                v72 = localizedDescription2;
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to create parent folder %{public}@. Error: %{public}@", buf, 0x16u);
              }

              goto LABEL_36;
            }

            v10 = v15;
            v26 = v56;
          }

          v29 = sub_100021268(v27);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            path3 = [v12 path];
            *buf = 136315650;
            v70 = "[MSDHSnapshottedDataSaver movePreservedFilesToDataShelter:removeFilesOnSuccess:]";
            v71 = 2114;
            v72 = path3;
            v73 = 2114;
            v74 = v24;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s - Clone item %{public}@ ==> %{public}@", buf, 0x20u);

            v26 = v56;
          }

          path4 = [v12 path];
          v32 = [v26 cloneFile:path4 to:v24 expectingHash:0 correctOwnership:0];

          if (v32)
          {
            v34 = 1;
            shelterCopy = v54;
            goto LABEL_21;
          }

          v52 = sub_100021268(v33);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            path5 = [v12 path];
            v41 = __error();
            v42 = strerror(*v41);
            *buf = 136315906;
            v70 = "[MSDHSnapshottedDataSaver movePreservedFilesToDataShelter:removeFilesOnSuccess:]";
            v71 = 2114;
            v72 = path5;
            v73 = 2114;
            v74 = v24;
            v75 = 2080;
            v76 = v42;
            _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s - Failed to clone item %{public}@ ==> %{public}@ - Error:  %s", buf, 0x2Au);

            v15 = v10;
            v35 = v52;
LABEL_36:
            shelterCopy = v54;
            goto LABEL_33;
          }

          v15 = v10;
          shelterCopy = v54;
        }

        else
        {
          v52 = sub_100021268(v19);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            path6 = [v12 path];
            localizedDescription3 = [v10 localizedDescription];
            *buf = 138543618;
            v70 = path6;
            v71 = 2114;
            v72 = localizedDescription3;
            _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "getResourceValue NSURLIsDirectoryKey failed for %{public}@ with error %{public}@", buf, 0x16u);
          }

          stringByDeletingLastPathComponent = 0;
          v24 = 0;
          v23 = 0;
          v15 = v10;
        }

        v35 = v52;
LABEL_33:

        v34 = 0;
        v10 = v15;
LABEL_21:

        if (!v34)
        {
          v50 = obj;
          v48 = v10;
          goto LABEL_46;
        }

        v11 = v11 + 1;
      }

      while (v58 != v11);
      v44 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
      v58 = v44;
    }

    while (v44);
  }

  if (v53)
  {
    v46 = sub_100021268(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v70 = shelterCopy;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Remove preserved files from:  %{public}@", buf, 0xCu);
    }

    v59 = v10;
    v47 = [v56 removeItemAtPath:shelterCopy error:&v59];
    v48 = v59;

    if ((v47 & 1) == 0)
    {
      v50 = sub_100021268(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription4 = [v48 localizedDescription];
        *buf = 136315650;
        v70 = "[MSDHSnapshottedDataSaver movePreservedFilesToDataShelter:removeFilesOnSuccess:]";
        v71 = 2114;
        v72 = shelterCopy;
        v73 = 2114;
        v74 = localizedDescription4;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s - Failed to remove preserved files from:  %{public}@ - Error:  %{public}@", buf, 0x20u);
      }

LABEL_46:
    }

    v10 = v48;
  }
}

- (BOOL)createIntermdediateDirectoriesInPathAndRestoreAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = sub_100021268(attributesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MSDHSnapshottedDataSaver createIntermdediateDirectoriesInPathAndRestoreAttributes:]";
    *&buf[12] = 2112;
    *&buf[14] = attributesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s - fullPath:  %@", buf, 0x16u);
  }

  v5 = +[NSFileManager defaultManager];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = sub_1000085FC;
  v19 = sub_10000860C;
  v20 = +[NSString string];
  pathComponents = [attributesCopy pathComponents];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008614;
  v9[3] = &unk_100050CB0;
  v11 = buf;
  v7 = v5;
  v10 = v7;
  v12 = &v13;
  [pathComponents enumerateObjectsUsingBlock:v9];

  LOBYTE(pathComponents) = *(v14 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v13, 8);
  return pathComponents & 1;
}

- (id)originalPathFor:(id)for
{
  forCopy = for;
  v4 = [forCopy rangeOfString:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    stringByStandardizingPath = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByStandardizingPath];
    v7 = [forCopy rangeOfString:stringByStandardizingPath];
    v9 = v8;
  }

  else
  {
    v7 = v4;
    v9 = v5;
  }

  if (v7)
  {
    sub_100027AB0(forCopy);
    v10 = 0;
  }

  else
  {
    v10 = [forCopy substringFromIndex:v9];
  }

  return v10;
}

- (BOOL)adjustContentUnder:(id)under userHomePath:(id)path
{
  underCopy = under;
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  HIBYTE(v125) = 0;
  v113 = v6;
  if (![v6 fileExistsAtPath:underCopy isDirectory:&v125 + 7] || HIBYTE(v125) != 1)
  {
    v12 = 0;
    v38 = 0;
    v13 = 0;
    v39 = 0;
    goto LABEL_37;
  }

  v124 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:underCopy error:&v124];
  v8 = v124;
  v9 = v8;
  if (!v7)
  {
    v47 = sub_100021268(v8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      sub_100008A0C();
      *(v82 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
      sub_100008A18();
      *(v83 + 14) = underCopy;
      sub_100008A4C();
      sub_100008A24();
      _os_log_error_impl(v84, v85, v86, v87, v88, 0x20u);
    }

    stringByDeletingLastPathComponent = 0;
    v12 = 0;
    v38 = 0;
    v13 = 0;
    goto LABEL_73;
  }

  *v122 = 0u;
  v123 = 0u;
  *v120 = 0u;
  v121 = 0u;
  v10 = v7;
  v112 = [v10 countByEnumeratingWithState:v120 objects:v131 count:16];
  v12 = 0;
  if (!v112)
  {
    v108 = 0;
    v13 = 0;
    goto LABEL_57;
  }

  v108 = 0;
  v13 = 0;
  v111 = *v121;
  *&v11 = 138412290;
  *v106 = v11;
  *&v11 = 136315906;
  *v105 = v11;
  v107 = v10;
  do
  {
    v14 = 0;
    do
    {
      v15 = v13;
      v16 = v12;
      if (*v121 != v111)
      {
        objc_enumerationMutation(v10);
      }

      v17 = underCopy;
      v13 = [underCopy stringByAppendingPathComponent:{*(v120[1] + 8 * v14), *v105}];

      v119 = v9;
      v12 = [v113 attributesOfItemAtPath:v13 error:&v119];
      v18 = v119;

      if (!v12)
      {
        v56 = sub_100021268(v19);
        if (sub_100005E88(v56))
        {
          localizedDescription2 = [v18 localizedDescription];
          sub_100008A0C();
          *(v58 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
          sub_100008A18();
          *(v59 + 14) = v13;
          sub_100008A4C();
          sub_100008A64(&_mh_execute_header, v60, v61, "%s: Cannot get attribute from %@ - %@", v62, v63, v64, v65, v105[0], v105[1], v106[0], v106[1], v107, v108, self, pathCopy, NSFileTypeSymbolicLink, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, *(&v123 + 1), v124, v125);
        }

        goto LABEL_63;
      }

      fileType = [v12 fileType];
      v21 = [fileType isEqualToString:NSFileTypeSymbolicLink];

      if (v21)
      {
        v22 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:pathCopy];
        if (!v22 || [v13 caseInsensitiveCompare:v22])
        {

          goto LABEL_25;
        }

        v23 = sub_100021268(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_100008A58();
          *(v24 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found wormhole in staging to user volume: %@", buf, 0xCu);
        }
      }

      if (![MSDXattr isNotExtracted:v13])
      {
        [(MSDHSnapshottedDataSaver *)self adjustContentUnder:v13 userHomePath:pathCopy];
LABEL_25:
        v9 = v18;
LABEL_26:
        underCopy = v17;
        goto LABEL_29;
      }

      v25 = [(MSDHSnapshottedDataSaver *)self originalPathFor:v13];

      v27 = sub_100021268(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        sub_100008A58();
        *(v28 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ is not extracted (under a content root), should use the original content.", buf, 0xCu);
      }

      v118 = v18;
      v9 = [v113 removeItemAtPath:v13 error:&v118];
      v29 = v118;

      if ((v9 & 1) == 0)
      {
        v66 = sub_100021268(v30);
        if (sub_100005E88(v66))
        {
          localizedDescription3 = [v29 localizedDescription];
          sub_100008A0C();
          *(v73 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
          sub_100008A18();
          *(v74 + 14) = v13;
          sub_100008A4C();
          sub_100008A64(&_mh_execute_header, v75, v76, "%s: Cannot remove item: %@ - Error:  %@", v77, v78, v79, v80, v105[0], v105[1], v106[0], v106[1], v107, v108, self, pathCopy, NSFileTypeSymbolicLink, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120[0], v120[1], v121, *(&v121 + 1), v122[0], v122[1], v123, *(&v123 + 1), v124, v125);
        }

        v108 = v25;
        v18 = v29;
        v10 = v107;
LABEL_63:

        v47 = v10;
        stringByDeletingLastPathComponent = 0;
        v50 = 0;
        v9 = v18;
        underCopy = v17;
        v38 = v108;
        goto LABEL_64;
      }

      if ([v113 fileExistsAtPath:v25])
      {
        v117 = v29;
        v31 = [v113 moveItemAtPath:v25 toPath:v13 error:&v117];
        v9 = v117;

        if ((v31 & 1) == 0)
        {
          v33 = sub_100021268(v32);
          v10 = v107;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            localizedDescription4 = [v9 localizedDescription];
            sub_100008A58();
            *(v35 + 4) = "[MSDHSnapshottedDataSaver adjustContentUnder:userHomePath:]";
            v127 = 2112;
            *(v35 + 14) = v25;
            v128 = 2112;
            v129 = v13;
            v130 = 2112;
            *(v35 + 34) = v36;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: Could not move item %@ to %@.  Error:  %@", buf, 0x2Au);
          }

          v108 = v25;
          goto LABEL_26;
        }

        v108 = v25;
      }

      else
      {
        v108 = v25;
        v9 = v29;
      }

      underCopy = v17;
      v10 = v107;
LABEL_29:
      v14 = v14 + 1;
    }

    while (v112 != v14);
    v37 = [v10 countByEnumeratingWithState:v120 objects:v131 count:16];
    v112 = v37;
  }

  while (v37);
LABEL_57:

  v38 = v108;
  v39 = v9;
  v6 = v113;
LABEL_37:
  if (![MSDXattr isContentRoot:underCopy])
  {
    stringByDeletingLastPathComponent = 0;
    v50 = 1;
    goto LABEL_66;
  }

  v40 = [MSDXattr isContentRootToRemove:underCopy];
  [MSDXattr removeXattr:underCopy];
  v41 = [(MSDHSnapshottedDataSaver *)self originalPathFor:underCopy];

  v42 = [v6 fileExistsAtPath:v41];
  if (!v42)
  {
    goto LABEL_41;
  }

  v116 = v39;
  v38 = v41;
  v43 = [v6 removeItemAtPath:v41 error:&v116];
  v9 = v116;

  if ((v43 & 1) == 0)
  {
    v47 = sub_100021268(v42);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      localizedDescription5 = [v9 localizedDescription];
      sub_100008A0C();
      *(v90 + 4) = v38;
      sub_100008A18();
      *(v92 + 14) = v91;
      sub_100008A24();
      _os_log_error_impl(v93, v94, v95, v96, v97, 0x16u);
    }

    stringByDeletingLastPathComponent = 0;
    goto LABEL_73;
  }

  v39 = v9;
  v6 = v113;
  v41 = v38;
LABEL_41:
  if ((v40 & 1) == 0)
  {
    v51 = sub_100021268(v42);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000089F4();
      *(v52 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Moving content root item %@ to %@.", buf, 0x16u);
    }

    v53 = v41;
    stringByDeletingLastPathComponent = [v41 stringByDeletingLastPathComponent];
    v6 = v113;
    if (([v113 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v125 + 7] & 1) == 0 && !-[MSDHSnapshottedDataSaver createIntermdediateDirectoriesInPathAndRestoreAttributes:](self, "createIntermdediateDirectoriesInPathAndRestoreAttributes:", stringByDeletingLastPathComponent))
    {
      v50 = 0;
      v38 = v53;
      goto LABEL_66;
    }

    v115 = v39;
    v38 = v53;
    v54 = [v113 moveItemAtPath:underCopy toPath:v53 error:&v115];
    v9 = v115;

    if (v54)
    {
      v50 = 1;
      goto LABEL_65;
    }

    v47 = sub_100021268(v55);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v50 = 0;
      v38 = v53;
      goto LABEL_64;
    }

    localizedDescription6 = [v9 localizedDescription];
    sub_1000089F4();
    v38 = v53;
    *(v99 + 14) = v53;
    sub_100008A4C();
    sub_100008A24();
    _os_log_error_impl(v100, v101, v102, v103, v104, 0x20u);

LABEL_73:
    v50 = 0;
    goto LABEL_64;
  }

  v114 = v39;
  v44 = [v6 removeItemAtPath:underCopy error:&v114];
  v9 = v114;

  if ((v44 & 1) == 0)
  {
    v46 = sub_100021268(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [v9 localizedDescription];
      v69 = v68 = v41;
      sub_1000089F4();
      *(v71 + 14) = v70;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to remove:  %@ - Error:  %@", buf, 0x16u);

      v41 = v68;
    }
  }

  v47 = sub_100021268(v45);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008A58();
    *(v48 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Removed %@.", buf, 0xCu);
  }

  v38 = v41;
  stringByDeletingLastPathComponent = 0;
  v50 = 1;
LABEL_64:

LABEL_65:
  v39 = v9;
  v6 = v113;
LABEL_66:

  return v50;
}

@end