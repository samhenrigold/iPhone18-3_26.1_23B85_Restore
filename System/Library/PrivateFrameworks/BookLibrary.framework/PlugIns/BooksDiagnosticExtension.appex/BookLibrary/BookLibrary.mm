void sub_100000D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100000DC4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ((*(a1 + 56) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v8 = [NSRegularExpression regularExpressionWithPattern:*(*(*(a1 + 48) + 8) + 40) options:0 error:0];
  v9 = [NSRegularExpression regularExpressionWithPattern:@"(shm)" options:0 error:0];
  v10 = [*(a1 + 32) filesInDir:v7 matchingPattern:v8 excludingPattern:v9];
  if ([v10 count])
  {
    v41 = v9;
    v43 = v7;
    v11 = +[NSFileManager defaultManager];
    v12 = NSTemporaryDirectory();
    v13 = [*(a1 + 32) _fileDateSuffix];
    v44 = v6;
    v14 = [v6 stringByAppendingString:v13];
    v15 = [v12 stringByAppendingPathComponent:v14];

    v54 = 1;
    if ([v11 fileExistsAtPath:v15 isDirectory:&v54])
    {
      [v11 removeItemAtPath:v15 error:0];
    }

    v53 = 0;
    v16 = [v11 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v53];
    v17 = v53;
    v18 = v17;
    if ((v16 & 1) == 0)
    {
      v19 = BLBooksDiagnosticExtensionLog(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v57 = v15;
        v58 = 2112;
        v59 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not create temporary directory at path: %@ %@", buf, 0x16u);
      }
    }

    v38 = v18;
    v42 = v8;
    v39 = v15;
    v47 = [NSURL fileURLWithPath:v15, a1];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v40 = v10;
    obj = v10;
    v20 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v20)
    {
      v21 = v20;
      v46 = *v50;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v50 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v49 + 1) + 8 * i);
          v24 = [v23 path];
          v25 = [v23 path];
          v26 = [v25 lastPathComponent];
          v27 = [v47 URLByAppendingPathComponent:v26];
          v48 = 0;
          v28 = v11;
          v29 = [v11 copyItemAtURL:v24 toURL:v27 error:&v48];
          v30 = v48;

          if ((v29 & 1) == 0)
          {
            v32 = BLBooksDiagnosticExtensionLog(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v57 = v23;
              v58 = 2112;
              v59 = v30;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error zipping item: %@ %@", buf, 0x16u);
            }
          }

          v11 = v28;
        }

        v21 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v21);
    }

    v33 = [DEArchiver archiveDirectoryAt:v47 deleteOriginal:1];
    if (v33)
    {
      v34 = *(v37 + 40);
      v35 = [DEAttachmentItem attachmentWithPathURL:v33];
      [v34 addObject:v35];
      v6 = v44;
      v8 = v42;
    }

    else
    {
      v35 = BLBooksDiagnosticExtensionLog(0);
      v8 = v42;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v47;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not create archive directory %@", buf, 0xCu);
      }

      v6 = v44;
    }

    v10 = v40;
    v36 = v38;

    v7 = v43;
    v9 = v41;
  }

  else
  {
    v36 = BLBooksDiagnosticExtensionLog(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v57 = v6;
      v58 = 2112;
      v59 = v7;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Cannot find %@ in directory %@", buf, 0x16u);
    }
  }
}

id BLBooksDiagnosticExtensionLog(uint64_t a1)
{
  if (qword_10000C410 != -1)
  {
    sub_100002E74();
  }

  v2 = qword_10000C408;

  return v2;
}

void sub_1000018C0(id a1)
{
  qword_10000C408 = os_log_create("com.apple.iBooks.BookLibrary", "BLBooksDiagnosticExtensionLog");

  _objc_release_x1();
}