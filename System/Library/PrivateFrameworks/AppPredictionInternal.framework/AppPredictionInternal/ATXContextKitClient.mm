@interface ATXContextKitClient
- (id)ckClient;
- (id)level1TopicIdsForURL:(id)l;
@end

@implementation ATXContextKitClient

- (id)ckClient
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ckClient = selfCopy->_ckClient;
  if (!ckClient)
  {
    v4 = [MEMORY[0x277CFC738] clientWithDefaultRequestType:18];
    v5 = selfCopy->_ckClient;
    selfCopy->_ckClient = v4;

    ckClient = selfCopy->_ckClient;
  }

  v6 = ckClient;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)level1TopicIdsForURL:(id)l
{
  lCopy = l;
  v5 = objc_autoreleasePoolPush();
  ckClient = [(ATXContextKitClient *)self ckClient];
  v7 = ckClient;
  if (ckClient)
  {
    newRequest = [ckClient newRequest];
    absoluteString = [lCopy absoluteString];
    [newRequest setUrl:absoluteString];

    [newRequest setIncludeHigherLevelTopics:1];
    execute = [newRequest execute];
    error = [execute error];

    if (error)
    {
      v13 = __atxlog_handle_default(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextKitClient *)self level1TopicIdsForURL:execute, v13];
      }

      v14 = objc_opt_new();
    }

    else
    {
      level1Topics = [execute level1Topics];
      v17 = level1Topics;
      if (level1Topics)
      {
        v18 = [level1Topics _pas_mappedArrayWithTransform:&__block_literal_global_243];
      }

      else
      {
        v18 = objc_opt_new();
      }

      v14 = v18;
    }
  }

  else
  {
    v15 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ATXContextKitClient *)self level1TopicIdsForURL:v15];
    }

    v14 = objc_opt_new();
  }

  objc_autoreleasePoolPop(v5);

  return v14;
}

- (void)level1TopicIdsForURL:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 error];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - Error from ContextKit: %@", &v8, 0x16u);
}

- (void)level1TopicIdsForURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - could not initialize CKContextClient", &v5, 0xCu);
}

@end