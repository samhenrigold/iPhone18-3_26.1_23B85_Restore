@interface HangLogsDiagnosticExtensionExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation HangLogsDiagnosticExtensionExtension

- (id)attachmentsForParameters:(id)parameters
{
  v79 = 0;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension" isDirectory:&v79];
  v5 = v79;

  if (v4 && (v5 & 1) == 0)
  {
    v7 = shared_ht_log_handle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100013BAC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_10:
    v21 = &__NSArray0__struct;
    goto LABEL_41;
  }

  v15 = +[NSFileManager defaultManager];
  v16 = [v15 fileExistsAtPath:@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension"];

  if ((v16 & 1) == 0)
  {
    v17 = +[NSFileManager defaultManager];
    v18 = [NSURL fileURLWithPath:@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension"];
    v78 = 0;
    [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v78];
    v7 = v78;

    if (v7)
    {
      v20 = shared_ht_log_handle(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100013C24(v7, v20);
      }

      goto LABEL_10;
    }
  }

  v7 = getListOfHangArchiveFiles(@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension");
  HTCollectHangLogsBundle(@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension", 1);
  v22 = 0.0;
  do
  {
    v23 = getListOfHangArchiveFiles(@"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension");
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v75;
LABEL_14:
      v28 = 0;
      while (1)
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v74 + 1) + 8 * v28);
        if ([v7 indexOfObject:v29]== 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [v24 countByEnumeratingWithState:&v74 objects:v80 count:16];
          if (v26)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      v30 = v29;

      if (!v30)
      {
        goto LABEL_22;
      }

      v21 = objc_opt_new();
      v39 = [DEAttachmentItem attachmentWithPath:v30];
      [v39 setDeleteOnAttach:&__kCFBooleanTrue];
      [v39 setShouldCompress:&__kCFBooleanTrue];
      v72 = v39;
      [v21 addObject:v39];
      v40 = MGCopyAnswer();
      v41 = MGCopyAnswer();
      v42 = objc_opt_new();
      [v42 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      v43 = +[NSDate date];
      v69 = v42;
      v44 = [v42 stringFromDate:v43];
      v70 = v41;
      v71 = v40;
      v45 = [NSString stringWithFormat:@"%@-%@-%@-%@.%@", @"HangHistory", v40, v41, v44, @"log"];

      v46 = [NSString stringWithFormat:@"%@/%@", @"/tmp/com.apple.HangTracer.HangLogsDiagnosticExtension", v45];
      v47 = objc_alloc_init(NSMutableArray);
      v48 = [NSNumber numberWithUnsignedInt:0];
      [v47 addObject:v48];

      v49 = [NSNumber numberWithUnsignedInt:1];
      [v47 addObject:v49];

      v50 = +[NSDate now];
      v51 = [v50 dateByAddingTimeInterval:-86400.0];
      v52 = htCompleteHangHistoryInfo(0, v47, v51, v50);
      v53 = v52;
      v68 = v45;
      if (v52 && (v52 = [v52 length]) != 0)
      {
        v73 = 0;
        v54 = [v53 writeToFile:v46 atomically:1 encoding:4 error:&v73];
        v55 = v73;
        v56 = v55;
        if (v54)
        {
LABEL_35:
          v58 = chmod([v46 UTF8String], 0x1B6u);
          if (v58)
          {
            v59 = shared_ht_log_handle(v58);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              sub_100013DBC(v46, v59, v60, v61, v62, v63, v64, v65);
            }
          }

          v66 = [DEAttachmentItem attachmentWithPath:v46];
          [v66 setDeleteOnAttach:&__kCFBooleanTrue];
          [v21 addObject:v66];

          goto LABEL_40;
        }

        v57 = shared_ht_log_handle(v55);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_100013CF0(v46, v56, v57);
        }
      }

      else
      {
        v57 = shared_ht_log_handle(v52);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_100013D78(v57);
        }

        v56 = 0;
      }

      goto LABEL_35;
    }

LABEL_20:

LABEL_22:
    [NSThread sleepForTimeInterval:0.5];
    v22 = v22 + 0.5;
  }

  while (v22 < 60.0);
  v30 = shared_ht_log_handle(v31);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_100013E28(v30, v32, v33, v34, v35, v36, v37, v38, v22);
  }

  v21 = &__NSArray0__struct;
LABEL_40:

LABEL_41:

  return v21;
}

@end