@interface NetworkQualityDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation NetworkQualityDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (objc_opt_class())
  {
    v5 = objc_alloc_init(NSOperationQueue);
    v6 = dispatch_get_global_queue(33, 0);
    [v5 setUnderlyingQueue:v6];

    [v5 setMaxConcurrentOperationCount:1];
    v7 = objc_alloc_init(NetworkQualityConfiguration);
    [v7 setParallel:0];
    [v7 setMaxRuntime:10];
    v8 = dispatch_semaphore_create(0);
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_1000040CC;
    v51 = sub_1000040DC;
    v52 = 0;
    v9 = +[NSDate now];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000040E4;
    v42[3] = &unk_100008308;
    v10 = v7;
    v43 = v10;
    v44 = v5;
    v46 = &v47;
    v11 = v8;
    v45 = v11;
    v38 = v44;
    [v44 addOperationWithBlock:v42];
    v12 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v11, v12);
    v13 = +[NSFileManager defaultManager];
    temporaryDirectory = [v13 temporaryDirectory];

    path = [temporaryDirectory path];
    v16 = [path stringByAppendingString:@"/networkQuality.json"];
    v37 = parametersCopy;

    path2 = [temporaryDirectory path];
    v18 = [path2 stringByAppendingString:@"/networkQuality.txt"];

    v39 = v9;
    v19 = sub_100002A6C(v9, v48[5], v10, 1, 0);
    v20 = v19;
    if (v19)
    {
      v21 = [v19 dataUsingEncoding:4];
      v41 = 0;
      v22 = [v21 writeToFile:v18 options:1 error:&v41];
      v23 = v41;

      if (v22)
      {
        goto LABEL_12;
      }

      sub_100000C70(v24, v25);
      if (os_log_type_enabled(qword_10000C3C8, OS_LOG_TYPE_ERROR))
      {
        sub_100004340();
      }
    }

    else
    {
      v23 = v18;
    }

    v18 = 0;
LABEL_12:

    v27 = sub_1000031A0(v39, v48[5], v10);
    v28 = v27;
    if (v27)
    {
      v29 = [v27 dataUsingEncoding:4];
      v40 = 0;
      v30 = [v29 writeToFile:v16 options:1 error:&v40];
      v31 = v40;

      if (v30)
      {
LABEL_19:

        v26 = objc_alloc_init(NSMutableArray);
        if (v16)
        {
          v34 = [DEAttachmentItem attachmentWithPath:v16];
          [v34 setDeleteOnAttach:&__kCFBooleanTrue];
          [v26 addObject:v34];
        }

        if (v18)
        {
          v35 = [DEAttachmentItem attachmentWithPath:v18];
          [v35 setDeleteOnAttach:&__kCFBooleanTrue];
          [v26 addObject:v35];
        }

        _Block_object_dispose(&v47, 8);
        parametersCopy = v37;
        goto LABEL_24;
      }

      sub_100000C70(v32, v33);
      if (os_log_type_enabled(qword_10000C3C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000043BC();
      }
    }

    else
    {
      v31 = v16;
    }

    v16 = 0;
    goto LABEL_19;
  }

  sub_100000C70(0, v4);
  if (os_log_type_enabled(qword_10000C3C8, OS_LOG_TYPE_ERROR))
  {
    sub_100004438();
  }

  v26 = 0;
LABEL_24:

  return v26;
}

@end