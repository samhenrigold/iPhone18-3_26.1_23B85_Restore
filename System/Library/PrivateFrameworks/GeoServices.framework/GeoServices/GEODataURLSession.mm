@interface GEODataURLSession
+ (GEODataURLSession)sharedDataURLSession;
- (id)activeSessionIdentifiers;
@end

@implementation GEODataURLSession

- (id)activeSessionIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:10];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionTasks = [(GEODataURLSession *)self sessionTasks];
  allValues = [sessionTasks allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        sessionIdentifier = [*(*(&v13 + 1) + 8 * i) sessionIdentifier];
        if (sessionIdentifier)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:sessionIdentifier];
          [v3 addObject:v11];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

+ (GEODataURLSession)sharedDataURLSession
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__GEODataURLSession_sharedDataURLSession__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDataURLSession_predicate != -1)
  {
    dispatch_once(&sharedDataURLSession_predicate, block);
  }

  v2 = sharedDataURLSession_session;

  return v2;
}

@end