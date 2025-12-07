@interface PPLPeopleEntityMetadata
- (BOOL)_isValidURL:(id)l;
- (PPLPeopleEntityMetadata)initWithURL:(id)l;
@end

@implementation PPLPeopleEntityMetadata

- (PPLPeopleEntityMetadata)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [(PPLPeopleEntityMetadata *)a2 initWithURL:?];
  }

  v13.receiver = self;
  v13.super_class = PPLPeopleEntityMetadata;
  v7 = [(PPLPeopleEntityMetadata *)&v13 init];
  p_isa = &v7->super.isa;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = [(PPLPeopleEntityMetadata *)v7 _isValidURL:lCopy];
  if (v9)
  {
    objc_storeStrong(p_isa + 1, l);
LABEL_6:
    v10 = p_isa;
    goto LABEL_10;
  }

  v11 = PPLPeopleViewServiceLog(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(PPLPeopleEntityMetadata *)lCopy initWithURL:v11];
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)_isValidURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"people"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    queryItems = [v6 queryItems];
    v8 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = v6;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(queryItems);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          name = [v12 name];
          if ([name isEqualToString:@"contactIdentifier"])
          {
          }

          else
          {
            name2 = [v12 name];
            v15 = [name2 isEqualToString:@"priorities"];

            if (!v15)
            {
              v16 = 0;
              goto LABEL_15;
            }
          }
        }

        v9 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 1;
LABEL_15:
      v6 = v18;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PPLPeopleEntityMetadata.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"url"}];
}

- (void)initWithURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_25E21C000, a2, OS_LOG_TYPE_ERROR, "this url is not supported: %{public}@", &v2, 0xCu);
}

@end