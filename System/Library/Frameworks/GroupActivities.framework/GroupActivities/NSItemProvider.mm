@interface NSItemProvider
@end

@implementation NSItemProvider

void __91__NSItemProvider_GroupActivities_LinkPresentation__registerTUConversationActivityMetadata___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = lpLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v26 = 138412290;
    v27 = v5;
    _os_log_impl(&dword_1AEE80000, v4, OS_LOG_TYPE_INFO, "Started loading link metadata for TUConversationActivityMetadata from NSItemProvider: %@", &v26, 0xCu);
  }

  v6 = CUTWeakLinkClass();
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 linkMetadatablob];

  v11 = lpLog(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v12)
    {
      v13 = *v7;
      v26 = 138412290;
      v27 = v13;
      _os_log_impl(&dword_1AEE80000, v11, OS_LOG_TYPE_INFO, "TUConversationActivityMetadata had linkMetadatablob, using that to derive link metadata for NSItemProvider load: %@", &v26, 0xCu);
    }

    v14 = [*v7 linkMetadatablob];
    v15 = [v6 metadataWithDataRepresentation:v14];
    goto LABEL_11;
  }

  if (v12)
  {
    v16 = *v7;
    v26 = 138412290;
    v27 = v16;
    _os_log_impl(&dword_1AEE80000, v11, OS_LOG_TYPE_INFO, "TUConversationActivityMetadata did not have a linkMetadatablob, deriving link metadata directly from TUConversationActivityMetadata properties for NSItemProvider load: %@", &v26, 0xCu);
  }

  v15 = objc_alloc_init(v6);
  v17 = [*v7 title];
  [v15 setTitle:v17];

  v18 = [*v7 subTitle];
  [v15 setSummary:v18];

  v19 = [*v7 imageData];

  if (v19)
  {
    v21 = objc_alloc(CUTWeakLinkClass());
    v14 = [*v7 imageData];
    v22 = [v21 initWithData:v14 MIMEType:@"image/jpeg"];
    [v15 setImage:v22];

LABEL_11:
  }

  v23 = lpLog(v20);
  v24 = v23;
  if (v3)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = *v7;
      v26 = 138412290;
      v27 = v25;
      _os_log_impl(&dword_1AEE80000, v24, OS_LOG_TYPE_INFO, "Finished loading link metadata for TUConversationActivityMetadata from NSItemProvider: %@", &v26, 0xCu);
    }

    v3[2](v3, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __91__NSItemProvider_GroupActivities_LinkPresentation__registerTUConversationActivityMetadata___block_invoke_cold_1(v7, v24);
    }
  }
}

void __91__NSItemProvider_GroupActivities_LinkPresentation__registerTUConversationActivityMetadata___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1AEE80000, a2, OS_LOG_TYPE_ERROR, "NSItemProvider completionHandler was unexpectedly nil. Not loading link metadata for TUConversationActivityMetadata: %@", &v3, 0xCu);
}

@end