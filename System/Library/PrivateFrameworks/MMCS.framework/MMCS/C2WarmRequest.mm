@interface C2WarmRequest
- (C2WarmRequest)initWithData:(id)data callback:(id)callback;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)send;
@end

@implementation C2WarmRequest

- (C2WarmRequest)initWithData:(id)data callback:(id)callback
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  callbackCopy = callback;
  v51.receiver = self;
  v51.super_class = C2WarmRequest;
  v8 = [(C2WarmRequest *)&v51 init];
  v10 = v8;
  if (!v8)
  {
    goto LABEL_38;
  }

  if (!dataCopy)
  {
    v18 = mmcs_logging_logger_default(v8, v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "Missing data, cannot init C2WarmRequest", buf, 2u);
    }

    goto LABEL_34;
  }

  v50 = 0;
  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v50];
  v12 = v50;
  v14 = v12;
  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = mmcs_logging_logger_default(v12, v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v14;
      v17 = "Error deserializing request options with error %@";
LABEL_20:
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  invokedURL = [v11 invokedURL];

  if (invokedURL)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    if (uUIDString)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"C2WarmRequest requestUUID:%@", uUIDString];
      if (v26)
      {
        v28 = v26;
        [v11 setIdentifier:v26];
        v29 = MEMORY[0x277CCACE0];
        invokedURL2 = [v11 invokedURL];
        v31 = [v29 componentsWithURL:invokedURL2 resolvingAgainstBaseURL:1];

        if (v31)
        {
          [v31 setQueryItems:MEMORY[0x277CBEBF8]];
          [v31 setPath:@"/asset/init"];
          v34 = [v31 URL];
          if (v34)
          {
            v36 = v34;
            v37 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v34];
            v39 = v37;
            if (v37)
            {
              [v37 setValue:uUIDString forHTTPHeaderField:@"x-apple-request-uuid"];
              objc_storeStrong(&v10->_warmRequest, v39);
              v40 = MEMORY[0x259C67460](callbackCopy);
              callback = v10->_callback;
              v10->_callback = v40;

              objc_storeStrong(&v10->_warmOptions, v11);
            }

            else
            {
              v48 = mmcs_logging_logger_default(0, v38);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v53 = v36;
                _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_ERROR, "Error initializing urlRequest with warmURL %@", buf, 0xCu);
              }
            }

            if (!v39)
            {
              goto LABEL_34;
            }

LABEL_38:
            v47 = v10;
            goto LABEL_39;
          }

          v46 = mmcs_logging_logger_default(0, v35);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v31;
            _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_ERROR, "Error initializing warmURL with urlComponents %@", buf, 0xCu);
          }
        }

        else
        {
          v44 = mmcs_logging_logger_default(v32, v33);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            invokedURL3 = [v11 invokedURL];
            *buf = 138412290;
            v53 = invokedURL3;
            _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_ERROR, "Error initializing urlComponents with url %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v43 = mmcs_logging_logger_default(0, v27);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_ERROR, "Error initializing requestIdentifier", buf, 2u);
        }
      }
    }

    else
    {
      v42 = mmcs_logging_logger_default(v24, v25);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, "Error initializing requestUUID", buf, 2u);
      }
    }

    goto LABEL_34;
  }

  v16 = mmcs_logging_logger_default(v20, v21);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v53 = v11;
    v17 = "Request options missing invokedURL %@ required for warming.";
    goto LABEL_20;
  }

LABEL_21:

LABEL_34:
  v47 = 0;
LABEL_39:

  return v47;
}

- (void)send
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"mmcs_http_warm.m" lineNumber:80 description:@"warmOptions must not be nil."];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    v14 = errorCopy;
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, errorCopy, @"Encountered Network Error on Warm Request", v10, v11, v12, v13);
  }

  else
  {
    error_with_underlying_error = 0;
  }

  callback = self->_callback;
  if (callback)
  {
    callback[2](callback, error_with_underlying_error);
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"mmcs_http_warm.m" lineNumber:130 description:@"Unexpected callback."];
}

@end