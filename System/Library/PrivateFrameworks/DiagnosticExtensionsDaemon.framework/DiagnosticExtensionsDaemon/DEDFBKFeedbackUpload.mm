@interface DEDFBKFeedbackUpload
+ (void)cleanUpIfNeeded;
+ (void)cleanUpIfNeededWithDefaults:(id)defaults;
+ (void)compactMapOnFeedbackUploadsWithUserDefaults:(id)defaults block:(id)block;
+ (void)didFinishUploadOnBugSessionIdentifier:(id)identifier;
+ (void)didFinishUploadOnBugSessionIdentifier:(id)identifier withDefaults:(id)defaults;
@end

@implementation DEDFBKFeedbackUpload

+ (void)cleanUpIfNeeded
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DEDFBKFeedbackUpload_cleanUpIfNeeded__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cleanUpIfNeeded_onceToken != -1)
  {
    dispatch_once(&cleanUpIfNeeded_onceToken, block);
  }
}

void __39__DEDFBKFeedbackUpload_cleanUpIfNeeded__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.diagnosticextensionsd.uploadCleanUp", v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DEDFBKFeedbackUpload_cleanUpIfNeeded__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void __39__DEDFBKFeedbackUpload_cleanUpIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"group.com.apple.feedback"];
  [v1 cleanUpIfNeededWithDefaults:v2];
}

+ (void)cleanUpIfNeededWithDefaults:(id)defaults
{
  v4 = MEMORY[0x277CBEAB8];
  defaultsCopy = defaults;
  v6 = objc_alloc_init(v4);
  [v6 setDay:-1];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v9 = [currentCalendar dateByAddingComponents:v6 toDate:v8 options:0];

  v11 = Log_1(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_INFO, "Will cleanup FBK Feedback uploads ", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__DEDFBKFeedbackUpload_cleanUpIfNeededWithDefaults___block_invoke;
  v13[3] = &unk_278F66278;
  v14 = v9;
  v12 = v9;
  [self compactMapOnFeedbackUploadsWithUserDefaults:defaultsCopy block:v13];
}

id __52__DEDFBKFeedbackUpload_cleanUpIfNeededWithDefaults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"dateCreated"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v9 = Log_1(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__DEDFBKFeedbackUpload_cleanUpIfNeededWithDefaults___block_invoke_cold_1(v9);
    }

    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 compareDate:*(a1 + 32) toDate:v4 toUnitGranularity:128];

  if (v7 == 1)
  {
    v9 = Log_1(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__DEDFBKFeedbackUpload_cleanUpIfNeededWithDefaults___block_invoke_cold_2(v4, v9);
    }

LABEL_7:

    v10 = 0;
    goto LABEL_9;
  }

  v10 = v3;
LABEL_9:

  return v10;
}

+ (void)didFinishUploadOnBugSessionIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEBD0];
  identifierCopy = identifier;
  v6 = [[v4 alloc] initWithSuiteName:@"group.com.apple.feedback"];
  [self didFinishUploadOnBugSessionIdentifier:identifierCopy withDefaults:v6];
}

+ (void)didFinishUploadOnBugSessionIdentifier:(id)identifier withDefaults:(id)defaults
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  defaultsCopy = defaults;
  v8 = Log_1(defaultsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "didFinishUploadOnBugSessionIdentifier: [%{public}@] ", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__DEDFBKFeedbackUpload_didFinishUploadOnBugSessionIdentifier_withDefaults___block_invoke;
  v10[3] = &unk_278F66278;
  v11 = identifierCopy;
  v9 = identifierCopy;
  [self compactMapOnFeedbackUploadsWithUserDefaults:defaultsCopy block:v10];
}

id __75__DEDFBKFeedbackUpload_didFinishUploadOnBugSessionIdentifier_withDefaults___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bugSessions"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = v3;
    v7 = *v19;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"sessionIdentifier"];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          v8 = [v4 indexOfObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
    v3 = v17;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = Log_1(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v23 = v14;
        _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Removing finished upload with Bug Session identifier [%{public}@] from Feedback upload", buf, 0xCu);
      }

      [v4 removeObjectAtIndex:v8];
    }
  }

  if ([v4 count])
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)compactMapOnFeedbackUploadsWithUserDefaults:(id)defaults block:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  blockCopy = block;
  v32 = defaultsCopy;
  v6 = [defaultsCopy objectForKey:@"FeedbackUploads"];
  v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v41 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    v11 = 0x277CCA000uLL;
    v42 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v15 = [v13 dataUsingEncoding:4];
          v52 = 0;
          v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v15 options:1 error:&v52];
          v17 = v52;
          v18 = v17;
          if (v17)
          {
            v19 = Log_1(v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v60 = v13;
              _os_log_error_impl(&dword_248AD7000, v19, OS_LOG_TYPE_ERROR, "Failed to parse JSON data. Cannot map Feedback upload [%{public}@]", buf, 0xCu);
            }

            goto LABEL_43;
          }

          v19 = [v16 objectForKeyedSubscript:@"dateCreated"];
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();
          if (v20)
          {
            v21 = [v41 dateFromString:v19];
            if (v21)
            {
              v22 = Log_1([v16 setObject:v21 forKeyedSubscript:@"dateCreated"]);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v60 = v16;
                _os_log_debug_impl(&dword_248AD7000, v22, OS_LOG_TYPE_DEBUG, "Loaded Feedback upload [%{public}@]", buf, 0xCu);
              }

              v23 = blockCopy[2](blockCopy, v16);
              if (v23)
              {
                v24 = [v16 objectForKeyedSubscript:@"dateCreated"];
                v40 = v24;
                if (v24)
                {
                  v25 = [v41 stringFromDate:v24];
                  v39 = v25;
                  if (v25)
                  {
                    [v16 setObject:v25 forKeyedSubscript:@"dateCreated"];
                    v45 = 0;
                    v35 = v23;
                    v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v23 options:0 error:&v45];
                    v27 = v45;
                    v36 = v26;
                    v37 = v27;
                    if (!v26 || v27)
                    {
                      v28 = Log_1(v27);
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                      {
                        [(DEDFBKFeedbackUpload *)v57 compactMapOnFeedbackUploadsWithUserDefaults:v37 block:&v58, v28];
                      }

LABEL_36:
                      v30 = v28;
                      v23 = v35;
                    }

                    else
                    {
                      v28 = [objc_alloc(*(v11 + 3240)) initWithData:v26 encoding:4];
                      if (v28)
                      {
                        [v34 addObject:v28];
                        goto LABEL_36;
                      }

                      v33 = Log_1(0);
                      v23 = v35;
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        [DEDFBKFeedbackUpload compactMapOnFeedbackUploadsWithUserDefaults:v44 block:?];
                      }

                      v30 = 0;
                    }
                  }

                  else
                  {
                    v37 = Log_1(0);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      [DEDFBKFeedbackUpload compactMapOnFeedbackUploadsWithUserDefaults:v47 block:?];
                    }
                  }
                }

                else
                {
                  v39 = Log_1(0);
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    [DEDFBKFeedbackUpload compactMapOnFeedbackUploadsWithUserDefaults:v49 block:?];
                  }
                }
              }

              else
              {
                v29 = Log_1(0);
                v40 = v29;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_248AD7000, v29, OS_LOG_TYPE_DEFAULT, "Will not keep this Feedback upload", buf, 2u);
                }

                v11 = 0x277CCA000;
              }
            }

            else
            {
              v23 = Log_1(0);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v60 = v19;
                _os_log_error_impl(&dword_248AD7000, v23, OS_LOG_TYPE_ERROR, "Cannot create NSDate from string [%{public}@], will remove stored Feedback upload", buf, 0xCu);
              }
            }
          }

          else
          {
            v21 = Log_1(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [DEDFBKFeedbackUpload compactMapOnFeedbackUploadsWithUserDefaults:v51 block:?];
            }
          }

          v7 = v42;
LABEL_43:

          goto LABEL_44;
        }

        v18 = Log_1(isKindOfClass);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v60 = v13;
          _os_log_error_impl(&dword_248AD7000, v18, OS_LOG_TYPE_ERROR, "Feedback upload in defaults is not a String: [%{public}@]", buf, 0xCu);
        }

LABEL_44:

        ++v12;
      }

      while (v9 != v12);
      v31 = [v7 countByEnumeratingWithState:&v53 objects:v61 count:16];
      v9 = v31;
    }

    while (v31);
  }

  [v32 setObject:v34 forKey:@"FeedbackUploads"];
}

void __52__DEDFBKFeedbackUpload_cleanUpIfNeededWithDefaults___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Feedback upload created on [%{public}@] is stale. Will delete", &v2, 0xCu);
}

+ (void)compactMapOnFeedbackUploadsWithUserDefaults:(void *)a3 block:(NSObject *)a4 .cold.3(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_248AD7000, a4, OS_LOG_TYPE_ERROR, "Failed to encode mapped Feedback upload back to JSON. [%{public}@]", a1, 0xCu);
}

@end