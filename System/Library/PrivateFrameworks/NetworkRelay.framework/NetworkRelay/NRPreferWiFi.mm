@interface NRPreferWiFi
- (NRPreferWiFi)init;
- (void)dealloc;
- (void)resetInner;
- (void)updateAgentUUID:(uint64_t)d;
@end

@implementation NRPreferWiFi

- (void)dealloc
{
  if (self)
  {
    path = self->_path;
    self->_path = 0;

    if (self->_evaluator)
    {
      nw_path_evaluator_cancel();
      evaluator = self->_evaluator;
      self->_evaluator = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NRPreferWiFi;
  [(NRPreferWiFi *)&v5 dealloc];
}

- (NRPreferWiFi)init
{
  v30 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = NRPreferWiFi;
  v2 = [(NRPreferWiFi *)&v29 init];
  if (!v2)
  {
    v8 = nrCopyLogObj_68();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v8;
      v11 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v12 = nrCopyLogObj_68();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRPreferWiFi init]"", 77);

LABEL_15:
    v13 = _os_log_pack_size();
    v15 = &v28 - ((MEMORY[0x28223BE20](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(v15, v13, *v16, &dword_25B98C000, "%{public}s [super init] failed");
    *v17 = 136446210;
    *(v17 + 4) = "[NRPreferWiFi init]";
    v18 = nrCopyLogObj_68();
    _NRLogAbortWithPack(v18, v15);
  }

  v3 = v2;
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    v4 = 0;
  }

  else
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  v5 = dispatch_queue_create("com.apple.networkrelay.preferWiFi", v4);

  if (!v5)
  {
    v9 = nrCopyLogObj_68();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v9;
      v20 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v20)
      {
        goto LABEL_18;
      }
    }

    v21 = nrCopyLogObj_68();
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", ", "nr_dispatch_queue_create", 196, "com.apple.networkrelay.preferWiFi"");

LABEL_18:
    v22 = _os_log_pack_size();
    v24 = &v28 - ((MEMORY[0x28223BE20](v22, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __error();
    v26 = _os_log_pack_fill(v24, v22, *v25, &dword_25B98C000, "%{public}s dispatch_queue_create(%s) failed");
    *v26 = 136446466;
    *(v26 + 4) = "nr_dispatch_queue_create";
    *(v26 + 12) = 2080;
    *(v26 + 14) = "com.apple.networkrelay.preferWiFi";
    v27 = nrCopyLogObj_68();
    _NRLogAbortWithPack(v27, v24);
  }

  queue = v3->_queue;
  v3->_queue = v5;

  return v3;
}

uint64_t __30__NRPreferWiFi_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NRPreferWiFi);
  v1 = sharedInstance_gPreferWiFiInstance;
  sharedInstance_gPreferWiFiInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __36__NRPreferWiFi_sharedInstanceForP2P__block_invoke()
{
  v0 = objc_alloc_init(NRPreferWiFi);
  v1 = sharedInstanceForP2P_gPreferP2PWiFiInstance;
  sharedInstanceForP2P_gPreferP2PWiFiInstance = v0;

  if (sharedInstanceForP2P_gPreferP2PWiFiInstance)
  {
    *(sharedInstanceForP2P_gPreferP2PWiFiInstance + 9) = 1;
  }
}

void __45__NRPreferWiFi_sharedInstanceForP2PImmediate__block_invoke()
{
  v0 = objc_alloc_init(NRPreferWiFi);
  v1 = sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance;
  sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance = v0;

  if (sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance)
  {
    *(sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance + 9) = 257;
  }
}

- (void)resetInner
{
  if (!self)
  {
    return;
  }

  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Resetting state", ", "[NRPreferWiFi resetInner]"", 117), nrCopyLogObj_onceToken_75 != -1))
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_9;
    }
  }

  else if (sNRCopyLogToStdErr)
  {
LABEL_9:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", ", "[NRPreferWiFi setAssertCount:]"", 93, *(self + 40), 0);
    goto LABEL_10;
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    goto LABEL_9;
  }

LABEL_10:
  v2 = *(self + 48);
  *(self + 40) = 0;
  *(self + 48) = 0;
  *(self + 8) = 0;

  v3 = *(self + 56);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(self + 56);
    *(self + 56) = 0;
  }

  v5 = *(self + 24);
  *(self + 24) = 0;

  if (*(self + 32))
  {
    nw_path_evaluator_cancel();
    v6 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (void)updateAgentUUID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    v4 = *(d + 48);
    *(d + 48) = 0;

    if (v3)
    {
      v5 = nw_path_copy_netagent_dictionary();
      v6 = v5;
      if (v5 && MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86468])
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __32__NRPreferWiFi_updateAgentUUID___block_invoke;
        applier[3] = &unk_27996B058;
        applier[4] = d;
        xpc_dictionary_apply(v6, applier);
      }

      else
      {
        if (nrCopyLogObj_onceToken_75 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 16, "%s%.30s:%-4d No netagents to retrieve agent UUID", ", "[NRPreferWiFi updateAgentUUID:]"", 146);
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_75 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 16, "%s%.30s:%-4d No path to update agent UUID", ", "[NRPreferWiFi updateAgentUUID:]"", 140);
      }
    }
  }
}

uint64_t __32__NRPreferWiFi_updateAgentUUID___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "com.apple.networkrelay") && !strcmp(v6 + 48, "PreferWiFi"))
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v6];
      v8 = *(a1 + 32);
      if (v8)
      {
        objc_storeStrong((v8 + 48), v7);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void __30__NRPreferWiFi_submitRequest___block_invoke(uint64_t a1)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v5 = (a1 + 40);
    if (!*(a1 + 40))
    {
LABEL_85:
      if (nrCopyLogObj_onceToken_75 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Ignoring setting prefer Wi-Fi to %d", ", "[NRPreferWiFi submitRequest:]_block_invoke"", 176, *v5);
      }

      return;
    }

    goto LABEL_11;
  }

  v3 = *(v2 + 40);
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == (v3 != 0))
  {
    if (v3)
    {
      v6 = *(v2 + 24);
      v7 = *(a1 + 32);
      if (v6)
      {
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (!v7)
        {
          goto LABEL_68;
        }

        if (*(v7 + 40))
        {
          goto LABEL_51;
        }
      }

      v8 = *(v7 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 40);

          if (!v10)
          {
            goto LABEL_51;
          }

          goto LABEL_69;
        }

LABEL_51:
        if (nrCopyLogObj_onceToken_75 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
        {
          v29 = *(a1 + 32);
          if (v29)
          {
            v30 = *(v29 + 24);
            v31 = *(v29 + 40);
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }

          v35 = nrCopyLogObj_sNRLogObj_76;
          _NRLogWithArgs(v35, 17, "Something went wrong <path: %@, assert count: %ld>", v30, v31);
        }

        return;
      }

LABEL_68:

LABEL_69:
      v33 = *(a1 + 32);
      if (v33)
      {
        v34 = *(v33 + 40) + 1;
        if (nrCopyLogObj_onceToken_75 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", ", "[NRPreferWiFi setAssertCount:]"", 93, *(v33 + 40), v34);
        }

        *(v33 + 40) = v34;
      }

      return;
    }

    goto LABEL_85;
  }

  if (v4)
  {
LABEL_11:
    v11 = objc_alloc_init(MEMORY[0x277CD91F0]);
    [v11 requireNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"PreferWiFi"];
    v12 = *(a1 + 32);
    if (v12)
    {
      LOBYTE(v12) = *(v12 + 9);
    }

    [v11 setUseP2P:v12 & 1];
    v13 = *(a1 + 32);
    if (v13 && *(v13 + 9) == 1 && *(v13 + 10) == 1)
    {
      [v11 setTrafficClass:300];
    }

    v14 = [v11 copyCParameters];
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    nw_path_evaluator_set_update_handler();
    v16 = nw_path_evaluator_copy_path();
    status = nw_path_get_status(v16);
    v18 = status;
    if (status <= nw_path_status_satisfiable && status != nw_path_status_satisfied)
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        *(v20 + 8) = 1;
      }
    }

    [(NRPreferWiFi *)*(a1 + 32) updateAgentUUID:v16];
    v21 = *(a1 + 32);
    if (v21 && (*(v21 + 48) || (*(v21 + 8) & 1) != 0))
    {
      objc_storeStrong((v21 + 32), evaluator_for_endpoint);
      v22 = *(a1 + 32);
      if (v22)
      {
        objc_storeStrong((v22 + 24), v16);
        v23 = *(a1 + 32);
        if (v23)
        {
          v24 = *(v23 + 40) + 1;
          if (nrCopyLogObj_onceToken_75 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", ", "[NRPreferWiFi setAssertCount:]"", 93, *(v23 + 40), v24);
          }

          *(v23 + 40) = v24;
          v25 = *(a1 + 32);
          if (v25)
          {
            if (v18 == nw_path_status_satisfied)
            {
              v26 = *(v25 + 48);
              if (v26)
              {
                v36[0] = 0;
                v36[1] = 0;
                [v26 getUUIDBytes:v36];
                nw_path_assert_agent();
              }
            }
          }
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_75 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 16, "%s%.30s:%-4d Failed to get agent UUID", ", "[NRPreferWiFi submitRequest:]_block_invoke"", 254);
      }
    }

    return;
  }

  if (!v3)
  {
    if (nrCopyLogObj_onceToken_75 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 17, "No prefer Wi-Fi request to disable");
    }

    goto LABEL_65;
  }

  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  v27 = v3 - 1;
  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", ", "[NRPreferWiFi setAssertCount:]"", 93, *(v2 + 40), v27);
  }

  *(v2 + 40) = v27;
  v28 = *(a1 + 32);
  if (!v28 || !*(v28 + 40))
  {
    if (nrCopyLogObj_onceToken_75 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_48;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_48;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
    {
LABEL_65:
      v32 = *(a1 + 32);

      [(NRPreferWiFi *)v32 resetInner];
      return;
    }

LABEL_48:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d All clients of prefer Wi-Fi went away");
    goto LABEL_65;
  }
}

void __30__NRPreferWiFi_submitRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5 || !*(v5 + 40))
  {
    if (nrCopyLogObj_onceToken_75 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_20;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_40;
    }

LABEL_20:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 17, "Received path update when we have no requests");
    goto LABEL_40;
  }

  objc_storeStrong((v5 + 24), a2);
  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = nrCopyLogObj_sNRLogObj_76;
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d Received path: %@", ", "[NRPreferWiFi submitRequest:]_block_invoke_2"", 214, v7);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    [(NRPreferWiFi *)v9 updateAgentUUID:?];
    v10 = *(a1 + 32);
    if (v10)
    {
LABEL_12:
      v11 = *(v10 + 24);
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
LABEL_13:
  status = nw_path_get_status(v11);
  if ((status & 0xFFFFFFFE) == 2)
  {
    v13 = *(a1 + 32);
    if (v13 && *(v13 + 40))
    {
      *(v13 + 8) = 1;
    }

    goto LABEL_40;
  }

  if (status != nw_path_status_satisfied)
  {
    goto LABEL_40;
  }

  v14 = *(a1 + 32);
  if (!v14 || !*(v14 + 40) || *(v14 + 8) != 1)
  {
    goto LABEL_40;
  }

  if (!*(v14 + 48))
  {
    if (nrCopyLogObj_onceToken_75 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_39;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_40;
    }

LABEL_39:
    v18 = nrCopyLogObj_68();
    _NRLogWithArgs(v18, 17, "No agent UUID while path is satisfied");

    goto LABEL_40;
  }

  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_30;
    }

LABEL_29:
    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ((sNRCopyLogToStdErr & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Reasserting the agent", ", "[NRPreferWiFi submitRequest:]_block_invoke_2"", 229);
LABEL_31:
  v19[0] = 0;
  v19[1] = 0;
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 48);
  }

  else
  {
    v16 = 0;
  }

  [v16 getUUIDBytes:v19];
  nw_path_assert_agent();
  v17 = *(a1 + 32);
  if (v17)
  {
    *(v17 + 8) = 0;
  }

LABEL_40:
}

@end