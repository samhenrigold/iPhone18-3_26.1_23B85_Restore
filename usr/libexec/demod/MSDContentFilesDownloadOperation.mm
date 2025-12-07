@interface MSDContentFilesDownloadOperation
- (BOOL)_downloadCreationList;
- (id)methodSelectors;
- (void)_downloadContentFile:(id)file ofHash:(id)hash toPath:(id)path completionHandler:(id)handler;
@end

@implementation MSDContentFilesDownloadOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_downloadCreationList"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_downloadCreationList
{
  v58 = +[MSDContentCacheManager sharedInstance];
  v63 = objc_alloc_init(NSCondition);
  context = [(MSDOperation *)self context];
  creationList = [context creationList];
  v4 = [creationList mutableCopy];

  v57 = objc_alloc_init(NSMutableSet);
  v56 = +[MSDOperationContext downloadOnly];
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 1;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_1000B60B4;
  v83 = sub_1000B60C4;
  v84 = +[NSMutableDictionary dictionary];
  if (os_variant_has_internal_content() && (+[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 concurrentSession], v5, +[MSDTestPreferences sharedInstance](MSDTestPreferences, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "concurrentDownloadRequest"), v7, v61 = v8 * v6, (v8 * v6) >= 1))
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v94 = v61;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Override default value for concurrent download request: %ld", buf, 0xCu);
    }
  }

  else
  {
    v61 = 3;
  }

  context2 = [(MSDOperation *)self context];
  cloneFailedList = [context2 cloneFailedList];
  [v4 addObjectsFromArray:cloneFailedList];

  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  v75 = 0u;
  obj = v4;
  v13 = [obj countByEnumeratingWithState:&v75 objects:v97 count:16];
  if (v13)
  {
    v60 = *v76;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v76 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v75 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      canPassCheckpoint = [(MSDOperation *)self canPassCheckpoint];
      if ((canPassCheckpoint & 1) == 0)
      {
        goto LABEL_40;
      }

      context3 = [(MSDOperation *)self context];
      masterManifest = [context3 masterManifest];
      v20 = [masterManifest metadataForFile:v15];

      if (!v20)
      {
        break;
      }

      getFileType = [v20 getFileType];
      v23 = [getFileType isEqualToString:NSFileTypeRegular];

      if (v23 && [v20 getFileSize])
      {
        getHash = [v20 getHash];
        hexStringRepresentation = [getHash hexStringRepresentation];

        v26 = [v58 findFileInCache:hexStringRepresentation];

        if (v26)
        {
          v28 = sub_100063BEC(v27);
          signpostId = [(MSDOperation *)self signpostId];
          if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 138412290;
            v94 = hexStringRepresentation;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, signpostId, "File Cache Hit", "File cache hit: %{xcode:string}@", buf, 0xCu);
          }
        }

        else if (([v57 containsObject:hexStringRepresentation] & 1) == 0)
        {
          [v57 addObject:hexStringRepresentation];
          context4 = [(MSDOperation *)self context];
          contentRootPath = [context4 contentRootPath];
          v31 = [contentRootPath stringByAppendingPathComponent:v15];

          v35 = [v58 fileCachePathFromSourcePath:v31 forBackgroundDownload:v56];
          v30 = [v35 stringByAppendingPathComponent:hexStringRepresentation];

          for (i = [v63 lock]; ; i = objc_msgSend(v63, "wait"))
          {
            v37 = v90[3];
            if (v37 < v61)
            {
              break;
            }
          }

          if (v86[3])
          {
            v90[3] = v37 + 1;
            v38 = sub_100063BEC([v63 unlock]);
            signpostId2 = [(MSDOperation *)self signpostId];
            if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              spid = signpostId2;
              if (os_signpost_enabled(v38))
              {
                *buf = 138412290;
                v94 = hexStringRepresentation;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Download File", "File download hash: %{xcode:string}@", buf, 0xCu);
              }
            }

            v65[0] = _NSConcreteStackBlock;
            v65[1] = 3221225472;
            v65[2] = sub_1000B60CC;
            v65[3] = &unk_10016C490;
            v65[4] = self;
            v74 = canPassCheckpoint;
            v66 = v58;
            hexStringRepresentation = hexStringRepresentation;
            v71 = &v79;
            v67 = hexStringRepresentation;
            v68 = v15;
            v30 = v30;
            v69 = v30;
            v72 = &v85;
            v70 = v63;
            v73 = &v89;
            [(MSDContentFilesDownloadOperation *)self _downloadContentFile:v15 ofHash:hexStringRepresentation toPath:v30 completionHandler:v65];

            v32 = 0;
          }

          else
          {
            v40 = sub_100063A54(i);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Aborting file download due to previous error.", buf, 2u);
            }

            [v63 unlock];
            v32 = 2;
          }

          goto LABEL_23;
        }
      }

      else
      {
        hexStringRepresentation = 0;
      }

      v30 = 0;
      v31 = 0;
      v32 = 3;
LABEL_23:

      objc_autoreleasePoolPop(v16);
      if (v32 != 3 && v32)
      {

        if (v32 == 6)
        {
          goto LABEL_55;
        }

        goto LABEL_44;
      }

      if (++v14 == v13)
      {
        v42 = [obj countByEnumeratingWithState:&v75 objects:v97 count:16];
        v13 = v42;
        if (v42)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }
    }

    v41 = sub_100063A54(v21);
    sub_1000E9CAC(v41, v95, &v96);
LABEL_40:
    hexStringRepresentation = 0;
    v30 = 0;
    v31 = 0;
    v20 = 0;
    v32 = 6;
    goto LABEL_23;
  }

LABEL_42:

LABEL_44:
  [v63 lock];
  while (v90[3] >= 1)
  {
    [v63 wait];
  }

  [v63 unlock];
  if (*(v86 + 24) == 1)
  {
    if (os_variant_has_internal_content())
    {
      v43 = [NSPropertyListSerialization propertyList:v80[5] isValidForFormat:100];
      if (v43)
      {
        v44 = v80[5];
        v45 = [NSURL fileURLWithPath:@"/tmp/DownloadedFileList.plist"];
        v64 = 0;
        v46 = [v44 writeToURL:v45 error:&v64];
        v47 = v64;

        if ((v46 & 1) == 0)
        {
          v49 = sub_100063A54(v48);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v47 localizedDescription];
            sub_1000E9D68(localizedDescription, buf, v49);
          }
        }
      }

      else
      {
        v47 = sub_100063A54(v43);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1000E9D24(v47);
        }
      }

      v51 = 1;
      goto LABEL_60;
    }

    v51 = 1;
  }

  else
  {
LABEL_55:
    [(MSDOperation *)self setRetryable:1];
    error = [(MSDOperation *)self error];
    v53 = error == 0;

    if (v53)
    {
      v47 = [NSError errorDomainMSDWithCode:3727744736 message:@"An error has occurred."];
      [(MSDOperation *)self setError:v47];
      v51 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v51 = 0;
  }

LABEL_61:
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);

  return v51 & 1;
}

- (void)_downloadContentFile:(id)file ofHash:(id)hash toPath:(id)path completionHandler:(id)handler
{
  fileCopy = file;
  hashCopy = hash;
  pathCopy = path;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v14 = objc_alloc_init(MSDDownloadFileRequest);
  fileInfo = [(MSDDownloadFileRequest *)v14 fileInfo];
  [fileInfo setFile:fileCopy];

  fileInfo2 = [(MSDDownloadFileRequest *)v14 fileInfo];
  [fileInfo2 setFileHash:hashCopy];

  [(MSDServerRequest *)v14 setSavePath:pathCopy];
  context = [(MSDOperation *)self context];
  originServer = [context originServer];
  [(MSDCDNServerRequest *)v14 setOriginServer:originServer];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B64C0;
  v21[3] = &unk_10016C4B8;
  v19 = handlerCopy;
  v22 = v19;
  objc_copyWeak(&v23, &location);
  [(MSDServerRequest *)v14 setCompletion:v21];
  v20 = +[MSDServerRequestHandler sharedInstance];
  [v20 handleRequestAsync:v14];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

@end