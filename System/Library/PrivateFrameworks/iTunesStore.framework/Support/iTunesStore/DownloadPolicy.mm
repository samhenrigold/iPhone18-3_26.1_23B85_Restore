@interface DownloadPolicy
- (SSDownloadPolicy)downloadPolicy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setPolicyData:(id)data;
@end

@implementation DownloadPolicy

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadPolicy;
  [(DownloadPolicy *)&v3 dealloc];
}

- (SSDownloadPolicy)downloadPolicy
{
  result = self->_cachedPolicy;
  if (!result)
  {
    result = [(DownloadPolicy *)self policyData];
    if (result)
    {
      v11 = 0;
      self->_cachedPolicy = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:result error:&v11];
      if (v11)
      {
        v4 = +[SSLogConfig sharedStoreServicesConfig];
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

        if (v6)
        {
          v8 = objc_opt_class();
          v12 = 138543618;
          v13 = v8;
          v14 = 2114;
          v15 = v11;
          v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to unarchive download policy. Error = %{public}@", &v12, 22);
          if (v9)
          {
            v10 = v9;
            [NSString stringWithCString:v9 encoding:4];
            free(v10);
            SSFileLog();
          }
        }
      }

      return self->_cachedPolicy;
    }

    else
    {
      self->_cachedPolicy = 0;
    }
  }

  return result;
}

- (void)setPolicyData:(id)data
{
  [(DownloadPolicy *)self setValue:data forProperty:@"policy_data"];

  self->_cachedPolicy = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = DownloadPolicy;
  return [(DownloadPolicy *)&v4 copyWithZone:zone];
}

@end