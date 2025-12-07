@interface SteelRoseTrialClient
- (BOOL)processSteelRoseUpdateAtPath:(id)path;
- (SteelRoseTrialClient)init;
- (void)handleNewTrialFactors;
- (void)logOutcomeInternal:(const char *)internal;
- (void)sendMessage:(unint64_t)message;
@end

@implementation SteelRoseTrialClient

- (SteelRoseTrialClient)init
{
  v3 = [TRIClient clientWithIdentifier:345];
  trialClient = self->_trialClient;
  self->_trialClient = v3;

  if (self->_trialClient)
  {
    self->_inTestCohort = 0;
    selfCopy = self;
  }

  else
  {
    v7 = sub_10000A8AC(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating trial client failed", v9, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)logOutcomeInternal:(const char *)internal
{
  v5 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v5 appleInternal];

  if (appleInternal && self->_inTestCohort)
  {
    v15[1] = &v16;
    v7 = [NSString stringWithUTF8String:internal];
    v8 = [[NSString alloc] initWithFormat:v7 arguments:&v16];
    v9 = +[OSASystemConfiguration sharedInstance];
    pathDiagnostics = [v9 pathDiagnostics];
    v11 = [pathDiagnostics stringByAppendingPathComponent:@"osatool_steelrose_outcome"];

    v15[0] = 0;
    LOBYTE(pathDiagnostics) = [v8 writeToFile:v11 atomically:0 encoding:4 error:v15];
    v12 = v15[0];
    v13 = v12;
    if ((pathDiagnostics & 1) == 0)
    {
      v14 = sub_10000A8AC(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10001545C();
      }
    }
  }
}

- (void)handleNewTrialFactors
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"cohort_r" withNamespaceName:@"STEEL_ROSE_CHECK_IN_COHORT"];
  v4 = v3;
  if (!v3)
  {
    v14 = sub_10000A8AC(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001550C();
    }

    goto LABEL_12;
  }

  fileValue = [v3 fileValue];
  if (!fileValue)
  {
    v14 = sub_10000A8AC(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000154D0();
    }

LABEL_12:

    v6 = 0;
    goto LABEL_16;
  }

  v6 = fileValue;
  hasPath = [fileValue hasPath];
  v8 = hasPath;
  v9 = sub_10000A8AC(hasPath);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      path = [v6 path];
      v15 = 138412290;
      v16 = path;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "asset path: %@", &v15, 0xCu);
    }

    path2 = [v6 path];
    v13 = [(SteelRoseTrialClient *)self processSteelRoseUpdateAtPath:path2];

    if ((v13 & 1) == 0)
    {
      [(SteelRoseTrialClient *)self logOutcomeInternal:"Error handling update"];
    }
  }

  else
  {
    if (v10)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Couldn't get asset path", &v15, 2u);
    }
  }

LABEL_16:
}

- (void)sendMessage:(unint64_t)message
{
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics"];
  v6 = [v5 BOOLForKey:@"UATSteelRoseServer"];

  if (v6 && (+[OSASystemConfiguration sharedInstance](OSASystemConfiguration, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 appleInternal], v7, (v8 & 1) != 0))
  {
    v9 = @"https://uat.steelrose.swe.apple.com/api/v1/checkin";
  }

  else
  {
    v9 = @"https://steelrose.swe.apple.com/api/v1/checkin";
  }

  v10 = [NSURL URLWithString:v9];
  v11 = [NSMutableURLRequest requestWithURL:v10];
  [v11 setHTTPMethod:@"POST"];
  message = [NSString stringWithFormat:@"cohort=%lu", message];
  v13 = [message dataUsingEncoding:4];
  [v11 setTimeoutInterval:120.0];
  [v11 setHTTPBody:v13];
  v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v15 = [NSURLSession sessionWithConfiguration:v14];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000AEF8;
  v17[3] = &unk_100025050;
  v17[4] = self;
  v16 = [v15 dataTaskWithRequest:v11 completionHandler:v17];
  [v16 set_APSRelayTopic:@"com.apple.private.alloy.steelrose"];
  [v16 resume];
}

- (BOOL)processSteelRoseUpdateAtPath:(id)path
{
  pathCopy = path;
  v58 = 0;
  v5 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v5 appleInternal];

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:pathCopy isDirectory:&v58];

  if ((v8 & 1) == 0)
  {
    v10 = sub_10000A8AC(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100015548();
    }

    goto LABEL_7;
  }

  if (v58 != 1)
  {
    v57 = 0;
    v12 = [NSString stringWithContentsOfFile:pathCopy encoding:4 error:&v57];
    v13 = v57;
    v10 = v13;
    if (v13)
    {
      v14 = sub_10000A8AC(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000155B8();
      }

      v11 = 0;
      goto LABEL_58;
    }

    v15 = +[NSCharacterSet newlineCharacterSet];
    v14 = [v12 componentsSeparatedByCharactersInSet:v15];

    if (!v14)
    {
      crashReporterKey = sub_10000A8AC(v16);
      if (os_log_type_enabled(crashReporterKey, OS_LOG_TYPE_ERROR))
      {
        sub_100015834();
      }

      goto LABEL_56;
    }

    v17 = [v14 count];
    if (appleInternal)
    {
      if (v17 <= 1)
      {
        crashReporterKey = sub_10000A8AC(v17);
        if (os_log_type_enabled(crashReporterKey, OS_LOG_TYPE_ERROR))
        {
          sub_1000157AC(v14, crashReporterKey);
        }

        goto LABEL_56;
      }

      v49 = v12;
      v19 = 256;
    }

    else
    {
      if (v17 <= 0x19)
      {
        crashReporterKey = sub_10000A8AC(v17);
        if (os_log_type_enabled(crashReporterKey, OS_LOG_TYPE_ERROR))
        {
          sub_10001562C(v14, crashReporterKey);
        }

        goto LABEL_56;
      }

      v49 = v12;
      v19 = 255;
    }

    v20 = [v14 objectAtIndexedSubscript:0];
    intValue = [v20 intValue];

    if (!intValue || v19 < intValue)
    {
      crashReporterKey = sub_10000A8AC(v22);
      if (os_log_type_enabled(crashReporterKey, OS_LOG_TYPE_ERROR))
      {
        sub_10001573C();
      }

      v11 = 0;
      v12 = v49;
      goto LABEL_57;
    }

    v48 = intValue;
    if (intValue == 256)
    {
      v23 = sub_10000A8AC(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.count[0]) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using test cohort", &buf, 2u);
      }

      self->_inTestCohort = 1;
    }

    v24 = +[OSASystemConfiguration sharedInstance];
    crashReporterKey = [v24 crashReporterKey];

    if (crashReporterKey)
    {
      v26 = [crashReporterKey length];
      if (v26 != 40)
      {
        v27 = sub_10000A8AC(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000156C4();
        }
      }

      v47 = crashReporterKey;
      uTF8String = [crashReporterKey UTF8String];
      strcpy(data, "STEEL_ROSE");
      memset(&buf, 0, sizeof(buf));
      CC_SHA256_Init(&buf);
      CC_SHA256_Update(&buf, data, 0xAu);
      v29 = strlen(uTF8String);
      CC_SHA256_Update(&buf, uTF8String, v29);
      CC_SHA256_Final(md, &buf);
      v30 = [(SteelRoseTrialClient *)self hexStringForSHA256Digest:md];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v14;
      v31 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v53;
        if (v48 == 256)
        {
          v34 = appleInternal;
        }

        else
        {
          v34 = 0;
        }

LABEL_39:
        v35 = 0;
        while (1)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v52 + 1) + 8 * v35);
          if (v34)
          {
            v37 = [*(*(&v52 + 1) + 8 * v35) isEqualToString:@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"];
            if (v37)
            {
              break;
            }
          }

          v38 = [v36 isEqualToString:v30];
          if (v38)
          {
            v39 = v30;
            v43 = sub_10000A8AC(v38);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *v51 = 0;
              v44 = "Match";
              v45 = v43;
              v46 = OS_LOG_TYPE_INFO;
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          if (v32 == ++v35)
          {
            v32 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
            if (v32)
            {
              goto LABEL_39;
            }

            goto LABEL_47;
          }
        }

        v39 = v30;
        v43 = sub_10000A8AC(v37);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 0;
          v44 = "Matched internal testing key";
          v45 = v43;
          v46 = OS_LOG_TYPE_DEFAULT;
LABEL_64:
          _os_log_impl(&_mh_execute_header, v45, v46, v44, v51, 2u);
        }

LABEL_65:
        crashReporterKey = v47;
        v12 = v49;

        [(SteelRoseTrialClient *)self sendMessage:v48];
        goto LABEL_66;
      }

LABEL_47:
      v39 = v30;

      v40 = sub_10000A8AC([(SteelRoseTrialClient *)self logOutcomeInternal:"Success (no match)"]);
      crashReporterKey = v47;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Match Not found", v51, 2u);
      }

      v12 = v49;
LABEL_66:

      v11 = 1;
      goto LABEL_57;
    }

    v41 = sub_10000A8AC(v25);
    v12 = v49;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100015700();
    }

LABEL_56:
    v11 = 0;
LABEL_57:

LABEL_58:
    goto LABEL_59;
  }

  v10 = sub_10000A8AC(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100015870();
  }

LABEL_7:
  v11 = 0;
LABEL_59:

  return v11;
}

@end