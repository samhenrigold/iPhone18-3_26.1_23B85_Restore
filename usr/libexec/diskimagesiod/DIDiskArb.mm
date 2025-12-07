@interface DIDiskArb
+ (DIDiskArb)diskArbWithError:(id *)error;
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

+ (DIDiskArb)diskArbWithError:(id *)error
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

  if (!&_DASessionCreate)
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
  DASessionScheduleWithRunLoop(daSession, Current, kCFRunLoopDefaultMode);
LABEL_5:
  v8 = v5;
LABEL_8:
  v9 = v8;

  return v9;
}

- (void)stop
{
  context = self;
  objc_sync_enter(context);
  v2 = context;
  daSession = context->_daSession;
  if (daSession)
  {
    if (context->_inputMountedOnURL || context->_shadowMountedOnURLs)
    {
      DAUnregisterCallback(context->_daSession, sub_100029AC8, context);
      daSession = context->_daSession;
    }

    Current = CFRunLoopGetCurrent();
    DASessionUnscheduleFromRunLoop(daSession, Current, kCFRunLoopDefaultMode);
    CFRelease(context->_daSession);
    v2 = context;
    context->_daSession = 0;
  }

  objc_sync_exit(v2);
}

- (void)onDiskDisappearedWithDisk:(__DADisk *)disk
{
  if ([(DIDiskArb *)self daSession])
  {
    v5 = DADiskCopyDescription(disk);
    v6 = [(__CFDictionary *)v5 objectForKey:kDADiskDescriptionVolumePathKey];
    if (sub_1000E9608())
    {
      v7 = *__error();
      v8 = sub_1000E95F0();
      if (v8)
      {
        v56 = 0;
        v10 = sub_1000E957C(v8, v9);
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
        v12 = _os_log_send_and_compose_impl(v11, &v56, 0, 0, &_mh_execute_header, v10, 2, "%.*s: Reached with diskURL=%{public}@", buf, 28);

        if (v12)
        {
          fprintf(__stderrp, "%s\n", v12);
          free(v12);
        }
      }

      else
      {
        v20 = sub_1000E957C(v8, v9);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          v59 = 39;
          v60 = 2080;
          v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
          v62 = 2114;
          v63 = v6;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%.*s: Reached with diskURL=%{public}@", buf, 0x1Cu);
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
          v26 = sub_1000E95F0();
          if (v26)
          {
            v56 = 0;
            v28 = sub_1000E957C(v26, v27);
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
            v31 = _os_log_send_and_compose_impl(v29, &v56, 0, 0, &_mh_execute_header, v28, 16, "%.*s: Mount point %{private}@ disappeared", buf, v51);

            if (v31)
            {
              fprintf(__stderrp, "%s\n", v31);
              free(v31);
            }
          }

          else
          {
            v32 = sub_1000E957C(v26, v27);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              path2 = [v6 path];
              *buf = 68158211;
              v59 = 39;
              v60 = 2080;
              v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
              v62 = 2113;
              v63 = path2;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared", buf, 0x1Cu);
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
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v53 != v39)
              {
                objc_enumerationMutation(shadowMountedOnURLs2);
              }

              if ([v6 isEqual:*(*(&v52 + 1) + 8 * i)])
              {
                v41 = *__error();
                v42 = sub_1000E95F0();
                if (v42)
                {
                  v56 = 0;
                  v44 = sub_1000E957C(v42, v43);
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
                  v47 = _os_log_send_and_compose_impl(v45, &v56, 0, 0, &_mh_execute_header, v44, 16, "%.*s: Mount point %{private}@ disappeared (shadow's mount point)", buf, v51);

                  if (v47)
                  {
                    fprintf(__stderrp, "%s\n", v47);
                    free(v47);
                  }
                }

                else
                {
                  v48 = sub_1000E957C(v42, v43);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    path4 = [v6 path];
                    *buf = 68158211;
                    v59 = 39;
                    v60 = 2080;
                    v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                    v62 = 2113;
                    v63 = path4;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared (shadow's mount point)", buf, 0x1Cu);
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
    v14 = sub_1000E95F0();
    if (v14)
    {
      v56 = 0;
      v16 = sub_1000E957C(v14, v15);
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
      v18 = _os_log_send_and_compose_impl(v17, &v56, 0, 0, &_mh_execute_header, v16, 0, "%.*s: Ignoring, during shutdown", buf, v51);

      if (v18)
      {
        fprintf(__stderrp, "%s\n", v18);
        free(v18);
      }
    }

    else
    {
      v19 = sub_1000E957C(v14, v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v59 = 39;
        v60 = 2080;
        v61 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Ignoring, during shutdown", buf, 0x12u);
      }
    }

    *__error() = v13;
  }
}

- (BOOL)waitForDAIdleWithError:(id *)error
{
  v4 = *__error();
  v5 = sub_1000E95F0();
  if (v5)
  {
    v22 = 0;
    v7 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *buf = 68157954;
    v24 = 36;
    v25 = 2080;
    v26 = "[DIDiskArb waitForDAIdleWithError:]";
    LODWORD(v21) = 18;
    v9 = _os_log_send_and_compose_impl(v8, &v22, 0, 0, &_mh_execute_header, v7, 0, "%.*s: Waiting for disk arbitration idle", buf, v21);

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v24 = 36;
      v25 = 2080;
      v26 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Waiting for disk arbitration idle", buf, 0x12u);
    }
  }

  *__error() = v4;
  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self daSession];
  DARegisterIdleCallback();
  v11 = +[NSRunLoop currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    do
    {
      v12 = [NSDate dateWithTimeIntervalSinceNow:1.0];
      [v11 runMode:NSDefaultRunLoopMode beforeDate:v12];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  DAUnregisterCallback([(DIDiskArb *)self daSession], sub_10002A5C4, self);
  v13 = *__error();
  v14 = sub_1000E95F0();
  if (v14)
  {
    v22 = 0;
    v16 = sub_1000E957C(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *buf = 68157954;
    v24 = 36;
    v25 = 2080;
    v26 = "[DIDiskArb waitForDAIdleWithError:]";
    LODWORD(v21) = 18;
    v18 = _os_log_send_and_compose_impl(v17, &v22, 0, 0, &_mh_execute_header, v16, 0, "%.*s: Disk arbitration idle callback received", buf, v21);

    if (v18)
    {
      fprintf(__stderrp, "%s\n", v18);
      free(v18);
    }
  }

  else
  {
    v19 = sub_1000E957C(v14, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v24 = 36;
      v25 = 2080;
      v26 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%.*s: Disk arbitration idle callback received", buf, 0x12u);
    }
  }

  *__error() = v13;

  return 1;
}

- (void)addDisappearedCallbackWithMountPoint:(id)point shadowMountPoints:(id)points delegate:(id)delegate
{
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
    v12 = sub_1000E95F0();
    if (v12)
    {
      v44 = 0;
      v14 = sub_1000E957C(v12, v13);
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
      v17 = _os_log_send_and_compose_impl(v15, &v44, 0, 0, &_mh_execute_header, v14, 0, "%.*s: Registering DiskDisappearedCallback for %{private}@", buf, 28);

      if (v17)
      {
        fprintf(__stderrp, "%s\n", v17);
        free(v17);
      }
    }

    else
    {
      v18 = sub_1000E957C(v12, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [pointCopy path];
        *buf = 68158211;
        v47 = 77;
        v48 = 2080;
        v49 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
        v50 = 2113;
        v51 = path2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@", buf, 0x1Cu);
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
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(shadowMountedOnURLs);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = *__error();
        v27 = sub_1000E95F0();
        if (v27)
        {
          v44 = 0;
          v29 = sub_1000E957C(v27, v28);
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
          v32 = _os_log_send_and_compose_impl(v30, &v44, 0, 0, &_mh_execute_header, v29, 0, "%.*s: Registering DiskDisappearedCallback for %{private}@ (shadow's mount point)", buf, v35);

          if (v32)
          {
            fprintf(__stderrp, "%s\n", v32);
            free(v32);
          }
        }

        else
        {
          v33 = sub_1000E957C(v27, v28);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            path4 = [v25 path];
            *buf = 68158211;
            v47 = 77;
            v48 = 2080;
            v49 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
            v50 = 2113;
            v51 = path4;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@ (shadow's mount point)", buf, 0x1Cu);
          }
        }

        *__error() = v26;
      }

      v22 = [shadowMountedOnURLs countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v22);
  }

  DARegisterDiskDisappearedCallback([(DIDiskArb *)selfCopy daSession], 0, sub_100029AC8, selfCopy);
  pointCopy = v39;
  delegateCopy = v36;
  pointsCopy = v37;
LABEL_31:
}

- (BOOL)ejectWithBSDName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = *__error();
  v8 = sub_1000E95F0();
  if (v8)
  {
    v29 = 0;
    v10 = sub_1000E957C(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *buf = 68158210;
    v31 = 36;
    v32 = 2080;
    v33 = "[DIDiskArb ejectWithBSDName:error:]";
    v34 = 2112;
    v35 = nameCopy;
    v12 = _os_log_send_and_compose_impl(v11, &v29, 0, 0, &_mh_execute_header, v10, 0, "%.*s: Ejecting %@", buf, 28);

    if (v12)
    {
      fprintf(__stderrp, "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = sub_1000E957C(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v31 = 36;
      v32 = 2080;
      v33 = "[DIDiskArb ejectWithBSDName:error:]";
      v34 = 2112;
      v35 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v14 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [nameCopy fileSystemRepresentation]);
  if (v14)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskEject(v14, 0, sub_10002AF10, self);
    v15 = +[NSRunLoop currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      do
      {
        v16 = [NSDate dateWithTimeIntervalSinceNow:1.0];
        [v15 runMode:NSDefaultRunLoopMode beforeDate:v16];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    operationError = [(DIDiskArb *)self operationError];

    if (operationError)
    {
      operationError2 = [(DIDiskArb *)self operationError];
      v19 = [DIError failWithInError:operationError2 outError:error];
    }

    else
    {
      v20 = *__error();
      v21 = sub_1000E95F0();
      if (v21)
      {
        v29 = 0;
        v23 = sub_1000E957C(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        *buf = 68158210;
        v31 = 36;
        v32 = 2080;
        v33 = "[DIDiskArb ejectWithBSDName:error:]";
        v34 = 2112;
        v35 = nameCopy;
        LODWORD(v28) = 28;
        v25 = _os_log_send_and_compose_impl(v24, &v29, 0, 0, &_mh_execute_header, v23, 0, "%.*s: %@ ejected successfully", buf, v28);

        if (v25)
        {
          fprintf(__stderrp, "%s\n", v25);
          free(v25);
        }
      }

      else
      {
        v26 = sub_1000E957C(v21, v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158210;
          v31 = 36;
          v32 = 2080;
          v33 = "[DIDiskArb ejectWithBSDName:error:]";
          v34 = 2112;
          v35 = nameCopy;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
        }
      }

      *__error() = v20;
      v19 = 1;
    }
  }

  else
  {
    v19 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during eject" error:error];
  }

  return v19;
}

- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error
{
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
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *arguments = 0u;
  v48 = 0u;
  if ([argsCopy count] > 0x3F)
  {
    v15 = @"Too many mount arguments";
    v16 = 154;
LABEL_5:
    v17 = [DIError failWithEnumValue:v16 verboseInfo:v15 error:error];
    goto LABEL_36;
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

  DADiskMountWithArguments(v14, lCopy, 0, sub_10002AF10, self, arguments);
  v20 = +[NSRunLoop currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    do
    {
      v21 = [NSDate dateWithTimeIntervalSinceNow:1.0];
      [v20 runMode:NSDefaultRunLoopMode beforeDate:v21];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  operationError = [(DIDiskArb *)self operationError];

  v17 = operationError == 0;
  v23 = *__error();
  v24 = sub_1000E95F0();
  if (operationError)
  {
    if (v24)
    {
      v39 = v23;
      v38 = lCopy;
      v41 = 0;
      v26 = sub_1000E957C(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      operationError2 = [(DIDiskArb *)self operationError];
      *buf = 68158210;
      *&buf[4] = 64;
      v43 = 2080;
      v44 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v45 = 2112;
      v46 = operationError2;
      v29 = _os_log_send_and_compose_impl(v27, &v41, 0, 0, &_mh_execute_header, v26, 16, "%.*s: Mount error: %@", buf, 28);

      if (v29)
      {
        fprintf(__stderrp, "%s\n", v29);
        free(v29);
      }

      lCopy = v38;
      v23 = v39;
    }

    else
    {
      v34 = sub_1000E957C(v24, v25);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(DIDiskArb *)self operationError];
        v35 = v40 = v23;
        *buf = 0x4004100302;
        v43 = 2080;
        v44 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v45 = 2112;
        v46 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%.*s: Mount error: %@", buf, 0x1Cu);

        v23 = v40;
      }
    }

    *__error() = v23;
    if (error)
    {
      *error = [(DIDiskArb *)self operationError];
    }
  }

  else
  {
    if (v24)
    {
      v30 = v23;
      v41 = 0;
      v31 = sub_1000E957C(v24, v25);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      *buf = 68158210;
      *&buf[4] = 64;
      v43 = 2080;
      v44 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v45 = 2114;
      v46 = nameCopy;
      v33 = _os_log_send_and_compose_impl(v32, &v41, 0, 0, &_mh_execute_header, v31, 0, "%.*s: %{public}@ mounted successfully", buf, 28);

      if (v33)
      {
        fprintf(__stderrp, "%s\n", v33);
        free(v33);
      }

      v23 = v30;
    }

    else
    {
      v36 = sub_1000E957C(v24, v25);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        *&buf[4] = 64;
        v43 = 2080;
        v44 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v45 = 2114;
        v46 = nameCopy;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@ mounted successfully", buf, 0x1Cu);
      }
    }

    *__error() = v23;
  }

LABEL_36:
  return v17;
}

- (BOOL)unmountWithMountPoint:(id)point error:(id *)error
{
  pointCopy = point;
  v7 = *__error();
  v8 = sub_1000E95F0();
  if (v8)
  {
    v30 = 0;
    v10 = sub_1000E957C(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *buf = 68158211;
    v32 = 41;
    v33 = 2080;
    v34 = "[DIDiskArb unmountWithMountPoint:error:]";
    v35 = 2113;
    v36 = pointCopy;
    v12 = _os_log_send_and_compose_impl(v11, &v30, 0, 0, &_mh_execute_header, v10, 0, "%.*s: Unmounting %{private}@", buf, 28);

    if (v12)
    {
      fprintf(__stderrp, "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = sub_1000E957C(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v32 = 41;
      v33 = 2080;
      v34 = "[DIDiskArb unmountWithMountPoint:error:]";
      v35 = 2113;
      v36 = pointCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v14 = [NSURL fileURLWithPath:pointCopy];
  v15 = DADiskCreateFromVolumePath(0, [(DIDiskArb *)self daSession], v14);
  if (v15)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskUnmount(v15, 0, sub_10002AF10, self);
    v16 = +[NSRunLoop currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      do
      {
        v17 = [NSDate dateWithTimeIntervalSinceNow:1.0];
        [v16 runMode:NSDefaultRunLoopMode beforeDate:v17];
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
      v22 = sub_1000E95F0();
      if (v22)
      {
        v30 = 0;
        v24 = sub_1000E957C(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        *buf = 68158211;
        v32 = 41;
        v33 = 2080;
        v34 = "[DIDiskArb unmountWithMountPoint:error:]";
        v35 = 2113;
        v36 = pointCopy;
        LODWORD(v29) = 28;
        v26 = _os_log_send_and_compose_impl(v25, &v30, 0, 0, &_mh_execute_header, v24, 0, "%.*s: %{private}@ unmounted successfully", buf, v29);

        if (v26)
        {
          fprintf(__stderrp, "%s\n", v26);
          free(v26);
        }
      }

      else
      {
        v27 = sub_1000E957C(v22, v23);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158211;
          v32 = 41;
          v33 = 2080;
          v34 = "[DIDiskArb unmountWithMountPoint:error:]";
          v35 = 2113;
          v36 = pointCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%.*s: %{private}@ unmounted successfully", buf, 0x1Cu);
        }
      }

      *__error() = v21;
      v20 = 1;
    }
  }

  else
  {
    v20 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during unmount" error:error];
  }

  return v20;
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