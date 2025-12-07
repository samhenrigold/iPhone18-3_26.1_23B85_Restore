@interface ACCAssistiveTouchFeaturePlugin
- (NSString)description;
- (NSString)pluginName;
- (void)_assistiveTouchToggled:(id)toggled;
- (void)assistiveTouch:(id)touch setEnabled:(BOOL)enabled;
- (void)initPlugin;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCAssistiveTouchFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCAssistiveTouchFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCAssistiveTouchFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  assistiveTouchProvider = self->_assistiveTouchProvider;
  self->_assistiveTouchProvider = 0;

  [(ACCAssistiveTouchFeaturePlugin *)self setIsRunning:0];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335A9000, v5, OS_LOG_TYPE_DEFAULT, "Starting AssistiveTouch feature plugin...", buf, 2u);
  }

  v6 = dispatch_queue_create("com.apple.coreaccessories.plugin.AssistiveTouch", 0);
  assistiveTouchQueue = self->_assistiveTouchQueue;
  self->_assistiveTouchQueue = v6;

  _AXSAssistiveTouchEnabled();
  v8 = [objc_alloc(MEMORY[0x277CE8050]) initWithDelegate:self initialState:_AXSAssistiveTouchEnabled() != 0];
  assistiveTouchProvider = self->_assistiveTouchProvider;
  self->_assistiveTouchProvider = v8;

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_2335A9000, v10, OS_LOG_TYPE_INFO, "assistiveTouch Adding observer for kAXSAssistiveTouchEnabledNotification...", v13, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__assistiveTouchToggled_ name:*MEMORY[0x277D81C50] object:0];

  [(ACCAssistiveTouchFeaturePlugin *)self setIsRunning:1];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335A9000, v5, OS_LOG_TYPE_DEFAULT, "Stopping AssistiveTouch feature plugin...", buf, 2u);
  }

  [(ACCAssistiveTouchFeaturePlugin *)self setIsRunning:0];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_2335A9000, v6, OS_LOG_TYPE_INFO, "assistiveTouch Removing all observers...", v11, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  assistiveTouchProvider = self->_assistiveTouchProvider;
  self->_assistiveTouchProvider = 0;

  assistiveTouchQueue = self->_assistiveTouchQueue;
  self->_assistiveTouchQueue = 0;
}

- (void)assistiveTouch:(id)touch setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = enabledCopy;
    _os_log_impl(&dword_2335A9000, v9, OS_LOG_TYPE_INFO, "assistiveTouchSetEnabled: enable=%d", v10, 8u);
  }

  if (enabledCopy)
  {
    [(ACCAssistiveTouchFeaturePlugin *)self _startAssistiveTouch:touchCopy];
  }

  else
  {
    [(ACCAssistiveTouchFeaturePlugin *)self _stopAssistiveTouch:touchCopy];
  }
}

- (void)_assistiveTouchToggled:(id)toggled
{
  assistiveTouchQueue = self->_assistiveTouchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke;
  block[3] = &unk_2789E0C78;
  block[4] = self;
  dispatch_async(assistiveTouchQueue, block);
}

uint64_t __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke(uint64_t a1)
{
  v2 = _AXSAssistiveTouchEnabled();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCAssistiveTouchFeaturePlugin startPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke_cold_2(v2 != 0, v5);
  }

  return [*(*(a1 + 32) + 16) notifyAssistiveTouchEnabledState:v2 != 0];
}

void __55__ACCAssistiveTouchFeaturePlugin__startAssistiveTouch___block_invoke()
{
  v0 = _AXSAssistiveTouchHardwareEnabled();
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  if (v0)
  {
    if (v2)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __55__ACCAssistiveTouchFeaturePlugin__startAssistiveTouch___block_invoke_cold_2();
    }
  }

  else
  {
    if (v2)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __55__ACCAssistiveTouchFeaturePlugin__startAssistiveTouch___block_invoke_cold_4();
    }

    _AXSAssistiveTouchSetHardwareEnabled();
  }
}

void __54__ACCAssistiveTouchFeaturePlugin__stopAssistiveTouch___block_invoke()
{
  v0 = _AXSAssistiveTouchHardwareEnabled();
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  if (v0)
  {
    if (v2)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __54__ACCAssistiveTouchFeaturePlugin__stopAssistiveTouch___block_invoke_cold_2();
    }

    _AXSAssistiveTouchSetHardwareEnabled();
  }

  else
  {
    if (v2)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCAssistiveTouchFeaturePlugin startPlugin];
      }

      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __54__ACCAssistiveTouchFeaturePlugin__stopAssistiveTouch___block_invoke_cold_4();
    }
  }
}

void __57__ACCAssistiveTouchFeaturePlugin__assistiveTouchToggled___block_invoke_cold_2(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_2335A9000, a2, OS_LOG_TYPE_DEBUG, "assistiveTouch notifyEnabledState: enabled=%d", v2, 8u);
}

@end