@interface NRDevicePairingManagerMux
- (NRDevicePairingManagerMux)init;
- (void)checkInWithRetryCount:(id *)count;
- (void)dealloc;
- (void)handleUnsolicitedMessage:(uint64_t)message;
- (void)invalidateManagersWithError:(uint64_t)error;
- (void)registerPairingManager:(void *)manager withCompletion:;
- (void)sendAuthMethodRequestForDevice:(uint64_t)device authMethod:(void *)method pairingManager:(void *)manager withCompletion:;
- (void)startDiscoveryForPairingManager:(void *)manager withCompletion:;
- (void)startPairingForPairingManager:(void *)manager pairingTarget:(void *)target withCompletion:;
- (void)stopDiscoveryForPairingManager:(void *)manager withCompletion:;
- (void)stopPairingForPairingManager:(void *)manager withCompletion:;
- (void)unregisterPairingManager:(void *)manager withCompletion:;
@end

@implementation NRDevicePairingManagerMux

- (NRDevicePairingManagerMux)init
{
  v26 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = NRDevicePairingManagerMux;
  v2 = [(NRDevicePairingManagerMux *)&v25 init];
  if (!v2)
  {
    v11 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v14 = nrCopyLogObj_1710();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingManagerMux init]"", 225);

LABEL_9:
    v15 = _os_log_pack_size();
    v17 = &handler[-1] - ((MEMORY[0x28223BE20](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v15, *v18, &dword_25B98C000, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDevicePairingManagerMux init]";
    v20 = nrCopyLogObj_1710();
    _NRLogAbortWithPack(v20, v17);
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  muxEntries = v2->_muxEntries;
  v2->_muxEntries = v3;

  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  objc_storeStrong(&v2->_queue, nrXPCCopyQueue_nrXPCQueue);
  v5 = v2->_queue;
  mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v5, 2uLL);
  connection = v2->_connection;
  v2->_connection = mach_service;

  objc_initWeak(&location, v2);
  v8 = v2->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__NRDevicePairingManagerMux_init__block_invoke;
  handler[3] = &unk_27996B2D8;
  objc_copyWeak(&v23, &location);
  xpc_connection_set_event_handler(v8, handler);

  v9 = v2->_connection;
  xpc_connection_activate(v9);

  [(NRDevicePairingManagerMux *)&v2->super.isa checkInWithRetryCount:?];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  return v2;
}

void __33__NRDevicePairingManagerMux_init__block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v12);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Received XPC error: %@, invalidating", ", "[NRDevicePairingManagerMux init]_block_invoke"", 243, v12);
        }

        goto LABEL_23;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Received unexpected XPC object: %@, invalidating", ", "[NRDevicePairingManagerMux init]_block_invoke"", 246, v12), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_23:
        objc_opt_self();
        v5 = objc_alloc(MEMORY[0x277CCA9B8]);
        v13 = *MEMORY[0x277CCA450];
        v14[0] = @"An XPC connection error occurred";
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        v7 = [v5 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v6];

        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v7];
        goto LABEL_24;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Received unexpected XPC object", v8, v9, v10, v11);
      goto LABEL_23;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Received XPC dict: %@", ", "[NRDevicePairingManagerMux init]_block_invoke"", 240, v12);
    }

    [(NRDevicePairingManagerMux *)WeakRetained handleUnsolicitedMessage:v12];
  }

LABEL_24:
}

- (void)checkInWithRetryCount:(id *)count
{
  location[1] = *MEMORY[0x277D85DE8];
  if (a2 >= 6)
  {
    v13 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v13;
      v17 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

      if (!v17)
      {
        goto LABEL_24;
      }
    }

    v18 = nrCopyLogObj_1710();
    _NRLogWithArgs(v18, 17, "Failed to checkin NRDeviceMonitor after retries");
LABEL_23:

    goto LABEL_24;
  }

  if (count[3])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "Type", 0x31uLL);
      objc_initWeak(location, count);
      v6 = count[3];
      v7 = count[4];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__NRDevicePairingManagerMux_checkInWithRetryCount___block_invoke;
      handler[3] = &unk_27996B300;
      objc_copyWeak(&v33, location);
      v8 = v5;
      v32 = v8;
      v34 = a2;
      xpc_connection_send_message_with_reply(v6, v8, v7, handler);

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      v9 = nrCopyLogObj_sNRLogObj_1723;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v10 = v9;
        v11 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

        if (!v11)
        {
LABEL_12:

          objc_destroyWeak(&v33);
          objc_destroyWeak(location);

          return;
        }
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      v12 = nrCopyLogObj_sNRLogObj_1723;
      _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Sent check-in message: %@", ", "[NRDevicePairingManagerMux checkInWithRetryCount:]"", 312, v8);

      goto LABEL_12;
    }

    v15 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v15;
      v22 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v23 = nrCopyLogObj_1710();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_29:
    v24 = _os_log_pack_size();
    v26 = &handler[-1] - ((MEMORY[0x28223BE20](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = __error();
    v28 = _os_log_pack_fill(v26, v24, *v27, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v28, "nr_xpc_dictionary_create");
    v29 = nrCopyLogObj_1710();
    _NRLogAbortWithPack(v29, v26);
  }

  v14 = nrCopyLogObj_1710();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_22:
    v18 = nrCopyLogObj_1710();
    _NRLogWithArgs(v18, 17, "Could not check in with server as no connection found");
    goto LABEL_23;
  }

  v19 = v14;
  v20 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

  if (v20)
  {
    goto LABEL_22;
  }

LABEL_24:
  v30 = +[NRDevicePairingManager copyXPCError];
  [(NRDevicePairingManagerMux *)count invalidateManagersWithError:v30];
}

- (void)invalidateManagersWithError:(uint64_t)error
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(error + 24);
  if (v4)
  {
    xpc_connection_cancel(v4);
    v5 = *(error + 24);
    *(error + 24) = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(error + 16);
  v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v27 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(error + 16) objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 24);
          if (v11)
          {
            (*(v11 + 16))(v11, v3);
            objc_setProperty_nonatomic_copy(v10, v12, 0, 24);
          }

          v13 = *(v10 + 32);
          if (v13)
          {
            (*(v13 + 16))(v13, v3);
            objc_setProperty_nonatomic_copy(v10, v14, 0, 32);
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v15 = *(v10 + 40);
        }

        else
        {
          v15 = 0;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
        }

        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v29;
          if (v10)
          {
            errorCopy = error;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v29 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = [*(v10 + 40) objectForKeyedSubscript:*(*(&v28 + 1) + 8 * j)];
                (v22)[2](v22, v3);
              }

              v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v18);

            error = errorCopy;
LABEL_30:
            [*(v10 + 40) removeAllObjects];
            v25 = *(v10 + 8);
            goto LABEL_31;
          }

          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v29 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v24 = [0 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * k)];
              (v24)[2](v24, v3);
            }

            v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v18);
        }

        if (v10)
        {
          goto LABEL_30;
        }

        [0 removeAllObjects];
        v25 = 0;
LABEL_31:
        [(NRDevicePairingManager *)v25 invalidateWithError:v3];
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  [*(error + 16) removeAllObjects];
}

void __51__NRDevicePairingManagerMux_checkInWithRetryCount___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](xdict);
  if (v4 == MEMORY[0x277D86468])
  {
    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Checkin received XPC dict: %@", ", "[NRDevicePairingManagerMux checkInWithRetryCount:]_block_invoke"", 283, xdict);
    }

    v8 = xpc_dictionary_get_value(xdict, "Result");
    v7 = v8;
    if (v8)
    {
      if (MEMORY[0x25F8746E0](v8) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v7);
        if (!value)
        {
          *(WeakRetained + 8) = 1;
          if (nrCopyLogObj_onceToken_1721 == -1)
          {
            if ((sNRCopyLogToStdErr & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
            if ((sNRCopyLogToStdErr & 1) == 0)
            {
LABEL_23:
              if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
              {
                goto LABEL_25;
              }
            }
          }

          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Checked in with terminusd", ", "[NRDevicePairingManagerMux handleCheckIn]"", 318);
LABEL_25:
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = *(WeakRetained + 2);
          v11 = [v10 countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v30;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v30 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(WeakRetained + 2) objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
                v16 = v15;
                if (v15 && *(v15 + 24))
                {
                  v17 = *(v15 + 8);
                  [(NRDevicePairingManagerMux *)WeakRetained registerPairingManager:v17 withCompletion:v16[3]];

                  objc_setProperty_nonatomic_copy(v16, v18, 0, 24);
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v29 objects:v28 count:16];
            }

            while (v12);
          }

          goto LABEL_58;
        }

        v21 = [NRDevicePairingManager copyErrorForCode:?];
LABEL_57:
        v10 = v21;
        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v21];
LABEL_58:

        goto LABEL_59;
      }

      v19 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v20 = "received invalid result type";
        goto LABEL_45;
      }

      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (v25)
      {
        v20 = "received invalid result type";
        goto LABEL_55;
      }
    }

    else
    {
      v19 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v20 = "received response without result code";
LABEL_45:

LABEL_55:
        v26 = nrCopyLogObj_1710();
        _NRLogWithArgs(v26, 17, v20);

        goto LABEL_56;
      }

      v22 = v19;
      v23 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (v23)
      {
        v20 = "received response without result code";
        goto LABEL_55;
      }
    }

LABEL_56:
    v21 = +[NRDevicePairingManager copyXPCError];
    goto LABEL_57;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Checkin received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux checkInWithRetryCount:]_block_invoke"", 307, xdict), nrCopyLogObj_onceToken_1721 != -1))
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }
    }

    else if (sNRCopyLogToStdErr)
    {
      goto LABEL_11;
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
    {
LABEL_12:
      objc_opt_self();
      v5 = objc_alloc(MEMORY[0x277CCA9B8]);
      *&v29 = *MEMORY[0x277CCA450];
      v28[0] = @"An XPC connection error occurred";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v29 count:1];
      v7 = [v5 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v6];

      [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v7];
LABEL_59:

      goto LABEL_60;
    }

LABEL_11:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Checkin received unexpected XPC object");
    goto LABEL_12;
  }

  if (nrCopyLogObj_onceToken_1721 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Checkin could not deliver message %@, error %@, retrying", ", "[NRDevicePairingManagerMux checkInWithRetryCount:]_block_invoke"", 304, *(a1 + 32), xdict);
  }

  [(NRDevicePairingManagerMux *)WeakRetained checkInWithRetryCount:?];
LABEL_60:
}

- (void)registerPairingManager:(void *)manager withCompletion:
{
  location[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  managerCopy = manager;
  if (self)
  {
    if (*(self + 24))
    {
      if (v5)
      {
        v6 = v5[11];
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      uuid = [v7 uuid];

      v9 = [*(self + 16) objectForKeyedSubscript:uuid];
      if (!v9)
      {
        v9 = [[NRDevicePairingManagerMuxEntry alloc] initWithPairingManager:v5];
        [*(self + 16) setObject:v9 forKeyedSubscript:uuid];
        if ((*(self + 8) & 1) == 0)
        {
          if (!v9)
          {
            goto LABEL_24;
          }

          objc_setProperty_nonatomic_copy(v9, v10, managerCopy, 24);
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }

      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11)
      {
        v12 = v11;
        xpc_dictionary_set_uint64(v11, "PairingManagerOperation", 1uLL);
        if (v5)
        {
          v13 = v5[11];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = v12;
        v16 = v14;
        if (v16)
        {
          v17 = v16;
          location[0] = 0;
          v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:location];
          v19 = location[0];
          if (!v19 && [v18 length])
          {
            xpc_dictionary_set_data(v15, "PairingManagerInfo", [v18 bytes], objc_msgSend(v18, "length"));

            objc_initWeak(location, self);
            v20 = *(self + 24);
            v21 = *(self + 32);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __67__NRDevicePairingManagerMux_registerPairingManager_withCompletion___block_invoke;
            handler[3] = &unk_27996B328;
            objc_copyWeak(&v59, location);
            v58 = managerCopy;
            v22 = v15;
            v57 = v22;
            xpc_connection_send_message_with_reply(v20, v22, v21, handler);

            if (nrCopyLogObj_onceToken_1721 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
            }

            v23 = nrCopyLogObj_sNRLogObj_1723;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v24 = v23;
              v25 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

              if (!v25)
              {
LABEL_21:

                objc_destroyWeak(&v59);
                objc_destroyWeak(location);
LABEL_22:

                goto LABEL_23;
              }
            }

            if (nrCopyLogObj_onceToken_1721 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
            }

            v26 = nrCopyLogObj_sNRLogObj_1723;
            _NRLogWithArgs(v26, 1, "%s%.30s:%-4d Sent registration message: %@", ", "[NRDevicePairingManagerMux registerPairingManager:withCompletion:]"", 445, v22);

            goto LABEL_21;
          }

          v30 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v47 = v30;
            v48 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

            if (!v48)
            {
LABEL_47:

LABEL_48:
              v50 = nrCopyLogObj_1710();
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v51 = v50;
                v52 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

                if (!v52)
                {
LABEL_52:
                  v54 = +[NRDevicePairingManager copyXPCError];
                  (*(managerCopy + 2))(managerCopy, v54);

                  goto LABEL_22;
                }
              }

              v53 = nrCopyLogObj_1710();
              _NRLogWithArgs(v53, 16, "%s%.30s:%-4d Register pairing manager request failed to serialize pairing manager info", ", "[NRDevicePairingManagerMux registerPairingManager:withCompletion:]"", 399);

              goto LABEL_52;
            }
          }

          v49 = nrCopyLogObj_1710();
          _NRLogWithArgs(v49, 17, "Failed to archive %@: %@", v17, v19);

          goto LABEL_47;
        }

        v29 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v44 = v29;
          v45 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

          if (!v45)
          {
LABEL_44:

            goto LABEL_48;
          }
        }

        v46 = nrCopyLogObj_1710();
        _NRLogWithArgs(v46, 17, "%s called with null object", "nr_xpc_dictionary_set_nsobject");

        goto LABEL_44;
      }

      v28 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v35 = v28;
        v36 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

        if (!v36)
        {
          goto LABEL_41;
        }
      }

      v37 = nrCopyLogObj_1710();
      _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_41:
      v38 = _os_log_pack_size();
      v40 = &handler[-1] - ((MEMORY[0x28223BE20](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = __error();
      v42 = _os_log_pack_fill(v40, v38, *v41, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v42, "nr_xpc_dictionary_create");
      v43 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v43, v40);
    }

    v27 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v27;
      v32 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
LABEL_38:
        v34 = +[NRDevicePairingManager copyXPCError];
        (*(managerCopy + 2))(managerCopy, v34);

        goto LABEL_25;
      }
    }

    v33 = nrCopyLogObj_1710();
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Register pairing manager request with no XPC connection", ", "[NRDevicePairingManagerMux registerPairingManager:withCompletion:]"", 379);

    goto LABEL_38;
  }

LABEL_25:
}

void __67__NRDevicePairingManagerMux_registerPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Register could not deliver message %@, error %@", ", "[NRDevicePairingManagerMux registerPairingManager:withCompletion:]_block_invoke"", 435, *(a1 + 32), xdict);
        }

        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Register received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux registerPairingManager:withCompletion:]_block_invoke"", 439, xdict), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_26:
        v8 = *(a1 + 40);
        objc_opt_self();
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA450];
        v10 = v31;
        v32[0] = @"An XPC connection error occurred";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v12 = [v9 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v11];

        (*(v8 + 16))(v8, v12);
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = v10;
        v32[0] = @"An XPC connection error occurred";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v6 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v14];

        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v6];
LABEL_27:

        goto LABEL_28;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Register received unexpected XPC object", v26, v27, v28, v29);
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Register received XPC dict: %@", ", "[NRDevicePairingManagerMux registerPairingManager:withCompletion:]_block_invoke"", 412, xdict);
    }

    v5 = xpc_dictionary_get_value(xdict, "Result");
    v6 = v5;
    if (v5)
    {
      if (MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v6);
        if (value)
        {
          v17 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_27;
      }

      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Register received invalid result type";
        goto LABEL_35;
      }

      v20 = v15;
      v21 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v21)
      {
        v16 = "Register received invalid result type";
        goto LABEL_43;
      }
    }

    else
    {
      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Register received response without result code";
LABEL_35:

LABEL_43:
        v22 = nrCopyLogObj_1710();
        _NRLogWithArgs(v22, 17, v16);

        goto LABEL_44;
      }

      v18 = v15;
      v19 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v19)
      {
        v16 = "Register received response without result code";
        goto LABEL_43;
      }
    }

LABEL_44:
    v23 = *(a1 + 40);
    v24 = +[NRDevicePairingManager copyXPCError];
    (*(v23 + 16))(v23, v24);

    v25 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v25];

    goto LABEL_27;
  }

LABEL_28:
}

- (void)handleUnsolicitedMessage:(uint64_t)message
{
  v3 = a2;
  if (*(message + 24))
  {
    v267 = v3;
    v4 = xpc_dictionary_get_value(v3, "PairingManagerOperation");
    v5 = v4;
    if (v4)
    {
      if (MEMORY[0x25F8746E0](v4) == MEMORY[0x277D864C8])
      {
        v6 = v267;
        v7 = v6;
        if (v6)
        {
          uuid = xpc_dictionary_get_uuid(v6, "PairingManager");
          if (uuid)
          {
            v9 = uuid;
            if (!uuid_is_null(uuid))
            {
              v10 = 0x277CCA000uLL;
              v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v9];

              if (v11)
              {
                v12 = [*(message + 16) objectForKeyedSubscript:v11];
                if (!v12)
                {
                  v102 = nrCopyLogObj_1710();
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v118 = v102;
                    v119 = os_log_type_enabled(v102, OS_LOG_TYPE_FAULT);

                    if (!v119)
                    {
                      goto LABEL_124;
                    }
                  }

                  v14 = nrCopyLogObj_1710();
                  _NRLogWithArgs(v14, 17, "Pairing manager %@ is not registered", v11);
                  goto LABEL_123;
                }

                value = xpc_uint64_get_value(v5);
                if (value <= 7)
                {
                  if (value != 5)
                  {
                    if (value == 7)
                    {
                      v14 = v7;
                      if (nrCopyLogObj_onceToken_1721 != -1)
                      {
                        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                      }

                      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                      {
                        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received auth method request from peer", ", "[NRDevicePairingManagerMuxEntry handleincomingAuthMethodRequest:]"", 171);
                      }

                      uint64 = xpc_dictionary_get_uint64(v14, "AuthRequestType");
                      if (!uint64)
                      {
                        v122 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v170 = v122;
                          v171 = os_log_type_enabled(v122, OS_LOG_TYPE_FAULT);

                          if (!v171)
                          {
                            goto LABEL_123;
                          }
                        }

                        v18 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v18, 17, "Received request for invalid auth method");
                        goto LABEL_122;
                      }

                      v16 = uint64;
                      v17 = xpc_dictionary_get_value(v14, "AuthData");
                      v18 = v17;
                      if (v17 && MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86458])
                      {
                        v19 = MEMORY[0x277CBEA90];
                        bytes_ptr = xpc_data_get_bytes_ptr(v18);
                        v21 = [v19 _newZeroingDataWithBytes:bytes_ptr length:xpc_data_get_length(v18)];
                        v22 = v12[1];
                        v23 = v21;
                        if (v22)
                        {
                          authRequestHandler = [v22 authRequestHandler];

                          if (authRequestHandler)
                          {
                            v25 = v22[7];
                            block = MEMORY[0x277D85DD0];
                            v270 = 3221225472;
                            v271 = __64__NRDevicePairingManager_receivedRequestForAuthMethod_authData___block_invoke;
                            v272 = &unk_27996B270;
                            v273 = v22;
                            v275 = v16;
                            v274 = v23;
                            dispatch_async(v25, &block);
                          }
                        }
                      }

                      else
                      {
                        v120 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v127 = v120;
                          v128 = os_log_type_enabled(v120, OS_LOG_TYPE_FAULT);

                          if (!v128)
                          {
                            goto LABEL_122;
                          }
                        }

                        v23 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v23, 17, "Received request for auth method with no auth data");
                      }

LABEL_122:
                      goto LABEL_123;
                    }

LABEL_57:
                    if (nrCopyLogObj_onceToken_1721 != -1)
                    {
                      v121 = value;
                      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                      value = v121;
                    }

                    if ((sNRCopyLogToStdErr & 1) != 0 || (v58 = value, v59 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT), value = v58, v59))
                    {
                      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Received unexpected operation code %llu", value);
                    }

                    goto LABEL_124;
                  }

                  v14 = v7;
                  v60 = xpc_dictionary_get_value(v14, "DiscoveredPairingCandidate");

                  if (!v60)
                  {
LABEL_101:
                    v87 = xpc_dictionary_get_value(v14, "LostPairingCandidate");

                    if (v87)
                    {
                      v88 = v14;
                      v89 = xpc_dictionary_get_uuid(v88, "LostPairingCandidate");
                      if (v89)
                      {
                        v90 = v89;
                        if (!uuid_is_null(v89))
                        {
                          v18 = [objc_alloc(*(v10 + 3448)) initWithUUIDBytes:v90];

                          if (v18)
                          {
                            v50 = [v12[2] objectForKeyedSubscript:v18];
                            if (v50)
                            {
                              if (nrCopyLogObj_onceToken_1721 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                              }

                              if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                              {
                                _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Lost candidate %@", ", "[NRDevicePairingManagerMuxEntry handleDiscoveryUpdate:]"", 125, v50);
                              }

                              v91 = v12[1];
                              v92 = v50;
                              if (v91)
                              {
                                v93 = v91;
                                objc_sync_enter(v93);
                                v94 = v93[1];
                                objc_sync_exit(v93);

                                if (v94 == 5)
                                {
                                  candidateLostHandler = [v93 candidateLostHandler];

                                  if (candidateLostHandler)
                                  {
                                    v96 = v93[7];
                                    block = MEMORY[0x277D85DD0];
                                    v270 = 3221225472;
                                    v271 = __40__NRDevicePairingManager_lostCandidate___block_invoke;
                                    v272 = &unk_27996B248;
                                    v273 = v93;
                                    v274 = v92;
                                    dispatch_async(v96, &block);
                                  }
                                }
                              }

                              [v12[2] setObject:0 forKeyedSubscript:v18];
                            }

                            else
                            {
                              if (nrCopyLogObj_onceToken_1721 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                              }

                              if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                              {
                                _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Lost missing candidate %@", ", "[NRDevicePairingManagerMuxEntry handleDiscoveryUpdate:]"", 129, v18);
                              }
                            }

                            goto LABEL_121;
                          }

LABEL_288:
                          v222 = nrCopyLogObj_1710();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v223 = v222;
                            v224 = os_log_type_enabled(v222, OS_LOG_TYPE_FAULT);

                            if (!v224)
                            {
                              goto LABEL_123;
                            }
                          }

                          v18 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v18, 17, "Failed to get lost pairing candidate from message");
                          goto LABEL_122;
                        }

                        v167 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {

LABEL_285:
                          v217 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v217, 16, "%s%.30s:%-4d UUID is null for key %s");
                          goto LABEL_286;
                        }

                        v220 = v167;
                        v221 = os_log_type_enabled(v167, OS_LOG_TYPE_ERROR);

                        if (v221)
                        {
                          goto LABEL_285;
                        }

LABEL_287:

                        goto LABEL_288;
                      }

                      v165 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v215 = v165;
                        v216 = os_log_type_enabled(v165, OS_LOG_TYPE_ERROR);

                        if (!v216)
                        {
                          goto LABEL_287;
                        }
                      }

                      v217 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v217, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
LABEL_286:

                      goto LABEL_287;
                    }

LABEL_123:

LABEL_124:
                    goto LABEL_125;
                  }

                  v61 = objc_opt_class();
                  v62 = v14;
                  v63 = v62;
                  if (v61)
                  {
                    block = 0;
                    data = xpc_dictionary_get_data(v62, "DiscoveredPairingCandidate", &block);
                    if (data)
                    {
                      if (block)
                      {
                        v65 = data;
                        v66 = objc_alloc(MEMORY[0x277CBEA90]);
                        v67 = [v66 initWithBytesNoCopy:v65 length:block freeWhenDone:0];
                        v268 = 0;
                        v68 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v61 fromData:v67 error:&v268];
                        v69 = v268;
                        if (!v69 && v68)
                        {
                          v70 = v68;
                          goto LABEL_69;
                        }

                        v169 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v231 = v169;
                          v266 = os_log_type_enabled(v169, OS_LOG_TYPE_FAULT);

                          if (!v266)
                          {
LABEL_303:
                            v70 = 0;
                            v10 = 0x277CCA000;
LABEL_69:

                            if (v70)
                            {
                              v71 = v12[2];
                              uuid = [v70 uuid];
                              v73 = [v71 objectForKeyedSubscript:uuid];

                              if (v73)
                              {
                                if (nrCopyLogObj_onceToken_1721 != -1)
                                {
                                  dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                                }

                                if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                                {
                                  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received duplicate candidate %@", ", "[NRDevicePairingManagerMuxEntry handleDiscoveryUpdate:]"", 112, v70);
                                }
                              }

                              else
                              {
                                if (nrCopyLogObj_onceToken_1721 != -1)
                                {
                                  dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                                }

                                if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                                {
                                  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received new candidate %@", ", "[NRDevicePairingManagerMuxEntry handleDiscoveryUpdate:]"", 108, v70);
                                }

                                v80 = v12[2];
                                uuid2 = [v70 uuid];
                                [v80 setObject:v70 forKeyedSubscript:uuid2];

                                v82 = v12[1];
                                v70 = v70;
                                if (v82)
                                {
                                  v83 = v82;
                                  objc_sync_enter(v83);
                                  v84 = v83[1];
                                  objc_sync_exit(v83);

                                  if (v84 == 5)
                                  {
                                    candidateDiscoveredHandler = [v83 candidateDiscoveredHandler];

                                    if (candidateDiscoveredHandler)
                                    {
                                      v86 = v83[7];
                                      block = MEMORY[0x277D85DD0];
                                      v270 = 3221225472;
                                      v271 = __46__NRDevicePairingManager_discoveredCandidate___block_invoke;
                                      v272 = &unk_27996B248;
                                      v273 = v83;
                                      v274 = v70;
                                      dispatch_async(v86, &block);
                                    }
                                  }
                                }
                              }

                              goto LABEL_100;
                            }

LABEL_296:
                            v227 = nrCopyLogObj_1710();
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v228 = v227;
                              v229 = os_log_type_enabled(v227, OS_LOG_TYPE_FAULT);

                              if (!v229)
                              {
LABEL_300:
                                v70 = 0;
LABEL_100:

                                goto LABEL_101;
                              }
                            }

                            v230 = nrCopyLogObj_1710();
                            _NRLogWithArgs(v230, 17, "Failed to get new pairing candidate from message");

                            goto LABEL_300;
                          }
                        }

                        v232 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v232, 17, "Failed to unarchive object of type %@: %@", v61, v69);

                        goto LABEL_303;
                      }

                      v168 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {

LABEL_293:
                        v214 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v214, 16, "%s%.30s:%-4d XPC data for key %s is empty");
                        goto LABEL_294;
                      }

                      v225 = v168;
                      v226 = os_log_type_enabled(v168, OS_LOG_TYPE_ERROR);

                      if (v226)
                      {
                        goto LABEL_293;
                      }

LABEL_295:

                      goto LABEL_296;
                    }

                    v166 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v218 = v166;
                      v219 = os_log_type_enabled(v166, OS_LOG_TYPE_ERROR);

                      if (!v219)
                      {
                        goto LABEL_295;
                      }
                    }

                    v214 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v214, 16, "%s%.30s:%-4d Failed to get XPC data for key %s");
                  }

                  else
                  {
                    v164 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v212 = v164;
                      v213 = os_log_type_enabled(v164, OS_LOG_TYPE_FAULT);

                      if (!v213)
                      {
                        goto LABEL_295;
                      }
                    }

                    v214 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v214, 17, "%s called with null cls");
                  }

LABEL_294:

                  goto LABEL_295;
                }

                if (value != 8)
                {
                  if (value != 12)
                  {
                    goto LABEL_57;
                  }

                  v14 = v7;
                  v26 = xpc_dictionary_get_value(v14, "Result");
                  v18 = v26;
                  if (v26)
                  {
                    if (MEMORY[0x25F8746E0](v26) == MEMORY[0x277D86498])
                    {
                      v27 = xpc_int64_get_value(v18);
                      v265 = v18;
                      if (!v27)
                      {
                        v28 = objc_opt_class();
                        v29 = v14;
                        v30 = v29;
                        if (v28)
                        {
                          block = 0;
                          v31 = xpc_dictionary_get_data(v29, "PairedDevice", &block);
                          if (v31)
                          {
                            if (block)
                            {
                              v32 = v31;
                              v33 = objc_alloc(MEMORY[0x277CBEA90]);
                              v34 = [v33 initWithBytesNoCopy:v32 length:block freeWhenDone:0];
                              v268 = 0;
                              v35 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v28 fromData:v34 error:&v268];
                              v36 = v268;
                              if (!v36 && v35)
                              {
                                v37 = v35;
                                goto LABEL_36;
                              }

                              v162 = nrCopyLogObj_1710();
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v263 = v162;
                                v261 = os_log_type_enabled(v162, OS_LOG_TYPE_FAULT);

                                if (!v261)
                                {
                                  v37 = 0;
LABEL_36:

                                  if (v37)
                                  {
                                    v38 = v30;
                                    v39 = xpc_dictionary_get_uuid(v38, "BluetoothUUID");
                                    if (v39)
                                    {
                                      v40 = v39;
                                      if (uuid_is_null(v39))
                                      {
                                        v163 = nrCopyLogObj_1710();
                                        if (sNRCopyLogToStdErr == 1)
                                        {
                                        }

                                        else
                                        {
                                          v210 = v163;
                                          v211 = os_log_type_enabled(v163, OS_LOG_TYPE_ERROR);

                                          if (!v211)
                                          {
                                            goto LABEL_52;
                                          }
                                        }

                                        nrDeviceIdentifier = nrCopyLogObj_1710();
                                        _NRLogWithArgs(nrDeviceIdentifier, 16, "%s%.30s:%-4d UUID is null for key %s");
                                      }

                                      else
                                      {
                                        v41 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v40];

                                        if (!v41)
                                        {
                                          goto LABEL_53;
                                        }

                                        nrDeviceIdentifier = [v37 nrDeviceIdentifier];
                                        v38 = v41;
                                        if (nrDeviceIdentifier)
                                        {
                                          os_unfair_lock_lock(&sBluetoothUUIDToNRUUIDMappingLock);
                                          v43 = sBluetoothUUIDToNRUUIDMapping;
                                          if (!sBluetoothUUIDToNRUUIDMapping)
                                          {
                                            v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
                                            v45 = sBluetoothUUIDToNRUUIDMapping;
                                            sBluetoothUUIDToNRUUIDMapping = v44;

                                            v43 = sBluetoothUUIDToNRUUIDMapping;
                                          }

                                          if ([v43 count] <= 0xF)
                                          {
                                            v42NrDeviceIdentifier = [nrDeviceIdentifier nrDeviceIdentifier];
                                            [sBluetoothUUIDToNRUUIDMapping setObject:v42NrDeviceIdentifier forKeyedSubscript:v38];

                                            if (nrCopyLogObj_onceToken_809 != -1)
                                            {
                                              dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
                                            }

                                            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
                                            {
                                              v47 = nrCopyLogObj_sNRLogObj_811;
                                              v42NrDeviceIdentifier2 = [nrDeviceIdentifier nrDeviceIdentifier];
                                              _NRLogWithArgs(v47, 1, "%s%.30s:%-4d Adding BluetoothUUID %@ to cache for nrUUID %@", ", "[NRDeviceIdentifier(InternalDirect) addToCacheForBluetoothUUID:]"", 250, v38, v42NrDeviceIdentifier2);
                                            }
                                          }

                                          os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v161 = nrCopyLogObj_1710();
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v207 = v161;
                                        v208 = os_log_type_enabled(v161, OS_LOG_TYPE_ERROR);

                                        if (!v208)
                                        {
                                          goto LABEL_52;
                                        }
                                      }

                                      nrDeviceIdentifier = nrCopyLogObj_1710();
                                      _NRLogWithArgs(nrDeviceIdentifier, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
                                    }

LABEL_52:
LABEL_53:
                                    v49 = v12[1];
                                    v50 = v37;
                                    if (v49)
                                    {
                                      v51 = v49;
                                      objc_sync_enter(v51);
                                      v52 = v51[1];
                                      objc_sync_exit(v51);

                                      if (v52 == 8)
                                      {
                                        v54 = objc_getProperty(v51, v53, 80, 1);
                                        objc_setProperty_atomic_copy(v51, v55, 0, 80);
                                        [(NRDevicePairingManager *)v51 setInternalManagerState:?];
                                        v56 = v51[7];
                                        block = MEMORY[0x277D85DD0];
                                        v270 = 3221225472;
                                        v271 = __59__NRDevicePairingManager_pairingSucceededWithPairedDevice___block_invoke;
                                        v272 = &unk_27996B298;
                                        v273 = v51;
                                        v275 = v54;
                                        v274 = v50;
                                        v57 = v54;
                                        dispatch_async(v56, &block);
                                      }
                                    }

                                    goto LABEL_121;
                                  }

LABEL_266:
                                  v202 = nrCopyLogObj_1710();
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v203 = v202;
                                    v204 = os_log_type_enabled(v202, OS_LOG_TYPE_FAULT);

                                    if (!v204)
                                    {
LABEL_270:
                                      v206 = v12[1];
                                      v50 = +[NRDevicePairingManager copyXPCError];
                                      [(NRDevicePairingManager *)v206 pairingFailedWithError:v50];

                                      goto LABEL_121;
                                    }
                                  }

                                  v205 = nrCopyLogObj_1710();
                                  _NRLogWithArgs(v205, 17, "Failed to get paired device from message");

                                  goto LABEL_270;
                                }
                              }

                              v259 = v28;
                              v209 = nrCopyLogObj_1710();
                              _NRLogWithArgs(v209, 17, "Failed to unarchive object of type %@: %@", v259, v36);

                              v37 = 0;
                              goto LABEL_36;
                            }

                            v159 = nrCopyLogObj_1710();
                            if (sNRCopyLogToStdErr == 1)
                            {

LABEL_263:
                              v190 = nrCopyLogObj_1710();
                              _NRLogWithArgs(v190, 16, "%s%.30s:%-4d XPC data for key %s is empty");
                              goto LABEL_264;
                            }

                            v200 = v159;
                            v201 = os_log_type_enabled(v159, OS_LOG_TYPE_ERROR);

                            if (v201)
                            {
                              goto LABEL_263;
                            }

LABEL_265:

                            goto LABEL_266;
                          }

                          v157 = nrCopyLogObj_1710();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v195 = v157;
                            v196 = os_log_type_enabled(v157, OS_LOG_TYPE_ERROR);

                            if (!v196)
                            {
                              goto LABEL_265;
                            }
                          }

                          v190 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v190, 16, "%s%.30s:%-4d Failed to get XPC data for key %s");
                        }

                        else
                        {
                          v155 = nrCopyLogObj_1710();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v188 = v155;
                            v189 = os_log_type_enabled(v155, OS_LOG_TYPE_FAULT);

                            if (!v189)
                            {
                              goto LABEL_265;
                            }
                          }

                          v190 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v190, 17, "%s called with null cls");
                        }

LABEL_264:

                        goto LABEL_265;
                      }

                      if (v27 != -3006)
                      {
                        v153 = [NRDevicePairingManager copyErrorForCode:v27];
                        goto LABEL_250;
                      }

                      v129 = objc_alloc_init(MEMORY[0x277CBEB38]);
                      v130 = xpc_dictionary_get_value(v14, "BluetoothUUID");

                      if (!v130)
                      {
LABEL_182:
                        v136 = xpc_dictionary_get_value(v14, "NRUUID");

                        if (!v136)
                        {
                          goto LABEL_187;
                        }

                        v137 = v14;
                        v138 = xpc_dictionary_get_uuid(v137, "NRUUID");
                        if (v138)
                        {
                          v139 = v138;
                          if (!uuid_is_null(v138))
                          {
                            v140 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v139];
LABEL_186:

                            [v129 setObject:v140 forKeyedSubscript:@"NRDevicePairingErrorOriginalNRUUIDKey"];
LABEL_187:
                            v141 = xpc_dictionary_get_value(v14, "UnderlyingError");

                            if (!v141)
                            {
LABEL_197:
                              v153 = [NRDevicePairingManager copyErrorForCode:v129 userInfo:?];

LABEL_250:
                              [(NRDevicePairingManager *)v12[1] pairingFailedWithError:v153];

                              v18 = v265;
                              goto LABEL_122;
                            }

                            v142 = objc_opt_class();
                            v143 = v14;
                            v144 = v14;
                            v145 = v144;
                            if (v142)
                            {
                              block = 0;
                              v146 = xpc_dictionary_get_data(v144, "UnderlyingError", &block);
                              if (!v146)
                              {
                                v243 = nrCopyLogObj_1710();
                                v244 = v243;
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v256 = os_log_type_enabled(v243, OS_LOG_TYPE_ERROR);

                                  if (!v256)
                                  {
                                    goto LABEL_340;
                                  }
                                }

                                v149 = nrCopyLogObj_1710();
                                _NRLogWithArgs(v149, 16, "%s%.30s:%-4d Failed to get XPC data for key %s");
LABEL_339:
                                v152 = 0;
                                goto LABEL_195;
                              }

                              if (block)
                              {
                                v147 = v146;
                                v148 = objc_alloc(MEMORY[0x277CBEA90]);
                                v149 = [v148 initWithBytesNoCopy:v147 length:block freeWhenDone:0];
                                v268 = 0;
                                v150 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v142 fromData:v149 error:&v268];
                                v151 = v268;
                                if (v151 || !v150)
                                {
                                  v247 = nrCopyLogObj_1710();
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v264 = v247;
                                    v262 = os_log_type_enabled(v247, OS_LOG_TYPE_FAULT);

                                    if (!v262)
                                    {
                                      v152 = 0;
                                      goto LABEL_194;
                                    }
                                  }

                                  v260 = v142;
                                  v258 = nrCopyLogObj_1710();
                                  _NRLogWithArgs(v258, 17, "Failed to unarchive object of type %@: %@", v260, v151);

                                  v152 = 0;
                                }

                                else
                                {
                                  v152 = v150;
                                }

LABEL_194:

LABEL_195:
LABEL_196:

                                [v129 setObject:v152 forKeyedSubscript:@"NRDevicePairingErrorTransportErrorKey"];
                                v14 = v143;
                                goto LABEL_197;
                              }

                              v245 = nrCopyLogObj_1710();
                              v246 = v245;
                              if (sNRCopyLogToStdErr == 1)
                              {

LABEL_338:
                                v149 = nrCopyLogObj_1710();
                                _NRLogWithArgs(v149, 16, "%s%.30s:%-4d XPC data for key %s is empty");
                                goto LABEL_339;
                              }

                              v257 = os_log_type_enabled(v245, OS_LOG_TYPE_ERROR);

                              if (v257)
                              {
                                goto LABEL_338;
                              }

LABEL_340:
                              v152 = 0;
                              goto LABEL_196;
                            }

                            v237 = nrCopyLogObj_1710();
                            v238 = v237;
                            if (sNRCopyLogToStdErr == 1)
                            {
                            }

                            else
                            {
                              v252 = os_log_type_enabled(v237, OS_LOG_TYPE_FAULT);

                              if (!v252)
                              {
                                goto LABEL_340;
                              }
                            }

                            v253 = nrCopyLogObj_1710();
                            _NRLogWithArgs(v253, 17, "%s called with null cls", "nr_xpc_dictionary_get_nsobject");

                            v152 = 0;
                            goto LABEL_196;
                          }

                          v241 = nrCopyLogObj_1710();
                          v242 = v241;
                          if (sNRCopyLogToStdErr == 1)
                          {

LABEL_332:
                            v251 = nrCopyLogObj_1710();
                            _NRLogWithArgs(v251, 16, "%s%.30s:%-4d UUID is null for key %s");
                            goto LABEL_333;
                          }

                          v255 = os_log_type_enabled(v241, OS_LOG_TYPE_ERROR);

                          if (v255)
                          {
                            goto LABEL_332;
                          }

LABEL_334:
                          v140 = 0;
                          goto LABEL_186;
                        }

                        v235 = nrCopyLogObj_1710();
                        v236 = v235;
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v250 = os_log_type_enabled(v235, OS_LOG_TYPE_ERROR);

                          if (!v250)
                          {
                            goto LABEL_334;
                          }
                        }

                        v251 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v251, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
LABEL_333:

                        v140 = 0;
                        goto LABEL_186;
                      }

                      v131 = v14;
                      v132 = v14;
                      v133 = xpc_dictionary_get_uuid(v132, "BluetoothUUID");
                      if (v133)
                      {
                        v134 = v133;
                        if (!uuid_is_null(v133))
                        {
                          v135 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v134];
LABEL_181:

                          [v129 setObject:v135 forKeyedSubscript:@"NRDevicePairingErrorOriginalCBUUIDKey"];
                          v14 = v131;
                          goto LABEL_182;
                        }

                        v239 = nrCopyLogObj_1710();
                        v240 = v239;
                        if (sNRCopyLogToStdErr == 1)
                        {

LABEL_328:
                          v249 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v249, 16, "%s%.30s:%-4d UUID is null for key %s");
                          goto LABEL_329;
                        }

                        v254 = os_log_type_enabled(v239, OS_LOG_TYPE_ERROR);

                        if (v254)
                        {
                          goto LABEL_328;
                        }

LABEL_330:
                        v135 = 0;
                        goto LABEL_181;
                      }

                      v233 = nrCopyLogObj_1710();
                      v234 = v233;
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v248 = os_log_type_enabled(v233, OS_LOG_TYPE_ERROR);

                        if (!v248)
                        {
                          goto LABEL_330;
                        }
                      }

                      v249 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v249, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
LABEL_329:

                      v135 = 0;
                      goto LABEL_181;
                    }

                    v125 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {

LABEL_236:
                      v174 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v174, 17, "Start Pairing received invalid result type");
                      goto LABEL_237;
                    }

                    v178 = v125;
                    v179 = os_log_type_enabled(v125, OS_LOG_TYPE_FAULT);

                    if (v179)
                    {
                      goto LABEL_236;
                    }

LABEL_238:
                    v180 = v12[1];
                    v50 = +[NRDevicePairingManager copyXPCError];
                    [(NRDevicePairingManager *)v180 pairingFailedWithError:v50];

                    goto LABEL_121;
                  }

                  v123 = nrCopyLogObj_1710();
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v172 = v123;
                    v173 = os_log_type_enabled(v123, OS_LOG_TYPE_FAULT);

                    if (!v173)
                    {
                      goto LABEL_238;
                    }
                  }

                  v174 = nrCopyLogObj_1710();
                  _NRLogWithArgs(v174, 17, "Start Pairing request received response without result code");
LABEL_237:

                  goto LABEL_238;
                }

                v74 = v7;
                if (nrCopyLogObj_onceToken_1721 != -1)
                {
                  dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                }

                if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                {
                  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received auth method request update", ", "[NRDevicePairingManagerMuxEntry handleAuthMethodRequestUpdate:]"", 136);
                }

                v14 = v74;
                v75 = xpc_dictionary_get_uuid(v14, "TargetPairingCandidate");
                if (v75)
                {
                  v76 = v75;
                  if (!uuid_is_null(v75))
                  {
                    v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v76];

                    if (v18)
                    {
                      v50 = [v12[5] objectForKeyedSubscript:v18];
                      if (!v50)
                      {
                        v154 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v186 = v154;
                          v187 = os_log_type_enabled(v154, OS_LOG_TYPE_ERROR);

                          if (!v187)
                          {
                            goto LABEL_121;
                          }
                        }

                        v78 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v78, 16, "%s%.30s:%-4d Pairing target %@ in auth method request result has no outstanding request", ", "[NRDevicePairingManagerMuxEntry handleAuthMethodRequestUpdate:]"", 144, v18);
                        goto LABEL_89;
                      }

                      [v12[5] setObject:0 forKeyedSubscript:v18];
                      v77 = xpc_dictionary_get_value(v14, "Result");
                      if (v77)
                      {
                        v78 = v77;
                        if (MEMORY[0x25F8746E0]() == MEMORY[0x277D86498])
                        {
                          v79 = xpc_int64_get_value(v78);
                          if (!v79)
                          {
                            v50[2](v50);
LABEL_89:

LABEL_121:
                            goto LABEL_122;
                          }

                          v160 = [NRDevicePairingManager copyErrorForCode:v79];
                          (v50[2])(v50, v160);
LABEL_261:

                          goto LABEL_89;
                        }

                        v158 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v197 = v158;
                          v198 = os_log_type_enabled(v158, OS_LOG_TYPE_FAULT);

                          if (!v198)
                          {
LABEL_260:
                            v160 = +[NRDevicePairingManager copyXPCError];
                            (v50[2])(v50, v160);
                            goto LABEL_261;
                          }
                        }

                        v199 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v199, 17, "Register received invalid result type");

                        goto LABEL_260;
                      }

                      v156 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v191 = v156;
                        v192 = os_log_type_enabled(v156, OS_LOG_TYPE_FAULT);

                        if (!v192)
                        {
LABEL_255:
                          v194 = +[NRDevicePairingManager copyXPCError];
                          (v50[2])(v50, v194);

                          v78 = 0;
                          goto LABEL_89;
                        }
                      }

                      v193 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v193, 17, "Auth method request received response without result code");

                      goto LABEL_255;
                    }

LABEL_243:
                    v183 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v184 = v183;
                      v185 = os_log_type_enabled(v183, OS_LOG_TYPE_FAULT);

                      if (!v185)
                      {
                        goto LABEL_123;
                      }
                    }

                    v18 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v18, 17, "Auth method request result missing pairing target UUID");
                    goto LABEL_122;
                  }

                  v126 = nrCopyLogObj_1710();
                  if (sNRCopyLogToStdErr == 1)
                  {

LABEL_240:
                    v177 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v177, 16, "%s%.30s:%-4d UUID is null for key %s");
                    goto LABEL_241;
                  }

                  v181 = v126;
                  v182 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);

                  if (v182)
                  {
                    goto LABEL_240;
                  }

LABEL_242:

                  goto LABEL_243;
                }

                v124 = nrCopyLogObj_1710();
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v175 = v124;
                  v176 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);

                  if (!v176)
                  {
                    goto LABEL_242;
                  }
                }

                v177 = nrCopyLogObj_1710();
                _NRLogWithArgs(v177, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
LABEL_241:

                goto LABEL_242;
              }

LABEL_156:
              v115 = nrCopyLogObj_1710();
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v116 = v115;
                v117 = os_log_type_enabled(v115, OS_LOG_TYPE_FAULT);

                if (!v117)
                {
                  goto LABEL_126;
                }
              }

              v11 = nrCopyLogObj_1710();
              _NRLogWithArgs(v11, 17, "Pairing manager UUID missing");
LABEL_125:

LABEL_126:
              v3 = v267;
              goto LABEL_127;
            }

            v101 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_153:
              v110 = nrCopyLogObj_1710();
              _NRLogWithArgs(v110, 16, "%s%.30s:%-4d UUID is null for key %s");
              goto LABEL_154;
            }

            v113 = v101;
            v114 = os_log_type_enabled(v101, OS_LOG_TYPE_ERROR);

            if (v114)
            {
              goto LABEL_153;
            }

LABEL_155:

            goto LABEL_156;
          }

          v100 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v111 = v100;
            v112 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);

            if (!v112)
            {
              goto LABEL_155;
            }
          }

          v110 = nrCopyLogObj_1710();
          _NRLogWithArgs(v110, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
        }

        else
        {
          v99 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v108 = v99;
            v109 = os_log_type_enabled(v99, OS_LOG_TYPE_FAULT);

            if (!v109)
            {
              goto LABEL_155;
            }
          }

          v110 = nrCopyLogObj_1710();
          _NRLogWithArgs(v110, 17, "%s called with null dict");
        }

LABEL_154:

        goto LABEL_155;
      }

      v98 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_145:
        v105 = nrCopyLogObj_1710();
        _NRLogWithArgs(v105, 17, "Received invalid operation code type");
        goto LABEL_146;
      }

      v106 = v98;
      v107 = os_log_type_enabled(v98, OS_LOG_TYPE_FAULT);

      if (v107)
      {
        goto LABEL_145;
      }

LABEL_147:
      v11 = +[NRDevicePairingManager copyXPCError];
      [(NRDevicePairingManagerMux *)message invalidateManagersWithError:v11];
      goto LABEL_125;
    }

    v97 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v103 = v97;
      v104 = os_log_type_enabled(v97, OS_LOG_TYPE_FAULT);

      if (!v104)
      {
        goto LABEL_147;
      }
    }

    v105 = nrCopyLogObj_1710();
    _NRLogWithArgs(v105, 17, "Received unsolicited message without operation code");
LABEL_146:

    goto LABEL_147;
  }

LABEL_127:
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_1721 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 0, "%s%.30s:%-4d Dealloc %@", ", "[NRDevicePairingManagerMux dealloc]"", 216, self);
  }

  if (self)
  {
    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
      v4 = self->_connection;
      self->_connection = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NRDevicePairingManagerMux;
  [(NRDevicePairingManagerMux *)&v5 dealloc];
}

- (void)unregisterPairingManager:(void *)manager withCompletion:
{
  location[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  managerCopy = manager;
  if (self)
  {
    if (self[3])
    {
      if (v5)
      {
        v6 = v5[11];
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      uuid = [v7 uuid];

      v9 = [self[2] objectForKeyedSubscript:uuid];
      v10 = v9;
      if (!v9)
      {
        managerCopy[2](managerCopy, 0);
LABEL_20:

        goto LABEL_21;
      }

      v11 = *(v9 + 24);
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        location[0] = *MEMORY[0x277CCA450];
        *uuid = @"Manager is in invalid state for this operation";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:uuid forKeys:location count:1];
        v15 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v14];

        (v11)[2](v12, v15);
        objc_setProperty_nonatomic_copy(v10, v16, 0, 24);
      }

      v17 = xpc_dictionary_create(0, 0, 0);
      if (v17)
      {
        v18 = v17;
        xpc_dictionary_set_uint64(v17, "PairingManagerOperation", 2uLL);
        *uuid = 0;
        v61 = 0;
        [uuid getUUIDBytes:uuid];
        v19 = xpc_array_create(0, 0);
        v20 = v19;
        if (v19)
        {
          xpc_array_set_uuid(v19, 0xFFFFFFFFFFFFFFFFLL, uuid);
          xpc_dictionary_set_value(v18, "PairingManagers", v20);
          objc_initWeak(location, self);
          v21 = self[3];
          v22 = self[4];
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __69__NRDevicePairingManagerMux_unregisterPairingManager_withCompletion___block_invoke;
          handler[3] = &unk_27996B350;
          objc_copyWeak(&v59, location);
          v56 = uuid;
          v58 = managerCopy;
          v23 = v18;
          v57 = v23;
          xpc_connection_send_message_with_reply(v21, v23, v22, handler);

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v24 = nrCopyLogObj_sNRLogObj_1723;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v25 = v24;
            v26 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

            if (!v26)
            {
LABEL_19:

              objc_destroyWeak(&v59);
              objc_destroyWeak(location);

              goto LABEL_20;
            }
          }

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v27 = nrCopyLogObj_sNRLogObj_1723;
          _NRLogWithArgs(v27, 1, "%s%.30s:%-4d Sent unregistration message: %@", ", "[NRDevicePairingManagerMux unregisterPairingManager:withCompletion:]"", 518, v23);

          goto LABEL_19;
        }

        v30 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v44 = v30;
          v45 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

          if (!v45)
          {
            goto LABEL_36;
          }
        }

        v46 = nrCopyLogObj_1710();
        _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", ", "nr_xpc_array_create"", 56, 0, 0);

LABEL_36:
        v47 = _os_log_pack_size();
        v49 = &v53 - ((MEMORY[0x28223BE20](v47, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
        v50 = __error();
        v51 = _os_log_pack_fill(v49, v47, *v50, &dword_25B98C000, "%{public}s xpc_array_create(%p, %u) failed");
        __os_log_helper_1_2_3_8_34_8_0_4_0(v51, "nr_xpc_array_create");
        v52 = nrCopyLogObj_1710();
        _NRLogAbortWithPack(v52, v49);
      }

      v29 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v35 = v29;
        v36 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

        if (!v36)
        {
          goto LABEL_33;
        }
      }

      v37 = nrCopyLogObj_1710();
      _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_33:
      v38 = _os_log_pack_size();
      v40 = &v53 - ((MEMORY[0x28223BE20](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = __error();
      v42 = _os_log_pack_fill(v40, v38, *v41, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v42, "nr_xpc_dictionary_create");
      v43 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v43, v40);
    }

    v28 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v28;
      v32 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
LABEL_30:
        v34 = +[NRDevicePairingManager copyXPCError];
        (managerCopy)[2](managerCopy, v34);

        goto LABEL_21;
      }
    }

    v33 = nrCopyLogObj_1710();
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Unregister pairing manager request with no XPC connection", ", "[NRDevicePairingManagerMux unregisterPairingManager:withCompletion:]"", 452);

    goto LABEL_30;
  }

LABEL_21:
}

void __69__NRDevicePairingManagerMux_unregisterPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] setObject:0 forKeyedSubscript:*(a1 + 32)];
    v5 = MEMORY[0x25F8746E0](xdict);
    if (v5 != MEMORY[0x277D86468])
    {
      if (v5 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Unregister could not deliver message %@, error %@", ", "[NRDevicePairingManagerMux unregisterPairingManager:withCompletion:]_block_invoke"", 508, *(a1 + 40), xdict);
        }

        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Unregister received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux unregisterPairingManager:withCompletion:]_block_invoke"", 512, xdict), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_26:
        v9 = *(a1 + 48);
        objc_opt_self();
        v10 = objc_alloc(MEMORY[0x277CCA9B8]);
        v32 = *MEMORY[0x277CCA450];
        v11 = v32;
        v33[0] = @"An XPC connection error occurred";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        v13 = [v10 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v12];

        (*(v9 + 16))(v9, v13);
        objc_opt_self();
        v14 = objc_alloc(MEMORY[0x277CCA9B8]);
        v32 = v11;
        v33[0] = @"An XPC connection error occurred";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        v7 = [v14 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v15];

        [(NRDevicePairingManagerMux *)v4 invalidateManagersWithError:v7];
LABEL_27:

        goto LABEL_28;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Unregister received unexpected XPC object", v27, v28, v29, v30);
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Unregister received XPC dict: %@", ", "[NRDevicePairingManagerMux unregisterPairingManager:withCompletion:]_block_invoke"", 485, xdict);
    }

    v6 = xpc_dictionary_get_value(xdict, "Result");
    v7 = v6;
    if (v6)
    {
      if (MEMORY[0x25F8746E0](v6) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v7);
        if (value)
        {
          v18 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 48) + 16))();
        }

        else
        {
          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_27;
      }

      v16 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v17 = "Unregister received invalid result type";
        goto LABEL_35;
      }

      v21 = v16;
      v22 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (v22)
      {
        v17 = "Unregister received invalid result type";
        goto LABEL_43;
      }
    }

    else
    {
      v16 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v17 = "received response without result code";
LABEL_35:

LABEL_43:
        v23 = nrCopyLogObj_1710();
        _NRLogWithArgs(v23, 17, v17);

        goto LABEL_44;
      }

      v19 = v16;
      v20 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

      if (v20)
      {
        v17 = "received response without result code";
        goto LABEL_43;
      }
    }

LABEL_44:
    v24 = *(a1 + 48);
    v25 = +[NRDevicePairingManager copyXPCError];
    (*(v24 + 16))(v24, v25);

    v26 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)v4 invalidateManagersWithError:v26];

    goto LABEL_27;
  }

LABEL_28:
}

- (void)startDiscoveryForPairingManager:(void *)manager withCompletion:
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  managerCopy = manager;
  if (self)
  {
    if (self[3])
    {
      if (v5)
      {
        v7 = v5[11];
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      uuid = [v8 uuid];

      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10)
      {
        v11 = v10;
        v12 = uuid;
        v13 = v12;
        if (v12)
        {
          *uuid = 0;
          v48 = 0;
          [v12 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v11, "PairingManager", uuid);
          goto LABEL_8;
        }

        v24 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v38 = v24;
          v39 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

          if (!v39)
          {
            goto LABEL_8;
          }
        }

        v40 = nrCopyLogObj_1710();
        _NRLogWithArgs(v40, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v11, "PairingManagerOperation", 3uLL);
        objc_initWeak(uuid, self);
        v14 = self[3];
        v15 = self[4];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __76__NRDevicePairingManagerMux_startDiscoveryForPairingManager_withCompletion___block_invoke;
        handler[3] = &unk_27996B350;
        objc_copyWeak(&v46, uuid);
        v45 = managerCopy;
        v16 = v13;
        v43 = v16;
        v17 = v11;
        v44 = v17;
        xpc_connection_send_message_with_reply(v14, v17, v15, handler);

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v18 = nrCopyLogObj_sNRLogObj_1723;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v19 = v18;
          v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

          if (!v20)
          {
LABEL_16:

            objc_destroyWeak(&v46);
            objc_destroyWeak(uuid);

            goto LABEL_17;
          }
        }

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v21 = nrCopyLogObj_sNRLogObj_1723;
        _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Sent discovery start message: %@", ", "[NRDevicePairingManagerMux startDiscoveryForPairingManager:withCompletion:]"", 577, v17);

        goto LABEL_16;
      }

      v23 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v29 = v23;
        v30 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (!v30)
        {
          goto LABEL_29;
        }
      }

      v31 = nrCopyLogObj_1710();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_29:
      v32 = _os_log_pack_size();
      v34 = &handler[-1] - ((MEMORY[0x28223BE20](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v32, *v35, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v36, "nr_xpc_dictionary_create");
      v37 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v37, v34);
    }

    v22 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v22;
      v26 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
LABEL_26:
        v28 = +[NRDevicePairingManager copyXPCError];
        (*(managerCopy + 2))(managerCopy, v28);

        goto LABEL_17;
      }
    }

    v27 = nrCopyLogObj_1710();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d Start discovery request with no XPC connection", ", "[NRDevicePairingManagerMux startDiscoveryForPairingManager:withCompletion:]"", 525);

    goto LABEL_26;
  }

LABEL_17:
}

void __76__NRDevicePairingManagerMux_startDiscoveryForPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Start discovery could not deliver message %@, error %@", ", "[NRDevicePairingManagerMux startDiscoveryForPairingManager:withCompletion:]_block_invoke"", 567, *(a1 + 40), xdict);
        }

        goto LABEL_28;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Start discovery received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux startDiscoveryForPairingManager:withCompletion:]_block_invoke"", 571, xdict), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_28:
        v12 = *(a1 + 48);
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        v35 = *MEMORY[0x277CCA450];
        v14 = v35;
        v36[0] = @"An XPC connection error occurred";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v16 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v15];

        (*(v12 + 16))(v12, v16);
        objc_opt_self();
        v17 = objc_alloc(MEMORY[0x277CCA9B8]);
        v35 = v14;
        v36[0] = @"An XPC connection error occurred";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v6 = [v17 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v18];

        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v6];
LABEL_29:

        goto LABEL_30;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Start discovery received unexpected XPC object", v30, v31, v32, v33);
      goto LABEL_28;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Start discovery received XPC dict: %@", ", "[NRDevicePairingManagerMux startDiscoveryForPairingManager:withCompletion:]_block_invoke"", 543, xdict);
    }

    v5 = xpc_dictionary_get_value(xdict, "Result");
    v6 = v5;
    if (v5)
    {
      if (MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v6);
        if (value)
        {
          v21 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 48) + 16))();
        }

        else
        {
          v8 = *(a1 + 32);
          v9 = WeakRetained[2];
          v10 = [v9 objectForKeyedSubscript:v8];
          v11 = v10;
          if (v10)
          {
            v10 = v10[2];
          }

          [v10 removeAllObjects];

          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_29;
      }

      v19 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v20 = "Start discovery received invalid result type";
        goto LABEL_37;
      }

      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (v25)
      {
        v20 = "Start discovery received invalid result type";
        goto LABEL_45;
      }
    }

    else
    {
      v19 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v20 = "Start discovery received response without result code";
LABEL_37:

LABEL_45:
        v26 = nrCopyLogObj_1710();
        _NRLogWithArgs(v26, 17, v20);

        goto LABEL_46;
      }

      v22 = v19;
      v23 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (v23)
      {
        v20 = "Start discovery received response without result code";
        goto LABEL_45;
      }
    }

LABEL_46:
    v27 = *(a1 + 48);
    v28 = +[NRDevicePairingManager copyXPCError];
    (*(v27 + 16))(v27, v28);

    v29 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v29];

    goto LABEL_29;
  }

LABEL_30:
}

- (void)stopDiscoveryForPairingManager:(void *)manager withCompletion:
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  managerCopy = manager;
  if (self)
  {
    if (self[3])
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7)
      {
        v8 = v7;
        if (v5)
        {
          v9 = v5[11];
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        uuid = [v10 uuid];
        v12 = v8;
        v13 = uuid;
        v14 = v13;
        if (v13)
        {
          *uuid = 0;
          v49 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v12, "PairingManager", uuid);
          goto LABEL_8;
        }

        v24 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v38 = v24;
          v39 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

          if (!v39)
          {
            goto LABEL_8;
          }
        }

        v40 = nrCopyLogObj_1710();
        _NRLogWithArgs(v40, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v12, "PairingManagerOperation", 4uLL);
        objc_initWeak(uuid, self);
        v15 = self[3];
        v16 = self[4];
        handler = MEMORY[0x277D85DD0];
        v42 = 3221225472;
        v43 = __75__NRDevicePairingManagerMux_stopDiscoveryForPairingManager_withCompletion___block_invoke;
        v44 = &unk_27996B328;
        objc_copyWeak(&v47, uuid);
        v46 = managerCopy;
        v17 = v12;
        v45 = v17;
        xpc_connection_send_message_with_reply(v15, v17, v16, &handler);

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v18 = nrCopyLogObj_sNRLogObj_1723;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v19 = v18;
          v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

          if (!v20)
          {
LABEL_16:

            objc_destroyWeak(&v47);
            objc_destroyWeak(uuid);

            goto LABEL_17;
          }
        }

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v21 = nrCopyLogObj_sNRLogObj_1723;
        _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Sent discovery stop message: %@", ", "[NRDevicePairingManagerMux stopDiscoveryForPairingManager:withCompletion:]"", 634, v17, handler, v42, v43, v44);

        goto LABEL_16;
      }

      v23 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v29 = v23;
        v30 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (!v30)
        {
          goto LABEL_29;
        }
      }

      v31 = nrCopyLogObj_1710();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_29:
      v32 = _os_log_pack_size();
      v34 = &handler - ((MEMORY[0x28223BE20](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v32, *v35, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v36, "nr_xpc_dictionary_create");
      v37 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v37, v34);
    }

    v22 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v22;
      v26 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
LABEL_26:
        v28 = +[NRDevicePairingManager copyXPCError];
        (*(managerCopy + 2))(managerCopy, v28);

        goto LABEL_17;
      }
    }

    v27 = nrCopyLogObj_1710();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d Stop discovery request with no XPC connection", ", "[NRDevicePairingManagerMux stopDiscoveryForPairingManager:withCompletion:]"", 584);

    goto LABEL_26;
  }

LABEL_17:
}

void __75__NRDevicePairingManagerMux_stopDiscoveryForPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Stop discovery could not deliver message %@, error %@", ", "[NRDevicePairingManagerMux stopDiscoveryForPairingManager:withCompletion:]_block_invoke"", 624, *(a1 + 32), xdict);
        }

        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Stop discovery received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux stopDiscoveryForPairingManager:withCompletion:]_block_invoke"", 628, xdict), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_26:
        v8 = *(a1 + 40);
        objc_opt_self();
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = *MEMORY[0x277CCA450];
        v10 = v31;
        v32[0] = @"An XPC connection error occurred";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v12 = [v9 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v11];

        (*(v8 + 16))(v8, v12);
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        v31 = v10;
        v32[0] = @"An XPC connection error occurred";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v6 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v14];

        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v6];
LABEL_27:

        goto LABEL_28;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Stop discovery received unexpected XPC object", v26, v27, v28, v29);
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Stop discovery received XPC dict: %@", ", "[NRDevicePairingManagerMux stopDiscoveryForPairingManager:withCompletion:]_block_invoke"", 601, xdict);
    }

    v5 = xpc_dictionary_get_value(xdict, "Result");
    v6 = v5;
    if (v5)
    {
      if (MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v6);
        if (value)
        {
          v17 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_27;
      }

      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Stop discovery received invalid result type";
        goto LABEL_35;
      }

      v20 = v15;
      v21 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v21)
      {
        v16 = "Stop discovery received invalid result type";
        goto LABEL_43;
      }
    }

    else
    {
      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Stop discovery received response without result code";
LABEL_35:

LABEL_43:
        v22 = nrCopyLogObj_1710();
        _NRLogWithArgs(v22, 17, v16);

        goto LABEL_44;
      }

      v18 = v15;
      v19 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v19)
      {
        v16 = "Stop discovery received response without result code";
        goto LABEL_43;
      }
    }

LABEL_44:
    v23 = *(a1 + 40);
    v24 = +[NRDevicePairingManager copyXPCError];
    (*(v23 + 16))(v23, v24);

    v25 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v25];

    goto LABEL_27;
  }

LABEL_28:
}

- (void)sendAuthMethodRequestForDevice:(uint64_t)device authMethod:(void *)method pairingManager:(void *)manager withCompletion:
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a2;
  methodCopy = method;
  managerCopy = manager;
  if (self)
  {
    if (*(self + 24))
    {
      if (methodCopy)
      {
        v12 = methodCopy[11];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      uuid = [v13 uuid];

      uuid2 = [v9 uuid];
      v16 = [*(self + 16) objectForKeyedSubscript:uuid];
      v17 = v16;
      if (v16)
      {
        v18 = [*(v16 + 40) objectForKeyedSubscript:uuid2];

        if (!v18)
        {
          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d %@ Sending auth method request for %@", ", "[NRDevicePairingManagerMux sendAuthMethodRequestForDevice:authMethod:pairingManager:withCompletion:]"", 660, self, v9);
          }

          v19 = xpc_dictionary_create(0, 0, 0);
          if (v19)
          {
            v20 = v19;
            v21 = uuid;
            v22 = v21;
            if (v21)
            {
              *uuid = 0;
              v53 = 0;
              [v21 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v20, "PairingManager", uuid);
              goto LABEL_15;
            }

            v31 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v51 = v31;
              v50 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);

              if (!v50)
              {
                goto LABEL_15;
              }
            }

            v51 = nrCopyLogObj_1710();
            _NRLogWithArgs(v51, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_15:
            v23 = v20;
            v24 = uuid2;
            v25 = v24;
            if (v24)
            {
              *uuid = 0;
              v53 = 0;
              [v24 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v23, "TargetPairingCandidate", uuid);
LABEL_17:

              xpc_dictionary_set_uint64(v23, "AuthRequestType", device);
              xpc_dictionary_set_uint64(v23, "PairingManagerOperation", 6uLL);
              xpc_connection_send_message(*(self + 24), v23);
              v26 = MEMORY[0x25F8740C0](managerCopy);
              [v17[5] setObject:v26 forKeyedSubscript:v25];

LABEL_18:
LABEL_19:

              goto LABEL_20;
            }

            v32 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v51 = v32;
              v50 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);

              if (!v50)
              {
                goto LABEL_17;
              }
            }

            v51 = nrCopyLogObj_1710();
            _NRLogWithArgs(v51, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

            goto LABEL_17;
          }

          v30 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v40 = v30;
            v41 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

            if (!v41)
            {
              goto LABEL_41;
            }
          }

          v42 = nrCopyLogObj_1710();
          _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_41:
          v43 = _os_log_pack_size();
          v45 = &v49 - ((MEMORY[0x28223BE20](v43, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
          v46 = __error();
          v47 = _os_log_pack_fill(v45, v43, *v46, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
          __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v47, "nr_xpc_dictionary_create");
          v48 = nrCopyLogObj_1710();
          _NRLogAbortWithPack(v48, v45);
        }

        v29 = [NRDevicePairingManager copyErrorForCode:?];
LABEL_38:
        v39 = v29;
        managerCopy[2](managerCopy, v29);

        goto LABEL_18;
      }

      v28 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v36 = v28;
        v37 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

        if (!v37)
        {
LABEL_37:
          v29 = +[NRDevicePairingManager copyXPCError];
          goto LABEL_38;
        }
      }

      v38 = nrCopyLogObj_1710();
      _NRLogWithArgs(v38, 17, "Pairing manager %@ is not registered", uuid);

      goto LABEL_37;
    }

    v27 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v27;
      v34 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v34)
      {
LABEL_34:
        uuid = +[NRDevicePairingManager copyXPCError];
        managerCopy[2](managerCopy, uuid);
        goto LABEL_19;
      }
    }

    v35 = nrCopyLogObj_1710();
    _NRLogWithArgs(v35, 16, "%s%.30s:%-4d Auth method request with no XPC connection", ", "[NRDevicePairingManagerMux sendAuthMethodRequestForDevice:authMethod:pairingManager:withCompletion:]"", 643);

    goto LABEL_34;
  }

LABEL_20:
}

- (void)startPairingForPairingManager:(void *)manager pairingTarget:(void *)target withCompletion:
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a2;
  managerCopy = manager;
  targetCopy = target;
  if (self)
  {
    if (self[3])
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (v7)
        {
          v12 = v7[11];
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        uuid = [v13 uuid];
        v15 = v11;
        v16 = uuid;
        v17 = v16;
        if (v16)
        {
          *uuid = 0;
          v65 = 0;
          [v16 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v15, "PairingManager", uuid);
          goto LABEL_8;
        }

        v31 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v46 = v31;
          v47 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);

          if (!v47)
          {
            goto LABEL_8;
          }
        }

        v48 = nrCopyLogObj_1710();
        _NRLogWithArgs(v48, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v15, "PairingManagerOperation", 0xAuLL);
        if (!managerCopy)
        {
          goto LABEL_12;
        }

        v18 = v15;
        v19 = managerCopy;
        *uuid = 0;
        v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:uuid];
        v21 = *uuid;
        if (!v21 && [v20 length])
        {
          xpc_dictionary_set_data(v18, "PairingTarget", [v20 bytes], objc_msgSend(v20, "length"));

LABEL_12:
          objc_initWeak(uuid, self);
          v22 = self[3];
          v23 = self[4];
          handler = MEMORY[0x277D85DD0];
          v58 = 3221225472;
          v59 = __88__NRDevicePairingManagerMux_startPairingForPairingManager_pairingTarget_withCompletion___block_invoke;
          v60 = &unk_27996B328;
          objc_copyWeak(&v63, uuid);
          v62 = targetCopy;
          v24 = v15;
          v61 = v24;
          xpc_connection_send_message_with_reply(v22, v24, v23, &handler);

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v25 = nrCopyLogObj_sNRLogObj_1723;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v26 = v25;
            v27 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

            if (!v27)
            {
LABEL_20:

              objc_destroyWeak(&v63);
              objc_destroyWeak(uuid);
LABEL_21:

              goto LABEL_22;
            }
          }

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v28 = nrCopyLogObj_sNRLogObj_1723;
          _NRLogWithArgs(v28, 1, "%s%.30s:%-4d Sent pairing start message: %@", ", "[NRDevicePairingManagerMux startPairingForPairingManager:pairingTarget:withCompletion:]"", 815, v24, handler, v58, v59, v60);

          goto LABEL_20;
        }

        v32 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v49 = v32;
          v50 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);

          if (!v50)
          {
            goto LABEL_41;
          }
        }

        v51 = nrCopyLogObj_1710();
        _NRLogWithArgs(v51, 17, "Failed to archive %@: %@", v19, v21);

LABEL_41:
        v52 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v53 = v52;
          v54 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

          if (!v54)
          {
LABEL_45:
            v56 = +[NRDevicePairingManager copyXPCError];
            (*(targetCopy + 2))(targetCopy, v56, 1);

            goto LABEL_21;
          }
        }

        v55 = nrCopyLogObj_1710();
        _NRLogWithArgs(v55, 16, "%s%.30s:%-4d Start pairing request failed to serialize pairing target", ", "[NRDevicePairingManagerMux startPairingForPairingManager:pairingTarget:withCompletion:]"", 758);

        goto LABEL_45;
      }

      v30 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v37 = v30;
        v38 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

        if (!v38)
        {
          goto LABEL_36;
        }
      }

      v39 = nrCopyLogObj_1710();
      _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_36:
      v40 = _os_log_pack_size();
      v42 = &handler - ((MEMORY[0x28223BE20](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = __error();
      v44 = _os_log_pack_fill(v42, v40, *v43, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v44, "nr_xpc_dictionary_create");
      v45 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v45, v42);
    }

    v29 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v29;
      v34 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

      if (!v34)
      {
LABEL_33:
        v36 = +[NRDevicePairingManager copyXPCError];
        (*(targetCopy + 2))(targetCopy, v36, 1);

        goto LABEL_22;
      }
    }

    v35 = nrCopyLogObj_1710();
    _NRLogWithArgs(v35, 16, "%s%.30s:%-4d Start pairing request with no XPC connection", ", "[NRDevicePairingManagerMux startPairingForPairingManager:pairingTarget:withCompletion:]"", 747);

    goto LABEL_33;
  }

LABEL_22:
}

void __88__NRDevicePairingManagerMux_startPairingForPairingManager_pairingTarget_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v66[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Start pairing could not deliver message %@, error %@", ", "[NRDevicePairingManagerMux startPairingForPairingManager:pairingTarget:withCompletion:]_block_invoke"", 805, *(a1 + 32), xdict);
        }

        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Start pairing received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux startPairingForPairingManager:pairingTarget:withCompletion:]_block_invoke"", 809, xdict), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_26:
        v8 = *(a1 + 40);
        objc_opt_self();
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v65 = *MEMORY[0x277CCA450];
        v10 = v65;
        v66[0] = @"An XPC connection error occurred";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
        v12 = [v9 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v11];

        (*(v8 + 16))(v8, v12, 1);
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        v65 = v10;
        v66[0] = @"An XPC connection error occurred";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
        v6 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v14];

        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v6];
        goto LABEL_27;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Start pairing received unexpected XPC object", v60, v61, v62, v63);
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Start pairing received XPC dict: %@", ", "[NRDevicePairingManagerMux startPairingForPairingManager:pairingTarget:withCompletion:]_block_invoke"", 772, xdict);
    }

    v5 = xpc_dictionary_get_value(xdict, "Result");
    v6 = v5;
    if (v5)
    {
      if (MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v6);
        if (!value)
        {
          (*(*(a1 + 40) + 16))();
LABEL_27:

          goto LABEL_28;
        }

        if (value != -3007)
        {
          v37 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 40) + 16))();

          goto LABEL_27;
        }

        v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        v18 = xdict;
        v19 = v18;
        if (v18)
        {
          uuid = xpc_dictionary_get_uuid(v18, "NRUUID");
          if (!uuid)
          {
            v42 = nrCopyLogObj_1710();
            v43 = v42;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v54 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

              if (!v54)
              {
                goto LABEL_78;
              }
            }

            v55 = nrCopyLogObj_1710();
            _NRLogWithArgs(v55, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
LABEL_77:

            v22 = 0;
            goto LABEL_41;
          }

          v21 = uuid;
          if (!uuid_is_null(uuid))
          {
            v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v21];
            goto LABEL_41;
          }

          v46 = nrCopyLogObj_1710();
          v47 = v46;
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_76:
            v55 = nrCopyLogObj_1710();
            _NRLogWithArgs(v55, 16, "%s%.30s:%-4d UUID is null for key %s");
            goto LABEL_77;
          }

          v58 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

          if (v58)
          {
            goto LABEL_76;
          }

LABEL_78:
          v22 = 0;
LABEL_41:

          [v17 setObject:v22 forKeyedSubscript:@"NRDevicePairingErrorOriginalNRUUIDKey"];
          v23 = v19;
          v24 = v23;
          if (v19)
          {
            v25 = xpc_dictionary_get_uuid(v23, "BluetoothUUID");
            if (!v25)
            {
              v44 = nrCopyLogObj_1710();
              v45 = v44;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v56 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

                if (!v56)
                {
                  goto LABEL_82;
                }
              }

              v57 = nrCopyLogObj_1710();
              _NRLogWithArgs(v57, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
LABEL_81:

              v27 = 0;
              goto LABEL_45;
            }

            v26 = v25;
            if (!uuid_is_null(v25))
            {
              v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v26];
LABEL_45:

              [v17 setObject:v27 forKeyedSubscript:@"NRDevicePairingErrorOriginalCBUUIDKey"];
              v28 = [NRDevicePairingManager copyErrorForCode:v17 userInfo:?];
              (*(*(a1 + 40) + 16))();

              goto LABEL_27;
            }

            v48 = nrCopyLogObj_1710();
            v49 = v48;
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_80:
              v57 = nrCopyLogObj_1710();
              _NRLogWithArgs(v57, 16, "%s%.30s:%-4d UUID is null for key %s");
              goto LABEL_81;
            }

            v59 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

            if (v59)
            {
              goto LABEL_80;
            }

LABEL_82:
            v27 = 0;
            goto LABEL_45;
          }

          v40 = nrCopyLogObj_1710();
          v41 = v40;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v52 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

            if (!v52)
            {
              goto LABEL_82;
            }
          }

          v53 = nrCopyLogObj_1710();
          _NRLogWithArgs(v53, 17, "%s called with null dict", "nr_xpc_dictionary_get_nsuuid");

          v27 = 0;
          goto LABEL_45;
        }

        v38 = nrCopyLogObj_1710();
        v39 = v38;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v50 = os_log_type_enabled(v38, OS_LOG_TYPE_FAULT);

          if (!v50)
          {
            goto LABEL_78;
          }
        }

        v51 = nrCopyLogObj_1710();
        _NRLogWithArgs(v51, 17, "%s called with null dict", "nr_xpc_dictionary_get_nsuuid");

        v22 = 0;
        goto LABEL_41;
      }

      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Start pairing received invalid result type";
        goto LABEL_35;
      }

      v31 = v15;
      v32 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v32)
      {
        v16 = "Start pairing received invalid result type";
        goto LABEL_52;
      }
    }

    else
    {
      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Start pairing received response without result code";
LABEL_35:

LABEL_52:
        v33 = nrCopyLogObj_1710();
        _NRLogWithArgs(v33, 17, v16);

        goto LABEL_53;
      }

      v29 = v15;
      v30 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v30)
      {
        v16 = "Start pairing received response without result code";
        goto LABEL_52;
      }
    }

LABEL_53:
    v34 = *(a1 + 40);
    v35 = +[NRDevicePairingManager copyXPCError];
    (*(v34 + 16))(v34, v35, 1);

    v36 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v36];

    goto LABEL_27;
  }

LABEL_28:
}

- (void)stopPairingForPairingManager:(void *)manager withCompletion:
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  managerCopy = manager;
  if (self)
  {
    if (self[3])
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7)
      {
        v8 = v7;
        if (v5)
        {
          v9 = v5[11];
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        uuid = [v10 uuid];
        v12 = v8;
        v13 = uuid;
        v14 = v13;
        if (v13)
        {
          *uuid = 0;
          v49 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v12, "PairingManager", uuid);
          goto LABEL_8;
        }

        v24 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v38 = v24;
          v39 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

          if (!v39)
          {
            goto LABEL_8;
          }
        }

        v40 = nrCopyLogObj_1710();
        _NRLogWithArgs(v40, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v12, "PairingManagerOperation", 0xBuLL);
        objc_initWeak(uuid, self);
        v15 = self[3];
        v16 = self[4];
        handler = MEMORY[0x277D85DD0];
        v42 = 3221225472;
        v43 = __73__NRDevicePairingManagerMux_stopPairingForPairingManager_withCompletion___block_invoke;
        v44 = &unk_27996B328;
        objc_copyWeak(&v47, uuid);
        v46 = managerCopy;
        v17 = v12;
        v45 = v17;
        xpc_connection_send_message_with_reply(v15, v17, v16, &handler);

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v18 = nrCopyLogObj_sNRLogObj_1723;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v19 = v18;
          v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

          if (!v20)
          {
LABEL_16:

            objc_destroyWeak(&v47);
            objc_destroyWeak(uuid);

            goto LABEL_17;
          }
        }

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v21 = nrCopyLogObj_sNRLogObj_1723;
        _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Sent pairing stop message: %@", ", "[NRDevicePairingManagerMux stopPairingForPairingManager:withCompletion:]"", 871, v17, handler, v42, v43, v44);

        goto LABEL_16;
      }

      v23 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v29 = v23;
        v30 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (!v30)
        {
          goto LABEL_29;
        }
      }

      v31 = nrCopyLogObj_1710();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_29:
      v32 = _os_log_pack_size();
      v34 = &handler - ((MEMORY[0x28223BE20](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = __error();
      v36 = _os_log_pack_fill(v34, v32, *v35, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v36, "nr_xpc_dictionary_create");
      v37 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v37, v34);
    }

    v22 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v22;
      v26 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
LABEL_26:
        v28 = +[NRDevicePairingManager copyXPCError];
        (*(managerCopy + 2))(managerCopy, v28);

        goto LABEL_17;
      }
    }

    v27 = nrCopyLogObj_1710();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d Stop pairing request no XPC connection", ", "[NRDevicePairingManagerMux stopPairingForPairingManager:withCompletion:]"", 822);

    goto LABEL_26;
  }

LABEL_17:
}

void __73__NRDevicePairingManagerMux_stopPairingForPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Stop pairing could not deliver message %@, error %@", ", "[NRDevicePairingManagerMux stopPairingForPairingManager:withCompletion:]_block_invoke"", 861, *(a1 + 32), xdict);
        }

        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Stop pairing received unexpected XPC object: %@", ", "[NRDevicePairingManagerMux stopPairingForPairingManager:withCompletion:]_block_invoke"", 865, xdict), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_11;
        }
      }

      else if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
      {
LABEL_26:
        v8 = *(a1 + 40);
        objc_opt_self();
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v32 = *MEMORY[0x277CCA450];
        v10 = v32;
        v33[0] = @"An XPC connection error occurred";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        v12 = [v9 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v11];

        (*(v8 + 16))(v8, v12);
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        v32 = v10;
        v33[0] = @"An XPC connection error occurred";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        v6 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v14];

        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v6];
LABEL_27:

        goto LABEL_28;
      }

LABEL_11:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Stop pairing received unexpected XPC object", v27, v28, v29, v30);
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Stop pairing received XPC dict: %@", ", "[NRDevicePairingManagerMux stopPairingForPairingManager:withCompletion:]_block_invoke"", 839, xdict);
    }

    v5 = xpc_dictionary_get_value(xdict, "Result");
    v6 = v5;
    if (v5)
    {
      if (MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v6);
        if (value)
        {
          v17 = *(a1 + 40);
          v18 = [NRDevicePairingManager copyErrorForCode:?];
          (*(v17 + 16))(v17, v18);
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_27;
      }

      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Stop pairing received invalid result type";
        goto LABEL_35;
      }

      v21 = v15;
      v22 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v22)
      {
        v16 = "Stop pairing received invalid result type";
        goto LABEL_43;
      }
    }

    else
    {
      v15 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v16 = "Stop pairing received response without result code";
LABEL_35:

LABEL_43:
        v23 = nrCopyLogObj_1710();
        _NRLogWithArgs(v23, 17, v16);

        goto LABEL_44;
      }

      v19 = v15;
      v20 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (v20)
      {
        v16 = "Stop pairing received response without result code";
        goto LABEL_43;
      }
    }

LABEL_44:
    v24 = *(a1 + 40);
    v25 = +[NRDevicePairingManager copyXPCError];
    (*(v24 + 16))(v24, v25);

    v26 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v26];

    goto LABEL_27;
  }

LABEL_28:
}

@end