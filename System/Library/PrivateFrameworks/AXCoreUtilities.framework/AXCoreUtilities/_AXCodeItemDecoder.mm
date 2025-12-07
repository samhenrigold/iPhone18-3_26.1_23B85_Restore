@interface _AXCodeItemDecoder
- (id)decodedCodeItemsFromURL:(id)l decodingErrors:(id)errors;
@end

@implementation _AXCodeItemDecoder

- (id)decodedCodeItemsFromURL:(id)l decodingErrors:(id)errors
{
  v75 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v72 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:0 error:&v72];
  v7 = v72;
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x1E696ABC0];
    ax_nonRedundantDescription = [v7 ax_nonRedundantDescription];
    v48 = ax_nonRedundantDescription;
    v11 = @"Could not load ax bundle map: %@";
    v12 = v9;
LABEL_3:
    ax_nonRedundantDescription2 = [v12 ax_errorWithDomain:@"AXLoader" description:{v11, v48}];
    [errorsCopy addObject:ax_nonRedundantDescription2];
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v71 = 0;
  ax_nonRedundantDescription = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v71];
  v14 = v71;
  v8 = v14;
  if (v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    ax_nonRedundantDescription2 = [v14 ax_nonRedundantDescription];
    v16 = [v15 ax_errorWithDomain:@"AXLoader" description:{@"Could not decode ax bundle map JSON: %@", ax_nonRedundantDescription2}];
    [errorsCopy addObject:v16];

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v11 = @"Could not load ax bundle map: Expected rootObject to be NSDictionary";
    goto LABEL_3;
  }

  ax_nonRedundantDescription2 = [ax_nonRedundantDescription objectForKey:@"items"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [MEMORY[0x1E695DFA8] set];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = ax_nonRedundantDescription2;
    v62 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v62)
    {
      v52 = v6;
      v53 = v17;
      v50 = ax_nonRedundantDescription2;
      v51 = ax_nonRedundantDescription;
      v19 = *v68;
      v20 = obj;
      v59 = errorsCopy;
      v57 = *v68;
      while (1)
      {
        v21 = 0;
        do
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v67 + 1) + 8 * v21);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. expected NSDictionary"];
            [errorsCopy addObject:v23];
            goto LABEL_61;
          }

          v23 = [v22 objectForKey:@"name"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length])
          {
            v24 = [v22 objectForKey:@"target"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v58 = v24;
              v25 = [v24 objectForKey:@"name"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v25 length])
              {
                v26 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. target name is missing"];
                [errorsCopy addObject:v26];
                v44 = v58;
                goto LABEL_58;
              }

              v26 = [v24 objectForKey:@"type"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v26 length])
              {
                v27 = [AXCodeItem codeItemTypeFromString:v26];
                if (v27)
                {
                  v55 = v27;
                  v28 = [v22 objectForKey:@"platforms"];
                  objc_opt_class();
                  v56 = v28;
                  if (objc_opt_isKindOfClass())
                  {
                    dictionary = [MEMORY[0x1E695DF90] dictionary];
                    v63 = 0u;
                    v64 = 0u;
                    v65 = 0u;
                    v66 = 0u;
                    v60 = v28;
                    v30 = [v60 countByEnumeratingWithState:&v63 objects:v73 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v32 = *v64;
                      do
                      {
                        for (i = 0; i != v31; ++i)
                        {
                          v34 = v26;
                          if (*v64 != v32)
                          {
                            objc_enumerationMutation(v60);
                          }

                          v35 = *(*(&v63 + 1) + 8 * i);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            if ([v35 isEqualToString:_AXBundleMapPlatformKey_iOS])
                            {
                              [dictionary setObject:v25 forKeyedSubscript:_AXBundleMapPlatformKey_iOS];
                            }

                            if ([v35 isEqualToString:_AXBundleMapPlatformKey_tvOS])
                            {
                              [dictionary setObject:v25 forKeyedSubscript:_AXBundleMapPlatformKey_tvOS];
                            }

                            if ([v35 isEqualToString:_AXBundleMapPlatformKey_watchOS])
                            {
                              [dictionary setObject:v25 forKeyedSubscript:_AXBundleMapPlatformKey_watchOS];
                            }

                            if ([v35 isEqualToString:_AXBundleMapPlatformKey_iosmac])
                            {
                              [dictionary setObject:v25 forKeyedSubscript:_AXBundleMapPlatformKey_iosmac];
                            }

                            if ([v35 isEqualToString:_AXBundleMapPlatformKey_macOS])
                            {
                              [dictionary setObject:v25 forKeyedSubscript:_AXBundleMapPlatformKey_macOS];
                            }
                          }

                          else
                          {
                            v36 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. supportedPlatforms item '%@' expected to be a string", v25, v35}];
                            [v59 addObject:v36];
                          }

                          v26 = v34;
                        }

                        v31 = [v60 countByEnumeratingWithState:&v63 objects:v73 count:16];
                      }

                      while (v31);
                    }

                    v37 = AXAccessibilityBundlesDirectory();
                    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.axbundle/%@", v23, v23];
                    v39 = [v37 stringByAppendingPathComponent:v38];

                    v40 = [v22 objectForKey:@"loadOrder"];
                    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      v42 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"If loadOrder is specified, it must be a number"}];
                      errorsCopy = v59;
                      [v59 addObject:v42];
                    }

                    else
                    {
                      v61 = v26;
                      OrderForInfo = _loadOrderForInfo(v40, v55);
                      v42 = [v22 objectForKey:@"excludedProcesses"];
                      errorsCopy = v59;
                      if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        v43 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"excludedProcesses was not an array"];
                        [v59 addObject:v43];
                      }

                      else
                      {
                        v43 = [[AXCodeItem alloc] initAccessibilityCodeItemWithPath:v39 targetType:v55 platformToTarget:dictionary loadOrder:OrderForInfo];
                        [v43 setExcludedProcesses:v42];
                        [v53 addObject:v43];
                      }

                      v26 = v61;
                    }

                    v20 = obj;
                  }

                  else
                  {
                    dictionary = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. supportedPlatforms expected to be an array", v25}];
                    [errorsCopy addObject:dictionary];
                  }

                  v44 = v58;
                  v45 = v56;
LABEL_57:

LABEL_58:
LABEL_59:

                  v19 = v57;
                  goto LABEL_60;
                }

                [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. target type is unknown '%@'", v25, v26}];
              }

              else
              {
                [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:{@"Could not load bundle map item named '%@'. target type is missing", v25, v49}];
              }
              v45 = ;
              [errorsCopy addObject:v45];
              v44 = v58;
              goto LABEL_57;
            }

            v25 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. target expected to be NSDictionary"];
            [errorsCopy addObject:v25];
            v44 = v24;
            goto LABEL_59;
          }

          v44 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load bundle map item. name is missing"];
          [errorsCopy addObject:v44];
LABEL_60:

LABEL_61:
          ++v21;
        }

        while (v21 != v62);
        v46 = [v20 countByEnumeratingWithState:&v67 objects:v74 count:16];
        v62 = v46;
        if (!v46)
        {
          v8 = 0;
          v6 = v52;
          ax_nonRedundantDescription2 = v50;
          ax_nonRedundantDescription = v51;
          v47 = v20;
          v17 = v53;
          goto LABEL_75;
        }
      }
    }

    v47 = obj;
  }

  else
  {
    v47 = [MEMORY[0x1E696ABC0] ax_errorWithDomain:@"AXLoader" description:@"Could not load ax bundle map: Expected rootObject.items to be NSArray"];
    [errorsCopy addObject:v47];
    v17 = 0;
  }

LABEL_75:

LABEL_7:

  return v17;
}

@end