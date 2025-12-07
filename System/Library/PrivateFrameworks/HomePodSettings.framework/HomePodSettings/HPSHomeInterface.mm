@interface HPSHomeInterface
+ (id)connectionError;
- (HPSHomeInterface)initWithDelegate:(id)delegate;
- (HPSettingsConnectionInterfaceDelegate)delegate;
- (void)_accessoryDidUpdateAttribute:(id)attribute withContext:(id)context;
- (void)dealloc;
- (void)getAirPlaySettings:(id)settings;
- (void)getCurrentHomeAttribute:(id)attribute completion:(id)completion;
- (void)getHomeAccessoryAttribute:(id)attribute completion:(id)completion;
- (void)getHomeKitCachedSettings:(id)settings;
- (void)handleConnectionInterrupted;
- (void)handleConnectionInvalidated;
- (void)isAutomaticSoftwareUpdateEnabled:(id)enabled;
- (void)isHomeKitSyncComplete:(id)complete;
- (void)startConnection;
@end

@implementation HPSHomeInterface

- (HPSHomeInterface)initWithDelegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  obj = delegate;
  v32.receiver = self;
  v32.super_class = HPSHomeInterface;
  v4 = [(HPSHomeInterface *)&v32 init];
  v5 = v4;
  if (v4)
  {
    v6 = _HPSLoggingFacility(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[HPSHomeInterface initWithDelegate:]";
      _os_log_impl(&dword_2542B7000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v5->_delegate, obj);
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.homepodsettings.server" options:4096];
    hpsConnection = v5->_hpsConnection;
    v5->_hpsConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286666248];
    [(NSXPCConnection *)v5->_hpsConnection setRemoteObjectInterface:v9];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286658B40];
    [(NSXPCConnection *)v5->_hpsConnection setExportedInterface:v10];

    v26 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v26 setWithObjects:{v25, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    remoteObjectInterface = [(NSXPCConnection *)v5->_hpsConnection remoteObjectInterface];
    [remoteObjectInterface setClasses:v19 forSelector:sel_getHomeKitCachedSettings_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, v5);
    v21 = v5->_hpsConnection;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __37__HPSHomeInterface_initWithDelegate___block_invoke;
    v30[3] = &unk_279774158;
    objc_copyWeak(&v31, buf);
    [(NSXPCConnection *)v21 setInterruptionHandler:v30];
    v22 = v5->_hpsConnection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __37__HPSHomeInterface_initWithDelegate___block_invoke_356;
    v28[3] = &unk_279774158;
    objc_copyWeak(&v29, buf);
    [(NSXPCConnection *)v22 setInvalidationHandler:v28];
    v5->_connectionValid = v5->_hpsConnection != 0;
    v23 = [[HPSHomeInterfaceMediator alloc] initWithInterface:v5];
    [(NSXPCConnection *)v5->_hpsConnection setExportedObject:v23];
    [(NSXPCConnection *)v5->_hpsConnection resume];
    [(HPSHomeInterface *)v5 startConnection];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  return v5;
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke(uint64_t a1)
{
  v2 = _HPSLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __37__HPSHomeInterface_initWithDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInterrupted];
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke_356(uint64_t a1)
{
  v2 = _HPSLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __37__HPSHomeInterface_initWithDelegate___block_invoke_356_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInvalidated];
}

- (void)startConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _HPSLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HPSHomeInterface startConnection]";
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s Invoked on HPSHomeInterface XPCClient!", &v5, 0xCu);
  }

  v4 = [(NSXPCConnection *)self->_hpsConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  [v4 startConnection];
}

void __35__HPSHomeInterface_startConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _HPSLoggingFacility(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __35__HPSHomeInterface_startConnection__block_invoke_cold_1(v3);
    }
  }
}

- (void)getHomeAccessoryAttribute:(id)attribute completion:(id)completion
{
  attributeCopy = attribute;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    hpsConnection = self->_hpsConnection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke;
    v22[3] = &unk_2797741A0;
    v10 = completionCopy;
    v23 = v10;
    v11 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke_359;
    v20[3] = &unk_2797741C8;
    v21 = v10;
    [v11 getHomeAccessoryAttribute:attributeCopy completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _HPSLoggingFacility(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v12 getHomeAccessoryAttribute:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _HPSLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getAirPlaySettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__HPSHomeInterface_getAirPlaySettings___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = settingsCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__HPSHomeInterface_getAirPlaySettings___block_invoke_361;
    v17[3] = &unk_2797741F0;
    v18 = v7;
    [v8 getAirPlaySettings:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 getAirPlaySettings:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __39__HPSHomeInterface_getAirPlaySettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _HPSLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__HPSHomeInterface_getAirPlaySettings___block_invoke_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getHomeKitCachedSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = settingsCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke_363;
    v17[3] = &unk_2797741F0;
    v18 = v7;
    [v8 getHomeKitCachedSettings:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 getHomeKitCachedSettings:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _HPSLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)isHomeKitSyncComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  if (completeCopy)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = completeCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke_364;
    v17[3] = &unk_279774218;
    v18 = v7;
    [v8 isHomeKitSyncComplete:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 isHomeKitSyncComplete:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _HPSLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)isAutomaticSoftwareUpdateEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = enabledCopy;
  if (enabledCopy)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = enabledCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke_366;
    v17[3] = &unk_279774218;
    v18 = v7;
    [v8 isAutomaticSoftwareUpdateEnabled:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 isAutomaticSoftwareUpdateEnabled:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _HPSLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getCurrentHomeAttribute:(id)attribute completion:(id)completion
{
  attributeCopy = attribute;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    hpsConnection = self->_hpsConnection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke;
    v22[3] = &unk_2797741A0;
    v10 = completionCopy;
    v23 = v10;
    v11 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke_367;
    v20[3] = &unk_2797741C8;
    v21 = v10;
    [v11 getCurrentHomeAttribute:attributeCopy completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _HPSLoggingFacility(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v12 getCurrentHomeAttribute:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _HPSLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (id)connectionError
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Connection Error";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.homepodsettings" code:0 userInfo:v3];

  return v4;
}

- (void)handleConnectionInvalidated
{
  delegate = [(HPSHomeInterface *)self delegate];

  if (delegate)
  {
    self->_connectionValid = 0;
    delegate2 = [(HPSHomeInterface *)self delegate];
    [delegate2 connectionInvalidated];
  }

  else
  {
    v5 = _HPSLoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v5 handleConnectionInvalidated];
    }
  }
}

- (void)handleConnectionInterrupted
{
  delegate = [(HPSHomeInterface *)self delegate];

  if (delegate)
  {
    delegate2 = [(HPSHomeInterface *)self delegate];
    [delegate2 connectionInterrupted];
  }

  else
  {
    v5 = _HPSLoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v5 handleConnectionInvalidated];
    }
  }
}

- (void)_accessoryDidUpdateAttribute:(id)attribute withContext:(id)context
{
  v67[4] = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  contextCopy = context;
  if ([attributeCopy isEqualToString:@"com.apple.homepodsettings.HPHomeKitSetupComplete"])
  {
    v53 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:contextCopy error:&v53];
    v8 = v53;
    defaultCenter2 = v8;
    if (v8)
    {
      defaultCenter = _HPSLoggingFacility(v8);
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
      {
        [(HPSHomeInterface *)defaultCenter2 _accessoryDidUpdateAttribute:defaultCenter withContext:v11, v12, v13, v14, v15, v16];
      }
    }

    else
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v66[0] = @"hasValidHome";
      v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[__CFString hasValidHomeLoaded](v7, "hasValidHomeLoaded")}];
      v67[0] = v33;
      v66[1] = @"OTAEnabled";
      v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[__CFString isAutoSUEnabled](v7, "isAutoSUEnabled")}];
      v67[1] = v34;
      v66[2] = @"mediaPeerToPeerEnabled";
      v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[__CFString isMediaPeerToPeerEnabled](v7, "isMediaPeerToPeerEnabled")}];
      v67[2] = v35;
      v66[3] = @"minimumMediaUserPrivilege";
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString minimumMediaUserPrivilege](v7, "minimumMediaUserPrivilege")}];
      v67[3] = v36;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:4];
      [defaultCenter postNotificationName:@"com.apple.homepodsettings.HPHomeKitSetupComplete" object:0 userInfo:v37];
    }

    goto LABEL_50;
  }

  if (![attributeCopy isEqualToString:@"com.apple.homepodsettings.deviceReset"])
  {
    if ([attributeCopy isEqualToString:@"com.apple.homepodsettings.airplayP2PAccess"])
    {
      objc_opt_class();
      v24 = contextCopy;
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      v27 = MEMORY[0x277CBEC28];
      if (v26)
      {
        v27 = v26;
      }

      v28 = v27;

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = @"com.apple.homepodsettings.airplayP2PAccess";
      v62 = @"mediaPeerToPeerEnabled";
      v63 = v28;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v63;
      v32 = &v62;
    }

    else if ([attributeCopy isEqualToString:@"com.apple.homepodsettings.accessoryMoved"])
    {
      objc_opt_class();
      v38 = contextCopy;
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;

      v41 = &stru_28664DBD0;
      if (v40)
      {
        v41 = v40;
      }

      v28 = v41;

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = @"com.apple.homepodsettings.accessoryMoved";
      v60 = @"roomName";
      v61 = v28;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v61;
      v32 = &v60;
    }

    else if ([attributeCopy isEqualToString:@"com.apple.homepodsettings.airplaySetPassword"])
    {
      objc_opt_class();
      v44 = contextCopy;
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      v47 = &stru_28664DBD0;
      if (v46)
      {
        v47 = v46;
      }

      v28 = v47;

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = @"com.apple.homepodsettings.airplaySetPassword";
      v58 = @"airplayPassword";
      v59 = v28;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v59;
      v32 = &v58;
    }

    else
    {
      if (![attributeCopy isEqualToString:@"com.apple.homepodsettings.airplayMinUserPrivilege"])
      {
        if (![attributeCopy isEqualToString:@"com.apple.homepodsettings.autoSUModified"])
        {
          goto LABEL_51;
        }

        bOOLValue = [contextCopy BOOLValue];
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        v54 = @"OTAEnabled";
        v7 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
        v55 = v7;
        defaultCenter3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        [defaultCenter2 postNotificationName:@"com.apple.homepodsettings.autoSUModified" object:0 userInfo:defaultCenter3];
        goto LABEL_34;
      }

      objc_opt_class();
      v48 = contextCopy;
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49;

      v51 = &unk_2866561B0;
      if (v50)
      {
        v51 = v50;
      }

      v28 = v51;

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = @"com.apple.homepodsettings.airplayMinUserPrivilege";
      v56 = @"minimumMediaUserPrivilege";
      v57 = v28;
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v57;
      v32 = &v56;
    }

    v7 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];

    [defaultCenter2 postNotificationName:v29 object:0 userInfo:v7];
    goto LABEL_50;
  }

  objc_opt_class();
  v17 = contextCopy;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  defaultCenter2 = v18;

  if (defaultCenter2)
  {
    objc_opt_class();
    v19 = [defaultCenter2 objectForKeyedSubscript:@"device_reset_method"];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = v21;
    v23 = &stru_28664DBD0;
    if (v21)
    {
      v23 = v21;
    }

    v7 = v23;
  }

  else
  {
    v7 = &stru_28664DBD0;
  }

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v64 = @"device_reset_method";
  v65 = v7;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [defaultCenter3 postNotificationName:@"com.apple.homepodsettings.deviceReset" object:0 userInfo:v43];

LABEL_34:
LABEL_50:

LABEL_51:
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  hpsConnection = [(HPSHomeInterface *)self hpsConnection];
  [hpsConnection invalidate];

  v4.receiver = self;
  v4.super_class = HPSHomeInterface;
  [(HPSHomeInterface *)&v4 dealloc];
}

- (HPSettingsConnectionInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface initWithDelegate:]_block_invoke";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was interrupted!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke_356_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface initWithDelegate:]_block_invoke";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was invalidated!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __35__HPSHomeInterface_startConnection__block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)getHomeAccessoryAttribute:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface getHomeAccessoryAttribute:completion:]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)getAirPlaySettings:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface getAirPlaySettings:]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __39__HPSHomeInterface_getAirPlaySettings___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)getHomeKitCachedSettings:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface getHomeKitCachedSettings:]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)isHomeKitSyncComplete:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface isHomeKitSyncComplete:]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)isAutomaticSoftwareUpdateEnabled:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface isAutomaticSoftwareUpdateEnabled:]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)getCurrentHomeAttribute:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSHomeInterface getCurrentHomeAttribute:completion:]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  v8 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, v8);
}

- (void)_accessoryDidUpdateAttribute:(uint64_t)a3 withContext:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_2542B7000, a2, a3, "Error while unarchiving HPSHomeProxy object %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end