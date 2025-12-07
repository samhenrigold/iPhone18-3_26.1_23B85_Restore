@interface CDMSpanMatchProtoResponseCommand
- (CDMSpanMatchProtoResponseCommand)initWithResponse:(id)response;
@end

@implementation CDMSpanMatchProtoResponseCommand

- (CDMSpanMatchProtoResponseCommand)initWithResponse:(id)response
{
  v32 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v26.receiver = self;
  v26.super_class = CDMSpanMatchProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spanMatchResponse, response);
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(responseCopy, "matchingSpansCount")}];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(responseCopy, "matchingSpansCount")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    matchingSpans = [responseCopy matchingSpans];
    v11 = [matchingSpans countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(matchingSpans);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([CDMSpanMatchUtils isSpanOnlyForExternalParsers:v15])
          {
            v16 = v9;
          }

          else
          {
            v16 = v8;
          }

          [(NSArray *)v16 addObject:v15];
        }

        v12 = [matchingSpans countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v12);
    }

    matchingSpansForNL = v7->_matchingSpansForNL;
    v7->_matchingSpansForNL = v8;
    v18 = v8;

    objc_storeStrong(&v7->_matchingSpansForExternalParsers, v9);
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(NSArray *)v9 count];
      *buf = 136315394;
      v28 = "[CDMSpanMatchProtoResponseCommand initWithResponse:]";
      v29 = 2048;
      v30 = v21;
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Filtered %lu spans to only expose to external parsers", buf, 0x16u);
    }
  }

  return v7;
}

@end