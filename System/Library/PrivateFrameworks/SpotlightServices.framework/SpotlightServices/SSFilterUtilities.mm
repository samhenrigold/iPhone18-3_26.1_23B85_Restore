@interface SSFilterUtilities
+ (id)appFilterForResult:(id)result;
+ (id)filterForResult:(id)result;
+ (id)filtersForResult:(id)result;
+ (id)folderScopesFromURLs:(id)ls;
+ (id)hiddenFilterBundleIDs;
+ (id)uttypesFromFilterQueries:(id)queries;
@end

@implementation SSFilterUtilities

+ (id)uttypesFromFilterQueries:(id)queries
{
  v42 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  v26 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = queriesCopy;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v25 = v4;
    v28 = *v37;
    do
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"()"];
        v11 = [v9 stringByTrimmingCharactersInSet:v10];

        if ([v11 hasPrefix:@"kMDItemContentTypeTree=="])
        {
          v30 = v8;
          v31 = objc_opt_new();
          if (([v11 containsString:@"&&"] & 1) == 0 && (objc_msgSend(v11, "containsString:", @"!=") & 1) == 0)
          {
            v29 = v11;
            v12 = [v11 componentsSeparatedByString:@"||"];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v33;
              v16 = 1;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v33 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v18 = *(*(&v32 + 1) + 8 * i);
                  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  v20 = [v18 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

                  if ([v20 hasPrefix:@"kMDItemContentTypeTree=="])
                  {
                    v21 = [v20 substringFromIndex:{objc_msgSend(@"kMDItemContentTypeTree==", "length")}];
                    if (v21 && ([MEMORY[0x1E6982C40] typeWithIdentifier:v21], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v23 = v22;
                      [v31 addObject:v22];
                    }

                    else
                    {
                      v16 = 0;
                    }
                  }

                  else
                  {
                    v16 = 0;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v14);

              v4 = v25;
              v6 = v27;
              v7 = v28;
              v11 = v29;
              if ((v16 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            else
            {

              v7 = v28;
            }

            [v26 unionSet:v31];
          }

LABEL_27:

          v8 = v30;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  return v26;
}

+ (id)hiddenFilterBundleIDs
{
  if (hiddenFilterBundleIDs_onceToken != -1)
  {
    +[SSFilterUtilities hiddenFilterBundleIDs];
  }

  v3 = hiddenFilterBundleIDs_hiddenFilterBundleIDs;

  return v3;
}

void __42__SSFilterUtilities_hiddenFilterBundleIDs__block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.SpotlightService";
  v2[1] = @"com.apple.Spotlight";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:2];
  v1 = hiddenFilterBundleIDs_hiddenFilterBundleIDs;
  hiddenFilterBundleIDs_hiddenFilterBundleIDs = v0;
}

+ (id)appFilterForResult:(id)result
{
  v4 = *MEMORY[0x1E6964C38];
  resultCopy = result;
  v6 = [resultCopy valueForAttribute:v4 withType:objc_opt_class()];
  contentTypeTree = [resultCopy contentTypeTree];
  lastObject = [contentTypeTree lastObject];

  uniformContentType = [resultCopy uniformContentType];

  if (uniformContentType || !lastObject)
  {
    v10 = uniformContentType;
  }

  else
  {
    v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:lastObject];
  }

  v11 = v10;

  if (!v11)
  {
    v11 = [SSFilesPasteboardResultBuilder typeForURL:v6];
  }

  hiddenFilterBundleIDs = [self hiddenFilterBundleIDs];
  [hiddenFilterBundleIDs containsObject:0];

  return 0;
}

+ (id)filterForResult:(id)result
{
  v3 = [self filtersForResult:result];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)filtersForResult:(id)result
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [self appFilterForResult:result];
  v4 = v3;
  if (v3)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)folderScopesFromURLs:(id)ls
{
  v18 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = lsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        path = [*(*(&v13 + 1) + 8 * i) path];
        if (([path hasSuffix:@"/"] & 1) == 0)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/", path];

          path = v11;
        }

        [v4 addObject:path];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

@end