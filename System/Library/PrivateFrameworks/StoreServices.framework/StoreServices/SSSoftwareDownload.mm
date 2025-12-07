@interface SSSoftwareDownload
- (BOOL)addAsset:(id)asset forType:(id)type;
- (BOOL)isBackgroundNetworkingUserInitiated;
- (BOOL)isEligibleForRestore:(id *)restore;
- (BOOL)removeAsset:(id)asset;
- (SSSoftwareDownload)initWithJob:(id)job;
- (SSSoftwareDownload)initWithPersistentIdentifier:(int64_t)identifier;
- (double)estimatedSecondsRemaining;
- (id)assetsForType:(id)type;
- (id)backgroundNetworkingJobGroupName;
- (id)downloadPhaseIdentifier;
- (id)downloadPolicy;
- (id)metadata;
- (id)networkConstraints;
- (id)status;
- (id)valueForProperty:(id)property;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (int64_t)downloadSizeLimit;
- (void)pause;
- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block;
- (void)restart;
- (void)resume;
- (void)setBackgroundNetworkingJobGroupName:(id)name;
- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated;
- (void)setDownloadHandler:(id)handler completionBlock:(id)block;
- (void)setDownloadPolicy:(id)policy;
- (void)setMetadata:(id)metadata;
- (void)setNetworkConstraints:(id)constraints;
- (void)setStatus:(id)status;
- (void)setValuesWithStoreDownloadMetadata:(id)metadata;
@end

@implementation SSSoftwareDownload

- (SSSoftwareDownload)initWithJob:(id)job
{
  jobCopy = job;
  v9.receiver = self;
  v9.super_class = SSSoftwareDownload;
  v6 = -[SSEntity _initWithPersistentIdentifier:](&v9, sel__initWithPersistentIdentifier_, [jobCopy persistentID]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 12, job);
  }

  return v7;
}

- (SSSoftwareDownload)initWithPersistentIdentifier:(int64_t)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v18 = 138543362;
  v19 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v18, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)downloadPhaseIdentifier
{
  phase = [(ASDJob *)self->_job phase];
  if (phase > 8)
  {
    v3 = SSDownloadPhaseWaiting;
  }

  else
  {
    v3 = off_1E84B3E88[phase];
  }

  v4 = *v3;

  return v4;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"7"])
  {
    bundleID = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ASDJob storeItemID](self->_job, "storeItemID")}];
LABEL_9:
    v6 = bundleID;
    goto LABEL_10;
  }

  if ([propertyCopy isEqualToString:@"V"])
  {
    bundleID = [MEMORY[0x1E696AD98] numberWithInt:{-[ASDJob type](self->_job, "type") == 3}];
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"c"])
  {
    bundleID = [(ASDJob *)self->_job bundleID];
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"1"])
  {
    bundleID = @"software";
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)networkConstraints
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (void)setMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setNetworkConstraints:(id)constraints
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setStatus:(id)status
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (id)status
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported deprecated method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)assetsForType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v17, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (BOOL)addAsset:(id)asset forType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedDaemonConfig:asset];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v18 = 138543362;
  v19 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v18, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)backgroundNetworkingJobGroupName
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (int64_t)bytesDownloaded
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (int64_t)bytesTotal
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (id)downloadPolicy
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (int64_t)downloadSizeLimit
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (double)estimatedSecondsRemaining
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return -1.0;
}

- (BOOL)isBackgroundNetworkingUserInitiated
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (BOOL)isEligibleForRestore:(id *)restore
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v17, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (void)pause
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v15 = 138543362;
  v16 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v15, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }
}

- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedDaemonConfig:download];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v17, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }
}

- (BOOL)removeAsset:(id)asset
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v17, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }

  return 0;
}

- (void)resume
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v15 = 138543362;
  v16 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v15, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }
}

- (void)restart
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = NSStringFromSelector(a2);
  v15 = 138543362;
  v16 = v7;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v15, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_12:
  }
}

- (void)setBackgroundNetworkingJobGroupName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setDownloadHandler:(id)handler completionBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [SSLogConfig sharedDaemonConfig:handler];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = NSStringFromSelector(a2);
  v17 = 138543362;
  v18 = v9;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v17, 12);

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_12:
  }
}

- (void)setDownloadPolicy:(id)policy
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

- (void)setValuesWithStoreDownloadMetadata:(id)metadata
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = NSStringFromSelector(a2);
  v16 = 138543362;
  v17 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@ is an unsupported method for software downloads", &v16, 12);

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_12:
  }
}

@end