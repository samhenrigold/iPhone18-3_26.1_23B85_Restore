@interface WBSPageTestController
- (WBSPageTestDelegate)delegate;
- (id)bundleFromNSBundle:(id)bundle;
@end

@implementation WBSPageTestController

- (id)bundleFromNSBundle:(id)bundle
{
  selfCopy = self;
  v72 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v56 = objc_alloc_init(WBSPageTestEvaluator);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = bundleCopy;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  infoDictionary = [bundleCopy infoDictionary];
  obj = [infoDictionary safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"TestPages"];

  v48 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v48)
  {
    v47 = *v63;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v63 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v62 + 1) + 8 * i);
        v51 = [v54 safari_stringForKey:{@"WebArchiveFileName", selfCopy}];
        v5 = MEMORY[0x1E695DFF8];
        bundleURL = [v53 bundleURL];
        v55 = [v5 URLWithString:v51 relativeToURL:bundleURL];

        v7 = [v54 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"Expectations"];
        v49 = v7;
        if (v7)
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = v7;
          v8 = [v57 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v8)
          {
            v9 = *v59;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v59 != v9)
                {
                  objc_enumerationMutation(v57);
                }

                v11 = *(*(&v58 + 1) + 8 * j);
                v13 = [v11 safari_stringForKey:@"ExpectedResults"];
                if (v13)
                {
                  v15 = [v11 safari_stringForKey:@"Identifier"];
                  if (v15)
                  {
                    v16 = [v11 safari_stringForKey:@"Condition"];
                    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:v16];
                    v18 = [v17 evaluateWithObject:v56];
                    if (v18)
                    {
                      v20 = [WBSPageTest alloc];
                      v21 = MEMORY[0x1E695DFF8];
                      bundleURL2 = [v53 bundleURL];
                      v23 = [v21 URLWithString:v13 relativeToURL:bundleURL2];
                      v24 = [(WBSPageTest *)v20 initWithIdentifier:v15 pageURL:v55 expectedResultsURL:v23 dictionary:v54];
                      [v52 addObject:v24];
                    }

                    v25 = WBS_LOG_CHANNEL_PREFIXTest(v18, v19);
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543618;
                      v67 = v13;
                      v68 = 2114;
                      v69 = v16;
                      _os_log_impl(&dword_1BB6F3000, v25, OS_LOG_TYPE_INFO, "Skipping expectation '%{public}@' because the current device didn't meet the condition '%{public}@'", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v27 = WBS_LOG_CHANNEL_PREFIXTest(0, v14);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v67 = v51;
                      _os_log_error_impl(&dword_1BB6F3000, v27, OS_LOG_TYPE_ERROR, "Test for '%{public}@' is required to specify identifiers", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  v26 = WBS_LOG_CHANNEL_PREFIXTest(0, v12);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v67 = v51;
                    _os_log_error_impl(&dword_1BB6F3000, v26, OS_LOG_TYPE_ERROR, "Test for '%{public}@' is required to specify an expected result files", buf, 0xCu);
                  }
                }
              }

              v8 = [v57 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v8);
          }
        }

        else
        {
          v28 = MEMORY[0x1E695DFF8];
          uRLByDeletingPathExtension = [v55 URLByDeletingPathExtension];
          absoluteString = [uRLByDeletingPathExtension absoluteString];
          v31 = [absoluteString stringByAppendingString:@"-expected"];
          v32 = [v28 URLWithString:v31];
          expectedResultsPathExtension = [(WBSPageTestController *)selfCopy expectedResultsPathExtension];
          v57 = [v32 URLByAppendingPathExtension:expectedResultsPathExtension];

          v34 = [WBSPageTest alloc];
          uRLByDeletingPathExtension2 = [v55 URLByDeletingPathExtension];
          lastPathComponent = [uRLByDeletingPathExtension2 lastPathComponent];
          v37 = [(WBSPageTest *)v34 initWithIdentifier:lastPathComponent pageURL:v55 expectedResultsURL:v57 dictionary:v54];
          [v52 addObject:v37];
        }
      }

      v48 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v48);
  }

  bundleIdentifier = [v53 bundleIdentifier];
  if (!bundleIdentifier)
  {
    bundleURL3 = [v53 bundleURL];
    uRLByDeletingPathExtension3 = [bundleURL3 URLByDeletingPathExtension];
    bundleIdentifier = [uRLByDeletingPathExtension3 lastPathComponent];
  }

  if ([v52 count])
  {
    v42 = [[WBSPageTestBundle alloc] initWithIdentifier:bundleIdentifier tests:v52];
  }

  else
  {
    v43 = WBS_LOG_CHANNEL_PREFIXTest(0, v41);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v67 = bundleIdentifier;
      _os_log_impl(&dword_1BB6F3000, v43, OS_LOG_TYPE_INFO, "Skipping bundle '%{public}@' because they contained no runnable tests for current device", buf, 0xCu);
    }

    v42 = 0;
  }

  return v42;
}

- (WBSPageTestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end