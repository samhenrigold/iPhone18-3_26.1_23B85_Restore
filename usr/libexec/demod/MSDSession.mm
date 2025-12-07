@interface MSDSession
- (MSDSession)initWithCellularAccess:(BOOL)access;
- (id)getServerErrorMessage:(id)message withDefault:(id)default;
- (id)parseResponseHeader:(id)header statusCode:(int64_t)code;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)dispatchSessionTask:(id)task;
- (void)dispatchSessionTask:(id)task withError:(id *)error;
- (void)handleDownloadAborted:(id)aborted;
- (void)handleDownloadPaused:(id)paused;
- (void)invalidate;
- (void)launchTaskWithInfo:(id)info;
- (void)logDownloadTaskLaunch:(id)launch;
- (void)retrySessionTask:(id)task;
@end

@implementation MSDSession

- (MSDSession)initWithCellularAccess:(BOOL)access
{
  accessCopy = access;
  v27.receiver = self;
  v27.super_class = MSDSession;
  v4 = [(MSDSession *)&v27 init];
  if (v4)
  {
    v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v5 setURLCache:0];
    [v5 setRequestCachePolicy:1];
    [v5 set_timingDataOptions:2];
    [v5 setAllowsCellularAccess:accessCopy];
    v6 = [NSURLSession sessionWithConfiguration:v5 delegate:v4 delegateQueue:0];
    [(MSDSession *)v4 setSession:v6];

    session = [(MSDSession *)v4 session];

    if (session)
    {
      v9 = objc_alloc_init(MSDSessionTaskManager);
      [(MSDSession *)v4 setTaskManager:v9];

      v10 = dispatch_queue_create("com.apple.msdconnection-demux", &_dispatch_queue_attr_concurrent);
      [(MSDSession *)v4 setDemuxQueue:v10];

      [(MSDSession *)v4 setRequestTimeoutCount:0];
      v11 = sub_100063BEC([(MSDSession *)v4 setIsDownloadPaused:0]);
      [(MSDSession *)v4 setSignpostId:os_signpost_id_generate(v11)];

      objc_initWeak(&location, v4);
      if ([(MSDSession *)v4 getIsFileDownload])
      {
        v12 = +[NSNotificationCenter defaultCenter];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10006FCA0;
        v23[3] = &unk_10016B568;
        v13 = v4;
        v24 = v13;
        objc_copyWeak(&v25, &location);
        v14 = [v12 addObserverForName:@"MSDNotificationPauseDownload" object:0 queue:0 usingBlock:v23];

        v15 = +[NSNotificationCenter defaultCenter];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10006FDB8;
        v20[3] = &unk_10016B568;
        v21 = v13;
        objc_copyWeak(&v22, &location);
        v16 = [v15 addObserverForName:@"MSDNotificationAbortDownload" object:0 queue:0 usingBlock:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&v25);
      }

      v17 = v4;
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = sub_100063A54(v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000D95E4(v18);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)invalidate
{
  session = [(MSDSession *)self session];
  [session invalidateAndCancel];
}

- (void)launchTaskWithInfo:(id)info
{
  infoCopy = info;
  v5 = [[MSDSessionTask alloc] initFromTaskInfo:infoCopy];

  demuxQueue = [(MSDSession *)self demuxQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006FFE4;
  v8[3] = &unk_10016A258;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(demuxQueue, v8);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  taskManager = [(MSDSession *)self taskManager];
  v13 = [taskManager getSessionTask:taskCopy];

  if (!v13)
  {
    v37 = sub_100063A54(v14);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9694();
    }

    v16 = 0;
    v20 = 0;
    goto LABEL_26;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    sub_1000D9628(isKindOfClass);
    v29 = 0;
    v20 = 0;
    v16 = 0;
LABEL_20:
    state = [v13 state];
    if (state != 3)
    {
      state = [v13 setState:2];
    }

    if (v29)
    {
      v34 = +[NSFileManager defaultManager];
      info = [v13 info];
      savePath = [info savePath];
      [v34 removeItemAtPath:savePath error:0];

      state = [v13 resetFileHandle];
    }

    v37 = sub_100063A54(state);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      statusCode = [v16 statusCode];
      state2 = [v13 state];
      v40 = 134218240;
      v41 = statusCode;
      v42 = 1024;
      LODWORD(v43) = state2 == 2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Cancelling download task on status code: %ld; should retry=%d", &v40, 0x12u);
    }

LABEL_26:

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_27;
  }

  v16 = responseCopy;
  info2 = [v13 info];
  savePath2 = [info2 savePath];

  if (savePath2)
  {
    if ([v16 statusCode] != 200 && objc_msgSend(v16, "statusCode") != 206)
    {
      v29 = [v16 statusCode] == 416;
      if ([v16 statusCode] == 403 || objc_msgSend(v16, "statusCode") == 404)
      {
        [v13 setState:3];
      }

      v20 = 0;
      goto LABEL_20;
    }

    allHeaderFields = [v16 allHeaderFields];
    v20 = [allHeaderFields objectForKey:@"Content-Range"];

    if (!v20)
    {
      v30 = sub_100063A54(v21);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        info3 = [v13 info];
        savePath3 = [info3 savePath];
        v40 = 138543618;
        v41 = savePath3;
        v42 = 2114;
        v43 = @"Content-Range";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "HTTP response header for %{public}@ does not contain key %{public}@; cannot proceed with download", &v40, 0x16u);
      }

      v20 = 0;
      v29 = 1;
      goto LABEL_20;
    }

    contentRange = [v13 contentRange];
    [contentRange processServerRangeResponse:v20];

    contentRange2 = [v13 contentRange];
    isDownloadComplete = [contentRange2 isDownloadComplete];

    if (isDownloadComplete)
    {
      v26 = sub_100063A54(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        info4 = [v13 info];
        savePath4 = [info4 savePath];
        v40 = 138543362;
        v41 = savePath4;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Download for %{public}@ is already complete, no need to continue with download task", &v40, 0xCu);
      }

      v29 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_27:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v11 = objc_autoreleasePoolPush();
  response = [taskCopy response];
  statusCode = [response statusCode];
  taskManager = [(MSDSession *)self taskManager];
  v15 = [taskManager getSessionTask:taskCopy];

  if (!v15)
  {
    v21 = sub_100063A54(v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9694();
    }

    outData = 0;
    goto LABEL_15;
  }

  info = [v15 info];
  savePath = [info savePath];
  if (!savePath)
  {

LABEL_8:
    outData = [v15 outData];
    [outData appendData:dataCopy];
    goto LABEL_9;
  }

  if (statusCode != 206 && statusCode != 200)
  {
    goto LABEL_8;
  }

  fileHandle = [v15 fileHandle];
  v22 = 0;
  [fileHandle writeData:dataCopy error:&v22];
  outData = v22;

  if (outData)
  {
    v21 = sub_100063A54([v15 setError:outData]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000D96FC(v15, outData, v21);
    }

LABEL_15:

    [taskCopy cancel];
    goto LABEL_9;
  }

  outData = [v15 contentRange];
  [outData appendDownloadedFileSize:{objc_msgSend(dataCopy, "length")}];
LABEL_9:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  taskManager = [(MSDSession *)self taskManager];
  v13 = [taskManager getSessionTask:taskCopy];

  if (v13)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];

    v18 = sub_100063A54(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D97B8(v13);
    }

    v19 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];
    if (v19)
    {
      [(MSDSession *)self authenticate:challengeCopy forTask:v13 completion:handlerCopy];
    }

    else
    {
      v21 = sub_100063A54(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000D985C();
      }

      handlerCopy[2](handlerCopy, 2, 0);
    }
  }

  else
  {
    v20 = sub_100063A54(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = taskCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@; canceling...", &v22, 0xCu);
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  taskManager = [(MSDSession *)self taskManager];
  v14 = [taskManager getSessionTask:taskCopy];

  if (v14)
  {
    [v14 setRedirected:1];
    v16 = [requestCopy URL];
    v17 = [NSMutableURLRequest requestWithURL:v16 cachePolicy:1 timeoutInterval:30.0];

    info = [v14 info];
    savePath = [info savePath];

    if (savePath)
    {
      contentRange = [v14 contentRange];
      getRangeHeaderForDownload = [contentRange getRangeHeaderForDownload];

      if (getRangeHeaderForDownload)
      {
        [v17 setValue:getRangeHeaderForDownload forHTTPHeaderField:@"Range"];
      }
    }

    handlerCopy[2](handlerCopy, v17);
  }

  else
  {
    v22 = sub_100063A54(v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = taskCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@; canceling...", &v23, 0xCu);
    }

    [taskCopy cancel];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  taskManager = [(MSDSession *)self taskManager];
  v9 = [taskManager getSessionTask:taskCopy];

  response = [taskCopy response];
  statusCode = [response statusCode];
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  if (!v9)
  {
    v34 = sub_100063A54(v12);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v124 = taskCopy;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@ done.", buf, 0xCu);
    }

    v30 = 0;
    goto LABEL_77;
  }

  if (!-[MSDSession getIsFileDownload](self, "getIsFileDownload") || [v9 state] != 1)
  {
    code = [errorCopy code];
    if (code == -999)
    {
      code = [v9 state];
      if (code != 3)
      {
        v111 = response;
        v114 = v13;
        info = [v9 info];
        savePath = [info savePath];
        if (savePath)
        {
          v39 = savePath;
          [v9 contentRange];
          v41 = v40 = statusCode;
          isDownloadComplete = [v41 isDownloadComplete];

          statusCode = v40;
          if (isDownloadComplete)
          {
            v44 = sub_100063A54(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              info2 = [v9 info];
              v46 = [info2 description];
              info3 = [v9 info];
              savePath2 = [info3 savePath];
              *buf = 138543618;
              v124 = v46;
              v125 = 2114;
              v126 = savePath2;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "SessionTask %{public}@ for file %{public}@ is cancelled but it is already complete, ignoring cancellation", buf, 0x16u);

              statusCode = v40;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            response = v111;
            v13 = v114;
            goto LABEL_61;
          }
        }

        else
        {
        }

        error = [v9 error];
        if (error)
        {
          error2 = [v9 error];
        }

        else
        {
          error2 = errorCopy;
        }

        v30 = error2;
        response = v111;

        v31 = 0;
        v32 = [v9 state] == 2;
        goto LABEL_46;
      }
    }

    if (!response)
    {
      if (errorCopy)
      {
        v115 = taskCopy;
        v35 = v13;
        v36 = errorCopy;
        v30 = v36;
        v32 = 1;
LABEL_58:
        v67 = sub_100063A54(v36);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          [v9 info];
          v68 = v112 = response;
          [v68 description];
          v70 = v69 = statusCode;
          localizedDescription = [v30 localizedDescription];
          code2 = [v30 code];
          *buf = 138543874;
          v124 = v70;
          v125 = 2114;
          v126 = localizedDescription;
          v127 = 2048;
          v128 = code2;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Session task %{public}@ did fail with error: %{public}@(0x%tx)", buf, 0x20u);

          response = v112;
          statusCode = v69;
        }

        v31 = 0;
        v13 = v35;
        taskCopy = v115;
        goto LABEL_61;
      }

      v49 = 0;
      v59 = sub_100063A54(code);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D98C4(v59);
      }

      v57 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Unexpected server response."];
      v118 = 0;
      sub_1000C1390(&v118, 3727744512, v57);
      v58 = v118;
LABEL_56:
      v30 = v58;

      v32 = 1;
      if (v30)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    if (statusCode <= 205)
    {
      v32 = 0;
      v30 = 0;
      v31 = 1;
      if ((statusCode - 200) < 3 || statusCode == 204)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    if (statusCode > 403)
    {
      if (statusCode != 404)
      {
        if (statusCode == 408)
        {
          v49 = response;
          v57 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Connection with server is broken."];
          v120 = 0;
          sub_1000C1390(&v120, 3727740931, v57);
          v58 = v120;
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v49 = response;
      v50 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Requested asset not found"];
      v121 = 0;
      sub_1000C1390(&v121, 3727740934, v50);
      v51 = v121;
      goto LABEL_51;
    }

    if (statusCode != 206)
    {
      if (statusCode != 403)
      {
LABEL_53:
        v49 = response;
        v66 = sub_100063A54(code);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v124 = statusCode;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Unrecognized status code %ld; will attempt to retry task", buf, 0xCu);
        }

        v57 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Unexpected server response."];
        v119 = 0;
        sub_1000C1390(&v119, 3727744512, v57);
        v58 = v119;
        goto LABEL_56;
      }

      v49 = response;
      v50 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Cannot authenticate with server."];
      v122 = 0;
      sub_1000C1390(&v122, 3727740933, v50);
      v51 = v122;
LABEL_51:
      v30 = v51;

      v32 = 0;
      if (v30)
      {
LABEL_57:
        v115 = taskCopy;
        v35 = v13;
        response = v49;
        goto LABEL_58;
      }

LABEL_52:
      v31 = 0;
      response = v49;
      goto LABEL_61;
    }

    v49 = response;
    info4 = [v9 info];
    savePath3 = [info4 savePath];

    if (savePath3)
    {
      contentRange = [v9 contentRange];
      isDownloadComplete2 = [contentRange isDownloadComplete];

      if (isDownloadComplete2)
      {
        v32 = 0;
        goto LABEL_83;
      }

      contentRange2 = [v9 contentRange];
      didProgress = [contentRange2 didProgress];

      if (didProgress)
      {
        v104 = sub_100063A54(v103);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          info5 = [v9 info];
          [info5 savePath];
          v106 = taskCopy;
          v108 = v107 = v13;
          *buf = 138543362;
          v124 = v108;
          _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Allowing partial download of %{public}@ to progress without retry penalty", buf, 0xCu);

          v13 = v107;
          taskCopy = v106;
        }

        [v9 setCurrentRetry:{objc_msgSend(v9, "currentRetry") - 1}];
        contentRange3 = [v9 contentRange];
        [contentRange3 recordDownloadedBytes];
      }
    }

    v32 = 1;
LABEL_83:
    v36 = errorCopy;
    v30 = v36;
    if (v36)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v114 = v13;
  contentRange4 = [v9 contentRange];
  isDownloadComplete3 = [contentRange4 isDownloadComplete];

  v17 = sub_100063A54(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if ((isDownloadComplete3 & 1) == 0)
  {
    if (v18)
    {
      info6 = [v9 info];
      [info6 description];
      v54 = v53 = response;
      info7 = [v9 info];
      savePath4 = [info7 savePath];
      *buf = 138543618;
      v124 = v54;
      v125 = 2114;
      v126 = savePath4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SessionTask %{public}@ with savePath: %{public}@ paused, waiting to be resumed", buf, 0x16u);

      response = v53;
    }

    v30 = 0;
    v13 = v114;
    goto LABEL_77;
  }

  if (v18)
  {
    info8 = [v9 info];
    [info8 savePath];
    v21 = v20 = statusCode;
    *buf = 138543362;
    v124 = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not pausing task for %{public}@ because download is already complete", buf, 0xCu);

    statusCode = v20;
  }

  v23 = sub_100063BEC(v22);
  signpostId = [(MSDSession *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = signpostId;
    if (os_signpost_enabled(v23))
    {
      info9 = [v9 info];
      v27 = [info9 description];
      [v9 info];
      v28 = v110 = statusCode;
      savePath5 = [v28 savePath];
      *buf = 138412546;
      v124 = v27;
      v125 = 2112;
      v126 = savePath5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, v25, "Resume Session Task", "Not Pausing Completed Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);

      statusCode = v110;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_46:
  v13 = v114;
LABEL_61:
  taskManager2 = [(MSDSession *)self taskManager];
  [taskManager2 removeSessionTask:v9];

  [(MSDSession *)self collectTimingDataForTask:v9 withNetworkError:errorCopy];
  if (v32)
  {
    v113 = statusCode;
    v74 = taskCopy;
    v75 = v13;
    v76 = response;
    currentRetry = [v9 currentRetry];
    info10 = [v9 info];
    maxRetry = [info10 maxRetry];

    if (currentRetry <= maxRetry)
    {
      [(MSDSession *)self retrySessionTask:v9];
      response = v76;
      v13 = v75;
      taskCopy = v74;
      goto LABEL_77;
    }

    v81 = sub_100063A54(v80);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      info11 = [v9 info];
      v82 = [info11 description];
      info12 = [v9 info];
      maxRetry2 = [info12 maxRetry];
      *buf = 138543618;
      v124 = v82;
      v125 = 2048;
      v126 = maxRetry2;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%{public}@ exceeded maximum retry %ld", buf, 0x16u);
    }

    response = v76;
    v13 = v75;
    taskCopy = v74;
    statusCode = v113;
  }

  v85 = [NSNumber numberWithInteger:statusCode];
  [v13 setObject:v85 forKey:@"statusCode"];

  if (v31)
  {
    allHeaderFields = [response allHeaderFields];
    v87 = [(MSDSession *)self parseResponseHeader:allHeaderFields statusCode:statusCode];
    [v13 addEntriesFromDictionary:v87];
  }

  outData = [v9 outData];

  if (outData)
  {
    outData2 = [v9 outData];
    [v13 setObject:outData2 forKey:@"data"];
  }

  info13 = [v9 info];
  savePath6 = [info13 savePath];

  if (savePath6)
  {
    contentRange5 = [v9 contentRange];
    downloadedBytes = [contentRange5 downloadedBytes];

    v94 = [NSNumber numberWithInteger:downloadedBytes];
    [v13 setObject:v94 forKey:@"fileSize"];
  }

  fileHandle = [v9 fileHandle];

  if (fileHandle)
  {
    fileHandle2 = [v9 fileHandle];
    [fileHandle2 closeFile];
  }

  info14 = [v9 info];
  handler = [info14 handler];

  if (handler)
  {
    info15 = [v9 info];
    handler2 = [info15 handler];
    (handler2)[2](handler2, v30, v13);
  }

LABEL_77:
}

- (void)handleDownloadPaused:(id)paused
{
  userInfo = [paused userInfo];
  v5 = [userInfo objectForKey:@"kMSDDownloadPausedKey"];
  bOOLValue = [v5 BOOLValue];

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v74 = 1024;
    LODWORD(v75) = bOOLValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Session received background download paused notification; pause=%d", buf, 0x12u);
  }

  isDownloadPaused = [(MSDSession *)self isDownloadPaused];
  if (bOOLValue == isDownloadPaused)
  {
    v35 = sub_100063A54(isDownloadPaused);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v74 = 1024;
      LODWORD(v75) = bOOLValue;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: downloadPaused = %d, ignoring notification...", buf, 0x12u);
    }

    v15 = v35;
  }

  else
  {
    [(MSDSession *)self setIsDownloadPaused:bOOLValue];
    taskManager = [(MSDSession *)self taskManager];
    v11 = taskManager;
    if (bOOLValue)
    {
      v12 = [taskManager getTaskInState:0];

      v14 = sub_100063A54(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9990(self, v12);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v15 = v12;
      has_internal_content = [v15 countByEnumeratingWithState:&v67 objects:v76 count:16];
      obj = has_internal_content;
      if (has_internal_content)
      {
        v60 = *v68;
        do
        {
          v17 = 0;
          do
          {
            if (*v68 != v60)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v67 + 1) + 8 * v17);
            v19 = sub_100063A54(has_internal_content);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              info = [v18 info];
              v21 = [info description];
              *buf = 138543618;
              selfCopy4 = self;
              v74 = 2114;
              v75 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling task %{public}@", buf, 0x16u);
            }

            v23 = sub_100063BEC(v22);
            signpostId = [(MSDSession *)self signpostId];
            if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v25 = signpostId;
              if (os_signpost_enabled(v23))
              {
                info2 = [v18 info];
                v27 = [info2 description];
                info3 = [v18 info];
                savePath = [info3 savePath];
                *buf = 138412546;
                selfCopy4 = v27;
                v74 = 2112;
                v75 = savePath;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, v25, "Pause Session Task", "Pause Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);
              }
            }

            [v18 setState:1];
            task = [v18 task];
            [task cancel];

            has_internal_content = os_variant_has_internal_content();
            if (has_internal_content)
            {
              info4 = [v18 info];
              savePath2 = [info4 savePath];
              contentRange = [v18 contentRange];
              [contentRange setFileDownloading:savePath2];

              contentRange2 = [v18 contentRange];
              [contentRange2 pushToTestLog:0];
            }

            v17 = v17 + 1;
          }

          while (obj != v17);
          has_internal_content = [v15 countByEnumeratingWithState:&v67 objects:v76 count:16];
          obj = has_internal_content;
        }

        while (has_internal_content);
      }
    }

    else
    {
      v36 = [taskManager getTaskInState:1];

      v38 = sub_100063A54(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9908(self, v36);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obja = v36;
      v39 = [obja countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v39)
      {
        v41 = v39;
        v42 = *v64;
        *&v40 = 138412546;
        v58 = v40;
        do
        {
          v43 = 0;
          v59 = v41;
          do
          {
            if (*v64 != v42)
            {
              objc_enumerationMutation(obja);
            }

            v44 = *(*(&v63 + 1) + 8 * v43);
            taskManager2 = [(MSDSession *)self taskManager];
            [taskManager2 removeSessionTask:v44];

            [v44 setState:0];
            v46 = sub_100063A54([v44 setCurrentRetry:0]);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              info5 = [v44 info];
              v48 = [info5 description];
              *buf = 138543618;
              selfCopy4 = self;
              v74 = 2114;
              v75 = v48;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: Relaunching task %{public}@ to resume", buf, 0x16u);
            }

            v50 = sub_100063BEC(v49);
            signpostId2 = [(MSDSession *)self signpostId];
            if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v52 = signpostId2;
              if (os_signpost_enabled(v50))
              {
                info6 = [v44 info];
                [info6 description];
                v55 = v54 = v42;
                info7 = [v44 info];
                savePath3 = [info7 savePath];
                *buf = v58;
                selfCopy4 = v55;
                v74 = 2112;
                v75 = savePath3;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_EVENT, v52, "Resume Session Task", "Resuming Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);

                v42 = v54;
                v41 = v59;
              }
            }

            [(MSDSession *)self dispatchSessionTask:v44];
            v43 = v43 + 1;
          }

          while (v41 != v43);
          v41 = [obja countByEnumeratingWithState:&v63 objects:v71 count:16];
        }

        while (v41);
      }

      v15 = obja;
    }
  }
}

- (void)handleDownloadAborted:(id)aborted
{
  userInfo = [aborted userInfo];
  v5 = [userInfo objectForKey:@"kMSDDownloadAbortedKey"];
  bOOLValue = [v5 BOOLValue];

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 1024;
    v13 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Session received timer expired notification; timerExpired=%d", &v10, 0x12u);
  }

  if (bOOLValue)
  {
    taskManager = [(MSDSession *)self taskManager];
    [taskManager cancelAndRemoveAllSessionTask];
  }
}

- (void)dispatchSessionTask:(id)task withError:(id *)error
{
  taskCopy = task;
  info = [taskCopy info];
  postData = [info postData];

  info2 = [taskCopy info];
  postFile = [info2 postFile];

  info3 = [taskCopy info];
  v12 = [info3 getRequestForTimeout:30.0];
  v13 = [v12 mutableCopy];

  info4 = [taskCopy info];
  LOBYTE(v12) = [info4 isValid];

  if ((v12 & 1) == 0)
  {
    sub_1000D9A18(error);
    goto LABEL_25;
  }

  if (!v13)
  {
    sub_1000D9C44(error);
    goto LABEL_25;
  }

  [taskCopy resetData];
  info5 = [taskCopy info];
  savePath = [info5 savePath];

  if (savePath)
  {
    fileHandle = [taskCopy fileHandle];

    if (!fileHandle)
    {
      sub_1000D9A90(error);
      goto LABEL_25;
    }

    contentRange = [taskCopy contentRange];
    getRangeHeaderForDownload = [contentRange getRangeHeaderForDownload];

    if (getRangeHeaderForDownload)
    {
      [v13 setValue:getRangeHeaderForDownload forHTTPHeaderField:@"Range"];
    }

    [(MSDSession *)self logDownloadTaskLaunch:taskCopy];
  }

  else
  {
    getRangeHeaderForDownload = 0;
  }

  [taskCopy setCurrentRetry:{objc_msgSend(taskCopy, "currentRetry") + 1}];
  if (postData)
  {
    session = [(MSDSession *)self session];
    v21 = [session uploadTaskWithRequest:v13 fromData:postData];
LABEL_11:
    v22 = v21;
    [taskCopy setTask:v21];
    goto LABEL_14;
  }

  session2 = [(MSDSession *)self session];
  session = session2;
  if (!postFile)
  {
    v21 = [session2 dataTaskWithRequest:v13];
    goto LABEL_11;
  }

  v22 = [NSURL URLWithString:postFile];
  v24 = [session uploadTaskWithRequest:v13 fromFile:v22];
  [taskCopy setTask:v24];

LABEL_14:
  task = [taskCopy task];

  if (task)
  {
    if ([(MSDSession *)self isDownloadPaused]&& (v26 = [(MSDSession *)self getIsFileDownload], v26))
    {
      v27 = sub_100063A54(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9B08(taskCopy);
      }

      v29 = sub_100063BEC(v28);
      signpostId = [(MSDSession *)self signpostId];
      if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = signpostId;
        if (os_signpost_enabled(v29))
        {
          info6 = [taskCopy info];
          v36 = [info6 description];
          info7 = [taskCopy info];
          [info7 savePath];
          *buf = 138412546;
          v39 = v36;
          v41 = v40 = 2112;
          v33 = v41;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, v31, "Pause Session Task", "Launching Session Task: %{xcode:string}@ with save path: %{xcode:string}@ as paused", buf, 0x16u);
        }
      }

      [taskCopy setState:1];
    }

    else
    {
      [taskCopy setState:0];
      task2 = [taskCopy task];
      [task2 resume];
    }

    taskManager = [(MSDSession *)self taskManager];
    [taskManager addSessionTask:taskCopy];
  }

  else
  {
    sub_1000D9BAC(error, getRangeHeaderForDownload);
  }

LABEL_25:
}

- (void)dispatchSessionTask:(id)task
{
  taskCopy = task;
  v10 = 0;
  [(MSDSession *)self dispatchSessionTask:taskCopy withError:&v10];
  v5 = v10;
  if (v5)
  {
    info = [taskCopy info];
    handler = [info handler];

    if (handler)
    {
      info2 = [taskCopy info];
      handler2 = [info2 handler];
      (handler2)[2](handler2, v5, 0);
    }
  }
}

- (void)retrySessionTask:(id)task
{
  taskCopy = task;
  v5 = exp2([taskCopy currentRetry]);
  v6 = arc4random_uniform(0x1F4u);
  v7 = v6 + v5 * 1000.0;
  v8 = sub_100063A54(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    info = [taskCopy info];
    v10 = [info description];
    info2 = [taskCopy info];
    savePath = [info2 savePath];
    currentRetry = [taskCopy currentRetry];
    info3 = [taskCopy info];
    *buf = 138544386;
    v21 = v10;
    v22 = 2114;
    v23 = savePath;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = currentRetry;
    v28 = 2048;
    maxRetry = [info3 maxRetry];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrying task %{public}@ with savePath: %{public}@ after %f ms; attempt %ld/%ld...", buf, 0x34u);
  }

  v15 = dispatch_time(0, (v7 * 1000000.0));
  demuxQueue = [(MSDSession *)self demuxQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000725C0;
  v18[3] = &unk_10016A258;
  v18[4] = self;
  v19 = taskCopy;
  v17 = taskCopy;
  dispatch_after(v15, demuxQueue, v18);
}

- (id)parseResponseHeader:(id)header statusCode:(int64_t)code
{
  headerCopy = header;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [headerCopy objectForKey:@"X-Protocol-Version"];
  if (v7)
  {
    [v6 setObject:v7 forKey:@"protocolVersion"];
  }

  if (code == 202)
  {
    v8 = [headerCopy objectForKey:@"Retry-After"];
    if (v8)
    {
      v9 = v8;
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue]);
      [v6 setObject:v10 forKey:@"retryAfter"];
    }
  }

  return v6;
}

- (void)logDownloadTaskLaunch:(id)launch
{
  launchCopy = launch;
  contentRange = [launchCopy contentRange];
  getRangeHeaderForDownload = [contentRange getRangeHeaderForDownload];

  contentRange2 = [launchCopy contentRange];
  downloadedBytes = [contentRange2 downloadedBytes];

  contentRange3 = [launchCopy contentRange];
  existingFileSize = [contentRange3 existingFileSize];

  if (downloadedBytes + existingFileSize >= 1)
  {
    v12 = sub_100063A54(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      info = [launchCopy info];
      savePath = [info savePath];
      v21 = 138544130;
      v22 = savePath;
      v23 = 2048;
      v24 = existingFileSize;
      v25 = 2048;
      v26 = downloadedBytes;
      v27 = 2114;
      v28 = getRangeHeaderForDownload;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "File %{public}@ is partially downloaded with existing size = %ld, downloaded bytes = %ld; using range header %{public}@", &v21, 0x2Au);
    }

    v16 = sub_100063BEC(v15);
    signpostId = [(MSDSession *)self signpostId];
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = signpostId;
      if (os_signpost_enabled(v16))
      {
        info2 = [launchCopy info];
        savePath2 = [info2 savePath];
        v21 = 138413058;
        v22 = savePath2;
        v23 = 2048;
        v24 = existingFileSize;
        v25 = 2048;
        v26 = downloadedBytes;
        v27 = 2112;
        v28 = getRangeHeaderForDownload;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v18, "Resume Partial Download", "Resuming partial download for: %{xcode:string}@, existing size = %{xcode:size-in-bytes}lu; downloaded bytes = %{xcode:size-in-bytes}lu; range header = %{xcode:string}@", &v21, 0x2Au);
      }
    }
  }
}

- (id)getServerErrorMessage:(id)message withDefault:(id)default
{
  defaultCopy = default;
  outData = [message outData];
  if (!outData)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [NSJSONSerialization JSONObjectWithData:outData options:0 error:0];
  v8 = v7;
  if (!v7)
  {
    v10 = [[NSString alloc] initWithData:outData encoding:4];
LABEL_6:
    v9 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = [v7 objectForKey:@"error_message"];
  if (!v9)
  {
    v10 = [NSString stringWithFormat:@"%@", v8];
    goto LABEL_6;
  }

LABEL_7:
  if ([v9 length])
  {
    v11 = [defaultCopy stringByAppendingFormat:@": %@", v9];

    goto LABEL_11;
  }

LABEL_10:
  v11 = defaultCopy;
LABEL_11:

  return v11;
}

@end