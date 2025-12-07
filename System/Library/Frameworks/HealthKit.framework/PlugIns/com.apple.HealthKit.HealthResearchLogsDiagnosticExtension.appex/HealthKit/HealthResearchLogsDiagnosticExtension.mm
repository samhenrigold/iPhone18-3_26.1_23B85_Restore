@interface HealthResearchLogsDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler;
- (id)createErrorFile:(id)file;
@end

@implementation HealthResearchLogsDiagnosticExtension

- (id)attachmentList
{
  v3 = sub_100001368(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "attachmentList called: calling attachmentsForParameters with empty dictionary", v6, 2u);
  }

  v4 = [(HealthResearchLogsDiagnosticExtension *)self attachmentsForParameters:&__NSDictionary0__struct];

  return v4;
}

- (id)attachmentsForParameters:(id)parameters withProgressHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v7 = sub_100001368(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "attachments for parameters: %{public}@", buf, 0xCu);
  }

  v60 = parametersCopy;

  v8 = +[NSDate now];
  v9 = [v8 dateByAddingTimeInterval:-86400.0];

  v10 = objc_opt_new();
  uUIDString = [v10 UUIDString];
  v12 = [NSString stringWithFormat:@"%@-research", uUIDString];

  v13 = NSTemporaryDirectory();
  v14 = [v13 stringByAppendingPathComponent:v12];
  v15 = [NSURL fileURLWithPath:v14];
  v16 = [v15 URLByAppendingPathExtension:@"logs"];

  v17 = NSTemporaryDirectory();
  v18 = [v17 stringByAppendingPathComponent:v12];
  v19 = [NSURL fileURLWithPath:v18];
  v20 = [v19 URLByAppendingPathExtension:@"logarchive"];

  v22 = sub_100001368(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v71 = 0x40BC200000000000;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "logWindowSize (chunk): %.2f", buf, 0xCu);
  }

  v24 = sub_100001368(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v71 = 0x40F5180000000000;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "logArchiveIntervalSize (window): %.2f", buf, 0xCu);
  }

  v26 = sub_100001368(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    path = [v16 path];
    *buf = 138412290;
    v71 = path;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "researchLogsURL: %@", buf, 0xCu);
  }

  v29 = sub_100001368(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [v20 path];
    *buf = 138412290;
    v71 = path2;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "logArchiveURL: %@", buf, 0xCu);
  }

  path3 = [v20 path];
  [path3 UTF8String];
  [v9 timeIntervalSince1970];
  Archive = OSLogCreateArchive();

  v34 = sub_100001368(v33);
  v35 = v34;
  v59 = v9;
  if (Archive)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000073FC(Archive, v35);
    }

    archive = [NSString stringWithFormat:@"Error: Couldn't create OSLogArchive with status: %d", Archive];
    v37 = [archive dataUsingEncoding:4];
    [v37 writeToURL:v16 atomically:1];
    name = [DEAttachmentItem attachmentWithPathURL:v16];
    v69 = name;
    v39 = [NSArray arrayWithObjects:&v69 count:1];
  }

  else
  {
    selfCopy = self;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Successfully triggered logArchive", buf, 2u);
    }

    v37 = [&off_10000CBA0 mutableCopy];
    v41 = +[UIDevice currentDevice];
    name = [v41 name];

    [v37 addObjectsFromArray:&off_10000CBB8];
    v65 = 0;
    v42 = [[HRLDLogArchiveProcessor alloc] initWithArchiveStartDate:v9 deviceName:name logArchiveURL:v20 outputFileURL:v16 redactedToken:@"<REDACTED>" windowSize:&v65 error:7200.0];
    v43 = v65;
    v58 = v42;
    if (v43)
    {
      archive = v43;
      v44 = sub_100001368(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100007474(archive);
      }

      localizedDescription = [archive localizedDescription];
      v46 = [NSString stringWithFormat:@"Encountered error creating Log Processor: %@", localizedDescription, v58, v59];
      v47 = [(HealthResearchLogsDiagnosticExtension *)selfCopy createErrorFile:v46];

      v48 = [DEAttachmentItem attachmentWithPathURL:v47];
      v68[0] = v48;
      v49 = [DEAttachmentItem attachmentWithPathURL:v16];
      v68[1] = v49;
      v39 = [NSArray arrayWithObjects:v68 count:2];

      parametersCopy = v60;
    }

    else
    {
      v64 = 0;
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100001C1C;
      v62[3] = &unk_10000C700;
      v63 = handlerCopy;
      [(HRLDLogArchiveProcessor *)v42 writeLogsToDiskFrom:v37 error:&v64 progressHandler:v62];
      archive = v64;
      v50 = sub_100001368(archive);
      v51 = v50;
      if (archive)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_1000074FC(archive);
        }

        localizedDescription2 = [archive localizedDescription];
        v53 = [NSString stringWithFormat:@"Encountered error writing logs to disk: %@", localizedDescription2, v58, v59];
        v54 = [(HealthResearchLogsDiagnosticExtension *)selfCopy createErrorFile:v53];

        v55 = [DEAttachmentItem attachmentWithPathURL:v54];
        v67[0] = v55;
        v56 = [DEAttachmentItem attachmentWithPathURL:v16];
        v67[1] = v56;
        v39 = [NSArray arrayWithObjects:v67 count:2];
      }

      else
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Successfully finished Research Logging Session.", buf, 2u);
        }

        v54 = [DEAttachmentItem attachmentWithPathURL:v16];
        v66 = v54;
        v39 = [NSArray arrayWithObjects:&v66 count:1];
      }

      parametersCopy = v60;

      v47 = v63;
    }
  }

  return v39;
}

- (id)createErrorFile:(id)file
{
  fileCopy = file;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"session-error"];
  v6 = [NSURL fileURLWithPath:v5];

  v7 = [fileCopy dataUsingEncoding:4];

  [v7 writeToURL:v6 atomically:1];

  return v6;
}

@end