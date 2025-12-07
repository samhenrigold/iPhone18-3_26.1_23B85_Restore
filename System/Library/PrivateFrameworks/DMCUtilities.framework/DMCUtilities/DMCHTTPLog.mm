@interface DMCHTTPLog
+ (id)_logDirectoryForIdentifier:(id)identifier;
+ (void)_writeRequestLogToURL:(id)l request:(id)request response:(id)response responseData:(id)data responseError:(id)error;
+ (void)logHTTPDetailsForIdentifier:(id)identifier request:(id)request response:(id)response responseData:(id)data responseError:(id)error;
+ (void)logHTTPDetailsForIdentifier:(id)identifier request:(id)request response:(id)response responseURL:(id)l responseError:(id)error;
@end

@implementation DMCHTTPLog

+ (void)logHTTPDetailsForIdentifier:(id)identifier request:(id)request response:(id)response responseData:(id)data responseError:(id)error
{
  identifierCopy = identifier;
  requestCopy = request;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  if (+[DMCFeatureOverrides useHTTPLogging])
  {
    v16 = [self _logDirectoryForIdentifier:identifierCopy];
    if (v16)
    {
      [self _writeRequestLogToURL:v16 request:requestCopy response:responseCopy responseData:dataCopy responseError:errorCopy];
    }
  }
}

+ (void)logHTTPDetailsForIdentifier:(id)identifier request:(id)request response:(id)response responseURL:(id)l responseError:(id)error
{
  identifierCopy = identifier;
  requestCopy = request;
  responseCopy = response;
  lCopy = l;
  errorCopy = error;
  if (+[DMCFeatureOverrides useHTTPLogging])
  {
    v16 = MEMORY[0x1E696AEC0];
    absoluteString = [lCopy absoluteString];
    v18 = [v16 stringWithFormat:@"Downloaded data to file: %@", absoluteString];

    v19 = [v18 dataUsingEncoding:4];
    [self logHTTPDetailsForIdentifier:identifierCopy request:requestCopy response:responseCopy responseData:v19 responseError:errorCopy];
  }
}

+ (void)_writeRequestLogToURL:(id)l request:(id)request response:(id)response responseData:(id)data responseError:(id)error
{
  v106 = *MEMORY[0x1E69E9840];
  lCopy = l;
  requestCopy = request;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  v13 = MEMORY[0x1E696AC80];
  v14 = objc_opt_new();
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  v16 = [v13 stringFromDate:v14 timeZone:localTimeZone formatOptions:3955];

  v17 = MEMORY[0x1E696AEC0];
  v18 = requestCopy;
  hTTPMethod = [requestCopy HTTPMethod];
  v20 = [v17 stringWithFormat:@"%@-%@.txt", v16, hTTPMethod];

  v92 = lCopy;
  v21 = [lCopy URLByAppendingPathComponent:v20 isDirectory:0];
  for (i = 1; ; ++i)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v21 path];
    v25 = [defaultManager fileExistsAtPath:path];

    if (!v25 || (i - 1) > 0x63)
    {
      break;
    }

    v26 = MEMORY[0x1E696AEC0];
    hTTPMethod2 = [v18 HTTPMethod];
    v28 = [v26 stringWithFormat:@"%@-%@-%lu.txt", v16, hTTPMethod2, i];

    v29 = [lCopy URLByAppendingPathComponent:v28 isDirectory:0];

    v21 = v29;
    v20 = v28;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  path2 = [v21 path];
  v32 = [defaultManager2 createFileAtPath:path2 contents:0 attributes:0];

  if (v32)
  {
    v101 = 0;
    v35 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v21 error:&v101];
    v36 = v101;
    v38 = v36;
    if (v35)
    {
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:@"<<<<< Request"];
      v86 = v38;
      v40 = MEMORY[0x1E696AEC0];
      hTTPMethod3 = [v18 HTTPMethod];
      [v18 URL];
      v42 = v88 = v35;
      path3 = [v42 path];
      v44 = [v40 stringWithFormat:@"%@ %@ HTTP/1.1", hTTPMethod3, path3];
      [array addObject:v44];

      allHTTPHeaderFields = [v18 allHTTPHeaderFields];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke;
      v99[3] = &unk_1E7ADCB20;
      v46 = array;
      v100 = v46;
      [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v99];

      [v46 addObject:@"\n"];
      v47 = [v46 componentsJoinedByString:@"\n"];
      v48 = [v47 dataUsingEncoding:4];
      v98 = 0;
      LOBYTE(v42) = [v88 writeData:v48 error:&v98];
      v49 = v98;

      if ((v42 & 1) == 0)
      {
        v52 = *DMCLogObjects(v50, v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v103 = v21;
          v104 = 2112;
          v105 = v49;
          _os_log_impl(&dword_1B1630000, v52, OS_LOG_TYPE_ERROR, "Could not write HTTP request headers to file %@: %@", buf, 0x16u);
        }
      }

      hTTPBody = [v18 HTTPBody];
      v54 = responseCopy;
      v87 = hTTPBody;
      if (hTTPBody)
      {
        v97 = 0;
        v55 = [v88 writeData:hTTPBody error:&v97];
        v56 = v97;
        v57 = v49;
        v49 = v56;

        if ((v55 & 1) == 0)
        {
          v60 = *DMCLogObjects(v58, v59);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v103 = v21;
            v104 = 2112;
            v105 = v49;
            _os_log_impl(&dword_1B1630000, v60, OS_LOG_TYPE_ERROR, "Could not write HTTP request body to file %@: %@", buf, 0x16u);
          }
        }
      }

      v84 = v49;
      array2 = [MEMORY[0x1E695DF70] array];

      [array2 addObject:@"\n>>>>> Response"];
      if (responseCopy)
      {
        v62 = MEMORY[0x1E696AEC0];
        statusCode = [responseCopy statusCode];
        v64 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(responseCopy, "statusCode")}];
        v65 = [v62 stringWithFormat:@"HTTP/1.1 %ld %@", statusCode, v64];
        [array2 addObject:v65];

        allHeaderFields = [responseCopy allHeaderFields];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke_37;
        v95[3] = &unk_1E7ADCB20;
        v67 = array2;
        v96 = v67;
        [allHeaderFields enumerateKeysAndObjectsUsingBlock:v95];

        [v67 addObject:@"\n"];
      }

      else if (errorCopy)
      {
        [array2 addObject:@"--- Error ---"];
        v72 = [errorCopy description];
        [array2 addObject:v72];
      }

      else
      {
        [array2 addObject:@"--- Unknown Error ---"];
      }

      v85 = array2;
      v73 = [array2 componentsJoinedByString:@"\n"];
      v74 = [v73 dataUsingEncoding:4];
      v94 = 0;
      v75 = [v88 writeData:v74 error:&v94];
      v76 = v94;

      if ((v75 & 1) == 0)
      {
        v79 = *DMCLogObjects(v77, v78);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v103 = v21;
          v104 = 2112;
          v105 = v76;
          _os_log_impl(&dword_1B1630000, v79, OS_LOG_TYPE_ERROR, "Could not write HTTP response headers to file %@: %@", buf, 0x16u);
        }
      }

      v70 = dataCopy;
      if (dataCopy)
      {
        v93 = 0;
        v35 = v88;
        v80 = [v88 writeData:dataCopy error:&v93];
        v38 = v93;

        if ((v80 & 1) == 0)
        {
          v83 = *DMCLogObjects(v81, v82);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v103 = v21;
            v104 = 2112;
            v105 = v38;
            _os_log_impl(&dword_1B1630000, v83, OS_LOG_TYPE_ERROR, "Could not write HTTP response body to file %@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v38 = v76;
        v35 = v88;
      }

      [v35 closeFile];
    }

    else
    {
      v71 = *DMCLogObjects(v36, v37);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v103 = v21;
        v104 = 2112;
        v105 = v38;
        _os_log_impl(&dword_1B1630000, v71, OS_LOG_TYPE_ERROR, "Could not open HTTP request log file %@: %@", buf, 0x16u);
      }

      v70 = dataCopy;
      v54 = responseCopy;
    }

    v69 = errorCopy;
  }

  else
  {
    v68 = *DMCLogObjects(v33, v34);
    v69 = errorCopy;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v103 = v21;
      _os_log_impl(&dword_1B1630000, v68, OS_LOG_TYPE_ERROR, "Could not create HTTP request log file %@", buf, 0xCu);
    }

    v38 = 0;
    v70 = dataCopy;
    v54 = responseCopy;
  }
}

void __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

void __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

+ (id)_logDirectoryForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  identifierCopy = identifier;
  v5 = [v3 fileURLWithPath:@"/tmp/DMCHTTPLogs"];
  v6 = [v5 URLByAppendingPathComponent:identifierCopy isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v8 = [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v15];
  v9 = v15;

  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v13 = *DMCLogObjects(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not create HTTP logs directory %@: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

@end