@interface MediaDRMOperation
- (MediaDRMOperation)initWithMediaPath:(id)path sinfs:(id)sinfs;
- (NSString)mediaFileExtension;
- (NSString)mediaPath;
- (id)sinfs;
- (void)dealloc;
- (void)run;
@end

@implementation MediaDRMOperation

- (MediaDRMOperation)initWithMediaPath:(id)path sinfs:(id)sinfs
{
  v8.receiver = self;
  v8.super_class = MediaDRMOperation;
  v6 = [(MediaDRMOperation *)&v8 init];
  if (v6)
  {
    v6->_mediaPath = [path copy];
    v6->_sinfs = [sinfs copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MediaDRMOperation;
  [(MediaDRMOperation *)&v3 dealloc];
}

- (NSString)mediaFileExtension
{
  [(MediaDRMOperation *)self lock];
  v3 = self->_mediaFileExtension;
  [(MediaDRMOperation *)self unlock];
  return v3;
}

- (NSString)mediaPath
{
  v2 = self->_mediaPath;

  return v2;
}

- (id)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (void)run
{
  v3 = OBJC_IVAR___ISOperation__progress;
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:100];
  [*&self->ISOperation_opaque[v3] setUnits:0];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    mediaPath = self->_mediaPath;
    v30 = 138412546;
    v31 = v8;
    v32 = 2112;
    v33 = mediaPath;
    v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Processing file: %@", &v30, 22);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v26 = v12;
      SSFileLog();
    }
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v29 = 0;
  sinfs = self->_sinfs;
  if (sinfs)
  {
    [v13 setObject:sinfs forKey:ISWeakLinkedStringConstantForString()];
  }

  fileProcessor = [ISWeakLinkedClassForString() fileProcessor];
  v16 = self->_mediaPath;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000AEBF0;
  v28[3] = &unk_100327858;
  v28[4] = self;
  v17 = [fileProcessor processPurchasedItem:v16 withAttributes:v13 resultInfo:&v29 progressBlock:v28];
  if (v17)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog2;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v30 = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v17;
      LODWORD(v27) = 22;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Failed with error: %@", &v30, v27);
      if (v23)
      {
        v24 = v23;
        [NSString stringWithCString:v23 encoding:4];
        free(v24);
        SSFileLog();
      }
    }

    v25 = ISErrorWithExternalError();
  }

  else
  {
    [(MediaDRMOperation *)self lock];

    self->_mediaFileExtension = [v29 objectForKey:ISWeakLinkedStringConstantForString()];
    [(MediaDRMOperation *)self unlock];
    v25 = 0;
  }

  [(MediaDRMOperation *)self setError:v25];
  [(MediaDRMOperation *)self setSuccess:v17 == 0];
}

@end