@interface NSItemProvider
@end

@implementation NSItemProvider

id __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_2;
  v10[3] = &unk_279EAF2E0;
  v13 = v5;
  v6 = *(a1 + 32);
  v11 = v6;
  v12 = *(a1 + 40);
  v7 = v5;
  v8 = [v6 loadWithOptions_v2:a2 completionHandler:v10];

  return v8;
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_2(id *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 data];
  v5 = [v4 length];

  if (v5)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v3 data];
    v10 = [a1[4] typeIdentifier];
    v29 = 0;
    v11 = [v8 objectWithItemProviderData:v9 typeIdentifier:v10 error:&v29];
    v12 = v29;
    v13 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v18 = [v14 scheme];
      if ([v18 isEqualToString:@"http"] & 1) != 0 || (v19 = objc_msgSend(v18, "isEqualToString:", @"https"), (v19))
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_9;
        v25[3] = &unk_279EAF2B8;
        v28 = a1[6];
        v26 = v3;
        v27 = a1[5];
        [v14 _wp_removeTrackingInformation:v25];
      }

      else
      {
        v22 = WPOSLogAPI(v19, v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_273D20000, v22, OS_LOG_TYPE_INFO, "Skipping URL returned from item provider (scheme is not HTTP-family)", buf, 2u);
        }

        (*(a1[6] + 2))();
      }
    }

    else
    {
      v21 = WPOSLogAPI(v16, v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = [v3 data];
        v24 = [v23 length];
        *buf = 134218242;
        v31 = v24;
        v32 = 2112;
        v33 = v12;
        _os_log_error_impl(&dword_273D20000, v21, OS_LOG_TYPE_ERROR, "Failed to deserialize NSURL from item provider data (%zu bytes) with error: %@", buf, 0x16u);
      }

      (*(a1[6] + 2))();
    }
  }

  else
  {
    v15 = WPOSLogAPI(v6, v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_2_cold_1();
    }

    (*(a1[6] + 2))();
  }
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_9(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10;
    v8[3] = &unk_279EAF290;
    v5 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    v6 = [v4 loadDataWithTypeIdentifier:v5 forItemProviderCompletionHandler:v8];
  }

  else
  {
    v7 = WPOSLogAPI(0, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_9_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6 || (v6 = [v5 length]) == 0)
  {
    v9 = WPOSLogAPI(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke_10_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) copyWithData:v5 urlWrapper:0 cleanupHandler:0 error:0];
    (*(v10 + 16))(v10, v11);
  }
}

@end