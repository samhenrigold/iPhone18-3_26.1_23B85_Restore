@interface WKWebView
- (BOOL)_createSymlinkInDirectory:(id)directory pointingToPath:(id)path;
- (id)_fileNameForSuggestedName:(id)name;
- (void)_writeDataAtPath:(id)path asArchive:(BOOL)archive completion:(id)completion;
@end

@implementation WKWebView

- (void)_writeDataAtPath:(id)path asArchive:(BOOL)archive completion:(id)completion
{
  archiveCopy = archive;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000062EC;
  v11[3] = &unk_10001C860;
  pathCopy = path;
  completionCopy = completion;
  v11[4] = self;
  v8 = pathCopy;
  v9 = completionCopy;
  v10 = objc_retainBlock(v11);
  if (archiveCopy)
  {
    [(WKWebView *)self createWebArchiveDataWithCompletionHandler:v10];
  }

  else
  {
    [(WKWebView *)self _getMainResourceDataWithCompletionHandler:v10];
  }
}

- (BOOL)_createSymlinkInDirectory:(id)directory pointingToPath:(id)path
{
  pathCopy = path;
  v6 = [directory stringByAppendingPathComponent:@"/file"];
  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v22 = 0;
    v8 = [v7 removeItemAtPath:v6 error:&v22];
    v9 = v22;
    v11 = v9;
    if ((v8 & 1) == 0)
    {
      v12 = sub_100009E64(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000A964(v6, v12, v11);
      }
    }

    v21 = v11;
    v13 = [v7 createSymbolicLinkAtPath:v6 withDestinationPath:pathCopy error:&v21];
    v14 = v21;

    if ((v13 & 1) == 0)
    {
      v17 = sub_100009E64(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = v17;
        safari_privacyPreservingDescription = [v14 safari_privacyPreservingDescription];
        *buf = 138543874;
        v24 = v6;
        v25 = 2114;
        v26 = pathCopy;
        v27 = 2114;
        v28 = safari_privacyPreservingDescription;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not create sym link from %{public}@ to %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_fileNameForSuggestedName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v6 = nameCopy;
  }

  else
  {
    _mainFrameURL = [(WKWebView *)self _mainFrameURL];
    pathExtension = [_mainFrameURL pathExtension];

    if (!pathExtension)
    {
      _MIMEType = [(WKWebView *)self _MIMEType];
      pathExtension = [WebMIMETypeRegistry preferredExtensionForMIMEType:_MIMEType];
    }

    v6 = [@"Page" stringByAppendingPathExtension:pathExtension];
  }

  return v6;
}

@end