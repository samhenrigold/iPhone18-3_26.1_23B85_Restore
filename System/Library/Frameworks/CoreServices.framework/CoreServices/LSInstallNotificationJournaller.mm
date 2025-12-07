@interface LSInstallNotificationJournaller
@end

@implementation LSInstallNotificationJournaller

void __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v18.db = 0;
  if (*(a1 + 32))
  {
    v8 = _LSContextInit(&v18.db);
    if (v8)
    {
      v9 = _LSInstallLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke_cold_1();
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
      if (*(a1 + 48))
      {
        v11 = 1024;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a1 + 32);
      *buf = kLSVersionNumberNull;
      v20 = unk_1817E90C0;
      v13 = _LSBundleFindWithInfo(&v18, 0, v12, 0, buf, 2, v11, &v17, &v16);
      if (!v13)
      {
        v14 = _LSInstallLog(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          *&buf[4] = v15;
          _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_INFO, "Found registered application for journal entry: %@", buf, 0xCu);
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    v10 = _LSInstallLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke_cold_2();
    }
  }
}

@end