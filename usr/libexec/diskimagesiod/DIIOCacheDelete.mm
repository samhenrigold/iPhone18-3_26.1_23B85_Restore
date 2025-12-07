@interface DIIOCacheDelete
- (BOOL)registerPeriodicCallback;
- (BOOL)setupNewConnection:(id)connection;
- (DIIOCacheDelete)initWithDebugServiceName:(id)name;
- (id)onPeriodicWithInfo:(id)info urgency:(int)urgency;
- (unint64_t)eraseOldCacheFiles;
- (void)restartExitTimer;
- (void)setupExitTimer:(id)timer;
- (void)setupSigtermHandler;
@end

@implementation DIIOCacheDelete

- (DIIOCacheDelete)initWithDebugServiceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = DIIOCacheDelete;
  v6 = [(DIBaseServiceDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugServiceName, name);
    [(DIIOCacheDelete *)v7 setupSigtermHandler];
  }

  return v7;
}

- (void)setupSigtermHandler
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  sigtermHandler = self->_sigtermHandler;
  self->_sigtermHandler = v3;

  dispatch_source_set_event_handler(self->_sigtermHandler, &stru_1001F56A8);
  v5 = self->_sigtermHandler;

  dispatch_resume(v5);
}

- (void)restartExitTimer
{
  exitTimer = [(DIIOCacheDelete *)self exitTimer];

  if (exitTimer)
  {
    exitTimer2 = [(DIIOCacheDelete *)self exitTimer];
    [exitTimer2 invalidate];

    [(DIIOCacheDelete *)self setExitTimer:0];
  }

  [(DIIOCacheDelete *)self performSelectorOnMainThread:"setupExitTimer:" withObject:0 waitUntilDone:0];
}

- (void)setupExitTimer:(id)timer
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000027D4;
  v6[3] = &unk_1001F56D0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:20.0];
  [(DIIOCacheDelete *)self setExitTimer:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (unint64_t)eraseOldCacheFiles
{
  if (confstr(65538, v105, 0x400uLL))
  {
    v2 = [NSURL fileURLWithFileSystemRepresentation:v105 isDirectory:1 relativeToURL:0];
    v3 = [NSString stringWithFormat:@"^%@.*\\.%@$", @"diskimage_", @"cache"];
    v82 = [NSRegularExpression regularExpressionWithPattern:v3 options:0 error:0];
    v4 = +[NSFileManager defaultManager];
    v104[0] = NSURLContentAccessDateKey;
    v104[1] = NSURLFileSizeKey;
    v5 = NSURLNameKey;
    v104[2] = NSURLNameKey;
    v6 = [NSArray arrayWithObjects:v104 count:3];
    v7 = [v4 enumeratorAtURL:v2 includingPropertiesForKeys:v6 options:5 errorHandler:&stru_1001F5710];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v8)
    {
      v9 = v8;
      v76 = v3;
      v77 = v2;
      v80 = 0;
      v79 = 0;
      HIDWORD(v78) = 0;
      v81 = 0;
      v10 = *v92;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v92 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v91 + 1) + 8 * v11);
          v90 = 0;
          v13 = [v12 getResourceValue:&v90 forKey:v5 error:0];
          v14 = v90;
          v15 = v14;
          if (v13 && [v82 numberOfMatchesInString:v14 options:0 range:{0, objc_msgSend(v14, "length")}])
          {
            v88 = 0;
            v89 = 0;
            v16 = [v12 getResourceValue:&v89 forKey:NSURLContentAccessDateKey error:&v88];
            v17 = v89;
            v18 = v88;
            v84 = v17;
            if (v16)
            {
              v86 = 0;
              v87 = 0;
              v19 = [v12 getResourceValue:&v87 forKey:NSURLFileSizeKey error:&v86];
              v20 = v87;
              v21 = v86;

              if (v19)
              {
                ++v81;
                v80 += [v20 unsignedLongLongValue];
                [v17 timeIntervalSinceNow];
                v23 = v22;
                v24 = *__error();
                v25 = sub_1000E95F0();
                if (v23 >= -259200.0)
                {
                  if (v25)
                  {
                    v95 = 0;
                    v41 = sub_1000E957C(v25, v26);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      v42 = 3;
                    }

                    else
                    {
                      v42 = 2;
                    }

                    *buf = 68158466;
                    *&buf[4] = 37;
                    v97 = 2080;
                    v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                    v99 = 2114;
                    *v100 = v12;
                    *&v100[8] = 2048;
                    *&v100[10] = v23 / -86400.0;
                    LODWORD(v74) = 38;
                    v43 = _os_log_send_and_compose_impl(v42, &v95, 0, 0, &_mh_execute_header, v41, 0, "%.*s: Skipping %{public}@ (last access time was %.2f days ago)", buf, v74);

                    if (v43)
                    {
                      fprintf(__stderrp, "%s\n", v43);
                      free(v43);
                    }

                    v5 = NSURLNameKey;
                  }

                  else
                  {
                    v47 = sub_1000E957C(v25, v26);
                    v5 = NSURLNameKey;
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68158466;
                      *&buf[4] = 37;
                      v97 = 2080;
                      v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                      v99 = 2114;
                      *v100 = v12;
                      *&v100[8] = 2048;
                      *&v100[10] = v23 / -86400.0;
                      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%.*s: Skipping %{public}@ (last access time was %.2f days ago)", buf, 0x26u);
                    }
                  }

                  *__error() = v24;
                  v18 = v21;
                  goto LABEL_33;
                }

                if (v25)
                {
                  v95 = 0;
                  v27 = sub_1000E957C(v25, v26);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    v28 = 3;
                  }

                  else
                  {
                    v28 = 2;
                  }

                  *buf = 68158466;
                  *&buf[4] = 37;
                  v97 = 2080;
                  v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                  v99 = 2114;
                  *v100 = v12;
                  *&v100[8] = 2048;
                  *&v100[10] = v23 / -86400.0;
                  LODWORD(v74) = 38;
                  v29 = _os_log_send_and_compose_impl(v28, &v95, 0, 0, &_mh_execute_header, v27, 0, "%.*s: Last access time expired for %{public}@ (%.2f days), removing", buf, v74);

                  if (v29)
                  {
                    fprintf(__stderrp, "%s\n", v29);
                    free(v29);
                  }
                }

                else
                {
                  v44 = sub_1000E957C(v25, v26);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68158466;
                    *&buf[4] = 37;
                    v97 = 2080;
                    v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                    v99 = 2114;
                    *v100 = v12;
                    *&v100[8] = 2048;
                    *&v100[10] = v23 / -86400.0;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%.*s: Last access time expired for %{public}@ (%.2f days), removing", buf, 0x26u);
                  }
                }

                *__error() = v24;
                v45 = +[NSFileManager defaultManager];
                v85 = v21;
                v46 = [v45 removeItemAtURL:v12 error:&v85];
                v18 = v85;

                if (v46)
                {
                  ++HIDWORD(v78);
                  v79 += [v20 unsignedLongLongValue];
                  v5 = NSURLNameKey;
                  goto LABEL_33;
                }

                v30 = *__error();
                v48 = sub_1000E95F0();
                if (v48)
                {
                  v95 = 0;
                  v33 = sub_1000E957C(v48, v49);
                  v50 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
                  *buf = 68158466;
                  if (v50)
                  {
                    v51 = 3;
                  }

                  else
                  {
                    v51 = 2;
                  }

                  *&buf[4] = 37;
                  v97 = 2080;
                  v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                  v99 = 2114;
                  *v100 = v12;
                  *&v100[8] = 2114;
                  *&v100[10] = v18;
                  LODWORD(v74) = 38;
                  v36 = _os_log_send_and_compose_impl(v51, &v95, 0, 0, &_mh_execute_header, v33, 16, "%.*s: Failed to remove %{public}@: %{public}@", buf, v74);
                  goto LABEL_25;
                }

                v38 = sub_1000E957C(v48, v49);
                v5 = NSURLNameKey;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 68158466;
                  *&buf[4] = 37;
                  v97 = 2080;
                  v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                  v99 = 2114;
                  *v100 = v12;
                  *&v100[8] = 2114;
                  *&v100[10] = v18;
                  v39 = v38;
                  v40 = "%.*s: Failed to remove %{public}@: %{public}@";
LABEL_30:
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v40, buf, 0x26u);
                }

                goto LABEL_31;
              }

              v18 = v21;
              v5 = NSURLNameKey;
            }

            else
            {
              v20 = 0;
            }

            v30 = *__error();
            v31 = sub_1000E95F0();
            if (v31)
            {
              v95 = 0;
              v33 = sub_1000E957C(v31, v32);
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
              *buf = 68158466;
              if (v34)
              {
                v35 = 3;
              }

              else
              {
                v35 = 2;
              }

              *&buf[4] = 37;
              v97 = 2080;
              v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
              v99 = 2114;
              *v100 = v12;
              *&v100[8] = 2114;
              *&v100[10] = v18;
              LODWORD(v74) = 38;
              v36 = _os_log_send_and_compose_impl(v35, &v95, 0, 0, &_mh_execute_header, v33, 16, "%.*s: Failed retrieving property for %{public}@: %{public}@", buf, v74);
LABEL_25:
              v37 = v36;

              if (v37)
              {
                fprintf(__stderrp, "%s\n", v37);
                free(v37);
              }

              v5 = NSURLNameKey;
            }

            else
            {
              v38 = sub_1000E957C(v31, v32);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 68158466;
                *&buf[4] = 37;
                v97 = 2080;
                v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
                v99 = 2114;
                *v100 = v12;
                *&v100[8] = 2114;
                *&v100[10] = v18;
                v39 = v38;
                v40 = "%.*s: Failed retrieving property for %{public}@: %{public}@";
                goto LABEL_30;
              }

LABEL_31:
            }

            *__error() = v30;
LABEL_33:
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v52 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
        v9 = v52;
        if (!v52)
        {
          v53 = v80 >> 20;
          v3 = v76;
          v2 = v77;
          v54 = v79;
          v55 = v81;
          v56 = HIDWORD(v78);
          goto LABEL_68;
        }
      }
    }

    v53 = 0;
    v54 = 0;
    v56 = 0;
    v55 = 0;
LABEL_68:

    v63 = *__error();
    v64 = sub_1000E95F0();
    if (v64)
    {
      v95 = 0;
      v66 = sub_1000E957C(v64, v65);
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
      *buf = 0x2504100602;
      v97 = 2080;
      v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
      if (v67)
      {
        v68 = 3;
      }

      else
      {
        v68 = 2;
      }

      v99 = 1024;
      *v100 = v56;
      *&v100[4] = 2048;
      *&v100[6] = v54 >> 20;
      *&v100[14] = 1024;
      *&v100[16] = v55;
      v101 = 2048;
      v102 = v53;
      LODWORD(v74) = 50;
      v69 = _os_log_send_and_compose_impl(v68, &v95, 0, 0, &_mh_execute_header, v66, 0, "%.*s: Summary: removed %u files (%llu MB) out of %u files (%llu MB) of cache", buf, v74, v75, v76, v77, v78);

      if (v69)
      {
        fprintf(__stderrp, "%s\n", v69);
        free(v69);
      }
    }

    else
    {
      v70 = sub_1000E957C(v64, v65);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x2504100602;
        v97 = 2080;
        v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
        v99 = 1024;
        *v100 = v56;
        *&v100[4] = 2048;
        *&v100[6] = v54 >> 20;
        *&v100[14] = 1024;
        *&v100[16] = v55;
        v101 = 2048;
        v102 = v53;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%.*s: Summary: removed %u files (%llu MB) out of %u files (%llu MB) of cache", buf, 0x32u);
      }
    }

    *__error() = v63;
  }

  else
  {
    v57 = *__error();
    v58 = sub_1000E95F0();
    if (v58)
    {
      v95 = 0;
      v60 = sub_1000E957C(v58, v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      *buf = 68157954;
      *&buf[4] = 37;
      v97 = 2080;
      v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
      LODWORD(v73) = 18;
      v62 = _os_log_send_and_compose_impl(v61, &v95, 0, 0, &_mh_execute_header, v60, 16, "%.*s: Could not determine cache dir", buf, v73);

      if (v62)
      {
        fprintf(__stderrp, "%s\n", v62);
        free(v62);
      }
    }

    else
    {
      v71 = sub_1000E957C(v58, v59);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        *&buf[4] = 37;
        v97 = 2080;
        v98 = "[DIIOCacheDelete eraseOldCacheFiles]";
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%.*s: Could not determine cache dir", buf, 0x12u);
      }
    }

    v54 = 0;
    *__error() = v57;
  }

  return v54;
}

- (id)onPeriodicWithInfo:(id)info urgency:(int)urgency
{
  v6 = [info objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = *__error();
  v8 = sub_1000E95F0();
  if (v8)
  {
    v17 = 0;
    v10 = sub_1000E957C(v8, v9);
    *buf = 68158467;
    v21 = 46;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v22 = 2080;
    v23 = "[DIIOCacheDelete onPeriodicWithInfo:urgency:]";
    v24 = 1024;
    urgencyCopy2 = urgency;
    v26 = 2113;
    v27 = v6;
    v12 = _os_log_send_and_compose_impl(v11, &v17, 0, 0, &_mh_execute_header, v10, 0, "%.*s: Reached periodic cache delete with urgency %d, volume: %{private}@", buf, 34);

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
      *buf = 68158467;
      v21 = 46;
      v22 = 2080;
      v23 = "[DIIOCacheDelete onPeriodicWithInfo:urgency:]";
      v24 = 1024;
      urgencyCopy2 = urgency;
      v26 = 2113;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Reached periodic cache delete with urgency %d, volume: %{private}@", buf, 0x22u);
    }
  }

  *__error() = v7;
  v14 = [NSNumber numberWithUnsignedLongLong:[(DIIOCacheDelete *)self eraseOldCacheFiles]];
  [(DIIOCacheDelete *)self restartExitTimer];
  v18[0] = @"CACHE_DELETE_VOLUME";
  v18[1] = @"CACHE_DELETE_AMOUNT";
  v19[0] = v6;
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v15;
}

- (BOOL)registerPeriodicCallback
{
  objc_initWeak(&location, self);
  v26[1] = &_CacheDeleteRegisterInfoCallbacks;
  if (&_CacheDeleteRegisterInfoCallbacks)
  {
    objc_copyWeak(&v25, &location);
    v2 = CacheDeleteRegisterInfoCallbacks();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = *__error();
      v5 = sub_1000E95F0();
      if (!v5)
      {
        v20 = sub_1000E957C(v5, v6);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v29 = 43;
          v30 = 2080;
          v31 = "[DIIOCacheDelete registerPeriodicCallback]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%.*s: CacheDelete registration failed", buf, 0x12u);
        }

        goto LABEL_32;
      }

      v26[0] = 0;
      v7 = sub_1000E957C(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      *buf = 68157954;
      v29 = 43;
      v30 = 2080;
      v31 = "[DIIOCacheDelete registerPeriodicCallback]";
      LODWORD(v24) = 18;
      v9 = _os_log_send_and_compose_impl(v8, v26, 0, 0, &_mh_execute_header, v7, 16, "%.*s: CacheDelete registration failed", buf, v24);

      if (v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = *__error();
      v16 = sub_1000E95F0();
      if (!v16)
      {
        v22 = sub_1000E957C(v16, v17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v29 = 43;
          v30 = 2080;
          v31 = "[DIIOCacheDelete registerPeriodicCallback]";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%.*s: Cache delete periodic registered", buf, 0x12u);
        }

        goto LABEL_32;
      }

      v26[0] = 0;
      v18 = sub_1000E957C(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *buf = 68157954;
      v29 = 43;
      v30 = 2080;
      v31 = "[DIIOCacheDelete registerPeriodicCallback]";
      LODWORD(v24) = 18;
      v9 = _os_log_send_and_compose_impl(v19, v26, 0, 0, &_mh_execute_header, v18, 0, "%.*s: Cache delete periodic registered", buf, v24);

      if (v9)
      {
LABEL_20:
        fprintf(__stderrp, "%s\n", v9);
        free(v9);
      }
    }

LABEL_32:
    *__error() = v4;
    objc_destroyWeak(&v25);
    goto LABEL_33;
  }

  v10 = *__error();
  v11 = sub_1000E95F0();
  if (v11)
  {
    v26[0] = 0;
    v13 = sub_1000E957C(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *buf = 68157954;
    v29 = 43;
    v30 = 2080;
    v31 = "[DIIOCacheDelete registerPeriodicCallback]";
    LODWORD(v24) = 18;
    v15 = _os_log_send_and_compose_impl(v14, v26, 0, 0, &_mh_execute_header, v13, 16, "%.*s: CacheDelete is not supported, daemon was launched unexpectedly without an instance ID", buf, v24);

    if (v15)
    {
      fprintf(__stderrp, "%s\n", v15);
      free(v15);
    }
  }

  else
  {
    v21 = sub_1000E957C(v11, v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v29 = 43;
      v30 = 2080;
      v31 = "[DIIOCacheDelete registerPeriodicCallback]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%.*s: CacheDelete is not supported, daemon was launched unexpectedly without an instance ID", buf, 0x12u);
    }
  }

  v3 = 0;
  *__error() = v10;
LABEL_33:
  objc_destroyWeak(&location);
  return v3;
}

- (BOOL)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = *__error();
  v5 = sub_1000E95F0();
  if (v5)
  {
    v12 = 0;
    v7 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *buf = 68157954;
    v14 = 38;
    v15 = 2080;
    v16 = "[DIIOCacheDelete setupNewConnection:]";
    LODWORD(v11) = 18;
    v9 = _os_log_send_and_compose_impl(v8, &v12, 0, 0, &_mh_execute_header, v7, 16, "%.*s: Connection to cache delete instance is not allowed, quitting", buf, v11);

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v14 = 38;
      v15 = 2080;
      v16 = "[DIIOCacheDelete setupNewConnection:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%.*s: Connection to cache delete instance is not allowed, quitting", buf, 0x12u);
    }
  }

  *__error() = v4;
  exit(0);
}

@end