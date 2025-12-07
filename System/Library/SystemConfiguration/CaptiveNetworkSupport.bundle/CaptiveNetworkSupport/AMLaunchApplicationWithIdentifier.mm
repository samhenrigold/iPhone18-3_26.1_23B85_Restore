@interface AMLaunchApplicationWithIdentifier
@end

@implementation AMLaunchApplicationWithIdentifier

void ___AMLaunchApplicationWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(a1 + 48);
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_277237000, v7, v8, "Failed to launch app %@. Error = %@", &v16, 0x16u);
    }

    if ([v6 code] == 1)
    {
      v10 = [v6 userInfo];
      v11 = [v10 objectForKey:*MEMORY[0x277CCA7E8]];

      if (v11 && [v11 code] == 4)
      {
        v12 = mysyslog_get_logger();
        v13 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(a1 + 48);
          v16 = 138412290;
          v17 = v14;
          _os_log_impl(&dword_277237000, v12, v13, "App %@ is uninstalled", &v16, 0xCu);
        }

        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      *(*(*(a1 + 40) + 8) + 24) = v15;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end