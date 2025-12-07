@interface MFMailDropAttachmentDataProvider
+ (OS_os_log)log;
- (MFMailDropAttachmentDataProvider)initWithLibrary:(id)library;
- (id)_defaultDownloadSessionForAttachment:(id)attachment;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
@end

@implementation MFMailDropAttachmentDataProvider

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MFMailDropAttachmentDataProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_14 != -1)
  {
    dispatch_once(&log_onceToken_14, block);
  }

  v2 = log_log_14;

  return v2;
}

void __39__MFMailDropAttachmentDataProvider_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_14;
  log_log_14 = v1;
}

- (MFMailDropAttachmentDataProvider)initWithLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = MFMailDropAttachmentDataProvider;
  v5 = [(MFAttachmentLibraryDataProvider *)&v9 initWithLibrary:libraryCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requests = v5->_requests;
    v5->_requests = v6;
  }

  return v5;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v53[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  completionCopy = completion;
  v12 = objc_alloc(MEMORY[0x1E69AD750]);
  v53[0] = consumerCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  v41 = [v12 initWithConsumers:v13 expectedSize:{objc_msgSend(attachmentCopy, "encodedFileSize")}];

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke;
  v47[3] = &unk_1E7AA4D60;
  v14 = progressCopy;
  v48 = v14;
  [v41 setProgressBlock:v47];
  if ([attachmentCopy isDataAvailableLocally])
  {
    v15 = MEMORY[0x1E695DEF0];
    path = [attachmentCopy path];
    v46 = 0;
    directUrl = [v15 dataWithContentsOfFile:path options:1 error:&v46];
    v18 = v46;

    v19 = directUrl != 0;
    if (directUrl)
    {
      [v41 appendData:directUrl];
      bOOLValue = 0;
      v19 = 1;
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    mailDropMetadata = [attachmentCopy mailDropMetadata];
    directUrl = [mailDropMetadata directUrl];

    if (directUrl)
    {
      v37 = [(MFMailDropAttachmentDataProvider *)self _defaultDownloadSessionForAttachment:attachmentCopy];
      v22 = +[MFMailDropAttachmentDataProvider log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v50 = attachmentCopy;
        v51 = 2112;
        v52 = v37;
        _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Downloading Mail Drop attachment: %@ using URL session: %@", buf, 0x16u);
      }

      promise = [MEMORY[0x1E699B868] promise];
      [attachmentCopy setMetadataValue:? forKey:?];
      [attachmentCopy setMetadataValue:v41 forKey:@"primaryConsumer"];
      mailDropMetadata2 = [attachmentCopy mailDropMetadata];
      uUID = [mailDropMetadata2 UUID];

      v24 = [[_MFAttachmentActiveRequest alloc] initWithAttachment:attachmentCopy];
      v25 = self->_requests;
      objc_sync_enter(v25);
      v36 = v24;
      [(NSMutableDictionary *)self->_requests setObject:v24 forKeyedSubscript:uUID];
      objc_sync_exit(v25);

      downloadProgress = [(_MFAttachmentActiveRequest *)v24 downloadProgress];
      [v14 addChild:downloadProgress withPendingUnitCount:{objc_msgSend(v14, "totalUnitCount")}];

      v34 = [v37 downloadTaskWithURL:directUrl];
      [v34 setTaskDescription:uUID];
      objc_initWeak(buf, attachmentCopy);
      v27 = +[MFActivityMonitor currentMonitor];
      v28 = MEMORY[0x1E699B7F8];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke_21;
      v43[3] = &unk_1E7AA52F0;
      objc_copyWeak(&v45, buf);
      v29 = v34;
      v44 = v29;
      v30 = [v28 tokenWithCancelationBlock:v43];
      [v27 addCancelable:v30];

      [v29 resume];
      future = [promise future];
      v42 = 0;
      v32 = [future result:&v42];
      v18 = v42;
      bOOLValue = [v32 BOOLValue];

      [attachmentCopy setMetadataValue:0 forKey:@"downloadPromise"];
      [attachmentCopy setMetadataValue:0 forKey:@"primaryConsumer"];
      v33 = self->_requests;
      objc_sync_enter(v33);
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:uUID];
      objc_sync_exit(v33);

      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);

      v19 = bOOLValue;
    }

    else
    {
      v18 = 0;
      bOOLValue = 0;
      v19 = 0;
    }
  }

  [v41 done];
  [consumerCopy done];
  completionCopy[2](completionCopy, v19, v18, bOOLValue);
}

uint64_t __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setTotalUnitCount:a4];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:a2];
}

void __88__MFMailDropAttachmentDataProvider_fetchDataForAttachment_consumer_progress_completion___block_invoke_21(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[MFMailDropAttachmentDataProvider log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Canceling download for Mail Drop attachment %@", &v4, 0xCu);
  }

  [*(a1 + 32) cancel];
}

- (id)_defaultDownloadSessionForAttachment:(id)attachment
{
  mailDropMetadata = [attachment mailDropMetadata];
  fileSize = [mailDropMetadata fileSize];

  if (fileSize >> 22 > 0x18)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke_2;
    v9[3] = &unk_1E7AA25C0;
    v9[4] = self;
    if (_defaultDownloadSessionForAttachment__wifiOnlySessionOnceToken != -1)
    {
      dispatch_once(&_defaultDownloadSessionForAttachment__wifiOnlySessionOnceToken, v9);
    }

    v6 = &_defaultDownloadSessionForAttachment__wifiOnlySession;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke;
    block[3] = &unk_1E7AA25C0;
    block[4] = self;
    if (_defaultDownloadSessionForAttachment__defaultSessionOnceToken != -1)
    {
      dispatch_once(&_defaultDownloadSessionForAttachment__defaultSessionOnceToken, block);
    }

    v6 = &_defaultDownloadSessionForAttachment__defaultSession;
  }

  v7 = *v6;

  return v7;
}

void __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke()
{
  v0 = MEMORY[0x1E695AC78];
  v3 = downloadConfiguration(@"com.apple.mobilemail.MailDropDownload", 1);
  v1 = [v0 sessionWithConfiguration:? delegate:? delegateQueue:?];
  v2 = _defaultDownloadSessionForAttachment__defaultSession;
  _defaultDownloadSessionForAttachment__defaultSession = v1;
}

void __73__MFMailDropAttachmentDataProvider__defaultDownloadSessionForAttachment___block_invoke_2()
{
  v0 = MEMORY[0x1E695AC78];
  v3 = downloadConfiguration(@"com.apple.mobilemail.MailDropDownloadWIFIOnly", 0);
  v1 = [v0 sessionWithConfiguration:? delegate:? delegateQueue:?];
  v2 = _defaultDownloadSessionForAttachment__wifiOnlySession;
  _defaultDownloadSessionForAttachment__wifiOnlySession = v1;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = self->_requests;
  objc_sync_enter(v8);
  requests = self->_requests;
  taskDescription = [taskCopy taskDescription];
  v11 = [(NSMutableDictionary *)requests objectForKeyedSubscript:taskDescription];

  objc_sync_exit(v8);
  attachment = [v11 attachment];
  v13 = [attachment metadataValueForKey:@"downloadPromise"];

  if (errorCopy)
  {
    [v13 finishWithError:errorCopy];
  }

  else
  {
    v14 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:0];
    [v13 finishWithError:v14];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  v8 = self->_requests;
  objc_sync_enter(v8);
  requests = self->_requests;
  taskDescription = [taskCopy taskDescription];
  v11 = [(NSMutableDictionary *)requests objectForKeyedSubscript:taskDescription];

  objc_sync_exit(v8);
  attachment = [v11 attachment];
  v13 = [attachment metadataValueForKey:@"primaryConsumer"];
  v14 = MEMORY[0x1E695DEF0];
  resourceSpecifier = [lCopy resourceSpecifier];
  v16 = [v14 dataWithContentsOfFile:resourceSpecifier options:1 error:0];

  if (v16)
  {
    [v13 appendData:v16];
  }

  v17 = [attachment metadataValueForKey:@"downloadPromise"];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:v16 != 0];
  [v17 finishWithResult:v18];
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  taskCopy = task;
  v9 = self->_requests;
  objc_sync_enter(v9);
  requests = self->_requests;
  taskDescription = [taskCopy taskDescription];
  v12 = [(NSMutableDictionary *)requests objectForKeyedSubscript:taskDescription];

  objc_sync_exit(v9);
  downloadProgress = [v12 downloadProgress];
  [downloadProgress setCompletedUnitCount:written];
}

@end