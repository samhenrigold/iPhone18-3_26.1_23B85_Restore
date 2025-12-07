@interface ABDiagnosticManager
- (ABDiagnosticManager)initWithDiagnosticName:(id)name loggingDirectoryPath:(id)path;
- (void)performDiagnosticsAndWriteToFile;
@end

@implementation ABDiagnosticManager

- (ABDiagnosticManager)initWithDiagnosticName:(id)name loggingDirectoryPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = ABDiagnosticManager;
  v9 = [(ABDiagnosticManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_diagnosticName, name);
    objc_storeStrong(&v10->_loggingDirectoryPath, path);
  }

  return v10;
}

- (void)performDiagnosticsAndWriteToFile
{
  v3 = +[NSFileManager defaultManager];
  loggingDirectoryPath = self->_loggingDirectoryPath;
  v28 = NSFileProtectionKey;
  v29 = NSFileProtectionCompleteUnlessOpen;
  v5 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v19 = 0;
  v6 = [v3 createDirectoryAtPath:loggingDirectoryPath withIntermediateDirectories:1 attributes:v5 error:&v19];
  v7 = v19;

  if (v6)
  {
    extractDiagnosticContent = [(ABDiagnosticManager *)self extractDiagnosticContent];
    v10 = ab_get_framework_log(extractDiagnosticContent);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (extractDiagnosticContent)
    {
      if (v11)
      {
        *buf = 138543362;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Writing to file", buf, 0xCu);
      }

      v10 = [NSString stringWithFormat:@"%@/%@.txt", self->_loggingDirectoryPath, self->_diagnosticName];
      v18 = 0;
      [extractDiagnosticContent writeToFile:v10 atomically:1 encoding:4 error:&v18];
      v12 = v18;
      v13 = ab_get_framework_log(v12);
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          diagnosticName = self->_diagnosticName;
          *buf = 138544130;
          selfCopy4 = self;
          v22 = 2114;
          v23 = diagnosticName;
          v24 = 2112;
          v25 = v10;
          v26 = 2114;
          v27 = v12;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@]: Error while writing to file (%@): %{public}@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_diagnosticName;
        *buf = 138543874;
        selfCopy4 = self;
        v22 = 2114;
        v23 = v17;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@]: Wrote diagnostics to file %@", buf, 0x20u);
      }
    }

    else if (v11)
    {
      v16 = self->_diagnosticName;
      *buf = 138543618;
      selfCopy4 = self;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@]: No diagnostic content", buf, 0x16u);
    }
  }

  else
  {
    extractDiagnosticContent = ab_get_framework_log(v8);
    if (os_log_type_enabled(extractDiagnosticContent, OS_LOG_TYPE_ERROR))
    {
      sub_100002C24(self, v7, extractDiagnosticContent);
    }
  }
}

@end