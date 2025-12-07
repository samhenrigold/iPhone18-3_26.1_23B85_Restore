@interface CoreDAVRequestLogger
+ (id)_redactedHeadersFromHeaders:(id)headers;
- (CoreDAVRequestLogger)initWithProvider:(id)provider;
- (id)_inflateRequestBody:(id)body;
- (void)finishCoreDAVResponse;
- (void)logCoreDAVRequest:(id)request withTaskIdentifier:(id)identifier;
- (void)logCoreDAVResponseHeaders:(id)headers andStatusCode:(int64_t)code withTaskIdentifier:(id)identifier;
- (void)logCoreDAVResponseSnippet:(id)snippet withTaskIdentifier:(id)identifier isBody:(BOOL)body;
@end

@implementation CoreDAVRequestLogger

- (CoreDAVRequestLogger)initWithProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = CoreDAVRequestLogger;
  v6 = [(CoreDAVRequestLogger *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, provider);
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1 selector:sel_caseInsensitiveCompare_];
    v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v8, 0}];
    [(CoreDAVRequestLogger *)v7 setHeaderSortDescriptors:v9];
  }

  return v7;
}

- (id)_inflateRequestBody:(id)body
{
  v12 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  data = [MEMORY[0x277CBEB28] data];
  v5 = [@"[compression: gzip]\n" dataUsingEncoding:4];
  [data appendData:v5];

  memset(&v10, 0, sizeof(v10));
  bzero(v11, 0x2000uLL);
  if (inflateInit2_(&v10, 31, "1.2.12", 112))
  {
    v6 = 0;
  }

  else
  {
    v7 = bodyCopy;
    v10.avail_in = [bodyCopy length];
    v10.total_in = v10.avail_in;
    while (1)
    {
      v10.next_out = v11;
      v10.avail_out = 0x2000;
      v8 = inflate(&v10, 0);
      if ((0x2000 - v10.avail_out) >= 1)
      {
        [data appendBytes:v11 length:?];
      }

      if (v8)
      {
        break;
      }

      if (!v10.avail_in)
      {
        goto LABEL_11;
      }
    }

    if (v8 != 1)
    {

      data = 0;
    }

LABEL_11:
    inflateEnd(&v10);
    data = data;
    v6 = data;
  }

  return v6;
}

- (void)logCoreDAVRequest:(id)request withTaskIdentifier:(id)identifier
{
  v88 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  v7 = +[CoreDAVLogging sharedLogging];
  v8 = [v7 delegatesToLogTransmittedDataForAccountInfoProvider:self->_provider];

  v9 = [MEMORY[0x277CBEB58] set];
  if ([v8 count])
  {
    hTTPBody = [requestCopy HTTPBody];
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    v12 = [allHTTPHeaderFields CDVObjectForKeyCaseInsensitive:@"Content-Encoding"];
    v13 = [v12 isEqualToString:@"gzip"];

    if (v13)
    {
      v14 = [(CoreDAVRequestLogger *)self _inflateRequestBody:hTTPBody];

      hTTPBody = v14;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v63 = v8;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v79;
      allocator = *MEMORY[0x277CBECE8];
      selfCopy = self;
      v69 = requestCopy;
      v66 = hTTPBody;
      v67 = v9;
      v65 = v15;
      v71 = *v79;
      do
      {
        v19 = 0;
        v72 = v17;
        do
        {
          if (*v79 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v78 + 1) + 8 * v19);
          if ([v9 containsObject:objc_opt_class()])
          {
            if (objc_opt_respondsToSelector())
            {
              v73 = v19;
              logHandle = [v20 logHandle];
              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
              {
                v22 = objc_opt_class();
                *buf = 138543618;
                v84 = v22;
                v85 = 2112;
                v86 = v20;
                v23 = v22;
                _os_log_error_impl(&dword_2452FB000, logHandle, OS_LOG_TYPE_ERROR, "A delegate of similar class [%{public}@] has already logged this message. Skipping this delegate %@", buf, 0x16u);

                v18 = v71;
              }

              goto LABEL_51;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_52;
            }

            v73 = v19;
            [MEMORY[0x277CCACA8] stringWithFormat:@"A delegate of similar class [%@] has already logged this message. Skipping this delegate %@", objc_opt_class(), v20];
          }

          else
          {
            [v9 addObject:objc_opt_class()];
            if (![v20 shouldLogTransmittedData])
            {
              goto LABEL_52;
            }

            v73 = v19;
            v24 = [requestCopy URL];

            if (v24)
            {
              identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"\nTask %@\n", identifierCopy];
              v26 = [identifierCopy dataUsingEncoding:4];
              [v20 coreDAVLogTransmittedDataPartial:v26];

              Current = CFAbsoluteTimeGetCurrent();
              v28 = CFDateCreate(0, Current);
              if (_logFormater_logPred != -1)
              {
                [CoreDAVRequestLogger logCoreDAVRequest:withTaskIdentifier:];
              }

              if (_logFormater___logFormatter)
              {
                StringWithDate = CFDateFormatterCreateStringWithDate(allocator, _logFormater___logFormatter, v28);
              }

              else
              {
                StringWithDate = 0;
              }

              stringWithDate = [MEMORY[0x277CCACA8] stringWithFormat:@"\n>>>>> %@\n", StringWithDate];
              v31 = [stringWithDate dataUsingEncoding:4];
              [v20 coreDAVLogTransmittedDataPartial:v31];

              if (StringWithDate)
              {
                CFRelease(StringWithDate);
              }

              if (v28)
              {
                CFRelease(v28);
              }

              v32 = MEMORY[0x277CCACA8];
              hTTPMethod = [requestCopy HTTPMethod];
              v34 = [requestCopy URL];
              v35 = [v32 stringWithFormat:@"%@ %@\n", hTTPMethod, v34];
              v36 = [v35 dataUsingEncoding:4];
              [v20 coreDAVLogTransmittedDataPartial:v36];

              allHTTPHeaderFields2 = [requestCopy allHTTPHeaderFields];
              if (objc_opt_respondsToSelector())
              {
                provider = self->_provider;
                v39 = [requestCopy URL];
                LODWORD(provider) = [(CoreDAVAccountInfoProvider *)provider shouldHandleHTTPCookiesForURL:v39];

                if (provider)
                {
                  [requestCopy _CFURLRequest];
                  v40 = CFURLRequestCopyHTTPCookieStorage();
                  if (v40)
                  {
                    v41 = v40;
                    [requestCopy URL];
                    v42 = _CFHTTPCookieStorageCopyRequestHeaderFieldsForURL();
                    CFRelease(v41);
                  }

                  else
                  {
                    mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
                    v44 = [requestCopy URL];
                    v45 = [mEMORY[0x277CBAB38] cookiesForURL:v44];

                    v42 = [MEMORY[0x277CBAB30] requestHeaderFieldsWithCookies:v45];
                  }

                  if ([v42 count])
                  {
                    v46 = [allHTTPHeaderFields2 mutableCopy];
                    [v46 addEntriesFromDictionary:v42];

                    allHTTPHeaderFields2 = v46;
                  }
                }
              }

              logHandle = [objc_opt_class() _redactedHeadersFromHeaders:allHTTPHeaderFields2];

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              allKeys = [logHandle allKeys];
              headerSortDescriptors = [(CoreDAVRequestLogger *)self headerSortDescriptors];
              v49 = [allKeys sortedArrayUsingDescriptors:headerSortDescriptors];

              v50 = [v49 countByEnumeratingWithState:&v74 objects:v82 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v75;
                do
                {
                  for (i = 0; i != v51; ++i)
                  {
                    if (*v75 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = *(*(&v74 + 1) + 8 * i);
                    v55 = MEMORY[0x277CCACA8];
                    v56 = [logHandle objectForKey:v54];
                    v57 = [v55 stringWithFormat:@"%@: %@\n", v54, v56];
                    v58 = [v57 dataUsingEncoding:4];
                    [v20 coreDAVLogTransmittedDataPartial:v58];
                  }

                  v51 = [v49 countByEnumeratingWithState:&v74 objects:v82 count:16];
                }

                while (v51);
              }

              v59 = [@"\n" dataUsingEncoding:4];
              [v20 coreDAVLogTransmittedDataPartial:v59];

              hTTPBody = v66;
              if (objc_opt_respondsToSelector())
              {
                [v20 coreDAVLogRequestBody:v66];
              }

              else
              {
                [v20 coreDAVLogTransmittedDataPartial:v66];
              }

              self = selfCopy;
              requestCopy = v69;
              v9 = v67;
              v17 = v72;
              v18 = v71;
              v60 = [@"\n" dataUsingEncoding:4];
              [v20 coreDAVLogTransmittedDataPartial:v60];

              v61 = [@">>>>>\n" dataUsingEncoding:4];
              [v20 coreDAVLogTransmittedDataPartial:v61];

              [v20 coreDAVTransmittedDataFinished];
              v15 = v65;
              goto LABEL_51;
            }

            if (objc_opt_respondsToSelector())
            {
              logHandle = [v20 logHandle];
              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v84 = requestCopy;
                _os_log_error_impl(&dword_2452FB000, logHandle, OS_LOG_TYPE_ERROR, "ERROR: Nil URL for Request %@. Skipping rest of Log", buf, 0xCu);
              }

              goto LABEL_51;
            }

            v19 = v73;
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_52;
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Nil URL for Request %@. Skipping rest of Log", requestCopy, v62];
          }
          logHandle = ;
          [v20 coreDAVLogDiagnosticMessage:logHandle atLevel:3];
LABEL_51:

          v19 = v73;
LABEL_52:
          ++v19;
        }

        while (v19 != v17);
        v17 = [v15 countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v17);
    }

    v8 = v63;
  }
}

+ (id)_redactedHeadersFromHeaders:(id)headers
{
  v19 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  if (_redactedHeadersFromHeaders__onceToken != -1)
  {
    +[CoreDAVRequestLogger _redactedHeadersFromHeaders:];
  }

  v4 = headersCopy;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    v10 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([_redactedHeadersFromHeaders__headersToRedact containsObject:v12])
        {
          if (!v8)
          {
            v8 = [v4 mutableCopy];

            v10 = v8;
          }

          [v8 setObject:@"<Redacted>" forKeyedSubscript:v12];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v10 = v4;
  }

  return v10;
}

uint64_t __52__CoreDAVRequestLogger__redactedHeadersFromHeaders___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28584E1F8];
  v1 = _redactedHeadersFromHeaders__headersToRedact;
  _redactedHeadersFromHeaders__headersToRedact = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)logCoreDAVResponseHeaders:(id)headers andStatusCode:(int64_t)code withTaskIdentifier:(id)identifier
{
  v62 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  identifierCopy = identifier;
  v8 = +[CoreDAVLogging sharedLogging];
  selfCopy = self;
  v9 = [v8 delegatesToLogTransmittedDataForAccountInfoProvider:self->_provider];

  if ([v9 count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = v9;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v57;
      allocator = *MEMORY[0x277CBECE8];
      v43 = *v57;
      do
      {
        v13 = 0;
        v47 = v11;
        do
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v56 + 1) + 8 * v13);
          if ([v14 shouldLogTransmittedData])
          {
            identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"\nTask %@\n", identifierCopy];
            v16 = [identifierCopy dataUsingEncoding:4];
            [v14 coreDAVLogTransmittedDataPartial:v16];

            Current = CFAbsoluteTimeGetCurrent();
            v18 = CFDateCreate(0, Current);
            if (_logFormater_logPred != -1)
            {
              [CoreDAVRequestLogger logCoreDAVRequest:withTaskIdentifier:];
            }

            v51 = v13;
            if (_logFormater___logFormatter)
            {
              StringWithDate = CFDateFormatterCreateStringWithDate(allocator, _logFormater___logFormatter, v18);
            }

            else
            {
              StringWithDate = 0;
            }

            stringWithDate = [MEMORY[0x277CCACA8] stringWithFormat:@"\n<<<<< %@\n", StringWithDate];
            v21 = [stringWithDate dataUsingEncoding:4];
            [v14 coreDAVLogTransmittedDataPartial:v21];

            if (StringWithDate)
            {
              CFRelease(StringWithDate);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            v22 = CDVHTTPStatusCodeAsStatusString(code);
            v23 = v22;
            if (v22)
            {
              v24 = [(__CFString *)v22 length];
              v25 = @"Unrecognized Status Code";
              if (v24)
              {
                v25 = v23;
              }
            }

            else
            {
              v25 = @"Unrecognized Status Code";
            }

            v26 = v25;

            v50 = v26;
            v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"HTTP/1.1 %d (%@)\n\n", code, v26];
            v27 = [v49 dataUsingEncoding:4];
            [v14 coreDAVLogTransmittedDataPartial:v27];

            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            allKeys = [headersCopy allKeys];
            headerSortDescriptors = [(CoreDAVRequestLogger *)selfCopy headerSortDescriptors];
            v30 = [allKeys sortedArrayUsingDescriptors:headerSortDescriptors];

            v31 = [v30 countByEnumeratingWithState:&v52 objects:v60 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v53;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v53 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v52 + 1) + 8 * i);
                  v36 = MEMORY[0x277CCACA8];
                  v37 = [headersCopy objectForKey:v35];
                  v38 = [v36 stringWithFormat:@"%@: %@\n", v35, v37];
                  v39 = [v38 dataUsingEncoding:4];
                  [v14 coreDAVLogTransmittedDataPartial:v39];
                }

                v32 = [v30 countByEnumeratingWithState:&v52 objects:v60 count:16];
              }

              while (v32);
            }

            v40 = [@"\n" dataUsingEncoding:4];
            [v14 coreDAVLogTransmittedDataPartial:v40];

            v12 = v43;
            v11 = v47;
            v13 = v51;
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v11);
    }

    v9 = v41;
  }
}

- (void)logCoreDAVResponseSnippet:(id)snippet withTaskIdentifier:(id)identifier isBody:(BOOL)body
{
  bodyCopy = body;
  v27 = *MEMORY[0x277D85DE8];
  snippetCopy = snippet;
  identifierCopy = identifier;
  v9 = snippetCopy;
  if ([snippetCopy length])
  {
    v10 = +[CoreDAVLogging sharedLogging];
    v11 = [v10 delegatesToLogTransmittedDataForAccountInfoProvider:self->_provider];

    if ([v11 count])
    {
      ++self->_snippetsLogged;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v20 = v11;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            if ([v17 shouldLogTransmittedData])
            {
              if (identifierCopy)
              {
                identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"\nTask %@\n", identifierCopy];
                v19 = [identifierCopy dataUsingEncoding:4];
                [v17 coreDAVLogTransmittedDataPartial:v19];
              }

              if (bodyCopy && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v17 coreDAVLogResponseBody:v9];
              }

              else
              {
                [v17 coreDAVLogTransmittedDataPartial:v9];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      v11 = v20;
    }
  }
}

- (void)finishCoreDAVResponse
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[CoreDAVLogging sharedLogging];
  v4 = [v3 delegatesToLogTransmittedDataForAccountInfoProvider:self->_provider];

  if ([v4 count] && self->_snippetsLogged)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 shouldLogTransmittedData])
          {
            v11 = [@"\n<<<<<\n" dataUsingEncoding:4];
            [v10 coreDAVLogTransmittedDataPartial:v11];

            [v10 coreDAVTransmittedDataFinished];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  self->_snippetsLogged = 0;
}

@end