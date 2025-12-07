@interface SSMetricsEventTableEntity
- (id)reportingCanaryIdentifier;
- (id)reportingDictionary;
- (id)reportingJSON;
- (void)dealloc;
@end

@implementation SSMetricsEventTableEntity

- (void)dealloc
{
  reportingDictionary = self->_reportingDictionary;
  self->_reportingDictionary = 0;

  v4.receiver = self;
  v4.super_class = SSMetricsEventTableEntity;
  [(SSMetricsEventTableEntity *)&v4 dealloc];
}

- (id)reportingCanaryIdentifier
{
  reportingDictionary = [(SSMetricsEventTableEntity *)self reportingDictionary];
  v3 = [reportingDictionary objectForKey:@"canary"];

  return v3;
}

- (id)reportingDictionary
{
  v35[2] = *MEMORY[0x1E69E9840];
  reportingDictionary = self->_reportingDictionary;
  if (reportingDictionary)
  {
    v3 = reportingDictionary;
    goto LABEL_28;
  }

  database = [(SSSQLiteEntity *)self database];
  if (database)
  {
    v6 = database;
    persistentID = [(SSSQLiteEntity *)self persistentID];

    if (persistentID)
    {
      v8 = objc_autoreleasePoolPush();
      v35[0] = @"eventBody";
      v35[1] = @"timestampReported";
      v33 = 0;
      v34 = 0;
      [(SSSQLiteEntity *)self getValues:&v33 forProperties:v35 count:2];
      if (![v34 intValue])
      {
        if (v33)
        {
          v22 = [MEMORY[0x1E696AE40] propertyListWithData:v33 options:2 format:0 error:0];
        }

        else
        {
          v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
        }

        persistentID = v22;
        goto LABEL_24;
      }

      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v11) = shouldLog | 2;
      }

      else
      {
        LODWORD(v11) = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v13 = objc_opt_class();
        v14 = v13;
        v27 = 138412802;
        v28 = v13;
        v29 = 2048;
        persistentID2 = [(SSSQLiteEntity *)self persistentID];
        v31 = 2112;
        v32 = v34;
        v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] === Already Reported Event: %llu -- [Timestamp Reported: %@]", &v27, 32);

        if (!v15)
        {
LABEL_18:

          persistentID = 0;
LABEL_24:
          for (i = 1; i != -1; --i)
          {
          }

          objc_autoreleasePoolPop(v8);
          goto LABEL_27;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
        free(v15);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
      }

      goto LABEL_18;
    }
  }

  else
  {
    persistentID = 0;
  }

LABEL_27:
  v24 = self->_reportingDictionary;
  self->_reportingDictionary = persistentID;
  v25 = persistentID;

  v3 = self->_reportingDictionary;
LABEL_28:

  return v3;
}

- (id)reportingJSON
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  reportingDictionary = [(SSMetricsEventTableEntity *)self reportingDictionary];
  if (reportingDictionary)
  {
    v32 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:reportingDictionary options:1 error:&v32];
    v6 = v32;
    if (v5)
    {
      goto LABEL_29;
    }

    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v33 = 138412802;
      v34 = v11;
      v35 = 2112;
      selfCopy = v6;
      v37 = 2112;
      v38 = reportingDictionary;
      v12 = v11;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] Error creating JSON: %@ -- Input: %@", &v33, 32);

      if (!v13)
      {
LABEL_15:

        goto LABEL_29;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [(SSMetricsEventTableEntity *)v6 shouldLog];
  if ([(SSMetricsEventTableEntity *)v6 shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog2;
  }

  oSLogObject2 = [(SSMetricsEventTableEntity *)v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_27;
  }

  v33 = 138412546;
  v34 = objc_opt_class();
  v35 = 2112;
  selfCopy = self;
  v23 = v34;
  v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "[%@] No Dictionary Representation for: %@", &v33, 22);

  if (v24)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
    free(v24);
    SSFileLog(v6, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject2);
LABEL_27:
  }

  v5 = 0;
LABEL_29:

  objc_autoreleasePoolPop(v3);

  return v5;
}

@end