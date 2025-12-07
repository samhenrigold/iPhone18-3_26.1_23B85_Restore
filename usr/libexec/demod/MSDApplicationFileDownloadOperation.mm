@interface MSDApplicationFileDownloadOperation
- (BOOL)_downloadAppArchiveFile;
- (id)_downloadAppArchiveFile:(id)file ofHash:(id)hash ofAppUID:(id)d currenntAppUID:(id)iD toFolder:(id)folder;
- (id)methodSelectors;
@end

@implementation MSDApplicationFileDownloadOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_downloadAppArchiveFile"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_downloadAppArchiveFile
{
  v3 = +[MSDContentCacheManager sharedInstance];
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  uniqueIdentifier = [context2 uniqueIdentifier];

  context3 = [(MSDOperation *)self context];
  currentUniqueIdentifier = [context3 currentUniqueIdentifier];

  context4 = [(MSDOperation *)self context];
  fileHash = [context4 fileHash];

  v12 = +[MSDOperationContext downloadOnly];
  if (currentUniqueIdentifier)
  {
    v13 = [v3 appDiffPatchFileForSourceAppUID:currentUniqueIdentifier targetAppUID:uniqueIdentifier];
    if (v13)
    {
      v14 = v13;
      context5 = [(MSDOperation *)self context];
      [context5 setUseDiffPatch:1];

LABEL_5:
      v17 = sub_100063BEC(v16);
      signpostId = [(MSDOperation *)self signpostId];
      if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = signpostId;
        if (os_signpost_enabled(v17))
        {
          *v36 = 138412290;
          *&v36[4] = v14;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "File Cache Hit", "File cache hit: %{xcode:string}@", v36, 0xCu);
        }
      }

LABEL_23:

      v33 = 1;
      goto LABEL_24;
    }
  }

  v16 = [v3 findFileInCache:fileHash];
  v14 = v16;
  if (v16)
  {
    goto LABEL_5;
  }

  v14 = [v3 fileCachePathFromSourcePath:0 forBackgroundDownload:v12];
  v20 = sub_100063BEC(v14);
  signpostId2 = [(MSDOperation *)self signpostId];
  if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = signpostId2;
    if (os_signpost_enabled(v20))
    {
      *v36 = 138412290;
      *&v36[4] = identifier;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "Download App", "App identifier: %{xcode:string}@", v36, 0xCu);
    }
  }

  v17 = [(MSDApplicationFileDownloadOperation *)self _downloadAppArchiveFile:identifier ofHash:fileHash ofAppUID:uniqueIdentifier currenntAppUID:currentUniqueIdentifier toFolder:v14];
  v23 = sub_100063BEC(v17);
  signpostId3 = [(MSDOperation *)self signpostId];
  if (signpostId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = signpostId3;
    if (os_signpost_enabled(v23))
    {
      *v36 = 67109120;
      *&v36[4] = v17 != 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v25, "Download App", "App download result: %{xcode:BOOLean}d", v36, 8u);
    }
  }

  if (v17)
  {
    context6 = [(MSDOperation *)self context];
    useDiffPatch = [context6 useDiffPatch];

    if (useDiffPatch)
    {
      [v3 addAppDiffPatchFile:v17 sourceAppUID:currentUniqueIdentifier targetAppUID:uniqueIdentifier];
    }

    else if (([fileHash isEqualToString:v17] & 1) == 0)
    {
      context7 = [(MSDOperation *)self context];
      [context7 setFileHash:v17];
    }

    v29 = [v3 fileSizeInCache:v17];
    v30 = sub_100063BEC(v29);
    signpostId4 = [(MSDOperation *)self signpostId];
    if (signpostId4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = signpostId4;
      if (os_signpost_enabled(v30))
      {
        *v36 = 134217984;
        *&v36[4] = v29;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, v32, "File Downloaded", "File download size: %{xcode:size-in-bytes}llu", v36, 0xCu);
      }
    }

    goto LABEL_23;
  }

  v35 = sub_1000CEF08(v14, self, v36);
  v33 = 0;
  if (v35)
  {
    goto LABEL_25;
  }

  v14 = *v36;
LABEL_24:

LABEL_25:
  return v33;
}

- (id)_downloadAppArchiveFile:(id)file ofHash:(id)hash ofAppUID:(id)d currenntAppUID:(id)iD toFolder:(id)folder
{
  folderCopy = folder;
  iDCopy = iD;
  dCopy = d;
  hashCopy = hash;
  fileCopy = file;
  v17 = objc_alloc_init(MSDDownloadIPARequest);
  [(MSDDownloadIPARequest *)v17 setAppID:fileCopy];

  [(MSDDownloadIPARequest *)v17 setFileHash:hashCopy];
  [(MSDDownloadIPARequest *)v17 setUid:dCopy];

  [(MSDDownloadIPARequest *)v17 setCurrentUID:iDCopy];
  [(MSDServerRequest *)v17 setSavePath:folderCopy];

  context = [(MSDOperation *)self context];
  originServer = [context originServer];
  [(MSDDownloadIPARequest *)v17 setOriginServer:originServer];

  v20 = +[MSDServerRequestHandler sharedInstance];
  v21 = [v20 handleRequestSync:v17];

  error = [v21 error];
  if (error)
  {
    [(MSDOperation *)self setError:error];
    fileName = 0;
  }

  else
  {
    isDiffPatch = [v21 isDiffPatch];
    context2 = [(MSDOperation *)self context];
    [context2 setUseDiffPatch:isDiffPatch];

    fileName = [v21 fileName];
  }

  return fileName;
}

@end