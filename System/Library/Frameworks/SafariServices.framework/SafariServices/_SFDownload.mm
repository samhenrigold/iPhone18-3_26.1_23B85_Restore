@interface _SFDownload
+ (id)_sharedQueue;
+ (id)downloadDestinationPathWithFilename:(id)filename;
+ (id)provisionalDownloadWithMIMEType:(id)type request:(id)request response:(id)response filename:(id)filename uti:(id)uti userInitiatedAction:(id)action;
- (BOOL)canReveal;
- (BOOL)createFluidProgressState;
- (NSDictionary)dictionaryRepresentation;
- (NSString)filename;
- (NSString)filenameWithoutExtension;
- (WBSFluidProgressController)fluidProgressController;
- (WKWebView)navigatedWebView;
- (_SFDownload)init;
- (_SFDownload)initWithDictionaryRepresentation:(id)representation didUpdateRepresentation:(BOOL *)updateRepresentation;
- (_SFDownloadDelegate)delegate;
- (_SFDownloadPlaceholderImporter)placeholderImporter;
- (double)estimatedProgress;
- (double)progress;
- (id)_createResumeData;
- (id)completedFileURL:(BOOL *)l;
- (int64_t)dataOwner;
- (int64_t)fileType;
- (void)_cancelReportUpdatedProgressTimer;
- (void)_continueAfterDecidingFileDownloadPath:(id)path;
- (void)_continueAfterDownloadConfirmation:(BOOL)confirmation destinationCompletionHandler:(id)handler;
- (void)_createResumeData;
- (void)_didImportFileAtURL:(id)l completionHandler:(id)handler;
- (void)_didImportPlaceholderAtURL:(id)l completionHandler:(id)handler;
- (void)_didUpdateBytesLoaded;
- (void)_importCompleteDownloadIfNeeded;
- (void)_importPlaceholderIfNeeded:(id)needed;
- (void)_notifyDelegateOfFinishedDownload;
- (void)_reportUpdatedProgressNow;
- (void)_reportUpdatedProgressSoon;
- (void)_validateSandboxAccessToURL:(id)l;
- (void)cancel;
- (void)clearFluidProgressState;
- (void)dealloc;
- (void)dictionaryRepresentation;
- (void)download:(id)download decideDestinationWithSuggestedFilename:(id)filename completionHandler:(id)handler;
- (void)download:(id)download decidePlaceholderPolicy:(id)policy;
- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data;
- (void)download:(id)download didReceiveFinalURL:(id)l;
- (void)download:(id)download didReceivePlaceholderURL:(id)l completionHandler:(id)handler;
- (void)download:(id)download didReceiveResponse:(id)response;
- (void)download:(id)download didWriteTotalBytes:(unint64_t)bytes totalBytesExpectedToWrite:(unint64_t)write;
- (void)downloadDidFinish:(id)finish;
- (void)downloadDidStart:(id)start;
- (void)downloadFileContentsDidChange:(id)change;
- (void)downloadFileDidChangeURL:(id)l;
- (void)downloadFileWillBeDeleted:(id)deleted;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeDataAndPlaceholderFromDisk;
- (void)removeFromDisk;
- (void)resume;
- (void)resumeInWebView:(id)view;
- (void)reveal;
- (void)setWKDownload:(id)download;
@end

@implementation _SFDownload

- (_SFDownload)init
{
  v8.receiver = self;
  v8.super_class = _SFDownload;
  v2 = [(_SFDownload *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_bytesExpected = -1;
    date = [MEMORY[0x1E695DF00] date];
    dateAdded = v3->_dateAdded;
    v3->_dateAdded = date;

    v6 = v3;
  }

  return v3;
}

+ (id)provisionalDownloadWithMIMEType:(id)type request:(id)request response:(id)response filename:(id)filename uti:(id)uti userInitiatedAction:(id)action
{
  typeCopy = type;
  obj = request;
  requestCopy = request;
  responseCopy = response;
  filenameCopy = filename;
  utiCopy = uti;
  actionCopy = action;
  actionCopy2 = action;
  v19 = objc_alloc_init(self);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v21 = *(v19 + 21);
  *(v19 + 21) = uUID;

  if (filenameCopy)
  {
    v22 = filenameCopy;
    v23 = (v19 + 96);
    suggestedFilename = *(v19 + 12);
    *(v19 + 12) = v22;
  }

  else
  {
    suggestedFilename = [responseCopy suggestedFilename];
    safari_filenameByFixingIllegalCharacters = [suggestedFilename safari_filenameByFixingIllegalCharacters];
    v23 = (v19 + 96);
    v26 = *(v19 + 12);
    *(v19 + 12) = safari_filenameByFixingIllegalCharacters;
  }

  v27 = *v23;
  if (*v23)
  {
    v28 = utiCopy;
    v29 = typeCopy;
    v30 = responseCopy;
    responseCopy2 = response;
    v32 = MEMORY[0x1E69B1B68];
    [requestCopy URL];
    v33 = v44 = filenameCopy;
    v34 = v32;
    response = responseCopy2;
    responseCopy = v30;
    typeCopy = v29;
    utiCopy = v28;
    v35 = [v34 properFilenameForOriginalFilename:v27 typeIdentifier:v28 mimeType:typeCopy sourceURL:v33];
    v36 = *v23;
    *v23 = v35;

    filenameCopy = v44;
  }

  objc_storeStrong(v19 + 13, obj);
  v37 = [utiCopy copy];
  v38 = *(v19 + 18);
  *(v19 + 18) = v37;

  v39 = [typeCopy copy];
  v40 = *(v19 + 19);
  *(v19 + 19) = v39;

  *(v19 + 5) = _SFDownloadingFileTypeFromUTIAndMIMEType(utiCopy, typeCopy);
  v41 = [requestCopy URL];
  v42 = *(v19 + 15);
  *(v19 + 15) = v41;

  objc_storeStrong(v19 + 17, actionCopy);
  if (responseCopy)
  {
    objc_storeStrong(v19 + 20, response);
    *(v19 + 22) = [responseCopy expectedContentLength];
  }

  return v19;
}

+ (id)_sharedQueue
{
  if (_sharedQueue_onceToken != -1)
  {
    +[_SFDownload _sharedQueue];
  }

  v3 = _sharedQueue_queue;

  return v3;
}

- (void)dealloc
{
  [(SFDownloadFile *)self->_completedFile invalidate];
  [(SFDownloadFile *)self->_placeholderFile invalidate];
  [(_SFDownload *)self setWKDownload:0];
  v3.receiver = self;
  v3.super_class = _SFDownload;
  [(_SFDownload *)&v3 dealloc];
}

- (void)_cancelReportUpdatedProgressTimer
{
  [(NSTimer *)self->_reportUpdatedProgressTimer invalidate];
  reportUpdatedProgressTimer = self->_reportUpdatedProgressTimer;
  self->_reportUpdatedProgressTimer = 0;
}

- (void)_reportUpdatedProgressSoon
{
  if (!self->_reportUpdatedProgressTimer)
  {
    v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__reportUpdatedProgressTimerFired_ selector:0 userInfo:0 repeats:0.2];
    reportUpdatedProgressTimer = self->_reportUpdatedProgressTimer;
    self->_reportUpdatedProgressTimer = v4;

    [(NSTimer *)self->_reportUpdatedProgressTimer setTolerance:0.2];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_reportUpdatedProgressTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)_reportUpdatedProgressNow
{
  [(_SFDownload *)self _cancelReportUpdatedProgressTimer];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_SFDownloadDidChangeNotification" object:self];
}

- (double)progress
{
  result = 1.0;
  if (self->_state != 4)
  {
    bytesExpected = self->_bytesExpected;
    if (bytesExpected < 1)
    {
      return 0.0;
    }

    else
    {
      return self->_bytesLoaded / bytesExpected;
    }
  }

  return result;
}

- (void)removeFromDisk
{
  stringByDeletingLastPathComponent = [(NSString *)self->_fileDownloadPath stringByDeletingLastPathComponent];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *MEMORY[0x1E69DDBE8];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __29___SFDownload_removeFromDisk__block_invoke;
  v14[3] = &unk_1E848F710;
  v14[4] = &v15;
  v5 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"com.apple.mobilesafari.RemoveDownload" expirationHandler:v14];
  v16[3] = v5;
  v6 = +[_SFDownload _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___SFDownload_removeFromDisk__block_invoke_2;
  block[3] = &unk_1E8496510;
  v10 = stringByDeletingLastPathComponent;
  selfCopy = self;
  v12 = mEMORY[0x1E69DC668];
  v13 = &v15;
  v7 = mEMORY[0x1E69DC668];
  v8 = stringByDeletingLastPathComponent;
  dispatch_async(v6, block);

  _Block_object_dispose(&v15, 8);
}

- (void)removeDataAndPlaceholderFromDisk
{
  [(_SFDownload *)self removeFromDisk];
  v3 = [(SFDownloadFile *)self->_placeholderFile URL];
  if (v3)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = *MEMORY[0x1E69DDBE8];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke;
    v14[3] = &unk_1E848F710;
    v14[4] = &v15;
    v5 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"com.apple.mobilesafari.RemoveDownloadPlaceholder" expirationHandler:v14];
    v16[3] = v5;
    v6 = +[_SFDownload _sharedQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47___SFDownload_removeDataAndPlaceholderFromDisk__block_invoke_2;
    block[3] = &unk_1E8496510;
    v10 = v3;
    selfCopy = self;
    v7 = mEMORY[0x1E69DC668];
    v12 = v7;
    v13 = &v15;
    dispatch_async(v6, block);

    [(SFDownloadFile *)self->_placeholderFile invalidate];
    placeholderFile = self->_placeholderFile;
    self->_placeholderFile = 0;

    _Block_object_dispose(&v15, 8);
  }
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXDownloads(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "%{public}@: cancellation requested", buf, 0xCu);
  }

  if (!self->_wasCanceled)
  {
    download = self->_download;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __21___SFDownload_cancel__block_invoke;
    v5[3] = &unk_1E8496538;
    v5[4] = self;
    [(WKDownload *)download cancel:v5];
  }

  self->_wasCanceled = 1;
  [(_SFDownload *)self _reportUpdatedProgressNow];
}

- (int64_t)fileType
{
  result = self->_cachedFileType;
  if (!result)
  {
    uti = self->_uti;
    mIMEType = [(NSURLResponse *)self->_response MIMEType];
    self->_cachedFileType = _SFDownloadingFileTypeFromUTIAndMIMEType(uti, mIMEType);

    return self->_cachedFileType;
  }

  return result;
}

- (void)setWKDownload:(id)download
{
  downloadCopy = download;
  v5 = self->_download;
  if ((WBSIsEqual() & 1) == 0)
  {
    progress = [(WKDownload *)v5 progress];
    [progress removeObserver:self forKeyPath:@"completedUnitCount" context:0];

    objc_storeStrong(&self->_download, download);
    progress2 = [downloadCopy progress];
    [progress2 addObserver:self forKeyPath:@"completedUnitCount" options:1 context:0];
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37[0] = @"BytesLoaded";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bytesLoaded];
  v38[0] = v3;
  v37[1] = @"BytesExpected";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_bytesExpected];
  v38[1] = v4;
  v37[2] = @"State";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v38[2] = v5;
  v37[3] = @"Identifier";
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v38[3] = uUIDString;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v8 = [v7 mutableCopy];

  sourceURL = self->_sourceURL;
  if (sourceURL)
  {
    safari_originalDataAsString = [(NSURL *)sourceURL safari_originalDataAsString];
    [v8 setObject:safari_originalDataAsString forKeyedSubscript:@"SourceURL"];
  }

  uti = self->_uti;
  if (uti)
  {
    [v8 setObject:uti forKeyedSubscript:@"UTI"];
  }

  mimeType = self->_mimeType;
  if (mimeType)
  {
    [v8 setObject:mimeType forKeyedSubscript:@"MIMEType"];
  }

  if (self->_fileDownloadPath)
  {
    v13 = _SFSafariContainerURL();
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_fileDownloadPath isDirectory:0];
    v15 = [v13 safari_relativePathToURL:v14];
    [v8 setObject:v15 forKeyedSubscript:@"Path"];
  }

  resumeData = self->_resumeData;
  if (resumeData)
  {
    [v8 setObject:resumeData forKeyedSubscript:@"ResumeData"];
  }

  bookmarkData = [(SFDownloadFile *)self->_placeholderFile bookmarkData];
  if (bookmarkData)
  {
    [v8 setObject:bookmarkData forKeyedSubscript:@"PlaceholderBookmarkData"];
  }

  bookmarkData2 = [(SFDownloadFile *)self->_completedFile bookmarkData];
  if (bookmarkData2)
  {
    [v8 setObject:bookmarkData2 forKeyedSubscript:@"BookmarkData"];
  }

  dateAdded = self->_dateAdded;
  if (dateAdded)
  {
    [v8 setObject:dateAdded forKeyedSubscript:@"DateAdded"];
  }

  dateFinished = self->_dateFinished;
  if (dateFinished)
  {
    [v8 setObject:dateFinished forKeyedSubscript:@"DateFinished"];
  }

  if (self->_explicitlySaved)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ExplicitlySaved"];
  }

  request = self->_request;
  if (request)
  {
    v36 = 0;
    v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:request requiringSecureCoding:1 error:&v36];
    v23 = v36;
    v25 = v23;
    if (v22)
    {
      [v8 setObject:v22 forKeyedSubscript:@"Request"];
    }

    else
    {
      v26 = WBS_LOG_CHANNEL_PREFIXDownloads(v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(_SFDownload *)v26 dictionaryRepresentation];
      }
    }
  }

  response = self->_response;
  if (response)
  {
    v35 = 0;
    v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:response requiringSecureCoding:1 error:&v35];
    v29 = v35;
    v31 = v29;
    if (v28)
    {
      [v8 setObject:v28 forKeyedSubscript:@"Response"];
    }

    else
    {
      v32 = WBS_LOG_CHANNEL_PREFIXDownloads(v29, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(_SFDownload *)v32 dictionaryRepresentation];
      }
    }
  }

  v33 = [v8 copy];

  return v33;
}

- (_SFDownload)initWithDictionaryRepresentation:(id)representation didUpdateRepresentation:(BOOL *)updateRepresentation
{
  representationCopy = representation;
  v7 = [(_SFDownload *)self init];
  if (v7)
  {
    v8 = MEMORY[0x1E695DFF8];
    v9 = [representationCopy safari_stringForKey:@"SourceURL"];
    v10 = [v8 safari_URLWithDataAsString:v9];
    sourceURL = v7->_sourceURL;
    v7->_sourceURL = v10;

    v12 = [representationCopy safari_numberForKey:@"BytesLoaded"];
    v7->_bytesLoaded = [v12 unsignedIntegerValue];

    v13 = [representationCopy safari_numberForKey:@"BytesExpected"];
    v7->_bytesExpected = [v13 longLongValue];

    v14 = [representationCopy safari_stringForKey:@"UTI"];
    uti = v7->_uti;
    v7->_uti = v14;

    v16 = [representationCopy safari_stringForKey:@"MIMEType"];
    mimeType = v7->_mimeType;
    v7->_mimeType = v16;

    v18 = [representationCopy safari_numberForKey:@"State"];
    v7->_state = [v18 integerValue];

    if (v7->_state == 2)
    {
      v7->_state = 3;
    }

    v19 = [representationCopy safari_dataForKey:@"ResumeData"];
    resumeData = v7->_resumeData;
    v7->_resumeData = v19;

    if (![(NSData *)v7->_resumeData length])
    {
      v21 = v7->_resumeData;
      v7->_resumeData = 0;
    }

    v22 = [representationCopy safari_dataForKey:@"PlaceholderBookmarkData"];
    v23 = [representationCopy safari_dataForKey:@"BookmarkData"];
    v7->_explicitlySaved = [representationCopy safari_BOOLForKey:@"ExplicitlySaved"];
    v24 = [representationCopy safari_dataForKey:@"Request"];
    if (v24)
    {
      v77 = 0;
      v25 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:&v77];
      v26 = v77;
      request = v7->_request;
      v7->_request = v25;

      if (!v7->_request)
      {
        v30 = WBS_LOG_CHANNEL_PREFIXDownloads(v28, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [_SFDownload initWithDictionaryRepresentation:v30 didUpdateRepresentation:?];
        }
      }
    }

    v31 = [representationCopy safari_dataForKey:@"Response"];
    if (v31)
    {
      v76 = 0;
      v32 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v31 error:&v76];
      v33 = v76;
      response = v7->_response;
      v7->_response = v32;

      if (!v7->_response)
      {
        v37 = WBS_LOG_CHANNEL_PREFIXDownloads(v35, v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [_SFDownload initWithDictionaryRepresentation:v37 didUpdateRepresentation:?];
        }
      }
    }

    v38 = [representationCopy safari_stringForKey:@"Identifier"];
    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v38];
      v40 = v39;
      if (v39)
      {
        uUID = v39;
      }

      else
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
      }

      identifier = v7->_identifier;
      v7->_identifier = uUID;
    }

    else
    {
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
      v40 = v7->_identifier;
      v7->_identifier = uUID2;
    }

    v73 = v31;

    if (v23)
    {
      v44 = [[SFDownloadFile alloc] initWithBookmarkData:v23, v31];
      completedFile = v7->_completedFile;
      v7->_completedFile = v44;

      [(SFDownloadFile *)v7->_completedFile setDelegate:v7];
      if (updateRepresentation)
      {
        if (!v7->_completedFile)
        {
          *updateRepresentation = 1;
        }
      }
    }

    v46 = v24;
    v75 = v23;
    if (v22)
    {
      v47 = [[SFDownloadFile alloc] initWithBookmarkData:v22];
      placeholderFile = v7->_placeholderFile;
      v7->_placeholderFile = v47;

      [(SFDownloadFile *)v7->_placeholderFile setDelegate:v7];
      if (updateRepresentation)
      {
        if (!v7->_placeholderFile)
        {
          *updateRepresentation = 1;
        }
      }
    }

    updateRepresentationCopy = updateRepresentation;
    v50 = v22;
    v51 = [representationCopy safari_stringForKey:{@"Path", v73}];
    p_fileDownloadPath = &v7->_fileDownloadPath;
    fileDownloadPath = v7->_fileDownloadPath;
    v7->_fileDownloadPath = v51;

    v54 = v7->_fileDownloadPath;
    if (v54)
    {
      v55 = MEMORY[0x1E695DFF8];
      v56 = _SFSafariContainerURL();
      v57 = [v55 fileURLWithPath:v54 relativeToURL:v56];
      path = [v57 path];
      v59 = *p_fileDownloadPath;
      *p_fileDownloadPath = path;
    }

    if (v7->_state == 1)
    {
      v7->_state = 3;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v61 = [defaultManager attributesOfItemAtPath:v7->_fileDownloadPath error:0];
      v7->_bytesLoaded = [v61 fileSize];

      v64 = WBS_LOG_CHANNEL_PREFIXDownloads(v62, v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [_SFDownload initWithDictionaryRepresentation:v64 didUpdateRepresentation:?];
      }
    }

    v65 = [representationCopy safari_dateForKey:@"DateFinished"];
    dateFinished = v7->_dateFinished;
    v7->_dateFinished = v65;

    if (!v7->_dateFinished)
    {
      date = [MEMORY[0x1E695DF00] date];
      v68 = v7->_dateFinished;
      v7->_dateFinished = date;

      if (updateRepresentationCopy)
      {
        *updateRepresentationCopy = 1;
      }
    }

    v69 = [representationCopy safari_dateForKey:@"DateAdded"];
    dateAdded = v7->_dateAdded;
    v7->_dateAdded = v69;

    if (!v7->_dateAdded)
    {
      objc_storeStrong(&v7->_dateAdded, v7->_dateFinished);
      if (updateRepresentationCopy)
      {
        *updateRepresentationCopy = 1;
      }
    }

    v71 = v7;
  }

  return v7;
}

- (NSString)filename
{
  v3 = [(SFDownloadFile *)self->_completedFile URL];
  v4 = v3;
  if (v3)
  {
    path = [v3 path];
    lastPathComponent = [path lastPathComponent];
  }

  else
  {
    fileDownloadPath = self->_fileDownloadPath;
    if (fileDownloadPath)
    {
      lastPathComponent2 = [(NSString *)fileDownloadPath lastPathComponent];
    }

    else
    {
      suggestedFilename = self->_suggestedFilename;
      if (suggestedFilename)
      {
        lastPathComponent2 = suggestedFilename;
      }

      else
      {
        lastPathComponent2 = [(NSURL *)self->_sourceURL _webkit_suggestedFilenameWithMIMEType:0];
      }
    }

    lastPathComponent = lastPathComponent2;
  }

  return lastPathComponent;
}

- (NSString)filenameWithoutExtension
{
  filename = [(_SFDownload *)self filename];
  stringByDeletingPathExtension = [filename stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (id)completedFileURL:(BOOL *)l
{
  if (self->_state != 4)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = [(SFDownloadFile *)self->_completedFile URL];
  v6 = v5;
  if (v5)
  {
    if (l)
    {
      *l = 1;
    }

    v7 = v5;
  }

  else
  {
    fileDownloadPath = self->_fileDownloadPath;
    if (!fileDownloadPath)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if (l)
    {
      *l = 0;
      fileDownloadPath = self->_fileDownloadPath;
    }

    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:fileDownloadPath isDirectory:0];
  }

  v8 = v7;
LABEL_12:

LABEL_13:

  return v8;
}

- (int64_t)dataOwner
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  safari_URLByNormalizingBlobURL = [(NSURL *)self->_sourceURL safari_URLByNormalizingBlobURL];
  if ([mEMORY[0x1E69ADFB8] isURLManaged:safari_URLByNormalizingBlobURL])
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (void)_validateSandboxAccessToURL:(id)l
{
  lCopy = l;
  getpid();
  [lCopy fileSystemRepresentation];
  v4 = sandbox_check();
  if (v4 == -1)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXDownloads(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(_SFDownload *)v7 _validateSandboxAccessToURL:lCopy];
    }
  }

  else if (v4 == 1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [_SFDownload _validateSandboxAccessToURL:];
    }
  }
}

- (void)resume
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingWebView);
  if (!WeakRetained)
  {
    v4 = [MEMORY[0x1E69853B8] safari_webViewForDownloadsForProfileWithIdentifier:*MEMORY[0x1E69C8B58]];
    webViewForResuming = self->_webViewForResuming;
    self->_webViewForResuming = v4;

    WeakRetained = self->_webViewForResuming;
  }

  v6 = WeakRetained;
  [(_SFDownload *)self resumeInWebView:WeakRetained];
}

- (void)resumeInWebView:(id)view
{
  viewCopy = view;
  resumeData = self->_resumeData;
  if (resumeData)
  {
    _createResumeData = resumeData;
  }

  else
  {
    _createResumeData = [(_SFDownload *)self _createResumeData];
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __31___SFDownload_resumeInWebView___block_invoke;
  v16 = &unk_1E8496560;
  selfCopy = self;
  v7 = _createResumeData;
  v18 = v7;
  v8 = _Block_copy(&v13);
  if (v7)
  {
    [viewCopy resumeDownloadFromResumeData:v7 completionHandler:{v8, v13, v14, v15, v16, selfCopy}];
  }

  else
  {
    v9 = MEMORY[0x1E695AC68];
    v10 = [(NSURLRequest *)self->_request URL:v13];
    sourceURL = v10;
    if (!v10)
    {
      sourceURL = self->_sourceURL;
    }

    v12 = [v9 safari_nonAppInitiatedRequestWithURL:sourceURL];

    [viewCopy startDownloadUsingRequest:v12 completionHandler:v8];
  }
}

- (void)_importPlaceholderIfNeeded:(id)needed
{
  v31 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v6 = neededCopy;
  if (!self->_placeholderFile)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_loadWeakRetained(&self->_placeholderImporter);
    v11 = v9;
    if (v9)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXDownloads(v9, v10);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v13)
      {
        [_SFDownload _importPlaceholderIfNeeded:];
      }
    }

    else
    {
      v13 = objc_opt_respondsToSelector();
      if ((v13 & 1) == 0 || (v13 = [WeakRetained downloadShouldImportPlaceholderToDownloadsFolder:self], (v13 & 1) == 0))
      {
        v22 = WBS_LOG_CHANNEL_PREFIXDownloads(v13, v14);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy2 = self;
          _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: not importing placeholder to the Downloads folder because the delegate says not to", buf, 0xCu);
        }

        goto LABEL_16;
      }
    }

    v15 = WBS_LOG_CHANNEL_PREFIXDownloads(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: starting to import placeholder to the Downloads folder", buf, 0xCu);
    }

    if (v11)
    {
      data = [MEMORY[0x1E695DEF0] data];
      v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_fileDownloadPath isDirectory:0];
      v18 = [v17 URLByAppendingPathExtension:@"download"];

      v19 = +[_SFDownload _sharedQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42___SFDownload__importPlaceholderIfNeeded___block_invoke;
      block[3] = &unk_1E84965D8;
      v24 = data;
      v25 = v18;
      selfCopy3 = self;
      v28 = v6;
      v27 = v11;
      v20 = v18;
      v21 = data;
      dispatch_async(v19, block);

LABEL_17:
      goto LABEL_18;
    }

LABEL_16:
    v6[2](v6, 1);
    goto LABEL_17;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXDownloads(neededCopy, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_SFDownload _importPlaceholderIfNeeded:];
  }

  v6[2](v6, 1);
LABEL_18:
}

- (void)_didImportPlaceholderAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60___SFDownload__didImportPlaceholderAtURL_completionHandler___block_invoke;
  v15[3] = &unk_1E8494780;
  v17 = &v18;
  v8 = lCopy;
  v16 = v8;
  v9 = [v8 safari_accessingSecurityScopedResource:v15];
  if (v19[5])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___SFDownload__didImportPlaceholderAtURL_completionHandler___block_invoke_143;
    block[3] = &unk_1E8496600;
    block[4] = self;
    v14 = &v18;
    v13 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXDownloads(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SFDownload _didImportPlaceholderAtURL:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_importCompleteDownloadIfNeeded
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [(SFDownloadFile *)self->_placeholderFile URL];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_fileDownloadPath isDirectory:0];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke;
    v19[3] = &unk_1E84902F0;
    v19[4] = self;
    v19[5] = &v20;
    v7 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"com.apple.SafariServices.DownloadImportTask" expirationHandler:v19];

    v21[3] = v7;
    v10 = WBS_LOG_CHANNEL_PREFIXDownloads(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v21[3];
      *buf = 138543618;
      selfCopy = self;
      v26 = 1024;
      v27 = v11;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: starting background task %u to import completed file", buf, 0x12u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46___SFDownload__importCompleteDownloadIfNeeded__block_invoke_147;
    v14[3] = &unk_1E8496510;
    v15 = v4;
    v12 = v5;
    v16 = v12;
    selfCopy2 = self;
    v18 = &v20;
    [v15 safari_accessingSecurityScopedResource:v14];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXDownloads(0, v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_SFDownload _importCompleteDownloadIfNeeded];
    }

    [(_SFDownload *)self _notifyDelegateOfFinishedDownload];
  }
}

- (void)_didImportFileAtURL:(id)l completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (lCopy)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__16;
    v35 = __Block_byref_object_dispose__16;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__16;
    v29 = __Block_byref_object_dispose__16;
    v30 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_2;
    v20[3] = &unk_1E8496650;
    v9 = lCopy;
    v21 = v9;
    selfCopy = self;
    v23 = &v25;
    v24 = &v31;
    v10 = [v9 safari_accessingSecurityScopedResource:v20];
    if (v26[5])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_2_150;
      block[3] = &unk_1E84949D0;
      block[4] = self;
      v16 = v9;
      v17 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v12 = &v16;
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXDownloads(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        safari_privacyPreservingDescription = [v32[5] safari_privacyPreservingDescription];
        [(_SFDownload *)self _didImportFileAtURL:safari_privacyPreservingDescription completionHandler:buf, v13];
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke_149;
      v18[3] = &unk_1E8490818;
      v18[4] = self;
      v12 = &v19;
      v19 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], v18);
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __53___SFDownload__didImportFileAtURL_completionHandler___block_invoke;
    v37[3] = &unk_1E8490818;
    v37[4] = self;
    v38 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v37);
  }
}

- (BOOL)canReveal
{
  v3 = [(SFDownloadFile *)self->_completedFile URL];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SFDownloadFile *)self->_placeholderFile URL];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)reveal
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(SFDownloadFile *)self->_completedFile URL];
  if (v3 || ([(SFDownloadFile *)self->_placeholderFile URL], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v3 resolvingAgainstBaseURL:0];
    [v5 setScheme:@"shareddocuments"];
    v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"reveal" value:@"YES"];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 setQueryItems:v7];

    v8 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.DocumentsApp"];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v10 = [v5 URL];
    [defaultWorkspace _sf_openURL:v10 inApplication:v8 withOptions:0 completionHandler:0];
  }
}

- (id)_createResumeData
{
  p_fileDownloadPath = &self->_fileDownloadPath;
  if (self->_fileDownloadPath)
  {
    v4 = self->_request;
    v5 = [(NSURLRequest *)v4 URL];
    safari_isHTTPFamilyURL = [v5 safari_isHTTPFamilyURL];

    if (safari_isHTTPFamilyURL && (-[NSURLRequest HTTPMethod](v4, "HTTPMethod"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 safari_isCaseInsensitiveEqualToString:@"GET"], v7, v8))
    {
      allHeaderFields = [(NSURLResponse *)self->_response allHeaderFields];
      v10 = [allHeaderFields safari_stringForKey:@"Etag"];
      v11 = [allHeaderFields safari_stringForKey:@"Last-Modified"];
      if (v11 | v10)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v13 = *p_fileDownloadPath;
        v32 = 0;
        v14 = [defaultManager attributesOfItemAtPath:v13 error:&v32];
        v15 = v32;
        v16 = [v14 safari_numberForKey:*MEMORY[0x1E696A3B8]];

        v19 = WBS_LOG_CHANNEL_PREFIXDownloads(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(_SFDownload *)p_fileDownloadPath _createResumeData];
        }

        if ([v16 unsignedIntegerValue])
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v20 setObject:&unk_1F50235C0 forKeyedSubscript:@"NSURLSessionResumeInfoVersion"];
          [v20 setObject:v16 forKeyedSubscript:@"NSURLSessionResumeBytesReceived"];
          [v20 setObject:*p_fileDownloadPath forKeyedSubscript:@"NSURLSessionResumeInfoLocalPath"];
          v21 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
          [v21 encodeObject:v4 forKey:@"NSKeyedArchiveRootObjectKey"];
          encodedData = [v21 encodedData];
          [v20 setObject:encodedData forKeyedSubscript:@"NSURLSessionResumeCurrentRequest"];

          if (v11)
          {
            [v20 setObject:v11 forKeyedSubscript:@"NSURLSessionResumeServerDownloadDate"];
          }

          v30 = v16;
          if (v10)
          {
            [v20 setObject:v10 forKeyedSubscript:@"NSURLSessionResumeEntityTag"];
          }

          v31 = v15;
          allHTTPHeaderFields = [(NSURLRequest *)v4 allHTTPHeaderFields];
          v24 = [allHTTPHeaderFields safari_stringForKey:@"Range"];
          if ([v24 hasPrefix:@"bytes="])
          {
            v25 = [v24 componentsSeparatedByString:@"="];
            if ([v25 count] >= 2)
            {
              v26 = [v25 objectAtIndexedSubscript:1];
              [v20 setObject:v26 forKeyedSubscript:@"NSURLSessionResumeByteRange"];
            }
          }

          v27 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
          [v27 encodeObject:v20 forKey:@"NSKeyedArchiveRootObjectKey"];
          encodedData2 = [v27 encodedData];

          v16 = v30;
          v15 = v31;
        }

        else
        {
          encodedData2 = 0;
        }
      }

      else
      {
        encodedData2 = 0;
      }
    }

    else
    {
      encodedData2 = 0;
    }
  }

  else
  {
    encodedData2 = 0;
  }

  return encodedData2;
}

- (void)_notifyDelegateOfFinishedDownload
{
  self->_state = 4;
  date = [MEMORY[0x1E695DF00] date];
  dateFinished = self->_dateFinished;
  self->_dateFinished = date;

  [(_SFDownload *)self _reportUpdatedProgressNow];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained downloadDidFinish:self];

  [(_SFDownload *)self setWKDownload:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_SFDownloadDidStopNotification" object:self];
}

- (void)downloadFileContentsDidChange:(id)change
{
  if (self->_completedFile == change)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained downloadContentsDidChange:self];
    }
  }
}

- (void)downloadFileWillBeDeleted:(id)deleted
{
  if (self->_completedFile == deleted)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained downloadWillBeDeleted:self];
    }
  }

  else
  {
    download = self->_download;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41___SFDownload_downloadFileWillBeDeleted___block_invoke;
    v7[3] = &unk_1E8496538;
    v7[4] = self;
    [(WKDownload *)download cancel:v7];
    [(SFDownloadFile *)self->_placeholderFile invalidate];
    placeholderFile = self->_placeholderFile;
    self->_placeholderFile = 0;
  }
}

- (void)downloadFileDidChangeURL:(id)l
{
  if (self->_completedFile == l)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_SFDownloadDidChangeCompletedURLNotification" object:self];
  }
}

- (void)downloadDidStart:(id)start
{
  v16 = *MEMORY[0x1E69E9840];
  startCopy = start;
  v6 = WBS_LOG_CHANNEL_PREFIXDownloads(startCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = startCopy;
    _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_INFO, "%{public}@: starting download %{public}@", &v12, 0x16u);
  }

  self->_wasCanceled = 0;
  [(_SFDownload *)self setWKDownload:startCopy];
  webView = [startCopy webView];
  objc_storeWeak(&self->_originatingWebView, webView);

  self->_timeLastProgressNotificationWasSent = CFAbsoluteTimeGetCurrent();
  fluidProgressController = [(_SFDownload *)self fluidProgressController];
  [fluidProgressController startFluidProgressWithProgressStateSource:self];

  self->_state = 1;
  dateFinished = self->_dateFinished;
  self->_dateFinished = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_SFDownloadDidStartNotification" object:self];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained downloadDidStart:self];

  [(_SFDownload *)self _reportUpdatedProgressNow];
}

- (void)download:(id)download didReceiveResponse:(id)response
{
  responseCopy = response;
  v7 = WBS_LOG_CHANNEL_PREFIXDownloads(responseCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_SFDownload download:didReceiveResponse:];
  }

  self->_bytesLoaded = 0;
  self->_bytesExpected = [(NSURLResponse *)responseCopy expectedContentLength];
  v8 = [(NSURLResponse *)responseCopy URL];
  sourceURL = self->_sourceURL;
  self->_sourceURL = v8;

  [(WBSFluidProgressState *)self->_fluidProgressState setHasCommittedLoad:1];
  v10 = typeIdentifierForDownloadFromResponse(responseCopy);
  uti = self->_uti;
  self->_uti = v10;

  mIMEType = [(NSURLResponse *)responseCopy MIMEType];
  v13 = [mIMEType copy];
  mimeType = self->_mimeType;
  self->_mimeType = v13;

  response = self->_response;
  self->_response = responseCopy;
  v16 = responseCopy;

  self->_cachedFileType = 0;
  [(_SFDownload *)self _reportUpdatedProgressNow];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(response) = objc_opt_respondsToSelector();

  if (response)
  {
    [WeakRetained downloadDidReceiveResponse:self];
  }
}

- (void)download:(id)download didWriteTotalBytes:(unint64_t)bytes totalBytesExpectedToWrite:(unint64_t)write
{
  self->_bytesExpected = write;
  self->_bytesLoaded = bytes;
  [(_SFDownload *)self _didUpdateBytesLoaded];
}

- (void)download:(id)download decidePlaceholderPolicy:(id)policy
{
  policyCopy = policy;
  v5 = [(SFDownloadFile *)self->_placeholderFile URL];

  if (v5)
  {
    WeakRetained = [(SFDownloadFile *)self->_placeholderFile URL];
    v7 = policyCopy[2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained downloadShouldImportPlaceholderToDownloadsFolder:self];
    }

    v7 = policyCopy[2];
  }

  v7();
}

- (void)download:(id)download didReceivePlaceholderURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = +[_SFDownload _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___SFDownload_download_didReceivePlaceholderURL_completionHandler___block_invoke;
  block[3] = &unk_1E84949D0;
  block[4] = self;
  v13 = lCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = lCopy;
  dispatch_async(v9, block);
}

- (void)download:(id)download didReceiveFinalURL:(id)l
{
  lCopy = l;
  v7 = [(SFDownloadFile *)self->_placeholderFile URL];
  if (v7)
  {
    v8 = +[_SFDownload _sharedQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43___SFDownload_download_didReceiveFinalURL___block_invoke;
    v10[3] = &unk_1E848F548;
    v10[4] = self;
    v11 = lCopy;
    dispatch_async(v8, v10);
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXDownloads(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_SFDownload download:didReceiveFinalURL:];
    }

    [(_SFDownload *)self _notifyDelegateOfFinishedDownload];
  }
}

- (void)_didUpdateBytesLoaded
{
  [(_SFDownload *)self _reportUpdatedProgressSoon];
  if (self->_bytesExpected != -1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - self->_timeLastProgressNotificationWasSent >= 0.2)
    {
      self->_timeLastProgressNotificationWasSent = Current;
      fluidProgressController = [(_SFDownload *)self fluidProgressController];
      [fluidProgressController updateFluidProgressWithProgressStateSource:self];
    }
  }
}

+ (id)downloadDestinationPathWithFilename:(id)filename
{
  v3 = MEMORY[0x1E696AC08];
  filenameCopy = filename;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager safari_createTemporaryDirectoryWithTemplatePrefix:@"Download"];
  v7 = [v6 stringByAppendingPathComponent:filenameCopy];

  v8 = [defaultManager _web_pathWithUniqueFilenameForPath:v7];

  return v8;
}

- (void)download:(id)download decideDestinationWithSuggestedFilename:(id)filename completionHandler:(id)handler
{
  filenameCopy = filename;
  handlerCopy = handler;
  v10 = WBS_LOG_CHANNEL_PREFIXDownloads(handlerCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_SFDownload download:decideDestinationWithSuggestedFilename:completionHandler:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8496678;
  aBlock[4] = self;
  v11 = handlerCopy;
  v25 = v11;
  v12 = _Block_copy(aBlock);
  v14 = v12;
  if (self->_wasCanceled)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXDownloads(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_SFDownload download:decideDestinationWithSuggestedFilename:completionHandler:];
    }

    v14[2](v14, 0);
  }

  else
  {
    if (!self->_suggestedFilename)
    {
      v16 = [MEMORY[0x1E69B1B68] properFilenameForOriginalFilename:filenameCopy typeIdentifier:self->_uti mimeType:self->_mimeType sourceURL:self->_sourceURL];
      suggestedFilename = self->_suggestedFilename;
      self->_suggestedFilename = v16;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();
    if (v19)
    {
      v21 = WBS_LOG_CHANNEL_PREFIXDownloads(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [_SFDownload download:decideDestinationWithSuggestedFilename:completionHandler:];
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __81___SFDownload_download_decideDestinationWithSuggestedFilename_completionHandler___block_invoke_227;
      v22[3] = &unk_1E8490C40;
      v22[4] = self;
      v23 = v14;
      [WeakRetained downloadShouldContinueAfterReceivingResponse:self decisionHandler:v22];
    }

    else
    {
      [(_SFDownload *)self _continueAfterDownloadConfirmation:1 destinationCompletionHandler:v14];
    }
  }
}

- (void)_continueAfterDownloadConfirmation:(BOOL)confirmation destinationCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!confirmation)
  {
    fileDownloadPath = self->_fileDownloadPath;
    self->_fileDownloadPath = 0;
LABEL_6:

    [(_SFDownload *)self _continueAfterDecidingFileDownloadPath:handlerCopy];
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = [objc_opt_class() downloadDestinationPathWithFilename:self->_suggestedFilename];
    fileDownloadPath = self->_fileDownloadPath;
    self->_fileDownloadPath = v9;
    goto LABEL_6;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79___SFDownload__continueAfterDownloadConfirmation_destinationCompletionHandler___block_invoke;
  v10[3] = &unk_1E8493EC8;
  v10[4] = self;
  v11 = handlerCopy;
  [WeakRetained createDirectoryForDownload:self completionHandler:v10];

LABEL_7:
}

- (void)_continueAfterDecidingFileDownloadPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (self->_fileDownloadPath)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54___SFDownload__continueAfterDecidingFileDownloadPath___block_invoke;
    v6[3] = &unk_1E8490C40;
    v6[4] = self;
    v7 = pathCopy;
    [(_SFDownload *)self _importPlaceholderIfNeeded:v6];
  }

  else
  {
    (*(pathCopy + 2))(pathCopy, 0);
  }
}

- (void)downloadDidFinish:(id)finish
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_wasCanceled)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDownloads(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_INFO, "%{public}@: finished download", &v6, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_fluidProgressController);
    [WeakRetained finishFluidProgressWithProgressStateSource:self];

    [(_SFDownload *)self _importCompleteDownloadIfNeeded];
  }
}

- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data
{
  errorCopy = error;
  dataCopy = data;
  v10 = WBS_LOG_CHANNEL_PREFIXDownloads(dataCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_SFDownload download:v10 didFailWithError:errorCopy resumeData:?];
  }

  self->_state = 3;
  date = [MEMORY[0x1E695DF00] date];
  dateFinished = self->_dateFinished;
  self->_dateFinished = date;

  objc_storeStrong(&self->_resumeData, data);
  if (![(NSData *)self->_resumeData length])
  {
    resumeData = self->_resumeData;
    self->_resumeData = 0;
  }

  if (!self->_resumeData)
  {
    [(_SFDownload *)self removeFromDisk];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fluidProgressController);
  [WeakRetained cancelFluidProgressWithProgressStateSource:self];

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 downloadDidFail:self];

  [(_SFDownload *)self setWKDownload:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_SFDownloadDidStopNotification" object:self];

  [(_SFDownload *)self _reportUpdatedProgressNow];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___SFDownload_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_1E848F548;
  v9[4] = self;
  v10 = objectCopy;
  v8 = objectCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (BOOL)createFluidProgressState
{
  if (!self->_fluidProgressState)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C97C8]) initWithType:1];
    fluidProgressState = self->_fluidProgressState;
    self->_fluidProgressState = v3;

    v5 = self->_fluidProgressState;
    safari_originalDataAsString = [(NSURL *)self->_sourceURL safari_originalDataAsString];
    [(WBSFluidProgressState *)v5 setLoadURL:safari_originalDataAsString];

    if (self->_response)
    {
      [(WBSFluidProgressState *)self->_fluidProgressState setHasCommittedLoad:1];
    }
  }

  return 1;
}

- (void)clearFluidProgressState
{
  fluidProgressState = self->_fluidProgressState;
  self->_fluidProgressState = 0;
}

- (double)estimatedProgress
{
  bytesExpected = self->_bytesExpected;
  if (bytesExpected < 1)
  {
    return 0.0;
  }

  else
  {
    return self->_bytesLoaded / bytesExpected;
  }
}

- (WBSFluidProgressController)fluidProgressController
{
  WeakRetained = objc_loadWeakRetained(&self->_fluidProgressController);

  return WeakRetained;
}

- (_SFDownloadDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_SFDownloadPlaceholderImporter)placeholderImporter
{
  WeakRetained = objc_loadWeakRetained(&self->_placeholderImporter);

  return WeakRetained;
}

- (WKWebView)navigatedWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_navigatedWebView);

  return WeakRetained;
}

- (void)dictionaryRepresentation
{
  selfCopy = self;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)initWithDictionaryRepresentation:(void *)a1 didUpdateRepresentation:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)initWithDictionaryRepresentation:(void *)a1 didUpdateRepresentation:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)initWithDictionaryRepresentation:(uint64_t)a1 didUpdateRepresentation:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [0 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(&dword_1D4644000, v2, OS_LOG_TYPE_ERROR, "Failed to check file size at %{private}@: %{public}@", v4, 0x16u);
}

- (void)_validateSandboxAccessToURL:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = a1;
  *v10 = 134218243;
  *&v10[4] = *__error();
  *&v10[12] = 2113;
  *&v10[14] = a2;
  OUTLINED_FUNCTION_5_2(&dword_1D4644000, v4, v5, "Error checking sandbox access to placeholder file: errno=%ld, url=%{private}@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

- (void)_validateSandboxAccessToURL:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_1D4644000, v0, OS_LOG_TYPE_FAULT, "Download has no sandbox access to placeholder file: %{private}@", v1, 0xCu);
}

- (void)_didImportPlaceholderAtURL:completionHandler:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1D4644000, v0, OS_LOG_TYPE_ERROR, "%{public}@: failed to create bookmark for imported placeholder", v1, 0xCu);
}

- (void)_didImportFileAtURL:(uint8_t *)buf completionHandler:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "%{public}@: failed to create bookmark data: %{public}@", buf, 0x16u);
}

- (void)_createResumeData
{
  v3 = a2;
  safari_privacyPreservingDescription = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)download:didReceiveResponse:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2117;
  v4 = v0;
  _os_log_debug_impl(&dword_1D4644000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: received response: %{sensitive}@", v2, 0x16u);
}

- (void)download:(uint64_t)a1 didFailWithError:(void *)a2 resumeData:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "%{public}@: download failed: %{public}@", &v7, 0x16u);
}

@end