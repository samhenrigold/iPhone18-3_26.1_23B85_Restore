@interface MSNCarPlay
- (BOOL)carplayConnected;
- (MSNCarPlay)init;
@end

@implementation MSNCarPlay

- (MSNCarPlay)init
{
  v18[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = MSNCarPlay;
  v2 = [(MSNCarPlay *)&v15 init];
  if (!v2)
  {
LABEL_13:
    v9 = v2;
    goto LABEL_14;
  }

  v3 = [objc_alloc(MEMORY[0x277D26E68]) initWithPID:getpid()];
  systemController = v2->_systemController;
  v2->_systemController = v3;

  if (!v2->_systemController)
  {
    v6 = MSNLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MSNCarPlay init];
    }

    goto LABEL_9;
  }

  v18[0] = *MEMORY[0x277D273D0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  MEMORY[0x259C88ED0]([(MXSystemController *)v2->_systemController setAttributeForKey:*MEMORY[0x277D27420] andValue:v6]);
  v7 = CMNotificationCenterAddListener();
  if (!v7)
  {
    v14 = 0;
    [(MXSystemController *)v2->_systemController copyAttributeForKey:*MEMORY[0x277D27410] withValueOut:&v14];
    bOOLValue = [v14 BOOLValue];
    v2->_carplayConnected = bOOLValue;
    v11 = MSNLog(bOOLValue);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      carplayConnected = v2->_carplayConnected;
      *buf = 67109120;
      v17 = carplayConnected;
      _os_log_impl(&dword_258731000, v11, OS_LOG_TYPE_INFO, "Registered for CarPlay status changes with initial state: %{BOOL}d.", buf, 8u);
    }

    goto LABEL_13;
  }

  v8 = MSNLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MSNCarPlay init];
  }

LABEL_9:
  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)carplayConnected
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSNLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    carplayConnected = self->_carplayConnected;
    v6[0] = 67109120;
    v6[1] = carplayConnected;
    _os_log_impl(&dword_258731000, v3, OS_LOG_TYPE_INFO, "CarPlay connected: %{BOOL}d", v6, 8u);
  }

  return self->_carplayConnected;
}

@end