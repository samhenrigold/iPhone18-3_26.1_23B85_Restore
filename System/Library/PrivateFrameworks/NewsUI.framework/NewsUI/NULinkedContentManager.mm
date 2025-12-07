@interface NULinkedContentManager
- (NULinkedContentManager)initWithLinkedContentProviders:(id)providers;
- (id)loadLinkedContentForHeadline:(id)headline withContext:(id)context priority:(int64_t)priority completion:(id)completion;
@end

@implementation NULinkedContentManager

- (NULinkedContentManager)initWithLinkedContentProviders:(id)providers
{
  providersCopy = providers;
  v9.receiver = self;
  v9.super_class = NULinkedContentManager;
  v6 = [(NULinkedContentManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkedContentProviders, providers);
  }

  return v7;
}

- (id)loadLinkedContentForHeadline:(id)headline withContext:(id)context priority:(int64_t)priority completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  headlineCopy = headline;
  contextCopy = context;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v13 = dispatch_group_create();
  if (headlineCopy && contextCopy)
  {
    v23 = completionCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(NSArray *)self->_linkedContentProviders copy];
    v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          dispatch_group_enter(v13);
          if (objc_opt_respondsToSelector())
          {
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __87__NULinkedContentManager_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke;
            v28[3] = &unk_2799A3498;
            v29 = v13;
            v19 = [v18 loadLinkedContentForHeadline:headlineCopy withContext:contextCopy priority:priority completion:v28];
            v20 = &v29;
          }

          else
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __87__NULinkedContentManager_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke_2;
            v26[3] = &unk_2799A3498;
            v27 = v13;
            v19 = [v18 loadLinkedContentForHeadline:headlineCopy withContext:contextCopy completion:v26];
            v20 = &v27;
          }

          [array addObject:v19];
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    completionCopy = v23;
  }

  dispatch_group_notify(v13, MEMORY[0x277D85CD0], completionCopy);
  v21 = [MEMORY[0x277D31088] groupCancelHandlerWithCancelHandlers:array];

  return v21;
}

@end