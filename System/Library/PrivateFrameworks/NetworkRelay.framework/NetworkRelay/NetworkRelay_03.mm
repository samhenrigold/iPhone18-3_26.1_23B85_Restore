void *nrXPCMeasureBTLatency(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
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
      v27 = v24;
      v28 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v28)
      {
        goto LABEL_81;
      }
    }

    v29 = nrCopyLogObj_2646();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);

LABEL_81:
    v30 = _os_log_pack_size();
    v32 = &uuid[-((MEMORY[0x28223BE20](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v33 = __error();
    v34 = _os_log_pack_fill(v32, v30, *v33, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v34, "nr_xpc_dictionary_create");
    v35 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v35, v32);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1CuLL);
  v4 = v3;
  if (v1)
  {
    *uuid = 0;
    v43 = 0;
    [v1 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "NRUUID", uuid);
    goto LABEL_4;
  }

  v25 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v36 = v25;
    v37 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

    if (!v37)
    {
      goto LABEL_4;
    }
  }

  v38 = nrCopyLogObj_2646();
  _NRLogWithArgs(v38, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_4:
  v5 = nrXPCSendSyncInner("nrXPCMeasureBTLatency", v4);
  v6 = v5;
  if (!v5)
  {
    v26 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v39 = v26;
      v40 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);

      if (!v40)
      {
        goto LABEL_35;
      }
    }

    v10 = nrCopyLogObj_2646();
    _NRLogWithArgs(v10, 17, "received nil response");
    goto LABEL_34;
  }

  v7 = MEMORY[0x25F8746E0](v5);
  if (v7 == MEMORY[0x277D86468])
  {
    v9 = xpc_dictionary_get_value(v6, "Result");
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

      uint64 = xpc_dictionary_get_uint64(v6, "BTLatency");
      goto LABEL_36;
    }

    v13 = value;
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
        v14 = nrCopyLogObj_2646();
        _NRLogWithArgs(v14, 17, "received failure result code: [%d] %s", v13, uuid);
      }

      goto LABEL_34;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v15 = nrCopyLogObj_sNRLogObj_2653;
    if (!v13)
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
          goto LABEL_34;
        }
      }

      v22 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v13);
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", "", "nrXPCMeasureBTLatency", 1313, v13, StringFromNRXPCRes);

      goto LABEL_34;
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
LABEL_34:

        goto LABEL_35;
      }
    }

    v18 = nrCopyLogObj_2646();
    v19 = createStringFromNRXPCRes(v13);
    _NRLogWithArgs(v18, 17, "received internal failure result code: [%lld] %@", v13, v19);

    goto LABEL_34;
  }

  if (v7 != MEMORY[0x277D86480])
  {
    uint64 = MEMORY[0x25F874580](v6);
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

  if (v6 == MEMORY[0x277D863F0])
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

  if (v6 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", "", "nrXPCMeasureBTLatency", 1313);
    }

    goto LABEL_35;
  }

  if (v6 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v10 = nrCopyLogObj_2646();
    _NRLogWithArgs(v10, 17, "received XPC_ERROR_TERMINATION_IMMINENT");
    goto LABEL_34;
  }

  uint64 = MEMORY[0x25F874580](v6);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s");
  }

LABEL_12:
  if (uint64)
  {
    free(uint64);
LABEL_35:
    uint64 = 0;
  }

LABEL_36:

  return uint64;
}

id nrCopyAccountIdentifierForNRUUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v3 = [v1 UUIDString];
    [v2 appendFormat:@"NRD/%s", objc_msgSend(v3, "UTF8String")];
  }

  else
  {
    v5 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

      if (!v7)
      {
        v2 = 0;
        goto LABEL_4;
      }
    }

    v3 = nrCopyLogObj_2646();
    _NRLogWithArgs(v3, 17, "%s called with null nrUUID", "nrCopyAccountIdentifierForNRUUID");
    v2 = 0;
  }

LABEL_4:
  return v2;
}

uint64_t nrSupportsPHSProxy()
{
  if (nrSupportsPHSProxy_onceToken != -1)
  {
    dispatch_once(&nrSupportsPHSProxy_onceToken, &__block_literal_global_519);
  }

  return nrSupportsPHSProxy_supported;
}

uint64_t __nrSupportsPHSProxy_block_invoke()
{
  result = _os_feature_enabled_impl();
  nrSupportsPHSProxy_supported = result;
  return result;
}

uint64_t nrSupportsPHSProxyClient()
{
  if (nrSupportsPHSProxyClient_onceToken != -1)
  {
    dispatch_once(&nrSupportsPHSProxyClient_onceToken, &__block_literal_global_523);
  }

  return nrSupportsPHSProxyClient_supported;
}

uint64_t __nrSupportsPHSProxyClient_block_invoke()
{
  result = _os_feature_enabled_impl();
  nrSupportsPHSProxyClient_supported = result;
  return result;
}

sec_identity_t NRCreateLocalIdentity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v8 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v8;
      v11 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

      if (!v11)
      {
        return 0;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "%s called with null privateKey");
LABEL_26:

    return 0;
  }

  if (!a2)
  {
    v9 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v9;
      v14 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        return 0;
      }
    }

    v12 = nrCopyLogObj_2646();
    _NRLogWithArgs(v12, 17, "%s called with null publicKey");
    goto LABEL_26;
  }

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (SelfSignedCertificate)
  {
    v3 = SelfSignedCertificate;
    v4 = SecIdentityCreate();
    if (v4)
    {
      v5 = v4;
      v6 = sec_identity_create(v4);
      CFRelease(v5);
      CFRelease(v3);
      return v6;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d SecIdentityCreate() failed", "", "NRCreateLocalIdentity", 1376);
    }

    CFRelease(v3);
  }

  else
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d SecGenerateSelfSignedCertificate() failed", "", "NRCreateLocalIdentity", 1370);
    }
  }

  return 0;
}

unint64_t NRConvertMachTimeToMicroseconds(unint64_t result, double a2, double a3, double a4)
{
  if (result)
  {
    if (nr_get_mach_timebase_once != -1)
    {
      v4 = result;
      dispatch_once(&nr_get_mach_timebase_once, &__block_literal_global_567);
      result = v4;
    }

    LODWORD(a3) = nr_get_mach_timebase_info;
    LODWORD(a4) = *algn_27FBB23D4;
    return (result * (0.001 * *&a3) / *&a4);
  }

  return result;
}

double NRDiffMachTimeInSeconds(unint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a1)
  {
    v6 = a2 - a1;
    if (a2 > a1)
    {
      if (nr_get_mach_timebase_once != -1)
      {
        dispatch_once(&nr_get_mach_timebase_once, &__block_literal_global_567);
      }

      LODWORD(a4) = nr_get_mach_timebase_info;
      LODWORD(a5) = *algn_27FBB23D4;
      return v6 * (0.000000001 * *&a4) / *&a5;
    }
  }

  return result;
}

double NRDiffMicroTimeInSeconds(unint64_t a1, unint64_t a2)
{
  v2 = a2 <= a1 || a1 == 0;
  result = (a2 - a1) * 0.000001;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

id nrCopyLogObj_2805()
{
  if (nrCopyLogObj_onceToken_2809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
  }

  v1 = nrCopyLogObj_sNRLogObj_2810;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_2812()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_2810;
  nrCopyLogObj_sNRLogObj_2810 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __nrCopyClassCIdentity_block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDC040];
  v1 = *MEMORY[0x277CDC018];
  v7[0] = *MEMORY[0x277CDC028];
  v7[1] = v1;
  v8[0] = v0;
  v8[1] = &unk_286D2D100;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  RandomKey = SecKeyCreateRandomKey(v2, 0);
  v4 = SecKeyCopyPublicKey(RandomKey);
  v5 = NRCreateLocalIdentity(RandomKey, v4);
  v6 = nrCopyClassCIdentity_classCIdentity;
  nrCopyClassCIdentity_classCIdentity = v5;
}

void __nrCopyClassDIdentity_block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDC040];
  v1 = *MEMORY[0x277CDC018];
  v7[0] = *MEMORY[0x277CDC028];
  v7[1] = v1;
  v8[0] = v0;
  v8[1] = &unk_286D2D100;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  RandomKey = SecKeyCreateRandomKey(v2, 0);
  v4 = SecKeyCopyPublicKey(RandomKey);
  v5 = NRCreateLocalIdentity(RandomKey, v4);
  v6 = nrCopyClassDIdentity_classDIdentity;
  nrCopyClassDIdentity_classDIdentity = v5;
}

__CFString *createStringFromNRServiceClass(uint64_t a1)
{
  if (a1 >= 6)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%u)", a1];
  }

  else
  {
    v1 = off_27996BB58[a1];
  }

  return v1;
}