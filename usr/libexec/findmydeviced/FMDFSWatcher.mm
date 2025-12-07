@interface FMDFSWatcher
+ (id)monitorURL:(id)l action:(id)action;
- (BOOL)start;
- (FMDFSWatcher)init;
- (FMDFSWatcher)initWithURL:(id)l action:(id)action;
- (void)cancel;
- (void)directoryChanged;
- (void)fileDiscovered;
@end

@implementation FMDFSWatcher

- (FMDFSWatcher)init
{
  [(FMDFSWatcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FMDFSWatcher)initWithURL:(id)l action:(id)action
{
  lCopy = l;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = FMDFSWatcher;
  v8 = [(FMDFSWatcher *)&v19 init];
  if (v8)
  {
    v9 = v8;
    standardizedURL = [lCopy standardizedURL];
    v11 = CFURLCopyPath(standardizedURL);
    v12 = [(__CFString *)v11 hasSuffix:@"/"];
    CFRelease(v11);
    v18.receiver = v9;
    v18.super_class = FMDFSWatcher;
    v13 = [(FMDFSWatcher *)&v18 init];
    v14 = v13;
    if (v12)
    {
      [(FMDFSWatcher *)v13 setDirectoryURL:standardizedURL];
      [(FMDFSWatcher *)v14 setTargetFilename:0];
    }

    else
    {
      uRLByDeletingLastPathComponent = [(__CFURL *)standardizedURL URLByDeletingLastPathComponent];
      [(FMDFSWatcher *)v14 setDirectoryURL:uRLByDeletingLastPathComponent];

      lastPathComponent = [(__CFURL *)standardizedURL lastPathComponent];
      [(FMDFSWatcher *)v14 setTargetFilename:lastPathComponent];
    }

    [(FMDFSWatcher *)v14 setBlock:actionCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)start
{
  inited = objc_initWeak(&location, self);
  v4 = sub_100002880(inited);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    directoryURL = [(FMDFSWatcher *)self directoryURL];
    targetFilename = [(FMDFSWatcher *)self targetFilename];
    *buf = 138412546;
    v42 = directoryURL;
    v43 = 2112;
    v44 = targetFilename;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting to watch for existence of %@/%@", buf, 0x16u);
  }

  directoryURL2 = [(FMDFSWatcher *)self directoryURL];
  path = [directoryURL2 path];
  v9 = path;
  -[FMDFSWatcher setFd:](self, "setFd:", open([path fileSystemRepresentation], 0x8000));

  v10 = [(FMDFSWatcher *)self fd];
  v11 = v10;
  if (v10 < 1)
  {
    v28 = sub_100002880(v10);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      directoryURL3 = [(FMDFSWatcher *)self directoryURL];
      sub_10022DD64(directoryURL3, buf, v28);
    }

    v31 = sub_100002880(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      directoryURL4 = [(FMDFSWatcher *)self directoryURL];
      *v39 = 138412290;
      v40 = directoryURL4;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to open %@", v39, 0xCu);
    }
  }

  else
  {
    v12 = [(FMDFSWatcher *)self fd];
    v13 = dispatch_get_global_queue(0, 0);
    v14 = dispatch_source_create(&_dispatch_source_type_vnode, v12, 2uLL, v13);
    [(FMDFSWatcher *)self setDispatchSourceChange:v14];

    dispatchSourceChange = [(FMDFSWatcher *)self dispatchSourceChange];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001BEF48;
    handler[3] = &unk_1002D0B70;
    handler[4] = self;
    objc_copyWeak(&v37, &location);
    dispatch_source_set_event_handler(dispatchSourceChange, handler);

    dispatchSourceChange2 = [(FMDFSWatcher *)self dispatchSourceChange];
    dispatch_resume(dispatchSourceChange2);

    v18 = sub_100002880(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      directoryURL5 = [(FMDFSWatcher *)self directoryURL];
      path2 = [directoryURL5 path];
      *buf = 138412290;
      v42 = path2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Started monitoring changes to directory: %@", buf, 0xCu);
    }

    v21 = dispatch_source_create(&_dispatch_source_type_vnode, [(FMDFSWatcher *)self fd], 0x61uLL, v13);
    [(FMDFSWatcher *)self setDispatchSourceAbort:v21];

    dispatchSourceAbort = [(FMDFSWatcher *)self dispatchSourceAbort];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001BF02C;
    v34[3] = &unk_1002D0B70;
    v34[4] = self;
    objc_copyWeak(&v35, &location);
    dispatch_source_set_event_handler(dispatchSourceAbort, v34);

    dispatchSourceAbort2 = [(FMDFSWatcher *)self dispatchSourceAbort];
    dispatch_resume(dispatchSourceAbort2);

    v25 = sub_100002880(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      directoryURL6 = [(FMDFSWatcher *)self directoryURL];
      path3 = [directoryURL6 path];
      *buf = 138412290;
      v42 = path3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Started monitoring for removal of directory: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
  }

  objc_destroyWeak(&location);
  return v11 > 0;
}

+ (id)monitorURL:(id)l action:(id)action
{
  actionCopy = action;
  lCopy = l;
  v7 = [[FMDFSWatcher alloc] initWithURL:lCopy action:actionCopy];

  targetFilename = [(FMDFSWatcher *)v7 targetFilename];

  if (targetFilename)
  {
    v10 = sub_100002880(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling directory changed on startup", v12, 2u);
    }

    [(FMDFSWatcher *)v7 directoryChanged];
  }

  if (![(FMDFSWatcher *)v7 triggered]&& ![(FMDFSWatcher *)v7 start])
  {
    [(FMDFSWatcher *)v7 cancel];

    v7 = 0;
  }

  return v7;
}

- (void)directoryChanged
{
  targetFilename = [(FMDFSWatcher *)self targetFilename];

  if (targetFilename)
  {
    v4 = +[NSFileManager defaultManager];
    directoryURL = [(FMDFSWatcher *)self directoryURL];
    v29 = 0;
    v6 = [v4 contentsOfDirectoryAtURL:directoryURL includingPropertiesForKeys:0 options:0 error:&v29];
    v7 = v29;

    if (v7)
    {
      v9 = sub_100002880(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10022DDBC(self, v7, v9);
      }

      v11 = sub_100002880(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        directoryURL2 = [(FMDFSWatcher *)self directoryURL];
        *buf = 138412546;
        v31 = directoryURL2;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error while trying to read the contents of directory %@: %@", buf, 0x16u);
      }

      [(FMDFSWatcher *)self cancel];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = v6;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            lastPathComponent = [*(*(&v25 + 1) + 8 * i) lastPathComponent];
            targetFilename2 = [(FMDFSWatcher *)self targetFilename];
            v20 = [lastPathComponent isEqualToString:targetFilename2];

            if (v20)
            {
              [(FMDFSWatcher *)self fileDiscovered];
              goto LABEL_22;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v13 = sub_100002880(v21);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        targetFilename3 = [(FMDFSWatcher *)self targetFilename];
        *buf = 138412290;
        v31 = targetFilename3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "File was not found in the directory yet: %@", buf, 0xCu);
      }

LABEL_22:

      v6 = v24;
    }
  }

  else
  {
    block = [(FMDFSWatcher *)self block];
    block[2]();
  }
}

- (void)fileDiscovered
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    targetFilename = [(FMDFSWatcher *)self targetFilename];
    v6 = 138412290;
    v7 = targetFilename;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found file being watched: %@", &v6, 0xCu);
  }

  [(FMDFSWatcher *)self setTriggered:1];
  [(FMDFSWatcher *)self cancel];
  block = [(FMDFSWatcher *)self block];
  block[2]();
}

- (void)cancel
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deinitializing watcher", v8, 2u);
  }

  dispatchSourceChange = [(FMDFSWatcher *)self dispatchSourceChange];

  if (dispatchSourceChange)
  {
    dispatchSourceChange2 = [(FMDFSWatcher *)self dispatchSourceChange];
    dispatch_source_cancel(dispatchSourceChange2);

    [(FMDFSWatcher *)self setDispatchSourceChange:0];
  }

  dispatchSourceAbort = [(FMDFSWatcher *)self dispatchSourceAbort];

  if (dispatchSourceAbort)
  {
    dispatchSourceAbort2 = [(FMDFSWatcher *)self dispatchSourceAbort];
    dispatch_source_cancel(dispatchSourceAbort2);

    [(FMDFSWatcher *)self setDispatchSourceAbort:0];
  }

  if ([(FMDFSWatcher *)self fd]>= 1)
  {
    close([(FMDFSWatcher *)self fd]);
    [(FMDFSWatcher *)self setFd:0];
  }
}

@end