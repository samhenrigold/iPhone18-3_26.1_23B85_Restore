@interface ASDTIOPAudioCMDevice
+ (id)forIOObject:(unsigned int)object andIDValue:(id)value;
- (BOOL)disableInDirection:(unsigned int)direction;
- (BOOL)enableInDirection:(unsigned int)direction;
- (BOOL)getCurrentPowerState:(unsigned int *)state;
- (BOOL)getEnableState:(BOOL *)state;
- (BOOL)getNodeProperty:(unsigned int)property withValue:(id)value;
- (BOOL)makePowerRequestForState:(unsigned int)state andDirection:(unsigned int)direction;
- (BOOL)open;
- (BOOL)setNodeProperty:(unsigned int)property withValue:(id)value;
- (id)initForIOObject:(unsigned int)object andIDValue:(id)value;
- (void)close;
- (void)open;
@end

@implementation ASDTIOPAudioCMDevice

+ (id)forIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = *&object;
  valueCopy = value;
  v7 = [[self alloc] initForIOObject:v4 andIDValue:valueCopy];

  return v7;
}

- (id)initForIOObject:(unsigned int)object andIDValue:(id)value
{
  v5 = *MEMORY[0x277D85DE8];
  [value clientType];
  operator new();
}

- (BOOL)open
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice open];
  }

  v4 = ASDT::IOUserClient::OpenConnection(ptr);
  v6 = v4;
  if ((v4 & 1) == 0)
  {
    v7 = ASDTIOPLogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice open];
    }
  }

  return v6;
}

- (void)close
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice close];
  }

  v4 = *(*ptr + 32);

  v4();
}

- (BOOL)enableInDirection:(unsigned int)direction
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice enableInDirection:];
  }

  v5 = ASDT::IOPAudio::ClientManager::UserClient::Enable(ptr, direction);
  v7 = v5;
  if (!v5)
  {
    v8 = ASDTIOPLogType(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice enableInDirection:];
    }
  }

  return v7;
}

- (BOOL)disableInDirection:(unsigned int)direction
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice disableInDirection:];
  }

  v5 = ASDT::IOPAudio::ClientManager::UserClient::Disable(ptr, direction);
  v7 = v5;
  if (!v5)
  {
    v8 = ASDTIOPLogType(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice disableInDirection:];
    }
  }

  return v7;
}

- (BOOL)getEnableState:(BOOL *)state
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice getEnableState:];
  }

  if (!state)
  {
    [ASDTIOPAudioCMDevice getEnableState:];
  }

  EnableState = ASDT::IOPAudio::ClientManager::UserClient::GetEnableState(ptr, state);
  v7 = EnableState;
  if (!EnableState)
  {
    v8 = ASDTIOPLogType(EnableState, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice getEnableState:];
    }
  }

  return v7;
}

- (BOOL)getCurrentPowerState:(unsigned int *)state
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice getCurrentPowerState:];
  }

  if (!state)
  {
    [ASDTIOPAudioCMDevice getCurrentPowerState:];
  }

  CurrentPowerState = ASDT::IOPAudio::ClientManager::UserClient::GetCurrentPowerState(ptr, state);
  v7 = CurrentPowerState;
  if (!CurrentPowerState)
  {
    v8 = ASDTIOPLogType(CurrentPowerState, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice getCurrentPowerState:];
    }
  }

  return v7;
}

- (BOOL)makePowerRequestForState:(unsigned int)state andDirection:(unsigned int)direction
{
  v32 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioCMDevice makePowerRequestForState:andDirection:];
  }

  v19[0] = state;
  v19[1] = direction;
  PowerRequest = ASDT::IOPAudio::ClientManager::UserClient::MakePowerRequest(ptr, v19);
  v10 = PowerRequest;
  if (!PowerRequest)
  {
    v11 = ASDTIOPLogType(PowerRequest, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      idValue = [(ASDTIOService *)self idValue];
      v14 = idValue;
      v15 = HIBYTE(state);
      if ((state - 0x20000000) >> 24 >= 0x5F)
      {
        v15 = 32;
      }

      v16 = BYTE2(state);
      if (BYTE2(state) - 32 >= 0x5F)
      {
        v16 = 32;
      }

      *buf = 138413570;
      v21 = idValue;
      v17 = BYTE1(state);
      if (BYTE1(state) - 32 >= 0x5F)
      {
        v17 = 32;
      }

      v22 = 1024;
      v23 = v15;
      stateCopy = state;
      v24 = 1024;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      v28 = 1024;
      if (state - 32 >= 0x5F)
      {
        stateCopy = 32;
      }

      v29 = stateCopy;
      v30 = 1024;
      directionCopy = direction;
      _os_log_error_impl(&dword_2416E9000, v11, OS_LOG_TYPE_ERROR, "%@: Failed to make power request to state '%c%c%c%c' with direction %x", buf, 0x2Au);
    }
  }

  return v10;
}

- (BOOL)setNodeProperty:(unsigned int)property withValue:(id)value
{
  valueCopy = value;
  v7 = valueCopy;
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    __assert_rtn("[ASDTIOPAudioCMDevice setNodeProperty:withValue:]", "ASDTIOPAudioCMDevice.mm", 144, "_userClient");
  }

  v9 = ASDT::IOPAudio::ClientManager::UserClient::SetNodeProperty(ptr, property, [valueCopy length], objc_msgSend(valueCopy, "bytes"));
  v11 = v9;
  if (!v9)
  {
    v12 = ASDTIOPLogType(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice setNodeProperty:withValue:];
    }
  }

  return v11;
}

- (BOOL)getNodeProperty:(unsigned int)property withValue:(id)value
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = valueCopy;
  if (!self->_userClient.__ptr_)
  {
    __assert_rtn("[ASDTIOPAudioCMDevice getNodeProperty:withValue:]", "ASDTIOPAudioCMDevice.mm", 157, "_userClient");
  }

  v14 = [valueCopy length];
  NodeProperty = ASDT::IOPAudio::ClientManager::UserClient::GetNodeProperty(self->_userClient.__ptr_, property, &v14, [v7 mutableBytes]);
  v10 = NodeProperty;
  if (NodeProperty)
  {
    v11 = v14;
    if ([v7 length] != v11)
    {
      [v7 setLength:v14];
    }
  }

  else
  {
    v12 = ASDTIOPLogType(NodeProperty, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOService *)self idValue];
      objc_claimAutoreleasedReturnValue();
      [ASDTIOPAudioCMDevice getNodeProperty:withValue:];
    }
  }

  return v10;
}

- (void)initForIOObject:(uint64_t)a1 andIDValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to create ClientManager user client", &v2, 0xCu);
}

- (void)open
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to open connection to ClientManager user client", v5);
}

- (void)enableInDirection:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to enable.", v5);
}

- (void)disableInDirection:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to disable.", v5);
}

- (void)getEnableState:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to retrieve the enable state", v5);
}

- (void)getCurrentPowerState:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0(&dword_2416E9000, v3, v4, "%@: Failed to retrieve the power state", v5);
}

- (void)setNodeProperty:withValue:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2416E9000, v6, OS_LOG_TYPE_ERROR, "%@: Set node property '%x'", v5, 0x12u);
}

- (void)getNodeProperty:withValue:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2416E9000, v6, OS_LOG_TYPE_ERROR, "%@: Get node property '%x'", v5, 0x12u);
}

@end