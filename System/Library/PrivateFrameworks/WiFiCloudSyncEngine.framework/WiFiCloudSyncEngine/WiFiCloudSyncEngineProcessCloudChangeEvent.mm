@interface WiFiCloudSyncEngineProcessCloudChangeEvent
@end

@implementation WiFiCloudSyncEngineProcessCloudChangeEvent

void ____WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = 0;
    v3 = MEMORY[0x277D86220];
    do
    {
      v4 = [*(a1 + 32) objectAtIndex:v2];
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136316162;
          v9 = "__WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke";
          v10 = 2080;
          v11 = "WiFiCloudSyncEngine.m";
          v12 = 1024;
          v13 = 1176;
          v14 = 2048;
          v15 = v2;
          v16 = 2112;
          v17 = v5;
          LODWORD(v7) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v3, 0, "[WIFICLOUDSYNC] %s (%s:%u)process change #%lu: <%@>", &v8, v7);
        }

        if ([*(a1 + 40) isKVSEncrypted])
        {
          if (![v5 hasPrefix:@"network."])
          {
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              v8 = 136315906;
              v9 = "__WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke";
              v10 = 2080;
              v11 = "WiFiCloudSyncEngine.m";
              v12 = 1024;
              v13 = 1184;
              v14 = 2112;
              v15 = v5;
              LODWORD(v7) = 38;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v3, 0, "[WIFICLOUDSYNC] %s (%s:%u)ignoring non-ssid key %@", &v8, v7);
            }

            goto LABEL_14;
          }
        }

        else
        {
          v6 = [v5 length];
          if (v6 >= [@"WiFiCloudSyncEngineNonSSIDKeyPrefix_" length])
          {
            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              v8 = 136315906;
              v9 = "__WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke";
              v10 = 2080;
              v11 = "WiFiCloudSyncEngine.m";
              v12 = 1024;
              v13 = 1193;
              v14 = 2112;
              v15 = v5;
              LODWORD(v7) = 38;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v3, 0, "[WIFICLOUDSYNC] %s (%s:%u)ignoring non-ssid key %@", &v8, v7);
            }

            goto LABEL_14;
          }
        }

        __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent(*(a1 + 56), *(a1 + 40));
      }

LABEL_14:
      ++v2;
    }

    while (v2 < *(a1 + 48));
  }

  dispatch_semaphore_signal(*(*(a1 + 56) + 280));
  CFRelease(*(a1 + 56));
}

@end