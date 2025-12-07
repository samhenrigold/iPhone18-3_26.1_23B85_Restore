BOOL nrXPCCompanionFlushBTPipe()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_82;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x30uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionFlushBTPipe", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v6 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        goto LABEL_62;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received nil response");
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "Result");
    v8 = v7;
    if (!v7)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v7) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v8);
    if (!value)
    {
      v6 = 1;
      goto LABEL_35;
    }

    v10 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v14 = nrCopyLogObj_sNRLogObj_2653;
      if (!v10)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v18 = v14;
          v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_34;
          }
        }

        v20 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v10);
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionFlushBTPipe", 758, v10, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v14;
        v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

        if (!v16)
        {
LABEL_34:
          v6 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v11 = nrCopyLogObj_2646();
      v17 = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v11, 17, "received internal failure result code: [%lld] %@", v10, v17);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v11 = nrCopyLogObj_2646();
      _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionFlushBTPipe", 758);
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v5 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v5);
      }

      if (v5)
      {
        goto LABEL_11;
      }

LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v6 = 0;
    goto LABEL_62;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v5);
  }

  if (!v5)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v5);
  v6 = 0;
LABEL_62:

  return v6;
}

BOOL nrXPCCompanionEnableCloudLink()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_82;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x17uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionEnableCloudLink", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v6 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        goto LABEL_62;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received nil response");
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "Result");
    v8 = v7;
    if (!v7)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v7) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v8);
    if (!value)
    {
      v6 = 1;
      goto LABEL_35;
    }

    v10 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v14 = nrCopyLogObj_sNRLogObj_2653;
      if (!v10)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v18 = v14;
          v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_34;
          }
        }

        v20 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v10);
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionEnableCloudLink", 767, v10, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v14;
        v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

        if (!v16)
        {
LABEL_34:
          v6 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v11 = nrCopyLogObj_2646();
      v17 = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v11, 17, "received internal failure result code: [%lld] %@", v10, v17);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v11 = nrCopyLogObj_2646();
      _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionEnableCloudLink", 767);
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v5 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v5);
      }

      if (v5)
      {
        goto LABEL_11;
      }

LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v6 = 0;
    goto LABEL_62;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v5);
  }

  if (!v5)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v5);
  v6 = 0;
LABEL_62:

  return v6;
}

BOOL nrXPCCompanionDisableCloudLink()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_82;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x18uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionDisableCloudLink", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v6 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v6)
      {
        goto LABEL_62;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received nil response");
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "Result");
    v8 = v7;
    if (!v7)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v7) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v8);
    if (!value)
    {
      v6 = 1;
      goto LABEL_35;
    }

    v10 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v14 = nrCopyLogObj_sNRLogObj_2653;
      if (!v10)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v18 = v14;
          v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

          if (!v19)
          {
            goto LABEL_34;
          }
        }

        v20 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v10);
        _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionDisableCloudLink", 776, v10, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v14;
        v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

        if (!v16)
        {
LABEL_34:
          v6 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v11 = nrCopyLogObj_2646();
      v17 = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v11, 17, "received internal failure result code: [%lld] %@", v10, v17);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v11 = nrCopyLogObj_2646();
      _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionDisableCloudLink", 776);
        v6 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v5 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v5);
      }

      if (v5)
      {
        goto LABEL_11;
      }

LABEL_61:
      v6 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v6 = 0;
    goto LABEL_62;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v5);
  }

  if (!v5)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v5);
  v6 = 0;
LABEL_62:

  return v6;
}

BOOL nrXPCCompanionSetWatchRoleSwitchAllowed(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x26uLL);
  xpc_dictionary_set_BOOL(v3, "WatchRoleSwitchAllowed", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetWatchRoleSwitchAllowed", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetWatchRoleSwitchAllowed", 786, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetWatchRoleSwitchAllowed", 786);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSetSimulateAltAccount(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x25uLL);
  xpc_dictionary_set_BOOL(v3, "SimulateAltAccount", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetSimulateAltAccount", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetSimulateAltAccount", 796, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetSimulateAltAccount", 796);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSetRangeExtensionAllowed(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1DuLL);
  xpc_dictionary_set_BOOL(v3, "WiFiRangeExtensionAllowed", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetRangeExtensionAllowed", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetRangeExtensionAllowed", 806, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetRangeExtensionAllowed", 806);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSetCompanionAPLForTesting(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x35uLL);
  xpc_dictionary_set_BOOL(v3, "TestCompanionAPL", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetCompanionAPLForTesting", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetCompanionAPLForTesting", 816, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetCompanionAPLForTesting", 816);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSetTetheringBundleIDs(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_84;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_84:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x33uLL);
  if (v1)
  {
    xpc_dictionary_set_string(v3, "TetheringBundleIDs", [v1 UTF8String]);
  }

  v4 = nrXPCSendSyncInner("nrXPCCompanionSetTetheringBundleIDs", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_64;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_62;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_36;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_36;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_37;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_36;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetTetheringBundleIDs", 828, v12, StringFromNRXPCRes);

        goto LABEL_36;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_36:
          v8 = 0;
LABEL_37:

          goto LABEL_64;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_36;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_36;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetTetheringBundleIDs", 828);
        v8 = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_13;
      }

LABEL_63:
      v8 = 0;
      goto LABEL_64;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_62:

    v8 = 0;
    goto LABEL_64;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_63;
  }

LABEL_13:
  free(v7);
  v8 = 0;
LABEL_64:

  return v8;
}

BOOL nrXPCCompanionSetSimulateSlicingEnabled(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x37uLL);
  xpc_dictionary_set_BOOL(v3, "SimulateSlicingEnabled", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetSimulateSlicingEnabled", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetSimulateSlicingEnabled", 838, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetSimulateSlicingEnabled", 838);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSetPreferWiFiAllowed(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1EuLL);
  xpc_dictionary_set_BOOL(v3, "PreferWiFiAllowed", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetPreferWiFiAllowed", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetPreferWiFiAllowed", 848, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetPreferWiFiAllowed", 848);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionBlockSHOESTraffic(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x27uLL);
  xpc_dictionary_set_BOOL(v3, "BlockSHOESTraffic", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionBlockSHOESTraffic", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionBlockSHOESTraffic", 858, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionBlockSHOESTraffic", 858);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionBlockIDSTraffic(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x28uLL);
  xpc_dictionary_set_BOOL(v3, "BlockIDSTraffic", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionBlockIDSTraffic", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionBlockIDSTraffic", 868, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionBlockIDSTraffic", 868);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSimulateWakePacket(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x2BuLL);
  xpc_dictionary_set_BOOL(v3, "SimulateWakePacket", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSimulateWakePacket", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSimulateWakePacket", 878, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSimulateWakePacket", 878);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCCompanionSetFixedInterfaceMode(BOOL a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    v32 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v32;
      v35 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v35)
      {
        goto LABEL_88;
      }
    }

    v36 = nrCopyLogObj_2646();
    _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_88:
    v37 = _os_log_pack_size();
    v39 = &__strerrbuf[-((MEMORY[0x28223BE20](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v40 = __error();
    v41 = _os_log_pack_fill(v39, v37, *v40, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v41, "nr_xpc_dictionary_create");
    v42 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v42, v39);
  }

  v11 = v10;
  xpc_dictionary_set_uint64(v10, "Type", 0x20uLL);
  xpc_dictionary_set_BOOL(v11, "FixedInterfaceModeSetEnabled", a1);
  if (v7)
  {
    xpc_dictionary_set_string(v11, "FixedInterfaceModeInterfaceName", [v7 UTF8String]);
  }

  if (v8)
  {
    xpc_dictionary_set_string(v11, "FixedInterfaceModePeerAddress", [v8 UTF8String]);
  }

  if (v9)
  {
    xpc_dictionary_set_string(v11, "IDSDeviceID", [v9 UTF8String]);
  }

  v12 = nrXPCSendSyncInner("nrXPCCompanionSetFixedInterfaceMode", v11);
  v13 = v12;
  if (!v12)
  {
    v33 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v43 = v33;
      v16 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_68;
      }
    }

    v22 = nrCopyLogObj_2646();
    _NRLogWithArgs(v22, 17, "received nil response");
    goto LABEL_66;
  }

  v14 = MEMORY[0x25F8746E0](v12);
  if (v14 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v13, "Result");
    v18 = v17;
    if (!v17)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_40;
    }

    if (MEMORY[0x25F8746E0](v17) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_40;
    }

    value = xpc_int64_get_value(v18);
    if (!value)
    {
      v16 = 1;
      goto LABEL_41;
    }

    v20 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      if (!v20)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v28 = v24;
          v29 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

          if (!v29)
          {
            goto LABEL_40;
          }
        }

        v30 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v20);
        _NRLogWithArgs(v30, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionSetFixedInterfaceMode", 903, v20, StringFromNRXPCRes);

        goto LABEL_40;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v25 = v24;
        v26 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

        if (!v26)
        {
LABEL_40:
          v16 = 0;
LABEL_41:

          goto LABEL_68;
        }
      }

      v21 = nrCopyLogObj_2646();
      v27 = createStringFromNRXPCRes(v20);
      _NRLogWithArgs(v21, 17, "received internal failure result code: [%lld] %@", v20, v27);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v21 = nrCopyLogObj_2646();
      _NRLogWithArgs(v21, 17, "received failure result code: [%d] %s", v20, __strerrbuf);
    }

    goto LABEL_40;
  }

  if (v14 == MEMORY[0x277D86480])
  {
    if (v13 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v16 = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v13 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionSetFixedInterfaceMode", 903);
        v16 = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v13 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v13);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v15);
      }

      if (v15)
      {
        goto LABEL_17;
      }

LABEL_67:
      v16 = 0;
      goto LABEL_68;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_67;
    }

    v22 = nrCopyLogObj_2646();
    _NRLogWithArgs(v22, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_66:

    v16 = 0;
    goto LABEL_68;
  }

  v15 = MEMORY[0x25F874580](v13);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v15);
  }

  if (!v15)
  {
    goto LABEL_67;
  }

LABEL_17:
  free(v15);
  v16 = 0;
LABEL_68:

  return v16;
}

BOOL nrXPCCompanionLinkSubmitTestLinkRecommendation(void *a1, const char *a2, int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    v30 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v30;
      v34 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v34)
      {
        goto LABEL_89;
      }
    }

    v35 = nrCopyLogObj_2646();
    _NRLogWithArgs(v35, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_89:
    v36 = _os_log_pack_size();
    v38 = &uuid[-((MEMORY[0x28223BE20](v36, v37) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v39 = __error();
    v40 = _os_log_pack_fill(v38, v36, *v39, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v40, "nr_xpc_dictionary_create");
    v41 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v41, v38);
  }

  v7 = v6;
  xpc_dictionary_set_uint64(v6, "Type", 0x1AuLL);
  v8 = v7;
  if (v5)
  {
    *uuid = 0;
    v48 = 0;
    [v5 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v8, "DeviceIdentifier", uuid);
    goto LABEL_4;
  }

  v31 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v42 = v31;
    v43 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);

    if (!v43)
    {
      goto LABEL_4;
    }
  }

  v44 = nrCopyLogObj_2646();
  _NRLogWithArgs(v44, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_4:
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  xpc_dictionary_set_uint64(v8, a2, v9);
  v10 = nrXPCSendSyncInner("nrXPCCompanionLinkSubmitTestLinkRecommendation", v8);
  v11 = v10;
  if (!v10)
  {
    v32 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v45 = v32;
      v14 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        goto LABEL_67;
      }
    }

    v20 = nrCopyLogObj_2646();
    _NRLogWithArgs(v20, 17, "received nil response");
    goto LABEL_65;
  }

  v12 = MEMORY[0x25F8746E0](v10);
  if (v12 == MEMORY[0x277D86468])
  {
    v15 = xpc_dictionary_get_value(v11, "Result");
    v16 = v15;
    if (!v15)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_39;
    }

    if (MEMORY[0x25F8746E0](v15) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_39;
    }

    value = xpc_int64_get_value(v16);
    if (!value)
    {
      v14 = 1;
      goto LABEL_40;
    }

    v18 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v22 = nrCopyLogObj_sNRLogObj_2653;
      if (!v18)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v26 = v22;
          v27 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

          if (!v27)
          {
            goto LABEL_39;
          }
        }

        v28 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v18);
        _NRLogWithArgs(v28, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkSubmitTestLinkRecommendation", 915, v18, StringFromNRXPCRes);

        goto LABEL_39;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v23 = v22;
        v24 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

        if (!v24)
        {
LABEL_39:
          v14 = 0;
LABEL_40:

          goto LABEL_67;
        }
      }

      v19 = nrCopyLogObj_2646();
      v25 = createStringFromNRXPCRes(v18);
      _NRLogWithArgs(v19, 17, "received internal failure result code: [%lld] %@", v18, v25);
    }

    else
    {
      if (strerror_r(value, uuid, 0x80uLL))
      {
        uuid[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      v19 = nrCopyLogObj_2646();
      _NRLogWithArgs(v19, 17, "received failure result code: [%d] %s", v18, uuid);
    }

    goto LABEL_39;
  }

  if (v12 == MEMORY[0x277D86480])
  {
    if (v11 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v14 = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v11 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkSubmitTestLinkRecommendation", 915);
        v14 = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v11 != MEMORY[0x277D86420])
    {
      v13 = MEMORY[0x25F874580](v11);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v13);
      }

      if (v13)
      {
        goto LABEL_16;
      }

LABEL_66:
      v14 = 0;
      goto LABEL_67;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_66;
    }

    v20 = nrCopyLogObj_2646();
    _NRLogWithArgs(v20, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_65:

    v14 = 0;
    goto LABEL_67;
  }

  v13 = MEMORY[0x25F874580](v11);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v13);
  }

  if (!v13)
  {
    goto LABEL_66;
  }

LABEL_16:
  free(v13);
  v14 = 0;
LABEL_67:

  return v14;
}

BOOL nrXPCCompanionLinkSetEncryptionType(unsigned int a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x2CuLL);
  xpc_dictionary_set_uint64(v3, "CompanionLinkEncryptionType", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionLinkSetEncryptionType", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCompanionLinkSetEncryptionType", 950, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCompanionLinkSetEncryptionType", 950);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

char *nrXPCTestCopyBabelRoutes()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v21 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v21;
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_78;
      }
    }

    v25 = nrCopyLogObj_2646();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_78:
    v26 = _os_log_pack_size();
    v28 = &__strerrbuf[-((MEMORY[0x28223BE20](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v29 = __error();
    v30 = _os_log_pack_fill(v28, v26, *v29, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v30, "nr_xpc_dictionary_create");
    v31 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v31, v28);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x1BuLL);
  v2 = nrXPCSendSyncInner("nrXPCTestCopyBabelRoutes", v1);
  v3 = v2;
  if (!v2)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v22;
      v33 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      string = xpc_dictionary_get_string(v3, "BabelRoutes");
      if (string)
      {
        string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
      }

      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v12 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v12;
        v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

        if (!v18)
        {
          goto LABEL_32;
        }
      }

      v19 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCTestCopyBabelRoutes", 959, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v15 = nrCopyLogObj_2646();
    v16 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v15, 17, "received internal failure result code: [%lld] %@", v10, v16);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    string = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCTestCopyBabelRoutes", 959);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  string = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (string)
  {
    free(string);
LABEL_33:
    string = 0;
  }

LABEL_34:

  return string;
}

id nrXPCCopyResolvedEndpointWithMetadata(void *a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "Type", 6uLL);
      *uuid = 0;
      v58 = 0;
      v6 = v5;
      [v3 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v6, "NRUUID", uuid);

      xpc_dictionary_set_uint64(v6, "DataProtectionClass", a2);
      v7 = nrXPCSendSyncInner("nrXPCCopyResolvedEndpointWithMetadata", v6);
      v8 = v7;
      if (!v7)
      {
        v41 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v54 = v41;
          v55 = os_log_type_enabled(v41, OS_LOG_TYPE_FAULT);

          if (!v55)
          {
            goto LABEL_34;
          }
        }

        v17 = nrCopyLogObj_2646();
        _NRLogWithArgs(v17, 17, "received nil response");
        goto LABEL_61;
      }

      v9 = MEMORY[0x25F8746E0](v7);
      if (v9 != MEMORY[0x277D86468])
      {
        if (v9 != MEMORY[0x277D86480])
        {
          v10 = MEMORY[0x25F874580](v8);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
          }

LABEL_11:
          if (!v10)
          {
LABEL_35:

            goto LABEL_36;
          }

          free(v10);
LABEL_34:
          v10 = 0;
          goto LABEL_35;
        }

        if (v8 == MEMORY[0x277D863F0])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
          }

          goto LABEL_34;
        }

        if (v8 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyResolvedEndpointWithMetadata", 976);
          }

          goto LABEL_34;
        }

        if (v8 != MEMORY[0x277D86420])
        {
          v10 = MEMORY[0x25F874580](v8);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
          }

          goto LABEL_11;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_34;
        }

        v17 = nrCopyLogObj_2646();
        _NRLogWithArgs(v17, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_61:

        goto LABEL_34;
      }

      v11 = xpc_dictionary_get_value(v8, "Result");
      v12 = v11;
      if (!v11)
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
        }

        goto LABEL_33;
      }

      if (MEMORY[0x25F8746E0](v11) != MEMORY[0x277D86498])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
        }

        goto LABEL_33;
      }

      value = xpc_int64_get_value(v12);
      if (value)
      {
        v15 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, uuid, 0x80uLL))
          {
            uuid[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v16 = nrCopyLogObj_2646();
            _NRLogWithArgs(v16, 17, "received failure result code: [%d] %s", v15, uuid);
          }

          goto LABEL_33;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v21 = nrCopyLogObj_sNRLogObj_2653;
        if (!v15)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v31 = v21;
            v32 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

            if (!v32)
            {
              goto LABEL_33;
            }
          }

          v33 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v15);
          _NRLogWithArgs(v33, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyResolvedEndpointWithMetadata", 976, v15, StringFromNRXPCRes);

          goto LABEL_33;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v22 = v21;
          v23 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

          if (!v23)
          {
LABEL_33:

            goto LABEL_34;
          }
        }

        v24 = nrCopyLogObj_2646();
        v25 = createStringFromNRXPCRes(v15);
        _NRLogWithArgs(v24, 17, "received internal failure result code: [%lld] %@", v15, v25);

        goto LABEL_33;
      }

      v18 = xpc_dictionary_get_value(v8, "IPv6Address");
      v19 = v18;
      if (v18)
      {
        if (MEMORY[0x25F8746E0](v18) == MEMORY[0x277D86458])
        {
          *uuid = 0;
          v58 = 0;
          bytes = xpc_data_get_bytes(v19, uuid, 0, 0x10uLL);
          if (bytes == 16)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v27 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:uuid length:16];
            [v10 setObject:v27 forKeyedSubscript:@"AddrData"];

            v28 = [MEMORY[0x277CCABB0] numberWithInt:{xpc_dictionary_get_BOOL(v8, "UseASQUIC")}];
            [v10 setObject:v28 forKeyedSubscript:@"UseASQUIC"];

            string = xpc_dictionary_get_string(v8, "IDSDeviceID");
            if (!string)
            {
              goto LABEL_95;
            }

            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
            [v10 setObject:v30 forKeyedSubscript:@"deviceID"];
          }

          else
          {
            v35 = bytes;
            v36 = nrCopyLogObj_2646();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v37 = v36;
              v38 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

              if (!v38)
              {
                goto LABEL_94;
              }
            }

            v30 = nrCopyLogObj_2646();
            _NRLogWithArgs(v30, 16, "%s%.30s:%-4d Response of invalid length %zu", "", "nrXPCCopyResolvedEndpointWithMetadata", 992, v35);
            v10 = 0;
          }

          goto LABEL_95;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
        {
          v20 = nrCopyLogObj_2646();
          _NRLogWithArgs(v20, 16, "%s%.30s:%-4d Response of invalid type");
LABEL_79:

          v10 = 0;
LABEL_95:

          goto LABEL_35;
        }
      }

      else
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
        {
          v20 = nrCopyLogObj_2646();
          _NRLogWithArgs(v20, 16, "%s%.30s:%-4d Missing address");
          goto LABEL_79;
        }
      }

LABEL_94:
      v10 = 0;
      goto LABEL_95;
    }

    v40 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v45 = v40;
      v46 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

      if (!v46)
      {
        goto LABEL_106;
      }
    }

    v47 = nrCopyLogObj_2646();
    _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_106:
    v48 = _os_log_pack_size();
    v50 = &uuid[-((MEMORY[0x28223BE20](v48, v49) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v51 = __error();
    v52 = _os_log_pack_fill(v50, v48, *v51, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v52, "nr_xpc_dictionary_create");
    v53 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v53, v50);
  }

  v39 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v42 = v39;
    v43 = os_log_type_enabled(v39, OS_LOG_TYPE_FAULT);

    if (!v43)
    {
      v10 = 0;
      goto LABEL_36;
    }
  }

  v44 = nrCopyLogObj_2646();
  _NRLogWithArgs(v44, 17, "%s called with null nrUUID", "nrXPCCopyResolvedEndpointWithMetadata");

  v10 = 0;
LABEL_36:

  return v10;
}

BOOL nrXPCSetPacketLogging(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 7uLL);
  xpc_dictionary_set_BOOL(v3, "PacketLoggingVal", a1);
  v4 = nrXPCSendSyncInner("nrXPCSetPacketLogging", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCSetPacketLogging", 1013, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCSetPacketLogging", 1013);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

BOOL nrXPCSetMPKLLogging(BOOL a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_82;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_82:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1FuLL);
  xpc_dictionary_set_BOOL(v3, "MPKLLoggingVal", a1);
  v4 = nrXPCSendSyncInner("nrXPCSetMPKLLogging", v3);
  v5 = v4;
  if (!v4)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v8)
      {
        goto LABEL_62;
      }
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received nil response");
    goto LABEL_60;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v5, "Result");
    v10 = v9;
    if (!v9)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v9) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v10);
    if (!value)
    {
      v8 = 1;
      goto LABEL_35;
    }

    v12 = value;
    if (value >> 31)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v16 = nrCopyLogObj_sNRLogObj_2653;
      if (!v12)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v20 = v16;
          v21 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

          if (!v21)
          {
            goto LABEL_34;
          }
        }

        v22 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v12);
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCSetMPKLLogging", 1023, v12, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v17 = v16;
        v18 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v18)
        {
LABEL_34:
          v8 = 0;
LABEL_35:

          goto LABEL_62;
        }
      }

      v13 = nrCopyLogObj_2646();
      v19 = createStringFromNRXPCRes(v12);
      _NRLogWithArgs(v13, 17, "received internal failure result code: [%lld] %@", v12, v19);
    }

    else
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v13 = nrCopyLogObj_2646();
      _NRLogWithArgs(v13, 17, "received failure result code: [%d] %s", v12, __strerrbuf);
    }

    goto LABEL_34;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCSetMPKLLogging", 1023);
        v8 = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v7 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v7);
      }

      if (v7)
      {
        goto LABEL_11;
      }

LABEL_61:
      v8 = 0;
      goto LABEL_62;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_61;
    }

    v14 = nrCopyLogObj_2646();
    _NRLogWithArgs(v14, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_60:

    v8 = 0;
    goto LABEL_62;
  }

  v7 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v7);
  }

  if (!v7)
  {
    goto LABEL_61;
  }

LABEL_11:
  free(v7);
  v8 = 0;
LABEL_62:

  return v8;
}

uint64_t nrXPCGetNetworkRelayVersion()
{
  v37 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v22 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v22;
      v25 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_79;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_79:
    v27 = _os_log_pack_size();
    v29 = &__strerrbuf[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x2DuLL);
  v2 = nrXPCSendSyncInner("nrXPCGetNetworkRelayVersion", v1);
  v3 = v2;
  if (!v2)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v33 = v23;
      v34 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);

      if (!v34)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      uint64 = xpc_dictionary_get_uint64(v3, "NetworkRelayVersion");
      if (uint64 >> 16)
      {
        LOWORD(v5) = 0;
      }

      else
      {
        LOWORD(v5) = uint64;
      }

      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v13 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v18 = v13;
        v19 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

        if (!v19)
        {
          goto LABEL_32;
        }
      }

      v20 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v20, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCGetNetworkRelayVersion", 1032, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v14 = v13;
      v15 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

      if (!v15)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v16 = nrCopyLogObj_2646();
    v17 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v16, 17, "received internal failure result code: [%lld] %@", v10, v17);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCGetNetworkRelayVersion", 1032);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (v5)
  {
    free(v5);
LABEL_33:
    LOWORD(v5) = 0;
  }

LABEL_34:

  return v5;
}

void *nrXPCCopyNRUUIDForBluetoothUUID(void *a1, BOOL *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v29 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v29;
      v33 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

      if (!v33)
      {
        goto LABEL_86;
      }
    }

    v34 = nrCopyLogObj_823();
    _NRLogWithArgs(v34, 17, "%s called with null nsUUID", "_NRIsUUIDNonZero");

    goto LABEL_86;
  }

  *uu = 0;
  v59 = 0;
  [v3 getUUIDBytes:uu];
  if (!uuid_is_null(uu))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "Type", 0xDuLL);
      *uu = 0;
      v59 = 0;
      v7 = v6;
      [v4 getUUIDBytes:uu];
      xpc_dictionary_set_uuid(v7, "BluetoothUUID", uu);

      v8 = nrXPCSendSyncInner("nrXPCCopyNRUUIDForBluetoothUUID", v7);
      v9 = v8;
      if (!v8)
      {
        v31 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v48 = v31;
          v49 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);

          if (!v49)
          {
            goto LABEL_35;
          }
        }

        v13 = nrCopyLogObj_2646();
        _NRLogWithArgs(v13, 17, "received nil response");
        goto LABEL_34;
      }

      v10 = MEMORY[0x25F8746E0](v8);
      if (v10 != MEMORY[0x277D86468])
      {
        if (v10 != MEMORY[0x277D86480])
        {
          v11 = MEMORY[0x25F874580](v9);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
          }

LABEL_12:
          if (!v11)
          {
LABEL_36:

            goto LABEL_37;
          }

          free(v11);
LABEL_35:
          v11 = 0;
          goto LABEL_36;
        }

        if (v9 == MEMORY[0x277D863F0])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
          }

          goto LABEL_35;
        }

        if (v9 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyNRUUIDForBluetoothUUID", 1047);
          }

          goto LABEL_35;
        }

        if (v9 != MEMORY[0x277D86420])
        {
          v11 = MEMORY[0x25F874580](v9);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
          }

          goto LABEL_12;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_35;
        }

        v13 = nrCopyLogObj_2646();
        _NRLogWithArgs(v13, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
LABEL_34:

        goto LABEL_35;
      }

      v12 = xpc_dictionary_get_value(v9, "Result");
      v13 = v12;
      if (!v12)
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
        }

        goto LABEL_34;
      }

      if (MEMORY[0x25F8746E0](v12) != MEMORY[0x277D86498])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
        }

        goto LABEL_34;
      }

      value = xpc_int64_get_value(v13);
      if (!value)
      {

        if (a2)
        {
          *a2 = xpc_dictionary_get_BOOL(v9, "IsEphemeral");
        }

        uuid = xpc_dictionary_get_uuid(v9, "NRUUID");
        if (uuid)
        {
          v19 = uuid;
          if (!uuid_is_null(uuid))
          {
            v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v19];
            goto LABEL_36;
          }

          v52 = nrCopyLogObj_2646();
          v53 = v52;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v56 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);

            if (!v56)
            {
              goto LABEL_35;
            }
          }

          v55 = nrCopyLogObj_2646();
          _NRLogWithArgs(v55, 16, "%s%.30s:%-4d UUID is null for key %s");
        }

        else
        {
          v50 = nrCopyLogObj_2646();
          v51 = v50;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v54 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);

            if (!v54)
            {
              goto LABEL_35;
            }
          }

          v55 = nrCopyLogObj_2646();
          _NRLogWithArgs(v55, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
        }

        goto LABEL_35;
      }

      v16 = value;
      if (!(value >> 31))
      {
        if (strerror_r(value, uu, 0x80uLL))
        {
          uu[0] = 0;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          v17 = nrCopyLogObj_2646();
          _NRLogWithArgs(v17, 17, "received failure result code: [%d] %s", v16, uu);
        }

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      v20 = nrCopyLogObj_sNRLogObj_2653;
      if (!v16)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v25 = v20;
          v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

          if (!v26)
          {
            goto LABEL_34;
          }
        }

        v27 = nrCopyLogObj_2646();
        StringFromNRXPCRes = createStringFromNRXPCRes(v16);
        _NRLogWithArgs(v27, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyNRUUIDForBluetoothUUID", 1047, v16, StringFromNRXPCRes);

        goto LABEL_34;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v21 = v20;
        v22 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

        if (!v22)
        {
          goto LABEL_34;
        }
      }

      v23 = nrCopyLogObj_2646();
      v24 = createStringFromNRXPCRes(v16);
      _NRLogWithArgs(v23, 17, "received internal failure result code: [%lld] %@", v16, v24);

      goto LABEL_34;
    }

    v30 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v39 = v30;
      v40 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v40)
      {
        goto LABEL_92;
      }
    }

    v41 = nrCopyLogObj_2646();
    _NRLogWithArgs(v41, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_92:
    v42 = _os_log_pack_size();
    v44 = &uu[-((MEMORY[0x28223BE20](v42, v43) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v45 = __error();
    v46 = _os_log_pack_fill(v44, v42, *v45, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v46, "nr_xpc_dictionary_create");
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47, v44);
  }

LABEL_86:
  v35 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v36 = v35;
    v37 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);

    if (!v37)
    {
      v11 = 0;
      goto LABEL_37;
    }
  }

  v38 = nrCopyLogObj_2646();
  _NRLogWithArgs(v38, 17, "called with all-zero bluetoothUUID");

  v11 = 0;
LABEL_37:

  return v11;
}

void *nrXPCCopyBluetoothUUIDForNRUUID(void *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v27 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v27;
      v32 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);

      if (!v32)
      {
        goto LABEL_89;
      }
    }

    v33 = nrCopyLogObj_2646();
    _NRLogWithArgs(v33, 17, "%s called with null nrUUID", "nrXPCCopyBluetoothUUIDForNRUUID");
LABEL_88:

    v9 = 0;
    goto LABEL_37;
  }

  *uu = 0;
  v56 = 0;
  [v1 getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v28 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_87:
      v33 = nrCopyLogObj_2646();
      _NRLogWithArgs(v33, 17, "called with all-zero nrUUID");
      goto LABEL_88;
    }

    v34 = v28;
    v35 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

    if (v35)
    {
      goto LABEL_87;
    }

LABEL_89:
    v9 = 0;
    goto LABEL_37;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    v29 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v29;
      v37 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

      if (!v37)
      {
        goto LABEL_92;
      }
    }

    v38 = nrCopyLogObj_2646();
    _NRLogWithArgs(v38, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_92:
    v39 = _os_log_pack_size();
    v41 = &uu[-((MEMORY[0x28223BE20](v39, v40) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v42 = __error();
    v43 = _os_log_pack_fill(v41, v39, *v42, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v43, "nr_xpc_dictionary_create");
    v44 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v44, v41);
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, "Type", 0x32uLL);
  *uu = 0;
  v56 = 0;
  v5 = v4;
  [v2 getUUIDBytes:uu];
  xpc_dictionary_set_uuid(v5, "NRUUID", uu);

  v6 = nrXPCSendSyncInner("nrXPCCopyBluetoothUUIDForNRUUID", v5);
  v7 = v6;
  if (!v6)
  {
    v30 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v45 = v30;
      v46 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

      if (!v46)
      {
        goto LABEL_35;
      }
    }

    v11 = nrCopyLogObj_2646();
    _NRLogWithArgs(v11, 17, "received nil response");
    goto LABEL_34;
  }

  v8 = MEMORY[0x25F8746E0](v6);
  if (v8 == MEMORY[0x277D86468])
  {
    v10 = xpc_dictionary_get_value(v7, "Result");
    v11 = v10;
    if (!v10)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_34;
    }

    if (MEMORY[0x25F8746E0](v10) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_34;
    }

    value = xpc_int64_get_value(v11);
    if (!value)
    {

      uuid = xpc_dictionary_get_uuid(v7, "BluetoothUUID");
      if (uuid)
      {
        v17 = uuid;
        if (!uuid_is_null(uuid))
        {
          v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v17];
          goto LABEL_36;
        }

        v49 = nrCopyLogObj_2646();
        v50 = v49;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v53 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

          if (!v53)
          {
            goto LABEL_35;
          }
        }

        v52 = nrCopyLogObj_2646();
        _NRLogWithArgs(v52, 16, "%s%.30s:%-4d UUID is null for key %s");
      }

      else
      {
        v47 = nrCopyLogObj_2646();
        v48 = v47;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v51 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);

          if (!v51)
          {
            goto LABEL_35;
          }
        }

        v52 = nrCopyLogObj_2646();
        _NRLogWithArgs(v52, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
      }

      goto LABEL_35;
    }

    v14 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, uu, 0x80uLL))
      {
        uu[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v15 = nrCopyLogObj_2646();
        _NRLogWithArgs(v15, 17, "received failure result code: [%d] %s", v14, uu);
      }

      goto LABEL_34;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v18 = nrCopyLogObj_sNRLogObj_2653;
    if (!v14)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v23 = v18;
        v24 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

        if (!v24)
        {
          goto LABEL_34;
        }
      }

      v25 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v14);
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyBluetoothUUIDForNRUUID", 1061, v14, StringFromNRXPCRes);

      goto LABEL_34;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v19 = v18;
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v20)
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    v21 = nrCopyLogObj_2646();
    v22 = createStringFromNRXPCRes(v14);
    _NRLogWithArgs(v21, 17, "received internal failure result code: [%lld] %@", v14, v22);

    goto LABEL_34;
  }

  if (v8 != MEMORY[0x277D86480])
  {
    v9 = MEMORY[0x25F874580](v7);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_12;
  }

  if (v7 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_35;
  }

  if (v7 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyBluetoothUUIDForNRUUID", 1061);
    }

    goto LABEL_35;
  }

  if (v7 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v11 = nrCopyLogObj_2646();
    _NRLogWithArgs(v11, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_34;
  }

  v9 = MEMORY[0x25F874580](v7);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_12:
  if (v9)
  {
    free(v9);
LABEL_35:
    v9 = 0;
  }

LABEL_36:

LABEL_37:
  return v9;
}

void *nrXPCCopyNRUUIDForIDSDeviceID(void *a1, BOOL a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v27 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v29 = v27;
      v30 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v30)
      {
        goto LABEL_79;
      }
    }

    v31 = nrCopyLogObj_2646();
    _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_79:
    v32 = _os_log_pack_size();
    v34 = &__strerrbuf[-((MEMORY[0x28223BE20](v32, v33) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v35 = __error();
    v36 = _os_log_pack_fill(v34, v32, *v35, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v36, "nr_xpc_dictionary_create");
    v37 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v37, v34);
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, "Type", 0x2EuLL);
  xpc_dictionary_set_string(v5, "IDSDeviceID", [v3 UTF8String]);
  xpc_dictionary_set_BOOL(v5, "ShouldCreateDevice", a2);
  v6 = nrXPCSendSyncInner("nrXPCCopyNRUUIDForIDSDeviceID", v5);
  v7 = v6;
  if (!v6)
  {
    v28 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v28;
      v39 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

      if (!v39)
      {
        goto LABEL_33;
      }
    }

    v11 = nrCopyLogObj_2646();
    _NRLogWithArgs(v11, 17, "received nil response");
    goto LABEL_32;
  }

  v8 = MEMORY[0x25F8746E0](v6);
  if (v8 == MEMORY[0x277D86468])
  {
    v10 = xpc_dictionary_get_value(v7, "Result");
    v11 = v10;
    if (!v10)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v10) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v11);
    if (!value)
    {

      uuid = xpc_dictionary_get_uuid(v7, "NRUUID");
      if (uuid)
      {
        v17 = uuid;
        if (!uuid_is_null(uuid))
        {
          v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v17];
          goto LABEL_34;
        }

        v42 = nrCopyLogObj_2646();
        v43 = v42;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v46 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

          if (!v46)
          {
            goto LABEL_33;
          }
        }

        v45 = nrCopyLogObj_2646();
        _NRLogWithArgs(v45, 16, "%s%.30s:%-4d UUID is null for key %s");
      }

      else
      {
        v40 = nrCopyLogObj_2646();
        v41 = v40;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v44 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

          if (!v44)
          {
            goto LABEL_33;
          }
        }

        v45 = nrCopyLogObj_2646();
        _NRLogWithArgs(v45, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
      }

      goto LABEL_33;
    }

    v14 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v15 = nrCopyLogObj_2646();
        _NRLogWithArgs(v15, 17, "received failure result code: [%d] %s", v14, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v18 = nrCopyLogObj_sNRLogObj_2653;
    if (!v14)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v23 = v18;
        v24 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

        if (!v24)
        {
          goto LABEL_32;
        }
      }

      v25 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v14);
      _NRLogWithArgs(v25, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyNRUUIDForIDSDeviceID", 1074, v14, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v19 = v18;
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v20)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v21 = nrCopyLogObj_2646();
    v22 = createStringFromNRXPCRes(v14);
    _NRLogWithArgs(v21, 17, "received internal failure result code: [%lld] %@", v14, v22);

    goto LABEL_32;
  }

  if (v8 != MEMORY[0x277D86480])
  {
    v9 = MEMORY[0x25F874580](v7);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v7 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v7 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyNRUUIDForIDSDeviceID", 1074);
    }

    goto LABEL_33;
  }

  if (v7 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v11 = nrCopyLogObj_2646();
    _NRLogWithArgs(v11, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  v9 = MEMORY[0x25F874580](v7);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (v9)
  {
    free(v9);
LABEL_33:
    v9 = 0;
  }

LABEL_34:

  return v9;
}

void *nrXPCCopyBestTestingNRUUID()
{
  v45 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v23;
      v26 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
        goto LABEL_79;
      }
    }

    v27 = nrCopyLogObj_2646();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_79:
    v28 = _os_log_pack_size();
    v30 = &__strerrbuf[-((MEMORY[0x28223BE20](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v31 = __error();
    v32 = _os_log_pack_fill(v30, v28, *v31, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v32, "nr_xpc_dictionary_create");
    v33 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v33, v30);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x14uLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyBestTestingNRUUID", v1);
  v3 = v2;
  if (!v2)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v24;
      v35 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (!v35)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      uuid = xpc_dictionary_get_uuid(v3, "NRUUID");
      if (uuid)
      {
        v13 = uuid;
        if (!uuid_is_null(uuid))
        {
          v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v13];
          goto LABEL_34;
        }

        v38 = nrCopyLogObj_2646();
        v39 = v38;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v42 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);

          if (!v42)
          {
            goto LABEL_33;
          }
        }

        v41 = nrCopyLogObj_2646();
        _NRLogWithArgs(v41, 16, "%s%.30s:%-4d UUID is null for key %s");
      }

      else
      {
        v36 = nrCopyLogObj_2646();
        v37 = v36;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v40 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

          if (!v40)
          {
            goto LABEL_33;
          }
        }

        v41 = nrCopyLogObj_2646();
        _NRLogWithArgs(v41, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
      }

      goto LABEL_33;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v14 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v19 = v14;
        v20 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

        if (!v20)
        {
          goto LABEL_32;
        }
      }

      v21 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v21, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyBestTestingNRUUID", 1083, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v15 = v14;
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v17 = nrCopyLogObj_2646();
    v18 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v17, 17, "received internal failure result code: [%lld] %@", v10, v18);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyBestTestingNRUUID", 1083);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (v5)
  {
    free(v5);
LABEL_33:
    v5 = 0;
  }

LABEL_34:

  return v5;
}

void nrXPCRegisterDeviceByNRUUID(void *a1, int64_t a2, unsigned int a3, BOOL a4, void *a5, _BOOL4 a6, _BOOL4 a7, BOOL a8, __int16 a9, void *a10, void *a11, void *a12, void *a13, BOOL value, void *a15, void *a16)
{
  v90 = a7;
  v92 = a6;
  v89 = a3;
  v88 = a2;
  v109 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v20 = a5;
  v91 = a10;
  v94 = a11;
  v93 = a12;
  v95 = a13;
  v21 = a15;
  v22 = a16;
  v23 = v22;
  if (!v19)
  {
    v45 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {

      v24 = v91;
    }

    else
    {
      v51 = v45;
      v52 = os_log_type_enabled(v45, OS_LOG_TYPE_FAULT);

      v24 = v91;
      if (!v52)
      {
        goto LABEL_25;
      }
    }

    v53 = nrCopyLogObj_2646();
    _NRLogWithArgs(v53, 17, "%s called with null nrUUID");
LABEL_43:

    goto LABEL_25;
  }

  if (!v22)
  {
    v46 = nrCopyLogObj_2646();
    v24 = v91;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v54 = v46;
      v55 = os_log_type_enabled(v46, OS_LOG_TYPE_FAULT);

      if (!v55)
      {
        goto LABEL_25;
      }
    }

    v53 = nrCopyLogObj_2646();
    _NRLogWithArgs(v53, 17, "%s called with null completionBlock");
    goto LABEL_43;
  }

  v24 = v91;
  v25 = a8;
  if (!v20 && !a4 && !a8)
  {
    v56 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v84 = v56;
      v85 = os_log_type_enabled(v56, OS_LOG_TYPE_FAULT);

      if (!v85)
      {
LABEL_69:
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke;
        v100[3] = &unk_27996B870;
        v101 = v23;
        dispatch_async(v94, v100);

        goto LABEL_25;
      }
    }

    v86 = nrCopyLogObj_2646();
    _NRLogWithArgs(v86, 17, "outOfBandKey was nil and !wasInitiallySetupUsingIDSPairing and !isExternalPairing");

    goto LABEL_69;
  }

  if (!v91 && v92)
  {
    v47 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v57 = v47;
      v58 = os_log_type_enabled(v47, OS_LOG_TYPE_FAULT);

      if (!v58)
      {
LABEL_48:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke_2;
        block[3] = &unk_27996B870;
        v99 = v23;
        dispatch_async(v94, block);

        goto LABEL_25;
      }
    }

    v59 = nrCopyLogObj_2646();
    _NRLogWithArgs(v59, 17, "bluetoothMACAddress was nil and pairWithSPPLink");

    goto LABEL_48;
  }

  v26 = xpc_dictionary_create(0, 0, 0);
  if (!v26)
  {
    v48 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v60 = v48;
      v61 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
        goto LABEL_51;
      }
    }

    v62 = nrCopyLogObj_2646();
    _NRLogWithArgs(v62, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_51:
    v63 = _os_log_pack_size();
    v65 = &v87 - ((MEMORY[0x28223BE20](v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = __error();
    v67 = _os_log_pack_fill(v65, v63, *v66, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v67, "nr_xpc_dictionary_create");
    v68 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v68, v65);
  }

  v27 = v26;
  v87 = v23;
  v28 = v21;
  xpc_dictionary_set_uint64(v26, "Type", 0xEuLL);
  xpc_dictionary_set_int64(v27, "PairingProtocolVersion", v88);
  xpc_dictionary_set_uint64(v27, "PeerNetworkRelayVersion", v89);
  xpc_dictionary_set_BOOL(v27, "WasInitiallySetupUsingIDSPairing", a4);
  if (v20)
  {
    v29 = v20;
    xpc_dictionary_set_data(v27, "OutOfBandKey", [v29 bytes], objc_msgSend(v29, "length"));
  }

  xpc_dictionary_set_BOOL(v27, "PairWithSPPLink", v92);
  xpc_dictionary_set_BOOL(v27, "IsAltAccountPairing", v90);
  xpc_dictionary_set_BOOL(v27, "IsExternalPairing", v25);
  xpc_dictionary_set_uint64(v27, "PSM", a9);
  if (v91)
  {
    v30 = v91;
    xpc_dictionary_set_data(v27, "RemoteDeviceMACAddress", [v30 bytes], objc_msgSend(v30, "length"));
  }

  *uuid = 0;
  v105 = 0;
  v31 = v27;
  [v19 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v31, "NRUUID", uuid);

  v32 = v31;
  v33 = v93;
  *uuid = 0;
  v34 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:uuid];
  v35 = *uuid;
  if (!v35 && [v34 length])
  {
    xpc_dictionary_set_data(v32, "OperationalPropData", [v34 bytes], objc_msgSend(v34, "length"));

    if (!v95)
    {
LABEL_19:
      if (v21)
      {
        xpc_dictionary_set_string(v32, "CandidateService", [v21 UTF8String]);
      }

      xpc_dictionary_set_BOOL(v32, "IsEphemeral", value);
      v40 = v32;
      v41 = v94;
      v23 = v87;
      v42 = v87;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v102[3] = &unk_27996B8E8;
      v103 = v42;
      v43 = v102;
      v44 = nrXPCCopyConnection();
      if (v44)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v44, v40, v41, v43, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v105 = 3221225472;
        v106 = __nrXPCSendAsyncInner_block_invoke;
        v107 = &unk_27996B870;
        v108 = v43;
        dispatch_async(v41, uuid);
      }

      goto LABEL_24;
    }

    v36 = v32;
    v37 = v95;
    *uuid = 0;
    v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v37 requiringSecureCoding:1 error:uuid];
    v39 = *uuid;
    if (!v39 && [v38 length])
    {
      xpc_dictionary_set_data(v36, "PeerIPAddressData", [v38 bytes], objc_msgSend(v38, "length"));

      goto LABEL_19;
    }

    v50 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v77 = v50;
      v78 = os_log_type_enabled(v50, OS_LOG_TYPE_FAULT);

      if (!v78)
      {
        goto LABEL_61;
      }
    }

    v79 = nrCopyLogObj_2646();
    _NRLogWithArgs(v79, 17, "Failed to archive %@: %@", v37, v39);

LABEL_61:
    v80 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {

      v24 = v91;
      v21 = v28;
    }

    else
    {
      v81 = v80;
      v82 = os_log_type_enabled(v80, OS_LOG_TYPE_FAULT);

      v24 = v91;
      v21 = v28;
      if (!v82)
      {
LABEL_65:
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke_5;
        v96[3] = &unk_27996B870;
        v23 = v87;
        v96[4] = v87;
        dispatch_async(v94, v96);
        v76 = &v110;
        goto LABEL_66;
      }
    }

    v83 = nrCopyLogObj_2646();
    _NRLogWithArgs(v83, 17, "Failed to serialize peer endpoint dictionary");

    goto LABEL_65;
  }

  v49 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v69 = v49;
    v70 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

    if (!v70)
    {
      goto LABEL_54;
    }
  }

  v71 = nrCopyLogObj_2646();
  _NRLogWithArgs(v71, 17, "Failed to archive %@: %@", v33, v35);

LABEL_54:
  v72 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {

    v21 = v28;
LABEL_57:
    v75 = nrCopyLogObj_2646();
    _NRLogWithArgs(v75, 17, "Failed to serialize operational properties");

    goto LABEL_58;
  }

  v73 = v72;
  v74 = os_log_type_enabled(v72, OS_LOG_TYPE_FAULT);

  v21 = v28;
  if (v74)
  {
    goto LABEL_57;
  }

LABEL_58:
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke_4;
  v97[3] = &unk_27996B870;
  v23 = v87;
  v97[4] = v87;
  dispatch_async(v94, v97);
  v76 = &v111;
LABEL_66:

LABEL_24:
LABEL_25:
}

void nrXPCUnregisterDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v18 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v22 = v18;
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0xFuLL);
      *uuid = 0;
      v37 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v34[3] = &unk_27996B8E8;
      v35 = v14;
      v15 = v34;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __nrXPCSendAsyncInner_block_invoke;
        v39 = &unk_27996B870;
        v40 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v19 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_23:
    v27 = _os_log_pack_size();
    v29 = &v34[-1] - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v17 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v20 = v17;
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

    if (!v21)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID");
LABEL_7:

LABEL_8:
}

void nrXPCUnpairDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v18 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v22 = v18;
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x36uLL);
      *uuid = 0;
      v37 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v34[3] = &unk_27996B8E8;
      v35 = v14;
      v15 = v34;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __nrXPCSendAsyncInner_block_invoke;
        v39 = &unk_27996B870;
        v40 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v19 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_23:
    v27 = _os_log_pack_size();
    v29 = &v34[-1] - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v17 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v20 = v17;
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

    if (!v21)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID");
LABEL_7:

LABEL_8:
}

void nrXPCUnregisterAllDevices(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "Type", 0x13uLL);
      v7 = v6;
      v8 = v3;
      v9 = v4;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v26[3] = &unk_27996B8E8;
      v27 = v9;
      v10 = v26;
      v11 = nrXPCCopyConnection();
      if (v11)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v11, v7, v8, v10, 1u);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __nrXPCSendAsyncInner_block_invoke;
        block[3] = &unk_27996B870;
        v29 = v10;
        dispatch_async(v8, block);
      }

      goto LABEL_6;
    }

    v13 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v13;
      v17 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
        goto LABEL_17;
      }
    }

    v18 = nrCopyLogObj_2646();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_17:
    v19 = _os_log_pack_size();
    v21 = &v26[-1] - ((MEMORY[0x28223BE20](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v21, v19, *v22, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v23, "nr_xpc_dictionary_create");
    v24 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v24, v21);
  }

  v12 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v14 = v12;
    v15 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v7 = nrCopyLogObj_2646();
  _NRLogWithArgs(v7, 17, "%s called with null completionBlock", "nrXPCUnregisterAllDevices");
LABEL_6:

LABEL_7:
}

void nrXPCScrubDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v18 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v22 = v18;
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x38uLL);
      *uuid = 0;
      v37 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v34[3] = &unk_27996B8E8;
      v35 = v14;
      v15 = v34;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __nrXPCSendAsyncInner_block_invoke;
        v39 = &unk_27996B870;
        v40 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v19 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_23:
    v27 = _os_log_pack_size();
    v29 = &v34[-1] - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v17 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v20 = v17;
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

    if (!v21)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID");
LABEL_7:

LABEL_8:
}

void nrXPCScrubAllDevices(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "Type", 0x39uLL);
      v7 = v6;
      v8 = v3;
      v9 = v4;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v26[3] = &unk_27996B8E8;
      v27 = v9;
      v10 = v26;
      v11 = nrXPCCopyConnection();
      if (v11)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v11, v7, v8, v10, 1u);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __nrXPCSendAsyncInner_block_invoke;
        block[3] = &unk_27996B870;
        v29 = v10;
        dispatch_async(v8, block);
      }

      goto LABEL_6;
    }

    v13 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v13;
      v17 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
        goto LABEL_17;
      }
    }

    v18 = nrCopyLogObj_2646();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_17:
    v19 = _os_log_pack_size();
    v21 = &v26[-1] - ((MEMORY[0x28223BE20](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v21, v19, *v22, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v23, "nr_xpc_dictionary_create");
    v24 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v24, v21);
  }

  v12 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v14 = v12;
    v15 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);

    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v7 = nrCopyLogObj_2646();
  _NRLogWithArgs(v7, 17, "%s called with null completionBlock", "nrXPCScrubAllDevices");
LABEL_6:

LABEL_7:
}

void nrXPCEnableDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v18 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v22 = v18;
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x10uLL);
      *uuid = 0;
      v37 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v34[3] = &unk_27996B8E8;
      v35 = v14;
      v15 = v34;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __nrXPCSendAsyncInner_block_invoke;
        v39 = &unk_27996B870;
        v40 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v19 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_23:
    v27 = _os_log_pack_size();
    v29 = &v34[-1] - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v17 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v20 = v17;
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

    if (!v21)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID");
LABEL_7:

LABEL_8:
}

void nrXPCDisableDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v18 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v22 = v18;
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

        if (!v23)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x11uLL);
      *uuid = 0;
      v37 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v34[3] = &unk_27996B8E8;
      v35 = v14;
      v15 = v34;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __nrXPCSendAsyncInner_block_invoke;
        v39 = &unk_27996B870;
        v40 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v19 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v19;
      v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
        goto LABEL_23;
      }
    }

    v26 = nrCopyLogObj_2646();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_23:
    v27 = _os_log_pack_size();
    v29 = &v34[-1] - ((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = __error();
    v31 = _os_log_pack_fill(v29, v27, *v30, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v31, "nr_xpc_dictionary_create");
    v32 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v32, v29);
  }

  v17 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v20 = v17;
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

    if (!v21)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID");
LABEL_7:

LABEL_8:
}

__CFString *nrXPCCopyDeviceListString()
{
  v41 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v23;
      v26 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
        goto LABEL_78;
      }
    }

    v27 = nrCopyLogObj_2646();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_78:
    v28 = _os_log_pack_size();
    v30 = &__strerrbuf[-((MEMORY[0x28223BE20](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v31 = __error();
    v32 = _os_log_pack_fill(v30, v28, *v31, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v32, "nr_xpc_dictionary_create");
    v33 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v33, v30);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x12uLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyDeviceListString", v1);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x25F8746E0](v2);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 != MEMORY[0x277D86480])
      {
        v5 = MEMORY[0x25F874580](v3);
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
        }

LABEL_10:
        if (v5)
        {
          free(v5);
        }

        goto LABEL_33;
      }

      if (v3 == MEMORY[0x277D863F0])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        }

        goto LABEL_33;
      }

      if (v3 == MEMORY[0x277D863F8])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyDeviceListString", 1265);
        }

        goto LABEL_33;
      }

      if (v3 != MEMORY[0x277D86420])
      {
        v5 = MEMORY[0x25F874580](v3);
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
        }

        goto LABEL_10;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      v7 = nrCopyLogObj_2646();
      _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
      goto LABEL_32;
    }

    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      string = xpc_dictionary_get_string(v3, "DeviceListString");
      if (string)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
        goto LABEL_34;
      }

      v36 = nrCopyLogObj_2646();
      v37 = v36;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v38 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);

        if (!v38)
        {
          goto LABEL_33;
        }
      }

      v7 = nrCopyLogObj_2646();
      _NRLogWithArgs(v7, 17, "Missing device list string in XPC response");
      goto LABEL_32;
    }

    v11 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v12 = nrCopyLogObj_2646();
        _NRLogWithArgs(v12, 17, "received failure result code: [%d] %s", v11, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v14 = nrCopyLogObj_sNRLogObj_2653;
    if (!v11)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v19 = v14;
        v20 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

        if (!v20)
        {
          goto LABEL_32;
        }
      }

      v21 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v11);
      _NRLogWithArgs(v21, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyDeviceListString", 1265, v11, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {

LABEL_69:
      v17 = nrCopyLogObj_2646();
      v18 = createStringFromNRXPCRes(v11);
      _NRLogWithArgs(v17, 17, "received internal failure result code: [%lld] %@", v11, v18);

      goto LABEL_32;
    }

    v15 = v14;
    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

    if (v16)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v24;
      v35 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (!v35)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
  }

LABEL_32:

LABEL_33:
  v8 = @"ERROR";
LABEL_34:

  return v8;
}

void *nrXPCCopyIdentityReferences()
{
  v39 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
        goto LABEL_83;
      }
    }

    v28 = nrCopyLogObj_2646();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_83:
    v29 = _os_log_pack_size();
    v31 = &__strerrbuf[-((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v32 = __error();
    v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34, v31);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x34uLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyIdentityReferences", v1);
  v3 = v2;
  if (!v2)
  {
    v25 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v25;
      v36 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
    goto LABEL_32;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      v12 = xpc_dictionary_get_value(v3, "IdentityProxyReferences");
      if (v12 && (v13 = _CFXPCCreateCFObjectFromXPCObject()) != 0)
      {
        v5 = v13;
        v14 = CFGetTypeID(v13);
        if (v14 != CFDictionaryGetTypeID())
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_34;
    }

    v10 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v11 = nrCopyLogObj_2646();
        _NRLogWithArgs(v11, 17, "received failure result code: [%d] %s", v10, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v15 = nrCopyLogObj_sNRLogObj_2653;
    if (!v10)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v20 = v15;
        v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

        if (!v21)
        {
          goto LABEL_32;
        }
      }

      v22 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v10);
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyIdentityReferences", 1279, v10, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v16 = v15;
      v17 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v17)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v18 = nrCopyLogObj_2646();
    v19 = createStringFromNRXPCRes(v10);
    _NRLogWithArgs(v18, 17, "received internal failure result code: [%lld] %@", v10, v19);

    goto LABEL_32;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyIdentityReferences", 1279);
    }

    goto LABEL_33;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_32;
  }

  v5 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_10:
  if (v5)
  {
    free(v5);
LABEL_33:
    v5 = 0;
  }

LABEL_34:

  return v5;
}

__CFString *nrXPCCopyIDSDeviceID()
{
  v41 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v23 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v23;
      v26 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
        goto LABEL_78;
      }
    }

    v27 = nrCopyLogObj_2646();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_78:
    v28 = _os_log_pack_size();
    v30 = &__strerrbuf[-((MEMORY[0x28223BE20](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v31 = __error();
    v32 = _os_log_pack_fill(v30, v28, *v31, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v32, "nr_xpc_dictionary_create");
    v33 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v33, v30);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x2FuLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyIDSDeviceID", v1);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x25F8746E0](v2);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 != MEMORY[0x277D86480])
      {
        v5 = MEMORY[0x25F874580](v3);
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s");
        }

LABEL_10:
        if (v5)
        {
          free(v5);
        }

        goto LABEL_33;
      }

      if (v3 == MEMORY[0x277D863F0])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED");
        }

        goto LABEL_33;
      }

      if (v3 == MEMORY[0x277D863F8])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCCopyIDSDeviceID", 1298);
        }

        goto LABEL_33;
      }

      if (v3 != MEMORY[0x277D86420])
      {
        v5 = MEMORY[0x25F874580](v3);
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
        }

        goto LABEL_10;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      v7 = nrCopyLogObj_2646();
      _NRLogWithArgs(v7, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
      goto LABEL_32;
    }

    v6 = xpc_dictionary_get_value(v3, "Result");
    v7 = v6;
    if (!v6)
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received response without result code");
      }

      goto LABEL_32;
    }

    if (MEMORY[0x25F8746E0](v6) != MEMORY[0x277D86498])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received invalid result type");
      }

      goto LABEL_32;
    }

    value = xpc_int64_get_value(v7);
    if (!value)
    {

      string = xpc_dictionary_get_string(v3, "IDSDeviceID");
      if (string)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
        goto LABEL_34;
      }

      v36 = nrCopyLogObj_2646();
      v37 = v36;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v38 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);

        if (!v38)
        {
          goto LABEL_33;
        }
      }

      v7 = nrCopyLogObj_2646();
      _NRLogWithArgs(v7, 17, "Missing device list string in XPC response");
      goto LABEL_32;
    }

    v11 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v12 = nrCopyLogObj_2646();
        _NRLogWithArgs(v12, 17, "received failure result code: [%d] %s", v11, __strerrbuf);
      }

      goto LABEL_32;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v14 = nrCopyLogObj_sNRLogObj_2653;
    if (!v11)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v19 = v14;
        v20 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

        if (!v20)
        {
          goto LABEL_32;
        }
      }

      v21 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v11);
      _NRLogWithArgs(v21, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCCopyIDSDeviceID", 1298, v11, StringFromNRXPCRes);

      goto LABEL_32;
    }

    if (sNRCopyLogToStdErr)
    {

LABEL_69:
      v17 = nrCopyLogObj_2646();
      v18 = createStringFromNRXPCRes(v11);
      _NRLogWithArgs(v17, 17, "received internal failure result code: [%lld] %@", v11, v18);

      goto LABEL_32;
    }

    v15 = v14;
    v16 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

    if (v16)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v24 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v24;
      v35 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (!v35)
      {
        goto LABEL_33;
      }
    }

    v7 = nrCopyLogObj_2646();
    _NRLogWithArgs(v7, 17, "received nil response");
  }

LABEL_32:

LABEL_33:
  v8 = @"ERROR";
LABEL_34:

  return v8;
}