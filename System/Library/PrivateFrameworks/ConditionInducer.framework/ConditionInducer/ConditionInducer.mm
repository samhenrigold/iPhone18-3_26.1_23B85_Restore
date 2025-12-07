posix_spawnattr_t copyPOSIXSpawnAttributes()
{
  v11 = 0;
  v9 = -1;
  v10 = -1;
  v0 = posix_spawnattr_init(&v11);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      copyPOSIXSpawnAttributes_cold_1(v1);
    }
  }

  else
  {
    v9 = -1;
    v10 = 0;
    v2 = posix_spawnattr_setsigmask(&v11, &v10);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        copyPOSIXSpawnAttributes_cold_2(v3);
      }
    }

    else
    {
      v4 = posix_spawnattr_setsigdefault(&v11, &v9);
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          copyPOSIXSpawnAttributes_cold_3(v5);
        }
      }

      else
      {
        v6 = posix_spawnattr_setflags(&v11, 142);
        if (!v6)
        {
          return v11;
        }

        v7 = v6;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          copyPOSIXSpawnAttributes_cold_4(v7);
        }
      }
    }
  }

  if (v11)
  {
    posix_spawnattr_destroy(&v11);
  }

  return 0;
}

void sub_243E1166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t hasEntitlementValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  error = 0;
  v7 = SecTaskCreateFromSelf(0);
  v11 = v7;
  if (!v7)
  {
    v20 = createConditionInducerError("hasEntitlementValue", 82, -1, 0, @"Failed to create task.", v8, v9, v10, v24);
    v16 = 0;
    goto LABEL_10;
  }

  v12 = SecTaskCopyValueForEntitlement(v7, v5, &error);
  v16 = v12;
  if (!v12)
  {
    createConditionInducerError("hasEntitlementValue", 88, -1, error, @"Missing entitlement: %@", v13, v14, v15, v5);
    v20 = LABEL_9:;
LABEL_10:
    v21 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (([v12 isEqual:v6] & 1) == 0)
  {
    createConditionInducerError("hasEntitlementValue", 94, -1, 0, @"Unexpected entitlement value (actual, expected): (%@, %@)", v17, v18, v19, v16);
    goto LABEL_9;
  }

  v20 = 0;
  v21 = 1;
  if (a3)
  {
LABEL_11:
    v22 = v20;
    *a3 = v20;
  }

LABEL_12:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  return v21;
}

id createConditionInducerError(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v14 = MEMORY[0x277CCAB68];
  v15 = a5;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v16)
  {
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (a1)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    [v18 setObject:v19 forKeyedSubscript:@"FunctionName"];
  }

  if (a2)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    [v18 setObject:v20 forKeyedSubscript:@"SourceLine"];
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCOErrorDomain" code:a3 userInfo:v18];

  return v21;
}

uint64_t safeRemoveItemAtPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (!v5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v7 = [v6 removeItemAtPath:v3 error:&v16];
  v8 = v16;

  if (v7)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_9;
  }

  v12 = createConditionInducerError("safeRemoveItemAtPath", 157, -1, v8, @"Failed to remove file (%@).", v9, v10, v11, v3);

  if (a2)
  {
    v13 = v12;
    v14 = 0;
    *a2 = v12;
  }

  else
  {
    v14 = 0;
  }

  v8 = v12;
LABEL_9:

  return v14;
}

uint64_t safeRemoveItemAtPathWithRegex(void *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v10 = v6;
  if (!v5 || !v6)
  {
    v18 = createConditionInducerError("safeRemoveItemAtPathWithRegex", 180, -1, 0, @"Invalid input(s).", v7, v8, v9, v35);
    v11 = 0;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v43 = 0;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v6 options:1 error:&v43];
  v15 = v43;
  if (!v11)
  {
    v18 = createConditionInducerError("safeRemoveItemAtPathWithRegex", 188, -1, v15, @"Failed to allocate regex.", v12, v13, v14, v35);

    if (!a3)
    {
LABEL_20:
      v31 = 0;
      goto LABEL_21;
    }

LABEL_18:
    v32 = v18;
    v31 = 0;
    *a3 = v18;
    goto LABEL_21;
  }

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = v15;
  v17 = [v16 contentsOfDirectoryAtPath:v5 error:&v42];
  v18 = v42;

  if (!v17)
  {
    v33 = createConditionInducerError("safeRemoveItemAtPathWithRegex", 194, -1, v18, @"Failed to query files at %@.", v19, v20, v21, v5);

    v18 = v33;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v36 = v10;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = v17;
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v38 + 1) + 8 * i);
        if ([v11 numberOfMatchesInString:v27 options:0 range:{0, objc_msgSend(v27, "length")}])
        {
          v28 = [MEMORY[0x277CCAA00] defaultManager];
          v29 = [v5 stringByAppendingPathComponent:v27];
          v37 = v18;
          [v28 removeItemAtPath:v29 error:&v37];
          v30 = v37;

          v18 = v30;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v24);
  }

  v31 = 1;
  v10 = v36;
LABEL_21:

  return v31;
}

id copy_calling_process_name()
{
  MEMORY[0x28223BE20]();
  v11 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  memset(v9, 0, sizeof(v9));
  v0 = [MEMORY[0x277CCAE80] currentConnection];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 processIdentifier];
  }

  else
  {
    v2 = getpid();
  }

  proc_pidpath(v2, buffer, 0x1000u);
  v3 = strlen(buffer);
  v4 = v3 - 1;
  do
  {
    v5 = __OFSUB__(v3--, 1);
    if (v3 < 0 != v5)
    {
      break;
    }

    v6 = buffer[v4--];
  }

  while (v6 != 47);
  __strlcpy_chk();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v9];

  return v7;
}

id _copySignpostLowSeverityLogHandle(uint64_t a1)
{
  if (_copySignpostLowSeverityLogHandle_onceToken != -1)
  {
    _copySignpostLowSeverityLogHandle_cold_1();
  }

  v2 = _copySignpostLowSeverityLogHandle_log;

  return v2;
}

uint64_t ___copySignpostLowSeverityLogHandle_block_invoke()
{
  _copySignpostLowSeverityLogHandle_log = os_log_create("com.apple.ConditionInducer.LowSeverity", "InduceCondition");

  return MEMORY[0x2821F96F8]();
}

void sub_243E13198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void _dummySlowNetwork()
{
  v0 = objc_alloc_init(SlowNetworkCondition);
}

void _dummyThermalCondition()
{
  v0 = objc_alloc_init(ThermalNominal);
}

void _dummyGPUPerfStateCondition()
{
  v0 = objc_alloc_init(GPUPerformanceStateDefault);
}

void sub_243E17A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_243E188EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243E18E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243E1935C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _nlc_connect(_DWORD *a1)
{
  *sp = 0;
  v2 = MEMORY[0x277D85F18];
  bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.NetworkLinkConditioner", sp);
  if (bootstrap_look_up(*v2, "com.apple.NetworkLinkConditioner", sp))
  {
    puts("NLCd : Bootstrap failure");
    return 100;
  }

  else
  {
    v4 = nlc_connect(sp[0], a1, a1 + 1, &sp[1]);
    if (v4)
    {
      mach_error("nlc_connect:", v4);
    }

    return sp[1];
  }
}

uint64_t _nlc_disconnect(mach_port_name_t *a1)
{
  v4 = 0;
  v2 = nlc_disconnect(*a1, a1[1], &v4);
  if (v2)
  {
    mach_error("nlc_disconnect:", v2);
  }

  mach_port_deallocate(*MEMORY[0x277D85F48], *a1);
  return v4;
}

uint64_t _nlc_start_simulation(unsigned int *a1, __int128 *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = 0;
  *(a2 + 1) = 0;
  v3 = a2[11];
  v28 = a2[10];
  v29 = v3;
  v30 = a2[12];
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v5 = a2[9];
  v26 = a2[8];
  v27 = v5;
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[4];
  v23 = v7;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = nlc_simulate(*a1, &v18, 0xD0u, a1[1], &v17);
  if (v9)
  {
    mach_error("_nlc_start_simulation:", v9);
  }

  v10 = v29;
  a2[10] = v28;
  a2[11] = v10;
  a2[12] = v30;
  v11 = v25;
  a2[6] = v24;
  a2[7] = v11;
  v12 = v27;
  a2[8] = v26;
  a2[9] = v12;
  v13 = v21;
  a2[2] = v20;
  a2[3] = v13;
  v14 = v23;
  a2[4] = v22;
  a2[5] = v14;
  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
  return v17;
}

uint64_t _nlc_stop_simulation(unsigned int *a1, __int128 *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = 0;
  *(a2 + 1) = 1;
  v3 = a2[11];
  v28 = a2[10];
  v29 = v3;
  v30 = a2[12];
  v4 = a2[7];
  v24 = a2[6];
  v25 = v4;
  v5 = a2[9];
  v26 = a2[8];
  v27 = v5;
  v6 = a2[3];
  v20 = a2[2];
  v21 = v6;
  v7 = a2[5];
  v22 = a2[4];
  v23 = v7;
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v9 = nlc_stop_simulation(*a1, &v18, 0xD0u, a1[1], &v17);
  if (v9)
  {
    mach_error("_nlc_stop_simulation:", v9);
  }

  v10 = v29;
  a2[10] = v28;
  a2[11] = v10;
  a2[12] = v30;
  v11 = v25;
  a2[6] = v24;
  a2[7] = v11;
  v12 = v27;
  a2[8] = v26;
  a2[9] = v12;
  v13 = v21;
  a2[2] = v20;
  a2[3] = v13;
  v14 = v23;
  a2[4] = v22;
  a2[5] = v14;
  v15 = v19;
  *a2 = v18;
  a2[1] = v15;
  return v17;
}

uint64_t _nlc_get_status(unsigned int *a1, _DWORD *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  a2[1] = 2;
  __n = 208;
  v4 = *(a2 + 11);
  v14[10] = *(a2 + 10);
  v14[11] = v4;
  v14[12] = *(a2 + 12);
  v5 = *(a2 + 7);
  v14[6] = *(a2 + 6);
  v14[7] = v5;
  v6 = *(a2 + 9);
  v14[8] = *(a2 + 8);
  v14[9] = v6;
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v8 = *(a2 + 5);
  v14[4] = *(a2 + 4);
  v14[5] = v8;
  v9 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v9;
  bzero(__src, 0x400uLL);
  status = nlc_get_status(*a1, v14, 0xD0u, __src, &__n, a1[1], &__n + 1);
  if (status)
  {
    mach_error("_nlc_get_status:", status);
  }

  memcpy(a2, __src, __n);
  return HIDWORD(__n);
}

uint64_t nlc_connect(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v19, 0, sizeof(v19));
  *&reply_port_12[4] = 0u;
  reply_port = 0;
  v8 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v8;
  v14 = 5395;
  *reply_port_12 = 0x9D4C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    v9 = reply_port_8;
  }

  else
  {
    v9 = v8;
  }

  v10 = mach_msg(&v14, 3, 0x18u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v10)
    {
      if (*&reply_port_12[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&reply_port_12[4] == 40368)
      {
        if (v14 < 0)
        {
          v11 = 4294966996;
          if (*&reply_port_12[8] == 1 && reply_port == 56 && !reply_port_4 && HIWORD(v19[0]) << 16 == 1114112)
          {
            v11 = 0;
            v12 = v19[3];
            *a2 = *&reply_port_12[12];
            *a3 = v12;
            *a4 = v19[4];
            return v11;
          }
        }

        else if (reply_port == 36)
        {
          v11 = 4294966996;
          if (*&reply_port_12[16])
          {
            if (reply_port_4)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&reply_port_12[16];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  return v11;
}

uint64_t nlc_disconnect(int a1, int a2, _DWORD *a3)
{
  memset(&reply_port[16], 0, 28);
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  *&reply_port[28] = a2;
  v5 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v5;
  v11 = 5395;
  *&reply_port[12] = 0x9D4D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&reply_port[8];
  }

  else
  {
    v6 = v5;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
      return v8;
    }

    if (*&reply_port[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&reply_port[16] == 40369)
    {
      if ((v11 & 0x80000000) == 0)
      {
        if (*reply_port == 40)
        {
          if (!*&reply_port[4])
          {
            v8 = *&reply_port[28];
            if (!*&reply_port[28])
            {
              *a3 = *&reply_port[32];
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (*reply_port == 36)
        {
          if (*&reply_port[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&reply_port[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&reply_port[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(*&reply_port[8]);
  return v8;
}

uint64_t nlc_simulate(mach_port_t a1, uint64_t a2, unsigned int a3, mach_port_t a4, _DWORD *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *reply_port = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v18) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v10) = a4;
    v11 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v11;
    reply_port[0] = 5395;
    *&v17 = 0x9D4E00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(reply_port);
      v12 = reply_port[3];
    }

    else
    {
      v12 = v11;
    }

    v13 = mach_msg(reply_port, 3, v10 + 40, 0x30u, v12, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      return v5;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port[3]);
      return v5;
    }

    if (DWORD1(v17) == 71)
    {
      v5 = 4294966988;
    }

    else if (DWORD1(v17) == 40370)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v5 = v18;
            if (!v18)
            {
              *a5 = DWORD1(v18);
              return v5;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v14 = 1;
          }

          else
          {
            v14 = v18 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(reply_port);
    return v5;
  }

  return 4294966989;
}

uint64_t nlc_stop_simulation(mach_port_t a1, uint64_t a2, unsigned int a3, mach_port_t a4, _DWORD *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *reply_port = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v18) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v10) = a4;
    v11 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v11;
    reply_port[0] = 5395;
    *&v17 = 0x9D4F00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(reply_port);
      v12 = reply_port[3];
    }

    else
    {
      v12 = v11;
    }

    v13 = mach_msg(reply_port, 3, v10 + 40, 0x30u, v12, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      return v5;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port[3]);
      return v5;
    }

    if (DWORD1(v17) == 71)
    {
      v5 = 4294966988;
    }

    else if (DWORD1(v17) == 40371)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v5 = v18;
            if (!v18)
            {
              *a5 = DWORD1(v18);
              return v5;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v14 = 1;
          }

          else
          {
            v14 = v18 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(reply_port);
    return v5;
  }

  return 4294966989;
}

uint64_t nlc_get_status(mach_port_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5, mach_port_t a6, _DWORD *a7)
{
  v56 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__n = 0u;
  v27 = 0u;
  *reply_port = 0u;
  v25 = 0u;
  *(&v25 + 1) = *MEMORY[0x277D85EF8];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(__n[0]) = a3;
    v14 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v14) = a6;
    v15 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v15;
    reply_port[0] = 5395;
    *&v25 = 0x9D5000000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(reply_port);
      v16 = reply_port[3];
    }

    else
    {
      v16 = v15;
    }

    v17 = mach_msg(reply_port, 3, v14 + 40, 0x434u, v16, 0, 0);
    v7 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      return v7;
    }

    if (v17)
    {
      mig_dealloc_reply_port(reply_port[3]);
      return v7;
    }

    if (DWORD1(v25) == 71)
    {
      v7 = 4294966988;
    }

    else if (DWORD1(v25) == 40372)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] - 1069 <= 0xFFFFFBFE)
        {
          if (LODWORD(__n[0]))
          {
            v18 = reply_port[2] == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && reply_port[1] == 36)
          {
            v7 = LODWORD(__n[0]);
          }

          else
          {
            v7 = 4294966996;
          }

          goto LABEL_28;
        }

        if (!reply_port[2])
        {
          v7 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_28;
          }

          v21 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) <= 0x400)
          {
            v7 = 4294966996;
            if (reply_port[1] - 44 >= HIDWORD(__n[0]))
            {
              v22 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port[1] == v22 + 44)
              {
                v23 = &reply_port[-256] + v22;
                memcpy(a4, &__n[1], HIDWORD(__n[0]));
                v7 = 0;
                *a5 = v21;
                *a7 = *(v23 + 266);
                return v7;
              }
            }

            goto LABEL_28;
          }
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(reply_port);
    return v7;
  }

  return 4294966989;
}

uint64_t SetDVFSStates(mach_port_t a1, uint64_t *input)
{
  if (!a1)
  {
    return 0;
  }

  v2 = IOConnectCallMethod(a1, dword_27EDBE168, input, 5u, 0, 0, 0, 0, 0, 0);
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    SetDVFSStates_cold_1(v2);
  }

  return v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void SetDVFSStates_cold_1(mach_error_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(a1)];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_243E0F000, MEMORY[0x277D86220], v2, "_setDVFSStates (0x%x - %@)", v3, v4, v5, v6);
}

BOOL CallIO(mach_port_t a1, void *inputStruct, void *outputStruct, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  outputStructCnt = 8;
  v5 = IOConnectCallStructMethod(a1, 0x41u, inputStruct, 8uLL, outputStruct, &outputStructCnt);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      CallIO_cold_1(a4, v7);
    }
  }

  else if (outputStructCnt != 8)
  {
    CallIO_cold_2();
  }

  return v6;
}

void CallIO_cold_1(uint64_t a1, mach_error_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(a2)];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x22u);
}

void copyPOSIXSpawnAttributes_cold_1(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void copyPOSIXSpawnAttributes_cold_2(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void copyPOSIXSpawnAttributes_cold_3(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void copyPOSIXSpawnAttributes_cold_4(int a1)
{
  strerror(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}