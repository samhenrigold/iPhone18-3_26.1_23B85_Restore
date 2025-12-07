@interface WFContentCachesContext
- (ContentCachesContextDelegate)delegate;
- (WFContentCachesContext)init;
@end

@implementation WFContentCachesContext

- (WFContentCachesContext)init
{
  v46 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = WFContentCachesContext;
  v2 = [(WFContentCachesContext *)&v41 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PreferenceBundles/Content Caches.bundle"];
    v40 = 0;
    v4 = [v3 loadAndReturnError:&v40];
    v5 = v40;

    if ((v4 & 1) == 0)
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) && v6)
      {
        v10 = v6;
        if (os_log_type_enabled(v10, v8))
        {
          localizedDescription = [v5 localizedDescription];
          *buf = 136315394;
          v43 = "[WFContentCachesContext init]";
          v44 = 2112;
          v45 = localizedDescription;
          _os_log_impl(&dword_273ECD000, v10, v8, "%s: Failed to load content caches bundle from system path. Error: %@", buf, 0x16u);
        }
      }

      v12 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/PreferenceBundles/Content Caches.bundle"];
      v39 = 0;
      v13 = [v12 loadAndReturnError:&v39];
      v5 = v39;

      v14 = WFLogForCategory(0);
      v15 = v14 != 0;
      if ((v13 & 1) == 0)
      {
        v28 = OSLogForWFLogLevel(1uLL);
        v29 = v28;
        if (WFCurrentLogLevel(v28, v30) != 0 && v15)
        {
          v31 = v14;
          if (os_log_type_enabled(v31, v29))
          {
            localizedDescription2 = [v5 localizedDescription];
            *buf = 136315394;
            v43 = "[WFContentCachesContext init]";
            v44 = 2112;
            v45 = localizedDescription2;
            _os_log_impl(&dword_273ECD000, v31, v29, "%s: Failed to load content caches bundle from internal path. Error: %@", buf, 0x16u);
          }
        }

        goto LABEL_31;
      }

      v16 = OSLogForWFLogLevel(3uLL);
      v17 = v16;
      if (WFCurrentLogLevel(v16, v18) > 2 && v15 && os_log_type_enabled(v14, v17))
      {
        *buf = 136315138;
        v43 = "[WFContentCachesContext init]";
        _os_log_impl(&dword_273ECD000, v14, v17, "%s: Loaded content caches bundle from internal path", buf, 0xCu);
      }
    }

    v19 = NSClassFromString(&cfstr_Cachelocatorse.isa);
    if (v19)
    {
      v20 = objc_alloc_init(v19);
      cacheLocatorSettingsInstance = v2->_cacheLocatorSettingsInstance;
      v2->_cacheLocatorSettingsInstance = v20;

      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(buf, v2);
        v22 = v2->_cacheLocatorSettingsInstance;
        v23 = dispatch_get_global_queue(25, 0);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __30__WFContentCachesContext_init__block_invoke;
        v37[3] = &unk_279EBDFA0;
        objc_copyWeak(&v38, buf);
        [(CacheLocatorSettings *)v22 scanForCachesOn:v23 withHandler:v37];

        v24 = v2;
        objc_destroyWeak(&v38);
        objc_destroyWeak(buf);
LABEL_32:

        goto LABEL_33;
      }

      v14 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(1uLL);
      v34 = v33;
      if (WFCurrentLogLevel(v33, v35) && v14 && os_log_type_enabled(v14, v34))
      {
        *buf = 136315138;
        v43 = "[WFContentCachesContext init]";
        _os_log_impl(&dword_273ECD000, v14, v34, "%s: scanForCaches method not found on CacheLocatorSettings", buf, 0xCu);
      }
    }

    else
    {
      v14 = WFLogForCategory(0);
      v25 = OSLogForWFLogLevel(1uLL);
      v26 = v25;
      if (WFCurrentLogLevel(v25, v27) && v14 && os_log_type_enabled(v14, v26))
      {
        *buf = 136315138;
        v43 = "[WFContentCachesContext init]";
        _os_log_impl(&dword_273ECD000, v14, v26, "%s: CacheLocatorSettings class not found in content caches bundle.", buf, 0xCu);
      }
    }

LABEL_31:

    v24 = 0;
    goto LABEL_32;
  }

  v24 = 0;
LABEL_33:

  return v24;
}

void __30__WFContentCachesContext_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__WFContentCachesContext_init__block_invoke_2;
    v5[3] = &unk_279EBDFF0;
    v6 = WeakRetained;
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __30__WFContentCachesContext_init__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNumOfContentCaches:*(a1 + 40)];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 40);
    v8 = 136315394;
    v9 = "[WFContentCachesContext init]_block_invoke_2";
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: found %d content caches", &v8, 0x12u);
  }

  v7 = [*(a1 + 32) delegate];
  [v7 contentCachesContext:*(a1 + 32) didUpdateNumOfContentCaches:*(a1 + 40)];
}

- (ContentCachesContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end