@interface FMJSONCommand
- (FMJSONCommand)init;
- (NSDictionary)jsonResponseDictionary;
- (NSDictionary)serverAlertInfo;
- (id)body;
- (id)headers;
- (void)body;
- (void)sendRequest;
@end

@implementation FMJSONCommand

- (FMJSONCommand)init
{
  v5.receiver = self;
  v5.super_class = FMJSONCommand;
  v2 = [(FMCommandBase *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.icloud.fmcore.FMJSONCommand.response", 0);
    [(FMJSONCommand *)v2 setResponseQueue:v3];
  }

  return v2;
}

- (void)sendRequest
{
  [(FMJSONCommand *)self set_hasParsedResponseBody:0];
  [(FMJSONCommand *)self set_responseBodyDict:0];
  [(FMJSONCommand *)self setJsonResponseParseError:0];
  v3.receiver = self;
  v3.super_class = FMJSONCommand;
  [(FMCommandBase *)&v3 sendRequest];
}

- (id)headers
{
  v9.receiver = self;
  v9.super_class = FMJSONCommand;
  headers = [(FMCommandBase *)&v9 headers];
  _requestBodyDict = [(FMJSONCommand *)self _requestBodyDict];
  if (_requestBodyDict)
  {
    [(FMJSONCommand *)self set_requestBodyDict:_requestBodyDict];
  }

  else
  {
    jsonBodyDictionary = [(FMJSONCommand *)self jsonBodyDictionary];
    [(FMJSONCommand *)self set_requestBodyDict:jsonBodyDictionary];
  }

  _requestBodyDict2 = [(FMJSONCommand *)self _requestBodyDict];
  v7 = [_requestBodyDict2 count];

  if (v7)
  {
    [headers setObject:@"application/json; charset=utf-8" forKeyedSubscript:@"Content-Type"];
  }

  return headers;
}

- (id)body
{
  v20 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEA90] data];
  _requestBodyDict = [(FMJSONCommand *)self _requestBodyDict];
  v5 = _requestBodyDict;
  if (_requestBodyDict)
  {
    jsonBodyDictionary = _requestBodyDict;
  }

  else
  {
    jsonBodyDictionary = [(FMJSONCommand *)self jsonBodyDictionary];
  }

  v7 = jsonBodyDictionary;

  v9 = LogCategory_NetworkingVerbose(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy = self;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_INFO, "[%p] request_body: %@", buf, 0x16u);
  }

  if ([v7 count])
  {
    v15 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:&v15];
    v11 = v15;

    if (v11)
    {
      v13 = LogCategory_Networking(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(FMJSONCommand *)self body];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"[%@] JSON Creation error: %@", self, v11}];
    }

    data = v10;
  }

  return data;
}

- (NSDictionary)jsonResponseDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = MEMORY[0x277CBEC10];
  responseQueue = [(FMJSONCommand *)self responseQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__FMJSONCommand_jsonResponseDictionary__block_invoke;
  v6[3] = &unk_278FD9A20;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(responseQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__FMJSONCommand_jsonResponseDictionary__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _hasParsedResponseBody];
  v4 = *v2;
  if (!v3)
  {
    v5 = [v4 valueForResponseHTTPHeader:@"Content-Type"];
    v6 = [*v2 responseData];
    if ([v6 length])
    {
      v7 = [v5 lowercaseString];
      v8 = [v7 rangeOfString:@"json"];

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        [*(a1 + 32) set_hasParsedResponseBody:1];
        [*(a1 + 32) set_responseBodyDict:*(*(*(a1 + 40) + 8) + 40)];

        return;
      }

      v9 = MEMORY[0x277CCAAA0];
      v10 = [*(a1 + 32) responseData];
      v25 = 0;
      v11 = [v9 JSONObjectWithData:v10 options:0 error:&v25];
      v6 = v25;
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v15 = LogCategory_NetworkingVerbose(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v17 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 134218242;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_24A2EE000, v15, OS_LOG_TYPE_INFO, "[%p] response_body: %@", buf, 0x16u);
      }

      if (v6)
      {
        v18 = LogCategory_ServerError([*v2 setJsonResponseParseError:v6]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __39__FMJSONCommand_jsonResponseDictionary__block_invoke_cold_1(v2, v6, v18);
        }

        v20 = LogCategory_ServerError(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *v2;
          v22 = objc_alloc(MEMORY[0x277CCACA8]);
          v23 = [*v2 responseData];
          v24 = [v22 initWithData:v23 encoding:4];
          *buf = 134218242;
          v27 = v21;
          v28 = 2112;
          v29 = v24;
          _os_log_impl(&dword_24A2EE000, v20, OS_LOG_TYPE_INFO, "[%p] Actual JSON that failed to parse: %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_16;
  }

  *(*(*(a1 + 40) + 8) + 40) = [v4 _responseBodyDict];

  MEMORY[0x2821F96F8]();
}

- (NSDictionary)serverAlertInfo
{
  jsonResponseDictionary = [(FMJSONCommand *)self jsonResponseDictionary];
  v3 = [jsonResponseDictionary objectForKeyedSubscript:@"alert"];
  fm_nullToNil = [v3 fm_nullToNil];

  return fm_nullToNil;
}

- (void)body
{
  *v3 = 138412546;
  *&v3[4] = self;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_24A2EE000, a2, a3, "[%@] JSON Creation error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __39__FMJSONCommand_jsonResponseDictionary__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_24A2EE000, a2, a3, "[%p] JSON parse error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end