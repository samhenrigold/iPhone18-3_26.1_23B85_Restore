@interface IMDSpotlightQueryProvider
+ (id)sharedProvider;
- (void)_validateSpotlightClientStateWithLastError:(id)error attempts:(int64_t)attempts completion:(id)completion;
- (void)fetchLastSpotlightIndexDeleteReasonWithCompletion:(id)completion;
- (void)fetchSpotlightClientStateWithCompletion:(id)completion;
- (void)invalidateSpotlightClientStateVersioningWithCompletion:(id)completion;
- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block;
- (void)validateSpotlightClientStateWithCompletion:(id)completion;
@end

@implementation IMDSpotlightQueryProvider

+ (id)sharedProvider
{
  if (qword_1EBA53A58 != -1)
  {
    sub_1B7CFB500();
  }

  v3 = qword_1EBA53A48;

  return v3;
}

- (void)_validateSpotlightClientStateWithLastError:(id)error attempts:(int64_t)attempts completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  if (attempts < 5)
  {
    if (objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v9, v10, v11))
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v23 = "[IMDSpotlightQueryProvider _validateSpotlightClientStateWithLastError:attempts:completion:]";
          _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "%{public}s CS already needs reindexing, not checking client state", buf, 0xCu);
        }
      }

      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v15 = IMCoreSpotlightCriticalIndex();
      if (v15)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1B7BC6CB0;
        v19[3] = &unk_1E7CBC290;
        attemptsCopy = attempts;
        v19[4] = self;
        v20 = completionCopy;
        objc_msgSend_fetchLastClientStateWithCompletionHandler_(v15, v16, v19, v17);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 136446210;
            v23 = "[IMDSpotlightQueryProvider _validateSpotlightClientStateWithLastError:attempts:completion:]";
            _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "%{public}s Failed to fetch Spotlight index, bailing", buf, 0xCu);
          }
        }

        completionCopy[2](completionCopy, 1, 0);
      }
    }
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CFB514(v13);
    }

    (completionCopy)[2](completionCopy, 1, errorCopy);
  }
}

- (void)validateSpotlightClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BC7068;
  v6[3] = &unk_1E7CB7260;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  IMDIndexingClientRequest(v6);
}

- (void)fetchSpotlightClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BC7108;
  v5[3] = &unk_1E7CB67C0;
  v6 = completionCopy;
  v4 = completionCopy;
  IMDIndexingClientRequest(v5);
}

- (void)invalidateSpotlightClientStateVersioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BC71EC;
  v5[3] = &unk_1E7CB67C0;
  v6 = completionCopy;
  v4 = completionCopy;
  IMDIndexingClientRequest(v5);
}

- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block
{
  metadataCopy = metadata;
  collaborationMetadataCopy = collaborationMetadata;
  blockCopy = block;
  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12, v13);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v14, v15, v16, v17);

  if (isSpotlightRefactorEnabled)
  {
    v22 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v19, v20, v21);
    objc_msgSend_reindexMessagesWithCollaborationMetadata_collaborationMetadata_reason_completionBlock_(v22, v23, metadataCopy, collaborationMetadataCopy, reason, blockCopy);
  }

  else
  {
    sub_1B7B9D3C8(metadataCopy, collaborationMetadataCopy, reason, blockCopy);
  }
}

- (void)fetchLastSpotlightIndexDeleteReasonWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4, v5);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v6, v7, v8, v9);

  if (isSpotlightRefactorEnabled)
  {
    v14 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v11, v12, v13);
    v18 = objc_msgSend__lastIndexDeleteReason(v14, v15, v16, v17);
    completionCopy[2](completionCopy, v18);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

@end