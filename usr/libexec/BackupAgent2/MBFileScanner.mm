@interface MBFileScanner
+ (id)_stringValueForStats:(_MBFileScannerDomainStats *)stats;
+ (id)treeWithPaths:(id)paths;
- (BOOL)_shouldNotBackupFile:(id)file domain:(id)domain;
- (MBFileScanner)initWithDelegate:(id)delegate mode:(unint64_t)mode enginePolicy:(unint64_t)policy debugContext:(id)context;
- (MBFileScannerDelegate)delegate;
- (id)_foundFile:(id)file snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats;
- (id)_performSinglePassEnumerationForDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath buffer:(id)buffer dirFd:(int)fd direntCount:(unsigned int)count directoryPathStack:(id)stack directoryCountStack:(id)self0 stats:(_MBFileScannerDomainStats *)self1;
- (id)_performTwoPassEnumerationForDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath buffer:(id)buffer dirFd:(int)fd direntCount:(unsigned int)count directoryPathStack:(id)stack directoryCountStack:(id)self0 stats:(_MBFileScannerDomainStats *)self1;
- (id)_scanDirectory:(id)directory domain:(id)domain fds:(id)fds domainDirFd:(int)fd snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)self0;
- (id)_scanDomain:(id)domain snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanFilesForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanFilesUsingGetattrlistbulkForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanFilesUsingReaddirForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)stats;
- (id)_scanTree:(id)tree forDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats;
- (id)loggableStats;
- (id)scanDomain:(id)domain snapshotMountPoint:(id)point;
- (void)_detectModifiedDomain:(id)domain relativePath:(id)path lastModified:(int64_t)modified;
- (void)_updateStats:(_MBFileScannerDomainStats *)stats file:(id)file;
- (void)cancel;
- (void)reset;
@end

@implementation MBFileScanner

- (MBFileScanner)initWithDelegate:(id)delegate mode:(unint64_t)mode enginePolicy:(unint64_t)policy debugContext:(id)context
{
  delegateCopy = delegate;
  contextCopy = context;
  if (!mode)
  {
    sub_1000A058C();
  }

  v12 = contextCopy;
  v21.receiver = self;
  v21.super_class = MBFileScanner;
  v13 = [(MBFileScanner *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_mode = mode;
    v14->_policy = policy;
    objc_storeStrong(&v14->_debugContext, context);
    v15 = objc_alloc_init(NSMutableSet);
    modifiedDomains = v14->_modifiedDomains;
    v14->_modifiedDomains = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    lastModifiedDateBySQLiteFileID = v14->_lastModifiedDateBySQLiteFileID;
    v14->_lastModifiedDateBySQLiteFileID = v17;

    v19 = objc_opt_class();
    v14->_delegateImpOfFileScannerDidFindFile = class_getMethodImplementation(v19, "fileScanner:didFindFile:");
    v14->_delegateRespondsToFileScannerShouldExcludeFile = objc_opt_respondsToSelector() & 1;
  }

  return v14;
}

- (id)scanDomain:(id)domain snapshotMountPoint:(id)point
{
  domainCopy = domain;
  pointCopy = point;
  if ((atomic_exchange(&self->_started, 1u) & 1) == 0)
  {
    *&self->_totalStats.totalFileSize = 0u;
    *&self->_totalStats.maxFileSize = 0u;
    self->_totalStats.symLinkCount = 0;
    *&self->_totalStats.dirCount = 0u;
    *&self->_totalStats.rootCloneCount = 0u;
    *&self->_totalStats.minFileSize = xmmword_1000B7470;
    self->_startTime = [(MBDebugContext *)self->_debugContext time];
  }

  v8 = objc_autoreleasePoolPush();
  name = [domainCopy name];
  rootPath = [domainCopy rootPath];
  volumeMountPoint = [domainCopy volumeMountPoint];
  if (![rootPath length])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].i32[0] = 138412290;
      *(buf[0].i64 + 4) = rootPath;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping domain %@ with nil or empty root path", buf, 0xCu);
      _MBLog(@"Df", "=scanning= Skipping domain %@ with nil or empty root path", rootPath);
    }
  }

  buf[0].i64[0] = 0;
  memset(&buf[1], 0, 56);
  *(buf + 8) = xmmword_1000B7470;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    mode = self->_mode;
    policy = self->_policy;
    *v23 = 138544642;
    v24 = name;
    v25 = 2112;
    v26 = rootPath;
    v27 = 2112;
    v28 = volumeMountPoint;
    v29 = 2112;
    v30 = pointCopy;
    v31 = 2048;
    v32 = mode;
    v33 = 2048;
    v34 = policy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=scanning= Scanning domain %{public}@ at %@ with mtpt %@ from snapshot %@ mode:0x%lx policy:0x%lx", v23, 0x3Eu);
    _MBLog(@"I ", "=scanning= Scanning domain %{public}@ at %@ with mtpt %@ from snapshot %@ mode:0x%lx policy:0x%lx", name, rootPath, volumeMountPoint, pointCopy, self->_mode, self->_policy);
  }

  v16 = [(MBFileScanner *)self _scanDomain:domainCopy snapshotPath:pointCopy stats:buf];
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() _stringValueForStats:buf];
    *v23 = 138543874;
    v24 = name;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=scanning= Finished scanning domain %{public}@ - %@: %@", v23, 0x20u);

    v19 = [objc_opt_class() _stringValueForStats:buf];
    _MBLog(@"Df", "=scanning= Finished scanning domain %{public}@ - %@: %@", name, v19, v16);
  }

  minFileSize = self->_totalStats.minFileSize;
  if (minFileSize >= buf[0].i64[1])
  {
    minFileSize = buf[0].i64[1];
  }

  self->_totalStats.totalFileSize += buf[0].i64[0];
  self->_totalStats.minFileSize = minFileSize;
  maxFileSize = self->_totalStats.maxFileSize;
  if (maxFileSize <= buf[1].i64[0])
  {
    maxFileSize = buf[1].i64[0];
  }

  self->_totalStats.maxFileSize = maxFileSize;
  *&self->_totalStats.fileCount = vaddq_s64(*&self->_totalStats.fileCount, *(&buf[1] + 8));
  *&self->_totalStats.fullCloneCount = vaddq_s64(*&self->_totalStats.fullCloneCount, *(&buf[2] + 8));
  *&self->_totalStats.hardLinkCount = vaddq_s64(*&self->_totalStats.hardLinkCount, *(&buf[3] + 8));

  objc_autoreleasePoolPop(v8);

  return v16;
}

+ (id)_stringValueForStats:(_MBFileScannerDomainStats *)stats
{
  v4 = [NSByteCountFormatter stringFromByteCount:stats->totalFileSize countStyle:0];
  minFileSize = stats->minFileSize;
  if (minFileSize == 0x7FFFFFFFFFFFFFFFLL)
  {
    minFileSize = -1;
  }

  maxFileSize = stats->maxFileSize;
  if (maxFileSize == 0x8000000000000000)
  {
    maxFileSize = -1;
  }

  v7 = [NSString stringWithFormat:@"size:%lld (%@)/%lld/%lld, files:%llu, dirs:%llu, clones:%llu/%llu, hardlinks:%llu, symlinks:%llu", stats->totalFileSize, v4, minFileSize, maxFileSize, stats->fileCount, stats->dirCount, stats->fullCloneCount, stats->rootCloneCount, stats->hardLinkCount, stats->symLinkCount];

  return v7;
}

- (id)loggableStats
{
  v3 = objc_opt_class();

  return [v3 _stringValueForStats:&self->_totalStats];
}

- (void)cancel
{
  if ((atomic_exchange(&self->_canceled, 1u) & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scanning= Canceling %@", buf, 0xCu);
      _MBLog(@"Df", "=scanning= Canceling %@", self);
    }
  }
}

- (void)reset
{
  modifiedDomains = self->_modifiedDomains;
  self->_modifiedDomains = 0;

  v4 = objc_alloc_init(NSMutableSet);
  v5 = self->_modifiedDomains;
  self->_modifiedDomains = v4;

  lastModifiedDateBySQLiteFileID = self->_lastModifiedDateBySQLiteFileID;
  self->_lastModifiedDateBySQLiteFileID = 0;

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = self->_lastModifiedDateBySQLiteFileID;
  self->_lastModifiedDateBySQLiteFileID = v7;

  self->_startTime = 0;
  atomic_store(0, &self->_started);
}

- (void)_updateStats:(_MBFileScannerDomainStats *)stats file:(id)file
{
  fileCopy = file;
  type = [fileCopy type];
  switch(type)
  {
    case 0x4000u:
      v14 = stats->dirCount + 1;
      stats->dirCount = v14;
      if (__ROR8__(0xD288CE703AFB7E91 * v14, 4) <= 0x68DB8BAC710CBuLL)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          dirCount = stats->dirCount;
          domain = [fileCopy domain];
          name = [domain name];
          *buf = 134218242;
          v34 = dirCount;
          v35 = 2114;
          v36 = name;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu dirs (%{public}@)", buf, 0x16u);

          v19 = stats->dirCount;
          domain2 = [fileCopy domain];
          name2 = [domain2 name];
          _MBLog(@"Df", "=scanning= Found %llu dirs (%{public}@)", v19, name2);
LABEL_27:
        }

LABEL_28:
      }

      break;
    case 0xA000u:
      ++stats->symLinkCount;
      break;
    case 0x8000u:
      v7 = [fileCopy size];
      v8 = v7;
      minFileSize = stats->minFileSize;
      if (minFileSize >= v7)
      {
        minFileSize = v7;
      }

      stats->totalFileSize += v7;
      stats->minFileSize = minFileSize;
      maxFileSize = stats->maxFileSize;
      v11 = stats->fileCount + 1;
      if (maxFileSize <= v7)
      {
        maxFileSize = v7;
      }

      stats->maxFileSize = maxFileSize;
      stats->fileCount = v11;
      if ([fileCopy isHardLink])
      {
        ++stats->hardLinkCount;
      }

      if ([fileCopy isFullClone])
      {
        inodeNumber = [fileCopy inodeNumber];
        if (inodeNumber == [fileCopy cloneID])
        {
          v13 = 48;
        }

        else
        {
          if (![fileCopy isFullClone])
          {
            goto LABEL_20;
          }

          v13 = 40;
        }

        ++*(&stats->totalFileSize + v13);
      }

LABEL_20:
      if (v8 >= 0x6FC23AC00)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_msgSend_absolutePath(fileCopy);
          domain3 = [fileCopy domain];
          name3 = [domain3 name];
          *buf = 134218498;
          v34 = v8;
          v35 = 2114;
          v36 = v23;
          v37 = 2114;
          v38 = name3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=scanning= Found large file (%lld) at %{public}@ (%{public}@)", buf, 0x20u);

          v26 = objc_msgSend_absolutePath(fileCopy);
          domain4 = [fileCopy domain];
          name4 = [domain4 name];
          _MBLog(@"Df", "=scanning= Found large file (%lld) at %{public}@ (%{public}@)", v8, v26, name4);
        }
      }

      if (__ROR8__(0xD288CE703AFB7E91 * stats->fileCount, 4) <= 0x68DB8BAC710CBuLL)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          fileCount = stats->fileCount;
          domain5 = [fileCopy domain];
          name5 = [domain5 name];
          *buf = 134218242;
          v34 = fileCount;
          v35 = 2114;
          v36 = name5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu files (%{public}@)", buf, 0x16u);

          v32 = stats->fileCount;
          domain2 = [fileCopy domain];
          name2 = [domain2 name];
          _MBLog(@"Df", "=scanning= Found %llu files (%{public}@)", v32, name2);
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      break;
  }
}

- (id)_scanDomain:(id)domain snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  pathCopy = path;
  name = [domainCopy name];
  if ([domainCopy isUninstalledAppDomain])
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = name;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scanning= Not scanning uninstalled app domain %{public}@", buf, 0xCu);
      _MBLog(@"Df", "=scanning= Not scanning uninstalled app domain %{public}@", name);
    }

    v12 = 0;
  }

  else
  {
    [(MBDebugContext *)self->_debugContext setValue:name forName:@"DomainName"];
    v11 = objc_opt_new();
    relativePathsToBackup = [domainCopy relativePathsToBackup];
    v14 = [relativePathsToBackup containsObject:&stru_1000FF270];

    if (v14)
    {
      v12 = [(MBFileScanner *)self _scanFilesForDomain:domainCopy fds:v11 snapshotPath:pathCopy relativePath:&stru_1000FF270 stats:stats];
    }

    else
    {
      relativePathsToBackup2 = [domainCopy relativePathsToBackup];
      v16 = [MBFileScanner treeWithPaths:relativePathsToBackup2];

      v17 = [(MBFileScanner *)self _scanTree:v16 forDomain:domainCopy fds:v11 snapshotPath:pathCopy relativePath:&stru_1000FF270 stats:stats];
      if (v17)
      {
        v12 = v17;
      }

      else
      {
        [domainCopy relativePathsToBackupLive];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v18 = v29 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          v20 = v19;
          v25 = v16;
          v21 = *v27;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [(MBFileScanner *)self _scanFilesForDomain:domainCopy fds:v11 snapshotPath:0 relativePath:*(*(&v26 + 1) + 8 * i) stats:stats];
              if (v23)
              {
                v12 = v23;
                goto LABEL_19;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

          v12 = 0;
LABEL_19:
          v16 = v25;
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  return v12;
}

+ (id)treeWithPaths:(id)paths
{
  pathsCopy = paths;
  v25 = objc_opt_new();
  v21 = objc_autoreleasePoolPush();
  v20 = [[NSSortDescriptor alloc] initWithKey:0 ascending:1];
  v40 = v20;
  v4 = [NSArray arrayWithObjects:&v40 count:1];
  v22 = pathsCopy;
  v5 = [pathsCopy sortedArrayUsingDescriptors:v4];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v8 = v25;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        pathComponents = [v7 pathComponents];
        v10 = [pathComponents countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          while (2)
          {
            v13 = 0;
            v14 = v8;
            do
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(pathComponents);
              }

              v15 = *(*(&v28 + 1) + 8 * v13);
              v16 = [v14 objectForKeyedSubscript:v15];
              if (v16)
              {
                v8 = v16;
                if (![v16 count])
                {
                  v17 = MBGetDefaultLog();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v37 = v7;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=scanning= Ignoring %{public}@ since one of its ancestors is already included", buf, 0xCu);
                    _MBLog(@"Df", "=scanning= Ignoring %{public}@ since one of its ancestors is already included", v7);
                  }

                  v8 = v14;
                  goto LABEL_21;
                }
              }

              else
              {
                v8 = objc_opt_new();
                [v14 setObject:v8 forKeyedSubscript:v15];
              }

              v13 = v13 + 1;
              v14 = v8;
            }

            while (v11 != v13);
            v11 = [pathComponents countByEnumeratingWithState:&v28 objects:v38 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:

        objc_autoreleasePoolPop(context);
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(v21);

  return v25;
}

- (BOOL)_shouldNotBackupFile:(id)file domain:(id)domain
{
  fileCopy = file;
  domainCopy = domain;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (!self->_delegateRespondsToFileScannerShouldExcludeFile || ([WeakRetained fileScanner:self shouldExcludeFile:fileCopy] & 1) == 0)
  {
    policy = self->_policy;
    if ((policy & 0x21) == 0x20)
    {
      sub_1000A05B8();
    }

    context = (policy & 0x22);
    domain2 = context != 0;
    v11 = (policy & 0x2A);
    relativePath = [fileCopy relativePath];
    v13 = _os_feature_enabled_impl();
    if (v11 == 8 && (v13 & 1) == 0 && [fileCopy isDataless])
    {
      domain2 = MBGetDefaultLog();
      if (os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v117 = fileCopy;
        _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (SF_DATALESS): %@", buf, 0xCu);
        _MBLog(@"Df", "=scanning= Not backed up (SF_DATALESS): %@", fileCopy);
      }

LABEL_57:

      LOBYTE(domain2) = 1;
LABEL_58:

      goto LABEL_59;
    }

    v99 = (policy & 0x22) != 0;
    if ([fileCopy isCompressed])
    {
      if ([fileCopy isRegularFile])
      {
        objc_msgSend_absolutePath(fileCopy);
        policy = v14 = policy;
        domain2 = open([policy fileSystemRepresentation], 256);

        LOBYTE(policy) = v14;
        if ((domain2 & 0x80000000) == 0)
        {
          v15 = pread(domain2, &__buf, 1uLL, 0);
          v16 = *__error();
          close(domain2);
          if (v15 < 0)
          {
            v17 = MBGetDefaultLog();
            domain2 = v17;
            if ((v16 & 0xFFFFFFFD) == 9)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *v117 = fileCopy;
                *&v117[8] = 1024;
                *&v117[10] = v16;
                _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (UF_COMPRESSED): %@ (%{errno}d)", buf, 0x12u);
                _MBLog(@"Df", "=scanning= Not backed up (UF_COMPRESSED): %@ (%{errno}d)", fileCopy, v16);
              }

              goto LABEL_57;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = domain2;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *v117 = relativePath;
                *&v117[8] = 1024;
                *&v117[10] = v16;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=scanning= pread failed for %@: %{errno}d", buf, 0x12u);
              }

              _MBLog(@"E ", "=scanning= pread failed for %@: %{errno}d", relativePath, v16);
            }
          }

          LOBYTE(policy) = v14;
        }
      }
    }

    domain = [fileCopy domain];
    relativePathsNotToBackup = [domain relativePathsNotToBackup];
    if ([relativePathsNotToBackup containsObject:relativePath])
    {
      goto LABEL_27;
    }

    if (context)
    {
      domain3 = v11;
      domain2 = [fileCopy domain];
      relativePathsNotToBackupToDrive = [domain2 relativePathsNotToBackupToDrive];
      if ([relativePathsNotToBackupToDrive containsObject:relativePath])
      {

LABEL_27:
        goto LABEL_55;
      }

      v94 = relativePathsNotToBackupToDrive;
    }

    v96 = domain2;
    v98 = v8;
    v104 = relativePath;
    if (v11 == 8)
    {
      domain3 = [fileCopy domain];
      relativePathsNotToBackupToService = [domain3 relativePathsNotToBackupToService];
      if ([relativePathsNotToBackupToService containsObject:relativePath])
      {
        v22 = 1;
        goto LABEL_52;
      }
    }

    v23 = policy & 6;
    if (v23 == 2)
    {
      domain4 = [fileCopy domain];
      relativePathsNotToBackupToLocal = [domain4 relativePathsNotToBackupToLocal];
      if ([relativePathsNotToBackupToLocal containsObject:v104])
      {
        v22 = 1;
LABEL_48:

LABEL_49:
        v8 = v98;
        relativePath = v104;
        if (v11 != 8)
        {
          v29 = v94;
          if (!v99)
          {
LABEL_54:

            if (v22)
            {
LABEL_55:
              domain2 = MBGetDefaultLog();
              if (os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v117 = fileCopy;
                _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (explicit): %@", buf, 0xCu);
                _MBLog(@"Df", "=scanning= Not backed up (explicit): %@", fileCopy, v85);
              }

              goto LABEL_57;
            }

            selfCopy = self;
            v31 = objc_msgSend_absolutePath(fileCopy);
            if (strlen([v31 fileSystemRepresentation]) >= 0x3E6)
            {
              v32 = MBGetDefaultLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v117 = v31;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=scanning= WARNING: File name too long - excluding file and continuing with backup. Please contact the developer and include this log message. Path: %@", buf, 0xCu);
                _MBLog(@"Df", "=scanning= WARNING: File name too long - excluding file and continuing with backup. Please contact the developer and include this log message. Path: %@", v31);
              }

              goto LABEL_63;
            }

            hasXattrs = [fileCopy hasXattrs];
            v88 = policy;
            if (context)
            {
              v95 = hasXattrs;
              v97 = v31;
              relativePathsToIgnoreExclusionsForDrive = [domainCopy relativePathsToIgnoreExclusionsForDrive];
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v35 = relativePathsToIgnoreExclusionsForDrive;
              v36 = [v35 countByEnumeratingWithState:&v112 objects:v120 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v113;
                while (2)
                {
                  v39 = 0;
                  contexta = v37;
                  do
                  {
                    if (*v113 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v112 + 1) + 8 * v39);
                    if ([v40 hasSuffix:@"/"])
                    {
                      v41 = MBGetDefaultLog();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                      {
                        v42 = v41;
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                        {
                          name = [domainCopy name];
                          *buf = 138412546;
                          *v117 = name;
                          *&v117[8] = 2112;
                          *&v117[10] = v40;
                          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "=scanning= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", buf, 0x16u);
                        }

                        name2 = [domainCopy name];
                        _MBLog(@"E ", "=scanning= Found an invalid path in relativePathsToIgnoreExclusionsForDrive for %@: %@", name2, v40);

                        v37 = contexta;
                      }
                    }

                    else if ([v104 hasPrefix:v40])
                    {
                      v45 = [v104 length];
                      v46 = [v40 length];
                      if (v45 == v46 || v46 < v45 && [v104 characterAtIndex:v46] == 47)
                      {

                        goto LABEL_97;
                      }
                    }

                    v39 = v39 + 1;
                  }

                  while (v37 != v39);
                  v37 = [v35 countByEnumeratingWithState:&v112 objects:v120 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (!v95)
              {
LABEL_97:
                v50 = MBGetDefaultLog();
                v31 = v97;
                LOBYTE(policy) = v88;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v117 = fileCopy;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "=scanning= Skipping exclusion check for %@", buf, 0xCu);
                  _MBLog(@"Db", "=scanning= Skipping exclusion check for %@", fileCopy);
                }

                goto LABEL_131;
              }

              v31 = v97;
            }

            else if (!hasXattrs)
            {
LABEL_132:
              if ([fileCopy isRegularFile])
              {
                if ((policy & 8) != 0)
                {
                  protectionClass = [fileCopy protectionClass];
                  if (protectionClass)
                  {
                    v69 = protectionClass;
                    v32 = 0;
                  }

                  else
                  {
                    v106 = 0;
                    v69 = [MBProtectionClassUtils getWithPath:v31 error:&v106];
                    v32 = v106;
                  }

                  if (((v69 - 1) < 2 || v69 == 255 && +[MBError isError:withCode:](MBError, "isError:withCode:", v32, 24)) && [fileCopy isCompressed])
                  {
                    v70 = MBGetDefaultLog();
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *v117 = v69;
                      *&v117[4] = 2112;
                      *&v117[6] = fileCopy;
                      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (compressed, pc:%d): %@", buf, 0x12u);
                      _MBLog(@"Df", "=scanning= Not backed up (compressed, pc:%d): %@", v69, fileCopy);
                    }

                    goto LABEL_63;
                  }
                }

                v71 = [v31 length];
                if (v71 - [@".plist.1234567" length] >= 1)
                {
                  v72 = [v31 substringFromIndex:?];
                  v73 = [v72 hasPrefix:@".plist."];

                  if (v73)
                  {
                    v32 = MBGetDefaultLog();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      v32 = v32;
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        *v117 = v31;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up failed plist safe save: %@", buf, 0xCu);
                      }

                      _MBLog(@"I ", "=scanning= Not backing up failed plist safe save: %@", v31);
                    }

                    goto LABEL_63;
                  }
                }

                pathExtension = [v31 pathExtension];
                if ([pathExtension isEqualToString:@"dat"])
                {
                  v75 = [v31 containsString:@"binarycookies_tmp"];

                  if (v75)
                  {
                    v32 = MBGetDefaultLog();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      v32 = v32;
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        *v117 = v31;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up temporary cookie: %@", buf, 0xCu);
                      }

                      _MBLog(@"I ", "=scanning= Not backing up temporary cookie: %@", v31);
                    }

                    goto LABEL_63;
                  }
                }

                else
                {
                }

                lastPathComponent = [v31 lastPathComponent];
                v77 = [lastPathComponent hasPrefix:@".dat.nosync"];

                if (v77)
                {
                  v32 = MBGetDefaultLog();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
                    v32 = v32;
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      *v117 = v31;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "=scanning= Not backing up .dat.nosync file: %@", buf, 0xCu);
                    }

                    _MBLog(@"Db", "=scanning= Not backing up .dat.nosync file: %@", v31);
                  }

                  goto LABEL_63;
                }
              }

              domain2 = [fileCopy snapshotPath];
              if (!domain2)
              {
                goto LABEL_64;
              }

              relativePath2 = [fileCopy relativePath];
              v79 = [domainCopy shouldBackupRelativePathFromLiveFileSystem:relativePath2];

              if (!v79)
              {
                LOBYTE(domain2) = 0;
                goto LABEL_64;
              }

              v32 = MBGetDefaultLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v32 = v32;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v117 = fileCopy;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=scanning= Not backing up %@ from the APFS snapshot because it needs to be backed up from the live filesystem", buf, 0xCu);
                }

                _MBLog(@"I ", "=scanning= Not backing up %@ from the APFS snapshot because it needs to be backed up from the live filesystem", fileCopy);
              }

LABEL_63:

              LOBYTE(domain2) = 1;
LABEL_64:

              goto LABEL_58;
            }

            isDirectory = [fileCopy isDirectory];
            v48 = [NSURL fileURLWithPath:v31 isDirectory:isDirectory];
            v111 = 0;
            v110 = 0;
            v49 = [v48 getResourceValue:&v111 forKey:NSURLIsExcludedFromBackupKey error:&v110];
            v50 = v111;
            v51 = v110;
            if (v49)
            {
              if ([v50 BOOLValue])
              {
                if (isDirectory && [v31 hasSuffix:@"/Preferences"])
                {
                  v52 = objc_autoreleasePoolPush();
                  livePath = [fileCopy livePath];
                  if ([livePath isEqualToString:@"/var/mobile/Library/Preferences"])
                  {
                    contextb = v52;
                    v54 = v48;
                    v55 = v31;
                    v56 = [NSURL fileURLWithPath:livePath];

                    v109 = v51;
                    v100 = v56;
                    LOBYTE(v54) = [v56 setResourceValue:0 forKey:NSURLIsExcludedFromBackupKey error:&v109];
                    v57 = v109;

                    v58 = MBGetDefaultLog();
                    v59 = v58;
                    if (v54)
                    {
                      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                      {
                        v60 = v59;
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *v117 = NSURLIsExcludedFromBackupKey;
                          *&v117[8] = 2112;
                          *&v117[10] = livePath;
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=scanning= Removed %@ at %@", buf, 0x16u);
                        }

                        _MBLog(@"Df", "=scanning= Removed %@ at %@", NSURLIsExcludedFromBackupKey, livePath);
                      }
                    }

                    else if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      v81 = v59;
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        *v117 = NSURLIsExcludedFromBackupKey;
                        *&v117[8] = 2112;
                        *&v117[10] = livePath;
                        v118 = 2112;
                        v119 = v57;
                        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "=scanning= Failed to remove %@ at %@: %@", buf, 0x20u);
                      }

                      _MBLog(@"E ", "=scanning= Failed to remove %@ at %@: %@", NSURLIsExcludedFromBackupKey, livePath, v57);
                    }

                    v82 = livePath;

                    v83 = MBGetDefaultLog();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                    {
                      v84 = v83;
                      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *v117 = NSURLIsExcludedFromBackupKey;
                        *&v117[8] = 2112;
                        *&v117[10] = v55;
                        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "=scanning= Found %@ at %@ - ignoring", buf, 0x16u);
                      }

                      _MBLog(@"Df", "=scanning= Found %@ at %@ - ignoring", NSURLIsExcludedFromBackupKey, v55);
                    }

                    objc_autoreleasePoolPop(contextb);
                    v32 = v100;
LABEL_107:
                    LOBYTE(policy) = v88;
                    if ((v88 & 0x16) == 2)
                    {
                      error = 0;
                      __buf = 0;
                      v63 = _kCFURLIsExcludedFromUnencryptedBackupKey;
                      if (CFURLCopyResourcePropertyForKey(v32, _kCFURLIsExcludedFromUnencryptedBackupKey, &__buf, &error))
                      {
                        v64 = __buf;
                        if (__buf)
                        {
                          CFRelease(__buf);
                          LOBYTE(policy) = v88;
                          if (v64 == kCFBooleanTrue)
                          {
                            v65 = MBGetDefaultLog();
                            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v117 = fileCopy;
                              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up to unencrypted iTunes (attribute): %@", buf, 0xCu);
                              _MBLog(@"Df", "=scanning= Not backed up to unencrypted iTunes (attribute): %@", fileCopy);
                            }

LABEL_120:

                            v51 = v57;
                            v31 = v55;
LABEL_174:

                            v8 = v98;
                            relativePath = v104;
                            goto LABEL_63;
                          }
                        }

                        goto LABEL_130;
                      }

                      policy = MBGetDefaultLog();
                      if (!os_log_type_enabled(policy, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_128;
                      }

                      v67 = policy;
                      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_127;
                      }
                    }

                    else
                    {
                      if ((v88 & 0x20) != 0 || (selfCopy->_policy & 1) == 0)
                      {
LABEL_130:

                        v31 = v55;
                        v35 = v32;
LABEL_131:

                        v8 = v98;
                        relativePath = v104;
                        goto LABEL_132;
                      }

                      error = 0;
                      __buf = 0;
                      v63 = _kCFURLIsExcludedFromCloudBackupKey;
                      if (CFURLCopyResourcePropertyForKey(v32, _kCFURLIsExcludedFromCloudBackupKey, &__buf, &error))
                      {
                        v66 = __buf;
                        if (__buf)
                        {
                          CFRelease(__buf);
                          LOBYTE(policy) = v88;
                          if (v66 == kCFBooleanTrue)
                          {
                            v65 = MBGetDefaultLog();
                            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v117 = fileCopy;
                              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up to iCloud (attribute): %@", buf, 0xCu);
                              _MBLog(@"Df", "=scanning= Not backed up to iCloud (attribute): %@", fileCopy);
                            }

                            goto LABEL_120;
                          }
                        }

                        goto LABEL_130;
                      }

                      policy = MBGetDefaultLog();
                      if (!os_log_type_enabled(policy, OS_LOG_TYPE_ERROR))
                      {
LABEL_128:

                        LOBYTE(policy) = v88;
                        if (error)
                        {
                          CFRelease(error);
                        }

                        goto LABEL_130;
                      }

                      v67 = policy;
                      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                      {
LABEL_127:

                        _MBLog(@"E ", "=scanning= Error fetching value for property %{public}@: %@", v63, error);
                        goto LABEL_128;
                      }
                    }

                    *buf = 138543618;
                    *v117 = v63;
                    *&v117[8] = 2112;
                    *&v117[10] = error;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "=scanning= Error fetching value for property %{public}@: %@", buf, 0x16u);
                    goto LABEL_127;
                  }

                  objc_autoreleasePoolPop(v52);
                }

                v32 = v48;
                v80 = MBGetDefaultLog();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v117 = fileCopy;
                  _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=scanning= Not backed up (attribute): %@", buf, 0xCu);
                  _MBLog(@"Df", "=scanning= Not backed up (attribute): %@", fileCopy);
                }

                goto LABEL_174;
              }
            }

            else if ([MBError codeForNSError:v51]!= 4)
            {
              v61 = MBGetDefaultLog();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = v61;
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *v117 = fileCopy;
                  *&v117[8] = 2112;
                  *&v117[10] = v51;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "=scanning= Error getting NSURLIsExcludedFromBackupKey resource: %@: %@", buf, 0x16u);
                }

                _MBLog(@"Df", "=scanning= Error getting NSURLIsExcludedFromBackupKey resource: %@: %@", fileCopy, v51);
              }

              v32 = v48;
              v55 = v31;

              goto LABEL_106;
            }

            v32 = v48;
            v55 = v31;
LABEL_106:
            v57 = v51;
            goto LABEL_107;
          }

LABEL_53:

          goto LABEL_54;
        }

LABEL_52:

        v29 = v94;
        if (!v99)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    if ((policy & 0x20) != 0)
    {
      domain5 = [fileCopy domain];
      relativePathsNotToBackupInMegaBackup = [domain5 relativePathsNotToBackupInMegaBackup];
      if ([relativePathsNotToBackupInMegaBackup containsObject:v104])
      {

        v22 = 1;
        v99 = 1;
        goto LABEL_47;
      }

      v86 = relativePathsNotToBackupInMegaBackup;
      v87 = domain5;
      if ((policy & 4) == 0)
      {
        v22 = 0;
        goto LABEL_45;
      }
    }

    else if ((policy & 4) == 0)
    {
      v22 = 0;
      goto LABEL_47;
    }

    selfCopy2 = self;
    domain6 = [fileCopy domain];
    [domain6 relativePathsNotToTransferDeviceToDevice];
    policy = v28 = policy;
    v22 = [policy containsObject:v104];

    LOBYTE(policy) = v28;
    if ((v28 & 0x20) == 0)
    {
      self = selfCopy2;
LABEL_47:
      if (v23 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v99 = 1;
    self = selfCopy2;
LABEL_45:

    goto LABEL_47;
  }

  LOBYTE(domain2) = 1;
LABEL_59:

  return domain2;
}

- (id)_scanTree:(id)tree forDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats
{
  treeCopy = tree;
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  v20 = objc_autoreleasePoolPush();
  v21 = v20;
  v22 = atomic_load(&self->_canceled);
  if (v22)
  {
    v23 = [MBError errorWithCode:202 format:@"File scan cancelled"];
LABEL_3:
    objc_autoreleasePoolPop(v21);
    goto LABEL_21;
  }

  v54 = a2;
  context = v20;
  statsCopy = stats;
  v24 = [(MBDebugContext *)self->_debugContext performSelectorForName:@"Scanning" withObject:self->_debugContext];
  [(MBDebugContext *)self->_debugContext setValue:relativePathCopy forName:@"RelativePath"];
  v25 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v26 = objc_msgSend_absolutePath(v25);
  v61 = 0;
  v27 = sub_10008E314(v26, v62, &v61);
  v28 = v61;

  if ((v27 & 1) == 0)
  {
    if ([MBError isError:v28 withCode:4])
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_msgSend_absolutePath(v25);
        *buf = 138412290;
        v66 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "=scanning= Doesn't exist: %@", buf, 0xCu);

        v32 = objc_msgSend_absolutePath(v25);
        _MBLog(@"Db", "=scanning= Doesn't exist: %@", v32);
LABEL_18:
      }
    }

    else
    {
      if (![MBError isError:v28 withCode:241])
      {
        if (![MBError isError:v28 withCode:242])
        {
          v29 = v25;
          v28 = v28;
          v23 = v28;
          goto LABEL_20;
        }

        v30 = MBGetDefaultLog();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v35 = objc_msgSend_absolutePath(v25);
        *buf = 138412546;
        v66 = v35;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported mbNode type: %@ %@", buf, 0x16u);

        v32 = objc_msgSend_absolutePath(v25);
        _MBLog(@"Df", "=scanning= Skipping due to unsupported mbNode type: %@ %@", v32, v28);
        goto LABEL_18;
      }

      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_msgSend_absolutePath(v25);
        *buf = 138412546;
        v66 = v34;
        v67 = 2112;
        v68 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported protection class: %@ %@", buf, 0x16u);

        v32 = objc_msgSend_absolutePath(v25);
        _MBLog(@"Df", "=scanning= Skipping due to unsupported protection class: %@ %@", v32, v28);
        goto LABEL_18;
      }
    }

LABEL_19:
    v29 = v25;

    v23 = 0;
    goto LABEL_20;
  }

  [v25 setNode:v62];
  if ([(MBFileScanner *)self _shouldNotBackupFile:v25 domain:domainCopy])
  {
    v29 = v25;
    v23 = 0;
  }

  else
  {
    v33 = [(MBFileScanner *)self _foundFile:v25 snapshotPath:pathCopy stats:statsCopy];

    if (!v33)
    {
      v48 = v25;
      if ([v25 isDirectory])
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        allKeys = [treeCopy allKeys];
        v38 = [allKeys sortedArrayUsingComparator:&stru_1000FE690];

        obj = v38;
        v51 = [v38 countByEnumeratingWithState:&v57 objects:v64 count:16];
        if (v51)
        {
          v52 = pathCopy;
          v53 = fdsCopy;
          v50 = *v58;
          while (2)
          {
            for (i = 0; i != v51; i = i + 1)
            {
              if (*v58 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v40 = *(*(&v57 + 1) + 8 * i);
              v41 = objc_autoreleasePoolPush();
              v42 = treeCopy;
              v43 = [treeCopy objectForKeyedSubscript:v40];
              v44 = [relativePathCopy stringByAppendingPathComponent:v40];
              relativePathsNotToBackup = [domainCopy relativePathsNotToBackup];
              v46 = [relativePathsNotToBackup containsObject:v44];

              if (v46)
              {
                sub_1000A05E4(v54, self, domainCopy, v44);
              }

              if ([v43 count])
              {
                [(MBFileScanner *)self _scanTree:v43 forDomain:domainCopy fds:v53 snapshotPath:v52 relativePath:v44 stats:statsCopy];
              }

              else
              {
                [(MBFileScanner *)self _scanFilesForDomain:domainCopy fds:v53 snapshotPath:v52 relativePath:v44 stats:statsCopy];
              }
              v47 = ;
              treeCopy = v42;
              if (v47)
              {
                v23 = v47;

                objc_autoreleasePoolPop(v41);
                goto LABEL_42;
              }

              objc_autoreleasePoolPop(v41);
            }

            v51 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }

          v23 = 0;
LABEL_42:
          pathCopy = v52;
          fdsCopy = v53;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v21 = context;

      goto LABEL_3;
    }

    v29 = v25;
    v28 = v33;
    v23 = v28;
  }

LABEL_20:

  objc_autoreleasePoolPop(context);
LABEL_21:

  return v23;
}

- (id)_scanFilesForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  mode = self->_mode;
  if (mode)
  {
    v17 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:relativePathCopy depth:0 stats:stats];
    if (v17)
    {
      goto LABEL_7;
    }

    mode = self->_mode;
  }

  if ((mode & 2) != 0)
  {
    v17 = [(MBFileScanner *)self _scanFilesUsingGetattrlistbulkForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:relativePathCopy stats:stats];
  }

  else
  {
    v17 = 0;
  }

LABEL_7:

  return v17;
}

- (id)_scanFilesUsingReaddirForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)stats
{
  v9 = *&depth;
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  v18 = atomic_load(&self->_canceled);
  if (v18)
  {
    v19 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    goto LABEL_64;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v20;
  if (v9 >= 239)
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *&buf[4] = v9;
      *&buf[8] = 2114;
      *&buf[10] = relativePathCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "=scanning= Reached max directory depth (%d) under %{public}@", buf, 0x12u);
      _MBLog(@"F ", "=scanning= Reached max directory depth (%d) under %{public}@", v9, relativePathCopy);
    }

    v19 = 0;
    goto LABEL_63;
  }

  v74 = v20;
  v76 = 0;
  v23 = [fdsCopy cachedFDForDomain:domainCopy withSnapshotPath:pathCopy error:&v76];
  v22 = v76;
  if (v23 == -1)
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      rootPath = [domainCopy rootPath];
      *buf = 138412802;
      *&buf[4] = domainCopy;
      *&buf[12] = 2112;
      *&buf[14] = rootPath;
      *&buf[22] = 2112;
      *&buf[24] = v22;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=scanning= Unable to open domain directory at %@:%@: %@", buf, 0x20u);

      rootPath2 = [domainCopy rootPath];
      _MBLog(@"E ", "=scanning= Unable to open domain directory at %@:%@: %@", domainCopy, rootPath2, v22);
    }

    v19 = 0;
    v21 = v74;
    goto LABEL_62;
  }

  v24 = [(MBDebugContext *)self->_debugContext performSelectorForName:@"Scanning" withObject:self->_debugContext];
  [(MBDebugContext *)self->_debugContext setValue:relativePathCopy forName:@"RelativePath"];
  v73 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];
  if (!pathCopy)
  {
    goto LABEL_38;
  }

  name = [domainCopy name];
  if (![name isEqualToString:@"HomeDomain"])
  {
LABEL_37:

    goto LABEL_38;
  }

  v26 = name;
  policy = self->_policy;
  if ((policy & 0x22) != 0)
  {
  }

  else
  {

    if ((policy & 4) == 0)
    {
      goto LABEL_38;
    }
  }

  if (([relativePathCopy isEqualToString:@"Library/Application Support/CloudDocs/backup"]& 1) == 0 && ([relativePathCopy hasPrefix:@"Library/Application Support/CloudDocs/backup/"]& 1) == 0 && ([relativePathCopy isEqualToString:@"Library/Application Support/FileProvider/backup"]& 1) == 0 && ([relativePathCopy hasPrefix:@"Library/Application Support/FileProvider/backup/"]& 1) == 0)
  {
    if (([relativePathCopy isEqualToString:@"Library/Application Support/CloudDocs"]& 1) != 0 || [relativePathCopy isEqualToString:@"Library/Application Support/FileProvider"])
    {
      v68 = [relativePathCopy stringByAppendingPathComponent:@"backup"];
      v66 = [MBFile fileWithDomain:domainCopy snapshotPath:0 relativePath:?];
      v70 = objc_msgSend_absolutePath(v66);
      v77[0] = 0;
      v31 = +[NSFileManager defaultManager];
      v32 = [v31 fileExistsAtPath:v70 isDirectory:v77];
      v64 = v77[0];
      v65 = v32;

      v33 = MBGetDefaultLog();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v65 && (v64 & 1) != 0)
      {
        if (v34)
        {
          *buf = 138412290;
          *&buf[4] = v70;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=scanning= Scanning the live path at %@", buf, 0xCu);
          _MBLog(@"Df", "=scanning= Scanning the live path at %@", v70);
        }

        v35 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:0 relativePath:v68 depth:(v9 + 1) stats:stats];
        if (v35)
        {
          v19 = v35;

          goto LABEL_21;
        }

        v37 = MBGetDefaultLog();
        log = v37;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v70;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=scanning= Finished scanning the live path at %@", buf, 0xCu);
          v36 = "=scanning= Finished scanning the live path at %@";
          goto LABEL_34;
        }
      }

      else
      {
        log = v33;
        if (v34)
        {
          *buf = 138412290;
          *&buf[4] = v70;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=scanning= No directory found at live path %@", buf, 0xCu);
          v36 = "=scanning= No directory found at live path %@";
LABEL_34:
          name = v68;
          _MBLog(@"Df", v36, v70);
LABEL_36:

          goto LABEL_37;
        }
      }

      name = v68;
      goto LABEL_36;
    }

LABEL_38:
    v38 = v23;
    statsCopy = stats;
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    memset(buf, 0, sizeof(buf));
    v75 = v22;
    v71 = v38;
    v40 = sub_10008E430(v38, relativePathCopy, buf, &v75);
    v41 = v75;

    if (v40)
    {
      [v73 setNode:buf];
      if ([(MBFileScanner *)self _shouldNotBackupFile:v73 domain:domainCopy])
      {
        v19 = 0;
      }

      else
      {
        v47 = [(MBFileScanner *)self _foundFile:v73 snapshotPath:pathCopy stats:statsCopy];

        if (!v47)
        {
          if ([v73 isDirectory])
          {
            v53 = objc_autoreleasePoolPush();
            LODWORD(v63) = v9;
            v54 = [(MBFileScanner *)self _scanDirectory:v73 domain:domainCopy fds:fdsCopy domainDirFd:v71 snapshotPath:pathCopy relativePath:relativePathCopy depth:v63 stats:statsCopy];
            objc_autoreleasePoolPop(v53);
          }

          else
          {
            v54 = 0;
          }

          v21 = v74;
          v28 = v73;
          v41 = v54;
          v19 = v41;
          goto LABEL_61;
        }

        v41 = v47;
        v19 = v41;
      }

      v21 = v74;
      v28 = v73;
LABEL_61:
      v22 = v41;
      goto LABEL_62;
    }

    v42 = [MBError errnoForError:v41];
    delegate = [(MBFileScanner *)self delegate];
    if (v42 == 2)
    {
      v43 = MBGetDefaultLog();
      v44 = v43;
      v21 = v74;
      if (v9)
      {
        v28 = v73;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_msgSend_absolutePath(v73);
          *v77 = 138412290;
          v78 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted while scanning: %@", v77, 0xCu);

          v46 = objc_msgSend_absolutePath(v73);
          _MBLog(@"Df", "=scanning= Deleted while scanning: %@", v46);

          v21 = v74;
        }

        [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
        [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
        goto LABEL_59;
      }

      v28 = v73;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v51 = objc_msgSend_absolutePath(v73);
        *v77 = 138412290;
        v78 = v51;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "=scanning= Doesn't exist: %@", v77, 0xCu);

        v49 = objc_msgSend_absolutePath(v73);
        _MBLog(@"Db", "=scanning= Doesn't exist: %@", v49);
        goto LABEL_57;
      }
    }

    else
    {
      v28 = v73;
      v21 = v74;
      if (![MBError isError:v41 withCode:241])
      {
        v69 = v41;
        if (![MBError isError:v41 withCode:242])
        {
          if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fileScanner:self failedToStatFile:v73 withErrno:v42])
          {
            v55 = objc_msgSend_absolutePath(v73);
            domain = [v73 domain];
            volumeMountPoint = [domain volumeMountPoint];

            v58 = MBGetDefaultLog();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *v77 = 138412802;
              v78 = v55;
              v79 = 2112;
              v80 = relativePathCopy;
              v81 = 1024;
              v82 = v42;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "=scanning= Skipping file with MBNodeForRelativePathAt() failure %@ (%@): %{errno}d", v77, 0x1Cu);
              _MBLog(@"I ", "=scanning= Skipping file with MBNodeForRelativePathAt() failure %@ (%@): %{errno}d", v55, relativePathCopy, v42);
            }

            sub_100010364(v55, pathCopy, volumeMountPoint, v42, "MBNodeForRelativePathAt");
            v19 = 0;
            v21 = v74;
          }

          else
          {
            v59 = objc_msgSend_absolutePath(v73);
            domain2 = [v73 domain];
            volumeMountPoint2 = [domain2 volumeMountPoint];

            v62 = MBGetDefaultLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *v77 = 138412802;
              v78 = v59;
              v79 = 2112;
              v80 = relativePathCopy;
              v81 = 1024;
              v82 = v42;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "=scanning= MBNodeForRelativePathAt() failed at %@ (%@): %{errno}d", v77, 0x1Cu);
              _MBLog(@"E ", "=scanning= MBNodeForRelativePathAt() failed at %@ (%@): %{errno}d", v59, relativePathCopy, v42);
            }

            sub_100010364(v59, pathCopy, volumeMountPoint2, v42, "MBNodeForRelativePathAt");
            v19 = [MBError errorWithErrno:v42 code:101 path:v59 format:@"MBNodeForRelativePathAt() error"];

            v28 = v73;
            v21 = v74;
          }

          v41 = v69;
          goto LABEL_60;
        }

        v44 = MBGetDefaultLog();
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_58;
        }

        v50 = objc_msgSend_absolutePath(v73);
        *v77 = 138412546;
        v78 = v50;
        v79 = 2112;
        v80 = v41;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "=scanning= Skipping unsupported mbNode type: %@ %@", v77, 0x16u);

        v49 = objc_msgSend_absolutePath(v73);
        _MBLog(@"Db", "=scanning= Skipping unsupported mbNode type: %@ %@", v49, v41);
        goto LABEL_57;
      }

      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v48 = objc_msgSend_absolutePath(v73);
        *v77 = 138412546;
        v78 = v48;
        v79 = 2112;
        v80 = v41;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=scanning= Skipping due to unsupported protection class: %@ %@", v77, 0x16u);

        v49 = objc_msgSend_absolutePath(v73);
        _MBLog(@"Df", "=scanning= Skipping due to unsupported protection class: %@ %@", v49, v41);
LABEL_57:

        v21 = v74;
      }
    }

LABEL_58:

LABEL_59:
    v19 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v19 = 0;
LABEL_21:
  v28 = v73;
  v21 = v74;
LABEL_62:

LABEL_63:
  objc_autoreleasePoolPop(v21);
LABEL_64:

  return v19;
}

- (id)_scanDirectory:(id)directory domain:(id)domain fds:(id)fds domainDirFd:(int)fd snapshotPath:(id)path relativePath:(id)relativePath depth:(int)depth stats:(_MBFileScannerDomainStats *)self0
{
  directoryCopy = directory;
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  if ([relativePathCopy length])
  {
    fileSystemRepresentation = [relativePathCopy fileSystemRepresentation];
  }

  else
  {
    fileSystemRepresentation = ".";
  }

  v18 = openat(fd, fileSystemRepresentation, 256, 0);
  if (v18 < 0)
  {
    v26 = *__error();
    delegate = [(MBFileScanner *)self delegate];
    if (v26 == 2)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_msgSend_absolutePath(directoryCopy);
        LODWORD(v132.d_ino) = 138412290;
        *(&v132.d_ino + 4) = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", &v132, 0xCu);

        v30 = objc_msgSend_absolutePath(directoryCopy);
        _MBLog(@"Df", "=scanning= Modification error when opening directory %@ while scanning", v30);
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate fileScanner:self failedToOpenFile:directoryCopy withErrno:v26])
      {
        v47 = MBGetDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_msgSend_absolutePath(directoryCopy);
          LODWORD(v132.d_ino) = 138412802;
          *(&v132.d_ino + 4) = v48;
          WORD2(v132.d_seekoff) = 2080;
          *(&v132.d_seekoff + 6) = fileSystemRepresentation;
          *&v132.d_name[1] = 1024;
          *&v132.d_name[3] = v26;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=scanning= openat failed at %@ (%s): %{errno}d", &v132, 0x1Cu);

          v49 = objc_msgSend_absolutePath(directoryCopy);
          _MBLog(@"E ", "=scanning= openat failed at %@ (%s): %{errno}d", v49, fileSystemRepresentation, v26);
        }

        v50 = objc_msgSend_absolutePath(directoryCopy);
        v31 = [MBError errorWithErrno:v26 code:101 path:v50 format:@"open error"];

        v51 = objc_msgSend_absolutePath(directoryCopy);
        sub_10000D2DC(v51, v26, "openat");

        goto LABEL_32;
      }

      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_msgSend_absolutePath(directoryCopy);
        LODWORD(v132.d_ino) = 138412802;
        *(&v132.d_ino + 4) = v39;
        WORD2(v132.d_seekoff) = 2080;
        *(&v132.d_seekoff + 6) = fileSystemRepresentation;
        *&v132.d_name[1] = 1024;
        *&v132.d_name[3] = v26;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "=scanning= Skipping file with openat failure %@ (%s): %{errno}d", &v132, 0x1Cu);

        v40 = objc_msgSend_absolutePath(directoryCopy);
        _MBLog(@"I ", "=scanning= Skipping file with openat failure %@ (%s): %{errno}d", v40, fileSystemRepresentation, v26);
      }
    }

    v31 = 0;
LABEL_32:

    goto LABEL_87;
  }

  v19 = v18;
  if (!pathCopy)
  {
    memset(&v132, 0, 144);
    if (!fstat(v18, &v132))
    {
      v63 = fileSystemRepresentation;
      d_seekoff = v132.d_seekoff;
      if (d_seekoff != [directoryCopy inodeNumber])
      {
        v96 = MBGetDefaultLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = objc_msgSend_absolutePath(directoryCopy);
          *buf = 138412290;
          *v134 = v97;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", buf, 0xCu);

          v98 = objc_msgSend_absolutePath(directoryCopy);
          _MBLog(@"Df", "=scanning= Modification error when opening directory %@ while scanning", v98);
        }

        [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
        close(v19);
        goto LABEL_105;
      }

      fileSystemRepresentation = v63;
      goto LABEL_6;
    }

    v32 = *__error();
    delegate2 = [(MBFileScanner *)self delegate];
    if (v32 == 2)
    {
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_msgSend_absolutePath(directoryCopy);
        *buf = 138412290;
        *v134 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when stating directory %@ while scanning", buf, 0xCu);

        v36 = objc_msgSend_absolutePath(directoryCopy);
        _MBLog(@"Df", "=scanning= Modification error when stating directory %@ while scanning", v36);
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate2 fileScanner:self failedToStatFile:directoryCopy withErrno:v32])
      {
        v71 = MBGetDefaultLog();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = objc_msgSend_absolutePath(directoryCopy);
          *buf = 138412802;
          *v134 = v72;
          *&v134[8] = 2080;
          *&v134[10] = fileSystemRepresentation;
          *&v134[18] = 1024;
          *&v134[20] = v32;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "=scanning= fstat failed at %@ (%s): %{errno}d", buf, 0x1Cu);

          v73 = objc_msgSend_absolutePath(directoryCopy);
          _MBLog(@"E ", "=scanning= fstat failed at %@ (%s): %{errno}d", v73, fileSystemRepresentation, v32);
        }

        v74 = objc_msgSend_absolutePath(directoryCopy);
        v37 = [MBError errorWithErrno:v32 code:101 path:v74 format:@"stat error"];

        goto LABEL_75;
      }

      v68 = MBGetDefaultLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v69 = objc_msgSend_absolutePath(directoryCopy);
        *buf = 138412802;
        *v134 = v69;
        *&v134[8] = 2080;
        *&v134[10] = fileSystemRepresentation;
        *&v134[18] = 1024;
        *&v134[20] = v32;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", buf, 0x1Cu);

        v70 = objc_msgSend_absolutePath(directoryCopy);
        _MBLog(@"I ", "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", v70, fileSystemRepresentation, v32);
      }
    }

    v37 = 0;
LABEL_75:
    close(v19);
    v31 = v37;

LABEL_86:
    goto LABEL_87;
  }

LABEL_6:
  v121 = directoryCopy;
  v20 = +[NSMutableArray array];
  v21 = fdopendir(v19);
  if (!v21)
  {
    v41 = *__error();
    v42 = MBGetDefaultLog();
    v43 = v42;
    if (v41 == 2)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_msgSend_absolutePath(directoryCopy);
        LODWORD(v132.d_ino) = 138412290;
        *(&v132.d_ino + 4) = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=scanning= Modification error when opening directory %@ while scanning", &v132, 0xCu);

        v45 = objc_msgSend_absolutePath(directoryCopy);
        _MBLog(@"Df", "=scanning= Modification error when opening directory %@ while scanning", v45);
      }

      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
      v46 = 0;
    }

    else
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v65 = objc_msgSend_absolutePath(directoryCopy);
        LODWORD(v132.d_ino) = 138412802;
        *(&v132.d_ino + 4) = v65;
        WORD2(v132.d_seekoff) = 2080;
        *(&v132.d_seekoff + 6) = fileSystemRepresentation;
        *&v132.d_name[1] = 1024;
        *&v132.d_name[3] = v41;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "=scanning= fdopendir failed at %@ (%s): %{errno}d", &v132, 0x1Cu);

        v66 = objc_msgSend_absolutePath(directoryCopy);
        _MBLog(@"E ", "=scanning= fdopendir failed at %@ (%s): %{errno}d", v66, fileSystemRepresentation, v41);
      }

      v67 = objc_msgSend_absolutePath(directoryCopy);
      v46 = [MBError errorWithErrno:v41 code:101 path:v67 format:@"fdopendir error"];
    }

    close(v19);
LABEL_85:
    v31 = v46;

    goto LABEL_86;
  }

  v22 = v21;
  v119 = relativePathCopy;
  fdCopy = fd;
  v23 = objc_autoreleasePoolPush();
  memset(&v132, 0, 512);
  v130 = 0;
  v24 = readdir_r(v22, &v132, &v130);
  if (!v24)
  {
    v120 = 0;
    while (2)
    {
      relativePathCopy = v119;
      while (1)
      {
        if (!v130)
        {
          v46 = 0;
          goto LABEL_80;
        }

        if (*v132.d_name != 46 && *v132.d_name ^ 0x2E2E | v132.d_name[2])
        {
          break;
        }

        objc_autoreleasePoolPop(v23);
        v23 = objc_autoreleasePoolPush();
        memset(&v132, 0, 512);
        v130 = 0;
        v52 = readdir_r(v22, &v132, &v130);
        if (v52)
        {
          v25 = v52;
          goto LABEL_77;
        }
      }

      v120 = (v120 + 1);
      v53 = [NSString mb_stringWithFileSystemRepresentation:v132.d_name];
      if (v53)
      {
        if (v132.d_type == 4)
        {
          v54 = v53;
          [v119 stringByAppendingPathComponent:v53];
          v55 = v114 = fileSystemRepresentation;
          v46 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:v55 depth:(depth + 1) stats:stats];

          fileSystemRepresentation = v114;
          if (v46)
          {

            goto LABEL_80;
          }
        }

        else
        {
          v54 = v53;
          [v20 addObject:v53];
        }

        HIDWORD(v59) = 989560465 * v120;
        LODWORD(v59) = 989560465 * v120;
        v53 = v54;
        if ((v59 >> 4) > 0x68DB8)
        {
LABEL_57:

          objc_autoreleasePoolPop(v23);
          v23 = objc_autoreleasePoolPush();
          memset(&v132, 0, 512);
          v130 = 0;
          v25 = readdir_r(v22, &v132, &v130);
          if (!v25)
          {
            continue;
          }

          goto LABEL_77;
        }

        v56 = MBGetDefaultLog();
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
LABEL_56:

          goto LABEL_57;
        }

        v115 = v54;
        [domainCopy name];
        v60 = v20;
        v62 = v61 = fileSystemRepresentation;
        *buf = 67109634;
        *v134 = v120;
        *&v134[4] = 2082;
        *&v134[6] = v61;
        *&v134[14] = 2114;
        *&v134[16] = v62;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=scanning= Found %u items under %{public}s (%{public}@)", buf, 0x1Cu);

        fileSystemRepresentation = v61;
        v20 = v60;
        name = [domainCopy name];
        _MBLog(@"Df", "=scanning= Found %u items under %{public}s (%{public}@)", v120, fileSystemRepresentation, name);
      }

      else
      {
        v56 = [NSData dataWithBytes:v132.d_name length:v132.d_namlen];
        v57 = MBGetDefaultLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v134 = v56;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "=scanning= Unexpected file name: %@", buf, 0xCu);
          _MBLog(@"E ", "=scanning= Unexpected file name: %@", v56);
        }

        if (MBIsInternalInstall())
        {
          v115 = 0;
          name = MBGetDefaultLog();
          if (os_log_type_enabled(name, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *v134 = v56;
            _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_FAULT, "=scanning= Unexpected file name: %@", buf, 0xCu);
            _MBLog(@"F ", "=scanning= Unexpected file name: %@", v56, v112, v113);
          }
        }

        else
        {
          if (dword_10011E4B0 || atomic_fetch_add_explicit(&dword_10011E4B0, 1u, memory_order_relaxed))
          {
            goto LABEL_56;
          }

          v115 = 0;
          name = MBGetDefaultLog();
          if (os_log_type_enabled(name, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_FAULT, "=scanning= =scanning= Unexpected file name", buf, 2u);
            _MBLog(@"F ", "=scanning= =scanning= Unexpected file name", v111, v112, v113);
          }
        }
      }

      break;
    }

    v53 = v115;
    goto LABEL_56;
  }

  v25 = v24;
  v120 = 0;
LABEL_77:
  v75 = v20;
  v76 = fileSystemRepresentation;
  v77 = MBGetDefaultLog();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
  {
    v78 = objc_msgSend_absolutePath(v121);
    *buf = 138412546;
    *v134 = v78;
    *&v134[8] = 1024;
    *&v134[10] = v25;
    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "=scanning= readdir_r failed at %@: %d", buf, 0x12u);

    v79 = objc_msgSend_absolutePath(v121);
    _MBLog(@"E ", "=scanning= readdir_r failed at %@: %d", v79, v25);
  }

  v80 = *__error();
  v81 = objc_msgSend_absolutePath(v121);
  v46 = [MBError errorWithErrno:v80 code:101 path:v81 format:@"readdir error"];

  fileSystemRepresentation = v76;
  v20 = v75;
  relativePathCopy = v119;
LABEL_80:
  objc_autoreleasePoolPop(v23);
  if (v120 >> 4 >= 0x271)
  {
    v82 = MBGetDefaultLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      [domainCopy name];
      v116 = v20;
      v84 = v83 = fileSystemRepresentation;
      LODWORD(v132.d_ino) = 67109634;
      HIDWORD(v132.d_ino) = v120;
      LOWORD(v132.d_seekoff) = 2082;
      *(&v132.d_seekoff + 2) = v83;
      v132.d_namlen = 2114;
      *&v132.d_type = v84;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %u items under %{public}s (%{public}@)", &v132, 0x1Cu);

      name2 = [domainCopy name];
      _MBLog(@"Df", "=scanning= Found a total of %u items under %{public}s (%{public}@)", v120, v83, name2);

      fileSystemRepresentation = v83;
      v20 = v116;
      relativePathCopy = v119;
    }
  }

  closedir(v22);
  directoryCopy = v121;
  if (v46)
  {
    goto LABEL_85;
  }

  v117 = fileSystemRepresentation;
  [v20 sortUsingComparator:&stru_1000FE6B0];
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v87 = v20;
  v88 = [v87 countByEnumeratingWithState:&v126 objects:v131 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v127;
    while (2)
    {
      for (i = 0; i != v89; i = i + 1)
      {
        if (*v127 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v126 + 1) + 8 * i);
        v93 = objc_autoreleasePoolPush();
        v94 = [relativePathCopy stringByAppendingPathComponent:v92];
        v95 = [(MBFileScanner *)self _scanFilesUsingReaddirForDomain:domainCopy fds:fdsCopy snapshotPath:pathCopy relativePath:v94 depth:(depth + 1) stats:stats];
        if (v95)
        {
          v31 = v95;

          objc_autoreleasePoolPop(v93);
          goto LABEL_101;
        }

        objc_autoreleasePoolPop(v93);
      }

      v89 = [v87 countByEnumeratingWithState:&v126 objects:v131 count:16];
      if (v89)
      {
        continue;
      }

      break;
    }
  }

  if (!pathCopy)
  {
    memset(&v132, 0, 144);
    directoryCopy = v121;
    if (!fstatat(fdCopy, v117, &v132, 32))
    {
      v101 = v132.d_seekoff;
      if (v101 == [v121 inodeNumber])
      {
        [(MBFileScanner *)self _detectModifiedDomain:domainCopy relativePath:relativePathCopy lastModified:*&v132.d_name[27]];
LABEL_105:
        v31 = 0;
        goto LABEL_87;
      }

LABEL_111:
      v102 = MBGetDefaultLog();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = objc_msgSend_absolutePath(v121);
        *buf = 138412290;
        *v134 = v103;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted/modified while scanning: %@", buf, 0xCu);

        v104 = objc_msgSend_absolutePath(v121);
        _MBLog(@"Df", "=scanning= Deleted/modified while scanning: %@", v104);
      }

      [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
      [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
      goto LABEL_105;
    }

    v99 = *__error();
    delegate3 = [(MBFileScanner *)self delegate];
    delegate = delegate3;
    if (v99 == 2)
    {

      goto LABEL_111;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fileScanner:self failedToStatFile:v121 withErrno:v99])
    {
      v105 = MBGetDefaultLog();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        v106 = objc_msgSend_absolutePath(v121);
        *buf = 138412802;
        *v134 = v106;
        *&v134[8] = 2080;
        *&v134[10] = v117;
        *&v134[18] = 1024;
        *&v134[20] = v99;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", buf, 0x1Cu);

        v107 = objc_msgSend_absolutePath(v121);
        _MBLog(@"I ", "=scanning= Skipping file with fstat failure %@ (%s): %{errno}d", v107, v117, v99);
      }

      v31 = 0;
    }

    else
    {
      v108 = MBGetDefaultLog();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = objc_msgSend_absolutePath(v121);
        *buf = 138412802;
        *v134 = v109;
        *&v134[8] = 2080;
        *&v134[10] = v117;
        *&v134[18] = 1024;
        *&v134[20] = v99;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_ERROR, "=scanning= fstatat failed at %@ (%s): %{errno}d", buf, 0x1Cu);

        v110 = objc_msgSend_absolutePath(v121);
        _MBLog(@"E ", "=scanning= fstatat failed at %@ (%s): %{errno}d", v110, v117, v99);
      }

      v105 = objc_msgSend_absolutePath(v121);
      v31 = [MBError errorWithErrno:v99 code:101 path:v105 format:@"stat error"];
    }

    goto LABEL_32;
  }

  v31 = 0;
LABEL_101:
  directoryCopy = v121;
LABEL_87:

  return v31;
}

- (id)_scanFilesUsingGetattrlistbulkForDomain:(id)domain fds:(id)fds snapshotPath:(id)path relativePath:(id)relativePath stats:(_MBFileScannerDomainStats *)stats
{
  domainCopy = domain;
  fdsCopy = fds;
  pathCopy = path;
  relativePathCopy = relativePath;
  v16 = atomic_load(&self->_canceled);
  if (v16)
  {
    v17 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    goto LABEL_61;
  }

  v85 = 0;
  v18 = [fdsCopy cachedFDForDomain:domainCopy withSnapshotPath:pathCopy error:&v85];
  v19 = v85;
  v20 = v19;
  if (v18 < 0)
  {
    v24 = [MBError isError:v19 withCode:4];
    v25 = MBGetDefaultLog();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        name = [domainCopy name];
        rootPath = [domainCopy rootPath];
        *buf = 138412802;
        *&buf[4] = name;
        *&buf[12] = 2112;
        *&buf[14] = rootPath;
        *&buf[22] = 2112;
        *&buf[24] = pathCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=scanning= No domain root present for %@ found at %@ under %@", buf, 0x20u);

        name2 = [domainCopy name];
        rootPath2 = [domainCopy rootPath];
        _MBLog(@"I ", "=scanning= No domain root present for %@ found at %@ under %@", name2, rootPath2, pathCopy);
      }

      v17 = 0;
    }

    else
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        name3 = [domainCopy name];
        *buf = 138412546;
        *&buf[4] = name3;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=scanning= Failed to fetch cached file descriptor for domain %@: %@", buf, 0x16u);

        name4 = [domainCopy name];
        _MBLog(@"E ", "=scanning= Failed to fetch cached file descriptor for domain %@: %@", name4, v20);
      }

      v20 = v20;
      v17 = v20;
    }

    goto LABEL_60;
  }

  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  memset(buf, 0, sizeof(buf));
  v84 = v19;
  v21 = sub_10008E430(v18, relativePathCopy, buf, &v84);
  v22 = v84;

  if ((v21 & 1) == 0)
  {
    if (([MBError isError:v22 withCode:4]& 1) != 0)
    {
      v17 = 0;
    }

    else
    {
      v22 = v22;
      v17 = v22;
    }

    goto LABEL_59;
  }

  v23 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];
  [v23 setNode:buf];
  if ([(MBFileScanner *)self _shouldNotBackupFile:v23 domain:domainCopy])
  {
LABEL_6:
    v17 = 0;
    goto LABEL_58;
  }

  v33 = [(MBFileScanner *)self _foundFile:v23 snapshotPath:pathCopy stats:stats];

  if (v33)
  {
    v22 = v33;
    v17 = v22;
    goto LABEL_58;
  }

  if (![v23 isDirectory])
  {
    v22 = 0;
    goto LABEL_6;
  }

  v69 = v23;
  v34 = objc_opt_new();
  [v34 addObject:relativePathCopy];
  v35 = objc_opt_new();
  v36 = [NSNumber numberWithUnsignedInt:*buf];
  v74 = v35;
  [v35 addObject:v36];

  v37 = v34;
  v72 = [NSMutableData dataWithLength:0x4000];
  if (![v34 count])
  {
    v60 = 0;
    goto LABEL_57;
  }

  v38 = 0;
  v73 = v37;
  while (1)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v39;
    v41 = atomic_load(&self->_canceled);
    if (v41)
    {
      v59 = [MBError errorWithCode:202 format:@"File scan cancelled"];
      goto LABEL_56;
    }

    v75 = v39;
    lastObject = [v37 lastObject];
    [v37 removeLastObject];
    lastObject2 = [v74 lastObject];
    unsignedIntValue = [lastObject2 unsignedIntValue];

    [v74 removeLastObject];
    v83 = v38;
    v44 = [fdsCopy cachedFDForDomain:domainCopy withSnapshotPath:pathCopy error:&v83];
    v45 = v83;

    v82 = lastObject;
    if (v44 < 0)
    {
      v65 = MBGetDefaultLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        name5 = [domainCopy name];
        *v86 = 138412546;
        *v87 = name5;
        *&v87[8] = 2112;
        *&v87[10] = v45;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "=scanning= Failed to fetch cached file descriptor for domain %@: %@", v86, 0x16u);

        name6 = [domainCopy name];
        v59 = v45;
        _MBLog(@"E ", "=scanning= Failed to fetch cached file descriptor for domain %@: %@", name6, v45);
      }

      else
      {
        v59 = v45;
      }

      v37 = v73;
      v40 = v75;
      goto LABEL_55;
    }

    v81 = v45;
    v46 = [lastObject length] ? objc_msgSend(lastObject, "fileSystemRepresentation") : ".";
    v40 = v75;
    v47 = unsignedIntValue;
    v48 = openat(v44, v46, 256, 0);
    if ((v48 & 0x80000000) == 0)
    {
      break;
    }

    v51 = *__error();
    delegate = [(MBFileScanner *)self delegate];
    v53 = [MBFile fileWithDomain:domainCopy snapshotPath:pathCopy relativePath:v82];
    v76 = v51;
    v80 = v53;
    v71 = delegate;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fileScanner:self failedToOpenFile:v53 withErrno:v51])
    {
      v54 = MBGetDefaultLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = objc_msgSend_absolutePath(v53);
        *v86 = 138412802;
        *v87 = v55;
        *&v87[8] = 2112;
        *&v87[10] = v82;
        *&v87[18] = 1024;
        *&v87[20] = v76;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "=scanning= Skipping file with openat failure %@ (%@): %{errno}d", v86, 0x1Cu);

        v56 = objc_msgSend_absolutePath(v53);
        _MBLog(@"I ", "=scanning= Skipping file with openat failure %@ (%@): %{errno}d", v56, v82, v76);
      }

      v57 = 0;
    }

    else
    {
      v61 = MBGetDefaultLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = objc_msgSend_absolutePath(v53);
        *v86 = 138412802;
        *v87 = v62;
        *&v87[8] = 2112;
        *&v87[10] = v82;
        *&v87[18] = 1024;
        *&v87[20] = v76;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=scanning= openat failed at %@ (%@): %{errno}d", v86, 0x1Cu);

        v63 = objc_msgSend_absolutePath(v53);
        _MBLog(@"E ", "=scanning= openat failed at %@ (%@): %{errno}d", v63, v82, v76);
      }

      v64 = objc_msgSend_absolutePath(v53);
      v70 = [MBError errorWithErrno:v76 code:101 path:v64 format:@"open error"];

      v54 = objc_msgSend_absolutePath(v53);
      sub_10000D2DC(v54, v76, "openat");
      v57 = 1;
      v81 = v70;
    }

    v37 = v73;

    objc_autoreleasePoolPop(v40);
    v60 = v81;
    if (v57)
    {
      goto LABEL_57;
    }

LABEL_44:
    v38 = v60;
    if (![v37 count])
    {
      goto LABEL_57;
    }
  }

  v49 = v48;
  if (unsignedIntValue > 0x61A8)
  {
    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      name7 = [domainCopy name];
      *v86 = 67109634;
      *v87 = unsignedIntValue;
      *&v87[4] = 2114;
      *&v87[6] = name7;
      *&v87[14] = 2114;
      *&v87[16] = v82;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "=scanning= Found a direntcount of %u under %{public}@ (%{public}@)", v86, 0x1Cu);

      name8 = [domainCopy name];
      v47 = unsignedIntValue;
      _MBLog(@"I ", "=scanning= Found a direntcount of %u under %{public}@ (%{public}@)", unsignedIntValue, name8, v82);
    }

    v37 = v73;
    v50 = [(MBFileScanner *)self _performTwoPassEnumerationForDomain:domainCopy snapshotPath:pathCopy relativePath:v82 buffer:v72 dirFd:v49 direntCount:v47 directoryPathStack:v73 directoryCountStack:v74 stats:stats];
  }

  else
  {
    v37 = v73;
    v50 = [(MBFileScanner *)self _performSinglePassEnumerationForDomain:domainCopy snapshotPath:pathCopy relativePath:v82 buffer:v72 dirFd:v48 direntCount:unsignedIntValue directoryPathStack:v73 directoryCountStack:v74 stats:stats];
  }

  v59 = v50;

  close(v49);
  if (!v59)
  {

    objc_autoreleasePoolPop(v40);
    v60 = 0;
    goto LABEL_44;
  }

  v65 = MBGetDefaultLog();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    *v86 = 138412290;
    *v87 = v59;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "=scanning= Error performing file enumeration: %@", v86, 0xCu);
    _MBLog(@"E ", "=scanning= Error performing file enumeration: %@", v59);
  }

LABEL_55:

  v38 = v82;
LABEL_56:

  objc_autoreleasePoolPop(v40);
  v60 = v59;
LABEL_57:
  v22 = v60;

  v17 = v22;
  v23 = v69;
LABEL_58:

LABEL_59:
  v20 = v22;
LABEL_60:

LABEL_61:

  return v17;
}

- (id)_performSinglePassEnumerationForDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath buffer:(id)buffer dirFd:(int)fd direntCount:(unsigned int)count directoryPathStack:(id)stack directoryCountStack:(id)self0 stats:(_MBFileScannerDomainStats *)self1
{
  v11 = *&count;
  domainCopy = domain;
  pathCopy = path;
  relativePathCopy = relativePath;
  bufferCopy = buffer;
  stackCopy = stack;
  countStackCopy = countStack;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_10008B33C;
  v68 = sub_10008B34C;
  v69 = 0;
  v19 = [[NSMutableArray alloc] initWithCapacity:v11];
  v20 = [[NSMutableArray alloc] initWithCapacity:v11];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10008B354;
  v53[3] = &unk_1000FE6D8;
  v51 = domainCopy;
  v54 = v51;
  v52 = relativePathCopy;
  v55 = v52;
  selfCopy = self;
  v60 = &v64;
  v61 = &v70;
  v63 = v11;
  v21 = pathCopy;
  v57 = v21;
  statsCopy = stats;
  v22 = v20;
  v58 = v22;
  v23 = v19;
  v59 = v23;
  sub_10008DCA8(fd, bufferCopy, v53);
  if (v71[3] >> 4 >= 0x271)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v71[3];
        name = [v51 name];
        *buf = 134218754;
        v75 = v26;
        v76 = 1024;
        v77 = v11;
        v78 = 2114;
        v79 = v52;
        v80 = 2114;
        v81 = name;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), single pass", buf, 0x26u);
      }

      v28 = v71[3];
      name2 = [v51 name];
      _MBLog(@"Df", "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), single pass", v28, v11, v52, name2);
    }
  }

  v30 = v65[5];
  if (!v30)
  {
    v31 = [v23 count];
    if (v31 != [v22 count])
    {
      __assert_rtn("[MBFileScanner _performSinglePassEnumerationForDomain:snapshotPath:relativePath:buffer:dirFd:direntCount:directoryPathStack:directoryCountStack:stats:]", "MBFileScanner.m", 1017, "foundNodes.count == foundFileNames.count");
    }

    v32 = 0;
    do
    {
      if (v32 >= [v23 count])
      {
        break;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = [v23 objectAtIndexedSubscript:v32];
      v35 = v34;
      bytes = [v34 bytes];

      v37 = [v22 objectAtIndexedSubscript:v32];
      v38 = [v52 stringByAppendingPathComponent:v37];
      v39 = [MBFile fileWithDomain:v51 snapshotPath:v21 relativePath:v38];

      [v39 setNode:bytes];
      v40 = [(MBFileScanner *)self _foundFile:v39 snapshotPath:v21 stats:stats];
      v41 = v65[5];
      v65[5] = v40;

      v42 = v65[5];
      if (!v42 && [v39 isDirectory])
      {
        relativePath = [v39 relativePath];
        [stackCopy addObject:relativePath];

        v44 = [NSNumber numberWithUnsignedInt:*bytes];
        [countStackCopy addObject:v44];
      }

      objc_autoreleasePoolPop(v33);
      ++v32;
    }

    while (!v42);
    v30 = v65[5];
  }

  v45 = v30;

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v70, 8);

  return v45;
}

- (id)_performTwoPassEnumerationForDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath buffer:(id)buffer dirFd:(int)fd direntCount:(unsigned int)count directoryPathStack:(id)stack directoryCountStack:(id)self0 stats:(_MBFileScannerDomainStats *)self1
{
  v11 = *&count;
  domainCopy = domain;
  pathCopy = path;
  relativePathCopy = relativePath;
  bufferCopy = buffer;
  stackCopy = stack;
  countStackCopy = countStack;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_10008B33C;
  v78 = sub_10008B34C;
  v79 = 0;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10008BCC0;
  v65[3] = &unk_1000FE700;
  v20 = domainCopy;
  v66 = v20;
  v21 = relativePathCopy;
  v67 = v21;
  selfCopy = self;
  selfCopy2 = self;
  v70 = &v74;
  v71 = &v80;
  v22 = bufferCopy;
  v23 = v11;
  v73 = v11;
  v24 = pathCopy;
  v69 = v24;
  statsCopy = stats;
  sub_10008DCA8(fd, v22, v65);
  if (v81[3] >> 4 >= 0x271)
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v22;
        v27 = v81[3];
        name = [v20 name];
        *buf = 134218754;
        v85 = v27;
        v86 = 1024;
        v87 = v11;
        v88 = 2114;
        v89 = v21;
        v90 = 2114;
        v91 = name;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), first pass", buf, 0x26u);

        v22 = v44;
      }

      v29 = v81[3];
      name2 = [v20 name];
      _MBLog(@"Df", "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), first pass", v29, v11, v21, name2);
    }
  }

  v31 = v75[5];
  if (v31)
  {
    v32 = v31;
LABEL_9:
    v33 = v32;
    goto LABEL_18;
  }

  if (lseek(fd, 0, 0) < 0)
  {
    v32 = [MBError errorWithErrno:*__error() path:v21 format:@"lseek error"];
    goto LABEL_9;
  }

  v34 = v22;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10008C030;
  v50[3] = &unk_1000FE6D8;
  v35 = v20;
  v51 = v35;
  v36 = v21;
  v52 = v36;
  v53 = selfCopy2;
  v57 = &v74;
  v58 = &v61;
  v60 = v11;
  v54 = v24;
  statsCopy2 = stats;
  v55 = stackCopy;
  v56 = countStackCopy;
  sub_10008DCA8(fd, v22, v50);
  if (v62[3] >> 4 >= 0x271)
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v36;
      v38 = v37;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v62[3];
        name3 = [v35 name];
        *buf = 134218754;
        v85 = v39;
        v86 = 1024;
        v87 = v23;
        v88 = 2114;
        v89 = v47;
        v90 = 2114;
        v91 = name3;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), second pass", buf, 0x26u);

        v22 = v34;
      }

      v41 = v62[3];
      name4 = [v35 name];
      _MBLog(@"Df", "=scanning= Found a total of %llu/%u items under %{public}@ (%{public}@), second pass", v41, v23, v47, name4);
    }
  }

  v33 = v75[5];

  _Block_object_dispose(&v61, 8);
LABEL_18:

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  return v33;
}

- (id)_foundFile:(id)file snapshotPath:(id)path stats:(_MBFileScannerDomainStats *)stats
{
  fileCopy = file;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(MBFileScanner *)self _updateStats:stats file:fileCopy];
  if (!pathCopy)
  {
    domain = [fileCopy domain];
    relativePath = [fileCopy relativePath];
    -[MBFileScanner _detectModifiedDomain:relativePath:lastModified:](self, "_detectModifiedDomain:relativePath:lastModified:", domain, relativePath, [fileCopy lastModified]);
  }

  if (![fileCopy isRegularFile])
  {
    v21 = 0;
    goto LABEL_70;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v13 = MBSQLiteJournalSuffixes();
  v14 = [v13 countByEnumeratingWithState:&v109 objects:v121 count:16];
  if (!v14)
  {
    v21 = 0;
    goto LABEL_60;
  }

  v15 = v14;
  v101 = WeakRetained;
  v16 = *v110;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v110 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v109 + 1) + 8 * i);
      relativePath2 = [fileCopy relativePath];
      v20 = [relativePath2 hasSuffix:v18];

      if (v20)
      {
        relativePath3 = [fileCopy relativePath];
        relativePath4 = [fileCopy relativePath];
        v24 = [relativePath3 substringToIndex:{objc_msgSend(relativePath4, "length") - objc_msgSend(v18, "length")}];

        domain2 = [fileCopy domain];
        rootPath = [domain2 rootPath];
        v27 = [rootPath stringByAppendingPathComponent:v24];

        domain3 = [fileCopy domain];
        volumeMountPoint = [domain3 volumeMountPoint];
        v99 = v27;
        v30 = sub_100077FF4(v27, pathCopy, volumeMountPoint);

        domain4 = [fileCopy domain];
        v32 = [MBFileID fileIDWithDomain:domain4 relativePath:v24];

        if ([v18 hasSuffix:@"-wal"])
        {
          [(NSMutableDictionary *)self->_lastModifiedDateBySQLiteFileID removeObjectForKey:v32];
        }

        v100 = v32;
        v108 = 0;
        v33 = [MBProtectionClassUtils getWithPath:v30 error:&v108];
        v34 = v108;
        if (v33 == 255)
        {
          if (![MBError isError:v34 withCode:4])
          {
            v21 = v34;

            v45 = v21;
LABEL_46:
            WeakRetained = v101;
            goto LABEL_77;
          }

          v46 = MBGetDefaultLog();
          v47 = v99;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v30;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", buf, 0xCu);
            _MBLog(@"I ", "=scanning= Potential SQLite database not found: %@", v30);
          }

          v48 = v34;
          v34 = 0;
        }

        else
        {
          if ((self->_policy & 8) == 0 || [MBProtectionClassUtils canOpenWhenLocked:v33])
          {
            v98 = v24;
            v107 = 0;
            v106 = v34;
            v35 = [MBSQLiteFileHandle isSQLiteFileAtPath:v30 result:&v107 error:&v106];
            v36 = v106;

            if (v35)
            {
              if (v107)
              {
                if ((self->_policy & 0x40) == 0)
                {
LABEL_22:
                  v37 = MBGetDefaultLog();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    v38 = objc_msgSend_absolutePath(fileCopy);
                    *buf = 138412290;
                    *&buf[4] = v38;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=scanning= Not backing up SQLite file: %@", buf, 0xCu);

                    v39 = objc_msgSend_absolutePath(fileCopy);
                    _MBLog(@"I ", "=scanning= Not backing up SQLite file: %@", v39);
                  }

                  if ([v18 hasSuffix:@"-wal"])
                  {
                    lastModifiedDate = [fileCopy lastModifiedDate];
                    [lastModifiedDate timeIntervalSince1970];
                    v42 = v41;

                    v43 = MBGetDefaultLog();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134218498;
                      *&buf[4] = v42;
                      *&buf[12] = 2112;
                      *&buf[14] = v30;
                      *&buf[22] = 2112;
                      *&buf[24] = v100;
                      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "=scanning= Saving last modified date of SQLite file's WAL (%lu): %@ (%@)", buf, 0x20u);
                      _MBLog(@"I ", "=scanning= Saving last modified date of SQLite file's WAL (%lu): %@ (%@)", v42, v30, v100);
                    }

                    lastModifiedDate2 = [fileCopy lastModifiedDate];
                    [(NSMutableDictionary *)self->_lastModifiedDateBySQLiteFileID setObject:lastModifiedDate2 forKeyedSubscript:v100];
                  }

                  v45 = 0;
                  goto LABEL_45;
                }

                domain5 = [fileCopy domain];
                v54 = [MBFile fileWithDomain:domain5 snapshotPath:pathCopy relativePath:v98];

                v120 = 0;
                v118 = 0u;
                v119 = 0u;
                memset(buf, 0, sizeof(buf));
                v105 = v36;
                v55 = sub_10008E314(v30, buf, &v105);
                v21 = v105;

                v97 = v54;
                if (v55)
                {
                  [v54 setNode:buf];
                  if ([v54 isRegularFile])
                  {
                    v103 = v21;
                    v104 = 0;
                    v56 = [MBSQLiteFileHandle lastModifiedForSQLiteFileAtPath:v30 time:&v104 error:&v103];
                    v36 = v103;

                    if (v56)
                    {
                      [v54 setLastModified:v104];
                      if (![v101 fileScanner:self isFileAddedOrModified:v54])
                      {

                        goto LABEL_22;
                      }

                      v57 = MBGetDefaultLog();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                      {
                        v58 = objc_msgSend_absolutePath(fileCopy);
                        *v113 = 138412290;
                        *v114 = v58;
                        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "=scanning= Backing up SQLite file: %@", v113, 0xCu);

                        v59 = objc_msgSend_absolutePath(fileCopy);
                        _MBLog(@"I ", "=scanning= Backing up SQLite file: %@", v59);
                      }

                      v60 = 2;
                      v21 = v36;
                      WeakRetained = v101;
                    }

                    else
                    {
                      if ([MBError isError:v36 withCode:4])
                      {
                        v93 = MBGetDefaultLog();
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                        {
                          *v113 = 138412290;
                          *v114 = v30;
                          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", v113, 0xCu);
                          _MBLog(@"I ", "=scanning= Potential SQLite database not found: %@", v30);
                        }

                        v60 = 2;
                      }

                      else
                      {
                        v94 = v36;
                        v60 = 1;
                      }

                      v21 = v36;
                      WeakRetained = v101;
                    }

LABEL_98:

                    v45 = v21;
                    if (v60 == 2)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_77;
                  }

                  delegate = MBGetDefaultLog();
                  if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
                  {
                    mode = [fileCopy mode];
                    *v113 = 67109378;
                    *v114 = mode;
                    *&v114[4] = 2112;
                    *&v114[6] = v30;
                    _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database is not a regular file (0%o): %@", v113, 0x12u);
                    _MBLog(@"I ", "=scanning= Potential SQLite database is not a regular file (0%o): %@", [fileCopy mode], v30);
                  }

                  v60 = 2;
                  WeakRetained = v101;
LABEL_97:

                  goto LABEL_98;
                }

                v83 = [MBError errnoForError:v21];
                delegate = [(MBFileScanner *)self delegate];
                if (v83 == 2)
                {
                  v85 = MBGetDefaultLog();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                  {
                    *v113 = 138412290;
                    *v114 = v30;
                    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", v113, 0xCu);
                    _MBLog(@"I ", "=scanning= Potential SQLite database not found: %@", v30);
                  }
                }

                else
                {
                  if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate fileScanner:self failedToStatFile:v54 withErrno:v83])
                  {
                    v91 = MBGetDefaultLog();
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                    {
                      *v113 = 138412546;
                      *v114 = v30;
                      *&v114[8] = 2114;
                      *&v114[10] = v21;
                      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "=scanning= MBNodeForPath() failed at %@: %{public}@", v113, 0x16u);
                      _MBLog(@"E ", "=scanning= MBNodeForPath() failed at %@: %{public}@", v30, v21);
                    }

                    v92 = v21;
                    v60 = 1;
                    goto LABEL_96;
                  }

                  v87 = MBGetDefaultLog();
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                  {
                    v95 = objc_msgSend_absolutePath(v97);
                    relativePath5 = [v97 relativePath];
                    *v113 = 138412802;
                    *v114 = v95;
                    *&v114[8] = 2112;
                    *&v114[10] = relativePath5;
                    v89 = relativePath5;
                    v115 = 1024;
                    v116 = v83;
                    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "=scanning= Skipping SQLite file with lstat failure %@ (%@): %{errno}d", v113, 0x1Cu);

                    v96 = objc_msgSend_absolutePath(v97);
                    relativePath6 = [v97 relativePath];
                    _MBLog(@"I ", "=scanning= Skipping SQLite file with lstat failure %@ (%@): %{errno}d", v96, relativePath6, v83);
                  }
                }

                v60 = 2;
LABEL_96:
                WeakRetained = v101;
                goto LABEL_97;
              }

              v49 = MBGetDefaultLog();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v50 = v30;
                *&buf[4] = v30;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database isn't: %@", buf, 0xCu);
                v51 = "=scanning= Potential SQLite database isn't: %@";
                v24 = v98;
                goto LABEL_43;
              }

              v24 = v98;
            }

            else
            {
              if (![MBError isError:v36 withCode:4])
              {
                v36 = v36;
                v45 = v36;
LABEL_45:

                v21 = v36;
                goto LABEL_46;
              }

              v49 = MBGetDefaultLog();
              v24 = v98;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v50 = v30;
                *&buf[4] = v30;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=scanning= Potential SQLite database not found: %@", buf, 0xCu);
                v51 = "=scanning= Potential SQLite database not found: %@";
LABEL_43:
                v47 = v99;
                _MBLog(@"I ", v51, v50);
LABEL_58:

                goto LABEL_59;
              }
            }

            v47 = v99;
            goto LABEL_58;
          }

          v48 = MBGetDefaultLog();
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v47 = v99;
            goto LABEL_48;
          }

          v52 = objc_msgSend_absolutePath(fileCopy);
          *buf = 138412290;
          *&buf[4] = v52;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "=scanning= Backing up protected SQLite journal: %@", buf, 0xCu);

          v46 = objc_msgSend_absolutePath(fileCopy);
          _MBLog(@"I ", "=scanning= Backing up protected SQLite journal: %@", v46);
          v47 = v99;
        }

LABEL_48:
        v36 = v34;
LABEL_59:

        v21 = v36;
        WeakRetained = v101;
        goto LABEL_60;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v109 objects:v121 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v21 = 0;
  WeakRetained = v101;
LABEL_60:

LABEL_61:
  lastModifiedDateBySQLiteFileID = self->_lastModifiedDateBySQLiteFileID;
  fileID = [fileCopy fileID];
  v63 = [(NSMutableDictionary *)lastModifiedDateBySQLiteFileID objectForKeyedSubscript:fileID];

  if (v63)
  {
    [v63 timeIntervalSince1970];
    v65 = v64;
    v66 = MBGetDefaultLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      lastModified = [fileCopy lastModified];
      *buf = 134218498;
      *&buf[4] = lastModified;
      *&buf[12] = 2048;
      *&buf[14] = v65;
      *&buf[22] = 2112;
      *&buf[24] = fileCopy;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "=scanning= Overriding last modified date of SQLite file (%lu) with WAL's (%lu): %@", buf, 0x20u);
      _MBLog(@"I ", "=scanning= Overriding last modified date of SQLite file (%lu) with WAL's (%lu): %@", [fileCopy lastModified], v65, fileCopy);
    }

    [fileCopy setLastModified:v65];
  }

  v68 = +[MBFileSystemManager fileSystemCapacity];
  if ([fileCopy size] > v68)
  {
    v69 = MBGetDefaultLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      v70 = [fileCopy size];
      objc_msgSend_absolutePath(fileCopy);
      v71 = v102 = WeakRetained;
      *buf = 134218498;
      *&buf[4] = v70;
      *&buf[12] = 2048;
      *&buf[14] = v68;
      *&buf[22] = 2114;
      *&buf[24] = v71;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, "=scanning= Found a file with unexpected size (%llu/%llu) at %{public}@", buf, 0x20u);

      v72 = [fileCopy size];
      v73 = objc_msgSend_absolutePath(fileCopy);
      _MBLog(@"F ", "=scanning= Found a file with unexpected size (%llu/%llu) at %{public}@", v72, v68, v73);

      WeakRetained = v102;
    }

    v74 = objc_msgSend_absolutePath(fileCopy);
    sub_10000D2DC(v74, 28, "[MBFileScanner _foundFile:snapshotPath:stats:]");
  }

LABEL_70:
  v75 = v21;
  v76 = objc_autoreleasePoolPush();
  v21 = (self->_delegateImpOfFileScannerDidFindFile)(WeakRetained, "fileScanner:didFindFile:", self, fileCopy);

  objc_autoreleasePoolPop(v76);
  if (v21)
  {
    if ([MBError isError:v21 withCode:4])
    {
      v77 = MBGetDefaultLog();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = objc_msgSend_absolutePath(fileCopy);
        *buf = 138412290;
        *&buf[4] = v78;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "=scanning= Deleted while scanning: %@", buf, 0xCu);

        v79 = objc_msgSend_absolutePath(fileCopy);
        _MBLog(@"Df", "=scanning= Deleted while scanning: %@", v79);
      }

      [(MBDebugContext *)self->_debugContext setFlag:@"FileDeletedWhileScanning"];
      modifiedDomains = self->_modifiedDomains;
      domain6 = [fileCopy domain];
      [(NSMutableSet *)modifiedDomains addObject:domain6];

      goto LABEL_75;
    }

    v21 = v21;
    v45 = v21;
  }

  else
  {
LABEL_75:
    v45 = 0;
  }

LABEL_77:

  return v45;
}

- (void)_detectModifiedDomain:(id)domain relativePath:(id)path lastModified:(int64_t)modified
{
  domainCopy = domain;
  pathCopy = path;
  if (self->_startTime <= modified && [(MBDebugContext *)self->_debugContext time]>= modified)
  {
    relativePathsNotToCheckIfModifiedDuringBackup = [domainCopy relativePathsNotToCheckIfModifiedDuringBackup];
    v11 = [relativePathsNotToCheckIfModifiedDuringBackup count];

    if (v11)
    {
      v24 = pathCopy;
      pathComponents = [pathCopy pathComponents];
      v13 = [pathComponents count];
      v14 = 0;
      while (1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [pathComponents subarrayWithRange:{0, v14}];
        v17 = [NSString pathWithComponents:v16];

        relativePathsNotToCheckIfModifiedDuringBackup2 = [domainCopy relativePathsNotToCheckIfModifiedDuringBackup];
        v19 = [relativePathsNotToCheckIfModifiedDuringBackup2 containsObject:v17];

        if (v19)
        {
          break;
        }

        objc_autoreleasePoolPop(v15);
        if (++v14 > v13)
        {
          v20 = MBGetDefaultLog();
          pathCopy = v24;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            startTime = self->_startTime;
            *buf = 138412802;
            v26 = v24;
            v27 = 2048;
            v28 = startTime;
            v29 = 2048;
            modifiedCopy2 = modified;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scanning= Modified while scanning: %@ (startTime:%ld, lastModified:%ld)", buf, 0x20u);
            _MBLog(@"Df", "=scanning= Modified while scanning: %@ (startTime:%ld, lastModified:%ld)", v24, self->_startTime, modified);
          }

          [(MBDebugContext *)self->_debugContext setFlag:@"FileModifiedWhileScanning"];
          [(NSMutableSet *)self->_modifiedDomains addObject:domainCopy];
          goto LABEL_13;
        }
      }

      v22 = MBGetDefaultLog();
      pathCopy = v24;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_startTime;
        *buf = 138412802;
        v26 = v24;
        v27 = 2048;
        v28 = v23;
        v29 = 2048;
        modifiedCopy2 = modified;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=scanning= Ignoring path modified while scanning: %@ (startTime:%ld, lastModified:%ld)", buf, 0x20u);
        _MBLog(@"Df", "=scanning= Ignoring path modified while scanning: %@ (startTime:%ld, lastModified:%ld)", v24, self->_startTime, modified);
      }

      objc_autoreleasePoolPop(v15);
LABEL_13:
    }
  }
}

- (MBFileScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end