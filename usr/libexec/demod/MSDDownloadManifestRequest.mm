@interface MSDDownloadManifestRequest
- (BOOL)isValid;
- (id)getQueryItems;
- (id)parseResponseForError:(id)error andPayload:(id)payload;
@end

@implementation MSDDownloadManifestRequest

- (BOOL)isValid
{
  v6.receiver = self;
  v6.super_class = MSDDownloadManifestRequest;
  if (![(MSDCommandServerRequest *)&v6 isValid])
  {
    return 0;
  }

  manifestInfo = [(MSDDownloadManifestRequest *)self manifestInfo];
  v4 = manifestInfo != 0;

  return v4;
}

- (id)getQueryItems
{
  if ([(MSDDownloadManifestRequest *)self isValid])
  {
    v3 = [NSMutableArray arrayWithCapacity:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(MSDDownloadManifestRequest *)self manifestInfo];
    v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          manifestInfo = [(MSDDownloadManifestRequest *)self manifestInfo];
          v10 = [manifestInfo objectForKey:v8];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [v10 stringValue];

            v10 = stringValue;
          }

          v12 = [NSURLQueryItem queryItemWithName:v8 value:v10];
          [v3 addObject:v12];
        }

        v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)parseResponseForError:(id)error andPayload:(id)payload
{
  errorCopy = error;
  payloadCopy = payload;
  v22.receiver = self;
  v22.super_class = MSDDownloadManifestRequest;
  v8 = [(MSDServerRequest *)&v22 parseResponseForError:errorCopy andPayload:payloadCopy];
  error = [v8 error];

  if (error)
  {
    v10 = 0;
  }

  else
  {
    v21 = errorCopy;
    v10 = [(MSDCommandServerRequest *)self getDataDictFromPayload:payloadCopy error:&v21];
    v11 = v21;

    if (v10)
    {
      v13 = sub_100063A54(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        getName = [(MSDServerRequest *)self getName];
        *buf = 138543618;
        v24 = getName;
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Details to download files are: %{public}@", buf, 0x16u);
      }

      v15 = [v10 objectForKey:@"FileName"];
      if (v15)
      {
        v16 = v15;
        [v8 setFileName:v15];
        v17 = [v10 objectForKey:@"OriginServer"];
        [v8 setOriginServer:v17];
      }

      else
      {
        v20 = v11;
        sub_1000C1390(&v20, 3727744512, @"Unexpected server response.");
        v16 = v11;
        v11 = v20;
      }
    }

    errorCopy = v11;
  }

  error2 = [v8 error];

  if (!error2)
  {
    [v8 setError:errorCopy];
  }

  return v8;
}

@end