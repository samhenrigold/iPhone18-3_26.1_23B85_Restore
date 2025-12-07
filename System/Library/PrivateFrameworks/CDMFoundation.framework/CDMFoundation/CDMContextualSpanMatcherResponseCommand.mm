@interface CDMContextualSpanMatcherResponseCommand
- (CDMContextualSpanMatcherResponseCommand)initWithContextualSpanMatcherResponse:(id)response;
- (CDMContextualSpanMatcherResponseCommand)initWithMentions:(id)mentions;
@end

@implementation CDMContextualSpanMatcherResponseCommand

- (CDMContextualSpanMatcherResponseCommand)initWithMentions:(id)mentions
{
  v19 = *MEMORY[0x1E69E9840];
  mentionsCopy = mentions;
  v17.receiver = self;
  v17.super_class = CDMContextualSpanMatcherResponseCommand;
  v5 = [(CDMBaseCommand *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D1290]);
    objc_storeStrong(&v5->_contextualSpanMatcherResponse, v6);
    if (mentionsCopy)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = mentionsCopy;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 addContextualSpans:{*(*(&v13 + 1) + 8 * v11++), v13}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  return v5;
}

- (CDMContextualSpanMatcherResponseCommand)initWithContextualSpanMatcherResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMContextualSpanMatcherResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextualSpanMatcherResponse, response);
  }

  return v7;
}

@end