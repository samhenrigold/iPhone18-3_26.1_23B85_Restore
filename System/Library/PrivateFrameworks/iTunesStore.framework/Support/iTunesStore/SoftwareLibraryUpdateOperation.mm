@interface SoftwareLibraryUpdateOperation
- (NSDictionary)changeset;
- (NSString)bundleIdentifier;
- (SoftwareLibraryUpdateOperation)initWithBundleIdentifier:(id)identifier changeset:(id)changeset;
- (void)dealloc;
- (void)run;
@end

@implementation SoftwareLibraryUpdateOperation

- (SoftwareLibraryUpdateOperation)initWithBundleIdentifier:(id)identifier changeset:(id)changeset
{
  v8.receiver = self;
  v8.super_class = SoftwareLibraryUpdateOperation;
  v6 = [(SoftwareLibraryUpdateOperation *)&v8 init];
  if (v6)
  {
    v6->_bundleID = [identifier copy];
    v6->_changeset = [changeset copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SoftwareLibraryUpdateOperation;
  [(SoftwareLibraryUpdateOperation *)&v3 dealloc];
}

- (NSString)bundleIdentifier
{
  v2 = self->_bundleID;

  return v2;
}

- (NSDictionary)changeset
{
  v2 = self->_changeset;

  return v2;
}

- (void)run
{
  v33 = 0;
  if (!self->_bundleID)
  {
    goto LABEL_39;
  }

  v3 = [objc_msgSend(objc_msgSend(+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy "applicationProxyForIdentifier:{"bundleContainerURL"), "path"), "stringByAppendingPathComponent:", @"iTunesMetadata.plist"}")];
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v3;
  v5 = [[NSMutableDictionary alloc] initWithContentsOfFile:v3];
  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = [(NSDictionary *)self->_changeset count];
      bundleID = self->_bundleID;
      v34 = 138413058;
      v35 = v10;
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = bundleID;
      v40 = 2112;
      v41 = v4;
      v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Changing %lu keys for %@ at %@", &v34, 42);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v30 = v15;
        SSFileLog();
      }
    }

    changeset = self->_changeset;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001FE910;
    v32[3] = &unk_10032C360;
    v32[4] = v5;
    [(NSDictionary *)changeset enumerateKeysAndObjectsUsingBlock:v32, v30];
    v17 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v33];
    if (v17)
    {
      v5 = 1;
      if ([(NSData *)v17 writeToFile:v4 options:1 error:&v33])
      {
        goto LABEL_40;
      }

      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        LODWORD(v20) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v20) = shouldLog2;
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v20;
      }

      else
      {
        v20 &= 2u;
      }

      if (!v20)
      {
        goto LABEL_39;
      }

      v22 = objc_opt_class();
      v34 = 138412546;
      v35 = v22;
      v36 = 2112;
      v37 = v33;
      LODWORD(v31) = 22;
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not write property list: %@", &v34, v31);
    }

    else
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        LODWORD(v26) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v26) = shouldLog3;
      }

      oSLogObject3 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v26;
      }

      else
      {
        v26 &= 2u;
      }

      if (!v26)
      {
        goto LABEL_39;
      }

      v28 = objc_opt_class();
      v34 = 138412546;
      v35 = v28;
      v36 = 2112;
      v37 = v33;
      LODWORD(v31) = 22;
      v23 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not serialize property list: %@", &v34, v31);
    }

    v5 = v23;
    if (v23)
    {
      v29 = [NSString stringWithCString:v23 encoding:4];
      free(v5);
      v30 = v29;
      SSFileLog();
LABEL_39:
      v5 = 0;
    }
  }

LABEL_40:
  [(SoftwareLibraryUpdateOperation *)self setError:v33, v30];
  [(SoftwareLibraryUpdateOperation *)self setSuccess:v5];
}

@end