@interface GTMTLReplay
@end

@implementation GTMTLReplay

void __GTMTLReplay_CLI_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v15 = [[v7 alloc] initWithFormat:@"%@-%@-%@", a1[4], v9, v8];

  v11 = a1[6];
  v12 = MEMORY[0x277CBEBC0];
  v13 = [v15 stringByAppendingPathExtension:@"png"];
  v14 = [v12 fileURLWithPath:v13 isDirectory:0 relativeToURL:a1[5]];
  v11(v10, v14);
}

void __GTMTLReplay_CLI_block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (!v3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_12;
  }

  v4 = [v3 objectForKeyedSubscript:@"Streaming APS Profiling"];
  v5 = v4;
  if (!v4)
  {
    v6 = [v11 objectForKeyedSubscript:@"Remove APS Data"];

    if (v6)
    {
      [*(a1 + 40) removeAPSData];
    }

    else
    {
      v8 = [v11 objectForKeyedSubscript:@"Remove APS Timeline"];

      if (v8)
      {
        [*(a1 + 40) removeAPSTimelineData];
        v7 = *(a1 + 56);
        goto LABEL_10;
      }

      v9 = [v11 objectForKeyedSubscript:@"Streaming APS Counters"];

      if (!v9)
      {
        v10 = [v11 objectForKeyedSubscript:@"Remove APS Counters"];

        if (!v10)
        {
          if (*(*(*(a1 + 64) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSData:v11];
          }

          else if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSTimelineData:v11];
          }

          else if (*(*(*(a1 + 48) + 8) + 24) == 1)
          {
            [*(a1 + 40) addAPSCounterData:v11];
          }

          goto LABEL_11;
        }

        [*(a1 + 40) removeAPSCounterData];
        v7 = *(a1 + 48);
        goto LABEL_10;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v7 = *(a1 + 64);
LABEL_10:
    *(*(v7 + 8) + 24) = 0;
    goto LABEL_11;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = [v4 isEqualToString:@"Timeline"];
  *(*(*(a1 + 64) + 8) + 24) = [v5 isEqualToString:@"Profiling"];
LABEL_11:

LABEL_12:
}

void __GTMTLReplay_CLI_block_invoke_2_317(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    if (g_runningInCI == 1)
    {
      v6 = v3;
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tBatch ID Filtering Data %lu/%lu", *(*(*(a1 + 32) + 8) + 24), *(a1 + 40)];
      v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v5 UTF8String]);
      v3 = v6;
    }
  }
}

void __GTMTLReplay_CLI_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    [*(a1 + 32) addGPUTimelineData:v3];
    v3 = v6;
    ++*(*(*(a1 + 40) + 8) + 24);
    if (g_runningInCI == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tTimeline Data %lu", *(*(*(a1 + 40) + 8) + 24)];
      v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v5 UTF8String]);
      v3 = v6;
    }
  }
}

void __GTMTLReplay_CLI_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    [*(a1 + 32) addShaderProfilerData:v3];
    v3 = v6;
    ++*(*(*(a1 + 40) + 8) + 24);
    if (g_runningInCI == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tShader Profiler Data %lu", *(*(*(a1 + 40) + 8) + 24)];
      v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v5 UTF8String]);
      v3 = v6;
    }
  }
}

void __GTMTLReplay_CLI_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    if (g_runningInCI == 1)
    {
      v6 = v3;
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tBatch ID Filtering Data %lu/%lu", *(*(*(a1 + 32) + 8) + 24), *(a1 + 40)];
      v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v5 UTF8String]);
      v3 = v6;
    }
  }
}

void __GTMTLReplay_addGPUrestartHandler_block_invoke(uint64_t a1, void *a2)
{
  properties[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 5640);
  v6 = a2;
  v7 = v3;
  if (os_variant_has_internal_content())
  {
    v8 = [v6 device];
    v9 = [v8 targetDeviceArchitecture];
    v10 = [v9 cpuType];

    if (v10 != 16777235 || [v6 status] != 5)
    {
      goto LABEL_65;
    }

    v11 = v6;
    v12 = [v11 error];

    if (!v12 || ([v11 error], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "code"), v13, v14 != 3) || (properties[0] = 0, (v15 = IOServiceNameMatching("AGXRestartReport")) == 0) || (MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v15)) == 0 || (IORegistryEntryCreateCFProperties(MatchingService, properties, *MEMORY[0x277CBECE8], 0), !properties[0]) || (Value = CFDictionaryGetValue(properties[0], @"CrashReport"), (v18 = Value) == 0) || (v19 = CFDictionaryGetValue(Value, @"analysis"), (v20 = v19) == 0) || ((v77 = 0, RestartReportInt = TryGetRestartReportInt(v19, &v77), v77 == 3) ? (v22 = RestartReportInt) : (v22 = 0), !v22 || (v23 = getpid(), proc_name(v23, properties, 0x400u)) && TryGetRestartReportString(v18, __s2) && strcmp(properties, __s2)))
    {
LABEL_64:

LABEL_65:
      goto LABEL_66;
    }

    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, v24);
    v25 = 0;
    v26 = 1;
    while (1)
    {
      v27 = v26;
      v28 = CFDictionaryGetValue(v20, off_279658A80[v25]);
      if (v28)
      {
        break;
      }

      v26 = 0;
      v25 = 1;
      if ((v27 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v29 = newpool;
    v30 = apr_itoa(newpool, v25);
    v31 = apr_pstrcat(v29, "BIF", v30, " fault", 0);
    valuePtr[0].n128_u64[0] = 0;
    *n = 0;
    *v74 = 0;
    *v75 = 0;
    v72 = 0;
    *v73 = 0;
    v32 = CFDictionaryGetValue(v28, @"requestor");
    if (CFNumberGetValue(v32, kCFNumberSInt64Type, valuePtr))
    {
      v33 = apr_itoa(v29, valuePtr[0].n128_i32[0]);
      v31 = apr_pstrcat(v29, v31, "\n\trequestor: ", v33, 0);
    }

    v34 = CFDictionaryGetValue(v28, @"sideband");
    if (CFNumberGetValue(v34, kCFNumberSInt64Type, n))
    {
      v35 = apr_itoa(v29, n[0]);
      v31 = apr_pstrcat(v29, v31, "\n\tsideband: ", v35, 0);
    }

    v36 = CFDictionaryGetValue(v28, @"level");
    if (CFNumberGetValue(v36, kCFNumberSInt64Type, v75))
    {
      v37 = apr_itoa(v29, v75[0]);
      v31 = apr_pstrcat(v29, v31, "\n\tlevel: ", v37, 0);
    }

    v38 = CFDictionaryGetValue(v28, @"is_read");
    if (CFNumberGetValue(v38, kCFNumberSInt64Type, v74))
    {
      v39 = newpool;
      v40 = apr_itoa(newpool, v74[0]);
      v31 = apr_pstrcat(v39, v31, "\n\tis_read: ", v40, 0);
    }

    v41 = CFDictionaryGetValue(v28, @"pm_protect");
    if (CFNumberGetValue(v41, kCFNumberSInt64Type, v73))
    {
      v42 = newpool;
      v43 = apr_itoa(newpool, v73[0]);
      v31 = apr_pstrcat(v42, v31, "\n\tpm_protect: ", v43, 0);
    }

    v44 = CFDictionaryGetValue(v28, @"address");
    if (CFNumberGetValue(v44, kCFNumberSInt64Type, &v72))
    {
      v45 = v72;
      __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "0x%llx", v72);
      v31 = apr_pstrcat(newpool, v31, "\n\taddress: ", buf, 0);
    }

    else
    {
      v45 = 0;
    }

    if (s_logUsingOsLog == 1)
    {
      v46 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v80 = v31;
        _os_log_fault_impl(&dword_24D764000, v46, OS_LOG_TYPE_FAULT, "fail: Page fault: %s", buf, 0xCu);
      }
    }

    else
    {
      v47 = *MEMORY[0x277D85DF8];
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Page fault: %s", v31];
      v48 = v46;
      fprintf(v47, "%s\n", [v46 UTF8String]);
    }

    v49 = *(v4 + 40);
    v71 = 0;
    memset(valuePtr, 0, sizeof(valuePtr));
    v50 = newpool;
    GTMTLIndirectResources_allResourcesByKey(valuePtr, v49, v5, 1, newpool);
    v51 = GTMTLIndirectResources_remap(valuePtr, v7, v50);
    v52 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*v51 + 24), *(*v51 + 12), v45);
    if (v52 && (v53 = v52, (v54 = v52[2]) != 0))
    {
      v55 = *v52;
      Object = GTMTLSMContext_getObject(*v49, v54, v5);
      if (Object)
      {
        v57 = Object;
        v58 = *(v53 + 24);
        if (*(v53 + 24))
        {
          if (v58 == 9)
          {
            v69 = apr_ltoa(v50, Object[18]);
            v59 = "acceleration structure";
          }

          else if (v58 == 2)
          {
            v69 = apr_ltoa(v50, Object[26]);
            v59 = "texture";
          }

          else
          {
            v69 = 0;
            v59 = "unknown";
          }
        }

        else
        {
          v69 = 0;
          v59 = "buffer";
        }

        __snprintf_chk(buf, 0x400uLL, 0, 0x400uLL, "0x%llx - 0x%llx", *v53, v53[1] + *v53);
        v64 = apr_ltoa(v50, v45 - v55);
        v65 = apr_pstrcat(v50, "Found a resource at page fault address:", "\n\tResource type: ", v59, "\n\tResource GPU Address Range: ", buf, "\n\tPage fault offset: ", v64, 0);
        v66 = v65;
        if (v57[11])
        {
          v66 = apr_pstrcat(v50, v65, "\n\tLabel: ", v57[11], 0);
        }

        if (v69)
        {
          v66 = apr_pstrcat(v50, v66, "\n\tgpuResourceID: ", v69, 0);
        }

        if (s_logUsingOsLog == 1)
        {
          v60 = gt_tagged_log(0xAu);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            n[0] = 136315138;
            *&n[1] = v66;
            _os_log_fault_impl(&dword_24D764000, v60, OS_LOG_TYPE_FAULT, "fail: %s", n, 0xCu);
          }
        }

        else
        {
          v67 = *MEMORY[0x277D85DF8];
          v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: %s", v66];
          v68 = v60;
          fprintf(v67, "%s\n", [v60 UTF8String]);
        }

LABEL_62:
      }
    }

    else
    {
      if (s_logUsingOsLog == 1)
      {
        v60 = gt_tagged_log(0xAu);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_24D764000, v60, OS_LOG_TYPE_FAULT, "fail: Couldn't find a resource responsible for page fault", buf, 2u);
        }

        goto LABEL_62;
      }

      v61 = *MEMORY[0x277D85DF8];
      v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Couldn't find a resource responsible for page fault"];
      v63 = v62;
      fprintf(v61, "%s\n", [v62 UTF8String]);
    }

LABEL_63:
    apr_pool_destroy(newpool);
    goto LABEL_64;
  }

LABEL_66:
}

@end