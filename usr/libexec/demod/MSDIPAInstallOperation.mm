@interface MSDIPAInstallOperation
- (BOOL)_IXInstallAppIPA;
- (BOOL)_fulfillIXSZTransferPromise:(id)promise withFile:(id)file outError:(id *)error;
- (BOOL)_verifyInstalledApp;
- (BOOL)rollback;
- (MSDIPAInstallOperation)initWithContext:(id)context;
- (MSDIPAInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager;
- (id)methodSelectors;
- (void)_createFullIPAInstallOperationsAsFallback;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully;
@end

@implementation MSDIPAInstallOperation

- (MSDIPAInstallOperation)initWithContext:(id)context
{
  contextCopy = context;
  v5 = +[MSDContentCacheManager sharedInstance];
  v6 = [(MSDIPAInstallOperation *)self initWithContext:contextCopy andContentCacheManager:v5];

  return v6;
}

- (MSDIPAInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MSDIPAInstallOperation;
  v7 = [(MSDOperation *)&v11 initWithContext:context];
  v8 = v7;
  if (v7)
  {
    [(MSDIPAInstallOperation *)v7 setContentCacheProtocol:managerCopy];
    v9 = dispatch_semaphore_create(0);
    [(MSDIPAInstallOperation *)v8 setSemaphore:v9];

    [(MSDIPAInstallOperation *)v8 setInstallError:0];
  }

  return v8;
}

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_IXInstallAppIPA"];
  v3 = [NSValue valueWithPointer:"_verifyInstalledApp"];
  v4 = [NSArray arrayWithObjects:v2, v3, 0];

  return v4;
}

- (BOOL)rollback
{
  context = [(MSDOperation *)self context];
  [context setUninstallOperation:1];

  context2 = [(MSDOperation *)self context];
  v5 = [MSDOperationRepository createOperationFromIdentifier:@"MSDIPAUninstallOperation" withContext:context2];

  [(MSDOperation *)self produceNewDependentOperation:v5 forRollback:1];
  return 1;
}

- (BOOL)_IXInstallAppIPA
{
  v3 = +[NSFileManager defaultManager];
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  context2 = [(MSDOperation *)self context];
  identifier = [context2 identifier];

  context3 = [(MSDOperation *)self context];
  uniqueIdentifier = [context3 uniqueIdentifier];

  context4 = [(MSDOperation *)self context];
  currentUniqueIdentifier = [context4 currentUniqueIdentifier];

  context5 = [(MSDOperation *)self context];
  alreadyInstalled = [context5 alreadyInstalled];

  context6 = [(MSDOperation *)self context];
  useDiffPatch = [context6 useDiffPatch];

  v17 = sub_100063A54(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v89 = identifier;
    v90 = 2114;
    *v91 = uniqueIdentifier;
    *&v91[8] = 2114;
    v92 = currentUniqueIdentifier;
    v93 = 1026;
    v94 = useDiffPatch;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Installing IPA for app: %{public}@ <UID %{public}@, CurrentUID: %{public}@, DiffPatch: %{public, BOOL}d>", buf, 0x26u);
  }

  v18 = +[MSDAppHelper sharedInstance];
  v68 = [v18 acquireAppTerminationAssertionForApp:identifier];

  if (useDiffPatch)
  {
    contentCacheProtocol = [(MSDIPAInstallOperation *)self contentCacheProtocol];
    [contentCacheProtocol appDiffPatchFileForSourceAppUID:currentUniqueIdentifier targetAppUID:uniqueIdentifier];
  }

  else
  {
    contentCacheProtocol = [(MSDOperation *)self context];
    [contentCacheProtocol fileHash];
  }
  v75 = ;

  v20 = [identifier stringByAppendingPathExtension:@"ipa"];
  v76 = [stagingRootPath stringByAppendingPathComponent:v20];

  v22 = sub_100063A54(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v89 = v75;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "IPA/Patch file hash to use: %{public}@", buf, 0xCu);
  }

  v71 = currentUniqueIdentifier;

  v74 = v3;
  v70 = stagingRootPath;
  v72 = uniqueIdentifier;
  if (alreadyInstalled)
  {
    v87 = 0;
    v23 = [IXUpdatingAppInstallCoordinator coordinatorForAppWithBundleID:identifier withClientID:9 createIfNotExisting:1 created:0 error:&v87];
    v24 = v87;
    installError = v24;
    if (!v23)
    {
      sub_1000DA4F8(v24);
LABEL_66:
      v48 = 0;
      v44 = 0;
      v73 = 0;
      v33 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v86 = 0;
    v23 = [IXInitiatingAppInstallCoordinator coordinatorForAppWithBundleID:identifier withClientID:9 createIfNotExisting:1 created:0 error:&v86];
    v27 = v86;
    installError = v27;
    if (!v23)
    {
      sub_1000DA010(v27);
      goto LABEL_66;
    }
  }

  v28 = installError;
  [v23 setObserver:{self, v68, stagingRootPath}];
  v85 = installError;
  v29 = [v23 setImportance:3 error:&v85];
  installError = v85;

  if ((v29 & 1) == 0)
  {
    sub_1000DA0C4(installError);
    goto LABEL_66;
  }

  v30 = +[NSArray array];
  v84 = installError;
  v31 = [v23 setInitialODRAssetPromises:v30 error:&v84];
  v32 = v84;

  if ((v31 & 1) == 0)
  {
    sub_1000DA160(v32);
    v48 = 0;
    v44 = 0;
    v73 = 0;
    v33 = 0;
LABEL_64:
    installError = v32;
    goto LABEL_32;
  }

  if (useDiffPatch)
  {
    v33 = [[IXPromisedStreamingZipTransfer alloc] initWithName:@"IPAPromise" client:9 streamingZipOptions:&__NSDictionary0__struct archiveSize:0 diskSpaceNeeded:0];
  }

  else
  {
    v34 = [IXPromisedTransferToPath alloc];
    v35 = [NSURL fileURLWithString:v76];
    v33 = [v34 initWithName:@"IPAPromise" client:9 transferPath:v35 diskSpaceNeeded:0];
  }

  v83[1] = v32;
  v73 = [[IXPlaceholder alloc] initAppPlaceholderWithBundleName:@"TempApp" bundleID:identifier installType:1 client:9];
  v36 = [v23 setPlaceholderPromise:? error:?];
  installError = v32;

  if ((v36 & 1) == 0)
  {
    sub_1000DA1FC(installError);
LABEL_62:
    v48 = 0;
    v44 = 0;
    goto LABEL_32;
  }

  v83[0] = installError;
  v37 = [v23 setAppAssetPromise:v33 error:v83];
  v38 = v83[0];

  if ((v37 & 1) == 0)
  {
    sub_1000DA298(v38);
    v48 = 0;
    v44 = 0;
    installError = v38;
    goto LABEL_32;
  }

  v82 = v38;
  v39 = [v73 setConfigurationCompleteWithError:&v82];
  installError = v82;

  if ((v39 & 1) == 0)
  {
    sub_1000DA334(installError);
    goto LABEL_62;
  }

  contentCacheProtocol2 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
  context7 = [(MSDOperation *)self context];
  v42 = [contentCacheProtocol2 copyFileIfPresentInCache:v75 toLocation:v76 verifyHash:{objc_msgSend(context7, "verifyFileHash")}];

  if ((v42 & 1) == 0)
  {
    sub_1000DA3D0(v75);
    goto LABEL_62;
  }

  if (([identifier isEqualToString:@"com.retailtech.arkenstone"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.ist.windward") & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"com.apple.ist.DemoDiscoveryApp"))
  {
    v43 = +[F13Server sharedInstance];
    [v43 windwardAppInstallationStarted];
  }

  v44 = objc_alloc_init(MIInstallOptions);
  [v44 setInstallTargetType:1];
  v81 = installError;
  v45 = [v23 setInstallOptions:v44 error:&v81];
  v32 = v81;

  if ((v45 & 1) == 0)
  {
    sub_1000DA45C(v32);
    v48 = 0;
    goto LABEL_64;
  }

  if (useDiffPatch)
  {
    v80 = v32;
    v46 = [(MSDIPAInstallOperation *)self _fulfillIXSZTransferPromise:v33 withFile:v76 outError:&v80];
    installError = v80;

    if ((v46 & 1) == 0)
    {
      v48 = 0;
      goto LABEL_32;
    }

    v32 = installError;
  }

  else
  {
    [v33 setComplete:1];
  }

  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  installError = [(MSDIPAInstallOperation *)self installError];

  v48 = installError == 0;
LABEL_32:
  v49 = sub_100063BEC(v26);
  signpostId = [(MSDOperation *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v51 = signpostId;
    if (os_signpost_enabled(v49))
    {
      *buf = 138412802;
      v89 = identifier;
      v90 = 1024;
      *v91 = useDiffPatch;
      *&v91[4] = 1024;
      *&v91[6] = v48;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_EVENT, v51, "Install IPA", "App identifier: %{xcode:string}@ Use diff patch: %{xcode:BOOLean}d Install Result: %{xcode:BOOLean}d", buf, 0x18u);
    }
  }

  if (v48)
  {
    v52 = installError;
  }

  else
  {
    v79 = installError;
    sub_1000C1424(&v79, 3727740962, @"Cannot install app.");
    v52 = v79;

    [(MSDOperation *)self setError:v52];
    if (v33)
    {
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_100076804;
      v78[3] = &unk_10016ACA0;
      v78[4] = self;
      [v33 cancelForReason:v52 client:9 completion:v78];
      semaphore2 = [(MSDIPAInstallOperation *)self semaphore];
      dispatch_semaphore_wait(semaphore2, 0xFFFFFFFFFFFFFFFFLL);
    }

    [(MSDIPAInstallOperation *)self _createFullIPAInstallOperationsAsFallback];
  }

  if ([v74 fileExistsAtPath:{v76, v68}])
  {
    v77 = v52;
    v54 = [v74 removeItemAtPath:v76 error:&v77];
    v55 = v77;

    if ((v54 & 1) == 0)
    {
      v57 = sub_100063A54(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1000DA5AC(v76, v55);
      }
    }
  }

  else
  {
    v55 = v52;
  }

  if (useDiffPatch)
  {
    contentCacheProtocol3 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
    [contentCacheProtocol3 removeAppDiffPatchFileForSourceAppUID:v71 targetAppUID:v72];
  }

  context8 = [(MSDOperation *)self context];
  deleteInstallableFileAfterInstall = [context8 deleteInstallableFileAfterInstall];

  if (!deleteInstallableFileAfterInstall)
  {
    v65 = sub_100063A54(v61);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v89 = v75;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Skipping deletion of IPA/Patch file from cache: %{public}@", buf, 0xCu);
    }

    goto LABEL_54;
  }

  contentCacheProtocol4 = [(MSDIPAInstallOperation *)self contentCacheProtocol];
  v63 = [contentCacheProtocol4 deleteFromCache:v75];

  if ((v63 & 1) == 0)
  {
    v65 = sub_100063A54(v64);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_1000DA65C();
    }

LABEL_54:
  }

  v66 = +[MSDAppHelper sharedInstance];
  [v66 releaseAppTerminationAssertion:v69 forApp:identifier];

  return v48;
}

- (BOOL)_verifyInstalledApp
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  uniqueIdentifier = [context2 uniqueIdentifier];

  v7 = +[MSDAppHelper sharedInstance];
  v8 = [v7 bundlePathForInstalledApp:identifier];

  v9 = [MSDiOSApp appWithPath:v8];
  v10 = v9;
  if (!v9)
  {
    v15 = sub_100063A54(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cannot create MSDiOSApp from bundle path %{public}@", &v16, 0xCu);
    }

    uniqueIdentifier2 = 0;
    goto LABEL_10;
  }

  uniqueIdentifier2 = [v9 uniqueIdentifier];
  v12 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];
  if ((v12 & 1) == 0)
  {
    v15 = sub_100063A54(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = uniqueIdentifier2;
      v18 = 2114;
      v19 = uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The installed app has UID %{public}@ but the expected UID is %{public}@", &v16, 0x16u);
    }

LABEL_10:

    [(MSDIPAInstallOperation *)self _createFullIPAInstallOperationsAsFallback];
    v13 = 0;
    goto LABEL_4;
  }

  v13 = 1;
LABEL_4:

  return v13;
}

- (BOOL)_fulfillIXSZTransferPromise:(id)promise withFile:(id)file outError:(id *)error
{
  promiseCopy = promise;
  fileCopy = file;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100076F3C;
  v39 = sub_100076F4C;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  memset(&v30, 0, sizeof(v30));
  v7 = sub_100063A54(fileCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = fileCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending bytes to IXPromisedStreamingZipTransfer from file: %{public}@", buf, 0xCu);
  }

  v8 = fileCopy;
  v25 = open([fileCopy fileSystemRepresentation], 0);
  if ((v25 & 0x80000000) != 0)
  {
    v21 = sub_100063A54(v25);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = __error();
      sub_1000DA870(fileCopy, v22, buf, v21);
    }

LABEL_18:
    close(v25);
    goto LABEL_19;
  }

  fstat(v25, &v30);
  st_size = v30.st_size;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100076F54;
  v29[3] = &unk_10016B5F8;
  v29[4] = self;
  v29[5] = &v35;
  [promiseCopy prepareForExtraction:v29];
  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  if (!v36[5])
  {
    if (st_size)
    {
      while ((v32[3] & 1) == 0)
      {
        if (st_size >= 0x19000)
        {
          v11 = 102400;
        }

        else
        {
          v11 = st_size;
        }

        v12 = malloc_type_malloc(v11, 0xD2E5A910uLL);
        if (!v12)
        {
          semaphore3 = sub_100063A54(0);
          if (os_log_type_enabled(semaphore3, OS_LOG_TYPE_ERROR))
          {
            sub_1000DA808();
          }

          goto LABEL_16;
        }

        v13 = read(v25, v12, v11);
        if (v13 != v11)
        {
          semaphore3 = sub_100063A54(v13);
          if (os_log_type_enabled(semaphore3, OS_LOG_TYPE_ERROR))
          {
            v19 = __error();
            sub_1000DA754(v19, buf, semaphore3);
          }

          goto LABEL_16;
        }

        semaphore3 = [NSData dataWithBytesNoCopy:v12 length:v11 freeWhenDone:1];
        if (!semaphore3)
        {
          v20 = sub_100063A54(0);
          sub_1000DA7A0(v20, buf);
          semaphore3 = *buf;
          goto LABEL_16;
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100076FE8;
        v28[3] = &unk_10016B620;
        v28[5] = &v35;
        v28[6] = &v31;
        v28[4] = self;
        [promiseCopy supplyBytes:semaphore3 withCompletionBlock:v28];
        semaphore2 = [(MSDIPAInstallOperation *)self semaphore];
        dispatch_semaphore_wait(semaphore2, 0xFFFFFFFFFFFFFFFFLL);

        if (v36[5])
        {
          goto LABEL_16;
        }

        st_size -= v11;
        if (!st_size)
        {
          break;
        }
      }
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100077094;
    v27[3] = &unk_100169E68;
    v27[4] = self;
    v27[5] = &v35;
    [promiseCopy finishStreamWithCompletionBlock:v27];
    semaphore3 = [(MSDIPAInstallOperation *)self semaphore];
    dispatch_semaphore_wait(semaphore3, 0xFFFFFFFFFFFFFFFFLL);
LABEL_16:
  }

  if (v25)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (error)
  {
    v16 = v36[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v17 & 1;
}

- (void)_createFullIPAInstallOperationsAsFallback
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  dependents = [(MSDOperation *)self dependents];
  v6 = [dependents copy];

  context2 = [(MSDOperation *)self context];
  useDiffPatch = [context2 useDiffPatch];

  if (useDiffPatch)
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = identifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Falling back to install full IPA for app: %{public}@", buf, 0xCu);
    }

    context3 = [(MSDOperation *)self context];
    v12 = [context3 copy];

    [v12 setAlreadyInstalled:0];
    [v12 setCurrentUniqueIdentifier:0];
    [v12 setUseDiffPatch:0];
    v13 = [MSDOperationRepository createOperationFromIdentifier:@"MSDInstallableFileDownloadOperation" withContext:v12];
    v14 = [MSDOperationRepository createOperationFromIdentifier:@"MSDIPAInstallOperation" withContext:v12];
    [v14 addDependency:v13];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v19) addDependency:{v14, v20}];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }

    [(MSDOperation *)self produceNewDependentOperation:v13 forRollback:0];
    [(MSDOperation *)self produceNewDependentOperation:v14 forRollback:0];
    [(MSDOperation *)self setSkipped:1];
  }
}

- (void)coordinatorDidCompleteSuccessfully:(id)successfully
{
  successfullyCopy = successfully;
  v5 = sub_100063A54(successfullyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [successfullyCopy bundleID];
    v8 = 138543362;
    v9 = bundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "App %{public}@ successfully installed.", &v8, 0xCu);
  }

  [(MSDIPAInstallOperation *)self setInstallError:0];
  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  v9 = sub_100063A54(reasonCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [coordinatorCopy bundleID];
    localizedDescription = [reasonCopy localizedDescription];
    v13 = 138543618;
    v14 = bundleID;
    v15 = 2114;
    v16 = localizedDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App %{public}@ cannot be installed: %{public}@", &v13, 0x16u);
  }

  [(MSDIPAInstallOperation *)self setInstallError:reasonCopy];
  semaphore = [(MSDIPAInstallOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end