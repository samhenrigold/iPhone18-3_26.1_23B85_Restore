@interface SYFileExtendedAttributes
+ (void)fetchPrivateAttributesForFileURL:(id)l completion:(id)completion;
+ (void)setPrivateAttributes:(id)attributes forFileURL:(id)l completion:(id)completion;
@end

@implementation SYFileExtendedAttributes

+ (void)fetchPrivateAttributesForFileURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"fileURL must not be nil" userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = completionCopy;
  v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SYFileExtendedAttributes fetchPrivateAttributesForFileURL:lCopy completion:v8];
  }

  v12 = lCopy;
  v13 = v7;
  v9 = v7;
  v10 = lCopy;
  _MDItemFetchPrivateAttributesForURL();
}

void __72__SYFileExtendedAttributes_fetchPrivateAttributesForFileURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  if (v6)
  {
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) path];
      v10 = 138478339;
      v11 = v9;
      v12 = 2113;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_225901000, v7, OS_LOG_TYPE_ERROR, "error fetching private attributes for url path: %{private}@, attrs: %{private}@, error: %@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

+ (void)setPrivateAttributes:(id)attributes forFileURL:(id)l completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  lCopy = l;
  completionCopy = completion;
  if (!attributesCopy)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE658];
    v17 = @"attributes must not be nil";
    goto LABEL_11;
  }

  if (!lCopy)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE658];
    v17 = @"fileURL must not be nil";
LABEL_11:
    v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  v10 = completionCopy;
  v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ([lCopy isFileReferenceURL])
    {
      [lCopy absoluteString];
    }

    else
    {
      [lCopy path];
    }
    v12 = ;
    *buf = 138478083;
    v22 = attributesCopy;
    v23 = 2113;
    v24 = v12;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Setting private attributes: %{private}@, for url path: %{private}@", buf, 0x16u);
  }

  v19 = lCopy;
  v20 = v10;
  v13 = v10;
  v14 = lCopy;
  _MDItemSetPrivateAttributesForURL();
}

void __71__SYFileExtendedAttributes_setPrivateAttributes_forFileURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__SYFileExtendedAttributes_setPrivateAttributes_forFileURL_completion___block_invoke_cold_1(a1, v3, v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (void)fetchPrivateAttributesForFileURL:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([a1 isFileReferenceURL])
  {
    [a1 absoluteString];
  }

  else
  {
    [a1 path];
  }
  v4 = ;
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "Fetching private attributes for url path: %{private}@", &v5, 0xCu);
}

void __71__SYFileExtendedAttributes_setPrivateAttributes_forFileURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) path];
  v6 = 138478083;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Unable to set private attributes for url path: %{private}@, error: %@", &v6, 0x16u);
}

@end