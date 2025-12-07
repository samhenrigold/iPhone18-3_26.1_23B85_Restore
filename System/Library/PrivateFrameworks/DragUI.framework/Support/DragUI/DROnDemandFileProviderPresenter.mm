@interface DROnDemandFileProviderPresenter
+ (id)presenterPresentingURLWrapper:(id)wrapper type:(id)type outURLWrapper:(id *)lWrapper;
- (DROnDemandFileProviderPresenter)initWithURLWrapper:(id)wrapper type:(id)type;
- (id)presentedItemOperationQueue;
- (void)_operationQueue_invalidate;
- (void)beginPresenting;
- (void)relinquishPresentedItemToReader:(id)reader;
@end

@implementation DROnDemandFileProviderPresenter

- (DROnDemandFileProviderPresenter)initWithURLWrapper:(id)wrapper type:(id)type
{
  wrapperCopy = wrapper;
  typeCopy = type;
  v25.receiver = self;
  v25.super_class = DROnDemandFileProviderPresenter;
  v9 = [(DROnDemandFileProviderPresenter *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceURLWrapper, wrapper);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([wrapperCopy fpItem], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      fpItem = [wrapperCopy fpItem];
      filename = [fpItem filename];
    }

    else
    {
      fpItem = [wrapperCopy url];
      filename = [fpItem lastPathComponent];
    }

    v14 = filename;
    v15 = sub_10000A848(filename, typeCopy);

    v16 = [NSString stringWithFormat:@".%@.XXXXXX", @"com.apple.DragUI"];
    v17 = NSTemporaryDirectory();
    v18 = [v17 stringByAppendingPathComponent:v16];

    [v18 getFileSystemRepresentation:v26 maxLength:1024];
    if (mkdtemp(v26))
    {
      v19 = [NSString stringWithUTF8String:v26];
      v20 = [NSURL fileURLWithPath:v19 isDirectory:1];
    }

    else
    {
      v20 = 0;
    }

    folderURL = v10->_folderURL;
    v10->_folderURL = v20;

    v22 = [(NSURL *)v10->_folderURL URLByAppendingPathComponent:v15];
    fileURL = v10->_fileURL;
    v10->_fileURL = v22;
  }

  return v10;
}

- (void)beginPresenting
{
  inited = objc_initWeak(&location, self);
  v4 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0(inited);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AA3C;
  v7[3] = &unk_100054DC8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v4 addOperationWithBlock:v7];

  v6 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0(v5);
  [v6 waitUntilAllOperationsAreFinished];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)presentedItemOperationQueue
{
  if (qword_1000634E8 != -1)
  {
    sub_10002FC30();
  }

  v2 = qword_1000634E0;

  return v2;
}

- (void)_operationQueue_invalidate
{
  if (self->_operationQueue_valid)
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      fileURL = self->_fileURL;
      v8 = 138412290;
      v9 = fileURL;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating file presenter at URL %@", &v8, 0xCu);
    }

    self->_operationQueue_valid = 0;
    v5 = +[NSFileManager defaultManager];
    [v5 removeItemAtURL:self->_folderURL error:0];

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper fpItem], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      if (self->_shouldEvictWhenDone)
      {
        v7 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper url];
        FPEvictItem();
      }
    }

    [NSFileCoordinator removeFilePresenter:self];
  }
}

+ (id)presenterPresentingURLWrapper:(id)wrapper type:(id)type outURLWrapper:(id *)lWrapper
{
  typeCopy = type;
  wrapperCopy = wrapper;
  v10 = [[self alloc] initWithURLWrapper:wrapperCopy type:typeCopy];

  v11 = [PBSecurityScopedURLWrapper alloc];
  fileURL = [v10 fileURL];
  v13 = [v11 initWithURL:fileURL readonly:1 extensionClass:@"com.apple.app-sandbox.read"];

  [v10 beginPresenting];
  if (lWrapper)
  {
    v14 = v13;
    *lWrapper = v13;
  }

  return v10;
}

- (void)relinquishPresentedItemToReader:(id)reader
{
  readerCopy = reader;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    fileURL = self->_fileURL;
    *buf = 138412290;
    v35 = fileURL;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cloning file provider data to URL %@", buf, 0xCu);
  }

  v7 = self->_fileURL;
  v8 = self->_sourceURLWrapper;
  self->_operationQueue_hasObservedEvent = 1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper fpItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = DRLogTarget();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Exporting file provider data to URL %@", buf, 0xCu);
    }

    v11 = +[FPItemManager defaultManager];
    fpItem = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper fpItem];
    v13 = self->_fileURL;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000B204;
    v29[3] = &unk_100054DF0;
    selfCopy = self;
    v32 = readerCopy;
    v30 = v7;
    v14 = v7;
    [v11 recursivelyExportItem:fpItem toURL:v13 completionHandler:v29];

    v15 = v32;
  }

  else
  {
    v15 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v16 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper url];
    startAccessingSecurityScopedResource = [v16 startAccessingSecurityScopedResource];

    v18 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper url];
    v19 = [NSFileAccessIntent readingIntentWithURL:v18 options:1];

    v33 = v19;
    v20 = [NSArray arrayWithObjects:&v33 count:1];
    v21 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0(v20);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000B3B4;
    v23[3] = &unk_100054E18;
    v24 = v8;
    v25 = v7;
    selfCopy2 = self;
    v27 = readerCopy;
    v28 = startAccessingSecurityScopedResource;
    v22 = v7;
    [v15 coordinateAccessWithIntents:v20 queue:v21 byAccessor:v23];
  }
}

@end