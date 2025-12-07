@interface CDMMentionResolverResponseCommand
- (CDMMentionResolverResponseCommand)initWithMentions:(id)mentions;
- (CDMMentionResolverResponseCommand)initWithResponse:(id)response;
@end

@implementation CDMMentionResolverResponseCommand

- (CDMMentionResolverResponseCommand)initWithMentions:(id)mentions
{
  v20 = *MEMORY[0x1E69E9840];
  mentionsCopy = mentions;
  v18.receiver = self;
  v18.super_class = CDMMentionResolverResponseCommand;
  v5 = [(CDMBaseCommand *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D1300]);
    if (mentionsCopy)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = mentionsCopy;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v6 addMentions:{*(*(&v14 + 1) + 8 * v11++), v14}];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v9);
      }
    }

    response = v5->_response;
    v5->_response = v6;
  }

  return v5;
}

- (CDMMentionResolverResponseCommand)initWithResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMMentionResolverResponseCommand;
  v5 = [(CDMBaseCommand *)&v9 init];
  if (v5)
  {
    v6 = [responseCopy copy];
    response = v5->_response;
    v5->_response = v6;
  }

  return v5;
}

@end