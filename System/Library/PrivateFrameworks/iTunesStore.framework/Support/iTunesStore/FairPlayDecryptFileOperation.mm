@interface FairPlayDecryptFileOperation
- (BOOL)_decryptWithSession:(id)session error:(id *)error;
- (FairPlayDecryptFileOperation)initWithPath:(id)path dpInfo:(id)info;
- (void)_initializeProgressWithFileHandle:(id)handle;
- (void)_updateProgressWithByteCount:(int64_t)count;
- (void)dealloc;
- (void)run;
@end

@implementation FairPlayDecryptFileOperation

- (FairPlayDecryptFileOperation)initWithPath:(id)path dpInfo:(id)info
{
  if (!path || !info)
  {
    sub_1002721EC(a2, self);
  }

  v9.receiver = self;
  v9.super_class = FairPlayDecryptFileOperation;
  v7 = [(FairPlayDecryptFileOperation *)&v9 init];
  if (v7)
  {
    v7->_dpInfo = info;
    v7->_path = path;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FairPlayDecryptFileOperation;
  [(FairPlayDecryptFileOperation *)&v3 dealloc];
}

- (void)run
{
  v3 = [[FairPlayDecryptSession alloc] initWithDPInfo:self->_dpInfo];

  self->_dpInfo = 0;
  if (v3)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v28 = sub_100102CDC;
    v29 = &unk_100327350;
    selfCopy = self;
    v31 = v3;
    HIDWORD(v26) = 0;
    v4 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [(FairPlayDecryptSession *)v3 identifier], 0, @"itunesstored FairPlay asset decryption", 0, 900.0, @"TimeoutActionRelease", &v26 + 1);
    v5 = +[SSLogConfig sharedDaemonConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = shouldLog | 2;
      }

      else
      {
        LODWORD(v8) = shouldLog;
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v10 = objc_opt_class();
        v32 = 138412546;
        v33 = v10;
        v34 = 1024;
        LODWORD(v35) = v4;
        LODWORD(v26) = 18;
        v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Power assertion failed with error: %d", &v32, v26);
        if (v11)
        {
          v12 = v11;
          [NSString stringWithCString:v11 encoding:4];
          free(v12);
          SSFileLog();
        }
      }

      [(FairPlayDecryptFileOperation *)self setError:ISError()];
      [(FairPlayDecryptFileOperation *)self setSuccess:0];
    }

    else
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v20) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v20) = shouldLog2;
      }

      oSLogObject2 = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
        identifier = [(FairPlayDecryptSession *)v3 identifier];
        v32 = 138412546;
        v33 = v22;
        v34 = 2112;
        v35 = identifier;
        LODWORD(v26) = 22;
        v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Took power assertion: %@", &v32, v26);
        if (v24)
        {
          v25 = v24;
          [NSString stringWithCString:v24 encoding:4];
          free(v25);
          SSFileLog();
        }
      }

      v28(v27);
      IOPMAssertionRelease(HIDWORD(v26));
    }
  }

  else
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog3;
    }

    oSLogObject3 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v32 = 138412290;
      v33 = objc_opt_class();
      LODWORD(v26) = 12;
      v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not begin decrypt", &v32, v26);
      if (v17)
      {
        v18 = v17;
        [NSString stringWithCString:v17 encoding:4];
        free(v18);
        SSFileLog();
      }
    }

    [(FairPlayDecryptFileOperation *)self setError:ISError()];
  }
}

- (BOOL)_decryptWithSession:(id)session error:(id *)error
{
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:self->_path];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    [(FairPlayDecryptFileOperation *)self _initializeProgressWithFileHandle:v7];
    v9 = 0;
    while (1)
    {
      [v9 drain];
      v9 = objc_alloc_init(NSAutoreleasePool);
      v10 = [(NSFileHandle *)v8 readDataOfLength:0x8000];
      v11 = [(NSData *)v10 length];
      v12 = v11 == 0;
      if (!v11)
      {
        break;
      }

      v31 = 0;
      v13 = [session decryptBytes:v10 error:&v31];
      if (v13)
      {
        [(NSFileHandle *)v8 seekToFileOffset:[(NSFileHandle *)v8 offsetInFile]- [(NSData *)v10 length]];
        [(NSFileHandle *)v8 writeData:v13];
        [(FairPlayDecryptFileOperation *)self _updateProgressWithByteCount:[(NSFileHandle *)v8 offsetInFile]];
      }

      else
      {
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v14 shouldLog];
        shouldLogToDisk = [v14 shouldLogToDisk];
        oSLogObject = [v14 OSLogObject];
        v18 = oSLogObject;
        if (shouldLogToDisk)
        {
          v19 = shouldLog | 2;
        }

        else
        {
          v19 = shouldLog;
        }

        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 2;
        }

        if (v20)
        {
          v21 = objc_opt_class();
          v32 = 138412546;
          v33 = v21;
          v34 = 2112;
          v35 = v31;
          LODWORD(v29) = 22;
          v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v18, 0, "%@: Decrypt failed [%@]", &v32, v29);
          if (v22)
          {
            v23 = v22;
            v24 = [NSString stringWithCString:v22 encoding:4];
            free(v23);
            v28 = v24;
            SSFileLog();
          }
        }

        v25 = v31;
        if (v25)
        {
          goto LABEL_21;
        }
      }
    }

    v25 = 0;
LABEL_21:
    [(NSFileHandle *)v8 synchronizeFile];
    error = errorCopy;
    [(NSFileHandle *)v8 closeFile];
    [v9 drain];
    v26 = v25;
  }

  else
  {
    v25 = ISError();
    v12 = 0;
  }

  if (error)
  {
    *error = v25;
  }

  return v12;
}

- (void)_initializeProgressWithFileHandle:(id)handle
{
  memset(&v5.st_size, 0, 48);
  if (fstat([handle fileDescriptor], &v5) != -1)
  {
    v4 = OBJC_IVAR___ISOperation__progress;
    [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setUnits:1];
    [*&self->ISOperation_opaque[v4] setMaxValue:v5.st_size];
    [*&self->ISOperation_opaque[v4] resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(FairPlayDecryptFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (void)_updateProgressWithByteCount:(int64_t)count
{
  countCopy = count;
  v5 = OBJC_IVAR___ISOperation__progress;
  v6 = *&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress];
  if ([v6 maxValue] <= count)
  {
    countCopy = [*&self->ISOperation_opaque[v5] maxValue];
  }

  [v6 setCurrentValue:countCopy];
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_lastSnapshotTime + kSSOperationDefaultSnapshotInterval < Current)
  {
    [*&self->ISOperation_opaque[v5] snapshot];
    [(FairPlayDecryptFileOperation *)self sendProgressToDelegate];
    self->_lastSnapshotTime = Current;
  }
}

@end