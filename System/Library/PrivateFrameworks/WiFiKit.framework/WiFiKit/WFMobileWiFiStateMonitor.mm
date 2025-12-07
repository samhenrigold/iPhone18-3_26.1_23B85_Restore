@interface WFMobileWiFiStateMonitor
- (WFMobileWiFiStateMonitor)initWithHandler:(id)handler;
- (void)_updateState;
- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)attachment;
- (void)dealloc;
@end

@implementation WFMobileWiFiStateMonitor

- (WFMobileWiFiStateMonitor)initWithHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = WFMobileWiFiStateMonitor;
  v5 = [(WFMobileWiFiStateMonitor *)&v25 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = _Block_copy(handlerCopy);
  handler = v5->_handler;
  v5->_handler = v6;

  v5->_state = 0;
  v8 = WiFiManagerClientCreate();
  v5->_manager = v8;
  if (!v8)
  {
    [WFMobileWiFiStateMonitor initWithHandler:];
LABEL_20:

    v10 = 0;
    v5 = 0;
    goto LABEL_18;
  }

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop getCFRunLoop];
  WiFiManagerClientScheduleWithRunLoop();

  WiFiManagerClientRegisterServerRestartCallback();
  WiFiManagerClientRegisterDeviceAttachmentCallback();
  v10 = WiFiManagerClientCopyDevices();
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  v13 = v12;
  if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
  {
    *buf = 136315394;
    v27 = "[WFMobileWiFiStateMonitor initWithHandler:]";
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_273ECD000, v11, v13, "%s: devices %@", buf, 0x16u);
  }

  if (v10)
  {
    v15 = [v10 objectAtIndex:0];
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    v18 = v17;
    if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
    {
      *buf = 136315394;
      v27 = "[WFMobileWiFiStateMonitor initWithHandler:]";
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_273ECD000, v16, v18, "%s: device %@", buf, 0x16u);
    }

    [(WFMobileWiFiStateMonitor *)v5 _updateWithDeviceAttachment:v15];
    [(WFMobileWiFiStateMonitor *)v5 _updateState];
  }

  else
  {
    v20 = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(1uLL);
    v22 = v21;
    if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
    {
      *buf = 136315138;
      v27 = "[WFMobileWiFiStateMonitor initWithHandler:]";
      _os_log_impl(&dword_273ECD000, v20, v22, "%s: failed to acquire WiFiDeviceClientRef", buf, 0xCu);
    }

    v10 = 0;
  }

LABEL_18:

  return v5;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  device = self->_device;
  if (device)
  {
    CFRelease(device);
    self->_device = 0;
  }

  v5.receiver = self;
  v5.super_class = WFMobileWiFiStateMonitor;
  [(WFMobileWiFiStateMonitor *)&v5 dealloc];
}

- (void)_updateState
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFMobileWiFiStateMonitor__updateState__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __40__WFMobileWiFiStateMonitor__updateState__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (WiFiManagerClientGetPower())
  {
    v2 = WiFiDeviceClientCopyCurrentNetwork();
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    v8 = WFCurrentLogLevel(v4, v6) > 2 && v3 != 0;
    if (v2)
    {
      if (v8 && os_log_type_enabled(v3, v5))
      {
        *buf = 136315138;
        v16 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
        _os_log_impl(&dword_273ECD000, v3, v5, "%s: associated", buf, 0xCu);
      }

      CFRelease(v2);
      v9 = 4;
    }

    else
    {
      if (v8 && os_log_type_enabled(v3, v5))
      {
        *buf = 136315138;
        v16 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
        _os_log_impl(&dword_273ECD000, v3, v5, "%s: powered on", buf, 0xCu);
      }

      v9 = 3;
    }
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 136315138;
      v16 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
      _os_log_impl(&dword_273ECD000, v10, v12, "%s: powered off", buf, 0xCu);
    }

    v9 = 1;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__WFMobileWiFiStateMonitor__updateState__block_invoke_3;
  v14[3] = &unk_279EBCFB8;
  v14[4] = *(a1 + 32);
  v14[5] = v9;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __40__WFMobileWiFiStateMonitor__updateState__block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  [*(a1 + 32) setState:*(a1 + 40)];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      v8 = WFWiFiStateMonitorStringForState(v2);
      v9 = WFWiFiStateMonitorStringForState(*(a1 + 40));
      v12 = 136315650;
      v13 = "[WFMobileWiFiStateMonitor _updateState]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_273ECD000, v7, v5, "%s: state changed from %@ to %@", &v12, 0x20u);
    }
  }

  v10 = [*(a1 + 32) handler];

  if (v10)
  {
    v11 = [*(a1 + 32) handler];
    v11[2](v11, v2, *(a1 + 40));
  }
}

- (void)_updateWithDeviceAttachment:(__WiFiDeviceClient *)attachment
{
  device = self->_device;
  if (device)
  {
    CFRelease(device);
  }

  self->_device = attachment;
  if (attachment)
  {
    CFRetain(attachment);
  }

  WiFiDeviceClientRegisterPowerCallback();

  MEMORY[0x282187698](attachment, _WiFiDeviceLinkExtendedCallback, self);
}

- (void)initWithHandler:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v0, v2, "failed to create WiFiManagerClientRef", v4, 2u);
  }
}

@end