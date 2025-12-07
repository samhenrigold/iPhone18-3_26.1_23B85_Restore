@interface AFAnalyticsContextCreateForCrossDeviceCommandHandled
@end

@implementation AFAnalyticsContextCreateForCrossDeviceCommandHandled

__CFString *__AFAnalyticsContextCreateForCrossDeviceCommandHandled_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"iPod") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"Watch"))
  {
    v3 = @"PersonalDevice";
  }

  else
  {
    v3 = @"AppleTV";
    if (([v2 hasPrefix:@"AppleTV"] & 1) == 0)
    {
      v3 = @"AudioAccessory";
      if (([v2 hasPrefix:@"AudioAccessory"] & 1) == 0)
      {
        v5 = AFSiriLogContextService;
        if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
        {
          v6 = 136315394;
          v7 = "AFAnalyticsContextCreateForCrossDeviceCommandHandled_block_invoke";
          v8 = 2112;
          v9 = v2;
          _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Unexpected product type for CrossDeviceCommandHandled metric: %@", &v6, 0x16u);
        }

        v3 = @"Unknown";
      }
    }
  }

  return v3;
}

@end