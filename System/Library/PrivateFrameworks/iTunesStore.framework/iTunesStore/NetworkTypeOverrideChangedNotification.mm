@interface NetworkTypeOverrideChangedNotification
@end

@implementation NetworkTypeOverrideChangedNotification

uint64_t ____NetworkTypeOverrideChangedNotification_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v6 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, v5, 0, "%@: Reload network type after override change", &v9, 12);
    if (v6)
    {
      v7 = v6;
      [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:4];
      free(v7);
      SSFileLog();
    }
  }

  CFPreferencesAppSynchronize(*MEMORY[0x277D6A708]);
  return [*(a1 + 32) _reloadNetworkType];
}

@end