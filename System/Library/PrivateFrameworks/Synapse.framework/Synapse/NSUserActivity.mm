@interface NSUserActivity
- (id)_syDocument;
- (void)set_syDocument:(void *)document;
@end

@implementation NSUserActivity

- (id)_syDocument
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = [selfCopy _payloadForIdentifier:@"com.apple.synapse.document"];
    if (v2)
    {
      v3 = [SYDocument documentFromData:v2];
    }

    else
    {
      v3 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_syDocument:(void *)document
{
  v3 = a2;
  if (document)
  {
    documentCopy = document;
    objc_sync_enter(documentCopy);
    v8 = 0;
    v5 = [v3 dataRepresentationWithError:&v8];
    v6 = v8;
    if (v6)
    {
      v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(NSUserActivity *)v6 set_syDocument:v7];
      }
    }

    if (v5)
    {
      [documentCopy _setPayload:v5 object:0 identifier:@"com.apple.synapse.document"];
    }

    objc_sync_exit(documentCopy);
  }
}

void __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  *(*(*(a1 + 32) + 8) + 24) = SYCanUseObjectInContextInfo(v7);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_5;
  }

  v9 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_1(v7);
  }

  *a4 = 1;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = SYCanUseObjectInContextInfo(v8);
    if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
    {
      v10 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_2(v7);
      }

      *a4 = 1;
    }
  }
}

void __82__NSUserActivity_SYInternalExtensions___syFetchCurrentUserActivityWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__NSUserActivity_SYInternalExtensions___syFetchCurrentUserActivityWithCompletion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)set_syDocument:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to encode document, error: %@", &v2, 0xCu);
}

void __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  OUTLINED_FUNCTION_2(&dword_225901000, v3, v4, "Invalid key of class %@ in linkContextInfo dictionary.", v5, v6, v7, v8);
}

void __57__NSUserActivity_SynapseExtensions__set_linkContextInfo___block_invoke_cold_2(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  OUTLINED_FUNCTION_2(&dword_225901000, v3, v4, "Invalid value of class %@ in linkContextInfo dictionary.", v5, v6, v7, v8);
}

@end