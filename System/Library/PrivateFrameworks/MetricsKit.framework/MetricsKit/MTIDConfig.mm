@interface MTIDConfig
- (MTIDConfig)initWithDictionary:(id)dictionary;
- (id)allKnownSchemes;
- (id)dictionaryRepresentation;
- (id)namespaceForTopic:(id)topic idType:(int64_t)type;
- (id)schemeForNamespace:(id)namespace;
- (unint64_t)calculateCombinedHashForNamespaces:(id)namespaces;
@end

@implementation MTIDConfig

- (MTIDConfig)initWithDictionary:(id)dictionary
{
  v104 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v100.receiver = self;
  v100.super_class = MTIDConfig;
  v5 = [(MTIDConfig *)&v100 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      dictionaryCopy = MEMORY[0x277CBEC10];
    }

    v6 = [dictionaryCopy objectForKeyedSubscript:@"performanceTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTIDConfig *)v5 setPerformanceTopic:v6];
    }

    v80 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"schemes"];
    objc_opt_class();
    v81 = dictionaryCopy;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v7 = MEMORY[0x277CBEBF8];
    }

    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    [(MTIDConfig *)v5 setCache:v8];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDConfig *)v5 setUserIdNamespacesByTopic:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDConfig *)v5 setClientIdNamespacesByTopic:dictionary2];

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v96 objects:v103 count:16];
    v83 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = *v97;
      v82 = *v97;
      do
      {
        v15 = 0;
        v85 = v13;
        do
        {
          if (*v97 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v96 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 objectForKeyedSubscript:@"namespace"];
            if (v17)
            {
              [(MTIDConfig *)v5 cache];
              v19 = v18 = v16;
              v20 = [[MTIDScheme alloc] initWithNamespace:v17 options:v18];
              v21 = v17;
              v22 = v20;
              v87 = v21;
              [v19 setObject:v20 forKeyedSubscript:?];

              v86 = v18;
              v23 = [v18 objectForKeyedSubscript:@"topics"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(MTIDScheme *)v22 setTopics:v23];
                v94 = 0u;
                v95 = 0u;
                v92 = 0u;
                v93 = 0u;
                v84 = v23;
                v24 = v23;
                v25 = [v24 countByEnumeratingWithState:&v92 objects:v102 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v93;
                  do
                  {
                    for (i = 0; i != v26; ++i)
                    {
                      if (*v93 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = *(*(&v92 + 1) + 8 * i);
                      idType = [(MTIDScheme *)v22 idType];
                      idNamespace = [(MTIDScheme *)v22 idNamespace];
                      if (idType == 2)
                      {
                        [(MTIDConfig *)v5 userIdNamespacesByTopic];
                      }

                      else
                      {
                        [(MTIDConfig *)v5 clientIdNamespacesByTopic];
                      }
                      v32 = ;
                      [v32 setObject:idNamespace forKeyedSubscript:v29];
                    }

                    v26 = [v24 countByEnumeratingWithState:&v92 objects:v102 count:16];
                  }

                  while (v26);
                }

                v14 = v82;
                v11 = v83;
                v23 = v84;
              }

              v33 = [v86 objectForKeyedSubscript:@"default"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 BOOLValue])
              {
                [(MTIDScheme *)v22 setIsDefault:1];
                defaultUserIdNamespace = [(MTIDConfig *)v5 defaultUserIdNamespace];
                if (defaultUserIdNamespace)
                {

LABEL_33:
                  defaultClientIdNamespace = [(MTIDConfig *)v5 defaultClientIdNamespace];
                  if (defaultClientIdNamespace)
                  {
                  }

                  else if ([(MTIDScheme *)v22 idType]== 1)
                  {
                    [(MTIDConfig *)v5 setDefaultClientIdNamespace:v87];
                  }
                }

                else
                {
                  if ([(MTIDScheme *)v22 idType]!= 2)
                  {
                    goto LABEL_33;
                  }

                  [(MTIDConfig *)v5 setDefaultUserIdNamespace:v87];
                }
              }

              v13 = v85;
              v17 = v87;
            }
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [v11 countByEnumeratingWithState:&v96 objects:v103 count:16];
      }

      while (v13);
    }

    defaultUserIdNamespace2 = [(MTIDConfig *)v5 defaultUserIdNamespace];

    if (!defaultUserIdNamespace2)
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = +[MTFrameworkEnvironment sharedEnvironment];
      hostProcessBundleIdentifier = [v38 hostProcessBundleIdentifier];
      v40 = [v37 stringWithFormat:@"%@.user", hostProcessBundleIdentifier];
      [(MTIDConfig *)v5 setDefaultUserIdNamespace:v40];

      cache = [(MTIDConfig *)v5 cache];
      defaultUserIdNamespace3 = [(MTIDConfig *)v5 defaultUserIdNamespace];
      v43 = [cache objectForKeyedSubscript:defaultUserIdNamespace3];

      if (!v43)
      {
        v44 = [MTIDScheme alloc];
        defaultUserIdNamespace4 = [(MTIDConfig *)v5 defaultUserIdNamespace];
        v46 = [(MTIDScheme *)v44 initWithNamespace:defaultUserIdNamespace4 type:2];
        cache2 = [(MTIDConfig *)v5 cache];
        defaultUserIdNamespace5 = [(MTIDConfig *)v5 defaultUserIdNamespace];
        [cache2 setObject:v46 forKeyedSubscript:defaultUserIdNamespace5];
      }

      cache3 = [(MTIDConfig *)v5 cache];
      defaultUserIdNamespace6 = [(MTIDConfig *)v5 defaultUserIdNamespace];
      v51 = [cache3 objectForKeyedSubscript:defaultUserIdNamespace6];
      [v51 setIsDefault:1];
    }

    defaultClientIdNamespace2 = [(MTIDConfig *)v5 defaultClientIdNamespace];

    if (!defaultClientIdNamespace2)
    {
      v53 = MEMORY[0x277CCACA8];
      v54 = +[MTFrameworkEnvironment sharedEnvironment];
      hostProcessBundleIdentifier2 = [v54 hostProcessBundleIdentifier];
      v56 = [v53 stringWithFormat:@"%@.client", hostProcessBundleIdentifier2];
      [(MTIDConfig *)v5 setDefaultClientIdNamespace:v56];

      cache4 = [(MTIDConfig *)v5 cache];
      defaultClientIdNamespace3 = [(MTIDConfig *)v5 defaultClientIdNamespace];
      v59 = [cache4 objectForKeyedSubscript:defaultClientIdNamespace3];

      if (!v59)
      {
        v60 = [MTIDScheme alloc];
        defaultClientIdNamespace4 = [(MTIDConfig *)v5 defaultClientIdNamespace];
        v62 = [(MTIDScheme *)v60 initWithNamespace:defaultClientIdNamespace4 type:1];
        cache5 = [(MTIDConfig *)v5 cache];
        defaultClientIdNamespace5 = [(MTIDConfig *)v5 defaultClientIdNamespace];
        [cache5 setObject:v62 forKeyedSubscript:defaultClientIdNamespace5];
      }

      cache6 = [(MTIDConfig *)v5 cache];
      defaultClientIdNamespace6 = [(MTIDConfig *)v5 defaultClientIdNamespace];
      v67 = [cache6 objectForKeyedSubscript:defaultClientIdNamespace6];
      [v67 setIsDefault:1];
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    cache7 = [(MTIDConfig *)v5 cache];
    v69 = [cache7 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v89;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v89 != v71)
          {
            objc_enumerationMutation(cache7);
          }

          v73 = *(*(&v88 + 1) + 8 * j);
          cache8 = [(MTIDConfig *)v5 cache];
          v75 = [cache8 objectForKeyedSubscript:v73];

          correlations = [v75 correlations];
          v77 = [correlations count];

          if (v77)
          {
            correlations2 = [v75 correlations];
            [v75 setCorrelationHash:{-[MTIDConfig calculateCombinedHashForNamespaces:](v5, "calculateCombinedHashForNamespaces:", correlations2)}];
          }
        }

        v70 = [cache7 countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v70);
    }

    dictionaryCopy = v81;
  }

  return v5;
}

- (id)schemeForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTIDConfig *)selfCopy cache];
  v7 = [cache objectForKeyedSubscript:namespaceCopy];

  if (v7)
  {
    v8 = v7;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [[MTIDScheme alloc] initWithNamespace:namespaceCopy options:0];
    cache2 = [(MTIDConfig *)selfCopy cache];
    [cache2 setObject:v9 forKeyedSubscript:namespaceCopy];

    objc_sync_exit(selfCopy);
    v8 = v9;
  }

  return v8;
}

- (id)namespaceForTopic:(id)topic idType:(int64_t)type
{
  topicCopy = topic;
  if (type == 2)
  {
    userIdNamespacesByTopic = [(MTIDConfig *)self userIdNamespacesByTopic];
    v8 = [userIdNamespacesByTopic objectForKeyedSubscript:topicCopy];

    if (!v8)
    {
      defaultUserIdNamespace = [(MTIDConfig *)self defaultUserIdNamespace];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  userIdNamespacesByTopic = [(MTIDConfig *)self clientIdNamespacesByTopic];
  v8 = [userIdNamespacesByTopic objectForKeyedSubscript:topicCopy];

  if (v8)
  {
LABEL_5:
    defaultUserIdNamespace = v8;
    v8 = defaultUserIdNamespace;
    goto LABEL_7;
  }

  defaultUserIdNamespace = [(MTIDConfig *)self defaultClientIdNamespace];
LABEL_7:
  v10 = defaultUserIdNamespace;

  return v10;
}

- (unint64_t)calculateCombinedHashForNamespaces:(id)namespaces
{
  v19 = *MEMORY[0x277D85DE8];
  namespacesCopy = namespaces;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [namespacesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(namespacesCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        cache = [(MTIDConfig *)self cache];
        v12 = [cache objectForKeyedSubscript:v10];
        v7 ^= [v12 hash];
      }

      v6 = [namespacesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allKnownSchemes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MTIDConfig *)selfCopy cache];
  allValues = [cache allValues];

  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"schemes";
  allKnownSchemes = [(MTIDConfig *)self allKnownSchemes];
  v3 = [allKnownSchemes mt_map:&__block_literal_global_10];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

@end