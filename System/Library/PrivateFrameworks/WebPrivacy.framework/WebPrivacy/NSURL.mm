@interface NSURL
@end

@implementation NSURL

void __57__NSURL_WebPrivacyExtras___wp_removeTrackingInformation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WPOSLogAPI(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__NSURL_WebPrivacyExtras___wp_removeTrackingInformation___block_invoke_cold_1();
    }
  }

  v10 = *(a1 + 40);
  v11 = WebPrivacy::filterUsingCachedParameters(*(a1 + 32), v7);
  (*(v10 + 16))(v10, v11);
}

@end