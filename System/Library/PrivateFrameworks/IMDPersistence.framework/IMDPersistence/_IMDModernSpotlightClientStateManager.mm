@interface _IMDModernSpotlightClientStateManager
- (_IMDModernSpotlightClientStateManager)init;
- (id)_missingSpotlightIndexError;
- (void)_currentClientStateWithCompletion:(id)completion;
- (void)_saveClientState:(id)state withCompletion:(id)completion;
@end

@implementation _IMDModernSpotlightClientStateManager

- (_IMDModernSpotlightClientStateManager)init
{
  v10.receiver = self;
  v10.super_class = _IMDModernSpotlightClientStateManager;
  v5 = [(_IMDModernSpotlightClientStateManager *)&v10 init];
  if (v5 && objc_msgSend__needsMigrationFromDefaults(MEMORY[0x1E69A82A8], v2, v3, v4))
  {
    v6 = objc_alloc_init(_IMDLegacySpotlightClientStateManager);
    objc_msgSend__migrateClientStateFromManager_(v5, v7, v6, v8);
  }

  return v5;
}

- (id)_missingSpotlightIndexError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = *MEMORY[0x1E69A7C30];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = @"Failed to open the Spotlight index.";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v10, &v9, 1);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v2, v6, v3, 1, v5);

  return v7;
}

- (void)_currentClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = IMCoreSpotlightCriticalIndex();
  if (v8)
  {
    v9 = sub_1B7B906BC();
    if (!v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B907C8;
      v13[3] = &unk_1E7CBB628;
      v14 = completionCopy;
      objc_msgSend_fetchLastClientStateWithCompletionHandler_(v8, v11, v13, v12);

      goto LABEL_10;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Simulating error during fetch due to defaults", buf, 2u);
      }
    }
  }

  else
  {
    v9 = objc_msgSend__missingSpotlightIndexError(self, v5, v6, v7);
  }

  (*(completionCopy + 2))(completionCopy, 0, v9);
LABEL_10:
}

- (void)_saveClientState:(id)state withCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  completionCopy = completion;
  IMDIndexingAssertClientRequestQueue();
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = stateCopy;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Saving client state: %@", buf, 0xCu);
  }

  v9 = IMCoreSpotlightIndex();
  if (v9)
  {
    v12 = sub_1B7B90D14();
    if (v12)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Simulating error during save due to defaults", buf, 2u);
        }
      }

      completionCopy[2](completionCopy, v12);
    }

    else
    {
      v27 = 0;
      v18 = objc_msgSend_dataWithError_(stateCopy, v10, &v27, v11);
      v12 = v27;
      if (v12)
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v29 = v12;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Failed to serialize client state: %@", buf, 0xCu);
          }
        }

        completionCopy[2](completionCopy, v12);
      }

      else
      {
        objc_msgSend_beginIndexBatch(v9, v19, v20, v21);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_1B7B90E20;
        v24[3] = &unk_1E7CBB398;
        v25 = 0;
        v26 = completionCopy;
        objc_msgSend_endIndexBatchWithClientState_completionHandler_(v9, v23, v18, v24);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Couldn't open Spotlight index to save client state", buf, 2u);
      }
    }

    v12 = objc_msgSend__missingSpotlightIndexError(self, v14, v15, v16);
    completionCopy[2](completionCopy, v12);
  }
}

@end