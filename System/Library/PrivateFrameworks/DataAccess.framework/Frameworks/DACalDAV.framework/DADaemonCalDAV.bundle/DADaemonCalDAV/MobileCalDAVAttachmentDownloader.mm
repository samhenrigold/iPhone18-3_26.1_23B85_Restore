@interface MobileCalDAVAttachmentDownloader
+ (id)progressQueue;
- (MobileCalDAVAttachmentDownloader)initWithAttachmentUUID:(id)d forAccount:(id)account;
- (void)_didFinishDownloadingWithError:(id)error;
- (void)_didShowProgressDownloadedByteCount:(int64_t)count;
- (void)_reallyBeginDownload;
- (void)_reallySaveAttachmentDataToDatabase;
- (void)_saveAttachmentDataToDatabase;
- (void)addConsumer:(id)consumer;
- (void)beginDownload;
- (void)cancelDownload;
- (void)dealloc;
- (void)removeConsumer:(id)consumer;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation MobileCalDAVAttachmentDownloader

+ (id)progressQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_30C38)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.caldav.attachmentDownload", 0);
    v4 = qword_30C38;
    qword_30C38 = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = qword_30C38;

  return v5;
}

- (MobileCalDAVAttachmentDownloader)initWithAttachmentUUID:(id)d forAccount:(id)account
{
  dCopy = d;
  accountCopy = account;
  v22.receiver = self;
  v22.super_class = MobileCalDAVAttachmentDownloader;
  v9 = [(MobileCalDAVAttachmentDownloader *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentUUID, d);
    dCopy = [NSString stringWithFormat:@"com.apple.dataaccess.caldav.attachmentDownload.%@", dCopy];
    waiterID = v10->_waiterID;
    v10->_waiterID = dCopy;

    objc_storeWeak(&v10->_account, accountCopy);
    v13 = [DACoreDAVTaskManager alloc];
    WeakRetained = objc_loadWeakRetained(&v10->_account);
    backingAccount = [WeakRetained backingAccount];
    daAccount = [backingAccount daAccount];
    v17 = [v13 initWithAccount:daAccount];
    taskManager = v10->_taskManager;
    v10->_taskManager = v17;

    v19 = [[NSHashTable alloc] initWithOptions:5 capacity:0];
    consumers = v10->_consumers;
    v10->_consumers = v19;
  }

  return v10;
}

- (void)dealloc
{
  unlink([(NSString *)self->_localFilename UTF8String]);
  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVAttachmentDownloader;
  [(MobileCalDAVAttachmentDownloader *)&v3 dealloc];
}

- (void)addConsumer:(id)consumer
{
  consumerCopy = consumer;
  v4 = self->_consumers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_consumers addObject:consumerCopy];
  objc_sync_exit(v4);
}

- (void)removeConsumer:(id)consumer
{
  consumerCopy = consumer;
  v4 = self->_consumers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_consumers removeObject:consumerCopy];
  if (![(NSHashTable *)self->_consumers count])
  {
    [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
    [(DACoreDAVTaskManager *)self->_taskManager shutdown];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
  }

  objc_sync_exit(v4);
}

- (void)_reallySaveAttachmentDataToDatabase
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    attachmentUUID = self->_attachmentUUID;
    v47 = 138412290;
    v48 = attachmentUUID;
    _os_log_impl(&dword_0, v3, v4, "The gatekeeper lock has been granted. Beginning save of attachment %@", &v47, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_account);
  dbHelper = [WeakRetained dbHelper];
  v8 = objc_loadWeakRetained(&self->_account);
  accountID = [v8 accountID];
  v10 = objc_loadWeakRetained(&self->_account);
  changeTrackingID = [v10 changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v12 = objc_loadWeakRetained(&self->_account);
  dbHelper2 = [v12 dbHelper];
  v14 = objc_loadWeakRetained(&self->_account);
  accountID2 = [v14 accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];

  v16 = CalDatabaseCopyAttachmentFileWithUUID();
  if (v16)
  {
    v17 = v16;
    stringByRemovingPercentEncoding = CalAttachmentFileCopyFilename();
    if (!stringByRemovingPercentEncoding)
    {
      absoluteString = [(NSURL *)self->_attachmentURL absoluteString];
      lastPathComponent = [absoluteString lastPathComponent];
      stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];
    }

    pathExtension = [stringByRemovingPercentEncoding pathExtension];
    lowercaseString = [pathExtension lowercaseString];

    [(NSString *)self->_attachmentType rangeOfString:@"x-mac-auto-archive" options:1];
    v24 = v23 != 0;
    IsAutoArchived = CalAttachmentFileIsAutoArchived();
    lowercaseString2 = [kCALSTR_XAPPLE_autoarchived_param lowercaseString];
    v27 = [lowercaseString isEqualToString:lowercaseString2];

    v28 = v24 | IsAutoArchived | v27;
    CalAttachmentFileSetAutoArchived();
    if (stringByRemovingPercentEncoding && (v28 & 1) != 0 && ((v27 & 1) != 0 || [lowercaseString isEqualToString:@"zip"]))
    {
      stringByDeletingPathExtension = [stringByRemovingPercentEncoding stringByDeletingPathExtension];

      stringByRemovingPercentEncoding = stringByDeletingPathExtension;
    }

    CalAttachmentFileSetFilename();
    if (CalAttachmentFileSetFileData())
    {
      CalAttachmentFileSetFormat();
      CalAttachmentFileSetExternalModTag();
      CalAttachmentFileSetDownloadTries();
      CalDatabaseSaveWithOptions();
    }

    else
    {
      v37 = DALoggingwithCategory();
      v38 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v37, v38))
      {
        v39 = self->_attachmentUUID;
        v47 = 138412290;
        v48 = v39;
        _os_log_impl(&dword_0, v37, v38, "Couldn't save attachment file in the database for attachment %@", &v47, 0xCu);
      }

      CalAttachmentFileSetFormat();
      CalAttachmentFileSetExternalModTag();
    }

    CFRelease(v17);
    v40 = objc_loadWeakRetained(&self->_account);
    dbHelper3 = [v40 dbHelper];
    v42 = objc_loadWeakRetained(&self->_account);
    accountID3 = [v42 accountID];
    [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

    v44 = DALoggingwithCategory();
    v45 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v44, v45))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_0, v44, v45, "Attachment has been saved. Releasing gatekeeper lock", &v47, 2u);
    }

    self->_holdingGatekeeperLock = 0;
    v46 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v46 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];

    [(MobileCalDAVAttachmentDownloader *)self _didShowProgressDownloadedByteCount:self->_attachmentSize];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
  }

  else
  {
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v30, v31))
    {
      LOWORD(v47) = 0;
      _os_log_impl(&dword_0, v30, v31, "Couldn't get an attachment to set our downloaded file on", &v47, 2u);
    }

    v32 = [NSError errorWithDomain:DAErrorDomain code:71 userInfo:0];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v32];

    v33 = objc_loadWeakRetained(&self->_account);
    dbHelper4 = [v33 dbHelper];
    v35 = objc_loadWeakRetained(&self->_account);
    accountID4 = [v35 accountID];
    [dbHelper4 calCloseDatabaseForAccountID:accountID4 save:0];

    self->_holdingGatekeeperLock = 0;
    stringByRemovingPercentEncoding = +[DALocalDBGateKeeper sharedGateKeeper];
    [stringByRemovingPercentEncoding relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
  }
}

- (void)_saveAttachmentDataToDatabase
{
  if (self->_waitingForGatekeeper || self->_holdingGatekeeperLock)
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v3, v4))
    {
      attachmentUUID = self->_attachmentUUID;
      *buf = 138412290;
      v16 = attachmentUUID;
      _os_log_impl(&dword_0, v3, v4, "Downloader %@ was told to save the attachment twice. Ignoring the second request", buf, 0xCu);
    }
  }

  else
  {
    v6 = objc_opt_new();
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v7, v8))
    {
      transactionId = [v6 transactionId];
      *buf = 138543362;
      v16 = transactionId;
      _os_log_impl(&dword_0, v7, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    self->_waitingForGatekeeper = 1;
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v8))
    {
      v11 = self->_attachmentUUID;
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_0, v10, v8, "Requesting gatekeeper lock to save attachment %@", buf, 0xCu);
    }

    v12 = +[DALocalDBGateKeeper sharedGateKeeper];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_6298;
    v13[3] = &unk_28888;
    v13[4] = self;
    v14 = v6;
    v3 = v6;
    [v12 registerWaiter:self forDataclassLocks:20 completionHandler:v13];
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:CoreDAVHTTPStatusErrorDomain])
      {
        code = [errorCopy code];

        if (code == &stru_108.size)
        {
          v10 = DALoggingwithCategory();
          v11 = _CPLog_to_os_log_type[6];
          if (os_log_type_enabled(v10, v11))
          {
            attachmentURL = self->_attachmentURL;
            v35 = 138412290;
            v36 = attachmentURL;
            _os_log_impl(&dword_0, v10, v11, "The attachment at %@ hasn't been modified since we last saw it.", &v35, 0xCu);
          }

          selfCopy2 = self;
          v14 = 0;
LABEL_21:
          [(MobileCalDAVAttachmentDownloader *)selfCopy2 _didFinishDownloadingWithError:v14];
          goto LABEL_22;
        }
      }

      else
      {
      }

      v32 = DALoggingwithCategory();
      v33 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v32, v33))
      {
        v34 = self->_attachmentURL;
        v35 = 138412546;
        v36 = v34;
        v37 = 2112;
        v38 = errorCopy;
        _os_log_impl(&dword_0, v32, v33, "Couldn't download the attachment at %@: %@", &v35, 0x16u);
      }

      selfCopy2 = self;
      v14 = errorCopy;
      goto LABEL_21;
    }

    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v15, v16))
    {
      v17 = self->_attachmentURL;
      v35 = 138412290;
      v36 = v17;
      _os_log_impl(&dword_0, v15, v16, "Finished downloading the file at %@. Saving to the database.", &v35, 0xCu);
    }

    responseHeaders = [taskCopy responseHeaders];
    v19 = [responseHeaders DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ETag];

    v20 = DALoggingwithCategory();
    if (os_log_type_enabled(v20, v16))
    {
      etag = self->_etag;
      v35 = 138412546;
      v36 = v19;
      v37 = 2112;
      v38 = etag;
      _os_log_impl(&dword_0, v20, v16, "etag for attachment on the server is %@. Our etag is %@", &v35, 0x16u);
    }

    v22 = self->_etag;
    self->_etag = v19;
    v23 = v19;

    responseHeaders2 = [taskCopy responseHeaders];
    v25 = [responseHeaders2 DAObjectForKeyCaseInsensitive:@"X-ANTICIPATED-CONTENT-LENGTH"];

    if (!v25)
    {
      responseHeaders3 = [taskCopy responseHeaders];
      v25 = [responseHeaders3 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ContentLength];
    }

    self->_attachmentSize = [v25 longLongValue];
    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, v16))
    {
      attachmentSize = self->_attachmentSize;
      v35 = 134217984;
      v36 = attachmentSize;
      _os_log_impl(&dword_0, v27, v16, "Downloading attachment of size %lld", &v35, 0xCu);
    }

    responseHeaders4 = [taskCopy responseHeaders];
    v30 = [responseHeaders4 DAObjectForKeyCaseInsensitive:CoreDAVHTTPHeader_ContentType];
    attachmentType = self->_attachmentType;
    self->_attachmentType = v30;

    [(MobileCalDAVAttachmentDownloader *)self _saveAttachmentDataToDatabase];
  }

LABEL_22:
}

- (void)beginDownload
{
  v3 = +[DALocalDBGateKeeper sharedGateKeeper];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6824;
  v4[3] = &unk_288B0;
  v4[4] = self;
  [v3 registerWaiter:self forDataclassLocks:4 completionHandler:v4];
}

- (void)_reallyBeginDownload
{
  WeakRetained = objc_loadWeakRetained(&self->_account);
  dbHelper = [WeakRetained dbHelper];
  v5 = objc_loadWeakRetained(&self->_account);
  accountID = [v5 accountID];
  v7 = objc_loadWeakRetained(&self->_account);
  changeTrackingID = [v7 changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v9 = objc_loadWeakRetained(&self->_account);
  dbHelper2 = [v9 dbHelper];
  v11 = objc_loadWeakRetained(&self->_account);
  accountID2 = [v11 accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];

  v13 = CalDatabaseCopyAttachmentFileWithUUID();
  if (!v13)
  {
    v15 = [NSError errorWithDomain:DAErrorDomain code:71 userInfo:0];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v15];

    goto LABEL_5;
  }

  v14 = v13;
  if (CalAttachmentFileIsBinary())
  {
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:0];
    CFRelease(v14);
LABEL_5:
    v75 = objc_loadWeakRetained(&self->_account);
    dbHelper3 = [v75 dbHelper];
    v17 = objc_loadWeakRetained(&self->_account);
    accountID3 = [v17 accountID];
    [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

    return;
  }

  v19 = CalAttachmentFileCopyURL();
  attachmentURL = self->_attachmentURL;
  self->_attachmentURL = v19;

  v21 = self->_attachmentURL;
  if (!v21)
  {
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v30, v31))
    {
      attachmentUUID = self->_attachmentUUID;
      *buf = 138412290;
      v81 = attachmentUUID;
      _os_log_impl(&dword_0, v30, v31, "We were told to download the attachment with UUID %@ but that attachment doesn't have a URL. We can't do anything", buf, 0xCu);
    }

    v33 = [NSError errorWithDomain:DAErrorDomain code:72 userInfo:0];
    [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v33];

    CFRelease(v14);
    v26 = objc_loadWeakRetained(&self->_account);
    dbHelper4 = [v26 dbHelper];
    v35 = objc_loadWeakRetained(&self->_account);
    accountID4 = [v35 accountID];
    [dbHelper4 calCloseDatabaseForAccountID:accountID4 save:0];

    goto LABEL_33;
  }

  scheme = [(NSURL *)v21 scheme];
  lowercaseString = [scheme lowercaseString];
  v24 = [lowercaseString hasPrefix:@"http"];

  if (v24)
  {
    v25 = CalAttachmentFileCopyLocalURL();
    v26 = v25;
    if (v25 && [v25 isFileURL])
    {
      v27 = +[NSFileManager defaultManager];
      path = [v26 path];
      v29 = [v27 fileExistsAtPath:path];
    }

    else
    {
      v29 = 0;
    }

    v45 = CalAttachmentFileCopyExternalModTag();
    etag = self->_etag;
    self->_etag = v45;

    +[NSDate date];
    CalAttachmentFileSetDownloadStart();
    CalAttachmentFileGetDownloadTries();
    CalAttachmentFileSetDownloadTries();
    if ((v29 & 1) == 0)
    {
      v47 = self->_etag;
      self->_etag = 0;
    }

    bzero(buf, 0x401uLL);
    dbHelper4 = CalAttachmentFileCopyURLAppropriateForFile();
    CFRelease(v14);
    v48 = objc_loadWeakRetained(&self->_account);
    dbHelper5 = [v48 dbHelper];
    v50 = objc_loadWeakRetained(&self->_account);
    accountID5 = [v50 accountID];
    [dbHelper5 calCloseDatabaseForAccountID:accountID5 save:1];

    v52 = +[NSFileManager defaultManager];
    v53 = [v52 CalTemporaryDirectoryAppropriateForURL:dbHelper4];
    path2 = [v53 path];

    v55 = [path2 stringByAppendingPathComponent:@"DAAttachmentXXXXXX"];
    [v55 UTF8String];
    __strlcpy_chk();
    v56 = mkstemp(buf);
    if ((v56 & 0x80000000) != 0)
    {
      v71 = DALoggingwithCategory();
      v72 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v71, v72))
      {
        *v76 = 136315138;
        v77 = buf;
        _os_log_impl(&dword_0, v71, v72, "Couldn't create a temporary file with the format %s", v76, 0xCu);
      }

      v65 = [NSError errorWithDomain:DAErrorDomain code:73 userInfo:0];
      [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v65];
    }

    else
    {
      v57 = v56;
      v58 = [NSString stringWithUTF8String:buf];
      localFilename = self->_localFilename;
      self->_localFilename = v58;

      v60 = DALoggingwithCategory();
      v61 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v60, v61))
      {
        v62 = self->_attachmentURL;
        v63 = self->_localFilename;
        *v76 = 138412546;
        v77 = v62;
        v78 = 2112;
        v79 = v63;
        _os_log_impl(&dword_0, v60, v61, "Downloading attachment at %@ to %@", v76, 0x16u);
      }

      v64 = [NSURL fileURLWithPath:self->_localFilename];
      CalAttachmentPrepareFileForDownload();

      v65 = [[NSFileHandle alloc] initWithFileDescriptor:v57 closeOnDealloc:1];
      v66 = [[CalDAVGetToFileWithProgressTask alloc] initWithURL:self->_attachmentURL destinationFile:v65];
      v67 = objc_loadWeakRetained(&self->_account);
      principalURL = [v67 principalURL];

      if ([CalAttachmentUtils attachmentURL:self->_attachmentURL matchesServerURL:principalURL])
      {
        v69 = objc_loadWeakRetained(&self->_account);
        mainPrincipal = [v69 mainPrincipal];
        [(CalDAVGetToFileWithProgressTask *)v66 setAccountInfoProvider:mainPrincipal];
      }

      else
      {
        v73 = objc_alloc_init(MobileCalDAVGenericAccountInfoProvider);
        placeholderAccountInfoProvider = self->_placeholderAccountInfoProvider;
        self->_placeholderAccountInfoProvider = v73;

        [(CalDAVGetToFileWithProgressTask *)v66 setAccountInfoProvider:self->_placeholderAccountInfoProvider];
      }

      [(CalDAVGetToFileWithProgressTask *)v66 setDelegate:self];
      [(CalDAVGetToFileWithProgressTask *)v66 setDownloader:self];
      [(CalDAVGetToFileWithProgressTask *)v66 setPreviousETag:self->_etag];
      [(DACoreDAVTaskManager *)self->_taskManager submitIndependentTask:v66];
    }

LABEL_33:
    return;
  }

  v37 = DALoggingwithCategory();
  v38 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v37, v38))
  {
    v39 = self->_attachmentURL;
    *buf = 138412290;
    v81 = v39;
    _os_log_impl(&dword_0, v37, v38, "Refusing to download the attachment with URL %@ because it isn't http or https", buf, 0xCu);
  }

  v40 = [NSError errorWithDomain:DAErrorDomain code:72 userInfo:0];
  [(MobileCalDAVAttachmentDownloader *)self _didFinishDownloadingWithError:v40];

  v41 = objc_loadWeakRetained(&self->_account);
  dbHelper6 = [v41 dbHelper];
  v43 = objc_loadWeakRetained(&self->_account);
  accountID6 = [v43 accountID];
  [dbHelper6 calCloseDatabaseForAccountID:accountID6 save:0];

  CFRelease(v14);
}

- (void)cancelDownload
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  self->_waitingForGatekeeper = 0;
  v3 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v3 unregisterWaiterForDataclassLocks:self];

  self->_holdingGatekeeperLock = 0;
}

- (void)_didShowProgressDownloadedByteCount:(int64_t)count
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentSize = self->_attachmentSize;
    *buf = 134218240;
    countCopy = count;
    v20 = 2048;
    v21 = attachmentSize;
    _os_log_impl(&dword_0, v5, v6, "Notifying consumers of progress: %lld/%lld", buf, 0x16u);
  }

  v8 = self->_consumers;
  objc_sync_enter(v8);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_consumers;
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v13 + 1) + 8 * i) downloadProgressDownloadedByteCount:count totalByteCount:{self->_attachmentSize, v13}];
      }

      v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)_didFinishDownloadingWithError:(id)error
{
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentUUID = self->_attachmentUUID;
    v8 = &stru_28C48;
    if (errorCopy)
    {
      v9 = @" Error was: ";
    }

    else
    {
      v9 = &stru_28C48;
    }

    if (errorCopy)
    {
      v8 = [errorCopy description];
    }

    *buf = 138412802;
    v24 = attachmentUUID;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_0, v5, v6, "Done downloading attachment %@.%@%@", buf, 0x20u);
    if (errorCopy)
    {
    }
  }

  v10 = self->_consumers;
  objc_sync_enter(v10);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_consumers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * i) downloadFinishedError:errorCopy];
      }

      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7600;
  block[3] = &unk_28790;
  block[4] = self;
  dispatch_async(v15, block);

  WeakRetained = objc_loadWeakRetained(&self->_account);
  [WeakRetained _attachmentDownloadDidFinish:self];

  objc_sync_exit(v10);
}

@end