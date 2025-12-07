@interface SSHTTPServerResponse
- (SSHTTPServerResponse)initWithStatusCode:(signed __int16)code;
- (__CFHTTPMessage)copyHTTPMessage;
- (id)bagFromBody;
- (void)setBodyWithBag:(id)bag;
@end

@implementation SSHTTPServerResponse

- (SSHTTPServerResponse)initWithStatusCode:(signed __int16)code
{
  v5.receiver = self;
  v5.super_class = SSHTTPServerResponse;
  result = [(SSHTTPServerResponse *)&v5 init];
  if (result)
  {
    result->_statusCode = code;
  }

  return result;
}

- (void)setBodyWithBag:(id)bag
{
  v32 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  body = self->_body;
  self->_body = 0;

  if (bagCopy)
  {
    v6 = [MEMORY[0x1E696AE40] propertyList:bagCopy isValidForFormat:100];
    if (v6)
    {
      v8 = SSViTunesStoreFramework(v6, v7);
      v9 = SSVWeakLinkedSymbolForString("ISCopyGzippedDataForData", v8);
      v27 = 0;
      v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:bagCopy format:100 options:0 error:&v27];
      v11 = v27;
      v12 = v9(v10);
      v13 = self->_body;
      self->_body = v12;

      if (v11)
      {
LABEL_6:
        v14 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          LODWORD(v16) = shouldLog | 2;
        }

        else
        {
          LODWORD(v16) = shouldLog;
        }

        oSLogObject = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v16 = v16;
        }

        else
        {
          v16 &= 2u;
        }

        if (v16)
        {
          v18 = objc_opt_class();
          v28 = 138543618;
          v29 = v18;
          v30 = 2112;
          v31 = v11;
          v19 = v18;
          v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%{public}@] Fialed to serialize XML object into body data. Error = %@", &v28, 22);

          if (!v20)
          {
LABEL_18:

            goto LABEL_19;
          }

          oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
          free(v20);
          SSFileLog(v14, @"%@", v21, v22, v23, v24, v25, v26, oSLogObject);
        }

        goto LABEL_18;
      }
    }
  }

  if (!self->_body)
  {
    v11 = 0;
    goto LABEL_6;
  }

LABEL_19:
}

- (id)bagFromBody
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = SSViTunesStoreFramework(self, a2);
  v4 = SSVWeakLinkedSymbolForString("ISCopyDecompressedGZipDataForData", v3);
  v5 = v4(self->_body);
  if (v5)
  {
    v6 = v5;
    goto LABEL_4;
  }

  v6 = self->_body;
  if (v6)
  {
LABEL_4:
    v23 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v23];
    v8 = v23;
    if (!v8)
    {
LABEL_18:

      goto LABEL_19;
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
      v24 = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v8;
      v14 = v13;
      v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%{public}@] Error reading body data into XML object. Error = %@", &v24, 22);

      if (!v15)
      {
LABEL_17:

        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_17;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (__CFHTTPMessage)copyHTTPMessage
{
  headers = [(SSHTTPServerResponse *)self headers];
  v4 = [headers mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = v6;

  [v7 setObject:@"close" forKeyedSubscript:@"Connection"];
  v8 = [v7 objectForKeyedSubscript:@"Content-Type"];

  if (!v8)
  {
    [v7 setObject:@"text/html" forKeyedSubscript:@"Content-Type"];
  }

  body = [(SSHTTPServerResponse *)self body];

  if (body)
  {
    v10 = MEMORY[0x1E696AEC0];
    body2 = [(SSHTTPServerResponse *)self body];
    v12 = [v10 stringWithFormat:@"%lu", objc_msgSend(body2, "length")];
    [v7 setObject:v12 forKeyedSubscript:@"Content-Length"];
  }

  else
  {
    [v7 removeObjectForKey:@"Content-Length"];
  }

  v13 = *MEMORY[0x1E695E480];
  statusCode = [(SSHTTPServerResponse *)self statusCode];
  Response = CFHTTPMessageCreateResponse(v13, statusCode, 0, *MEMORY[0x1E695ADB8]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__SSHTTPServerResponse_copyHTTPMessage__block_invoke;
  v17[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v17[4] = Response;
  [v7 enumerateKeysAndObjectsUsingBlock:v17];
  CFHTTPMessageSetBody(Response, [(SSHTTPServerResponse *)self body]);

  return Response;
}

@end