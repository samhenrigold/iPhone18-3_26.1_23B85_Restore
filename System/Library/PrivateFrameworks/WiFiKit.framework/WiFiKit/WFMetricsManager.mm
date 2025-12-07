@interface WFMetricsManager
+ (id)sharedManager;
- (WFMetricsManager)init;
- (void)_submitCAEvent:(id)event;
- (void)processEvent:(id)event;
@end

@implementation WFMetricsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[WFMetricsManager sharedManager];
  }

  v3 = _sharedManager;

  return v3;
}

uint64_t __33__WFMetricsManager_sharedManager__block_invoke()
{
  _sharedManager = objc_alloc_init(WFMetricsManager);

  return MEMORY[0x2821F96F8]();
}

- (void)processEvent:(id)event
{
  v12 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    if ([eventCopy conformsToProtocol:&unk_28831F170])
    {
      [(WFMetricsManager *)self _submitCAEvent:v5];
    }

    else
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      v8 = v7;
      if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_273ECD000, v6, v8, "%@ does not conform to event protocol", &v10, 0xCu);
      }
    }
  }
}

- (void)_submitCAEvent:(id)event
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  eventName = [eventCopy eventName];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  eventDictionary = [eventCopy eventDictionary];
  if (!eventName)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel(v11, v12) || !v10 || !os_log_type_enabled(v10, v11))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v26 = "[WFMetricsManager _submitCAEvent:]";
    v13 = "%s: event name is nil";
    v14 = v10;
    v15 = v11;
    v16 = 12;
    goto LABEL_17;
  }

  if (!v20[5])
  {
    v10 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel(v17, v18) || !v10 || !os_log_type_enabled(v10, v17))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    v26 = "[WFMetricsManager _submitCAEvent:]";
    v27 = 2112;
    v28 = eventName;
    v13 = "%s: event is nil for event %@";
    v14 = v10;
    v15 = v17;
    v16 = 22;
LABEL_17:
    _os_log_impl(&dword_273ECD000, v14, v15, v13, buf, v16);
LABEL_18:

    goto LABEL_8;
  }

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(4uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 4 && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = v20[5];
    *buf = 136315650;
    v26 = "[WFMetricsManager _submitCAEvent:]";
    v27 = 2112;
    v28 = eventName;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: submitting %@ with dictionary %@", buf, 0x20u);
  }

  AnalyticsSendEventLazy();
LABEL_8:
  _Block_object_dispose(&v19, 8);
}

- (WFMetricsManager)init
{
  v15.receiver = self;
  v15.super_class = WFMetricsManager;
  v2 = [(WFMetricsManager *)&v15 init];
  if (v2)
  {
    v3 = WFCopyProcessIdentifier();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      processName = v2->_processName;
      v2->_processName = &v5->isa;
    }

    else
    {
      v10 = v2->_processName;
      v2->_processName = @"unknown";

      processName = WFLogForCategory(0);
      v11 = OSLogForWFLogLevel(1uLL);
      v12 = v11;
      if (WFCurrentLogLevel(v11, v13) && processName && os_log_type_enabled(processName, v12))
      {
        *v14 = 0;
        _os_log_impl(&dword_273ECD000, processName, v12, "Unable to get process name", v14, 2u);
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    ssidHashes = v2->_ssidHashes;
    v2->_ssidHashes = dictionary;

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

@end