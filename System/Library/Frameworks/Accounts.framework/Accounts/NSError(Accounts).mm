@interface NSError(Accounts)
- (id)ac_sanitizeObject:()Accounts;
- (id)ac_secureCodingError;
- (uint64_t)ac_isDiskFullSQLError;
- (uint64_t)ac_isUnrecoverableDatabaseError;
@end

@implementation NSError(Accounts)

- (uint64_t)ac_isUnrecoverableDatabaseError
{
  domain = [self domain];
  v3 = *MEMORY[0x1E695D488];
  v4 = [domain isEqualToString:*MEMORY[0x1E695D488]];

  v5 = MEMORY[0x1E696A250];
  if (v4)
  {
    domain2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
    if (!domain2)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    domain2 = [self domain];
    if (![domain2 isEqualToString:*v5])
    {
      v12 = 0;
      goto LABEL_10;
    }

    userInfo = [self userInfo];
    v8 = [userInfo objectForKeyedSubscript:v3];

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x1E696AD98];
    userInfo2 = [self userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:v3];
    domain2 = [v9 numberWithInteger:{objc_msgSend(v11, "integerValue")}];

    if (!domain2)
    {
      goto LABEL_8;
    }
  }

  v12 = [&unk_1F21188F8 containsObject:domain2];
LABEL_10:

LABEL_11:
  domain3 = [self domain];
  if ([domain3 isEqualToString:*v5])
  {
    v14 = [self code] == 259;

    v12 |= v14;
  }

  else
  {
  }

  return v12 & 1;
}

- (uint64_t)ac_isDiskFullSQLError
{
  domain = [self domain];
  v3 = *MEMORY[0x1E695D488];
  v4 = [domain isEqualToString:*MEMORY[0x1E695D488]];

  if (!v4)
  {
    domain2 = [self domain];
    if (![domain2 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v11 = 0;
      goto LABEL_10;
    }

    userInfo = [self userInfo];
    v7 = [userInfo objectForKeyedSubscript:v3];

    if (!v7)
    {
      return 0;
    }

    v8 = MEMORY[0x1E696AD98];
    userInfo2 = [self userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:v3];
    domain2 = [v8 numberWithInteger:{objc_msgSend(v10, "integerValue")}];

    if (!domain2)
    {
      return 0;
    }

LABEL_7:
    v11 = [&unk_1F2118910 containsObject:domain2];
LABEL_10:

    return v11;
  }

  domain2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  if (domain2)
  {
    goto LABEL_7;
  }

  return 0;
}

- (id)ac_sanitizeObject:()Accounts
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 conformsToProtocol:&unk_1F211BCE0];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ac_secureCodingError = [v4 ac_secureCodingError];
LABEL_4:
      v7 = ac_secureCodingError;
      goto LABEL_41;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v37;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [self ac_sanitizeObject:*(*(&v36 + 1) + 8 * i)];
            if (v14)
            {
              [v7 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v11);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_opt_new();
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = v4;
        v15 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v9);
              }

              v19 = [self ac_sanitizeObject:*(*(&v32 + 1) + 8 * j)];
              if (v19)
              {
                [v7 addObject:v19];
              }
            }

            v16 = [v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v16);
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          ac_secureCodingError = v4;
          goto LABEL_4;
        }

        v7 = objc_opt_new();
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = v4;
        v20 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v29;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(v9);
              }

              v24 = *(*(&v28 + 1) + 8 * k);
              v25 = [v9 objectForKeyedSubscript:{v24, v28}];
              v26 = [self ac_sanitizeObject:v25];

              if (v26)
              {
                [v7 setObject:v26 forKey:v24];
              }
            }

            v21 = [v9 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v21);
        }
      }
    }
  }

  else
  {
    v8 = _ACLogSystem(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(NSError(Accounts) *)v4 ac_sanitizeObject:v8];
    }

    v7 = 0;
  }

LABEL_41:

  return v7;
}

- (id)ac_secureCodingError
{
  v2 = MEMORY[0x1E696ABC0];
  domain = [self domain];
  code = [self code];
  userInfo = [self userInfo];
  v6 = [self ac_sanitizeObject:userInfo];
  v7 = [v2 errorWithDomain:domain code:code userInfo:v6];

  return v7;
}

- (void)ac_sanitizeObject:()Accounts .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_DEBUG, "Removing object %@ error userInfo because it is not NSSecureCoding.", &v2, 0xCu);
}

@end