@interface CPLTask
+ (BOOL)waitForAllLongTasksToFinish;
+ (id)taskWithCommand:(id)command;
+ (id)taskWithCommandAndArguments:(id)arguments;
+ (void)_enqueueTaskCompletionForLaterWait:(id)wait;
- (CPLTask)init;
- (id)_waitDeadline;
- (int64_t)exec;
- (int64_t)executeWithPIDHandler:(id)handler endHandler:(id)endHandler;
- (void)_updateWaitDeadline;
- (void)resetRedirect;
- (void)setCommand:(id)command;
- (void)setCommandWithArguments:(id)arguments;
@end

@implementation CPLTask

+ (void)_enqueueTaskCompletionForLaterWait:(id)wait
{
  waitCopy = wait;
  v4 = qword_100040BA0;
  v7 = waitCopy;
  if (!qword_100040BA0)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = qword_100040BA0;
    qword_100040BA0 = v5;

    waitCopy = v7;
    v4 = qword_100040BA0;
  }

  [v4 addObject:waitCopy];
}

+ (BOOL)waitForAllLongTasksToFinish
{
  if (![qword_100040BA0 count])
  {
    return 1;
  }

  v2 = dispatch_group_create();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = qword_100040BA0;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_group_async(v2, *(*(*(&v11 + 1) + 8 * i) + 48), &stru_100034BA8);
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = dispatch_time(0, 60000000000);
  v9 = dispatch_group_wait(v2, v8) == 0;

  return v9;
}

- (CPLTask)init
{
  v3.receiver = self;
  v3.super_class = CPLTask;
  result = [(CPLTask *)&v3 init];
  if (result)
  {
    result->_redirectStdoutToFileDescriptor = -1;
    result->_redirectStderrToFileDescriptor = -1;
    result->_waitInBackgroundIfTaskTimesOut = 1;
    result->_waitDeadlineLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)taskWithCommand:(id)command
{
  commandCopy = command;
  v5 = [[NSString alloc] initWithFormat:commandCopy arguments:&v9];

  v6 = [self taskWithCommandAndArguments:v5];

  return v6;
}

+ (id)taskWithCommandAndArguments:(id)arguments
{
  argumentsCopy = arguments;
  v4 = objc_alloc_init(CPLTask);
  [(CPLTask *)v4 setCommandWithArguments:argumentsCopy];

  return v4;
}

- (void)setCommand:(id)command
{
  commandCopy = command;
  v5 = [[NSString alloc] initWithFormat:commandCopy arguments:&v6];

  [(CPLTask *)self setCommandWithArguments:v5];
}

- (void)setCommandWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v4 = +[NSMutableArray array];
  if (![argumentsCopy length])
  {
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = 1;
  do
  {
    v11 = [argumentsCopy characterAtIndex:v6];
    if (v11 != 39 || (v8 & 1) != 0)
    {
      if ((v11 != 34) | v5 & 1)
      {
        v13 = v11 != 32;
        v12 = argumentsCopy;
        if ((v13 | v5 | v8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = argumentsCopy;
        if ((v8 & 1) == 0)
        {
          v5 = 0;
          v8 = 1;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = argumentsCopy;
      if ((v5 & 1) == 0)
      {
        v8 = 0;
        v5 = 1;
LABEL_17:
        v9 = v6;
LABEL_18:
        v17 = v10;
        goto LABEL_19;
      }
    }

    if (v10 != 1)
    {
      v14 = [v12 substringWithRange:{v7, v10 - 1}];
      v15 = v14;
      if (v9 != -1)
      {
        v16 = [v14 stringByReplacingCharactersInRange:v9 - v7 withString:{1, &stru_100035A18}];

        v15 = v16;
      }

      [v4 addObject:v15];

      v12 = argumentsCopy;
    }

    v5 = 0;
    v8 = 0;
    v17 = 0;
    v7 += v10;
    v9 = -1;
LABEL_19:
    v10 = v17 + 1;
    ++v6;
  }

  while (v6 < [v12 length]);
  if (v17)
  {
    v18 = [argumentsCopy substringWithRange:{v7, v17}];
    [v4 addObject:v18];
  }

LABEL_22:
  [(CPLTask *)self setArgv:v4];
}

- (void)_updateWaitDeadline
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10000422C;
  v6 = &unk_100034BD0;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_waitDeadlineLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_waitDeadlineLock);
}

- (id)_waitDeadline
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004444;
  v18 = sub_100004454;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10000445C;
  v11 = &unk_100034BF8;
  selfCopy = self;
  v13 = &v14;
  v3 = v9;
  os_unfair_lock_lock(&self->_waitDeadlineLock);
  v10(v3);
  os_unfair_lock_unlock(&self->_waitDeadlineLock);

  v4 = v15[5];
  if (!v4)
  {
    v5 = +[NSDate distantFuture];
    v6 = v15[5];
    v15[5] = v5;

    v4 = v15[5];
  }

  v7 = v4;
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (int64_t)executeWithPIDHandler:(id)handler endHandler:(id)endHandler
{
  handlerCopy = handler;
  endHandlerCopy = endHandler;
  argv = [(CPLTask *)self argv];
  if (![argv count])
  {
    sub_10001DFDC();
  }

  argv2 = [(CPLTask *)self argv];
  v10 = malloc_type_malloc(8 * [argv2 count] + 8, 0x10040436913F5uLL);

  argv3 = [(CPLTask *)self argv];
  v12 = [argv3 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      argv4 = [(CPLTask *)self argv];
      v15 = [argv4 objectAtIndex:v13];
      v10[v13] = strdup([v15 UTF8String]);

      ++v13;
      argv5 = [(CPLTask *)self argv];
      v17 = [argv5 count];
    }

    while (v13 < v17);
  }

  argv6 = [(CPLTask *)self argv];
  v10[[argv6 count]] = 0;

  v19 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  if (posix_spawn_file_actions_init(v19))
  {
    sub_10001DBF0(buf);
LABEL_65:
    v81 = *buf;
    goto LABEL_66;
  }

  redirectStdoutToFileAtPath = [(CPLTask *)self redirectStdoutToFileAtPath];
  v21 = [redirectStdoutToFileAtPath length];

  if (v21)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_100004E20(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *v10;
        redirectStdoutToFileAtPath2 = [(CPLTask *)self redirectStdoutToFileAtPath];
        *buf = 136315394;
        *&buf[4] = v24;
        v98 = 2112;
        v99[0] = redirectStdoutToFileAtPath2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Setting up stdout for %s to %@", buf, 0x16u);
      }
    }

    redirectStdoutToFileAtPath3 = [(CPLTask *)self redirectStdoutToFileAtPath];
    v27 = posix_spawn_file_actions_addopen(v19, 1, [redirectStdoutToFileAtPath3 fileSystemRepresentation], 513, 0x1B6u);

    if (v27)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001DD48(v28);
      }

      goto LABEL_63;
    }
  }

  redirectStderrToFileAtPath = [(CPLTask *)self redirectStderrToFileAtPath];
  v30 = [redirectStderrToFileAtPath length];

  if (v30)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v32 = sub_100004E20(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = *v10;
        redirectStderrToFileAtPath2 = [(CPLTask *)self redirectStderrToFileAtPath];
        *buf = 136315394;
        *&buf[4] = v33;
        v98 = 2112;
        v99[0] = redirectStderrToFileAtPath2;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Setting up stderr for %s to %@", buf, 0x16u);
      }
    }

    redirectStderrToFileAtPath3 = [(CPLTask *)self redirectStderrToFileAtPath];
    v36 = posix_spawn_file_actions_addopen(v19, 2, [redirectStderrToFileAtPath3 fileSystemRepresentation], 513, 0x1B6u);

    if (v36)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001DDD8(v37);
      }

      goto LABEL_63;
    }
  }

  stdinPipe = [(CPLTask *)self stdinPipe];

  v92 = v19;
  if (stdinPipe)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v40 = sub_100004E20(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = endHandlerCopy;
        v42 = *v10;
        stdinPipe2 = [(CPLTask *)self stdinPipe];
        fileHandleForReading = [stdinPipe2 fileHandleForReading];
        fileDescriptor = [fileHandleForReading fileDescriptor];
        [(CPLTask *)self stdinPipe];
        v46 = v91 = handlerCopy;
        fileHandleForWriting = [v46 fileHandleForWriting];
        fileDescriptor2 = [fileHandleForWriting fileDescriptor];
        *buf = 136315650;
        *&buf[4] = v42;
        endHandlerCopy = v41;
        v98 = 1024;
        LODWORD(v99[0]) = fileDescriptor;
        WORD2(v99[0]) = 1024;
        *(v99 + 6) = fileDescriptor2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Setting up stdin for %s to %d (and closing %d)", buf, 0x18u);

        handlerCopy = v91;
        v19 = v92;
      }
    }

    stdinPipe3 = [(CPLTask *)self stdinPipe];
    fileHandleForReading2 = [stdinPipe3 fileHandleForReading];
    v51 = posix_spawn_file_actions_adddup2(v19, [fileHandleForReading2 fileDescriptor], 0);

    if (v51)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    stdinPipe4 = [(CPLTask *)self stdinPipe];
    fileHandleForWriting2 = [stdinPipe4 fileHandleForWriting];
    v55 = posix_spawn_file_actions_addclose(v19, [fileHandleForWriting2 fileDescriptor]);

    if (v55)
    {
      goto LABEL_63;
    }
  }

  redirectStdoutToFileDescriptor = [(CPLTask *)self redirectStdoutToFileDescriptor];
  if (redirectStdoutToFileDescriptor != -1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v57 = sub_100004E20(redirectStdoutToFileDescriptor);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = *v10;
        redirectStdoutToFileDescriptor2 = [(CPLTask *)self redirectStdoutToFileDescriptor];
        *buf = 136315394;
        *&buf[4] = v58;
        v98 = 1024;
        LODWORD(v99[0]) = redirectStdoutToFileDescriptor2;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Setting up stdout for %s to %d", buf, 0x12u);
      }
    }

    v52 = posix_spawn_file_actions_adddup2(v19, [(CPLTask *)self redirectStdoutToFileDescriptor], 1);
    if (v52)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
LABEL_62:
        sub_10001DE68(v52);
      }

LABEL_63:
      v81 = 1;
      goto LABEL_66;
    }
  }

  redirectStderrToFileDescriptor = [(CPLTask *)self redirectStderrToFileDescriptor];
  if (redirectStderrToFileDescriptor != -1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v61 = sub_100004E20(redirectStderrToFileDescriptor);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        v62 = *v10;
        redirectStderrToFileDescriptor2 = [(CPLTask *)self redirectStderrToFileDescriptor];
        *buf = 136315394;
        *&buf[4] = v62;
        v98 = 1024;
        LODWORD(v99[0]) = redirectStderrToFileDescriptor2;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "Setting up stderr for %s to %d", buf, 0x12u);
      }
    }

    if (posix_spawn_file_actions_adddup2(v19, [(CPLTask *)self redirectStderrToFileDescriptor], 2))
    {
      sub_10001DC9C(buf);
      goto LABEL_65;
    }
  }

  *buf = 0;
  argv7 = [(CPLTask *)self argv];
  v65 = [argv7 objectAtIndex:0];
  fileSystemRepresentation = [v65 fileSystemRepresentation];
  if (self->_environ)
  {
    environ = self->_environ;
  }

  else
  {
    environ = ::environ;
  }

  v68 = posix_spawnp(buf, fileSystemRepresentation, v19, 0, v10, environ);

  if (v68)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_10001DB60(v68);
    }

    self->_waitStatus = 0;
    goto LABEL_63;
  }

  v69 = endHandlerCopy;
  v70 = handlerCopy;
  handlerCopy[2](handlerCopy, *buf);
  v71 = dispatch_queue_create("com.apple.cplctl.task", 0);
  waitQueue = self->_waitQueue;
  self->_waitQueue = v71;

  v73 = [[NSConditionLock alloc] initWithCondition:0];
  v74 = self->_waitQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E64;
  block[3] = &unk_100034C20;
  v96 = *buf;
  block[4] = self;
  v75 = v73;
  v95 = v75;
  dispatch_async(v74, block);
  [(CPLTask *)self _updateWaitDeadline];
  _waitDeadline = [(CPLTask *)self _waitDeadline];
  do
  {
    v77 = [v75 lockWhenCondition:1 beforeDate:_waitDeadline];
    if (v77)
    {
      v81 = 0;
      _waitDeadline2 = _waitDeadline;
      handlerCopy = v70;
      goto LABEL_49;
    }

    _waitDeadline2 = [(CPLTask *)self _waitDeadline];

    [_waitDeadline2 timeIntervalSinceNow];
    _waitDeadline = _waitDeadline2;
  }

  while (v79 > 0.0);
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_10001D914;
  v93[3] = &unk_100034C40;
  v93[4] = v10;
  v93[5] = v92;
  v80 = objc_retainBlock(v93);
  if (self->_waitInBackgroundIfTaskTimesOut)
  {
    [CPLTask _enqueueTaskCompletionForLaterWait:self];
    dispatch_async(self->_waitQueue, v80);
  }

  else
  {
    kill(*buf, 15);
    (v80[2])(v80);
  }

  handlerCopy = v70;
  [v75 lock];

  v81 = 2;
LABEL_49:
  endHandlerCopy = v69;
  [v75 unlock];
  v69[2](v69, v81);

  if (v77)
  {
    v81 = 0;
    v19 = v92;
LABEL_66:
    sub_10001DEF8(v10, v19);
  }

  if ([(CPLTask *)self cleanupEmptyFiles])
  {
    redirectStderrToFileAtPath4 = [(CPLTask *)self redirectStderrToFileAtPath];
    v83 = [redirectStderrToFileAtPath4 length];

    if (v83)
    {
      redirectStderrToFileAtPath5 = [(CPLTask *)self redirectStderrToFileAtPath];
      fileSystemRepresentation2 = [redirectStderrToFileAtPath5 fileSystemRepresentation];
      sub_100004EB8(fileSystemRepresentation2, fileSystemRepresentation2);
    }

    redirectStdoutToFileAtPath4 = [(CPLTask *)self redirectStdoutToFileAtPath];
    v87 = [redirectStdoutToFileAtPath4 length];

    if (v87)
    {
      redirectStdoutToFileAtPath5 = [(CPLTask *)self redirectStdoutToFileAtPath];
      fileSystemRepresentation3 = [redirectStdoutToFileAtPath5 fileSystemRepresentation];
      sub_100004EB8(fileSystemRepresentation3, fileSystemRepresentation3);
    }
  }

  return v81;
}

- (int64_t)exec
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_100004444;
  v6[4] = sub_100004454;
  v7 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D9F8;
  v5[3] = &unk_100034C90;
  v5[5] = v8;
  v5[6] = v6;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000051E0;
  v4[3] = &unk_100034CE0;
  v4[4] = v8;
  v4[5] = v6;
  v2 = [(CPLTask *)self executeWithPIDHandler:v5 endHandler:v4];
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(v8, 8);
  return v2;
}

- (void)resetRedirect
{
  [(CPLTask *)self setRedirectStdoutToFileAtPath:0];
  [(CPLTask *)self setRedirectStdoutToFileDescriptor:0xFFFFFFFFLL];
  [(CPLTask *)self setRedirectStderrToFileAtPath:0];

  [(CPLTask *)self setRedirectStderrToFileDescriptor:0xFFFFFFFFLL];
}

@end