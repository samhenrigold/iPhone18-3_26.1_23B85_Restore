@interface DIDiskArb
+ (id)diskArbWithError:(id *)error;
- (BOOL)ejectWithBSDName:(id)name error:(id *)error;
- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error;
- (BOOL)unmountWithMountPoint:(id)point error:(id *)error;
- (BOOL)waitForDAIdleWithError:(id *)error;
- (DIDisappearedMountPointDelegate)delegate;
- (DIDiskArb)initWithError:(id *)error;
- (id)copyDescriptionWithBSDName:(id)name;
- (void)addDisappearedCallbackWithMountPoint:(id)point shadowMountPoints:(id)points delegate:(id)delegate;
- (void)onDiskDisappearedWithDisk:(__DADisk *)disk;
- (void)stop;
@end

@implementation DIDiskArb

+ (id)diskArbWithError:(id *)error
{
  v3 = [[DIDiskArb alloc] initWithError:0];
  if (!v3)
  {
    v3 = objc_alloc_init(DIDiskArbEmulation);
  }

  return v3;
}

- (DIDiskArb)initWithError:(id *)error
{
  v11.receiver = self;
  v11.super_class = DIDiskArb;
  v4 = [(DIDiskArb *)&v11 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!MEMORY[0x282217F30])
  {
    daSession = v4->_daSession;
    if (daSession)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = [DIError nilWithEnumValue:156 verboseInfo:@"Failed DA init" error:error];
    goto LABEL_8;
  }

  daSession = DASessionCreate(0);
  v5->_daSession = daSession;
  if (!daSession)
  {
    goto LABEL_7;
  }

LABEL_4:
  Current = CFRunLoopGetCurrent();
  DASessionScheduleWithRunLoop(daSession, Current, *MEMORY[0x277CBF058]);
LABEL_5:
  v8 = v5;
LABEL_8:
  v9 = v8;

  return v9;
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  daSession = obj->_daSession;
  if (daSession)
  {
    if (obj->_inputMountedOnURL || obj->_shadowMountedOnURLs)
    {
      MEMORY[0x24C1ECEE0](obj->_daSession, _diskDisappearedCallback);
      daSession = obj->_daSession;
    }

    Current = CFRunLoopGetCurrent();
    DASessionUnscheduleFromRunLoop(daSession, Current, *MEMORY[0x277CBF058]);
    CFRelease(obj->_daSession);
    v2 = obj;
    obj->_daSession = 0;
  }

  objc_sync_exit(v2);
}

- (void)onDiskDisappearedWithDisk:(__DADisk *)disk
{
  v64 = *MEMORY[0x277D85DE8];
  if ([(DIDiskArb *)self daSession])
  {
    v5 = DADiskCopyDescription(disk);
    v6 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277D05578]];
    if (DIDebugLogsEnabled())
    {
      v7 = *__error();
      v8 = DIForwardLogs();
      if (v8)
      {
        v56 = 0;
        v10 = getDIOSLog(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        *buf = 68158210;
        v59 = 39;
        v60 = 2080;
        v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        v62 = 2114;
        v63 = v6;
        v12 = _os_log_send_and_compose_impl(v11, &v56, 0, 0, &dword_248DE0000, v10, 2, "%.*s: Reached with diskURL=%{public}@", buf, 28);

        if (v12)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
          free(v12);
        }
      }

      else
      {
        v20 = getDIOSLog(v8, v9);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          v59 = 39;
          v60 = 2080;
          v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
          v62 = 2114;
          v63 = v6;
          _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEBUG, "%.*s: Reached with diskURL=%{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v7;
    }

    if (v6)
    {
      inputMountedOnURL = [(DIDiskArb *)self inputMountedOnURL];
      if (inputMountedOnURL)
      {
        v22 = inputMountedOnURL;
        inputMountedOnURL2 = [(DIDiskArb *)self inputMountedOnURL];
        v24 = [v6 isEqual:inputMountedOnURL2];

        if (v24)
        {
          v25 = *__error();
          v26 = DIForwardLogs();
          if (v26)
          {
            v56 = 0;
            v28 = getDIOSLog(v26, v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            path = [v6 path];
            *buf = 68158211;
            v59 = 39;
            v60 = 2080;
            v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
            v62 = 2113;
            v63 = path;
            LODWORD(v51) = 28;
            v31 = _os_log_send_and_compose_impl(v29, &v56, 0, 0, &dword_248DE0000, v28, 16, "%.*s: Mount point %{private}@ disappeared", buf, v51);

            if (v31)
            {
              fprintf(*MEMORY[0x277D85DF8], "%s\n", v31);
              free(v31);
            }
          }

          else
          {
            v32 = getDIOSLog(v26, v27);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              path2 = [v6 path];
              *buf = 68158211;
              v59 = 39;
              v60 = 2080;
              v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
              v62 = 2113;
              v63 = path2;
              _os_log_impl(&dword_248DE0000, v32, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared", buf, 0x1Cu);
            }
          }

          *__error() = v25;
          delegate = [(DIDiskArb *)self delegate];
          [delegate onDisappearedMountPoint];
        }
      }

      shadowMountedOnURLs = [(DIDiskArb *)self shadowMountedOnURLs];

      if (shadowMountedOnURLs)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        shadowMountedOnURLs2 = [(DIDiskArb *)self shadowMountedOnURLs];
        v37 = [shadowMountedOnURLs2 countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v53;
          while (2)
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v53 != v39)
              {
                objc_enumerationMutation(shadowMountedOnURLs2);
              }

              if ([v6 isEqual:*(*(&v52 + 1) + 8 * i)])
              {
                v41 = *__error();
                v42 = DIForwardLogs();
                if (v42)
                {
                  v56 = 0;
                  v44 = getDIOSLog(v42, v43);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    v45 = 3;
                  }

                  else
                  {
                    v45 = 2;
                  }

                  path3 = [v6 path];
                  *buf = 68158211;
                  v59 = 39;
                  v60 = 2080;
                  v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                  v62 = 2113;
                  v63 = path3;
                  LODWORD(v51) = 28;
                  v47 = _os_log_send_and_compose_impl(v45, &v56, 0, 0, &dword_248DE0000, v44, 16, "%.*s: Mount point %{private}@ disappeared (shadow's mount point)", buf, v51);

                  if (v47)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "%s\n", v47);
                    free(v47);
                  }
                }

                else
                {
                  v48 = getDIOSLog(v42, v43);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    path4 = [v6 path];
                    *buf = 68158211;
                    v59 = 39;
                    v60 = 2080;
                    v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                    v62 = 2113;
                    v63 = path4;
                    _os_log_impl(&dword_248DE0000, v48, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared (shadow's mount point)", buf, 0x1Cu);
                  }
                }

                *__error() = v41;
                delegate2 = [(DIDiskArb *)self delegate];
                [delegate2 onDisappearedMountPoint];

                goto LABEL_56;
              }
            }

            v38 = [shadowMountedOnURLs2 countByEnumeratingWithState:&v52 objects:v57 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

LABEL_56:
      }
    }
  }

  else
  {
    v13 = *__error();
    v14 = DIForwardLogs();
    if (v14)
    {
      v56 = 0;
      v16 = getDIOSLog(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      *buf = 68157954;
      v59 = 39;
      v60 = 2080;
      v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
      LODWORD(v51) = 18;
      v18 = _os_log_send_and_compose_impl(v17, &v56, 0, 0, &dword_248DE0000, v16, 0, "%.*s: Ignoring, during shutdown", buf, v51);

      if (v18)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v18);
        free(v18);
      }
    }

    else
    {
      v19 = getDIOSLog(v14, v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v59 = 39;
        v60 = 2080;
        v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        _os_log_impl(&dword_248DE0000, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Ignoring, during shutdown", buf, 0x12u);
      }
    }

    *__error() = v13;
  }
}

- (BOOL)waitForDAIdleWithError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = DIForwardLogs();
  if (v5)
  {
    v23 = 0;
    v7 = getDIOSLog(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *buf = 68157954;
    v25 = 36;
    v26 = 2080;
    v27 = "[DIDiskArb waitForDAIdleWithError:]";
    LODWORD(v22) = 18;
    v9 = _os_log_send_and_compose_impl(v8, &v23, 0, 0, &dword_248DE0000, v7, 0, "%.*s: Waiting for disk arbitration idle", buf, v22);

    if (v9)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = getDIOSLog(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v25 = 36;
      v26 = 2080;
      v27 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Waiting for disk arbitration idle", buf, 0x12u);
    }
  }

  *__error() = v4;
  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self daSession];
  DARegisterIdleCallback();
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    v12 = *MEMORY[0x277CBE640];
    do
    {
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      [currentRunLoop runMode:v12 beforeDate:v13];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  MEMORY[0x24C1ECEE0]([(DIDiskArb *)self daSession], _idleCallback, self);
  v14 = *__error();
  v15 = DIForwardLogs();
  if (v15)
  {
    v23 = 0;
    v17 = getDIOSLog(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    *buf = 68157954;
    v25 = 36;
    v26 = 2080;
    v27 = "[DIDiskArb waitForDAIdleWithError:]";
    LODWORD(v22) = 18;
    v19 = _os_log_send_and_compose_impl(v18, &v23, 0, 0, &dword_248DE0000, v17, 0, "%.*s: Disk arbitration idle callback received", buf, v22);

    if (v19)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v19);
      free(v19);
    }
  }

  else
  {
    v20 = getDIOSLog(v15, v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v25 = 36;
      v26 = 2080;
      v27 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&dword_248DE0000, v20, OS_LOG_TYPE_DEFAULT, "%.*s: Disk arbitration idle callback received", buf, 0x12u);
    }
  }

  *__error() = v14;

  return 1;
}

- (void)addDisappearedCallbackWithMountPoint:(id)point shadowMountPoints:(id)points delegate:(id)delegate
{
  v52 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  pointsCopy = points;
  delegateCopy = delegate;
  if (pointCopy)
  {
    [(DIDiskArb *)self setInputMountedOnURL:pointCopy];
    v37 = pointsCopy;
    [(DIDiskArb *)self setShadowMountedOnURLs:pointsCopy];
    v36 = delegateCopy;
    [(DIDiskArb *)self setDelegate:delegateCopy];
    v11 = *__error();
    v12 = DIForwardLogs();
    if (v12)
    {
      v44 = 0;
      v14 = getDIOSLog(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      path = [pointCopy path];
      *buf = 68158211;
      v47 = 77;
      v48 = 2080;
      v49 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
      v50 = 2113;
      v51 = path;
      v17 = _os_log_send_and_compose_impl(v15, &v44, 0, 0, &dword_248DE0000, v14, 0, "%.*s: Registering DiskDisappearedCallback for %{private}@", buf, 28);

      if (v17)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = getDIOSLog(v12, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [pointCopy path];
        *buf = 68158211;
        v47 = 77;
        v48 = 2080;
        v49 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
        v50 = 2113;
        v51 = path2;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@", buf, 0x1Cu);
      }
    }

    v39 = pointCopy;
    *__error() = v11;
  }

  else
  {
    if (![pointsCopy count])
    {
      goto LABEL_31;
    }

    v39 = 0;
    [(DIDiskArb *)self setInputMountedOnURL:0];
    v37 = pointsCopy;
    [(DIDiskArb *)self setShadowMountedOnURLs:pointsCopy];
    v36 = delegateCopy;
    [(DIDiskArb *)self setDelegate:delegateCopy];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  shadowMountedOnURLs = [(DIDiskArb *)self shadowMountedOnURLs];
  v21 = [shadowMountedOnURLs countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(shadowMountedOnURLs);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = *__error();
        v27 = DIForwardLogs();
        if (v27)
        {
          v44 = 0;
          v29 = getDIOSLog(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          path3 = [v25 path];
          *buf = 68158211;
          v47 = 77;
          v48 = 2080;
          v49 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
          v50 = 2113;
          v51 = path3;
          LODWORD(v35) = 28;
          v32 = _os_log_send_and_compose_impl(v30, &v44, 0, 0, &dword_248DE0000, v29, 0, "%.*s: Registering DiskDisappearedCallback for %{private}@ (shadow's mount point)", buf, v35);

          if (v32)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v32);
            free(v32);
          }
        }

        else
        {
          v33 = getDIOSLog(v27, v28);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            path4 = [v25 path];
            *buf = 68158211;
            v47 = 77;
            v48 = 2080;
            v49 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
            v50 = 2113;
            v51 = path4;
            _os_log_impl(&dword_248DE0000, v33, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@ (shadow's mount point)", buf, 0x1Cu);
          }
        }

        *__error() = v26;
      }

      v22 = [shadowMountedOnURLs countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v22);
  }

  DARegisterDiskDisappearedCallback([(DIDiskArb *)selfCopy daSession], 0, _diskDisappearedCallback, selfCopy);
  pointCopy = v39;
  delegateCopy = v36;
  pointsCopy = v37;
LABEL_31:
}

- (BOOL)ejectWithBSDName:(id)name error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = *__error();
  v8 = DIForwardLogs();
  if (v8)
  {
    v30 = 0;
    v10 = getDIOSLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *buf = 68158210;
    v32 = 36;
    v33 = 2080;
    v34 = "[DIDiskArb ejectWithBSDName:error:]";
    v35 = 2112;
    v36 = nameCopy;
    v12 = _os_log_send_and_compose_impl(v11, &v30, 0, 0, &dword_248DE0000, v10, 0, "%.*s: Ejecting %@", buf, 28);

    if (v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = getDIOSLog(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v32 = 36;
      v33 = 2080;
      v34 = "[DIDiskArb ejectWithBSDName:error:]";
      v35 = 2112;
      v36 = nameCopy;
      _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v14 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [nameCopy fileSystemRepresentation]);
  if (v14)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskEject(v14, 0, _daOperationCallback, self);
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      v16 = *MEMORY[0x277CBE640];
      do
      {
        v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
        [currentRunLoop runMode:v16 beforeDate:v17];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    operationError = [(DIDiskArb *)self operationError];

    if (operationError)
    {
      operationError2 = [(DIDiskArb *)self operationError];
      v20 = [DIError failWithInError:operationError2 outError:error];
    }

    else
    {
      v21 = *__error();
      v22 = DIForwardLogs();
      if (v22)
      {
        v30 = 0;
        v24 = getDIOSLog(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        *buf = 68158210;
        v32 = 36;
        v33 = 2080;
        v34 = "[DIDiskArb ejectWithBSDName:error:]";
        v35 = 2112;
        v36 = nameCopy;
        LODWORD(v29) = 28;
        v26 = _os_log_send_and_compose_impl(v25, &v30, 0, 0, &dword_248DE0000, v24, 0, "%.*s: %@ ejected successfully", buf, v29);

        if (v26)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v26);
          free(v26);
        }
      }

      else
      {
        v27 = getDIOSLog(v22, v23);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158210;
          v32 = 36;
          v33 = 2080;
          v34 = "[DIDiskArb ejectWithBSDName:error:]";
          v35 = 2112;
          v36 = nameCopy;
          _os_log_impl(&dword_248DE0000, v27, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
        }
      }

      *__error() = v21;
      v20 = 1;
    }
  }

  else
  {
    v20 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during eject" error:error];
  }

  return v20;
}

- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  argsCopy = args;
  lCopy = l;
  v14 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [nameCopy UTF8String]);
  if (!v14)
  {
    v15 = @"Failed to create DADisk during mount";
    v16 = 156;
    goto LABEL_5;
  }

  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self setOperationError:0];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *arguments = 0u;
  v49 = 0u;
  if ([argsCopy count] > 0x3F)
  {
    v15 = @"Too many mount arguments";
    v16 = 154;
LABEL_5:
    v17 = [DIError failWithEnumValue:v16 verboseInfo:v15 error:error];
    goto LABEL_37;
  }

  if ([argsCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [argsCopy objectAtIndexedSubscript:v18];
      arguments[v18] = v19;

      ++v18;
    }

    while (v18 < [argsCopy count]);
  }

  DADiskMountWithArguments(v14, lCopy, 0, _daOperationCallback, self, arguments);
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    v21 = *MEMORY[0x277CBE640];
    do
    {
      v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      [currentRunLoop runMode:v21 beforeDate:v22];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  operationError = [(DIDiskArb *)self operationError];

  v17 = operationError == 0;
  v24 = *__error();
  v25 = DIForwardLogs();
  if (operationError)
  {
    if (v25)
    {
      v40 = v24;
      v39 = lCopy;
      v42 = 0;
      v27 = getDIOSLog(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      operationError2 = [(DIDiskArb *)self operationError];
      *buf = 68158210;
      *&buf[4] = 64;
      v44 = 2080;
      v45 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v46 = 2112;
      v47 = operationError2;
      v30 = _os_log_send_and_compose_impl(v28, &v42, 0, 0, &dword_248DE0000, v27, 16, "%.*s: Mount error: %@", buf, 28);

      if (v30)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v30);
        free(v30);
      }

      lCopy = v39;
      v24 = v40;
    }

    else
    {
      v35 = getDIOSLog(v25, v26);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(DIDiskArb *)self operationError];
        v36 = v41 = v24;
        *buf = 0x4004100302;
        v44 = 2080;
        v45 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v46 = 2112;
        v47 = v36;
        _os_log_impl(&dword_248DE0000, v35, OS_LOG_TYPE_ERROR, "%.*s: Mount error: %@", buf, 0x1Cu);

        v24 = v41;
      }
    }

    *__error() = v24;
    if (error)
    {
      *error = [(DIDiskArb *)self operationError];
    }
  }

  else
  {
    if (v25)
    {
      v31 = v24;
      v42 = 0;
      v32 = getDIOSLog(v25, v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 64;
      v44 = 2080;
      v45 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v46 = 2114;
      v47 = nameCopy;
      v34 = _os_log_send_and_compose_impl(v33, &v42, 0, 0, &dword_248DE0000, v32, 0, "%.*s: %{public}@ mounted successfully", buf, 28);

      if (v34)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v34);
        free(v34);
      }

      v24 = v31;
    }

    else
    {
      v37 = getDIOSLog(v25, v26);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        *&buf[4] = 64;
        v44 = 2080;
        v45 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v46 = 2114;
        v47 = nameCopy;
        _os_log_impl(&dword_248DE0000, v37, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@ mounted successfully", buf, 0x1Cu);
      }
    }

    *__error() = v24;
  }

LABEL_37:
  return v17;
}

- (BOOL)unmountWithMountPoint:(id)point error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v7 = *__error();
  v8 = DIForwardLogs();
  if (v8)
  {
    v31 = 0;
    v10 = getDIOSLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *buf = 68158211;
    v33 = 41;
    v34 = 2080;
    v35 = "[DIDiskArb unmountWithMountPoint:error:]";
    v36 = 2113;
    v37 = pointCopy;
    v12 = _os_log_send_and_compose_impl(v11, &v31, 0, 0, &dword_248DE0000, v10, 0, "%.*s: Unmounting %{private}@", buf, 28);

    if (v12)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = getDIOSLog(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v33 = 41;
      v34 = 2080;
      v35 = "[DIDiskArb unmountWithMountPoint:error:]";
      v36 = 2113;
      v37 = pointCopy;
      _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:pointCopy];
  v15 = DADiskCreateFromVolumePath(0, [(DIDiskArb *)self daSession], v14);
  if (v15)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskUnmount(v15, 0, _daOperationCallback, self);
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      v17 = *MEMORY[0x277CBE640];
      do
      {
        v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
        [currentRunLoop runMode:v17 beforeDate:v18];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    operationError = [(DIDiskArb *)self operationError];

    if (operationError)
    {
      operationError2 = [(DIDiskArb *)self operationError];
      v21 = [DIError failWithInError:operationError2 outError:error];
    }

    else
    {
      v22 = *__error();
      v23 = DIForwardLogs();
      if (v23)
      {
        v31 = 0;
        v25 = getDIOSLog(v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *buf = 68158211;
        v33 = 41;
        v34 = 2080;
        v35 = "[DIDiskArb unmountWithMountPoint:error:]";
        v36 = 2113;
        v37 = pointCopy;
        LODWORD(v30) = 28;
        v27 = _os_log_send_and_compose_impl(v26, &v31, 0, 0, &dword_248DE0000, v25, 0, "%.*s: %{private}@ unmounted successfully", buf, v30);

        if (v27)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
          free(v27);
        }
      }

      else
      {
        v28 = getDIOSLog(v23, v24);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158211;
          v33 = 41;
          v34 = 2080;
          v35 = "[DIDiskArb unmountWithMountPoint:error:]";
          v36 = 2113;
          v37 = pointCopy;
          _os_log_impl(&dword_248DE0000, v28, OS_LOG_TYPE_DEFAULT, "%.*s: %{private}@ unmounted successfully", buf, 0x1Cu);
        }
      }

      *__error() = v22;
      v21 = 1;
    }
  }

  else
  {
    v21 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during unmount" error:error];
  }

  return v21;
}

- (id)copyDescriptionWithBSDName:(id)name
{
  nameCopy = name;
  daSession = [(DIDiskArb *)self daSession];
  fileSystemRepresentation = [nameCopy fileSystemRepresentation];

  v7 = DADiskCreateFromBSDName(0, daSession, fileSystemRepresentation);
  v8 = v7;
  if (v7)
  {
    v9 = DADiskCopyDescription(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DIDisappearedMountPointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end