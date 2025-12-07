@interface MSDS3SessionTaskInfo
- (id)getRequestForTimeout:(double)timeout;
@end

@implementation MSDS3SessionTaskInfo

- (id)getRequestForTimeout:(double)timeout
{
  s3url = [(MSDS3SessionTaskInfo *)self s3url];
  v6 = [NSURL URLWithString:s3url];
  v7 = [NSMutableURLRequest requestWithURL:v6 cachePolicy:1 timeoutInterval:timeout];
  [(MSDSessionTaskInfo *)self setRequest:v7];

  request = [(MSDSessionTaskInfo *)self request];

  if (request)
  {
    request2 = [(MSDSessionTaskInfo *)self request];
    [request2 setHTTPMethod:@"PUT"];

    httpHeaders = [(MSDS3SessionTaskInfo *)self httpHeaders];

    if (httpHeaders)
    {
      v13 = sub_100063A54(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received custom http headers to use.", buf, 2u);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      httpHeaders2 = [(MSDS3SessionTaskInfo *)self httpHeaders];
      v15 = [httpHeaders2 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v31;
        do
        {
          v19 = 0;
          v20 = v17;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(httpHeaders2);
            }

            v17 = *(*(&v30 + 1) + 8 * v19);

            v22 = sub_100063A54(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              httpHeaders3 = [(MSDS3SessionTaskInfo *)self httpHeaders];
              v27 = [httpHeaders3 objectForKey:v17];
              *buf = 138412546;
              v35 = v17;
              v36 = 2112;
              v37 = v27;
              _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Http Header: %@, Value: %@", buf, 0x16u);
            }

            request3 = [(MSDSessionTaskInfo *)self request];
            httpHeaders4 = [(MSDS3SessionTaskInfo *)self httpHeaders];
            v25 = [httpHeaders4 objectForKey:v17];
            [request3 setValue:v25 forHTTPHeaderField:v17];

            v19 = v19 + 1;
            v20 = v17;
          }

          while (v16 != v19);
          v16 = [httpHeaders2 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v16);
      }
    }

    else
    {
      httpHeaders2 = [(MSDSessionTaskInfo *)self request];
      [httpHeaders2 setValue:@"application/gzip" forHTTPHeaderField:@"Content-Type"];
    }

    request4 = [(MSDSessionTaskInfo *)self request];
  }

  else
  {
    sub_1000D1590(v9);
    request4 = 0;
  }

  return request4;
}

@end