@interface RMModelPayloadUtilities
+ (BOOL)_isCurrentVariantSupportedForDetails:(id)details;
+ (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type supportedOS:(id)s;
+ (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope supportedOS:(id)s;
+ (id)_walkObject:(id)object keyPath:(id)path fullKeyPath:(id)keyPath;
+ (id)valueFromKeyPath:(id)path payload:(id)payload;
@end

@implementation RMModelPayloadUtilities

+ (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope supportedOS:(id)s
{
  v8 = MEMORY[0x277CCABB0];
  sCopy = s;
  v10 = [v8 numberWithInteger:platform];
  v11 = [sCopy objectForKeyedSubscript:v10];

  if ([self _isCurrentVariantSupportedForDetails:v11])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:scope];
    v13 = [v11 objectAtIndexedSubscript:0];
    v14 = [v13 containsObject:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)isSupportedForPlatform:(int64_t)platform scope:(int64_t)scope enrollmentType:(int64_t)type supportedOS:(id)s
{
  v10 = MEMORY[0x277CCABB0];
  sCopy = s;
  v12 = [v10 numberWithInteger:platform];
  v13 = [sCopy objectForKeyedSubscript:v12];

  if ([self _isCurrentVariantSupportedForDetails:v13])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:scope];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v16 = [v13 objectAtIndexedSubscript:0];
    if ([v16 containsObject:v14])
    {
      v17 = [v13 objectAtIndexedSubscript:1];
      v18 = [v17 containsObject:v15];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_isCurrentVariantSupportedForDetails:(id)details
{
  detailsCopy = details;
  isAppleInternal = [MEMORY[0x277D034F8] isAppleInternal];
  if ([detailsCopy count] < 3)
  {
    v7 = 1;
  }

  else
  {
    v5 = [detailsCopy objectAtIndexedSubscript:2];
    v6 = [v5 containsObject:&unk_28746B858];

    v7 = v6 ^ 1;
  }

  v8 = isAppleInternal | v7;

  return v8 & 1;
}

+ (id)valueFromKeyPath:(id)path payload:(id)payload
{
  pathCopy = path;
  payloadCopy = payload;
  v8 = [pathCopy componentsSeparatedByString:@"."];
  firstObject = [v8 firstObject];
  v10 = [firstObject isEqualToString:@"$"];

  if (v10)
  {
    v11 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
    v12 = [self _walkObject:payloadCopy keyPath:v11 fullKeyPath:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_walkObject:(id)object keyPath:(id)path fullKeyPath:(id)keyPath
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathCopy = path;
  keyPathCopy = keyPath;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [pathCopy firstObject];
    v12 = [objectCopy valueForKey:firstObject];

    if ([pathCopy count] == 1)
    {
      v13 = v12;
    }

    else if (v12)
    {
      v16 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
      v13 = [self _walkObject:v12 keyPath:v16 fullKeyPath:keyPathCopy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([pathCopy firstObject], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"*"), v14, v15))
    {
      if ([pathCopy count] == 1)
      {
        v13 = objectCopy;
      }

      else
      {
        v13 = objc_opt_new();
        v25 = pathCopy;
        v18 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = objectCopy;
        v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v27;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v27 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [self _walkObject:*(*(&v26 + 1) + 8 * i) keyPath:v18 fullKeyPath:keyPathCopy];
              if (v24)
              {
                [v13 addObject:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v21);
        }

        pathCopy = v25;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RMModelPayloadUtilities _walkObject:pathCopy keyPath:keyPathCopy fullKeyPath:?];
      }

      v13 = 0;
    }
  }

  return v13;
}

+ (void)_walkObject:(uint64_t)a1 keyPath:(uint64_t)a2 fullKeyPath:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = a2;
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Key path lookup failed: %{public}@ at %{public}@", &v2, 0x16u);
}

@end