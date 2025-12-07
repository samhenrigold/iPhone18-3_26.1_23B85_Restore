@interface MSDInstallableFileDownloadOperation
- (BOOL)_downloadInstallableFile;
- (BOOL)_downloadInstallableFile:(id)file ofHash:(id)hash toPath:(id)path;
- (id)methodSelectors;
@end

@implementation MSDInstallableFileDownloadOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_downloadInstallableFile"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_downloadInstallableFile
{
  v3 = +[MSDContentCacheManager sharedInstance];
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  fileHash = [context2 fileHash];

  v8 = +[MSDOperationContext downloadOnly];
  v9 = [v3 findFileInCache:fileHash];

  if (v9)
  {
    v11 = sub_100063BEC(v10);
    signpostId = [(MSDOperation *)self signpostId];
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = signpostId;
      if (os_signpost_enabled(v11))
      {
        *v31 = 138412290;
        *&v31[4] = fileHash;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v13, "File Cache Hit", "File cache hit: %{xcode:string}@", v31, 0xCu);
      }
    }

LABEL_16:
    v28 = 1;
    goto LABEL_17;
  }

  v14 = [v3 fileCachePathFromSourcePath:0 forBackgroundDownload:v8];
  v11 = [v14 stringByAppendingPathComponent:fileHash];

  v16 = sub_100063BEC(v15);
  signpostId2 = [(MSDOperation *)self signpostId];
  if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = signpostId2;
    if (os_signpost_enabled(v16))
    {
      *v31 = 138412290;
      *&v31[4] = fileHash;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Download File", "File download hash: %{xcode:string}@", v31, 0xCu);
    }
  }

  v19 = [(MSDInstallableFileDownloadOperation *)self _downloadInstallableFile:identifier ofHash:fileHash toPath:v11];
  v20 = v19;
  v21 = sub_100063BEC(v19);
  signpostId3 = [(MSDOperation *)self signpostId];
  if (signpostId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = signpostId3;
    if (os_signpost_enabled(v21))
    {
      *v31 = 67109120;
      *&v31[4] = v20;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v23, "Download File", "File download result: %{xcode:BOOLean}d", v31, 8u);
    }
  }

  if (v20)
  {
    v24 = [v3 fileSizeInCache:fileHash];
    v25 = sub_100063BEC(v24);
    signpostId4 = [(MSDOperation *)self signpostId];
    if (signpostId4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = signpostId4;
      if (os_signpost_enabled(v25))
      {
        *v31 = 134217984;
        *&v31[4] = v24;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, v27, "File Downloaded", "File download size: %{xcode:size-in-bytes}llu", v31, 0xCu);
      }
    }

    goto LABEL_16;
  }

  v30 = sub_1000CEF08(v11, self, v31);
  v28 = 0;
  if (v30)
  {
    goto LABEL_18;
  }

  v11 = *v31;
LABEL_17:

LABEL_18:
  return v28;
}

- (BOOL)_downloadInstallableFile:(id)file ofHash:(id)hash toPath:(id)path
{
  pathCopy = path;
  hashCopy = hash;
  fileCopy = file;
  context = [(MSDOperation *)self context];
  originServer = [context originServer];

  v13 = objc_alloc_init(MSDDownloadFileRequest);
  fileInfo = [(MSDDownloadFileRequest *)v13 fileInfo];
  [fileInfo setFile:fileCopy];

  fileInfo2 = [(MSDDownloadFileRequest *)v13 fileInfo];
  [fileInfo2 setFileHash:hashCopy];

  [(MSDServerRequest *)v13 setSavePath:pathCopy];
  [(MSDCDNServerRequest *)v13 setOriginServer:originServer];
  v16 = +[MSDServerRequestHandler sharedInstance];
  v17 = [v16 handleRequestSync:v13];

  error = [v17 error];
  if (error)
  {
    [(MSDOperation *)self setError:error];
  }

  return error == 0;
}

@end