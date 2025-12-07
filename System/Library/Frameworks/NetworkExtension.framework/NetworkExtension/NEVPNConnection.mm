@interface NEVPNConnection
+ (id)createConnectionForEnabledEnterpriseConfigurationWithName:(id)name;
+ (id)createConnectionForURLFilter;
+ (id)createDisconnectErrorWithDomain:(id)domain code:(unsigned int)code;
- (BOOL)startVPNTunnelWithOptions:(NSDictionary *)options andReturnError:(NSError *)error;
- (NEVPNManager)manager;
- (id)initWithType:(void *)type;
- (void)createSessionWithConfigurationIdentifier:(uint64_t)identifier forceInfoFetch:(void *)fetch completionHandler:;
- (void)dealloc;
- (void)destroySession;
- (void)fetchExtendedStatusWithCompletionHandler:(id)handler;
- (void)fetchLastDisconnectErrorWithCompletionHandler:(void *)handler;
- (void)fetchServerParameters;
- (void)fetchStatisticsWithCompletionHandler:(id)handler;
- (void)notifyStatusChanged;
- (void)reload;
- (void)resetCache;
- (void)resetLastDisconnectError:(void *)error;
- (void)stopVPNTunnel;
- (void)updateSessionInfoForce:(char)force notify:(void *)notify withCompletionHandler:;
@end

@implementation NEVPNConnection

- (void)resetCache
{
  if (self && self->_session)
  {

    MEMORY[0x1EEE73C50]();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "No ne_session available, cannot reset cache", v5, 2u);
    }
  }
}

- (void)fetchServerParameters
{
  if (self && self->_session)
  {

    MEMORY[0x1EEE73C10]();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "No ne_session available, cannot fetch server parameters", v5, 2u);
    }
  }
}

- (void)fetchStatisticsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  ne_session_get_info();
}

void __56__NEVPNConnection_fetchStatisticsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4 && MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E80])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchExtendedStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__NEVPNConnection_fetchExtendedStatusWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7F0B050;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(NEVPNConnection *)self updateSessionInfoForce:0 notify:v6 withCompletionHandler:?];
}

- (void)updateSessionInfoForce:(char)force notify:(void *)notify withCompletionHandler:
{
  notifyCopy = notify;
  v6 = notifyCopy;
  if (self)
  {
    if (*(self + 56))
    {
      v9 = notifyCopy;
      ne_session_get_info2();
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "No ne_session available, cannot update session info", buf, 2u);
      }

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:0];
      (v6)[2](v6, v8, 0);
    }
  }
}

void __71__NEVPNConnection_updateSessionInfoForce_notify_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || (v5 = MEMORY[0x1BFAFC5E0](v3), v6 = MEMORY[0x1E69E9E80], v5 != MEMORY[0x1E69E9E80]))
  {
    v44 = *(a1 + 40);
    v7 = v44;
    ne_session_get_status();

    goto LABEL_36;
  }

  int64 = xpc_dictionary_get_int64(v4, "NEStatus");
  v9 = xpc_dictionary_get_value(v4, "IPv4");
  v10 = xpc_dictionary_get_value(v4, "IPv6");
  if (v9 && MEMORY[0x1BFAFC5E0](v9) == v6)
  {
    v11 = 1;
    goto LABEL_10;
  }

  if (v10)
  {
    v11 = MEMORY[0x1BFAFC5E0](v10) == v6;
LABEL_10:
    LODWORD(v43) = v11;
    goto LABEL_11;
  }

  LODWORD(v43) = 0;
LABEL_11:
  v12 = xpc_dictionary_get_value(v4, "IPSec");
  v13 = v12;
  if ((v12 && MEMORY[0x1BFAFC5E0](v12) == v6 || (xpc_dictionary_get_value(v4, "PPP"), v14 = objc_claimAutoreleasedReturnValue(), v13, (v13 = v14) != 0)) && MEMORY[0x1BFAFC5E0](v13) == v6)
  {
    v18 = xpc_dictionary_get_int64(v4, "Status") + 1;
    if (v18 <= 4)
    {
      int64 = qword_1BAA4FAB8[v18];
    }

    v17 = xpc_dictionary_get_int64(v13, "ConnectTime");
  }

  else
  {
    v15 = xpc_dictionary_get_value(v4, "VPN");
    v16 = v15;
    if (v15 && MEMORY[0x1BFAFC5E0](v15) == v6)
    {
      v17 = xpc_dictionary_get_int64(v16, "ConnectTime");
    }

    else
    {
      v17 = 0;
    }
  }

  length = 0;
  data = xpc_dictionary_get_data(v4, "LastDisconnectError", &length);
  if (data)
  {
    v20 = data;
    v21 = objc_alloc(MEMORY[0x1E695DEF0]);
    v22 = [v21 initWithBytesNoCopy:v20 length:length freeWhenDone:0];
    v46 = 0;
    v23 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:&v46];
    if (v46)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Failed to decode the last disconnect error", buf, 2u);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = v25[7];
  }

  else
  {
    v26 = 0;
  }

  if (v26 != *(a1 + 48))
  {
    goto LABEL_33;
  }

  [(NEVPNConnection *)v25 resetLastDisconnectError:v23];
  v28 = [*(a1 + 32) status];
  v29 = *(a1 + 32);
  if (v28 == int64)
  {
    if (v43 == [v29 installed])
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  v29[2] = int64;
  v30 = [*(a1 + 32) connectedDate];
  if (v30)
  {
    v31 = *(*(a1 + 32) + 16);

    if (v31 == 1)
    {
      v32 = *(a1 + 32);
      v33 = *(v32 + 24);
      *(v32 + 24) = 0;
LABEL_47:

      v34 = *(a1 + 32);
      goto LABEL_48;
    }
  }

  v34 = *(a1 + 32);
  if (!v34[3] && v34[2] == 3 && v17 >= 1)
  {
    v35 = [MEMORY[0x1E696AE30] processInfo];
    [v35 systemUptime];
    v37 = v36;

    v33 = [MEMORY[0x1E695DF00] date];
    v38 = [v33 dateByAddingTimeInterval:v17 - v37];
    v39 = *(a1 + 32);
    v40 = *(v39 + 24);
    *(v39 + 24) = v38;

    goto LABEL_47;
  }

LABEL_48:
  v41 = [v34 installed];
  if (v43 == v41)
  {
    goto LABEL_51;
  }

LABEL_49:
  [*(a1 + 32) setInstalled:{v43, v43}];
  v42 = [*(a1 + 32) installNotify];
  if (v28 != int64 || v42)
  {
LABEL_51:
    if (*(a1 + 56) == 1)
    {
      [(NEVPNConnection *)*(a1 + 32) notifyStatusChanged];
    }
  }

LABEL_33:
  if (*(a1 + 40))
  {
    v27 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

LABEL_36:
}

- (void)resetLastDisconnectError:(void *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (error)
  {
    errorCopy = error;
    objc_sync_enter(errorCopy);
    v7 = errorCopy + 9;
    v6 = errorCopy[9];
    if (v6 == v4 || ([v6 isEqual:v4] & 1) != 0)
    {
      objc_sync_exit(errorCopy);

      goto LABEL_29;
    }

    v8 = errorCopy[5];
    manager = [errorCopy manager];

    if (manager)
    {
      manager2 = [errorCopy manager];
      configuration = [manager2 configuration];
      name = [configuration name];

      v8 = name;
    }

    if (v8)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v7;
        if (*v7)
        {
          localizedDescription = [*v7 localizedDescription];
          if (v4)
          {
LABEL_11:
            localizedDescription2 = [v4 localizedDescription];
            goto LABEL_18;
          }
        }

        else
        {
          localizedDescription = @"none";
          if (v4)
          {
            goto LABEL_11;
          }
        }

        localizedDescription2 = @"none";
LABEL_18:
        v19 = 138412802;
        v20 = v8;
        v21 = 2112;
        v22 = localizedDescription;
        v23 = 2112;
        v24 = localizedDescription2;
        _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEFAULT, "Last disconnect error for %@ changed from %@ to %@", &v19, 0x20u);
        if (v4)
        {
        }

        if (!v14)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_28:

      [errorCopy willChangeValueForKey:@"lastDisconnectError"];
      objc_storeStrong(errorCopy + 9, a2);

      objc_sync_exit(errorCopy);
      [errorCopy didChangeValueForKey:@"lastDisconnectError"];
      goto LABEL_29;
    }

    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v17 = *v7;
    if (*v7)
    {
      localizedDescription = [*v7 localizedDescription];
      if (v4)
      {
LABEL_15:
        localizedDescription3 = [v4 localizedDescription];
        goto LABEL_24;
      }
    }

    else
    {
      localizedDescription = @"none";
      if (v4)
      {
        goto LABEL_15;
      }
    }

    localizedDescription3 = @"none";
LABEL_24:
    v19 = 138412546;
    v20 = localizedDescription;
    v21 = 2112;
    v22 = localizedDescription3;
    _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEFAULT, "Last disconnect error changed from %@ to %@", &v19, 0x16u);
    if (v4)
    {
    }

    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_29:
}

- (void)notifyStatusChanged
{
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.networkextension.statuschanged" object:self];
  }
}

uint64_t __71__NEVPNConnection_updateSessionInfoForce_notify_withCompletionHandler___block_invoke_26(uint64_t *a1, int a2)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = v4[7];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == a1[6] && [v4 status] != a2)
  {
    *(a1[4] + 16) = a2;
    [(NEVPNConnection *)a1[4] notifyStatusChanged];
  }

  result = a1[5];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)fetchLastDisconnectErrorWithCompletionHandler:(void *)handler
{
  v4 = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__NEVPNConnection_fetchLastDisconnectErrorWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7F0B110;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(NEVPNConnection *)self updateSessionInfoForce:1 notify:v6 withCompletionHandler:?];
}

void __65__NEVPNConnection_fetchLastDisconnectErrorWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 lastDisconnectError];
  v4 = v3;
  if (v2)
  {
    v15 = v3;
    v5 = [v15 domain];
    isEqualToString = objc_msgSend_isEqualToString_(v5);

    if (isEqualToString)
    {
      v7 = [v15 code];
      if (v7 <= 19)
      {
        if (v7 > 6)
        {
          switch(v7)
          {
            case 7:
              v8 = 12;
              break;
            case 10:
              v8 = 4;
              break;
            case 17:
              v8 = 5;
              break;
            default:
              goto LABEL_38;
          }
        }

        else
        {
          switch(v7)
          {
            case 2:
              v8 = 1;
              break;
            case 4:
              v8 = 2;
              break;
            case 6:
              v8 = 14;
              break;
            default:
              goto LABEL_38;
          }
        }
      }

      else if (v7 <= 24)
      {
        switch(v7)
        {
          case 20:
            v8 = 6;
            break;
          case 22:
            v8 = 7;
            break;
          case 23:
            v8 = 8;
            break;
          default:
            goto LABEL_38;
        }
      }

      else if (v7 > 29)
      {
        if (v7 == 30)
        {
          v8 = 11;
        }

        else
        {
          if (v7 != 38)
          {
            goto LABEL_38;
          }

          v8 = 13;
        }
      }

      else if (v7 == 25)
      {
        v8 = 9;
      }

      else
      {
        if (v7 != 26)
        {
          goto LABEL_38;
        }

        v8 = 10;
      }

      goto LABEL_37;
    }

    v9 = [v15 domain];
    v10 = objc_msgSend_isEqualToString_(v9);

    if (v10)
    {
      v11 = [v15 code] - 2;
      if (v11 <= 0x16 && ((0x7DFFBFu >> v11) & 1) != 0)
      {
        v8 = qword_1BAA4FAE0[v11];
LABEL_37:
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = [v15 userInfo];
        v14 = [v12 initWithDomain:@"NEVPNConnectionErrorDomain" code:v8 userInfo:v13];

        v15 = v14;
      }
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_38:

  (*(*(a1 + 40) + 16))();
}

- (NEVPNManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_weakmanager);

  return WeakRetained;
}

- (void)stopVPNTunnel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (+[NEProvider isRunningInProvider])
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "VPN tunnels cannot be stopped from Network Extension providers", v4, 2u);
    }
  }

  else if (selfCopy && selfCopy->_session)
  {
    ne_session_stop();
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)startVPNTunnelWithOptions:(NSDictionary *)options andReturnError:(NSError *)error
{
  v6 = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (+[NEProvider isRunningInProvider])
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "VPN tunnels cannot be started from Network Extension providers", buf, 2u);
    }

    if (error)
    {
      v9 = 3;
LABEL_17:
      [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:v9 userInfo:0];
      v15 = 0;
      *error = v16 = 0;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (error)
  {
    *error = 0;
  }

  status = [(NEVPNConnection *)selfCopy status];
  if (!selfCopy || !status || !selfCopy->_session)
  {
    if (error)
    {
      v9 = 1;
      goto LABEL_17;
    }

LABEL_27:
    v15 = 0;
    v16 = 0;
    goto LABEL_28;
  }

  if ([(NEVPNConnection *)selfCopy status]== NEVPNStatusDisconnected)
  {
    manager = [(NEVPNConnection *)selfCopy manager];
    if (manager)
    {
      manager2 = [(NEVPNConnection *)selfCopy manager];
      configuration = [manager2 configuration];
      v14 = [configuration VPN];
      if ([v14 isEnabled])
      {
      }

      else
      {
        manager3 = [(NEVPNConnection *)selfCopy manager];
        configuration2 = [manager3 configuration];
        appVPN = [configuration2 appVPN];
        isEnabled = [appVPN isEnabled];

        if ((isEnabled & 1) == 0)
        {
          if (error)
          {
            v9 = 2;
            goto LABEL_17;
          }

          goto LABEL_27;
        }
      }
    }
  }

  if (v6 || (-[NEVPNConnection manager](selfCopy, "manager"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && (-[NEVPNConnection manager](selfCopy, "manager"), v20 = objc_claimAutoreleasedReturnValue(), v6 = [v20 copyCurrentUserStartOptions], v20, v6))
  {
    v15 = _CFXPCCreateXPCObjectFromCFObject();
  }

  else
  {
    v15 = 0;
  }

  ne_session_start_with_options();
  v16 = 1;
LABEL_28:

  objc_sync_exit(selfCopy);
  return v16;
}

- (void)dealloc
{
  if (self && self->_session)
  {
    ne_session_cancel();
    self->_session = 0;
  }

  v3.receiver = self;
  v3.super_class = NEVPNConnection;
  [(NEVPNConnection *)&v3 dealloc];
}

+ (id)createConnectionForURLFilter
{
  if (createConnectionForURLFilter_onceToken != -1)
  {
    dispatch_once(&createConnectionForURLFilter_onceToken, &__block_literal_global_131);
  }

  [(NEVPNConnection *)createConnectionForURLFilter_g_headless reload];
  v2 = createConnectionForURLFilter_g_headless;

  return v2;
}

- (void)reload
{
  if (result)
  {
    v1 = result;
    result[2] = 0;
    if (result[7])
    {
      ne_session_cancel();
      v1[7] = 0;
    }

    v2 = v1[4];
    v3 = v1[6];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __25__NEVPNConnection_reload__block_invoke;
    v4[3] = &unk_1E7F0B0A0;
    v4[4] = v1;
    return [v2 loadConfigurationsWithCompletionQueue:v3 handler:v4];
  }

  return result;
}

void __25__NEVPNConnection_reload__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "reloadWithCompletionHandler: failed to load configurations: %@", buf, 0xCu);
    }

    [(NEVPNConnection *)*(a1 + 32) resetLastDisconnectError:v6];
    v8 = *(a1 + 32);
    if (v8)
    {
      *(v8 + 10) = 1;
    }
  }

  else
  {
    if (v5 && (v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v17[2] = __25__NEVPNConnection_reload__block_invoke_118, v17[3] = &unk_1E7F0B078, v17[4] = *(a1 + 32), v9 = [v5 indexOfObjectPassingTest:v17], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [v5 objectAtIndexedSubscript:v9];
      v12 = [v10 name];
      v13 = *(a1 + 32);
      if (v13)
      {
        objc_storeStrong((v13 + 40), v12);
      }

      v14 = *(a1 + 32);
      v15 = [v10 identifier];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __25__NEVPNConnection_reload__block_invoke_2;
      v16[3] = &unk_1E7F0B4A8;
      v16[4] = *(a1 + 32);
      [(NEVPNConnection *)v14 createSessionWithConfigurationIdentifier:v15 forceInfoFetch:1 completionHandler:v16];
    }

    else
    {
      v10 = [NEVPNConnection createDisconnectErrorWithDomain:@"NEVPNConnectionErrorDomainPlugin" code:38];
      [(NEVPNConnection *)*(a1 + 32) resetLastDisconnectError:v10];
      v11 = *(a1 + 32);
      if (v11)
      {
        *(v11 + 10) = 1;
      }
    }
  }
}

uint64_t __25__NEVPNConnection_reload__block_invoke_118(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 VPN];
  v8 = [v7 isEnabled];

  v9 = *(a1 + 32);
  if (v9 && *(v9 + 12) == 10)
  {
    v10 = [v6 urlFilter];
    v11 = [v10 isEnabled];

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((([v6 grade] == 1) & v8) != 1)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 40);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 32);
      if (v15)
      {
        v15 = v15[5];
      }

      v16 = v15;
      v17 = [v6 name];
      isEqualToString = objc_msgSend_isEqualToString_(v16);

      if (!isEqualToString)
      {
        goto LABEL_12;
      }
    }
  }

  v19 = 1;
  *a4 = 1;
LABEL_13:

  return v19;
}

void __25__NEVPNConnection_reload__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 10) = 1;
  }

  if (v3)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to create a connection for the current enterprise configuration: %@", &v7, 0xCu);
    }

    [(NEVPNConnection *)*(a1 + 32) resetLastDisconnectError:v4];
  }
}

- (void)createSessionWithConfigurationIdentifier:(uint64_t)identifier forceInfoFetch:(void *)fetch completionHandler:
{
  v36[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  fetchCopy = fetch;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v36[0] = 0;
    v36[1] = 0;
    if (v7)
    {
      if (selfCopy[7])
      {
        ne_session_cancel();
        selfCopy[7] = 0;
      }

      [v7 getUUIDBytes:v36];
      v10 = ne_session_create();
      if (v10)
      {
        v11 = MEMORY[0x1E69E96A0];
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __93__NEVPNConnection_createSessionWithConfigurationIdentifier_forceInfoFetch_completionHandler___block_invoke_2;
        v23 = &unk_1E7F0B028;
        v24 = selfCopy;
        v25 = v10;
        ne_session_set_event_handler();

        selfCopy[7] = v10;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __93__NEVPNConnection_createSessionWithConfigurationIdentifier_forceInfoFetch_completionHandler___block_invoke_3;
        v18[3] = &unk_1E7F0B050;
        v19 = fetchCopy;
        [(NEVPNConnection *)selfCopy updateSessionInfoForce:identifier notify:1 withCompletionHandler:v18];
      }

      else
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "[NEVPNConnection createSessionWithConfigurationIdentifier:forceInfoFetch:completionHandler:]";
          v34 = 2112;
          v35 = v7;
          _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%s: Cannot create ne_session for configID: %@", buf, 0x16u);
        }

        if (fetchCopy)
        {
          v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:0];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __93__NEVPNConnection_createSessionWithConfigurationIdentifier_forceInfoFetch_completionHandler___block_invoke_30;
          v26[3] = &unk_1E7F0B588;
          v27 = v16;
          v28 = fetchCopy;
          v17 = v16;
          dispatch_async(MEMORY[0x1E69E96A0], v26);
        }
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v33 = "[NEVPNConnection createSessionWithConfigurationIdentifier:forceInfoFetch:completionHandler:]";
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%s: Cannot create ne_session for nil configID", buf, 0xCu);
      }

      if (fetchCopy)
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:0];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __93__NEVPNConnection_createSessionWithConfigurationIdentifier_forceInfoFetch_completionHandler___block_invoke;
        block[3] = &unk_1E7F0B588;
        v30 = v13;
        v31 = fetchCopy;
        v14 = v13;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

void __93__NEVPNConnection_createSessionWithConfigurationIdentifier_forceInfoFetch_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    [(NEVPNConnection *)*(a1 + 32) notifyStatusChanged];

    ne_session_release();
  }

  else if (a2 == 1)
  {
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
    }

    else
    {
      v4 = 0;
    }

    if (v4 == *(a1 + 40))
    {
      [(NEVPNConnection *)v3 updateSessionInfoForce:1 notify:0 withCompletionHandler:?];
    }

    objc_sync_exit(obj);
  }
}

void *__47__NEVPNConnection_createConnectionForURLFilter__block_invoke()
{
  v0 = [NEVPNConnection alloc];
  if (v0)
  {
    v1 = [(NEVPNConnection *)v0 initWithType:?];
    if (v1)
    {
      v2 = [[NEConfigurationManager alloc] initForAllUsers];
      v3 = v1[4];
      v1[4] = v2;

      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("NEVPNConnection queue", v4);
      v6 = v1[6];
      v1[6] = v5;
    }
  }

  else
  {
    v1 = 0;
  }

  v7 = createConnectionForURLFilter_g_headless;
  createConnectionForURLFilter_g_headless = v1;

  if (createConnectionForURLFilter_g_headless)
  {
    v8 = *(createConnectionForURLFilter_g_headless + 32);
    v9 = *(createConnectionForURLFilter_g_headless + 48);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8;
  [v10 setChangedQueue:v9 andHandler:&__block_literal_global_133];

  v11 = createConnectionForURLFilter_g_headless;

  return [(NEVPNConnection *)v11 reload];
}

- (id)initWithType:(void *)type
{
  if (!type)
  {
    return 0;
  }

  v7.receiver = type;
  v7.super_class = NEVPNConnection;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[2] = 0;
    v3[7] = 0;
    *(v3 + 3) = a2;
    objc_storeWeak(v3 + 8, 0);
    v5 = v4[9];
    v4[9] = 0;
  }

  return v4;
}

+ (id)createConnectionForEnabledEnterpriseConfigurationWithName:(id)name
{
  nameCopy = name;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__NEVPNConnection_createConnectionForEnabledEnterpriseConfigurationWithName___block_invoke;
  block[3] = &unk_1E7F0B0E8;
  v9 = nameCopy;
  v4 = createConnectionForEnabledEnterpriseConfigurationWithName__onceToken;
  v5 = nameCopy;
  if (v4 != -1)
  {
    dispatch_once(&createConnectionForEnabledEnterpriseConfigurationWithName__onceToken, block);
  }

  v6 = createConnectionForEnabledEnterpriseConfigurationWithName__g_headless;

  return v6;
}

void *__77__NEVPNConnection_createConnectionForEnabledEnterpriseConfigurationWithName___block_invoke(uint64_t a1)
{
  v2 = [NEVPNConnection alloc];
  v3 = *(a1 + 32);
  v4 = v3;
  if (v2)
  {
    v2 = [(NEVPNConnection *)v2 initWithType:?];
    if (v2)
    {
      v5 = [[NEConfigurationManager alloc] initForAllUsers];
      configManager = v2->_configManager;
      v2->_configManager = v5;

      objc_storeStrong(&v2->_configurationName, v3);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("NEVPNConnection queue", v7);
      queue = v2->_queue;
      v2->_queue = v8;
    }
  }

  v10 = createConnectionForEnabledEnterpriseConfigurationWithName__g_headless;
  createConnectionForEnabledEnterpriseConfigurationWithName__g_headless = v2;

  if (createConnectionForEnabledEnterpriseConfigurationWithName__g_headless)
  {
    v11 = *(createConnectionForEnabledEnterpriseConfigurationWithName__g_headless + 32);
    v12 = *(createConnectionForEnabledEnterpriseConfigurationWithName__g_headless + 48);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v11;
  [v13 setChangedQueue:v12 andHandler:&__block_literal_global_26993];

  v14 = createConnectionForEnabledEnterpriseConfigurationWithName__g_headless;

  return [(NEVPNConnection *)v14 reload];
}

+ (id)createDisconnectErrorWithDomain:(id)domain code:(unsigned int)code
{
  v13[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  if (objc_msgSend_isEqualToString_(domainCopy))
  {
    v6 = 0;
    v7 = 0;
    switch(code)
    {
      case 2u:
        v8 = @"VPN_DISCONNECT_ERROR_OVERSLEPT";
        goto LABEL_32;
      case 3u:
      case 8u:
      case 9u:
      case 0xBu:
      case 0xDu:
      case 0x13u:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
        break;
      case 4u:
        goto LABEL_6;
      case 5u:
        goto LABEL_14;
      case 6u:
        v8 = @"VPN_DISCONNECT_ERROR_PLUGIN_NOT_AVAILABLE";
        goto LABEL_32;
      case 7u:
        goto LABEL_21;
      case 0xAu:
        goto LABEL_17;
      case 0xCu:
        v8 = @"VPN_DISCONNECT_ERROR_CONNECT_TIMEOUT";
        goto LABEL_32;
      case 0xEu:
        v8 = @"VPN_DISCONNECT_ERROR_CONFIGURATION_APP_REQUIRED";
        goto LABEL_32;
      case 0xFu:
        goto LABEL_19;
      case 0x10u:
        v8 = @"VPN_DISCONNECT_ERROR_SERVER_ADDRESS_INVALID";
        goto LABEL_32;
      case 0x11u:
        goto LABEL_12;
      case 0x12u:
        goto LABEL_15;
      case 0x14u:
        v8 = @"VPN_DISCONNECT_ERROR_SERVER_NOT_RESPONDING";
        goto LABEL_32;
      case 0x15u:
        goto LABEL_11;
      case 0x16u:
        goto LABEL_20;
      case 0x17u:
        goto LABEL_7;
      case 0x18u:
        goto LABEL_22;
      case 0x19u:
        goto LABEL_18;
      case 0x1Au:
        goto LABEL_10;
      case 0x1Bu:
        goto LABEL_16;
      case 0x1Cu:
        goto LABEL_8;
      case 0x1Du:
        goto LABEL_9;
      case 0x1Eu:
        goto LABEL_13;
      case 0x26u:
        v8 = @"VPN_DISCONNECT_ERROR_CONFIGURATION_NOT_FOUND";
        goto LABEL_32;
      default:
        goto LABEL_29;
    }
  }

  else
  {
    v6 = 0;
    if (objc_msgSend_isEqualToString_(domainCopy))
    {
      v7 = 0;
      switch(code)
      {
        case 2u:
LABEL_19:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_ADDRESS_MISSING";
          goto LABEL_32;
        case 3u:
          v8 = @"VPN_DISCONNECT_ERROR_SHARED_SECRET_MISSING";
          goto LABEL_32;
        case 4u:
LABEL_22:
          v8 = @"VPN_DISCONNECT_ERROR_CLIENT_CERTIFICATE_MISSING";
          goto LABEL_32;
        case 5u:
LABEL_12:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_ADDRESS_RESOLUTION_FAILED";
          goto LABEL_32;
        case 6u:
        case 0x12u:
LABEL_6:
          v8 = @"VPN_DISCONNECT_ERROR_NO_NETWORK_AVAILABLE";
          goto LABEL_32;
        case 7u:
LABEL_17:
          v8 = @"VPN_DISCONNECT_ERROR_CONFIGURATION_FAILED";
          goto LABEL_32;
        case 8u:
LABEL_21:
          v8 = @"VPN_DISCONNECT_ERROR_INTERNAL_ERROR";
          goto LABEL_32;
        case 9u:
          v8 = @"VPN_DISCONNECT_ERROR_CONNECTION_ERROR";
          goto LABEL_32;
        case 0xAu:
LABEL_15:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_NEGOTIATION_FAILED";
          goto LABEL_32;
        case 0xBu:
        case 0xEu:
LABEL_7:
          v8 = @"VPN_DISCONNECT_ERROR_AUTHENTICATION_FAILED";
          goto LABEL_32;
        case 0xCu:
        case 0x18u:
LABEL_8:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_CERTIFICATE_INVALID";
          goto LABEL_32;
        case 0xDu:
LABEL_18:
          v8 = @"VPN_DISCONNECT_ERROR_CLIENT_CERTIFICATE_INVALID";
          goto LABEL_32;
        case 0xFu:
LABEL_14:
          v8 = @"VPN_DISCONNECT_ERROR_NETWORK_CHANGE";
          goto LABEL_32;
        case 0x10u:
LABEL_11:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_DISCONNECTED";
          goto LABEL_32;
        case 0x11u:
LABEL_20:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_DEAD";
          goto LABEL_32;
        case 0x13u:
          break;
        case 0x14u:
LABEL_10:
          v8 = @"VPN_DISCONNECT_ERROR_CLIENT_CERTIFICATE_NOT_YET_VALID";
          goto LABEL_32;
        case 0x15u:
LABEL_16:
          v8 = @"VPN_DISCONNECT_ERROR_CLIENT_CERTIFICATE_EXPIRED";
          goto LABEL_32;
        case 0x16u:
LABEL_9:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_CERTIFICATE_NOT_YET_VALID";
          goto LABEL_32;
        case 0x17u:
LABEL_13:
          v8 = @"VPN_DISCONNECT_ERROR_SERVER_CERTIFICATE_EXPIRED";
LABEL_32:
          v6 = NEResourcesCopyLocalizedNSString(v8, v8);
          if (!v6)
          {
            goto LABEL_34;
          }

          v9 = objc_alloc(MEMORY[0x1E696ABC0]);
          v12 = *MEMORY[0x1E696A578];
          v13[0] = v6;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
          v7 = [v9 initWithDomain:domainCopy code:code userInfo:v10];

          break;
        default:
LABEL_29:
          v7 = 0;
          break;
      }
    }

    else
    {
LABEL_34:
      v7 = 0;
    }
  }

  return v7;
}

- (void)destroySession
{
  if (self)
  {
    obj = self;
    objc_sync_enter(obj);
    v1 = obj;
    if (obj[7])
    {
      ne_session_cancel();
      v1 = obj;
      obj[7] = 0;
    }

    v2 = v1;
    if (v1[2])
    {
      v1[2] = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.networkextension.statuschanged" object:obj];

      v2 = obj;
    }

    objc_sync_exit(v2);
  }
}

@end