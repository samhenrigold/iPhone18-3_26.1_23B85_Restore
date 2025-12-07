@interface ThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation ThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v6 = BooksThumbsLog(handlerCopy);
  fileURL = [requestCopy fileURL];
  [requestCopy maximumSize];
  if (v8 < 8.0)
  {
    v8 = 8.0;
  }

  v10 = fmin(v8, 1024.0);
  if (v9 >= 8.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 8.0;
  }

  v12 = fmin(v11, 1024.0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = fileURL;
    v48 = 2048;
    v49 = v10;
    v50 = 2048;
    v51 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "provideThumbnailForFileRequest for URL: %{public}@ size: %f,%f", buf, 0x20u);
  }

  if ([BUZipFileArchive isZipArchiveAtURL:fileURL error:0])
  {
    v13 = +[IMLibraryPlist purchasesRepositoryPath];
    v14 = v6;
    v15 = v13;
    v16 = +[NSFileManager defaultManager];
    *buf = 0;
    v17 = [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:buf];
    v18 = *buf;

    if ((v17 & 1) == 0 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000018A8();
    }

    v19 = +[NSFileManager defaultManager];
    lastPathComponent = [fileURL lastPathComponent];
    v21 = [v19 bu_nonCollidingNameForFileName:lastPathComponent inDestPath:v15];

    v22 = [v15 stringByAppendingPathComponent:v21];
    v23 = [NSURL fileURLWithPath:v22];

    v46 = 0;
    v24 = [BUZipFileArchive extractArchiveFromURL:fileURL toURL:v23 options:0 error:&v46];
    v25 = v46;
    if (v24)
    {
      v26 = sub_10000141C(v14, v23);
      v27 = +[NSFileManager defaultManager];
      [v27 removeItemAtURL:v23 error:0];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = sub_10000141C(v6, fileURL);
    v25 = 0;
  }

  if (v26)
  {
    v28 = [[UIImage alloc] initWithData:v26];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 size];
      v33 = v31;
      v34 = v32;
      if (v31 <= v10 && v32 <= v12)
      {
        goto LABEL_37;
      }

      if (v31 == 0.0 || v32 == 0.0)
      {
        v38 = BooksThumbsLog(v30);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100001910(v38);
        }
      }

      else
      {
        if (v31 / v32 > v10 / v12)
        {
          v34 = v32 * (v10 / v31);
          v33 = v10;
LABEL_37:
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10000182C;
          v42[3] = &unk_1000041D8;
          v36 = v29;
          v43 = v36;
          v44 = v33;
          v45 = v34;
          v37 = [QLThumbnailReply replyWithContextSize:v42 currentContextDrawingBlock:v33, v34];

          goto LABEL_38;
        }

        if (v31 / v32 < v10 / v12)
        {
          v33 = v31 * (v12 / v32);
LABEL_36:
          v34 = v12;
          goto LABEL_37;
        }
      }

      v33 = v10;
      goto LABEL_36;
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100001954();
  }

  v36 = 0;
  v37 = 0;
LABEL_38:
  v39 = objc_retainBlock(handlerCopy);
  v40 = v39;
  if (v39)
  {
    (*(v39 + 2))(v39, v37, v25);
  }
}

@end