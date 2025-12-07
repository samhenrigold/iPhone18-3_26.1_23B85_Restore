@interface _DKCKError
+ (id)_allPartialErrorsFromError:(uint64_t)error;
+ (id)errorMinusUnrecoverableDecryptionErrorsFromPartialError:(uint64_t)error;
+ (id)zoneIDsWithUnrecoverableDecryptionError:(uint64_t)error;
+ (uint64_t)isChangeTokenExpiredError:(uint64_t)error;
+ (uint64_t)isIgnorableError:(uint64_t)error;
+ (uint64_t)isOperationCancelledError:(uint64_t)error;
+ (uint64_t)isPartialError:(uint64_t)error;
+ (uint64_t)isShouldDeferError:(uint64_t)error;
+ (uint64_t)isUnrecoverableDecryptionError:(uint64_t)error;
+ (void)_populateZoneIDs:(void *)ds fromUnrecoverableDecryptionError:(void *)error itemID:;
@end

@implementation _DKCKError

+ (uint64_t)isIgnorableError:(uint64_t)error
{
  v2 = a2;
  v3 = objc_opt_self();
  if (![(_DKCKError *)v3 isOperationCancelledError:v2])
  {
    goto LABEL_9;
  }

  userInfo = [v2 userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  domain = [v5 domain];
  if ([domain isEqualToString:*MEMORY[0x1E695B740]])
  {
    code = [v5 code];

    if (code == 130 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      +[_DKCKError isIgnorableError:];
    }
  }

  else
  {
  }

  v8 = [(_DKCKError *)v3 isShouldDeferError:v2];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

+ (uint64_t)isOperationCancelledError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  if ([v2 code] == 20)
  {
    domain = [v2 domain];
    v4 = [domain isEqualToString:*MEMORY[0x1E695B740]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (uint64_t)isShouldDeferError:(uint64_t)error
{
  v2 = a2;
  v3 = objc_opt_self();
  code = [v2 code];
  if ([(_DKCKError *)v3 isOperationCancelledError:v2])
  {
    userInfo = [v2 userInfo];
    domain2 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if ([domain2 code] == 131)
    {
      domain = [domain2 domain];
      v8 = [domain isEqualToString:*MEMORY[0x1E695B740]];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (code != 131)
    {
      v8 = 0;
      goto LABEL_9;
    }

    domain2 = [v2 domain];
    v8 = [domain2 isEqualToString:*MEMORY[0x1E695B740]];
  }

LABEL_9:
  return v8;
}

+ (uint64_t)isChangeTokenExpiredError:(uint64_t)error
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if ([(_DKCKError *)v3 isPartialError:v2])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    domain = [(_DKCKError *)v3 _allPartialErrorsFromError:v2];
    v5 = [domain countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(domain);
          }

          if (([(_DKCKError *)v3 isChangeTokenExpiredError:?]& 1) != 0)
          {
            v9 = 1;
            goto LABEL_15;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [domain countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([v2 code] == 21)
  {
    domain = [v2 domain];
    v9 = [domain isEqualToString:*MEMORY[0x1E695B740]];
LABEL_15:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (uint64_t)isPartialError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  if ([v2 code] == 2)
  {
    domain = [v2 domain];
    v4 = [domain isEqualToString:*MEMORY[0x1E695B740]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_allPartialErrorsFromError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  userInfo = [v2 userInfo];

  v4 = [userInfo objectForKey:*MEMORY[0x1E695B798]];
  allValues = [v4 allValues];

  return allValues;
}

+ (uint64_t)isUnrecoverableDecryptionError:(uint64_t)error
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  code = [v2 code];
  if ([(_DKCKError *)v3 isPartialError:v2])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(_DKCKError *)v3 _allPartialErrorsFromError:v2];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (([(_DKCKError *)v3 isUnrecoverableDecryptionError:?]& 1) != 0)
          {

            goto LABEL_15;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (code == 112)
  {
    domain = [v2 domain];
    v11 = [domain isEqualToString:*MEMORY[0x1E695B740]];

    if (v11)
    {
LABEL_15:
      v12 = 1;
      goto LABEL_16;
    }
  }

  v12 = 0;
LABEL_16:

  return v12;
}

+ (id)zoneIDsWithUnrecoverableDecryptionError:(uint64_t)error
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_opt_new();
  [(_DKCKError *)v3 _populateZoneIDs:v4 fromUnrecoverableDecryptionError:v2 itemID:0];

  return v4;
}

+ (void)_populateZoneIDs:(void *)ds fromUnrecoverableDecryptionError:(void *)error itemID:
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a2;
  dsCopy = ds;
  errorCopy = error;
  v9 = objc_opt_self();
  if ([(_DKCKError *)v9 isPartialError:dsCopy])
  {
    v24 = errorCopy;
    userInfo = [dsCopy userInfo];
    v11 = [userInfo objectForKey:*MEMORY[0x1E695B798]];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];
          [(_DKCKError *)v9 _populateZoneIDs:v6 fromUnrecoverableDecryptionError:v17 itemID:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v13);
    }

    errorCopy = v24;
  }

  else if ([dsCopy code] == 112)
  {
    domain = [dsCopy domain];
    v19 = [domain isEqualToString:*MEMORY[0x1E695B740]];

    if (v19)
    {
      if (errorCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          zoneID = [errorCopy zoneID];
          [v6 addObject:zoneID];

          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:errorCopy];
          goto LABEL_22;
        }

        v21 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [_DKCKError _populateZoneIDs:v9 fromUnrecoverableDecryptionError:dsCopy itemID:v21];
        }
      }

      else
      {
        v21 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [objc_opt_class() description];
          domain2 = [dsCopy domain];
          *buf = 138544130;
          v30 = v22;
          v31 = 2114;
          v32 = domain2;
          v33 = 2048;
          code = [dsCopy code];
          v35 = 2112;
          v36 = dsCopy;
          _os_log_impl(&dword_191750000, v21, OS_LOG_TYPE_INFO, "%{public}@: Missing zone id for Manatee identity failure: %{public}@:%lld (%@)", buf, 0x2Au);
        }
      }
    }
  }

LABEL_22:
}

+ (id)errorMinusUnrecoverableDecryptionErrorsFromPartialError:(uint64_t)error
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if ([(_DKCKError *)v3 isPartialError:v2])
  {
    userInfo = [v2 userInfo];
    v20 = *MEMORY[0x1E695B798];
    v5 = [userInfo objectForKeyedSubscript:?];
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          if (([(_DKCKError *)v3 isUnrecoverableDecryptionError:v13]& 1) == 0)
          {
            [v6 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v14 = [userInfo mutableCopy];
      v15 = [v6 copy];
      [v14 setObject:v15 forKeyedSubscript:v20];

      v16 = MEMORY[0x1E696ABC0];
      domain = [v2 domain];
      v18 = [v16 errorWithDomain:domain code:objc_msgSend(v2 userInfo:{"code"), v14}];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = v2;
  }

  return v18;
}

+ (void)_populateZoneIDs:(uint64_t)a1 fromUnrecoverableDecryptionError:(void *)a2 itemID:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() description];
  v6 = [a2 domain];
  v7 = 138544130;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2048;
  v12 = [a2 code];
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected error itemID key: %{public}@:%lld (%@)", &v7, 0x2Au);
}

@end