@interface SSURLConnectionResponse
- (BOOL)ssv_isExpiredResponse;
- (NSData)databaseEncoding;
- (NSString)storeCorrelationID;
- (SSURLConnectionResponse)initWithDatabaseEncoding:(id)encoding;
- (SSURLConnectionResponse)initWithURLResponse:(id)response bodyData:(id)data;
- (SSURLConnectionResponse)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation SSURLConnectionResponse

- (BOOL)ssv_isExpiredResponse
{
  uRLResponse = [(SSURLConnectionResponse *)self URLResponse];
  ssv_isExpiredResponse = [uRLResponse ssv_isExpiredResponse];

  return ssv_isExpiredResponse;
}

- (SSURLConnectionResponse)initWithURLResponse:(id)response bodyData:(id)data
{
  v8.receiver = self;
  v8.super_class = SSURLConnectionResponse;
  v6 = [(SSURLConnectionResponse *)&v8 init];
  if (v6)
  {
    v6->_bodyData = [data copy];
    v6->_urlResponse = response;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSURLConnectionResponse;
  [(SSURLConnectionResponse *)&v3 dealloc];
}

- (SSURLConnectionResponse)initWithDatabaseEncoding:(id)encoding
{
  v40 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:encoding options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35.receiver = self;
    v35.super_class = SSURLConnectionResponse;
    v6 = [(SSURLConnectionResponse *)&v35 init];
    if (v6)
    {
      v7 = [v5 objectForKey:@"9"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = 0;
        v6->_urlResponse = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v34];
        if (v34)
        {
          v8 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            LODWORD(v10) = shouldLog | 2;
          }

          else
          {
            LODWORD(v10) = shouldLog;
          }

          oSLogObject = [v8 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v10 = v10;
          }

          else
          {
            v10 &= 2u;
          }

          if (v10)
          {
            v12 = objc_opt_class();
            v36 = 138543618;
            v37 = v12;
            v38 = 2114;
            v39 = v34;
            v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Failed to unarchive response. Error = %{public}@", &v36, 22);
            if (v13)
            {
              v14 = v13;
              v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
              free(v14);
              SSFileLog(v8, @"%@", v16, v17, v18, v19, v20, v21, v15);
            }
          }
        }
      }

      else
      {
        v22 = [v5 objectForKey:@"7"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [MEMORY[0x1E695DFF8] URLWithString:v22];
          if (v23)
          {
            v24 = v23;
            v25 = [v5 objectForKey:@"4"];
            if (objc_opt_respondsToSelector())
            {
              integerValue = [v25 integerValue];
            }

            else
            {
              integerValue = 0;
            }

            v27 = [v5 objectForKey:@"2"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = 0;
            }

            v28 = objc_alloc(MEMORY[0x1E696AC68]);
            v29 = [v28 initWithURL:v24 statusCode:integerValue HTTPVersion:*MEMORY[0x1E695ADB8] headerFields:v27];
            if ([(NSHTTPURLResponse *)v29 _CFURLResponse])
            {
              [v5 objectForKey:@"3"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                CFURLResponseSetMIMEType();
              }

              v30 = [v5 objectForKey:@"1"];
              if (objc_opt_respondsToSelector())
              {
                [v30 longLongValue];
                CFURLResponseSetExpectedContentLength();
              }
            }

            v6->_urlResponse = v29;
          }
        }
      }

      v31 = [v5 objectForKey:@"0"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_bodyData = v31;
      }

      v32 = [v5 objectForKey:@"8"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_metricsPageEvent = [(SSMetricsMutableEvent *)[SSMetricsPageEvent alloc] initWithBodyDictionary:v32];
      }
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (NSData)databaseEncoding
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  bodyData = self->_bodyData;
  if (bodyData)
  {
    [v3 setObject:bodyData forKey:@"0"];
  }

  metricsPageEvent = self->_metricsPageEvent;
  if (metricsPageEvent)
  {
    [v4 setObject:-[SSMetricsMutableEvent bodyDictionary](metricsPageEvent forKey:{"bodyDictionary"), @"8"}];
  }

  urlResponse = self->_urlResponse;
  if (urlResponse)
  {
    v25 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:urlResponse requiringSecureCoding:1 error:&v25];
    if (v25)
    {
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
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        v26 = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = v25;
        v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "%{public}@: Failed to archive response. Error = %{public}@", &v26, 22);
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
          free(v15);
          SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v16);
        }
      }
    }

    if ([v8 length])
    {
      [v4 setObject:v8 forKey:@"7"];
    }
  }

  v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:0];

  return v23;
}

- (NSString)storeCorrelationID
{
  v2 = [(NSDictionary *)[(NSHTTPURLResponse *)self->_urlResponse allHeaderFields] objectForKey:@"x-apple-jingle-correlation-key"];
  if ([(NSString *)v2 length])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_bodyData);
  SSXPCDictionarySetCFObject(v3, "3", [(SSMetricsMutableEvent *)self->_metricsPageEvent bodyDictionary]);
  SSXPCDictionarySetCFObject(v3, "9", self->_urlResponse);
  return v3;
}

- (SSURLConnectionResponse)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v11.receiver = self;
    v11.super_class = SSURLConnectionResponse;
    v5 = [(SSURLConnectionResponse *)&v11 init];
    if (v5)
    {
      v7 = objc_opt_class();
      v5->_bodyData = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0", v7);
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "3", v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_metricsPageEvent = [(SSMetricsMutableEvent *)[SSMetricsPageEvent alloc] initWithBodyDictionary:v9];
      }

      value = xpc_dictionary_get_value(encoding, "9");
      if (value)
      {
        v5->_urlResponse = [objc_alloc(MEMORY[0x1E696AC68]) initWithXPCEncoding:value];
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end