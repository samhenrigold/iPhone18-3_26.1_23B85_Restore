@interface WebBookmark
- (void)writeOfflineWebView:(id)view withOptions:(unint64_t)options quickLookFilePath:(id)path suggestedFileName:(id)name completion:(id)completion;
@end

@implementation WebBookmark

- (void)writeOfflineWebView:(id)view withOptions:(unint64_t)options quickLookFilePath:(id)path suggestedFileName:(id)name completion:(id)completion
{
  optionsCopy = options;
  viewCopy = view;
  pathCopy = path;
  nameCopy = name;
  completionCopy = completion;
  v51 = pathCopy;
  v16 = (optionsCopy & 1) != 0 && [pathCopy length] == 0;
  offlineArchiveDirectoryPath = [(WebBookmark *)self offlineArchiveDirectoryPath];
  v50 = nameCopy;
  if (v16)
  {
    v18 = &WBReaderWebArchiveName;
    if ((optionsCopy & 2) == 0)
    {
      v18 = &WBPageWebArchiveName;
    }

    v19 = *v18;
  }

  else
  {
    v19 = [viewCopy _fileNameForSuggestedName:nameCopy];
  }

  v20 = v19;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100006BBC;
  v54[3] = &unk_10001C888;
  v59 = v16;
  v21 = viewCopy;
  v55 = v21;
  v22 = offlineArchiveDirectoryPath;
  v56 = v22;
  v23 = v20;
  v57 = v23;
  v24 = completionCopy;
  v58 = v24;
  v25 = objc_retainBlock(v54);
  v26 = [v22 stringByAppendingPathComponent:v23];
  v27 = +[NSFileManager defaultManager];
  v49 = v21;
  if ([v27 fileExistsAtPath:v22 isDirectory:0])
  {
    v28 = [v27 fileExistsAtPath:v26 isDirectory:0];
    if (v28)
    {
      v30 = sub_100009E64(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        uUID = [(WebBookmark *)self UUID];
        *buf = 138543362;
        v61 = uUID;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Offline Reading List: Overwriting existing archive for bookmark UUID %{public}@.", buf, 0xCu);
      }
    }

    v33 = 0;
  }

  else
  {
    v53 = 0;
    v34 = [v27 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v53];
    v35 = v53;
    v33 = v35;
    if ((v34 & 1) == 0)
    {
      v48 = sub_100009E64(v35, v36);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_10000AA04(v48);
      }

      (v25[2])(v25, 0);
      goto LABEL_32;
    }
  }

  v37 = [v51 length];
  v39 = sub_100009E64(v37, v38);
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
  if (v37)
  {
    if (v40)
    {
      sub_10000AA98(v39);
    }

    v52 = v33;
    v41 = [v27 linkItemAtPath:v51 toPath:v26 error:&v52];
    v42 = v52;

    v45 = sub_100009E64(v43, v44);
    v46 = v45;
    if (v41)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        sub_10000AB70(v46);
      }

      (v25[2])(v25, 1);
    }

    else
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10000AADC(v46);
      }

      (v25[2])(v25, 0);
    }

    v33 = v42;
LABEL_32:
    v47 = v49;
    goto LABEL_33;
  }

  if (v40)
  {
    sub_10000ABB4(v39);
  }

  v47 = v49;
  [v49 _writeDataAtPath:v26 asArchive:v16 completion:v25];
LABEL_33:
}

@end