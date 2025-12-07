@interface NRDevicePreferencesQuickRelay
- (NRDevicePreferencesQuickRelay)initWithNRUUID:(id)d;
- (uint64_t)assertAgent;
- (void)addQuickRelayRequest;
- (void)dealloc;
- (void)removeAllQuickRelayRequests;
- (void)removeQuickRelayRequest;
- (void)resetInner;
- (void)setAssertCount:(uint64_t)count;
- (void)updateAgentUUID:(uint64_t)d;
@end

@implementation NRDevicePreferencesQuickRelay

- (void)removeAllQuickRelayRequests
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NRDevicePreferencesQuickRelay_removeAllQuickRelayRequests__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetInner
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d Resetting state", ", "[NRDevicePreferencesQuickRelay resetInner]"", 54);
    }

    [(NRDevicePreferencesQuickRelay *)self setAssertCount:?];
    *(self + 8) = 0;
    v2 = *(self + 32);
    *(self + 32) = 0;

    v3 = *(self + 40);
    *(self + 40) = 0;

    if (*(self + 48))
    {
      nw_path_evaluator_cancel();
      v4 = *(self + 48);
      *(self + 48) = 0;
    }
  }
}

- (void)setAssertCount:(uint64_t)count
{
  if (count)
  {
    dispatch_assert_queue_V2(*(count + 16));
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d Setting quick relay assert count: %ld -> %ld", ", "[NRDevicePreferencesQuickRelay setAssertCount:]"", 70, *(count + 56), a2);
    }

    *(count + 56) = a2;
  }
}

- (void)removeQuickRelayRequest
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NRDevicePreferencesQuickRelay_removeQuickRelayRequest__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__NRDevicePreferencesQuickRelay_removeQuickRelayRequest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(v2 + 56)) != 0)
  {
    [(NRDevicePreferencesQuickRelay *)v2 setAssertCount:?];
    v4 = *(a1 + 32);
    if (v4 && *(v4 + 56))
    {
      return;
    }

    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d All clients of quick relay went away");
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 17, "No quick relay request to disable");
    }
  }

  v5 = *(a1 + 32);

  [(NRDevicePreferencesQuickRelay *)v5 resetInner];
}

- (void)addQuickRelayRequest
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NRDevicePreferencesQuickRelay_addQuickRelayRequest__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__NRDevicePreferencesQuickRelay_addQuickRelayRequest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 48))
  {
    [(NRDevicePreferencesQuickRelay *)v2 setAssertCount:?];
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 40);
    }

    else
    {
      v4 = 0;
    }

    if (nw_path_get_status(v4) == nw_path_status_satisfied)
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        v25 = 0;
        v26 = *(a1 + 32);
        if (v26)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v6 = *(v5 + 16);
      dispatch_assert_queue_V2(v6);

      v7 = *(v5 + 40);
      if (v7)
      {
        v8 = v7;
        v9 = nw_path_copy_netagent_dictionary();

        if (v9 && MEMORY[0x25F8746E0](v9) == MEMORY[0x277D86468])
        {
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = __50__NRDevicePreferencesQuickRelay_shouldAssertAgent__block_invoke;
          applier[3] = &unk_27996B080;
          applier[4] = &v36;
          xpc_dictionary_apply(v9, applier);
        }

        else
        {
          if (nrCopyLogObj_onceToken_1053 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
          }

          v10 = nrCopyLogObj_sNRLogObj_1055;
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_33:
            if (nrCopyLogObj_onceToken_1053 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
            }

            v30 = nrCopyLogObj_sNRLogObj_1055;
            _NRLogWithArgs(v30, 1, "%s%.30s:%-4d No netagents to retrieve agent UUID", ", "[NRDevicePreferencesQuickRelay shouldAssertAgent]"", 122);

            goto LABEL_49;
          }

          v28 = v10;
          v29 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

          if (v29)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        if (nrCopyLogObj_onceToken_1053 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
        }

        v27 = nrCopyLogObj_sNRLogObj_1055;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v31 = v27;
          v32 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

          if (!v32)
          {
            goto LABEL_50;
          }
        }

        if (nrCopyLogObj_onceToken_1053 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
        }

        v9 = nrCopyLogObj_sNRLogObj_1055;
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d No path to retrieve agent data", ", "[NRDevicePreferencesQuickRelay shouldAssertAgent]"", 116);
      }

LABEL_49:

LABEL_50:
      v25 = *(v37 + 24);
      _Block_object_dispose(&v36, 8);
      v26 = *(a1 + 32);
      if (v26)
      {
LABEL_51:
        v33 = *(v26 + 40);
        goto LABEL_52;
      }

LABEL_57:
      v33 = 0;
LABEL_52:
      if (((nw_path_get_status(v33) == nw_path_status_satisfied) & v25) == 1)
      {
        [(NRDevicePreferencesQuickRelay *)*(a1 + 32) assertAgent];
      }
    }
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x277CD91F0]);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 24);
    }

    else
    {
      v12 = 0;
    }

    v13 = nrCopyAccountIdentifierForNRUUID(v12);
    [v34 setAccount:v13];

    [v34 requireNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"QuickRelayAgent"];
    v14 = [v34 copyCParameters];
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    v16 = nw_path_evaluator_copy_path();
    status = nw_path_get_status(v16);
    v18 = *(a1 + 32);
    if (status != nw_path_status_satisfied && v18)
    {
      *(v18 + 8) = 1;
      v18 = *(a1 + 32);
    }

    [(NRDevicePreferencesQuickRelay *)v18 updateAgentUUID:v16];
    v19 = *(a1 + 32);
    if (v19 && (*(v19 + 32) || (*(v19 + 8) & 1) != 0))
    {
      v20 = evaluator_for_endpoint;
      nw_path_evaluator_set_update_handler();
      v21 = *(a1 + 32);
      if (v21 && (objc_storeStrong((v21 + 48), evaluator_for_endpoint), (v22 = *(a1 + 32)) != 0))
      {
        objc_storeStrong((v22 + 40), v16);
        v23 = *(a1 + 32);
        if (v23)
        {
          v24 = *(v23 + 56) + 1;
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        v23 = 0;
        v24 = 1;
      }

      [(NRDevicePreferencesQuickRelay *)v23 setAssertCount:v24];

      v25 = 1;
      v26 = *(a1 + 32);
      if (v26)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 16, "%s%.30s:%-4d Failed to get agent UUID", ", "[NRDevicePreferencesQuickRelay addQuickRelayRequest]_block_invoke"", 195);
    }
  }
}

- (void)updateAgentUUID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    dispatch_assert_queue_V2(*(d + 16));
    v4 = *(d + 32);
    *(d + 32) = 0;

    if (v3)
    {
      v5 = nw_path_copy_netagent_dictionary();
      v6 = v5;
      if (v5 && MEMORY[0x25F8746E0](v5) == MEMORY[0x277D86468])
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __49__NRDevicePreferencesQuickRelay_updateAgentUUID___block_invoke;
        applier[3] = &unk_27996B058;
        applier[4] = d;
        xpc_dictionary_apply(v6, applier);
      }

      else
      {
        if (nrCopyLogObj_onceToken_1053 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d No netagents to retrieve agent UUID", ", "[NRDevicePreferencesQuickRelay updateAgentUUID:]"", 85);
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_1053 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d No path to retrieve agent UUID", ", "[NRDevicePreferencesQuickRelay updateAgentUUID:]"", 79);
      }
    }
  }
}

void __53__NRDevicePreferencesQuickRelay_addQuickRelayRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(v4 + 48) != *(a1 + 40))
    {
      goto LABEL_3;
    }

    if (*(v4 + 56))
    {
      objc_storeStrong((v4 + 40), a2);
      if (nrCopyLogObj_onceToken_1053 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 40);
        }

        else
        {
          v10 = 0;
        }

        v11 = nrCopyLogObj_sNRLogObj_1055;
        _NRLogWithArgs(v11, 1, "%s%.30s:%-4d Received path: %@", ", "[NRDevicePreferencesQuickRelay addQuickRelayRequest]_block_invoke_2"", 216, v10);
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        [(NRDevicePreferencesQuickRelay *)v12 updateAgentUUID:?];
        v13 = *(a1 + 32);
        if (v13)
        {
LABEL_24:
          v14 = *(v13 + 40);
          goto LABEL_25;
        }
      }

      else
      {
        v13 = *(a1 + 32);
        if (v13)
        {
          goto LABEL_24;
        }
      }

      v14 = 0;
LABEL_25:
      status = nw_path_get_status(v14);
      if ((status & 0xFFFFFFFE) == 2)
      {
        v16 = *(a1 + 32);
        if (v16 && *(v16 + 56))
        {
          *(v16 + 8) = 1;
        }

        goto LABEL_11;
      }

      if (status != nw_path_status_satisfied)
      {
        goto LABEL_11;
      }

      v17 = *(a1 + 32);
      if (!v17 || !*(v17 + 56) || *(v17 + 8) != 1)
      {
        goto LABEL_11;
      }

      v18 = *(v17 + 32);
      v19 = nrCopyLogObj_1074();
      if (!v18)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v24 = v19;
          v25 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

          if (!v25)
          {
            goto LABEL_11;
          }
        }

        v8 = nrCopyLogObj_1074();
        _NRLogWithArgs(v8, 17, "No agent UUID while path is satisfied", v26, v27, v28, v29);
LABEL_10:

        goto LABEL_11;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v20 = v19;
        v21 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);

        if (!v21)
        {
          goto LABEL_40;
        }
      }

      v22 = nrCopyLogObj_1074();
      _NRLogWithArgs(v22, 1, "%s%.30s:%-4d Reasserting the agent", ", "[NRDevicePreferencesQuickRelay addQuickRelayRequest]_block_invoke_2"", 231);

LABEL_40:
      [(NRDevicePreferencesQuickRelay *)*(a1 + 32) assertAgent];
      v23 = *(a1 + 32);
      if (v23)
      {
        *(v23 + 8) = 0;
      }

      goto LABEL_11;
    }

LABEL_45:
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 17, "Received path update when we have no requests");
    }

    goto LABEL_11;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_45;
  }

LABEL_3:
  if (nrCopyLogObj_onceToken_1053 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v5)
    {
      v7 = *(v5 + 48);
    }

    else
    {
      v7 = 0;
    }

    v8 = nrCopyLogObj_sNRLogObj_1055;
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Ignoring path evaluator update for a stale evaluator: old: %@, new: %@", ", "[NRDevicePreferencesQuickRelay addQuickRelayRequest]_block_invoke_2"", 205, v6, v7);
    goto LABEL_10;
  }

LABEL_11:
}

- (uint64_t)assertAgent
{
  v2[2] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    v2[0] = 0;
    v2[1] = 0;
    [*(v1 + 32) getUUIDBytes:v2];
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 0, "%s%.30s:%-4d adding quick relay request (count is now %ld)", ", "[NRDevicePreferencesQuickRelay assertAgent]"", 160, *(v1 + 56));
    }

    return nw_path_assert_agent();
  }

  return result;
}

uint64_t __49__NRDevicePreferencesQuickRelay_updateAgentUUID___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "com.apple.networkrelay") && !strcmp(v6 + 48, "QuickRelayAgent"))
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v6];
      v8 = *(a1 + 32);
      if (v8)
      {
        objc_storeStrong((v8 + 32), v7);
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

uint64_t __50__NRDevicePreferencesQuickRelay_shouldAssertAgent__block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data)
  {
    if (length >= 0xD8)
    {
      v6 = *(data + 53);
      if (length == v6 + 216)
      {
        v7 = data;
        if (!strcmp(data + 16, "com.apple.networkrelay") && ((v8 = strcmp(v7 + 48, "QuickRelayAgent"), v6 == 1) ? (v9 = v8 == 0) : (v9 = 0), v9))
        {
          __memcpy_chk();
          result = 0;
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (void)dealloc
{
  if (self)
  {
    path = self->_path;
    self->_path = 0;

    if (self->_pathEvaluator)
    {
      nw_path_evaluator_cancel();
      pathEvaluator = self->_pathEvaluator;
      self->_pathEvaluator = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NRDevicePreferencesQuickRelay;
  [(NRDevicePreferencesQuickRelay *)&v5 dealloc];
}

- (NRDevicePreferencesQuickRelay)initWithNRUUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v10 = nrCopyLogObj_1074();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v10;
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
LABEL_12:
        v15 = _os_log_pack_size();
        v17 = &v28 - ((MEMORY[0x28223BE20](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v15, *v18, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL nrUUID");
        *v19 = 136446466;
        *(v19 + 4) = "[NRDevicePreferencesQuickRelay initWithNRUUID:]";
        *(v19 + 12) = 2080;
        *(v19 + 14) = "[NRDevicePreferencesQuickRelay initWithNRUUID:]";
        goto LABEL_16;
      }
    }

    v14 = nrCopyLogObj_1074();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL nrUUID", ", "[NRDevicePreferencesQuickRelay initWithNRUUID:]", 34, "[NRDevicePreferencesQuickRelay initWithNRUUID:]"");

    goto LABEL_12;
  }

  v5 = dCopy;
  v29.receiver = self;
  v29.super_class = NRDevicePreferencesQuickRelay;
  v6 = [(NRDevicePreferencesQuickRelay *)&v29 init];
  if (!v6)
  {
    v11 = nrCopyLogObj_1074();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v11;
      v21 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v21)
      {
LABEL_15:
        v23 = _os_log_pack_size();
        v17 = &v28 - ((MEMORY[0x28223BE20](v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = _os_log_pack_fill(v17, v23, *v25, &dword_25B98C000, "%{public}s [super init] failed");
        *v26 = 136446210;
        *(v26 + 4) = "[NRDevicePreferencesQuickRelay initWithNRUUID:]";
LABEL_16:
        v27 = nrCopyLogObj_1074();
        _NRLogAbortWithPack(v27, v17);
      }
    }

    v22 = nrCopyLogObj_1074();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePreferencesQuickRelay initWithNRUUID:]"", 35);

    goto LABEL_15;
  }

  v7 = v6;
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  objc_storeStrong(&v7->_queue, nrXPCCopyQueue_nrXPCQueue);
  nrUUID = v7->_nrUUID;
  v7->_nrUUID = v5;

  return v7;
}

@end