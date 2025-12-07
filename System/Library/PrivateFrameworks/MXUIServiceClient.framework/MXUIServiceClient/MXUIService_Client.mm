@interface MXUIService_Client
+ (id)sharedInstance;
+ (id)userActionToString:(int)string;
- (BOOL)dismissBannerWithUUID:(id)d withResponse:(id)response;
- (BOOL)recreateConnectionIfNecessary;
- (MXUIService_Client)init;
- (id)promptForConnectDialog:(id)dialog withIconType:(int)type callbackHandler:(id)handler;
- (id)promptForDisconnectedBanner:(id)banner withIconType:(int)type callbackHandler:(id)handler;
- (id)promptForUndoBanner:(id)banner withIconType:(int)type callbackHandler:(id)handler;
- (void)showInputDeviceReplacementPillForConnectedDevice:(id)device replacedDevice:(id)replacedDevice;
@end

@implementation MXUIService_Client

- (MXUIService_Client)init
{
  v3.receiver = self;
  v3.super_class = MXUIService_Client;
  result = [(MXUIService_Client *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_shouldCreateConnection = 1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MXUIService_Client sharedInstance];
  }

  return sharedInstance_sSharedInstance;
}

+ (id)userActionToString:(int)string
{
  if (string > 1)
  {
    if (string != 2)
    {
      if (string == 0x7FFFFFFF)
      {
        return @"Invalid";
      }

      return [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%d)", *&string];
    }

    return @"Timeout";
  }

  else
  {
    if (string)
    {
      if (string == 1)
      {
        return @"Dismiss";
      }

      return [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%d)", *&string];
    }

    return @"Pressed";
  }
}

- (BOOL)recreateConnectionIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_16);
  }

  if (qword_27F8F04C0 && qword_27F8F04C8)
  {
    if (!self->_shouldCreateConnection)
    {
LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      return 0;
    }

    v3 = [MEMORY[0x277CF3288] endpointForMachName:@"com.apple.MXUIService" service:@"com.apple.MXUIService" instance:0];
    if (v3)
    {
      v4 = v3;
      v5 = [MEMORY[0x277CF3280] connectionWithEndpoint:v3];
      if (v5)
      {
        v6 = v5;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_2;
        v8[3] = &unk_279851050;
        v8[4] = self;
        [v5 configureConnection:v8];
        [v6 activate];
        self->_connection = v6;
        self->_endpoint = v4;
        self->_shouldCreateConnection = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

- (id)promptForConnectDialog:(id)dialog withIconType:(int)type callbackHandler:(id)handler
{
  v6 = *&type;
  v71[1] = *MEMORY[0x277D85DE8];
  [(MXUIService_Client *)self recreateConnectionIfNecessary];
  connection = self->_connection;
  v71[0] = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v10 = -[BSServiceConnectionClient remoteTargetWithLaunchingAssertionAttributes:](connection, "remoteTargetWithLaunchingAssertionAttributes:", [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1]);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  uUID = [MEMORY[0x277CCAD78] UUID];
  if (uUID)
  {
    [v13 setValue:dialog forKey:@"HeadsetString"];
    [v13 setValue:objc_msgSend(uUID forKey:{"UUIDString"), @"UUID"}];
    [v13 setValue:v15 forKey:@"ConnectionType"];
    OUTLINED_FUNCTION_0();
    v62 = 3221225472;
    v63 = __74__MXUIService_Client_promptForConnectDialog_withIconType_callbackHandler___block_invoke;
    v64 = &unk_2798510F0;
    handlerCopy = handler;
    v17 = [v11 showConnectButton:v13 completionHandler:&v61];
    if (dword_27F8F0490)
    {
      v25 = OUTLINED_FUNCTION_3(v17, v18, v19, v20, v21, v22, v23, v24, v49, v52, v55, SBYTE2(v55), SBYTE3(v55), SHIDWORD(v55));
      v33 = OUTLINED_FUNCTION_5(v25, v26, v27, v28, v29, v30, v31, v32, v50, v53, v56, v58, v59, v60);
      v34 = OUTLINED_FUNCTION_6(v33);
      if (v34)
      {
        LODWORD(v66) = 136315394;
        OUTLINED_FUNCTION_1();
        v34 = OUTLINED_FUNCTION_4(v41, v42, v43, v44, &dword_257B02000, v45, v46, "-MXUIServiceClient- %s: Banner UUID: %{public}@", v51, v54, v57, v61, v62, v63, v64, handlerCopy, v66, v67, v68, v69);
        v47 = v34;
      }

      else
      {
        v47 = 0;
      }

      OUTLINED_FUNCTION_2(v34, v35, v36, v47, v37, v38, v39, v40, v51, v54, v57, v61, v62, v63, v64, handlerCopy, v66, v67, v68, v69, v70);
    }
  }

  return uUID;
}

- (id)promptForUndoBanner:(id)banner withIconType:(int)type callbackHandler:(id)handler
{
  OUTLINED_FUNCTION_7();
  v72 = *MEMORY[0x277D85DE8];
  [v9 recreateConnectionIfNecessary];
  v10 = *(v7 + 8);
  *v8 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  if (![v10 remoteTargetWithLaunchingAssertionAttributes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v71, 1)}])
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = uUID;
  if (uUID)
  {
    [v12 setValue:objc_msgSend(uUID forKey:{"UUIDString"), @"UUID"}];
    [v12 setValue:v6 forKey:@"HeadsetString"];
    [v12 setValue:v14 forKey:@"ConnectionType"];
    OUTLINED_FUNCTION_0();
    v62 = 3221225472;
    v63 = __71__MXUIService_Client_promptForUndoBanner_withIconType_callbackHandler___block_invoke;
    v64 = &unk_2798510F0;
    v17 = [OUTLINED_FUNCTION_8() showUndoButton:? completionHandler:?];
    if (dword_27F8F0490)
    {
      v25 = OUTLINED_FUNCTION_3(v17, v18, v19, v20, v21, v22, v23, v24, v49, v52, v55, SBYTE2(v55), SBYTE3(v55), SHIDWORD(v55));
      v33 = OUTLINED_FUNCTION_5(v25, v26, v27, v28, v29, v30, v31, v32, v50, v53, v56, v58, v59, v60);
      v34 = OUTLINED_FUNCTION_6(v33);
      if (v34)
      {
        LODWORD(v66) = 136315394;
        OUTLINED_FUNCTION_1();
        v34 = OUTLINED_FUNCTION_4(v41, v42, v43, v44, &dword_257B02000, v45, v46, "-MXUIServiceClient- %s: Banner UUID: %{public}@", v51, v54, v57, v61, 3221225472, __71__MXUIService_Client_promptForUndoBanner_withIconType_callbackHandler___block_invoke, &unk_2798510F0, v65, v66, v67, v68, v69);
        v47 = v34;
      }

      else
      {
        v47 = 0;
      }

      OUTLINED_FUNCTION_2(v34, v35, v36, v47, v37, v38, v39, v40, v51, v54, v57, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    }
  }

  return v16;
}

- (id)promptForDisconnectedBanner:(id)banner withIconType:(int)type callbackHandler:(id)handler
{
  OUTLINED_FUNCTION_7();
  v72 = *MEMORY[0x277D85DE8];
  [v9 recreateConnectionIfNecessary];
  v10 = *(v7 + 8);
  *v8 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  if (![v10 remoteTargetWithLaunchingAssertionAttributes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v71, 1)}])
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v16 = uUID;
  if (uUID)
  {
    [v12 setValue:objc_msgSend(uUID forKey:{"UUIDString"), @"UUID"}];
    [v12 setValue:v6 forKey:@"HeadsetString"];
    [v12 setValue:v14 forKey:@"ConnectionType"];
    OUTLINED_FUNCTION_0();
    v62 = 3221225472;
    v63 = __79__MXUIService_Client_promptForDisconnectedBanner_withIconType_callbackHandler___block_invoke;
    v64 = &unk_2798510F0;
    v17 = [OUTLINED_FUNCTION_8() showDisconnectedButton:? completionHandler:?];
    if (dword_27F8F0490)
    {
      v25 = OUTLINED_FUNCTION_3(v17, v18, v19, v20, v21, v22, v23, v24, v49, v52, v55, SBYTE2(v55), SBYTE3(v55), SHIDWORD(v55));
      v33 = OUTLINED_FUNCTION_5(v25, v26, v27, v28, v29, v30, v31, v32, v50, v53, v56, v58, v59, v60);
      v34 = OUTLINED_FUNCTION_6(v33);
      if (v34)
      {
        LODWORD(v66) = 136315394;
        OUTLINED_FUNCTION_1();
        v34 = OUTLINED_FUNCTION_4(v41, v42, v43, v44, &dword_257B02000, v45, v46, "-MXUIServiceClient- %s: Banner UUID: %{public}@", v51, v54, v57, v61, 3221225472, __79__MXUIService_Client_promptForDisconnectedBanner_withIconType_callbackHandler___block_invoke, &unk_2798510F0, v65, v66, v67, v68, v69);
        v47 = v34;
      }

      else
      {
        v47 = 0;
      }

      OUTLINED_FUNCTION_2(v34, v35, v36, v47, v37, v38, v39, v40, v51, v54, v57, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    }
  }

  return v16;
}

- (BOOL)dismissBannerWithUUID:(id)d withResponse:(id)response
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    [(MXUIService_Client *)self recreateConnectionIfNecessary];
    connection = self->_connection;
    v10[0] = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v8 = -[BSServiceConnectionClient remoteTargetWithLaunchingAssertionAttributes:](connection, "remoteTargetWithLaunchingAssertionAttributes:", [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1]);
    if (v8)
    {
      [v8 dismissBannerWithUUID:d withResponse:response];
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)showInputDeviceReplacementPillForConnectedDevice:(id)device replacedDevice:(id)replacedDevice
{
  v10[22] = *MEMORY[0x277D85DE8];
  if (device && replacedDevice && ([device isEqualToString:replacedDevice] & 1) == 0)
  {
    if (dword_27F8F0490)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXUIService_Client *)self recreateConnectionIfNecessary];
    connection = self->_connection;
    v10[0] = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v9 = -[BSServiceConnectionClient remoteTargetWithLaunchingAssertionAttributes:](connection, "remoteTargetWithLaunchingAssertionAttributes:", [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1]);
    if (v9)
    {
      [v9 showInputDeviceReplacementPillForConnectedDevice:device replacedDevice:replacedDevice];
    }
  }
}

@end