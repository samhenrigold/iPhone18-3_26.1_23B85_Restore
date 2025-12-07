@interface LNProperty
@end

@implementation LNProperty

uint64_t __82__LNProperty_WFFetchValue__wf_getValueForEntity_entityMetadata_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  return isEqualToString;
}

void __82__LNProperty_WFFetchValue__wf_getValueForEntity_entityMetadata_completionHandler___block_invoke_161(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) identifier];
      v9 = 136315650;
      v10 = "[LNProperty(WFFetchValue) wf_getValueForEntity:entityMetadata:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Unable to fetch value for property with identifier: %@ - %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

@end