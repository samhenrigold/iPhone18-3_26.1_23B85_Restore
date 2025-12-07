@interface DSVolume
+ (BOOL)__checkAttributionTagsCapabilityForVolume:(id)volume;
+ (BOOL)__checkCloneGroupCapabilityForVolume:(id)volume;
+ (BOOL)__checkCloneMappingCapabilityForVolume:(id)volume;
+ (BOOL)__checkPurgeableFilesCapabilityForVolume:(id)volume;
+ (BOOL)_isDirectoryPartOfSAFHierarchy:(id)hierarchy;
+ (id)_safeFilenameForListingVolume:(id)volume pathExtension:(id)extension;
+ (id)_safeStringFromStatFSCString:(const char *)string;
+ (id)_volumeInfoFromStatFS:(statfs *)s count:(int)count usedBytesProvider:(id)provider volumeManager:(id)manager;
+ (void)_getAttributionTagPathsInDirectory:(id)directory reply:(id)reply;
+ (void)_getDirStatsType:(id)type reply:(id)reply;
+ (void)_getPurgeableRecordsInfo:(id)info reply:(id)reply;
+ (void)_getSharedExtensInfo:(id)info reply:(id)reply;
+ (void)_writeCloneGroupsRecordsForVolume:(id)volume toFile:(__sFILE *)file error:(id *)error;
- (BOOL)listContentsWithEntryCount:(unint64_t *)count andError:(id *)error;
- (BOOL)shouldListContents;
- (DSVolumeManager)_volumeManager;
- (NSString)debugDescription;
- (NSString)description;
- (id)_initWithStatFS:(statfs *)s usedBytesProvider:(id)provider volumeManager:(id)manager;
- (id)_pathRepresentationForListing:(char *)listing isDirectory:(BOOL)directory;
@end

@implementation DSVolume

+ (BOOL)__checkPurgeableFilesCapabilityForVolume:(id)volume
{
  v8 = 0;
  mountPoint = [volume mountPoint];
  v4 = fsctl([mountPoint UTF8String], 0x40084A47uLL, &v8, 0);

  if (v4)
  {
    v5 = __error();
    v6 = 0x1FFFFDFFFFFBuLL >> *v5;
    if (*v5 > 0x2D)
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

+ (BOOL)__checkAttributionTagsCapabilityForVolume:(id)volume
{
  volumeCopy = volume;
  v14 = 0;
  mountPoint = [volumeCopy mountPoint];
  v5 = fsctl([mountPoint UTF8String], 0xC0044A75uLL, &v14, 0);

  if (v5)
  {
    v7 = shared_filesystem_metadata_snapshot_service_log_handle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __error();
      v9 = strerror(*v8);
      mountPoint2 = [volumeCopy mountPoint];
      uTF8String = [mountPoint2 UTF8String];
      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = uTF8String;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get attribution tags flags with error (%s) (%s)", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v14 == 1;
  }

  return v12;
}

+ (BOOL)__checkCloneMappingCapabilityForVolume:(id)volume
{
  volumeCopy = volume;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  mountPoint = [volumeCopy mountPoint];
  v5 = getattrlist([mountPoint UTF8String], &v13, v14, 0x24uLL, 0);

  if (v5)
  {
    v7 = shared_filesystem_metadata_snapshot_service_log_handle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __error();
      v9 = strerror(*v8);
      mountPoint2 = [volumeCopy mountPoint];
      uTF8String = [mountPoint2 UTF8String];
      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = uTF8String;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attrlist failed with error (%s) (%s)", buf, 0x16u);
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    LODWORD(v7) = (BYTE7(v14[0]) >> 2) & 1;
  }

  return v7;
}

+ (BOOL)__checkCloneGroupCapabilityForVolume:(id)volume
{
  volumeCopy = volume;
  if (![self __checkCloneMappingCapabilityForVolume:volumeCopy])
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v5 = malloc_type_malloc(0x400uLL, 0x35957D06uLL);
  if (!v5)
  {
    v12 = shared_filesystem_metadata_snapshot_service_log_handle(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100030A14(v12);
    }

    goto LABEL_11;
  }

  v6 = v5;
  v15 = 0u;
  DWORD2(v15) = 1;
  mountPoint = [volumeCopy mountPoint];
  v8 = fsctl([mountPoint fileSystemRepresentation], 0xC0684A87uLL, &v14, 0);

  v10 = v8 == 0;
  if (v8)
  {
    v11 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030948(volumeCopy, v11);
    }
  }

  free(v6);
LABEL_12:

  return v10;
}

+ (id)_volumeInfoFromStatFS:(statfs *)s count:(int)count usedBytesProvider:(id)provider volumeManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v11 = shared_filesystem_metadata_snapshot_service_log_handle(managerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17[0] = 67109120;
    v17[1] = count;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Creating DSVolumes for %d statfs entries", v17, 8u);
  }

  v12 = +[NSMutableArray array];
  if (s && count >= 1)
  {
    countCopy = count;
    do
    {
      v14 = [[DSVolume alloc] _initWithStatFS:s usedBytesProvider:providerCopy volumeManager:managerCopy];
      [v12 addObject:v14];

      ++s;
      --countCopy;
    }

    while (countCopy);
  }

  v15 = [v12 copy];

  return v15;
}

+ (id)_safeFilenameForListingVolume:(id)volume pathExtension:(id)extension
{
  volumeCopy = volume;
  extensionCopy = extension;
  if (qword_10006E590 != -1)
  {
    sub_100030A58();
  }

  if ([volumeCopy isRootVolume])
  {
    v7 = @"RootVolume";
  }

  else
  {
    mountPoint = [volumeCopy mountPoint];
    v7 = [mountPoint stringByTrimmingCharactersInSet:qword_10006E588];
  }

  mountedFrom = [volumeCopy mountedFrom];
  v10 = [mountedFrom stringByTrimmingCharactersInSet:qword_10006E588];
  v11 = [NSString stringWithFormat:@"%@-%@", v7, v10];

  v12 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  if ([v12 length] >= 0x33)
  {
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v12 hash]);

    v12 = v13;
  }

  extensionCopy = [NSString stringWithFormat:@"%@.%@", v12, extensionCopy];

  return extensionCopy;
}

+ (id)_safeStringFromStatFSCString:(const char *)string
{
  v4 = [NSString stringWithCString:string encoding:4];
  if (v4)
  {
    v5 = v4;
    goto LABEL_6;
  }

  v6 = shared_filesystem_metadata_snapshot_service_log_handle(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100030A6C();
  }

  v7 = [NSString stringWithCString:string encoding:4];
  v5 = v7;
  if (v7)
  {
LABEL_6:
    v7 = [(__CFString *)v5 length];
    if (v7)
    {
      goto LABEL_10;
    }
  }

  v8 = shared_filesystem_metadata_snapshot_service_log_handle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100030AD4();
  }

  v5 = @"UNKNOWN";
LABEL_10:
  v9 = shared_filesystem_metadata_snapshot_service_log_handle(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100030B3C();
  }

  return v5;
}

+ (void)_getAttributionTagPathsInDirectory:(id)directory reply:(id)reply
{
  directoryCopy = directory;
  replyCopy = reply;
  v37[1] = 0;
  v37[2] = 0x80000000000;
  v37[0] = 0xA000000900000005;
  v7 = malloc_type_malloc(0x8000uLL, 0x982A8E1AuLL);
  if (v7)
  {
    v8 = v7;
    v9 = open([directoryCopy fileSystemRepresentation], 1048832);
    if ((v9 & 0x80000000) != 0)
    {
      v29 = shared_filesystem_metadata_snapshot_service_log_handle(v9);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100030C4C(directoryCopy);
      }

      free(v8);
    }

    else
    {
      v33 = v9;
      v35 = 0;
      v36 = directoryCopy;
      v11 = 0;
      v34 = replyCopy;
      v32 = v8;
      *&v10 = 136315394;
      v31 = v10;
LABEL_4:
      v12 = v32;
      while (1)
      {
        v13 = getattrlistbulk(v33, v37, v32, 0x8000uLL, 0x20uLL);
        if (v13 == -1)
        {
          break;
        }

        v14 = v13;
        if (!v13)
        {
          goto LABEL_37;
        }

        if (v13 >= 1)
        {
          while (1)
          {
            v17 = *v12;
            v18 = v12[1];
            v19 = v12[5];
            if ((v18 & 0x20000000) == 0)
            {
              break;
            }

            v26 = v12[6];
            if (v26)
            {
              v27 = shared_filesystem_metadata_snapshot_service_log_handle(v13);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                fileSystemRepresentation = [v36 fileSystemRepresentation];
                *buf = v31;
                *&buf[4] = fileSystemRepresentation;
                *&buf[12] = 1024;
                *&buf[14] = v26;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error while processing directory %s for attribution tags: %d", buf, 0x12u);
              }

              goto LABEL_26;
            }

            v15 = (v12 + 7);
            if (v18)
            {
              goto LABEL_13;
            }

LABEL_14:
            if ((v18 & 8) != 0 && *v15 == 1 && (v19 & 0x800) != 0)
            {
              v24 = *(v15 + 1);
              if (v24)
              {
                memset(v40, 0, 256);
                *&buf[8] = 0u;
                v39 = 0u;
                *buf = v24;
                v13 = fsctl([v11 fileSystemRepresentation], 0xC1284A72uLL, buf, 0);
                if (!v13)
                {
                  v25 = [NSString stringWithUTF8String:v40];

                  v13 = v34[2](v34, v11, v25, *buf);
                  v35 = v25;
                }
              }
            }

LABEL_26:
            v12 = (v12 + v17);
            if (!--v14)
            {
              goto LABEL_4;
            }
          }

          v15 = (v12 + 6);
          if ((v18 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_13:
          v20 = v15 + 2;
          v21 = [NSString stringWithUTF8String:v15 + *v15, v31];
          v22 = [v36 stringByAppendingPathComponent:v21];

          v15 = v20;
          v11 = v22;
          goto LABEL_14;
        }
      }

      v30 = shared_filesystem_metadata_snapshot_service_log_handle(v13);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100030BC0();
      }

LABEL_37:
      free(v32);
      close(v33);

      directoryCopy = v36;
      replyCopy = v34;
    }
  }

  else
  {
    v28 = shared_filesystem_metadata_snapshot_service_log_handle(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100030CE0(directoryCopy);
    }
  }
}

+ (BOOL)_isDirectoryPartOfSAFHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v7 = 0;
  v4 = fsctl([hierarchyCopy fileSystemRepresentation], 0x40084A25uLL, &v7, 0);
  if (v4)
  {
    v5 = shared_filesystem_metadata_snapshot_service_log_handle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100030D74(hierarchyCopy);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    LODWORD(v5) = (BYTE3(v7) >> 5) & 1;
  }

  return v5;
}

+ (void)_getDirStatsType:(id)type reply:(id)reply
{
  typeCopy = type;
  replyCopy = reply;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0;
  v10 = 1;
  if (fsctl([typeCopy fileSystemRepresentation], 0xC1104A71uLL, &v9, 0))
  {
    v7 = __error();
    if (*v7 != 45)
    {
      v8 = shared_filesystem_metadata_snapshot_service_log_handle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100030DF8(typeCopy);
      }
    }

    (*(replyCopy + 2))(replyCopy, typeCopy, 0, 0);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, typeCopy, 1, (v10 >> 2) & 1);
  }
}

+ (void)_getSharedExtensInfo:(id)info reply:(id)reply
{
  replyCopy = reply;
  fileSystemRepresentation = [info fileSystemRepresentation];
  v7 = malloc_type_malloc(0x27100uLL, 0x1000040F6D918ACuLL);
  if (v7)
  {
    v8 = v7;
    v25 = 0u;
    v26 = 0u;
    v27 = v7;
    LODWORD(v26) = 160000;
    v9 = v7 + 16;
    while (1)
    {
      v10 = fsctl(fileSystemRepresentation, 0xC0284A7DuLL, &v25, 0);
      if (v10)
      {
        break;
      }

      if (DWORD1(v26))
      {
        v11 = 0;
        v12 = DWORD2(v26);
        v13 = v9;
        do
        {
          v14 = *(v13 - 2);
          v15 = *v13;
          (*(replyCopy + 2))(replyCopy, v14 * v12, *(v13 - 1), *v13 * v12, *(v13 + 2));
          *&v25 = v15 + v14;
          ++v11;
          v13 += 32;
        }

        while (v11 < DWORD1(v26));
        if (DWORD1(v26))
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v24 = shared_filesystem_metadata_snapshot_service_log_handle(v10);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100030E8C();
    }

LABEL_15:
    free(v8);
  }

  else
  {
    v16 = shared_filesystem_metadata_snapshot_service_log_handle(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100030F18(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

+ (void)_writeCloneGroupsRecordsForVolume:(id)volume toFile:(__sFILE *)file error:(id *)error
{
  volumeCopy = volume;
  v7 = malloc_type_malloc(0x40000uLL, 0x5868BCDFuLL);
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v25 = v7;
    v26 = 127;
    v27 = 1;
    v28 = 0;
    while (1)
    {
      *(&v25 + 1) = 0x40000;
      if (fsctl([volumeCopy fileSystemRepresentation], 0xC0684A87uLL, v24, 0))
      {
        break;
      }

      if (*(&v25 + 1))
      {
        v16 = 0;
        while (1)
        {
          v17 = v8[v16];
          v18 = v16 + 1;
          if (v17 <= 3)
          {
            if (v8[v16] > 1u)
            {
              if (v17 != 2)
              {
                if (v17 == 3)
                {
                  v12 = *&v8[v18];
                  v18 = v16 + 5;
                }

                goto LABEL_30;
              }

              v11 = *&v8[v18];
            }

            else if (v8[v16])
            {
              v10 = *&v8[v18];
            }

            else
            {
              v9 = *&v8[v18];
            }

            goto LABEL_29;
          }

          if (v8[v16] > 5u)
          {
            if (v17 != 6)
            {
              if (v17 == 255)
              {
                if (fprintf(file, "%llu\t%llu\t%llu\t%d\t%llu\t%llu\t%llu\n", v9, v10, v11, v12, v15, v13, v14) == -1)
                {
                  v19 = __error();
                  if ((byte_10006E598 & 1) == 0)
                  {
                    v20 = *v19;
                    byte_10006E598 = 1;
                    v21 = shared_filesystem_metadata_snapshot_service_log_handle(v19);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 67109120;
                      v30 = v20;
                      _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", buf, 8u);
                    }
                  }
                }

                v15 = 0;
                v14 = 0;
                v13 = 0;
                v12 = 0;
                v11 = 0;
                v10 = 0;
                v9 = 0;
              }

              goto LABEL_30;
            }

            v14 = *&v8[v18];
            goto LABEL_29;
          }

          if (v17 == 4)
          {
            break;
          }

          if (v17 == 5)
          {
            v13 = *&v8[v18];
LABEL_29:
            v18 = v16 + 9;
          }

LABEL_30:
          v16 = v18;
          if (v18 >= *(&v25 + 1))
          {
            goto LABEL_31;
          }
        }

        v15 = *&v8[v18];
        goto LABEL_29;
      }

LABEL_31:
      if (v28)
      {
        goto LABEL_38;
      }
    }

    if (errorCopy)
    {
      *errorCopy = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    free(v8);
  }

  else if (error)
  {
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
  }

LABEL_38:
}

+ (void)_getPurgeableRecordsInfo:(id)info reply:(id)reply
{
  replyCopy = reply;
  fileSystemRepresentation = [info fileSystemRepresentation];
  v7 = malloc_type_malloc(0x8000uLL, 0x1000040FA0F61DDuLL);
  if (v7)
  {
    v8 = v7;
    v15[1] = 0;
    v16 = 0u;
    v17 = 0u;
    v15[2] = 512;
    v18 = v7;
    v15[0] = 6;
    v9 = v7 + 24;
    while (1)
    {
      v10 = fsctl(fileSystemRepresentation, 0xC0404A83uLL, v15, 0);
      if (v10)
      {
        break;
      }

      if (*(&v17 + 1))
      {
        v11 = 0;
        v12 = v9;
        do
        {
          (*(replyCopy + 2))(replyCopy, *(v12 - 3), *(v12 - 2), *v12, v12[3]);
          ++v11;
          v12 += 8;
        }

        while (*(&v17 + 1) > v11);
      }

      if (!v17)
      {
        goto LABEL_15;
      }
    }

    v14 = shared_filesystem_metadata_snapshot_service_log_handle(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100030F90();
    }

LABEL_15:
    free(v8);
  }

  else
  {
    v13 = shared_filesystem_metadata_snapshot_service_log_handle(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003101C(v13);
    }
  }
}

- (BOOL)shouldListContents
{
  if ([(DSVolume *)self isRootVolume])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    _flags = [(DSVolume *)self _flags];
    LODWORD(v3) = (_flags >> 12) & 1;
    if ((_flags & 0x1000) == 0)
    {
      v5 = shared_filesystem_metadata_snapshot_service_log_handle(_flags);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543618;
        selfCopy2 = self;
        v11 = 1024;
        _flags2 = [(DSVolume *)self _flags];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping non-local volume %{public}@ (flags: %u)", &v9, 0x12u);
      }
    }

    _flags3 = [(DSVolume *)self _flags];
    if ((_flags3 & 0x40000000) != 0)
    {
      v3 = shared_filesystem_metadata_snapshot_service_log_handle(_flags3);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        _flags4 = [(DSVolume *)self _flags];
        v9 = 138543618;
        selfCopy2 = self;
        v11 = 1024;
        _flags2 = _flags4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping snapshot volume %{public}@ (flags: %u)", &v9, 0x12u);
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)_pathRepresentationForListing:(char *)listing isDirectory:(BOOL)directory
{
  if (!listing)
  {
    goto LABEL_7;
  }

  directoryCopy = directory;
  v7 = strlen(listing);
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v7 != 1)
  {
    if (listing[v7 - 1] != 47)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_29;
  }

  if (*listing != 47)
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v8 = listing[1] != 0;
LABEL_9:
  _volumeManager = [(DSVolume *)self _volumeManager];
  _snapshotRequest = [_volumeManager _snapshotRequest];
  snapshotFileManager = [_snapshotRequest snapshotFileManager];

  if ([snapshotFileManager shouldHashVolumeListings])
  {
    v13 = [NSURL fileURLWithFileSystemRepresentation:listing isDirectory:0 relativeToURL:0];
    v14 = v13;
    if (v13)
    {
      path = [v13 path];
      if (directoryCopy)
      {
        lastPathComponent = &stru_100069618;
      }

      else
      {
        lastPathComponent = [v14 lastPathComponent];
        uRLByDeletingLastPathComponent = [v14 URLByDeletingLastPathComponent];
        path2 = [uRLByDeletingLastPathComponent path];

        path = path2;
      }

      v20 = [path hash];
      v21 = [NSNumber numberWithUnsignedInteger:v20];
      __hashes = [(DSVolume *)self __hashes];
      v23 = [__hashes containsObject:v21];

      if ((v23 & 1) == 0)
      {
        __hashes2 = [(DSVolume *)self __hashes];
        [__hashes2 addObject:v21];

        sharedDirectoriesMapFile = [snapshotFileManager sharedDirectoriesMapFile];
        uTF8String = [path UTF8String];
        v27 = "";
        if (v8)
        {
          v27 = "/";
        }

        if (fprintf(sharedDirectoriesMapFile, "%lu\t%s%s\n", v20, uTF8String, v27) == -1)
        {
          v28 = __error();
          if ((byte_10006E599 & 1) == 0)
          {
            byte_10006E599 = 1;
            v29 = shared_filesystem_metadata_snapshot_service_log_handle(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              sub_10002FC44();
            }
          }
        }
      }

      v9 = [NSString stringWithFormat:@"<%lu>%@", v20, lastPathComponent];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v17 = "";
    if (v8 && directoryCopy)
    {
      v17 = "/";
    }

    v9 = [NSString stringWithFormat:@"%s%s", listing, v17];
  }

LABEL_29:

  return v9;
}

- (BOOL)listContentsWithEntryCount:(unint64_t *)count andError:(id *)error
{
  errorCopy = error;
  if (error)
  {
    *error = 0;
  }

  selfCopy = self;
  shouldListContents = [(DSVolume *)selfCopy shouldListContents];
  if ((shouldListContents & 1) == 0)
  {
    snapshotFileManager = shared_filesystem_metadata_snapshot_service_log_handle(shouldListContents);
    if (os_log_type_enabled(snapshotFileManager, OS_LOG_TYPE_DEFAULT))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = selfCopy;
      _os_log_impl(&_mh_execute_header, snapshotFileManager, OS_LOG_TYPE_DEFAULT, "Skipping listing files for volume %@", &buf, 0xCu);
    }

    goto LABEL_14;
  }

  countCopy = count;
  hasPurgeableFilesCapability = [(DSVolume *)selfCopy hasPurgeableFilesCapability];
  _volumeManager = [(DSVolume *)selfCopy _volumeManager];
  _snapshotRequest = [_volumeManager _snapshotRequest];
  snapshotFileManager = [_snapshotRequest snapshotFileManager];

  sharedLogFile = [snapshotFileManager sharedLogFile];
  v12 = shared_filesystem_metadata_snapshot_service_log_handle(sharedLogFile);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    buf.st_dev = 138412290;
    *&buf.st_mode = selfCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Listing files for volume %@", &buf, 0xCu);
  }

  if (qword_10006E580 != -1)
  {
    sub_10003109C();
  }

  v13 = *&qword_10006E578;
  safeFilenameForListing = [(DSVolume *)selfCopy safeFilenameForListing];
  v15 = [snapshotFileManager createFileForWritingWithName:safeFilenameForListing error:errorCopy];

  if (!v15)
  {
    goto LABEL_314;
  }

  if (selfCopy->_supportsAttributionTags)
  {
    safeFilenameForAttributionTagsListing = [(DSVolume *)selfCopy safeFilenameForAttributionTagsListing];
    v18 = [snapshotFileManager createFileForWritingWithName:safeFilenameForAttributionTagsListing error:errorCopy];

    v212 = v18;
    if (!v18)
    {
LABEL_314:
      LOBYTE(v19) = 0;
      goto LABEL_315;
    }
  }

  else
  {
    v20 = shared_filesystem_metadata_snapshot_service_log_handle(v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      mountPoint = [(DSVolume *)selfCopy mountPoint];
      uTF8String = [mountPoint UTF8String];
      buf.st_dev = 136315138;
      *&buf.st_mode = uTF8String;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Attribution tags is not supported/enabled on volume %s", &buf, 0xCu);
    }

    v212 = 0;
  }

  if (selfCopy->_shouldCollectDirStatsData)
  {
    safeFilenameForDirStatsDataListing = [(DSVolume *)selfCopy safeFilenameForDirStatsDataListing];
    v24 = [snapshotFileManager createFileForWritingWithName:safeFilenameForDirStatsDataListing error:errorCopy];

    if (!v24)
    {
      goto LABEL_314;
    }
  }

  else
  {
    v24 = 0;
  }

  fileSystemRepresentation = 0;
  v237 = 0;
  mountPoint2 = [(DSVolume *)selfCopy mountPoint];
  fileSystemRepresentation = [mountPoint2 fileSystemRepresentation];
  v237 = 0;

  v220 = fts_open(&fileSystemRepresentation, 80, 0);
  if (!v220)
  {
    v68 = *__error();
    mountPoint3 = [(DSVolume *)selfCopy mountPoint];
    v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error opening volume at %s: %d (%s)", [mountPoint3 fileSystemRepresentation], v68, strerror(v68));

    v70 = fprintf(sharedLogFile, "%s\n", [(FILE *)v19 UTF8String]);
    if (v70 == -1)
    {
      v70 = __error();
      if ((byte_10006E59A & 1) == 0)
      {
        byte_10006E59A = 1;
        v71 = shared_filesystem_metadata_snapshot_service_log_handle(v70);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v72 = snapshotFileManager;
    v73 = shared_filesystem_metadata_snapshot_service_log_handle(v70);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_100031308(v19);
    }

    if (errorCopy)
    {
      v74 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v68 userInfo:0];
      v234[0] = NSUnderlyingErrorKey;
      v234[1] = NSLocalizedDescriptionKey;
      v235[0] = v74;
      v235[1] = v19;
      v75 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:2];
      *errorCopy = [NSError errorWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65544 userInfo:v75];
    }

    LOBYTE(v19) = 0;
    snapshotFileManager = v72;
    goto LABEL_315;
  }

  if (fprintf(v15, "%s\t%s\n", "Version:", "1013") == -1)
  {
    v26 = __error();
    if ((byte_10006E59B & 1) == 0)
    {
      byte_10006E59B = 1;
      v27 = shared_filesystem_metadata_snapshot_service_log_handle(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  shouldHashVolumeListings = [snapshotFileManager shouldHashVolumeListings];
  v29 = "NO";
  if (shouldHashVolumeListings)
  {
    v29 = "YES";
  }

  if (fprintf(v15, "%s\t%s\n", "Hashed:", v29) == -1)
  {
    v30 = __error();
    if ((byte_10006E59C & 1) == 0)
    {
      byte_10006E59C = 1;
      v31 = shared_filesystem_metadata_snapshot_service_log_handle(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v15, "%s\t%lld\n", "Total:", [(DSVolume *)selfCopy capacityBytes]) == -1)
  {
    v32 = __error();
    if ((byte_10006E59D & 1) == 0)
    {
      byte_10006E59D = 1;
      v33 = shared_filesystem_metadata_snapshot_service_log_handle(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v15, "%s\t%lld\n", "Used:", [(DSVolume *)selfCopy usedBytes]) == -1)
  {
    v34 = __error();
    if ((byte_10006E59E & 1) == 0)
    {
      byte_10006E59E = 1;
      v35 = shared_filesystem_metadata_snapshot_service_log_handle(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v15, "%s\t%lld\n", "Free:", [(DSVolume *)selfCopy freeBytes]) == -1)
  {
    v36 = __error();
    if ((byte_10006E59F & 1) == 0)
    {
      byte_10006E59F = 1;
      v37 = shared_filesystem_metadata_snapshot_service_log_handle(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v15, "------------------------------------------------------------------------------------------------\n") == -1)
  {
    v38 = __error();
    if ((byte_10006E5A0 & 1) == 0)
    {
      byte_10006E5A0 = 1;
      v39 = shared_filesystem_metadata_snapshot_service_log_handle(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v208 = v24;
  v218 = sharedLogFile;
  if (fprintf(v15, "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n", "Size-On-Disk", "File-Size", "Compression", "FS-Purgeable-Flags", "mtime", "Mode", "UID", "GID", "Path") == -1)
  {
    v40 = __error();
    if ((byte_10006E5A1 & 1) == 0)
    {
      byte_10006E5A1 = 1;
      v41 = shared_filesystem_metadata_snapshot_service_log_handle(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v15, "------------------------------------------------------------------------------------------------\n") == -1)
  {
    v42 = __error();
    if ((byte_10006E5A2 & 1) == 0)
    {
      byte_10006E5A2 = 1;
      v43 = shared_filesystem_metadata_snapshot_service_log_handle(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (fprintf(v15, "<BEGIN>\n") == -1)
  {
    v44 = __error();
    if ((byte_10006E5A3 & 1) == 0)
    {
      byte_10006E5A3 = 1;
      v45 = shared_filesystem_metadata_snapshot_service_log_handle(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  if (selfCopy->_supportsAttributionTags)
  {
    if (fprintf(v212, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v46 = __error();
      if ((byte_10006E5A4 & 1) == 0)
      {
        byte_10006E5A4 = 1;
        v47 = shared_filesystem_metadata_snapshot_service_log_handle(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v212, "%s\t%s\t%s\n", "Tag-Owner", "Tag-Hash", "Path") == -1)
    {
      v48 = __error();
      if ((byte_10006E5A5 & 1) == 0)
      {
        byte_10006E5A5 = 1;
        v49 = shared_filesystem_metadata_snapshot_service_log_handle(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v212, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v50 = __error();
      if ((byte_10006E5A6 & 1) == 0)
      {
        byte_10006E5A6 = 1;
        v51 = shared_filesystem_metadata_snapshot_service_log_handle(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v212, "<BEGIN>\n") == -1)
    {
      v52 = __error();
      if ((byte_10006E5A7 & 1) == 0)
      {
        byte_10006E5A7 = 1;
        v53 = shared_filesystem_metadata_snapshot_service_log_handle(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }
  }

  if (selfCopy->_shouldCollectDirStatsData)
  {
    if (fprintf(v24, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v54 = __error();
      if ((byte_10006E5A8 & 1) == 0)
      {
        byte_10006E5A8 = 1;
        v55 = shared_filesystem_metadata_snapshot_service_log_handle(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v24, "%s\t%s\n", "Path", "SAFDirStats") == -1)
    {
      v56 = __error();
      if ((byte_10006E5A9 & 1) == 0)
      {
        byte_10006E5A9 = 1;
        v57 = shared_filesystem_metadata_snapshot_service_log_handle(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v24, "------------------------------------------------------------------------------------------------\n") == -1)
    {
      v58 = __error();
      if ((byte_10006E5AA & 1) == 0)
      {
        byte_10006E5AA = 1;
        v59 = shared_filesystem_metadata_snapshot_service_log_handle(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (fprintf(v24, "<BEGIN>\n") == -1)
    {
      v60 = __error();
      if ((byte_10006E5AB & 1) == 0)
      {
        byte_10006E5AB = 1;
        v61 = shared_filesystem_metadata_snapshot_service_log_handle(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }
  }

  memset(&buf, 0, sizeof(buf));
  if (!fstatat(-2, fileSystemRepresentation, &buf, 544))
  {
    v207 = snapshotFileManager;
    v76 = fts_read(v220);
    if (v76)
    {
      v77 = v76;
      v214 = 0;
      v219 = 0;
      v209 = 0;
      v78 = 1000.0 / v13;
      v213 = v15;
      v210 = errorCopy;
      while (1)
      {
        v79 = objc_autoreleasePoolPush();
        fts_info = v77->fts_info;
        if (fts_info <= 0xD)
        {
          if (((1 << fts_info) & 0x490) != 0)
          {
            v82 = v79;
            v83 = *__error();
            fts_path = v77->fts_path;
            v85 = strerror(v83);
            v86 = fprintf(v218, "Error reading file at %s: %d (%s)\n", fts_path, v83, v85);
            if (v86 == -1)
            {
              v86 = __error();
              if ((byte_10006E5AD & 1) == 0)
              {
                v87 = *v86;
                byte_10006E5AD = 1;
                v88 = shared_filesystem_metadata_snapshot_service_log_handle(v86);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
                {
                  *v229 = 67109120;
                  LODWORD(v230) = v87;
                  _os_log_fault_impl(&_mh_execute_header, v88, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v229, 8u);
                }
              }
            }

            v89 = shared_filesystem_metadata_snapshot_service_log_handle(v86);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              v140 = v77->fts_path;
              v141 = strerror(v83);
              *v229 = 136315650;
              v230 = v140;
              v231 = 1024;
              *v232 = v83;
              *&v232[4] = 2080;
              *&v232[6] = v141;
              _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Error reading file at %s: %d (%s)", v229, 0x1Cu);
            }

            v79 = v82;
          }

          else
          {
            if (((1 << fts_info) & 0x3100) != 0)
            {
              context = v79;
              v81 = 0;
              goto LABEL_153;
            }

            if (fts_info == 1)
            {
              context = v79;
              v90 = [NSString stringWithUTF8String:v77->fts_path];
              if (selfCopy->_supportsAttributionTags && ![DSVolume _isDirectoryPartOfSAFHierarchy:v90])
              {
                v226[0] = _NSConcreteStackBlock;
                v226[1] = 3221225472;
                v226[2] = sub_10000F664;
                v226[3] = &unk_100068970;
                v226[4] = selfCopy;
                v226[5] = v218;
                v226[6] = v212;
                [DSVolume _getAttributionTagPathsInDirectory:v90 reply:v226];
              }

              if (selfCopy->_shouldCollectDirStatsData)
              {
                v225[0] = _NSConcreteStackBlock;
                v225[1] = 3221225472;
                v225[2] = sub_10000F8CC;
                v225[3] = &unk_100068998;
                v225[4] = selfCopy;
                v225[5] = v77;
                v225[6] = v218;
                v225[7] = v208;
                [DSVolume _getDirStatsType:v90 reply:v225];
              }

              v81 = 1;
LABEL_153:
              v91 = v77->fts_path;
              v92 = &off_100068958;
              v93 = "/System/Library/Caches/com.apple.factorydata";
              while (strcmp(v93, v91))
              {
                v94 = *v92++;
                v93 = v94;
                if (!v94)
                {
                  goto LABEL_165;
                }
              }

              v95 = fprintf(v218, "Skipping descendents of blocklisted directory at %s\n", v91);
              if (v95 == -1)
              {
                v95 = __error();
                if ((byte_10006E5B3 & 1) == 0)
                {
                  v96 = *v95;
                  byte_10006E5B3 = 1;
                  v97 = shared_filesystem_metadata_snapshot_service_log_handle(v95);
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
                  {
                    *v229 = 67109120;
                    LODWORD(v230) = v96;
                    _os_log_fault_impl(&_mh_execute_header, v97, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v229, 8u);
                  }
                }
              }

              v98 = shared_filesystem_metadata_snapshot_service_log_handle(v95);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                v99 = v77->fts_path;
                *v229 = 136315138;
                v230 = v99;
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Skipping descendents of blocklisted directory at %s", v229, 0xCu);
              }

              fts_set(v220, v77, 4);
LABEL_165:
              fts_statp = v77->fts_statp;
              st_blocks = fts_statp->st_blocks;
              st_size = fts_statp->st_size;
              if (v81)
              {
                v102 = 45;
              }

              else if ((fts_statp->st_flags & 0x20) != 0)
              {
                v102 = 99;
              }

              else
              {
                v102 = 45;
              }

              v224 = 0;
              if (hasPurgeableFilesCapability && v77->fts_info == 8 && fsctl(v77->fts_path, 0x40084A47uLL, &v224, 0))
              {
                v103 = *__error();
                v104 = v77->fts_path;
                v105 = strerror(v103);
                v106 = fprintf(v218, "Error getting purgeable flags for file at %s: %d (%s)\n", v104, v103, v105);
                if (v106 == -1)
                {
                  v106 = __error();
                  if ((byte_10006E5B4 & 1) == 0)
                  {
                    v107 = *v106;
                    byte_10006E5B4 = 1;
                    v108 = shared_filesystem_metadata_snapshot_service_log_handle(v106);
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
                    {
                      *v229 = 67109120;
                      LODWORD(v230) = v107;
                      _os_log_fault_impl(&_mh_execute_header, v108, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v229, 8u);
                    }
                  }
                }

                v109 = shared_filesystem_metadata_snapshot_service_log_handle(v106);
                if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                {
                  v143 = v77->fts_path;
                  v144 = strerror(v103);
                  *v229 = 136315650;
                  v230 = v143;
                  v231 = 1024;
                  *v232 = v103;
                  *&v232[4] = 2080;
                  *&v232[6] = v144;
                  _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "Error getting purgeable flags for file at %s: %d (%s)", v229, 0x1Cu);
                }

                v224 = -1;
              }

              v110 = st_blocks << 9;
              v111 = v77->fts_statp;
              tv_sec = v111->st_mtimespec.tv_sec;
              st_mode = v111->st_mode;
              st_uid = v111->st_uid;
              st_gid = v111->st_gid;
              v116 = [(DSVolume *)selfCopy _pathRepresentationForListing:v77->fts_path isDirectory:v81];
              v117 = v116;
              if (v116)
              {
                v15 = v213;
                v118 = v219;
                if (fprintf(v213, "%llu\t%llu\t%c\t%llu\t%ld\t%u\t%u\t%u\t%s\n", v110, st_size, v102, v224, tv_sec, st_mode, st_uid, st_gid, [v116 UTF8String]) == -1)
                {
                  v119 = __error();
                  if ((byte_10006E5B6 & 1) == 0)
                  {
                    v120 = *v119;
                    byte_10006E5B6 = 1;
                    v121 = shared_filesystem_metadata_snapshot_service_log_handle(v119);
                    if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
                    {
                      *v229 = 67109120;
                      LODWORD(v230) = v120;
                      _os_log_fault_impl(&_mh_execute_header, v121, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v229, 8u);
                    }
                  }
                }

                ++v214;
              }

              else
              {
                v122 = fprintf(v218, "Error getting hashed path for %s (isDir: %d)\n", v77->fts_path, v81);
                if (v122 == -1)
                {
                  v122 = __error();
                  if ((byte_10006E5B5 & 1) == 0)
                  {
                    v123 = *v122;
                    byte_10006E5B5 = 1;
                    v124 = shared_filesystem_metadata_snapshot_service_log_handle(v122);
                    if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
                    {
                      *v229 = 67109120;
                      LODWORD(v230) = v123;
                      _os_log_fault_impl(&_mh_execute_header, v124, OS_LOG_TYPE_FAULT, "Failed to write to file: %{darwin.errno}d", v229, 8u);
                    }
                  }
                }

                v125 = shared_filesystem_metadata_snapshot_service_log_handle(v122);
                if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                {
                  v142 = v77->fts_path;
                  *v229 = 136315394;
                  v230 = v142;
                  v231 = 1024;
                  *v232 = v81;
                  _os_log_error_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "Error getting hashed path for %s (isDir: %d)", v229, 0x12u);
                }

                v15 = v213;
                v118 = v219;
              }

              v126 = v110 + v118;
              progress = [(DSVolume *)selfCopy progress];
              [progress fractionCompleted];
              v129 = v128;

              v219 = v126;
              if (v129 >= 1.0)
              {
                errorCopy = v210;
              }

              else
              {
                errorCopy = v210;
                if (v126 >= 10485760)
                {
                  v130 = mach_absolute_time();
                  if (v78 <= (v130 - v209))
                  {
                    v131 = v130;
                    progress2 = [(DSVolume *)selfCopy progress];
                    v133 = [progress2 completedUnitCount] + v219;

                    progress3 = [(DSVolume *)selfCopy progress];
                    totalUnitCount = [progress3 totalUnitCount];

                    if (v133 >= totalUnitCount)
                    {
                      v136 = totalUnitCount;
                    }

                    else
                    {
                      v136 = v133;
                    }

                    progress4 = [(DSVolume *)selfCopy progress];
                    [progress4 setCompletedUnitCount:v136];

                    v139 = shared_filesystem_metadata_snapshot_service_log_handle(v138);
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
                    {
                      sub_100031168(v227, selfCopy, &v228, v139);
                    }

                    v219 = 0;
                    v209 = v131;
                    v15 = v213;
                  }
                }
              }

              v79 = context;
            }
          }
        }

        objc_autoreleasePoolPop(v79);
        v77 = fts_read(v220);
        if (!v77)
        {
          goto LABEL_210;
        }
      }
    }

    v214 = 0;
LABEL_210:
    fts_close(v220);
    snapshotFileManager = v207;
    if (fprintf(v15, "<END>\n") == -1)
    {
      v145 = __error();
      if ((byte_10006E5B7 & 1) == 0)
      {
        byte_10006E5B7 = 1;
        v146 = shared_filesystem_metadata_snapshot_service_log_handle(v145);
        if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (selfCopy->_supportsAttributionTags && fprintf(v212, "<END>\n") == -1)
    {
      v147 = __error();
      if ((byte_10006E5B8 & 1) == 0)
      {
        byte_10006E5B8 = 1;
        v148 = shared_filesystem_metadata_snapshot_service_log_handle(v147);
        if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (selfCopy->_shouldCollectDirStatsData && fprintf(v208, "<END>\n") == -1)
    {
      v149 = __error();
      if ((byte_10006E5B9 & 1) == 0)
      {
        byte_10006E5B9 = 1;
        v150 = shared_filesystem_metadata_snapshot_service_log_handle(v149);
        if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    if (selfCopy->_supportsSharedExtents)
    {
      safeFilenameForSharedExtentsListing = [(DSVolume *)selfCopy safeFilenameForSharedExtentsListing];
      v19 = [v207 createFileForWritingWithName:safeFilenameForSharedExtentsListing error:errorCopy];

      if (!v19)
      {
        goto LABEL_315;
      }

      if (fprintf(v19, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v152 = __error();
        if ((byte_10006E5BA & 1) == 0)
        {
          byte_10006E5BA = 1;
          v153 = shared_filesystem_metadata_snapshot_service_log_handle(v152);
          if (os_log_type_enabled(v153, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "%s\t%s\t%s\t%s\n", "Physical-Block-Number", "Owning-Obj-Id", "Size", "Reference-Count") == -1)
      {
        v154 = __error();
        if ((byte_10006E5BB & 1) == 0)
        {
          byte_10006E5BB = 1;
          v155 = shared_filesystem_metadata_snapshot_service_log_handle(v154);
          if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v156 = __error();
        if ((byte_10006E5BC & 1) == 0)
        {
          byte_10006E5BC = 1;
          v157 = shared_filesystem_metadata_snapshot_service_log_handle(v156);
          if (os_log_type_enabled(v157, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "<BEGIN>\n") == -1)
      {
        v158 = __error();
        if ((byte_10006E5BD & 1) == 0)
        {
          byte_10006E5BD = 1;
          v159 = shared_filesystem_metadata_snapshot_service_log_handle(v158);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      mountPoint4 = [(DSVolume *)selfCopy mountPoint];
      v223[0] = _NSConcreteStackBlock;
      v223[1] = 3221225472;
      v223[2] = sub_10000FA44;
      v223[3] = &unk_1000689B8;
      v223[4] = v19;
      [DSVolume _getSharedExtensInfo:mountPoint4 reply:v223];

      if (fprintf(v19, "<END>\n") == -1)
      {
        v161 = __error();
        if ((byte_10006E5BF & 1) == 0)
        {
          byte_10006E5BF = 1;
          v162 = shared_filesystem_metadata_snapshot_service_log_handle(v161);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }
    }

    if (selfCopy->_supportsPurgeableRecords)
    {
      safeFilenameForPurgeableRecordsListing = [(DSVolume *)selfCopy safeFilenameForPurgeableRecordsListing];
      v19 = [v207 createFileForWritingWithName:safeFilenameForPurgeableRecordsListing error:errorCopy];

      if (!v19)
      {
        goto LABEL_315;
      }

      if (fprintf(v19, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v164 = __error();
        if ((byte_10006E5C0 & 1) == 0)
        {
          byte_10006E5C0 = 1;
          v165 = shared_filesystem_metadata_snapshot_service_log_handle(v164);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "%s\t%s\t%s\t%s\n", "Inode-Number", "Purgeable-Flags", "Last-Access-Time", "Purgeable-Size") == -1)
      {
        v166 = __error();
        if ((byte_10006E5C1 & 1) == 0)
        {
          byte_10006E5C1 = 1;
          v167 = shared_filesystem_metadata_snapshot_service_log_handle(v166);
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v168 = __error();
        if ((byte_10006E5C2 & 1) == 0)
        {
          byte_10006E5C2 = 1;
          v169 = shared_filesystem_metadata_snapshot_service_log_handle(v168);
          if (os_log_type_enabled(v169, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "<BEGIN>\n") == -1)
      {
        v170 = __error();
        if ((byte_10006E5C3 & 1) == 0)
        {
          byte_10006E5C3 = 1;
          v171 = shared_filesystem_metadata_snapshot_service_log_handle(v170);
          if (os_log_type_enabled(v171, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      mountPoint5 = [(DSVolume *)selfCopy mountPoint];
      v222[0] = _NSConcreteStackBlock;
      v222[1] = 3221225472;
      v222[2] = sub_10000FAD0;
      v222[3] = &unk_1000689D8;
      v222[4] = v19;
      [DSVolume _getPurgeableRecordsInfo:mountPoint5 reply:v222];

      if (fprintf(v19, "<END>\n") == -1)
      {
        v173 = __error();
        if ((byte_10006E5C5 & 1) == 0)
        {
          byte_10006E5C5 = 1;
          v174 = shared_filesystem_metadata_snapshot_service_log_handle(v173);
          if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }
    }

    if (selfCopy->_supportsCloneGroups)
    {
      safeFilenameForCloneGroupsListing = [(DSVolume *)selfCopy safeFilenameForCloneGroupsListing];
      v19 = [v207 createFileForWritingWithName:safeFilenameForCloneGroupsListing error:errorCopy];

      if (!v19)
      {
        goto LABEL_315;
      }

      if (fprintf(v19, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v176 = __error();
        if ((byte_10006E5C6 & 1) == 0)
        {
          byte_10006E5C6 = 1;
          v177 = shared_filesystem_metadata_snapshot_service_log_handle(v176);
          if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "%s\t%s\t%s\t%s\t%s\t%s\t%s\n", "Inode-Number", "Group", "Private-ID", "Flags", "Physical-Size", "DirStat-ID", "Tag-Hash") == -1)
      {
        v178 = __error();
        if ((byte_10006E5C7 & 1) == 0)
        {
          byte_10006E5C7 = 1;
          v179 = shared_filesystem_metadata_snapshot_service_log_handle(v178);
          if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "------------------------------------------------------------------------------------------------\n") == -1)
      {
        v180 = __error();
        if ((byte_10006E5C8 & 1) == 0)
        {
          byte_10006E5C8 = 1;
          v181 = shared_filesystem_metadata_snapshot_service_log_handle(v180);
          if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      if (fprintf(v19, "<BEGIN>\n") == -1)
      {
        v182 = __error();
        if ((byte_10006E5C9 & 1) == 0)
        {
          byte_10006E5C9 = 1;
          v183 = shared_filesystem_metadata_snapshot_service_log_handle(v182);
          if (os_log_type_enabled(v183, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      mountPoint6 = [(DSVolume *)selfCopy mountPoint];
      v221 = 0;
      [DSVolume _writeCloneGroupsRecordsForVolume:mountPoint6 toFile:v19 error:&v221];
      v185 = v221;

      if (v185)
      {
        snapshotFileManager = v207;
        if (errorCopy)
        {
          v186 = v185;
          *errorCopy = v185;
        }

        v187 = [v185 description];
        v188 = fprintf(v218, "Failed to get clone groups records with %s\n", [v187 fileSystemRepresentation]);

        if (v188 == -1)
        {
          v189 = __error();
          if ((byte_10006E5CA & 1) == 0)
          {
            byte_10006E5CA = 1;
            v190 = shared_filesystem_metadata_snapshot_service_log_handle(v189);
            if (os_log_type_enabled(v190, OS_LOG_TYPE_FAULT))
            {
              sub_10002FC44();
            }
          }
        }

        v191 = shared_filesystem_metadata_snapshot_service_log_handle(v189);
        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          sub_1000311E0(v185);
        }

        goto LABEL_314;
      }

      snapshotFileManager = v207;
      if (fprintf(v19, "<END>\n") == -1)
      {
        v193 = __error();
        if ((byte_10006E5CB & 1) == 0)
        {
          byte_10006E5CB = 1;
          v194 = shared_filesystem_metadata_snapshot_service_log_handle(v193);
          if (os_log_type_enabled(v194, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }
    }

    fflush(v15);
    progress5 = [(DSVolume *)selfCopy progress];
    totalUnitCount2 = [progress5 totalUnitCount];
    progress6 = [(DSVolume *)selfCopy progress];
    [progress6 setCompletedUnitCount:totalUnitCount2];

    v199 = shared_filesystem_metadata_snapshot_service_log_handle(v198);
    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
    {
      sub_100031274(selfCopy, v199);
    }

    v200 = [(DSVolume *)selfCopy description];
    v201 = fprintf(v218, "Done listing contents (%llu entries) for %s\n", v214, [v200 UTF8String]);

    if (v201 == -1)
    {
      v202 = __error();
      if ((byte_10006E5CC & 1) == 0)
      {
        byte_10006E5CC = 1;
        v203 = shared_filesystem_metadata_snapshot_service_log_handle(v202);
        if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v204 = shared_filesystem_metadata_snapshot_service_log_handle(v202);
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
    {
      v205 = [(DSVolume *)selfCopy description];
      uTF8String2 = [v205 UTF8String];
      *v229 = 134218242;
      v230 = v214;
      v231 = 2080;
      *v232 = uTF8String2;
      _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "Done listing contents (%llu entries) for %s", v229, 0x16u);
    }

    if (countCopy)
    {
      *countCopy = v214;
    }

LABEL_14:
    LOBYTE(v19) = 1;
    goto LABEL_315;
  }

  v62 = __error();
  v19 = *v62;
  v63 = fileSystemRepresentation;
  v64 = strerror(*v62);
  v65 = fprintf(v218, "fstatat() failed for [parent] file at %s/..: %d (%s)\n", v63, v19, v64);
  if (v65 == -1)
  {
    v65 = __error();
    if ((byte_10006E5AC & 1) == 0)
    {
      byte_10006E5AC = 1;
      v66 = shared_filesystem_metadata_snapshot_service_log_handle(v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v67 = shared_filesystem_metadata_snapshot_service_log_handle(v65);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    sub_1000310C4(&fileSystemRepresentation, v19);
  }

  if (!errorCopy)
  {
    goto LABEL_314;
  }

  [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
  *errorCopy = LOBYTE(v19) = 0;
LABEL_315:

  return v19;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_isRootVolume)
  {
    v6 = @" [RootVolume]";
  }

  else
  {
    v6 = &stru_100069618;
  }

  v7 = [NSString stringWithFormat:@"<%@: %p> %@ (%@)%@", v4, self, self->_mountPoint, self->_mountedFrom, v6];

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->_isRootVolume)
  {
    v6 = @" [RootVolume]";
  }

  else
  {
    v6 = &stru_100069618;
  }

  v7 = [NSString stringWithFormat:@"<%@> %@ (%@)%@", v4, self->_mountPoint, self->_mountedFrom, v6];

  return v7;
}

- (id)_initWithStatFS:(statfs *)s usedBytesProvider:(id)provider volumeManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  if (managerCopy)
  {
    v39.receiver = self;
    v39.super_class = DSVolume;
    v10 = [(DSVolume *)&v39 init];
    v11 = v10;
    if (v10)
    {
      v12 = shared_filesystem_metadata_snapshot_service_log_handle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        f_mntonname = s->f_mntonname;
        v42 = 2082;
        f_mntfromname = s->f_mntfromname;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Creating DSVolume for %{public}s (%{public}s)", buf, 0x16u);
      }

      objc_storeWeak(&v11->__volumeManager, managerCopy);
      v13 = [objc_opt_class() _safeStringFromStatFSCString:s->f_mntonname];
      mountPoint = v11->_mountPoint;
      v11->_mountPoint = v13;

      v15 = [objc_opt_class() _safeStringFromStatFSCString:s->f_mntfromname];
      mountedFrom = v11->_mountedFrom;
      v11->_mountedFrom = v15;

      v17 = [objc_opt_class() _safeStringFromStatFSCString:s->f_fstypename];
      filesystemTypeName = v11->__filesystemTypeName;
      v11->__filesystemTypeName = v17;

      f_bsize = s->f_bsize;
      v11->_capacityBytes = s->f_blocks * f_bsize;
      v11->_freeBytes = s->f_bavail * f_bsize;
      v11->_usedBytes = providerCopy[2](providerCopy, s);
      f_flags = s->f_flags;
      v11->__flags = f_flags;
      if ((f_flags & 0x4000) != 0)
      {
        v11->_isRootVolume = 1;
      }

      v21 = objc_alloc_init(NSMutableSet);
      hashes = v11->___hashes;
      v11->___hashes = v21;

      v23 = [NSProgress progressWithTotalUnitCount:v11->_usedBytes];
      progress = v11->_progress;
      v11->_progress = v23;

      v25 = [objc_opt_class() _safeFilenameForListingVolume:v11 pathExtension:@"fslisting"];
      safeFilenameForListing = v11->_safeFilenameForListing;
      v11->_safeFilenameForListing = v25;

      v27 = [objc_opt_class() _safeFilenameForListingVolume:v11 pathExtension:@"attrstaglisting"];
      safeFilenameForAttributionTagsListing = v11->_safeFilenameForAttributionTagsListing;
      v11->_safeFilenameForAttributionTagsListing = v27;

      v29 = [objc_opt_class() _safeFilenameForListingVolume:v11 pathExtension:@"dirstatsdatalisting"];
      safeFilenameForDirStatsDataListing = v11->_safeFilenameForDirStatsDataListing;
      v11->_safeFilenameForDirStatsDataListing = v29;

      v31 = [objc_opt_class() _safeFilenameForListingVolume:v11 pathExtension:@"sharedextentslisting"];
      safeFilenameForSharedExtentsListing = v11->_safeFilenameForSharedExtentsListing;
      v11->_safeFilenameForSharedExtentsListing = v31;

      v33 = [objc_opt_class() _safeFilenameForListingVolume:v11 pathExtension:@"purgeablerecordslisting"];
      safeFilenameForPurgeableRecordsListing = v11->_safeFilenameForPurgeableRecordsListing;
      v11->_safeFilenameForPurgeableRecordsListing = v33;

      v35 = [objc_opt_class() _safeFilenameForListingVolume:v11 pathExtension:@"clonegrouplisting"];
      safeFilenameForCloneGroupsListing = v11->_safeFilenameForCloneGroupsListing;
      v11->_safeFilenameForCloneGroupsListing = v35;

      v11->_hasPurgeableFilesCapability = [objc_opt_class() __checkPurgeableFilesCapabilityForVolume:v11];
      v11->_supportsAttributionTags = [objc_opt_class() __checkAttributionTagsCapabilityForVolume:v11];
      v11->_shouldCollectDirStatsData = [objc_opt_class() __checkDirStatsDataCapabilityForVolume:v11];
      v11->_supportsSharedExtents = [objc_opt_class() __checkDirStatsDataCapabilityForVolume:v11];
      v11->_supportsPurgeableRecords = [objc_opt_class() __checkDirStatsDataCapabilityForVolume:v11];
      v11->_supportsCloneGroups = [objc_opt_class() __checkCloneGroupCapabilityForVolume:v11];
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DSVolumeManager)_volumeManager
{
  WeakRetained = objc_loadWeakRetained(&self->__volumeManager);

  return WeakRetained;
}

@end