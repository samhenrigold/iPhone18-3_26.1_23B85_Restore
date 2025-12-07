void ne_url_filter_check(const char *a1, char *a2, uint64_t a3, NSObject *a4, int a5, void *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  if ((get_current_config_state() & 0x10000000000000) == 0)
  {
    if (g_bloom_filter_ready == 1)
    {
      os_unfair_lock_lock(&ne_url_prefilter_lock);
      if (qword_1EBE73C20)
      {
        [NEBloomFilter mmapCleanup:?];
      }

      g_bloom_filter_ready = 0;
      os_unfair_lock_unlock(&ne_url_prefilter_lock);
    }

    v12 = a6[2];

    v12(a6, 1);
    return;
  }

  if (a3)
  {
    v13 = *(a3 + 20);
  }

  else
  {
    v13 = 0;
  }

  v14 = ne_log_obj();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (a5)
  {
    if (!v15)
    {
      goto LABEL_28;
    }

    if (a1)
    {
      v16 = strlen(a1);
      v17 = a1;
    }

    else
    {
      v16 = 0;
      v17 = "<nil url>";
    }

    v20 = "<nil>";
    *buf = 136316419;
    *&buf[4] = "ne_url_filter_check";
    *&buf[12] = 2160;
    if (a2)
    {
      v20 = a2;
    }

    *&buf[14] = 1752392040;
    *&buf[22] = 1040;
    *&buf[24] = v16;
    *&buf[28] = 2101;
    *&buf[30] = v17;
    *&buf[38] = 2080;
    *&buf[40] = v20;
    LOWORD(v58) = 1024;
    *(&v58 + 2) = v13;
    v21 = "%s: URLCHECK: CHECKING URL - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
    v22 = v14;
    v23 = 54;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_28;
    }

    if (a1)
    {
      v18 = strlen(a1);
      v19 = a1;
    }

    else
    {
      v18 = 0;
      v19 = "<nil url>";
    }

    v24 = "<nil>";
    *buf = 136316163;
    *&buf[4] = "ne_url_filter_check";
    *&buf[12] = 1024;
    if (a2)
    {
      v24 = a2;
    }

    *&buf[14] = v18;
    *&buf[18] = 2081;
    *&buf[20] = v19;
    *&buf[28] = 2080;
    *&buf[30] = v24;
    *&buf[38] = 1024;
    *&buf[40] = v13;
    v21 = "%s: URLCHECK: CHECKING URL - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    v22 = v14;
    v23 = 44;
  }

  _os_log_impl(&dword_1C0DA5000, v22, OS_LOG_TYPE_INFO, v21, buf, v23);
LABEL_28:
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2000000000;
  v53[3] = xpc_string_create(a1);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v26 = getpid();
    v27 = ne_copy_signing_identifier_for_pid_with_audit_token(v26, 0);
    v50[3] = v27;
    if (v27 && MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9F10])
    {
      goto LABEL_34;
    }

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    memset(buf, 0, sizeof(buf));
    v28 = getpid();
    snprintf(buf, 0x64uLL, "%d", v28);
    v25 = buf;
  }

  v29 = xpc_string_create(v25);
  v50[3] = v29;
LABEL_34:
  dispatch_retain(a4);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2000000000;
  v48[3] = a4;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3002000000;
  v47[3] = __Block_byref_object_copy__505;
  v47[4] = __Block_byref_object_dispose__506;
  v47[5] = _Block_copy(a6);
  if (ne_url_filter_globals_onceToken != -1)
  {
    dispatch_once(&ne_url_filter_globals_onceToken, &__block_literal_global_57);
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v35 = __ne_url_filter_check_block_invoke;
  v36 = &unk_1E812BBA0;
  v37 = v53;
  v38 = &v49;
  v45 = v13;
  v41 = &ne_url_filter_globals_globals;
  v42 = 0;
  v46 = a5;
  v39 = v48;
  v40 = v47;
  v43 = a1;
  v44 = a2;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2000000000;
  v56 = 1;
  v30 = dispatch_group_create();
  v31 = ne_url_filter_copy_connection(&ne_url_filter_globals_globals, 0);
  if (v31)
  {
    xpc_release(v31);
  }

  else
  {
    g_waitingForXPCConnections = 1;
    dispatch_group_enter(v30);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 0x40000000;
    v54[2] = __ne_url_filter_request_connections_block_invoke;
    v54[3] = &unk_1E812BC70;
    v54[4] = v55;
    v54[5] = v30;
    ne_url_filter_request_connection(&ne_url_filter_globals_globals, 0, v54);
  }

  if (g_waitingForXPCConnections)
  {
    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_create("URL Filter establish connections queue", v32);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __ne_url_filter_request_connections_block_invoke_2;
    *&buf[24] = &unk_1E812BC98;
    *&buf[32] = v34;
    *&buf[40] = v55;
    *&v58 = v33;
    *(&v58 + 1) = v30;
    dispatch_group_notify(v30, v33, buf);
  }

  else
  {
    dispatch_release(v30);
    v35(v34, 1);
  }

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v53, 8);
}

uint64_t get_current_config_state()
{
  check = 0;
  v0 = get_current_config_state_config_token;
  if (get_current_config_state_config_token < 0)
  {
    if (notify_register_check("com.apple.neconfigurationchanged", &get_current_config_state_config_token))
    {
      get_current_config_state_config_token = -1;
      return get_current_config_state_current_state;
    }

    v0 = get_current_config_state_config_token;
    if (get_current_config_state_config_token < 0)
    {
      return get_current_config_state_current_state;
    }
  }

  if (notify_check(v0, &check) || check && notify_get_state(get_current_config_state_config_token, &get_current_config_state_current_state))
  {
    notify_cancel(get_current_config_state_config_token);
    get_current_config_state_config_token = -1;
    get_current_config_state_current_state = 0;
  }

  return get_current_config_state_current_state;
}

__CFBundle *NEHelperIsHostnameDesignatedTracker(__CFBundle *result)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFBundleGetMainBundle();
    if (result)
    {
      result = CFBundleGetValueForInfoDictionaryKey(result, @"NSPrivacyTrackingDomains");
      if (result)
      {
        v2 = result;
        Count = CFArrayGetCount(result);
        if (Count < 1)
        {
          return 0;
        }

        else
        {
          v4 = Count;
          v5 = 0;
          v6 = v1 - 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
            memset(v19, 0, 255);
            CFStringGetCString(ValueAtIndex, v19, 255, 0x8000100u);
            v8 = strlen(v1);
            v9 = v8 ? v8 - (v6[v8] == 46) : 0;
            v10 = strlen(v19);
            if (v10)
            {
              v11 = *(&v19[-1] + v10 + 15) == 46;
              v12 = v10 - v11;
              v13 = v10 == v11 || v9 == 0;
              if (!v13 && v9 >= v12)
              {
                while (1)
                {
                  v15 = v9 - 1;
                  if (v9 < 1)
                  {
                    break;
                  }

                  v16 = v12 - 1;
                  if (v12 < 1)
                  {
                    break;
                  }

                  v17 = v6[v9];
                  v18 = *(v19 + v12 - 1);
                  --v9;
                  --v12;
                  if (v17 != v18)
                  {
                    v9 = v15;
                    v12 = v16;
                    if ((v18 ^ v17) != 0x20)
                    {
                      goto LABEL_25;
                    }
                  }
                }

                if (v9 == v12 || v9 >= 1 && v1[v15] == 46)
                {
                  return 1;
                }
              }
            }

LABEL_25:
            if (++v5 == v4)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

double NEHelperTrackerGetAppInfo()
{
  v0 = malloc_type_malloc(0x80uLL, 0x1050040CA3BB8F4uLL);
  if (v0)
  {
    result = 0.0;
    v0[6] = 0u;
    v0[7] = 0u;
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

BOOL NEHelperTrackerAppInfoSetAuditToken(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a1)
  {
    v3 = *a2;
    *(a1 + 24) = a2[1];
    *(a1 + 8) = v3;
    v4 = *a3;
    *(a1 + 88) = a3[1];
    *(a1 + 72) = v4;
  }

  return a1 != 0;
}

uint64_t NEHelperTrackerGetDispositionRedactLogs(uint64_t a1, CFArrayRef theArray, void *a3, CFIndex *a4, uint64_t a5)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v15 = 0;
  if (!a1)
  {
    return 0;
  }

  v11 = (*(a1 + 124) & 1) != 0 ? NEHelperTrackerCheckMetadataForWeb : NEHelperTrackerCheckMetadataForApp;
  if (!Count)
  {
    return 0;
  }

  os_unfair_lock_lock(&ne_helper_tracker_lock);
  if (!ne_tracker_build_cache() || Count < 1)
  {
LABEL_15:
    os_unfair_lock_unlock(&ne_helper_tracker_lock);
    return 0;
  }

  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
    if (CFStringGetCString(ValueAtIndex, NEHelperTrackerGetDispositionRedactLogs_buffer, 254, 0x8000100u))
    {
      if (NEHelperTrackerMatchDomain(a1, NEHelperTrackerGetDispositionRedactLogs_buffer, v11, a3, &v15, a5))
      {
        break;
      }
    }

    if (Count == ++v12)
    {
      goto LABEL_15;
    }
  }

  if (a4)
  {
    *a4 = v12;
  }

  os_unfair_lock_unlock(&ne_helper_tracker_lock);
  if (v15)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

char *NETrackerGenerateTCCCacheKey(char *result, char *__dst, size_t __size)
{
  if (result)
  {
    v4 = *(result + 1);
    if (v4)
    {
      return snprintf(__dst, __size, "%x-%x-%x-%x-%x-%x-%x-%x", *v4, v4[1], v4[2], v4[3], v4[4], v4[5], v4[6], v4[7]);
    }
  }

  else
  {
    v6 = TCC_CACHE_INTHEAPP_KEY;

    return strncpy(__dst, v6, __size);
  }

  return result;
}

uint64_t NETrackerCheckTCCCache(char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *key = 0u;
  v9 = 0u;
  NETrackerGenerateTCCCacheKey(a1, key, 0x80uLL);
  os_unfair_lock_lock(&g_tcc_cache_lock);
  if (g_tcc_cache && MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(g_tcc_cache, key);
  }

  else
  {
    int64 = 0;
  }

  os_unfair_lock_unlock(&g_tcc_cache_lock);
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134218242;
    v5 = int64;
    v6 = 2080;
    v7 = key;
    _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "NETrackerCheckTCCCache(): (%lld) for bundle: (%s)", &v4, 0x16u);
  }

  if ((int64 - 1) >= 2)
  {
    return 0;
  }

  else
  {
    return int64;
  }
}

BOOL NEHelperIsTCCTrackingAllowed(uint64_t a1)
{
  v2 = NETrackerCheckTCCCache(a1);
  if (v2 == 1)
  {
    return 1;
  }

  if (v2 == 2)
  {
    return 0;
  }

  if (a1)
  {
    if (!*(a1 + 8))
    {
      NETrackerInsertTCCCache(a1, 0);
      return 0;
    }

    v4 = TCCAccessPreflightWithAuditToken();
  }

  else
  {
    v4 = TCCAccessPreflight();
  }

  v3 = v4 == 0;
  if (v4 != 2)
  {
    NETrackerInsertTCCCache(a1, v4 == 0);
  }

  return v3;
}

BOOL NEHelperTrackerMatchDomain(_DWORD *a1, char *__s, uint64_t a3, void *a4, _BYTE *a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 0;
  }

  v6 = a6;
  v11 = strlen(__s);
  v12 = v11;
  if (!v11)
  {
    v19 = ne_log_obj();
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    if (a1)
    {
      v21 = a1[14];
      if (!v21)
      {
        v21 = a1[7];
        if (!v21)
        {
          v21 = a1[30];
          if (!v21)
          {
            v21 = a1[23];
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_64:
    *buf = 136315650;
    v39 = "NEHelperTrackerMatchDomain";
    v40 = 1024;
    *v41 = a1;
    *&v41[4] = 1024;
    *&v41[6] = v21;
    _os_log_debug_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_DEBUG, "%s: Invalid lookup for zero-length domain (app info ref %X pid %d)", buf, 0x18u);
    return 0;
  }

  if (__s[v11 - 1] == 46)
  {
    v12 = v11 - 1;
    if (v11 == 1)
    {
      v19 = ne_log_obj();
      result = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      if (a1)
      {
        v21 = a1[14];
        if (!v21)
        {
          v21 = a1[7];
          if (!v21)
          {
            v21 = a1[30];
            if (!v21)
            {
              v21 = a1[23];
            }
          }
        }
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_64;
    }
  }

  if (v12 >= 1)
  {
    v13 = v12;
    v14 = __s;
    do
    {
      *v14 = __tolower(*v14);
      ++v14;
      --v13;
    }

    while (v13);
  }

  __s[v12] = 0;
  v15 = ne_log_obj();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = "App";
    if (a1)
    {
      v18 = a1[14];
      if (!v18)
      {
        v18 = a1[7];
        if (!v18)
        {
          v18 = a1[30];
          if (!v18)
          {
            v18 = a1[23];
          }
        }
      }

      if (a1[31])
      {
        v17 = "Web";
      }
    }

    else
    {
      v18 = 0;
    }

    *buf = 136317187;
    v39 = "NEHelperTrackerMatchDomain";
    v40 = 2160;
    *v41 = 1752392040;
    *&v41[8] = 1040;
    *&v41[10] = v12;
    v42 = 2101;
    *v43 = __s;
    *&v43[8] = 1024;
    *&v43[10] = a1;
    *&v43[14] = 1024;
    *&v43[16] = v18;
    *v44 = 2080;
    *&v44[2] = "n/a";
    *&v44[10] = 2080;
    *&v44[12] = "n/a";
    *&v44[20] = 2080;
    *&v44[22] = v17;
    v28 = "%s domain lookup for%{sensitive, mask.hash, networkextension:string}.*P (app info ref %X pid %d for %s) %s - %s";
    v29 = v15;
    v30 = 80;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_16;
    }

    v25 = "App";
    if (a1)
    {
      v26 = a1[14];
      if (!v26)
      {
        v26 = a1[7];
        if (!v26)
        {
          v26 = a1[30];
          if (!v26)
          {
            v26 = a1[23];
          }
        }
      }

      if (a1[31])
      {
        v25 = "Web";
      }
    }

    else
    {
      v26 = 0;
    }

    *buf = 136316931;
    v39 = "NEHelperTrackerMatchDomain";
    v40 = 1024;
    *v41 = v12;
    *&v41[4] = 2081;
    *&v41[6] = __s;
    v42 = 1024;
    *v43 = a1;
    *&v43[4] = 1024;
    *&v43[6] = v26;
    *&v43[10] = 2080;
    *&v43[12] = "n/a";
    *v44 = 2080;
    *&v44[2] = "n/a";
    *&v44[10] = 2080;
    *&v44[12] = v25;
    v28 = "%s: domain lookup for<%d : %{private}s> (app info ref %X pid %d for %s) %s - %s";
    v29 = v15;
    v30 = 70;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v29, OS_LOG_TYPE_DEBUG, v28, buf, v30);
LABEL_16:
  if (ne_trie_search() == 0xFFFF)
  {
    return 0;
  }

  v22 = ne_log_obj();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v23)
    {
      v24 = strlen(__s);
      v36 = "App";
      if (a1)
      {
        v37 = a1[14];
        if (!v37)
        {
          v37 = a1[7];
          if (!v37)
          {
            v37 = a1[30];
            if (!v37)
            {
              v37 = a1[23];
            }
          }
        }

        if (a1[31])
        {
          v36 = "Web";
        }
      }

      else
      {
        v37 = 0;
      }

      *buf = 136318723;
      v39 = "NEHelperTrackerMatchDomain";
      v40 = 2160;
      *v41 = 1752392040;
      *&v41[8] = 1040;
      *&v41[10] = v24;
      v42 = 2101;
      *v43 = __s;
      *&v43[8] = 2160;
      *&v43[10] = 1752392040;
      *&v43[18] = 1040;
      *v44 = 4;
      *&v44[4] = 2101;
      *&v44[6] = "null";
      *&v44[14] = 2160;
      *&v44[16] = 1752392040;
      *&v44[24] = 1040;
      *&v44[26] = 4;
      *&v44[30] = 2101;
      *v45 = "null";
      *&v45[8] = 1024;
      *v46 = a1;
      *&v46[4] = 1024;
      *&v46[6] = v37;
      v47 = 2080;
      v48 = "n/a";
      v49 = 2080;
      v50 = "n/a";
      v51 = 2080;
      v52 = v36;
      v33 = "%s: domain lookup result for%{sensitive, mask.hash, networkextension:string}.*P --> metadata %{sensitive, mask.hash, networkextension:string}.*P %{sensitive, mask.hash, networkextension:string}.*P (app info ref %X pid %d %s) %s - %s";
      v34 = v22;
      v35 = 132;
LABEL_76:
      _os_log_debug_impl(&dword_1C0DA5000, v34, OS_LOG_TYPE_DEBUG, v33, buf, v35);
    }
  }

  else if (v23)
  {
    v27 = strlen(__s);
    v31 = "App";
    if (a1)
    {
      v32 = a1[14];
      if (!v32)
      {
        v32 = a1[7];
        if (!v32)
        {
          v32 = a1[30];
          if (!v32)
          {
            v32 = a1[23];
          }
        }
      }

      if (a1[31])
      {
        v31 = "Web";
      }
    }

    else
    {
      v32 = 0;
    }

    *buf = 136317955;
    v39 = "NEHelperTrackerMatchDomain";
    v40 = 1024;
    *v41 = v27;
    *&v41[4] = 2081;
    *&v41[6] = __s;
    v42 = 1024;
    *v43 = 4;
    *&v43[4] = 2081;
    *&v43[6] = "null";
    *&v43[14] = 1024;
    *&v43[16] = 4;
    *v44 = 2081;
    *&v44[2] = "null";
    *&v44[10] = 1024;
    *&v44[12] = a1;
    *&v44[16] = 1024;
    *&v44[18] = v32;
    *&v44[22] = 2080;
    *&v44[24] = "n/a";
    *v45 = 2080;
    *&v45[2] = "n/a";
    *v46 = 2080;
    *&v46[2] = v31;
    v33 = "%s: domain lookup result for<%d : %{private}s> --> metadata <%d : %{private}s> <%d : %{private}s> (app info ref %X pid %d %s) %s - %s";
    v34 = v22;
    v35 = 102;
    goto LABEL_76;
  }

  NEHelperTrackerProcessMatch(__s, 0, a1, a5, v6);
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

void NEHelperTrackerFreeAppInfo(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

BOOL NEHelperTrackerAppInfoSetUUID(uint64_t a1, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  if (a1)
  {
    uuid_copy((a1 + 40), a2);
    uuid_copy((a1 + 104), a3);
  }

  return a1 != 0;
}

uint64_t NEHelperIsHostnameDesignatedTrackerExternal(const char *a1, uint64_t a2)
{
  v2 = 0;
  v95 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return v2;
  }

  if (NEHelperIsHostnameDesignatedTrackerExternal_onceToken != -1)
  {
    dispatch_once(&NEHelperIsHostnameDesignatedTrackerExternal_onceToken, &__block_literal_global_30);
  }

  if (NEHelperIsHostnameDesignatedTrackerExternal_skip_daemon == 1)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buffer[0]) = 0;
      v6 = "Skipping external tracker check from system daemon";
      v7 = buffer;
LABEL_8:
      v8 = v5;
      v9 = 2;
LABEL_115:
      _os_log_debug_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_DEBUG, v6, v7, v9);
      return 0;
    }

    return 0;
  }

  memset(buffer, 0, sizeof(buffer));
  v10 = *a2;
  if (!*a2)
  {
    v11 = NECopySigningIdentifierForPIDwithAuditToken(*(a2 + 24), *(a2 + 8));
    if (!v11)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *__s = 0;
        v6 = "NEHelperIsHostnameDesignatedTrackerExternal(): cannot obtain signing identifier. returning ne_tracker_status_none.";
        v7 = __s;
        goto LABEL_8;
      }

      return 0;
    }

    v12 = v11;
    CFStringGetCString(v11, NEHelperIsHostnameDesignatedTrackerExternal_buffer, 254, 0x600u);
    CFRelease(v12);
    v13 = *(a2 + 24);
    if (!v13)
    {
      v14 = *(a2 + 8);
      if (v14)
      {
        v13 = *(v14 + 20);
      }

      else
      {
        v13 = 0;
      }
    }

    proc_name(v13, buffer, 0x100u);
    v10 = NEHelperIsHostnameDesignatedTrackerExternal_buffer;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *__s = 136315138;
    *&__s[4] = v10;
    _os_log_debug_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): obtained signing identifier: (%s)", __s, 0xCu);
  }

  v16 = *MEMORY[0x1E695E480];
  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x600u);
  v18 = NEHelperTrackerCacheGet(&g_tracker_cache, v17);
  if (!v18)
  {
    theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    AppTrackerDomains = NEHelperGetAppTrackerDomains();
    if (AppTrackerDomains)
    {
      v38 = AppTrackerDomains;
      v72 = v17;
      v73 = v10;
      count = xpc_array_get_count(AppTrackerDomains);
      if (count)
      {
        v40 = count;
        v36 = 0;
        v41 = 0;
        v42 = a1 - 1;
        while (1)
        {
          value = xpc_array_get_value(v38, v41);
          string_ptr = xpc_string_get_string_ptr(value);
          if (string_ptr)
          {
            break;
          }

LABEL_70:
          if (++v41 == v40)
          {
            goto LABEL_80;
          }
        }

        v45 = string_ptr;
        if ((v36 & 1) == 0)
        {
          v46 = strlen(a1);
          if (v46)
          {
            v47 = v46 - (v42[v46] == 46);
          }

          else
          {
            v47 = 0;
          }

          v48 = strlen(v45);
          if (!v48)
          {
            goto LABEL_65;
          }

          v49 = v45[v48 - 1] == 46;
          v50 = v48 - v49;
          v51 = v48 == v49 || v47 == 0;
          if (v51 || v47 < v50)
          {
            goto LABEL_65;
          }

          while (1)
          {
            v53 = v47 - 1;
            if (v47 < 1)
            {
              break;
            }

            v54 = v50 - 1;
            if (v50 < 1)
            {
              break;
            }

            v55 = v42[v47];
            v56 = v45[v50 - 1];
            --v47;
            --v50;
            if (v55 != v56)
            {
              v47 = v53;
              v50 = v54;
              if ((v56 ^ v55) != 0x20)
              {
                goto LABEL_65;
              }
            }
          }

          if (v47 != v50 && (v47 < 1 || a1[v53] != 46))
          {
LABEL_65:
            v36 = 0;
LABEL_66:
            v57 = CFStringCreateWithCString(v16, v45, 0x600u);
            if (v57)
            {
              v58 = v57;
              CFArrayAppendValue(theArray, v57);
              CFRelease(v58);
            }

            else
            {
              v59 = ne_log_obj();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                *__s = 136315138;
                *&__s[4] = v73;
                _os_log_debug_impl(&dword_1C0DA5000, v59, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): unable to cache domain for bundle (%s)", __s, 0xCu);
              }
            }

            goto LABEL_70;
          }

          v60 = ne_log_obj();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            *__s = 136380931;
            *&__s[4] = a1;
            *&__s[12] = 2081;
            *&__s[14] = v45;
            _os_log_debug_impl(&dword_1C0DA5000, v60, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): found subdomain. (%{private}s) is a subdomain of tracker domain (%{private}s)", __s, 0x16u);
          }
        }

        v36 = 1;
        goto LABEL_66;
      }

      v36 = 0;
LABEL_80:
      xpc_release(v38);
      v17 = v72;
      v10 = v73;
    }

    else
    {
      v36 = 0;
    }

    NEHelperTrackerCachePut(&g_tracker_cache, v17, theArray);
    goto LABEL_85;
  }

  v19 = v18;
  v20 = CFArrayGetCount(v18);
  if (v20 < 1)
  {
    v36 = 0;
  }

  else
  {
    v21 = v20;
    v22 = 0;
    v23 = a1 - 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v22);
      v92 = 0u;
      memset(v93, 0, sizeof(v93));
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      memset(__s, 0, sizeof(__s));
      CFStringGetCString(ValueAtIndex, __s, 253, 0x8000100u);
      v25 = strlen(a1);
      v26 = v25 ? v25 - (v23[v25] == 46) : 0;
      v27 = strlen(__s);
      if (v27)
      {
        v28 = __s[v27 - 1] == 46;
        v29 = v27 - v28;
        v30 = v27 == v28 || v26 == 0;
        if (!v30 && v26 >= v29)
        {
          while (1)
          {
            v32 = v26 - 1;
            if (v26 < 1)
            {
              break;
            }

            v33 = v29 - 1;
            if (v29 < 1)
            {
              break;
            }

            v34 = v23[v26];
            v35 = __s[v29 - 1];
            --v26;
            --v29;
            if (v34 != v35)
            {
              v26 = v32;
              v29 = v33;
              if ((v35 ^ v34) != 0x20)
              {
                goto LABEL_42;
              }
            }
          }

          if (v26 == v29 || v26 >= 1 && a1[v32] == 46)
          {
            break;
          }
        }
      }

LABEL_42:
      if (++v22 == v21)
      {
        v36 = 0;
        goto LABEL_85;
      }
    }

    v61 = ne_log_obj();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136380931;
      v76 = a1;
      v77 = 2081;
      v78 = __s;
      _os_log_debug_impl(&dword_1C0DA5000, v61, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): found subdomain in cache. (%{private}s) is a subdomain of tracker domain (%{private}s)", buf, 0x16u);
    }

    v36 = 1;
  }

LABEL_85:
  CFRelease(v17);
  v62 = *(a2 + 28);
  if (v62 == 2)
  {
    v64 = ne_log_obj();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *__s = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v64, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): previous_tcc_check_result is ne_tcc_result_denied", __s, 2u);
    }

    v63 = 0;
    goto LABEL_100;
  }

  if (!v62)
  {
    if (*(a2 + 8))
    {
      v63 = (v36 & 1) == 0 || NEHelperIsTCCTrackingAllowed(a2);
      v66 = ne_log_obj();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *__s = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v66, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): previous_tcc_check_result is ne_tcc_result_not_performed and audit_token is set", __s, 2u);
      }

      goto LABEL_100;
    }

    goto LABEL_94;
  }

  if (!*(a2 + 8))
  {
LABEL_94:
    v65 = ne_log_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *__s = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v65, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): context->audit_token is not set.", __s, 2u);
    }
  }

  v63 = 1;
LABEL_100:
  v67 = ne_log_obj();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    *__s = 67109376;
    *&__s[4] = v36 & 1;
    *&__s[8] = 1024;
    *&__s[10] = v63;
    _os_log_debug_impl(&dword_1C0DA5000, v67, OS_LOG_TYPE_DEBUG, "NEHelperIsHostnameDesignatedTrackerExternal(): is_hostname_found: (%d), is_tcc_allowed: (%d)", __s, 0xEu);
  }

  v68 = ne_log_obj();
  v69 = v68;
  if ((v36 & 1) == 0)
  {
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *__s = 136380675;
      *&__s[4] = a1;
      v6 = "External check: hostname %{private}s is not a tracker. Returning: ne_tracker_status_none";
      v7 = __s;
      v8 = v69;
      v9 = 12;
      goto LABEL_115;
    }

    return 0;
  }

  if (v63)
  {
    v2 = 2;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *__s = 136380675;
      *&__s[4] = a1;
      _os_log_debug_impl(&dword_1C0DA5000, v69, OS_LOG_TYPE_DEBUG, "External check: Tracking is allowed by the user, hostname %{private}s is a declared tracker. Returning: ne_tracker_status_declared", __s, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v71 = buffer;
      if (!LOBYTE(buffer[0]))
      {
        v71 = v10;
      }

      *__s = 136315394;
      *&__s[4] = a1;
      *&__s[12] = 2080;
      *&__s[14] = v71;
      _os_log_impl(&dword_1C0DA5000, v69, OS_LOG_TYPE_DEFAULT, "Denied access to %s because it matches a domain in the NSTrackingDomains of %s, which does not have permission to track.", __s, 0x16u);
    }

    return 1;
  }

  return v2;
}

uint64_t NEHelperTrackerCacheGet(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  if (Value && (BytePtr = CFDataGetBytePtr(Value), (v6 = *BytePtr) != 0))
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = (*v6 + 8);
    if (!*v6)
    {
      v9 = (a1 + 32);
    }

    *v9 = v8;
    *v8 = v7;
    v10 = (a1 + 24);
    v11 = *(a1 + 24);
    *v6 = v11;
    if (v11)
    {
      v12 = (v11 + 8);
    }

    else
    {
      v12 = (a1 + 32);
    }

    *v12 = v6;
    *v10 = v6;
    v6[1] = v10;
    v13 = *(*BytePtr + 24);
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v13;
}

CFMutableDictionaryRef __NEHelperIsHostnameDesignatedTrackerExternal_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  v1 = ne_copy_signing_identifier_for_pid_with_audit_token(v0, 0);
  if (v1 && (v2 = v1, MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9F10]))
  {
    string_ptr = xpc_string_get_string_ptr(v2);
    if (string_ptr)
    {
      NEHelperIsHostnameDesignatedTrackerExternal_skip_daemon = strcmp(string_ptr, "com.apple.cloudd") == 0;
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v7[0]) = 0;
        _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, "Failed to get a string pointer from the current signing identifier", v7, 2u);
      }
    }

    xpc_release(v2);
  }

  else
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = getpid();
      _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, "Failed to get the signing identifier for %d", v7, 8u);
    }
  }

  g_tracker_cache = 128;
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 128, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1ED4D4758 = 0;
  unk_1ED4D4748 = result;
  unk_1ED4D4750 = 0;
  qword_1ED4D4760 = &qword_1ED4D4758;
  return result;
}

xpc_object_t ne_copy_signing_identifier_for_pid_with_audit_token(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v18 = *MEMORY[0x1E69E9840];
  bzero(v17, 0x400uLL);
  v4 = 1023;
  v5 = v17;
  while (a2)
  {
    if (!csops_audittoken())
    {
      goto LABEL_11;
    }

LABEL_6:
    v6 = __error();
    if (v5 != v17 || *v6 != 34)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = __error();
        v11 = strerror(*v10);
        v15 = 67109378;
        LODWORD(v16[0]) = v3;
        WORD2(v16[0]) = 2080;
        *(v16 + 6) = v11;
        _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "Failed to get the signing identifier for %d: %s", &v15, 0x12u);
      }

      goto LABEL_18;
    }

    v4 = bswap32(*(v5 + 1));
    if ((v4 - 1048577) <= 0xFFF00006)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 134217984;
        v16[0] = v4;
        _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, "signing identifier length is invalid: %lu", &v15, 0xCu);
      }

      v5 = 0;
LABEL_18:
      v8 = 0;
      v13 = v5 != 0;
      goto LABEL_21;
    }

    v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (csops())
  {
    goto LABEL_6;
  }

LABEL_11:
  v7 = bswap32(*(v5 + 1));
  if (v4 >= v7)
  {
    v5[v7] = 0;
    v8 = xpc_string_create(v5 + 8);
  }

  else
  {
    v8 = 0;
  }

  v13 = 1;
LABEL_21:
  if (v13 && v5 != v17)
  {
    free(v5);
  }

  return v8;
}

void NEHelperTrackerCachePut(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 8);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, a2);
      if (Value)
      {
        BytePtr = CFDataGetBytePtr(Value);
        v9 = *BytePtr;
        if (*BytePtr)
        {
          v10 = *v9;
          v11 = v9[1];
          v12 = (*v9 + 8);
          if (!*v9)
          {
            v12 = (a1 + 32);
          }

          *v12 = v11;
          *v11 = v10;
          v13 = (a1 + 24);
          v14 = *(a1 + 24);
          *v9 = v14;
          if (v14)
          {
            v15 = (v14 + 8);
          }

          else
          {
            v15 = (a1 + 32);
          }

          *v15 = v9;
          *v13 = v9;
          v9[1] = v13;
          *(*BytePtr + 24) = a3;
        }
      }

      else
      {
        if (*a1 <= CFDictionaryGetCount(*(a1 + 8)))
        {
          dealloc_appdata_node(a1, **(*(a1 + 32) + 8));
        }

        v16 = malloc_type_malloc(0x20uLL, 0xE0040B6E8BBF2uLL);
        if (v16)
        {
          v16[2] = a2;
          v16[3] = a3;
        }

        *bytes = v16;
        v17 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 8);
        if (v17)
        {
          v18 = v17;
          CFDictionaryAddValue(*(a1 + 8), a2, v17);
          CFRelease(v18);
        }

        v19 = *bytes;
        if (*bytes)
        {
          v20 = (a1 + 24);
          v21 = *(a1 + 24);
          **bytes = v21;
          if (v21)
          {
            v22 = (v21 + 8);
          }

          else
          {
            v22 = (a1 + 32);
          }

          *v22 = v19;
          *v20 = v19;
          *(v19 + 8) = v20;
        }
      }

      os_unfair_lock_unlock((a1 + 16));
    }

    else
    {

      os_unfair_lock_unlock((a1 + 16));
    }
  }
}

uint64_t NEHelperTrackerGetDispositionWrapper(uint64_t a1, char *__s, char **a3, unint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  if (*a1)
  {
    *&v16[0] = *a1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *v8;
    *(&v16[1] + 8) = v8[1];
    *(v16 + 8) = v9;
    *(&v16[4] + 8) = 0u;
    *(&v16[5] + 8) = 0u;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    uuid_copy(&v16[2] + 8, v10);
    uuid_copy(&v16[6] + 8, UUID_NULL);
  }

  if (*(a1 + 32) == 1)
  {
    HIDWORD(v17) |= 1u;
  }

  v14 = 0;
  DispositionForDomain = NEHelperTrackerGetDispositionForDomain(v16, __s, &v14, 1);
  if (a3 | a4 && v14)
  {
    if (a3)
    {
      v12 = NEHelperTrackerContextCopyDomainOwner(v14, v15, 254, 0);
      if (v12)
      {
        *a3 = strndup(v12, 0xFDuLL);
      }
    }

    if (a4)
    {
      *a4 = NEHelperTrackerContextCanBlockRequest(v14);
    }
  }

  return dword_1C0DDA9F0[DispositionForDomain];
}

uint64_t NEHelperTrackerGetDispositionForDomain(_DWORD *a1, char *__s, void *a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v39 = 0;
  if (__s)
  {
    v8 = strlen(__s);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_18:
    v17 = ne_log_obj();
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (a4)
    {
      if (!result)
      {
        return result;
      }

      *buf = 136317187;
      v41 = "NEHelperTrackerGetDispositionForDomain";
      v42 = 2160;
      if (__s)
      {
        v18 = __s;
      }

      else
      {
        v18 = "n/a";
      }

      *v43 = 1752392040;
      *&v43[8] = 1040;
      *&v43[10] = v8;
      v44 = 2101;
      *v45 = v18;
      *&v45[8] = 1024;
      *v46 = 0;
      *&v46[4] = 1024;
      *&v46[6] = 0;
      v47 = 2080;
      v48 = "n/a";
      v49 = 2080;
      v50 = "n/a";
      v51 = 2080;
      v52 = "App";
      v15 = "%s Invalid app info for domain%{sensitive, mask.hash, networkextension:string}.*P (app info ref %X pid %d for %s) %s - %s";
      v16 = v17;
      goto LABEL_24;
    }

    if (!result)
    {
      return result;
    }

    *buf = 136316931;
    v41 = "NEHelperTrackerGetDispositionForDomain";
    v42 = 1024;
    if (__s)
    {
      v27 = __s;
    }

    else
    {
      v27 = "n/a";
    }

    *v43 = v8;
    *&v43[4] = 2081;
    *&v43[6] = v27;
    v44 = 1024;
    *v45 = 0;
    *&v45[4] = 1024;
    *&v45[6] = 0;
    *v46 = 2080;
    *&v46[2] = "n/a";
    v47 = 2080;
    v48 = "n/a";
    v49 = 2080;
    v50 = "App";
    v15 = "%s: Invalid app info for domain<%d : %{private}s> (app info ref %X pid %d for %s) %s - %s";
    v16 = v17;
LABEL_54:
    v19 = 70;
    goto LABEL_55;
  }

  v8 = 0;
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_3:
  v9 = ne_log_obj();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8 - 254 <= 0xFFFFFFFFFFFFFF02)
  {
    if (a4)
    {
      if (!result)
      {
        return result;
      }

      if (__s)
      {
        v11 = __s;
      }

      else
      {
        v11 = "n/a";
      }

      v12 = a1[14];
      if (!v12)
      {
        v12 = a1[7];
        if (!v12)
        {
          v12 = a1[30];
          if (!v12)
          {
            v12 = a1[23];
          }
        }
      }

      v13 = a1[31];
      v41 = "NEHelperTrackerGetDispositionForDomain";
      *buf = 136317187;
      v42 = 2160;
      if (v13)
      {
        v14 = "Web";
      }

      else
      {
        v14 = "App";
      }

      *v43 = 1752392040;
      *&v43[8] = 1040;
      *&v43[10] = v8;
      v44 = 2101;
      *v45 = v11;
      *&v45[8] = 1024;
      *v46 = a1;
      *&v46[4] = 1024;
      *&v46[6] = v12;
      v47 = 2080;
      v48 = "n/a";
      v49 = 2080;
      v50 = "n/a";
      v51 = 2080;
      v52 = v14;
      v15 = "%s Invalid domain length%{sensitive, mask.hash, networkextension:string}.*P (app info ref %X pid %d for %s) %s - %s";
      v16 = v9;
LABEL_24:
      v19 = 80;
LABEL_55:
      _os_log_debug_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_DEBUG, v15, buf, v19);
      return 0;
    }

    if (!result)
    {
      return result;
    }

    if (__s)
    {
      v28 = __s;
    }

    else
    {
      v28 = "n/a";
    }

    v29 = a1[14];
    if (!v29)
    {
      v29 = a1[7];
      if (!v29)
      {
        v29 = a1[30];
        if (!v29)
        {
          v29 = a1[23];
        }
      }
    }

    v30 = "Web";
    v31 = a1[31];
    v41 = "NEHelperTrackerGetDispositionForDomain";
    *buf = 136316931;
    v42 = 1024;
    if ((v31 & 1) == 0)
    {
      v30 = "App";
    }

    *v43 = v8;
    *&v43[4] = 2081;
    *&v43[6] = v28;
    v44 = 1024;
    *v45 = a1;
    *&v45[4] = 1024;
    *&v45[6] = v29;
    *v46 = 2080;
    *&v46[2] = "n/a";
    v47 = 2080;
    v48 = "n/a";
    v49 = 2080;
    v50 = v30;
    v15 = "%s: Invalid domain length<%d : %{private}s> (app info ref %X pid %d for %s) %s - %s";
    v16 = v9;
    goto LABEL_54;
  }

  if (a4)
  {
    if (!result)
    {
      goto LABEL_57;
    }

    if (__s)
    {
      v20 = __s;
    }

    else
    {
      v20 = "n/a";
    }

    v21 = a1[14];
    if (!v21)
    {
      v21 = a1[7];
      if (!v21)
      {
        v21 = a1[30];
        if (!v21)
        {
          v21 = a1[23];
        }
      }
    }

    v22 = a1[31];
    v41 = "NEHelperTrackerGetDispositionForDomain";
    *buf = 136317187;
    v42 = 2160;
    if (v22)
    {
      v23 = "Web";
    }

    else
    {
      v23 = "App";
    }

    *v43 = 1752392040;
    *&v43[8] = 1040;
    *&v43[10] = v8;
    v44 = 2101;
    *v45 = v20;
    *&v45[8] = 1024;
    *v46 = a1;
    *&v46[4] = 1024;
    *&v46[6] = v21;
    v47 = 2080;
    v48 = "n/a";
    v49 = 2080;
    v50 = "n/a";
    v51 = 2080;
    v52 = v23;
    v24 = "%s domain lookup for%{sensitive, mask.hash, networkextension:string}.*P (app info ref %X pid %d for %s) %s - %s";
    v25 = v9;
    v26 = 80;
  }

  else
  {
    if (!result)
    {
      goto LABEL_57;
    }

    if (__s)
    {
      v35 = __s;
    }

    else
    {
      v35 = "n/a";
    }

    v36 = a1[14];
    if (!v36)
    {
      v36 = a1[7];
      if (!v36)
      {
        v36 = a1[30];
        if (!v36)
        {
          v36 = a1[23];
        }
      }
    }

    v37 = "Web";
    v38 = a1[31];
    v41 = "NEHelperTrackerGetDispositionForDomain";
    *buf = 136316931;
    v42 = 1024;
    if ((v38 & 1) == 0)
    {
      v37 = "App";
    }

    *v43 = v8;
    *&v43[4] = 2081;
    *&v43[6] = v35;
    v44 = 1024;
    *v45 = a1;
    *&v45[4] = 1024;
    *&v45[6] = v36;
    *v46 = 2080;
    *&v46[2] = "n/a";
    v47 = 2080;
    v48 = "n/a";
    v49 = 2080;
    v50 = v37;
    v24 = "%s: domain lookup for<%d : %{private}s> (app info ref %X pid %d for %s) %s - %s";
    v25 = v9;
    v26 = 70;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEBUG, v24, buf, v26);
LABEL_57:
  if (a1[31])
  {
    v32 = NEHelperTrackerCheckMetadataForWeb;
  }

  else
  {
    v32 = NEHelperTrackerCheckMetadataForApp;
  }

  os_unfair_lock_lock(&ne_helper_tracker_lock);
  buf[0] = 0;
  v33 = ne_tracker_build_cache();
  if (buf[0] == 1)
  {
    [NEDiagnosticReport logInternalError:@"Tracker" subType:@"FailedtoReadMMAPFile" context:0];
  }

  if ((v33 & 1) == 0)
  {
    os_unfair_lock_unlock(&ne_helper_tracker_lock);
    return 0;
  }

  strncpy(NEHelperTrackerGetDispositionForDomain_buffer, __s, 0xFDuLL);
  NEHelperTrackerGetDispositionForDomain_buffer[v8] = 0;
  matched = NEHelperTrackerMatchDomain(a1, NEHelperTrackerGetDispositionForDomain_buffer, v32, a3, &v39, a4);
  os_unfair_lock_unlock(&ne_helper_tracker_lock);
  if (!matched)
  {
    return 0;
  }

  if (v39)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t NEHelperPidFromAuditToken(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pid(&v3);
}

uint64_t NEFlowGetTypeID()
{
  if (runtime_inited != -1)
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
  }

  return __kNEFlowTypeID;
}

uint64_t __NEFlowGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kNEFlowTypeID = result;
  return result;
}

CFStringRef __NEFlowCopyDescription(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  *v20 = *"<none>";
  v2 = *(a1 + 48);
  if (v2)
  {
    BytePtr = CFDataGetBytePtr(v2);
    v4 = NECreateAddressStringWithPort(BytePtr);
  }

  else
  {
    v4 = @"<unknown>";
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = CFDataGetBytePtr(v5);
    v7 = NECreateAddressStringWithPort(v6);
  }

  else
  {
    v7 = @"<unknown>";
  }

  memset(out, 0, 37);
  v8 = *(a1 + 392);
  if (v8)
  {
    v9 = CFDataGetBytePtr(v8);
    v10 = out;
    uuid_unparse(v9, out);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 400);
  if (v11)
  {
    if_indextoname(v11, v20);
  }

  v12 = "unknown";
  v13 = *(a1 + 16);
  if (v13 == 2)
  {
    v12 = "datagram";
  }

  if (v13 == 1)
  {
    v12 = "stream";
  }

  v14 = *(a1 + 80);
  v15 = &stru_1F403BB50;
  if (!v14)
  {
    v14 = &stru_1F403BB50;
  }

  if (*(a1 + 64))
  {
    v15 = *(a1 + 64);
  }

  v16 = "";
  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = "";
  }

  if ((*(a1 + 344) & 8) != 0)
  {
    v16 = "(bound)";
  }

  v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"NEFlow type = %s, app = %@, name = %@, %@ <-> %@, filter_id = %s, interface = %s%s", v12, v14, v15, v7, v4, v17, v20, v16);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v18;
}

void __NEFlowDeallocate(CFIndex a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 248);
    v5 = *(a1 + 256);
    v6 = *(a1 + 232);
    v7 = *(a1 + 240);
    v30[0] = 67110144;
    v30[1] = v3;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v6;
    v37 = 2048;
    v38 = v7;
    _os_log_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEFAULT, "(%u): Destroying, client tx %llu, client rx %llu, kernel rx %llu, kernel tx %llu", v30, 0x30u);
  }

  flow_cancel_bridged_connection(a1, 0);
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  dispatch_release(*(a1 + 112));
  v15 = *(a1 + 136);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(a1 + 200);
  v17 = MEMORY[0x1E695E480];
  if (v16)
  {
    v18 = *MEMORY[0x1E695E480];
    do
    {
      *(a1 + 200) = v16[1];
      CFAllocatorDeallocate(v18, v16);
      v16 = *(a1 + 200);
    }

    while (v16);
  }

  flow_clear_datagram_queue(*(a1 + 264), *(a1 + 272));
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 264;
  v19 = *(a1 + 296);
  if (v19)
  {
    v20 = v19[16];
    if (v20)
    {
      dispatch_release(v20);
      v19 = *(a1 + 296);
    }

    CFAllocatorDeallocate(*v17, v19);
  }

  flow_handle_pending_write_requests(a1, 0);
  v21 = 0;
  v22 = a1 + 144;
  do
  {
    v23 = *(v22 + v21);
    if (v23)
    {
      _Block_release(v23);
      *(v22 + v21) = 0;
    }

    v21 += 8;
  }

  while (v21 != 56);
  v24 = *(a1 + 352);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 360);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 368);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 376);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 384);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 392);
  if (v29)
  {
    CFRelease(v29);
  }
}

void flow_cancel_bridged_connection(CFIndex a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 32) = CFRetain(cf);
  }

  flow_read_close(a1, 1);
  flow_write_close(a1, 1);
  if ((~*(a1 + 100) & 3) == 0 && !*(a1 + 320))
  {
    flow_drop_director(a1);
  }

  flow_cancel_connection_waiting_timer(a1);
  v5 = *(a1 + 408);
  if (v5)
  {
    nw_connection_cancel(v5);
    nw_release(*(a1 + 408));
    *(a1 + 408) = 0;
  }

  v6 = *(a1 + 416);
  if (v6)
  {
    nw_connection_group_cancel(v6);
    nw_release(*(a1 + 416));
    *(a1 + 416) = 0;
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    os_release(v7);
    *(a1 + 128) = 0;
  }
}

void flow_clear_datagram_queue(void *ptr, void *a2)
{
  v6 = a2;
  if (ptr)
  {
    v2 = ptr;
    v3 = *MEMORY[0x1E695E480];
    do
    {
      v5 = v2[18];
      if (!v5)
      {
        v6 = &v5;
      }

      v4 = v2[16];
      if (v4)
      {
        dispatch_release(v4);
      }

      CFAllocatorDeallocate(v3, v2);
      v2 = v5;
    }

    while (v5);
  }
}

void flow_handle_pending_write_requests(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 304);
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 304);
  v6 = *MEMORY[0x1E695E480];
  while (1)
  {
    v7 = v3;
    if (a2)
    {
      v8 = (*(a2 + 16))(a2, v3);
      v7 = *v5;
      if (!v8)
      {
        break;
      }
    }

    v9 = v7[20];
    *v5 = v9;
    if (!v9)
    {
      *(a1 + 312) = v5;
    }

    v10 = v3[16];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v3[19];
    if (v11)
    {
      _Block_release(v11);
    }

    CFAllocatorDeallocate(v6, v3);
    v3 = *v5;
    if (!*v5)
    {
      goto LABEL_12;
    }
  }

  if (!v7)
  {
LABEL_12:
    if (*(a1 + 320))
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 24);
        v17[0] = 67109378;
        v17[1] = v16;
        v18 = 2080;
        v19 = "All data written to the kernel, sending close";
        _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, "(%u): %s", v17, 0x12u);
      }

      *(a1 + 320) = 0;
      v13 = *(a1 + 24);
      v14 = *(a1 + 40);
      v15 = flow_error_to_errno(*(a1 + 32));
      flow_director_send_close(v14, v13, v15, 0, *(a1 + 100) & 4);
      if ((~*(a1 + 100) & 3) == 0 && !*(a1 + 320))
      {
        flow_drop_director(a1);
      }
    }
  }
}

CFIndex flow_error_to_errno(CFIndex result)
{
  if (result)
  {
    v1 = result;
    Domain = CFErrorGetDomain(result);
    if (Domain == @"com.apple.VPNTunnel")
    {
      Code = CFErrorGetCode(v1);
      if ((Code - 1) < 7)
      {
        return dword_1C0DDAA00[Code - 1];
      }
    }

    else if (Domain == *MEMORY[0x1E695E640] || Domain == *MEMORY[0x1E6977F10])
    {
      return CFErrorGetCode(v1);
    }

    return 50;
  }

  return result;
}

void flow_director_send_close(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v8 = bswap32(a3);
  v9 = bswap32(a4);
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 26, 0x10000404A09149ALL, 0);
  *v11 = 4;
  v11[1] = bswap32(a2);
  *(v11 + 8) = 5;
  *(v11 + 9) = 0x4000000;
  *(v11 + 13) = v8;
  *(v11 + 17) = 7;
  *(v11 + 18) = 0x4000000;
  *(v11 + 22) = v9;
  flow_director_msg_send(a1, v11, 0x1AuLL, a5 == 0);

  CFAllocatorDeallocate(v10, v11);
}

void flow_drop_director(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    CFRetain(a1);
    v3 = *(v1 + 16);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __flow_drop_director_block_invoke;
    v4[3] = &__block_descriptor_tmp_135;
    v4[4] = a1;
    v4[5] = v1;
    dispatch_async(v3, v4);
  }
}

void __flow_drop_director_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1 + 32) + 24);
      v6[0] = 67109378;
      v6[1] = v5;
      v7 = 2080;
      v8 = "Dropping the director";
      _os_log_debug_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEBUG, "(%u): %s", v6, 0x12u);
    }

    *(*(a1 + 32) + 40) = 0;
    v4 = *(a1 + 32);
    if ((v4[25] & 0x10) != 0)
    {
      rb_tree_remove_node((*(a1 + 40) + 56), v4);
      v4 = *(a1 + 32);
      v4[25] &= ~0x10u;
    }

    CFRelease(v4);
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 120));
  CFRelease(*(a1 + 32));
}

void flow_director_msg_send(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if (result)
  {
    if (a4 || (v6 = *(result + 40)) == 0)
    {
      v5 = *(result + 24);
      v6 = v5;
    }

    else
    {
      v5 = *(result + 24);
    }

    if (v6 == v5)
    {
      v7 = "control";
    }

    else
    {
      v7 = "data";
    }

    if (flow_director_ctl_write(v6, a2, a3, 0, 0, v7))
    {

      flow_director_abort(result, 0);
    }
  }
}

uint64_t flow_director_ctl_write(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v19.msg_control = 0u;
  *&v19.msg_name = 0u;
  v19.msg_iov = v28;
  *&v19.msg_iovlen = v8;
  handle = dispatch_source_get_handle(a1);
  v10 = sendmsg(handle, &v19, 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = v10;
    if (v10 < a3)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v21 = dword_1EBE73118;
        v22 = 2080;
        v23 = a6;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = a3;
        _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, "(%u): %s: failed to write an entire message (%zd < %zu)", buf, 0x26u);
      }

      return 40;
    }

    return 0;
  }

  v13 = *__error();
  v15 = ne_log_obj();
  v16 = v15;
  if (v13 == 55)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v21 = dword_1EBE73118;
      v22 = 2080;
      v23 = a6;
      _os_log_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_DEFAULT, "(%u): %s: failed to write a message: no buffer space available", buf, 0x12u);
    }

    return 55;
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = dword_1EBE73118;
    v18 = strerror(v13);
    *buf = 67109634;
    v21 = v17;
    v22 = 2080;
    v23 = a6;
    v24 = 2080;
    v25 = v18;
    _os_log_error_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_ERROR, "(%u): %s: write error: %s", buf, 0x1Cu);
  }

  return v13;
}

void flow_director_abort(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = dword_1EBE73118;
    _os_log_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEFAULT, "(%u): Aborting the director", buf, 8u);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    dispatch_retain(*(a1 + 16));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __flow_director_abort_block_invoke;
    block[3] = &unk_1E812A998;
    block[4] = a2;
    block[5] = a1;
    block[6] = v5;
    dispatch_async(v5, block);
  }

  else
  {
    (*(a2 + 16))(a2);
  }
}

void __flow_director_abort_block_invoke(void *a1)
{
  while (1)
  {
    v2 = rb_tree_iterate((a1[5] + 56), 0, 1u);
    if (!v2)
    {
      break;
    }

    v3 = v2;
    os_unfair_lock_lock(v2 + 30);
    flow_read_close(v3, 1);
    flow_write_close(v3, 1);
    *(v3 + 40) = 0;
    if ((*(v3 + 100) & 0x10) != 0)
    {
      rb_tree_remove_node((a1[5] + 56), v3);
      *(v3 + 100) &= ~0x10u;
    }

    os_unfair_lock_unlock((v3 + 120));
    CFRelease(v3);
  }

  v4 = a1[5];
  v5 = v4[3];
  if (v5)
  {
    dispatch_source_cancel(v5);
    *(a1[5] + 24) = 0;
    v4 = a1[5];
  }

  v6 = v4[5];
  if (v6)
  {
    dispatch_source_cancel(v6);
    *(a1[5] + 40) = 0;
    v4 = a1[5];
  }

  v7 = v4[20];
  if (v7)
  {
    free(v7);
    *(a1[5] + 160) = 0;
    v4 = a1[5];
  }

  v8 = v4[21];
  if (v8)
  {
    free(v8);
    *(a1[5] + 168) = 0;
  }

  v9 = a1[4];
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = a1[6];

  dispatch_release(v10);
}

void flow_read_close(CFIndex a1, int a2)
{
  *&v26[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v25 = 136315138;
      *v26 = "flow_read_close";
      _os_log_fault_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_FAULT, "%s called with null flow", &v25, 0xCu);
    }

    return;
  }

  v3 = *(a1 + 100);
  if ((v3 & 2) != 0)
  {
    return;
  }

  *(a1 + 100) = v3 | 2;
  if (!a2)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 24);
      v25 = 67109120;
      v26[0] = v12;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_DEFAULT, "(%u): Closing reads, not closed by plugin", &v25, 8u);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      Code = CFErrorGetCode(v13);
    }

    else
    {
      Code = 0;
    }

    v21 = *(a1 + 408);
    if (v21 && *(a1 + 16) != 2)
    {
      nw_connection_send(v21, 0, *MEMORY[0x1E6977E98], 1, *MEMORY[0x1E6977E80]);
    }

    flow_notify_client_of_closure(a1);
    v22 = *(a1 + 16);
    if (v22 == 2)
    {
      flow_call_dgram_read_handler(a1, Code);
    }

    else if (v22 == 1)
    {
      flow_call_stream_read_handler(a1, Code);
    }

    return;
  }

  v4 = *(a1 + 16);
  if ((v4 - 1) > 1)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 24);
      v25 = 67109120;
      v26[0] = v16;
      v17 = "(%u): Closing reads (other), closed by plugin";
LABEL_17:
      _os_log_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_DEFAULT, v17, &v25, 8u);
    }
  }

  else
  {
    if ((v3 & 4) == 0 || v4 == 2 || flow_error_to_errno(*(a1 + 32)))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 24);
        v7 = flow_error_to_errno(*(a1 + 32));
        v25 = 67109376;
        v26[0] = v6;
        LOWORD(v26[1]) = 1024;
        *(&v26[1] + 2) = v7;
        _os_log_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_DEFAULT, "(%u): Closing reads (sending SHUT_WR), closed by plugin (flow error: %d)", &v25, 0xEu);
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 40);
      v10 = flow_error_to_errno(*(a1 + 32));
      flow_director_send_close(v9, v8, v10, 1u, *(a1 + 100) & 4);
      goto LABEL_18;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 24);
      v25 = 67109120;
      v26[0] = v23;
      v17 = "(%u): Closing reads (suppressing SHUT_WR), closed by plugin";
      goto LABEL_17;
    }
  }

LABEL_18:
  v18 = *(a1 + 16);
  if (v18 == 1)
  {
    v19 = *(a1 + 328);
    if (!v19)
    {
      return;
    }

    _Block_release(v19);
    *(a1 + 328) = 0;
    v18 = *(a1 + 16);
  }

  if (v18 == 2)
  {
    v20 = *(a1 + 336);
    if (v20)
    {
      _Block_release(v20);
      *(a1 + 336) = 0;
    }
  }
}

void flow_write_close(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 100);
    if (v3)
    {
      if (a2)
      {
        return;
      }

      Code = 2;
    }

    else
    {
      *(a1 + 100) = v3 | 1;
      if (a2)
      {
        if ((*(a1 + 16) - 1) > 1)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 24);
            *buf = 67109120;
            LODWORD(v21) = v13;
            _os_log_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEFAULT, "(%u): Closing writes (other), sending close", buf, 8u);
          }
        }

        else
        {
          v4 = *(a1 + 304);
          v5 = ne_log_obj();
          v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          if (v4)
          {
            if (v6)
            {
              v7 = *(a1 + 24);
              *buf = 67109120;
              LODWORD(v21) = v7;
              _os_log_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_DEFAULT, "(%u): writes are still pending, delaying sending close until all data is sent to the kernel", buf, 8u);
            }

            *(a1 + 320) = 1;
          }

          else
          {
            if (v6)
            {
              v14 = *(a1 + 24);
              *buf = 67109120;
              LODWORD(v21) = v14;
              _os_log_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_DEFAULT, "(%u): Closing writes, sending SHUT_RD", buf, 8u);
            }

            v15 = *(a1 + 24);
            v16 = *(a1 + 40);
            v17 = flow_error_to_errno(*(a1 + 32));
            flow_director_send_close(v16, v15, v17, 0, *(a1 + 100) & 4);
          }
        }

        return;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 24);
        *buf = 67109120;
        LODWORD(v21) = v10;
        _os_log_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEFAULT, "(%u): Closing writes, not sending close", buf, 8u);
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        Code = CFErrorGetCode(v11);
      }

      else
      {
        Code = 2;
      }

      flow_notify_client_of_closure(a1);
    }

    *(a1 + 320) = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = __flow_write_close_block_invoke;
    v19[3] = &__block_descriptor_tmp_133;
    v19[4] = a1;
    v19[5] = Code;
    flow_handle_pending_write_requests(a1, v19);
    return;
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v21 = "flow_write_close";
    _os_log_fault_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_FAULT, "%s called with null flow", buf, 0xCu);
  }
}

void flow_notify_client_of_closure(os_unfair_lock *a1)
{
  os_unfair_lock_assert_owner(a1 + 30);
  os_unfair_lock_opaque = a1[25]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 2) != 0 && !flow_has_bytes(a1))
  {
    flow_notify_client(a1, 2);
    if ((a1[25]._os_unfair_lock_opaque & 1) == 0)
    {
      return;
    }
  }

  else if ((os_unfair_lock_opaque & 1) == 0)
  {
    return;
  }

  flow_notify_client(a1, 3);
}

uint64_t __flow_write_close_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    flow_call_write_completion(*(a1 + 32), *(a1 + 40), v2);
  }

  return 1;
}

void flow_call_write_completion(uint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a1 + 136))
  {
    v5 = _Block_copy(aBlock);
    v6 = *(a1 + 136);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __flow_call_write_completion_block_invoke;
    v7[3] = &unk_1E812A828;
    v7[4] = v5;
    v7[5] = a2;
    dispatch_async(v6, v7);
  }
}

void __flow_call_write_completion_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

BOOL flow_has_bytes(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 2)
  {
    return *(a1 + 264) != 0;
  }

  if (v1 == 1)
  {
    return dispatch_data_get_size(*(a1 + 112)) != 0;
  }

  return 0;
}

void flow_notify_client(void *a1, uint64_t a2)
{
  if (a1[17] && a1[a2 + 18])
  {
    v4 = a1[25];
    if (v4)
    {
      while (1)
      {
        v5 = v4;
        if (*v4 == a2)
        {
          break;
        }

        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v5 = 0;
LABEL_8:
      v6 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 16, 0x10200405730B0C9, 0);
      *v6 = a2;
      if (v5)
      {
        v6[1] = v5[1];
        v5[1] = v6;
      }

      else
      {
        v6[1] = a1[25];
        a1[25] = v6;
        if (a1[17])
        {
          CFRetain(a1);
          v7 = a1[17];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          block[2] = __flow_notify_client_block_invoke;
          block[3] = &__block_descriptor_tmp_123;
          block[4] = a1;
          dispatch_async(v7, block);
        }
      }
    }
  }
}

void __flow_notify_client_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E695E480];
  while (1)
  {
    os_unfair_lock_lock((v2 + 120));
    v4 = *(v2 + 200);
    if (!v4)
    {
      break;
    }

    v5 = *v4;
    v6 = v4[1];
    *(v2 + 200) = v6;
    v7 = *(v2 + 144 + 8 * v5);
    if (v7)
    {
      v8 = _Block_copy(v7);
      v9 = *(v2 + 200);
      os_unfair_lock_unlock((v2 + 120));
      if (v8)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = "unknown";
          if (*v4 <= 6)
          {
            v11 = off_1E812AB50[*v4];
          }

          v12 = *(v2 + 24);
          *buf = 67109378;
          v14 = v12;
          v15 = 2080;
          v16 = v11;
          _os_log_debug_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_DEBUG, "(%u): invoking %s event handler", buf, 0x12u);
        }

        v8[2](v8, 0);
        _Block_release(v8);
      }

      CFAllocatorDeallocate(v3, v4);
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 120));
      CFAllocatorDeallocate(v3, v4);
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  os_unfair_lock_unlock((v2 + 120));
LABEL_15:
  CFRelease(*(a1 + 32));
}

void flow_call_stream_read_handler(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 120));
  if (*(a1 + 136))
  {
    v4 = *(a1 + 328);
    if (v4)
    {
      v5 = _Block_copy(v4);
      v6 = *(a1 + 112);
      if (v6)
      {
        size = dispatch_data_get_size(*(a1 + 112));
        dispatch_retain(v6);
      }

      else
      {
        size = 0;
      }

      v8 = *(a1 + 136);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __flow_call_stream_read_handler_block_invoke;
      block[3] = &unk_1E812A7D8;
      block[4] = v5;
      block[5] = v6;
      block[6] = a2;
      dispatch_async(v8, block);
      _Block_release(*(a1 + 328));
      *(a1 + 328) = 0;
      if (size)
      {
        flow_director_send_read_notification(*(a1 + 40), *(a1 + 24), size);
        *(a1 + 256) += size;
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 24);
          *buf = 67109376;
          v14 = v11;
          v15 = 2048;
          v16 = size;
          _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "(%u): plugin read %lu bytes", buf, 0x12u);
        }

        v10 = *(a1 + 112);
        if (v10)
        {
          dispatch_release(v10);
        }

        *(a1 + 112) = MEMORY[0x1E69E9668];
      }
    }
  }
}

void flow_call_dgram_read_handler(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 120));
  if (*(a1 + 136))
  {
    v4 = *(a1 + 336);
    if (v4)
    {
      v5 = _Block_copy(v4);
      v11 = *(a1 + 264);
      v6 = *(a1 + 136);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __flow_call_dgram_read_handler_block_invoke;
      v10[3] = &unk_1E812A800;
      v10[4] = v5;
      v12 = a2;
      dispatch_async(v6, v10);
      _Block_release(*(a1 + 336));
      *(a1 + 336) = 0;
      flow_director_send_read_notification(*(a1 + 40), *(a1 + 24), *(a1 + 280));
      *(a1 + 256) += *(a1 + 280);
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 280);
        *buf = 67109376;
        v14 = v8;
        v15 = 1024;
        v16 = v9;
        _os_log_debug_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_DEBUG, "(%u): plugin read %u bytes", buf, 0xEu);
      }

      *(a1 + 264) = 0;
      *(a1 + 272) = a1 + 264;
      *(a1 + 280) = 0;
    }
  }
}

void __flow_call_dgram_read_handler_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  flow_clear_datagram_queue(v2, v3);
}

void flow_director_send_read_notification(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = bswap32(a3);
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 17, 0x10000404A09149ALL, 0);
  *v7 = 5;
  v7[1] = bswap32(a2);
  *(v7 + 8) = 8;
  *(v7 + 9) = 0x4000000;
  *(v7 + 13) = v5;
  flow_director_msg_send(a1, v7, 0x11uLL, 0);

  CFAllocatorDeallocate(v6, v7);
}

void __flow_call_stream_read_handler_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {

    dispatch_release(v2);
  }
}

void flow_cancel_connection_waiting_timer(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 424))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 24);
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "(%u): Cancelling waiting timer", v4, 8u);
    }

    dispatch_source_cancel(*(a1 + 424));
    *(a1 + 424) = 0;
  }
}

uint64_t NEFlowGetFlowType(void *cf)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    return cf[2];
  }

  return 0;
}

uint64_t NEFlowOpen(os_unfair_lock_s *cf)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) == v2)
  {
    os_unfair_lock_lock(cf + 30);
    v3 = flow_open(cf);
    os_unfair_lock_unlock(cf + 30);
    return v3;
  }

  return 0;
}

uint64_t flow_open(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 120));
  v2 = *(a1 + 100);
  if ((v2 & 4) != 0)
  {
    v4 = a1;
    v5 = 4;
    goto LABEL_9;
  }

  if ((v2 & 3) != 0 || *(a1 + 40) == 0)
  {
    v4 = a1;
    v5 = 2;
LABEL_9:
    __NEFlowSetError(v4, v5);
    return 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *bytes = 0u;
  v19 = 0u;
  v7 = *(a1 + 400);
  v8 = *(a1 + 56);
  if (!v8 || (CFDataGetBytePtr(v8), CFDataGetLength(*(a1 + 56)), __memcpy_chk(), CFRelease(*(a1 + 56)), bytes[1] != 30) && bytes[1] != 2 || !*&bytes[2])
  {
    v9 = arc4random_uniform(0x3FFFu);
    if (bytes[1] == 30 || bytes[1] == 2)
    {
      *&bytes[2] = bswap32(v9 - 0x4000) >> 16;
    }
  }

  *(a1 + 56) = CFDataCreate(*MEMORY[0x1E695E480], bytes, bytes[0]);
  v10 = *(a1 + 100);
  if ((v10 & 0x40) == 0)
  {
    if (bytes[1] == 30)
    {
      *&bytes[8] = 0;
      *&v19 = 0;
    }

    else if (bytes[1] == 2)
    {
      *&bytes[4] = 0;
    }
  }

  *(a1 + 100) = v10 | 4;
  if ((*(a1 + 16) - 1) <= 1)
  {
    BytePtr = CFDataGetBytePtr(*(a1 + 48));
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 24);
      *buf = 67109378;
      v15 = v13;
      v16 = 2080;
      v17 = "Open, sending successful connect result";
      _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, "(%u): %s", buf, 0x12u);
    }

    flow_director_send_connect_result(*(a1 + 40), *(a1 + 24), 0, 0x40000u, *(*(a1 + 40) + 48), bytes, BytePtr, v7, *(a1 + 352));
  }

  return 1;
}

CFErrorRef __NEFlowSetError(uint64_t a1, CFIndex code)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  result = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.VPNTunnel", code, 0);
  *(a1 + 32) = result;
  return result;
}

void flow_director_send_connect_result(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, unsigned __int8 *a7, int a8, CFDataRef theData)
{
  if (a6)
  {
    v15 = *a6 + 16;
    v16 = 5;
  }

  else
  {
    v16 = 4;
    v15 = 16;
  }

  if (a7)
  {
    v15 += *a7;
    ++v16;
  }

  if (theData)
  {
    v15 += CFDataGetLength(theData);
    ++v16;
  }

  v17 = 5 * v16 + v15;
  v18 = *MEMORY[0x1E695E480];
  v19 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], v17 + 8, 0x10000404A09149ALL, 0);
  *v19 = 2;
  *(v19 + 4) = bswap32(a2);
  if (v17 <= 8)
  {
    goto LABEL_27;
  }

  v20 = v19;
  *(v19 + 8) = 5;
  *(v19 + 9) = 0x4000000;
  *(v19 + 13) = bswap32(a3);
  if (v17 - 9 <= 8)
  {
    goto LABEL_27;
  }

  *(v19 + 17) = 9;
  *(v19 + 18) = 0x4000000;
  *(v19 + 22) = bswap32(a4);
  if (v17 - 18 <= 8)
  {
    goto LABEL_27;
  }

  *(v19 + 26) = 10;
  *(v19 + 27) = 0x4000000;
  *(v19 + 31) = bswap32(a5);
  v21 = v17 - 27;
  if (!a6)
  {
    v24 = (v19 + 35);
    if (!a7)
    {
      goto LABEL_20;
    }

LABEL_17:
    v25 = *a7;
    v23 = v21 >= v25 + 5;
    v21 -= v25 + 5;
    if (v23)
    {
      *v24 = 12;
      *(v24 + 1) = v25 << 24;
      v26 = v24 + 5;
      memcpy(v26, a7, v25);
      v24 = &v26[v25];
      goto LABEL_20;
    }

LABEL_27:
    __assert_rtn("NEFlowTLVAdd", "NEFlow.c", 1839, "tlv_iter->remaining >= add_size");
  }

  v22 = *a6;
  v23 = v21 >= v22 + 5;
  v21 -= v22 + 5;
  if (!v23)
  {
    goto LABEL_27;
  }

  *(v19 + 35) = 11;
  *(v19 + 36) = v22 << 24;
  memcpy((v19 + 40), a6, v22);
  v24 = &v20[v22 + 40];
  if (a7)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (v21 <= 8)
  {
    goto LABEL_27;
  }

  *v24 = 13;
  *(v24 + 1) = 0x4000000;
  *(v24 + 5) = a8;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(theData);
    if (v21 - 9 < Length + 5)
    {
      goto LABEL_27;
    }

    v24[9] = 31;
    *(v24 + 10) = bswap32(Length);
    memcpy(v24 + 14, BytePtr, Length);
  }

  flow_director_msg_send(a1, v20, v17 + 8, 1);

  CFAllocatorDeallocate(v18, v20);
}

void *NEFlowTLVAdd(uint64_t a1, char a2, size_t __n, void *__src)
{
  v4 = __n;
  v5 = __n + 5;
  if (*(a1 + 8) < v5)
  {
    __assert_rtn("NEFlowTLVAdd", "NEFlow.c", 1839, "tlv_iter->remaining >= add_size");
  }

  **a1 = a2;
  v7 = *a1;
  *(v7 + 1) = bswap32(__n);
  *a1 = v7 + 5;
  result = memcpy(v7 + 5, __src, __n);
  v9 = *(a1 + 8) - v5;
  *a1 += v4;
  *(a1 + 8) = v9;
  return result;
}

uint64_t flow_close(os_unfair_lock_s *cf, const void *a2, int a3)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v6 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    return 0;
  }

  if (a2)
  {
    TypeID = CFErrorGetTypeID();
    if (CFGetTypeID(a2) == TypeID)
    {
      v8 = cf + 30;
      os_unfair_lock_lock(cf + 30);
      v9 = *&cf[8]._os_unfair_lock_opaque;
      if (v9)
      {
        CFRelease(v9);
      }

      *&cf[8]._os_unfair_lock_opaque = CFRetain(a2);
      goto LABEL_10;
    }

    return 0;
  }

  v8 = cf + 30;
  os_unfair_lock_lock(cf + 30);
LABEL_10:
  if (a3)
  {
    flow_read_close(cf, 1);
  }

  else
  {
    flow_write_close(cf, 1);
  }

  if ((~cf[25]._os_unfair_lock_opaque & 3) == 0 && !LOBYTE(cf[80]._os_unfair_lock_opaque))
  {
    flow_drop_director(cf);
  }

  os_unfair_lock_unlock(v8);
  return 1;
}

uint64_t NEFlowSetEventHandler(os_unfair_lock_s *cf, uint64_t a2, const void *a3)
{
  if (runtime_inited != -1)
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (cf)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!cf)
  {
    return 0;
  }

LABEL_3:
  v6 = __kNEFlowTypeID;
  v7 = CFGetTypeID(cf);
  result = 0;
  if (a2 <= 6 && v7 == v6)
  {
    os_unfair_lock_lock(cf + 30);
    v9 = cf + 36;
    v10 = *&cf[2 * a2 + 36]._os_unfair_lock_opaque;
    if (v10)
    {
      _Block_release(v10);
      *&v9[2 * a2]._os_unfair_lock_opaque = 0;
    }

    if (a3)
    {
      *&v9[2 * a2]._os_unfair_lock_opaque = _Block_copy(a3);
    }

    os_unfair_lock_unlock(cf + 30);
    return 1;
  }

  return result;
}

uint64_t NEFlowSetDispatchQueue(os_unfair_lock_s *cf, NSObject *a2)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v4 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    return 0;
  }

  os_unfair_lock_lock(cf + 30);
  v5 = *&cf[34]._os_unfair_lock_opaque;
  if (v5)
  {
    dispatch_release(v5);
    *&cf[34]._os_unfair_lock_opaque = 0;
  }

  if (a2)
  {
    *&cf[34]._os_unfair_lock_opaque = a2;
    dispatch_retain(a2);
  }

  else
  {
    v6 = cf + 36;
    do
    {
      v7 = *(&a2->isa + v6);
      if (v7)
      {
        _Block_release(v7);
        *(&a2->isa + v6) = 0;
      }

      ++a2;
    }

    while (a2 != 56);
  }

  os_unfair_lock_unlock(cf + 30);
  return 1;
}

CFTypeRef NEFlowCopyError(os_unfair_lock_s *cf)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v2 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v2)
  {
    return 0;
  }

  os_unfair_lock_lock(cf + 30);
  v3 = *&cf[8]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(cf + 30);
  return v4;
}

uint64_t NEFlowAsyncRead(os_unfair_lock_s *cf, const void *a2)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 4;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 4;
    }
  }

  v4 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    return 4;
  }

  v5 = 4;
  if (a2 && *&cf[4]._os_unfair_lock_opaque == 1)
  {
    os_unfair_lock_lock(cf + 30);
    if (*&cf[82]._os_unfair_lock_opaque)
    {
      v5 = 101;
    }

    else
    {
      *&cf[82]._os_unfair_lock_opaque = _Block_copy(a2);
      if (flow_has_bytes(cf) || (cf[25]._os_unfair_lock_opaque & 2) != 0)
      {
        flow_call_stream_read_handler(cf, 0);
      }

      v5 = 0;
    }

    os_unfair_lock_unlock(cf + 30);
  }

  return v5;
}

uint64_t NEFlowAsyncDatagramsCopyNext(os_unfair_lock_s *cf, const void *a2)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 4;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 4;
    }
  }

  v4 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    return 4;
  }

  v5 = 4;
  if (a2 && *&cf[4]._os_unfair_lock_opaque == 2)
  {
    os_unfair_lock_lock(cf + 30);
    if (*&cf[84]._os_unfair_lock_opaque)
    {
      v5 = 101;
    }

    else
    {
      *&cf[84]._os_unfair_lock_opaque = _Block_copy(a2);
      if (flow_has_bytes(cf) || (cf[25]._os_unfair_lock_opaque & 2) != 0)
      {
        flow_call_dgram_read_handler(cf, 0);
      }

      v5 = 0;
    }

    os_unfair_lock_unlock(cf + 30);
  }

  return v5;
}

uint64_t NEFlowWrite(os_unfair_lock_s *cf, const void *a2, unsigned __int8 *a3, void *a4)
{
  *&v42[7] = *MEMORY[0x1E69E9840];
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 4;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 4;
    }
  }

  v8 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v8)
  {
    return 4;
  }

  TypeID = CFDataGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      os_unfair_lock_opaque = cf[6]._os_unfair_lock_opaque;
      v39 = 67109378;
      v40 = os_unfair_lock_opaque;
      v41 = 2080;
      *v42 = "invalid data object";
      _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, "(%u): %s", &v39, 0x12u);
    }

    return 4;
  }

  if (CFDataGetLength(a2) <= 0)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = cf[6]._os_unfair_lock_opaque;
      v39 = 67109376;
      v40 = v16;
      v41 = 2048;
      *v42 = CFDataGetLength(a2);
      v17 = "(%u): data length %ld <= 0";
      v18 = v15;
      v19 = 18;
LABEL_30:
      _os_log_error_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_ERROR, v17, &v39, v19);
    }

    return 4;
  }

  if (a3)
  {
    v10 = a3[1];
    if (v10 == 2)
    {
      v11 = *a3;
      if (v11 < 0x10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 != 30)
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = cf[6]._os_unfair_lock_opaque;
          v30 = a3[1];
          v39 = 67109376;
          v40 = v29;
          v41 = 1024;
          *v42 = v30;
          v17 = "(%u): address has an invalid family %d";
          v18 = v28;
          v19 = 14;
          goto LABEL_30;
        }

        return 4;
      }

      v11 = *a3;
      if (v11 < 0x1C)
      {
        goto LABEL_20;
      }
    }

    if (v11 >= 0x1D)
    {
LABEL_20:
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = cf[6]._os_unfair_lock_opaque;
        v22 = a3[1];
        v23 = *a3;
        v39 = 67109632;
        v40 = v21;
        v41 = 1024;
        *v42 = v22;
        v42[2] = 1024;
        *&v42[3] = v23;
        v17 = "(%u): address with family %d has an invalid length %d";
        v18 = v20;
        v19 = 20;
        goto LABEL_30;
      }

      return 4;
    }
  }

  if (*&cf[4]._os_unfair_lock_opaque == 2 && cf[72]._os_unfair_lock_opaque < CFDataGetLength(a2))
  {
    return 100;
  }

  os_unfair_lock_lock(cf + 30);
  if (cf[25]._os_unfair_lock_opaque)
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v37 = cf[6]._os_unfair_lock_opaque;
      v39 = 67109376;
      v40 = v37;
      v41 = 2048;
      *v42 = CFDataGetLength(a2);
      _os_log_error_impl(&dword_1C0DA5000, v32, OS_LOG_TYPE_ERROR, "(%u): flow is closed for writes, cannot write %ld bytes of data", &v39, 0x12u);
    }

    v13 = 1;
  }

  else
  {
    Length = CFDataGetLength(a2);
    v25 = Length;
    if (*&cf[76]._os_unfair_lock_opaque)
    {
      v26 = 0;
      v27 = Length;
    }

    else
    {
      v26 = flow_write_range_of_cfdata(cf, a2, 0, Length, a3);
      v27 = v33;
    }

    if (v27 < 1)
    {
      if (a4)
      {
        flow_call_write_completion(cf, 0, a4);
      }
    }

    else
    {
      v34 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 168, 0x10E0040EBE7E073, 0);
      v35 = v34;
      *v34 = 0u;
      *(v34 + 1) = 0u;
      *(v34 + 2) = 0u;
      *(v34 + 3) = 0u;
      *(v34 + 4) = 0u;
      *(v34 + 5) = 0u;
      *(v34 + 6) = 0u;
      *(v34 + 7) = 0u;
      *(v34 + 8) = 0u;
      *(v34 + 9) = 0u;
      v34[20] = 0;
      if (a3)
      {
        memcpy(v34, a3, *a3);
      }

      v35[16] = CFRetain(a2);
      v35[17] = v26;
      v35[18] = v27;
      if (a4)
      {
        v35[19] = _Block_copy(a4);
      }

      v35[20] = 0;
      **&cf[78]._os_unfair_lock_opaque = v35;
      *&cf[78]._os_unfair_lock_opaque = v35 + 20;
    }

    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = cf[6]._os_unfair_lock_opaque;
      v39 = 67109376;
      v40 = v38;
      v41 = 2048;
      *v42 = v25;
      _os_log_debug_impl(&dword_1C0DA5000, v36, OS_LOG_TYPE_DEBUG, "(%u): plugin wrote %ld bytes", &v39, 0x12u);
    }

    v13 = 0;
    *&cf[62]._os_unfair_lock_opaque += v25;
  }

  os_unfair_lock_unlock(cf + 30);
  return v13;
}

uint64_t flow_write_range_of_cfdata(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4, unsigned __int8 *__src)
{
  v5 = a4;
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return a3;
  }

  v8 = *(a1 + 104);
  if (!*(a1 + 104) || a4 < 1)
  {
    return a3;
  }

  while (*(a1 + 16) == 2)
  {
    v12 = flow_director_send_cfdata(*(a1 + 40), *(a1 + 24), a2, a3, v5, __src);
    v13 = v5;
    if (v12)
    {
      goto LABEL_20;
    }

LABEL_15:
    *(a1 + 240) += v13;
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 24);
      v17 = *(a1 + 240);
      *buf = 67109632;
      v25 = v16;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v17;
      _os_log_debug_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_DEBUG, "(%u): Wrote %ld bytes to the kernel (total bytes written = %llu)", buf, 0x1Cu);
    }

    a3 += v13;
    v5 -= v13;
    v8 = *(a1 + 104);
    if (!v8 || v5 <= 0)
    {
      return a3;
    }
  }

  if (v8 >= v5)
  {
    v8 = v5;
  }

  v14 = *(a1 + 40);
  if (*(v14 + 184) >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v14 + 184);
  }

  v12 = flow_director_send_cfdata(v14, *(a1 + 24), a2, a3, v13, 0);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_20:
  if (v12 == 55)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 24);
      *buf = 67109376;
      v25 = v19;
      v26 = 2048;
      v27 = v13;
      _os_log_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_DEFAULT, "(%u): app receive buffer is full, queueing %lu bytes", buf, 0x12u);
    }
  }

  else
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 24);
      v23 = strerror(v12);
      *buf = 67109634;
      v25 = v22;
      v26 = 2048;
      v27 = v13;
      v28 = 2080;
      v29 = v23;
      _os_log_error_impl(&dword_1C0DA5000, v20, OS_LOG_TYPE_ERROR, "(%u): Got an error when sending %lu bytes to the kernel: %s", buf, 0x1Cu);
    }
  }

  return a3;
}

uint64_t flow_director_send_cfdata(uint64_t a1, unsigned int a2, const __CFData *a3, uint64_t a4, uint64_t a5, unsigned __int8 *__src)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      v10 = *(a1 + 24);
    }

    v19 = 0;
    memset(v18, 0, sizeof(v18));
    LOBYTE(v18[0]) = 3;
    DWORD1(v18[0]) = bswap32(a2);
    if (__src)
    {
      v11 = *__src;
      if (v11 >= 0x28)
      {
        __assert_rtn("NEFlowTLVAdd", "NEFlow.c", 1839, "tlv_iter->remaining >= add_size");
      }

      BYTE8(v18[0]) = 12;
      *(v18 + 9) = v11 << 24;
      memcpy((v18 | 0xD), __src, v11);
      v12 = v11 + 13;
    }

    else
    {
      v12 = 8;
    }

    BytePtr = CFDataGetBytePtr(a3);
    v16 = flow_director_ctl_write(v10, v18, v12, &BytePtr[a4], a5, "data");
    v14 = v16;
    if (v16 && v16 != 55)
    {
      flow_director_abort(a1, 0);
    }
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18[0]) = 67109120;
      DWORD1(v18[0]) = dword_1EBE73118;
      _os_log_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEFAULT, "(%u): Director is NULL, dropping data", v18, 8u);
    }

    return 22;
  }

  return v14;
}

void *NEFlowCopyProperty(os_unfair_lock_s *cf, const void *a2)
{
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v4 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v4)
  {
    return 0;
  }

  os_unfair_lock_lock(cf + 30);
  if (!CFEqual(a2, @"Type"))
  {
    if (CFEqual(a2, @"DestinationName"))
    {
      if ((*&cf[4]._os_unfair_lock_opaque - 1) <= 1)
      {
        v10 = *&cf[16]._os_unfair_lock_opaque;
        if (!v10)
        {
          goto LABEL_34;
        }

LABEL_15:
        v8 = CFRetain(v10);
        goto LABEL_7;
      }
    }

    else
    {
      if (CFEqual(a2, @"DestinationEndpoint"))
      {
        if ((*&cf[4]._os_unfair_lock_opaque - 1) <= 1)
        {
          v10 = *&cf[12]._os_unfair_lock_opaque;
          goto LABEL_15;
        }

        goto LABEL_33;
      }

      if (CFEqual(a2, @"AppRuleIdentifier"))
      {
        if ((*&cf[4]._os_unfair_lock_opaque - 1) <= 1)
        {
          v10 = *&cf[18]._os_unfair_lock_opaque;
          if (!v10)
          {
            v10 = *&cf[20]._os_unfair_lock_opaque;
            if (!v10)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_15;
        }

        goto LABEL_33;
      }

      if (!CFEqual(a2, @"AppUnique"))
      {
        if (CFEqual(a2, @"ServiceType"))
        {
          if ((*&cf[4]._os_unfair_lock_opaque - 1) > 1)
          {
            goto LABEL_33;
          }

          v5 = *MEMORY[0x1E695E480];
          v6 = cf + 24;
        }

        else
        {
          if (CFEqual(a2, @"LocalEndpoint"))
          {
            if ((*&cf[4]._os_unfair_lock_opaque - 1) <= 1)
            {
              v10 = *&cf[14]._os_unfair_lock_opaque;
              if (!v10)
              {
                goto LABEL_34;
              }

              goto LABEL_15;
            }

            goto LABEL_33;
          }

          if (CFEqual(a2, @"Flags"))
          {
            v5 = *MEMORY[0x1E695E480];
            v6 = cf + 86;
            v7 = kCFNumberSInt32Type;
            goto LABEL_6;
          }

          if (CFEqual(a2, @"AppData"))
          {
            v10 = *&cf[88]._os_unfair_lock_opaque;
            if (!v10)
            {
              goto LABEL_34;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"AppAuditToken"))
          {
            v10 = *&cf[90]._os_unfair_lock_opaque;
            if (!v10)
            {
              goto LABEL_34;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"FilterFlowID"))
          {
            v10 = *&cf[98]._os_unfair_lock_opaque;
            if (!v10)
            {
              goto LABEL_34;
            }

            goto LABEL_15;
          }

          if (!CFEqual(a2, @"OutboundInterfaceIndex") || !cf[100]._os_unfair_lock_opaque)
          {
            goto LABEL_34;
          }

          v5 = *MEMORY[0x1E695E480];
          v6 = cf + 100;
        }

        v7 = kCFNumberIntType;
        goto LABEL_6;
      }

      if ((*&cf[4]._os_unfair_lock_opaque - 1) <= 1)
      {
        v10 = *&cf[22]._os_unfair_lock_opaque;
        if (!v10)
        {
          goto LABEL_34;
        }

        goto LABEL_15;
      }
    }

LABEL_33:
    __NEFlowSetError(cf, 4);
LABEL_34:
    v9 = 0;
    goto LABEL_35;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = cf + 4;
  v7 = kCFNumberCFIndexType;
LABEL_6:
  v8 = CFNumberCreate(v5, v7, v6);
LABEL_7:
  v9 = v8;
LABEL_35:
  os_unfair_lock_unlock(cf + 30);
  return v9;
}

uint64_t NEFlowSetProperty(os_unfair_lock_s *cf, const void *a2, const __CFData *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (runtime_inited == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&runtime_inited, &__block_literal_global_16);
    if (!cf)
    {
      return 0;
    }
  }

  v6 = __kNEFlowTypeID;
  if (CFGetTypeID(cf) != v6)
  {
    return 0;
  }

  os_unfair_lock_lock(cf + 30);
  if (!CFEqual(a2, @"LocalEndpoint"))
  {
    if (CFEqual(a2, @"AppData"))
    {
      TypeID = CFDataGetTypeID();
      if (a3 && CFGetTypeID(a3) == TypeID)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          os_unfair_lock_opaque = cf[6]._os_unfair_lock_opaque;
          *buf = 67109378;
          v24 = os_unfair_lock_opaque;
          v25 = 2080;
          v26 = "Sending a properties update with app data";
          _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, "(%u): %s", buf, 0x12u);
        }

        if ((cf[25]._os_unfair_lock_opaque & 4) != 0)
        {
          flow_director_send_properties_update(*&cf[10]._os_unfair_lock_opaque, cf[6]._os_unfair_lock_opaque, 0, a3);
        }

        v13 = *&cf[88]._os_unfair_lock_opaque;
        if (v13)
        {
          CFRelease(v13);
          *&cf[88]._os_unfair_lock_opaque = 0;
        }

        *&cf[88]._os_unfair_lock_opaque = CFDataCreateCopy(*MEMORY[0x1E695E480], a3);
        goto LABEL_25;
      }
    }

    else
    {
      if (!CFEqual(a2, @"OutboundInterfaceIndex"))
      {
LABEL_28:
        v17 = 0;
        goto LABEL_29;
      }

      v14 = CFNumberGetTypeID();
      if (a3 && CFGetTypeID(a3) == v14)
      {
        valuePtr = 0;
        CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
        v15 = valuePtr;
        cf[100]._os_unfair_lock_opaque = valuePtr;
        *v22 = *"<none>";
        if_indextoname(v15, v22);
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v19 = cf[6]._os_unfair_lock_opaque;
          *buf = 67109378;
          v24 = v19;
          v25 = 2080;
          v26 = v22;
          _os_log_debug_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_DEBUG, "(%u): Setting outbound interface to %s", buf, 0x12u);
        }

        flow_director_send_properties_update(*&cf[10]._os_unfair_lock_opaque, cf[6]._os_unfair_lock_opaque, valuePtr, 0);
        goto LABEL_25;
      }
    }

LABEL_26:
    v10 = cf;
    v9 = 4;
    goto LABEL_27;
  }

  v7 = CFDataGetTypeID();
  if (!a3 || CFGetTypeID(a3) != v7)
  {
    goto LABEL_26;
  }

  v8 = NEFlowResetLocalEndpoint(cf, a3);
  if (v8)
  {
    v9 = v8;
    v10 = cf;
LABEL_27:
    __NEFlowSetError(v10, v9);
    goto LABEL_28;
  }

LABEL_25:
  v17 = 1;
LABEL_29:
  os_unfair_lock_unlock(cf + 30);
  return v17;
}

uint64_t NEFlowResetLocalEndpoint(uint64_t a1, CFDataRef theData)
{
  v37 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(theData);
  length = 0;
  v31 = 0uLL;
  v32 = 0;
  v5 = *(a1 + 400);
  v6 = NECreateAddressString(BytePtr);
  if (v6)
  {
    v7 = v6;
    if (!NEIsWildcardAddress(BytePtr))
    {
      v8 = NEGetInterfaceForAddress(BytePtr);
      if (v8)
      {
        goto LABEL_7;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 24);
        *buf = 67109378;
        v34 = v29;
        v35 = 2112;
        v36 = v7;
        _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "(%u): No interface found for %@, not re-setting the interface", buf, 0x12u);
      }
    }

    v8 = v5;
LABEL_7:
    CFRelease(v7);
    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = CFDataGetBytePtr(v10);
      v12 = v11;
      v13 = BytePtr[1];
      if (v13 == 2)
      {
        LOWORD(length) = 528;
        WORD1(length) = *(BytePtr + 1);
        v14 = v11[1];
        if (v14 == 2)
        {
          HIDWORD(length) = *(v11 + 1);
        }
      }

      else
      {
        LOWORD(length) = 7708;
        WORD1(length) = *(BytePtr + 1);
        v14 = v11[1];
        if (v14 == 30)
        {
          v31 = *(v11 + 8);
        }
      }

      v18 = NEIsWildcardAddress(BytePtr);
      if (v13 != v14 || v18)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 24);
          *buf = 67109378;
          v34 = v28;
          v35 = 2080;
          v36 = "New local address is unspecified or has a different address family, only re-setting the local port";
          _os_log_debug_impl(&dword_1C0DA5000, v20, OS_LOG_TYPE_DEBUG, "(%u): %s", buf, 0x12u);
        }

        CFRelease(*(a1 + 56));
        v21 = CFDataCreate(*MEMORY[0x1E695E480], &length, length);
        result = 0;
        *(a1 + 56) = v21;
        return result;
      }

      if (v13 == 30)
      {
        v22 = *(BytePtr + 1);
        v23 = *(BytePtr + 2);
        v24 = (BytePtr + 8);
        if (*(v12 + 1) != v22 || *(v12 + 2) != v23)
        {
          *(a1 + 100) |= 0x40u;
          v31 = *v24;
        }
      }

      else if (v13 == 2 && *(v12 + 1) != *(BytePtr + 1))
      {
        *(a1 + 100) |= 0x40u;
        HIDWORD(length) = *(BytePtr + 1);
      }

      CFRelease(*(a1 + 56));
      v17 = CFDataCreate(*MEMORY[0x1E695E480], &length, length);
    }

    else
    {
      v17 = CFRetain(theData);
    }

    v26 = v17;
    result = 0;
    *(a1 + 56) = v26;
    *(a1 + 400) = v8;
    return result;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a1 + 24);
    *buf = 67109378;
    v34 = v27;
    v35 = 2080;
    v36 = "Cannot reset the local endpoint, given address is invalid";
    _os_log_error_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_ERROR, "(%u): %s", buf, 0x12u);
  }

  return 4;
}

void flow_director_send_properties_update(uint64_t a1, unsigned int a2, int a3, const __CFData *a4)
{
  TypeID = CFDataGetTypeID();
  if (a4 && CFGetTypeID(a4) == TypeID)
  {
    v9 = CFDataGetLength(a4) + 4;
    v10 = 10;
  }

  else
  {
    v10 = 5;
    v9 = 4;
  }

  v11 = v10 + v9;
  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], v10 + v9 + 8, 0x10000404A09149ALL, 0);
  *v13 = 7;
  *(v13 + 4) = bswap32(a2);
  if (v11 <= 8)
  {
    goto LABEL_13;
  }

  v14 = v13;
  *(v13 + 8) = 13;
  *(v13 + 9) = 0x4000000;
  *(v13 + 13) = a3;
  v15 = CFDataGetTypeID();
  if (a4 && CFGetTypeID(a4) == v15)
  {
    Length = CFDataGetLength(a4);
    BytePtr = CFDataGetBytePtr(a4);
    if (v11 - 9 >= Length + 5)
    {
      *(v14 + 17) = 31;
      *(v14 + 18) = bswap32(Length);
      memcpy((v14 + 22), BytePtr, Length);
      goto LABEL_10;
    }

LABEL_13:
    __assert_rtn("NEFlowTLVAdd", "NEFlow.c", 1839, "tlv_iter->remaining >= add_size");
  }

LABEL_10:
  flow_director_msg_send(a1, v14, v11 + 8, 0);

  CFAllocatorDeallocate(v12, v14);
}

CFDictionaryRef NEFlowCopyStateDictionary(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  *v43 = xmmword_1E812A520;
  v44 = *&off_1E812A530;
  v45 = xmmword_1E812A540;
  v46 = *&off_1E812A550;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  *keys = xmmword_1E812A560;
  v37 = *&off_1E812A570;
  v38 = xmmword_1E812A580;
  v34 = 0u;
  v35 = 0u;
  *values = 0u;
  *v30 = xmmword_1E812A590;
  v31 = *off_1E812A5A0;
  v32 = @"SendBufferSize";
  v29 = 0;
  *v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 48);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    v6 = NECreateAddressStringWithPort(BytePtr);
  }

  else
  {
    v6 = @"<unknown>";
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = CFDataGetBytePtr(v7);
    v9 = NECreateAddressStringWithPort(v8);
  }

  else
  {
    v9 = @"<unknown>";
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 24));
  v12 = @"TCP";
  if (*(a1 + 16) == 2)
  {
    v12 = @"UDP";
  }

  v39[0] = v11;
  v39[1] = v12;
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = @"<unknown>";
  }

  *&v40 = v14;
  *(&v40 + 1) = v6;
  *&v41 = v9;
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = @"<unknown>";
  }

  *(&v41 + 1) = v16;
  v17 = *(a1 + 16);
  v18 = 328;
  if (v17 == 2)
  {
    v18 = 336;
  }

  valuePtr = *(a1 + v18) != 0;
  if (v17 == 2)
  {
    size = *(a1 + 280);
  }

  else
  {
    size = *(a1 + 112);
    if (size)
    {
      size = dispatch_data_get_size(size);
    }
  }

  v25 = size;
  values[0] = CFNumberCreate(v10, kCFNumberLongType, &v25);
  values[1] = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
  *&v34 = CFNumberCreate(v10, kCFNumberLongLongType, (a1 + 232));
  *(&v34 + 1) = CFNumberCreate(v10, kCFNumberLongLongType, (a1 + 240));
  *&v35 = CFNumberCreate(v10, kCFNumberLongLongType, (a1 + 248));
  *(&v35 + 1) = CFNumberCreate(v10, kCFNumberLongLongType, (a1 + 256));
  v20 = 0;
  *&v42 = CFDictionaryCreate(v10, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    CFRelease(values[v20++]);
  }

  while (v20 != 6);
  v27[0] = CFNumberCreate(v10, kCFNumberLongLongType, (a2 + 8));
  v27[1] = CFNumberCreate(v10, kCFNumberLongLongType, (a2 + 16));
  *&v28 = CFNumberCreate(v10, kCFNumberLongLongType, (a2 + 24));
  *(&v28 + 1) = CFNumberCreate(v10, kCFNumberIntType, (a2 + 32));
  v29 = CFNumberCreate(v10, kCFNumberIntType, (a2 + 36));
  v21 = 0;
  *(&v42 + 1) = CFDictionaryCreate(v10, v30, v27, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    CFRelease(v27[v21++]);
  }

  while (v21 != 5);
  v22 = CFDictionaryCreate(v10, v43, v39, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 8; ++i)
  {
    CFRelease(v39[i]);
  }

  return v22;
}

uint64_t NEFlowTLVNext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 < 5)
  {
    return 0;
  }

  v3 = *a1;
  *a2 = **a1;
  v4 = *(v3 + 1);
  v5 = bswap32(v4);
  *(a2 + 4) = v5;
  if (v4)
  {
    v6 = v5 + 5;
    if (v6 > v2)
    {
      return 0;
    }

    v8 = v3 + 5;
  }

  else
  {
    v8 = 0;
    v6 = 5;
  }

  *(a2 + 8) = v8;
  *a1 = &v3[v6];
  *(a1 + 8) = v2 - v6;
  return 1;
}

uint64_t NEFlowTLVMsgCreate(unsigned int a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = 5 * a3 + a4;
  result = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], v10 + 8, 0x10000404A09149ALL, 0);
  *result = a2;
  *(result + 4) = bswap32(a1);
  if (a6)
  {
    *a6 = result + 8;
    a6[1] = v10;
  }

  *a5 = v10 + 8;
  return result;
}

uint64_t NEFlowDirectorCreateInternal(uint64_t a1, NSObject *a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *&buf[0].sa_len = 136315138;
    *&buf[0].sa_data[2] = "NEFlowDirectorCreateInternal";
    v16 = "%s called with null (control_socket >= 0)";
LABEL_20:
    _os_log_fault_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_FAULT, v16, &buf[0].sa_len, 0xCu);
    return 0;
  }

  if (!(a2 | a3))
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *&buf[0].sa_len = 136315138;
    *&buf[0].sa_data[2] = "NEFlowDirectorCreateInternal";
    v16 = "%s called with null (callback_queue != ((void*)0) || bridge_context != ((void*)0))";
    goto LABEL_20;
  }

  if (NEFlowDirectorCreateInternal_init_predicate != -1)
  {
    dispatch_once(&NEFlowDirectorCreateInternal_init_predicate, &__block_literal_global_104);
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 67109378;
    *&buf[0].sa_data[2] = dword_1EBE73118;
    *&buf[0].sa_data[6] = 2080;
    *&buf[0].sa_data[8] = "Creating a new flow director";
    _os_log_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEFAULT, "(%u): %s", &buf[0].sa_len, 0x12u);
  }

  v7 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 200, 0x10A00403057820CLL, 0);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0;
  rb_tree_init((v7 + 56), NEFlowDirectorCreateInternal_rb_ops);
  if (a2)
  {
    *(v7 + 8) = a2;
    dispatch_retain(a2);
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(v8);
  v10 = dispatch_queue_attr_make_with_qos_class(initially_inactive, QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = dispatch_queue_create("flow director queue", v10);
  *(v7 + 16) = v11;
  if (a3)
  {
    nw_queue_context_target_dispatch_queue();
    *v7 = nw_retain(a3);
    v11 = *(v7 + 16);
  }

  dispatch_set_context(v11, v7);
  dispatch_set_finalizer_f(*(v7 + 16), flow_director_deallocate);
  dispatch_activate(*(v7 + 16));
  *(v7 + 24) = flow_director_create_io_handler(v7, a1);
  v17 = 32;
  memset(buf, 0, sizeof(buf));
  v12 = getpeername(a1, buf, &v17);
  v13 = *&buf[0].sa_data[6];
  if (v12)
  {
    v13 = 0;
  }

  *(v7 + 32) = v13;
  flow_director_reset_default_interface_info(v7, "lo0");
  NEFlowDirectorSetMaxSendSize(v7, 0x100000uLL);
  NEFlowDirectorSetMaxReceiveSize(v7, 0x200000uLL);
  return v7;
}

NSObject *flow_director_create_io_handler(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __flow_director_create_io_handler_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_157;
  aBlock[4] = a1;
  v4 = _Block_copy(aBlock);
  v5 = dispatch_source_create(MEMORY[0x1E69E96F8], v2, 0, v3);
  v6 = fcntl(v2, 3);
  LODWORD(v7) = v6 | 4;
  if (v6 >= 0)
  {
    v7 = v7;
  }

  else
  {
    v7 = 4;
  }

  fcntl(v2, 4, v7);
  v14 = v3 | 0xBAACCAAB00000000;
  v8 = change_fdguard_np();
  if (v8)
  {
    v9 = v8;
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(handler) = 67109376;
      HIDWORD(handler) = v2;
      LOWORD(v16) = 1024;
      *(&v16 + 2) = v9;
      _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, "Unable to guard control socket fd %d (%d)", &handler, 0xEu);
    }
  }

  dispatch_set_context(v5, v4);
  handler = MEMORY[0x1E69E9820];
  v16 = 0x40000000;
  v17 = __flow_director_create_ctl_source_block_invoke;
  v18 = &__block_descriptor_tmp_158;
  v21 = v2;
  v19 = v5;
  v20 = v14;
  dispatch_source_set_cancel_handler(v5, &handler);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __flow_director_create_ctl_source_block_invoke_2;
  v13[3] = &__block_descriptor_tmp_159;
  v13[4] = v5;
  dispatch_source_set_event_handler(v5, v13);
  return v5;
}

uint64_t flow_director_reset_default_interface_info(uint64_t a1, const char *a2)
{
  v4 = NECopyInterfaceAddress(a2, 2);
  if (v4)
  {
    v5 = v4;
    v6 = NECreateAddressStructFromString(v4, 0, 0);
    CFRelease(v5);
    v7 = *(a1 + 160);
    if (v7)
    {
      free(v7);
    }

    *(a1 + 160) = v6;
  }

  v8 = NECopyInterfaceAddress(a2, 30);
  if (v8)
  {
    v9 = v8;
    v10 = NECreateAddressStructFromString(v8, 0, 0);
    CFRelease(v9);
    v11 = *(a1 + 168);
    if (v11)
    {
      free(v11);
    }

    *(a1 + 168) = v10;
  }

  result = if_nametoindex(a2);
  *(a1 + 176) = result;
  return result;
}

void NEFlowDirectorSetMaxSendSize(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v3 = a2 - 8;
  if (a2 <= 8)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109632;
    v20 = dword_1EBE73118;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = 8;
    v5 = "(%u): Cannot set the maximum send size (%lu) to less than %lu";
    v6 = v4;
    v7 = 28;
LABEL_10:
    _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
    return;
  }

  handle = dispatch_source_get_handle(*(a1 + 24));
  v10 = handle;
  if (handle <= 0)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109376;
    v20 = dword_1EBE73118;
    v21 = 1024;
    LODWORD(v22) = v10;
    v5 = "(%u): Did not get a valid control socket from the dispatch source: %d";
    v6 = v17;
    v7 = 14;
    goto LABEL_10;
  }

  v11 = setsockopt(handle, 0xFFFF, 4097, &v18, 4u);
  v12 = ne_log_obj();
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = dword_1EBE73118;
    v15 = __error();
    v16 = strerror(*v15);
    *buf = 67109378;
    v20 = v14;
    v21 = 2080;
    v22 = v16;
    v5 = "(%u): Failed to set SO_SNDBUF on the control socket: %s";
    v6 = v13;
    v7 = 18;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = dword_1EBE73118;
    v21 = 2048;
    v22 = a2;
    _os_log_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEFAULT, "(%u): Set SO_SNDBUF on the control socket to %lu", buf, 0x12u);
  }

  *(a1 + 184) = v3;
}

void NEFlowDirectorSetMaxReceiveSize(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v3 = a2 - 8;
  if (a2 <= 8)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109632;
    v20 = dword_1EBE73118;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = 8;
    v5 = "(%u): Cannot set the maximum receive size (%lu) to less than %lu";
    v6 = v4;
    v7 = 28;
LABEL_10:
    _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
    return;
  }

  handle = dispatch_source_get_handle(*(a1 + 24));
  v10 = handle;
  if (handle <= 0)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109376;
    v20 = dword_1EBE73118;
    v21 = 1024;
    LODWORD(v22) = v10;
    v5 = "(%u): Did not get a valid control socket from the dispatch source: %d";
    v6 = v17;
    v7 = 14;
    goto LABEL_10;
  }

  v11 = setsockopt(handle, 0xFFFF, 4098, &v18, 4u);
  v12 = ne_log_obj();
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v14 = dword_1EBE73118;
    v15 = __error();
    v16 = strerror(*v15);
    *buf = 67109378;
    v20 = v14;
    v21 = 2080;
    v22 = v16;
    v5 = "(%u): Failed to set SO_RCVBUF on the control socket: %s";
    v6 = v13;
    v7 = 18;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = dword_1EBE73118;
    v21 = 2048;
    v22 = a2;
    _os_log_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEFAULT, "(%u): Set SO_RCVBUF on the control socket to %lu", buf, 0x12u);
  }

  *(a1 + 192) = v3;
}

void __flow_director_create_io_handler_block_invoke(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, unint64_t a5)
{
  v138 = *MEMORY[0x1E69E9840];
  v115 = 0;
  v6 = *(a1 + 32);
  if (*(v6 + 40) == a2)
  {
    v7 = "data";
  }

  else
  {
    v7 = "control";
  }

  if (!a4 || !a5)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = dword_1EBE73118;
      *&buf[8] = 2080;
      *&buf[10] = v7;
      v11 = "(%u): %s: aborting director due to EOF";
      v12 = v14;
      v13 = 18;
      goto LABEL_26;
    }

LABEL_10:
    flow_director_abort(*(a1 + 32), 0);
    return;
  }

  if (a3)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *&buf[4] = dword_1EBE73118;
      *&buf[8] = 2080;
      *&buf[10] = v7;
      *&buf[18] = 2080;
      *&buf[20] = strerror(a3);
      v11 = "(%u): %s: aborting director due to read error: %s";
      v12 = v10;
      v13 = 28;
LABEL_26:
      _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (a5 <= 7)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109634;
    *&buf[4] = dword_1EBE73118;
    *&buf[8] = 2080;
    *&buf[10] = v7;
    *&buf[18] = 2048;
    *&buf[20] = a5;
    v16 = "(%u): %s: received a message that is too short (%zu)";
    v17 = v15;
    v18 = 28;
    goto LABEL_15;
  }

  v115 = bswap32(*(a4 + 1));
  if (*a4 == 11)
  {
    v20 = *(v6 + 152);
    *(v6 + 152) = 0;
    if (v20)
    {
      v21 = a5 - 8;
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (v21 < 5)
      {
LABEL_19:
        v23 = *(v6 + 8);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __flow_director_handle_flow_states_block_invoke;
        *&buf[24] = &unk_1E812A8B0;
        *&buf[32] = v20;
        *&buf[40] = Mutable;
        dispatch_async(v23, buf);
        return;
      }

      v31 = a4 + 8;
      while (1)
      {
        v32 = *v31;
        v33 = *(v31 + 1);
        v34 = bswap32(v33);
        if (v33)
        {
          v35 = v34 + 5;
          if (v34 + 5 > v21)
          {
            goto LABEL_19;
          }

          v36 = v31 + 5;
        }

        else
        {
          v36 = 0;
          v35 = 5;
        }

        if (v32 == 39)
        {
          memset(buf, 0, 40);
          if (v34 > 0x27)
          {
            v42 = *(v36 + 1);
            *buf = *v36;
            *&buf[16] = v42;
            *&buf[32] = *(v36 + 4);
            node = rb_tree_find_node((v6 + 56), buf);
            if (node)
            {
              v44 = NEFlowCopyStateDictionary(node, buf);
              CFArrayAppendValue(Mutable, v44);
              CFRelease(v44);
              goto LABEL_49;
            }

            v45 = ne_log_obj();
            if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_49;
            }

            *bytes = 67109376;
            *&bytes[4] = dword_1EBE73118;
            *&bytes[8] = 1024;
            *&bytes[10] = *buf;
            v38 = bytes;
            v39 = v45;
            v40 = "(%u): Cannot find flow with ID from flow state (%u)";
            goto LABEL_45;
          }

          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *bytes = 67109376;
            *&bytes[4] = dword_1EBE73118;
            *&bytes[8] = 1024;
            *&bytes[10] = v34;
            v38 = bytes;
            v39 = v37;
            v40 = "(%u): Got a flow state TLV with an invalid length: %u";
LABEL_45:
            _os_log_error_impl(&dword_1C0DA5000, v39, OS_LOG_TYPE_ERROR, v40, v38, 0xEu);
          }
        }

        else
        {
          v41 = ne_log_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = dword_1EBE73118;
            *&buf[8] = 1024;
            *&buf[10] = v32;
            v38 = buf;
            v39 = v41;
            v40 = "(%u): Got a non-state TLV: %u";
            goto LABEL_45;
          }
        }

LABEL_49:
        v31 += v35;
        v21 -= v35;
        if (v21 <= 4)
        {
          goto LABEL_19;
        }
      }
    }

    v30 = ne_log_obj();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = dword_1EBE73118;
    v16 = "(%u): Got flow states, but no callback is available";
    v17 = v30;
    v18 = 8;
LABEL_15:
    _os_log_error_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    return;
  }

  v24 = rb_tree_find_node((v6 + 56), &v115);
  v25 = v24;
  v26 = *a4;
  if (v26 != 1)
  {
    if (v24)
    {
      if (*a4 > 3u)
      {
        if (v26 == 4)
        {
          flow_director_handle_close(v24, a5 - 8, a4 + 8);
        }

        else if (v26 == 5)
        {
          flow_director_handle_read_notification(v24);
        }
      }

      else if (v26 == 2)
      {
        flow_director_handle_connect_result(*(a1 + 32), v24, a5 - 8, a4 + 8);
      }

      else if (v26 == 3)
      {
        flow_director_handle_data(*(a1 + 32), v24, a5 - 8, a4 + 8);
      }

      return;
    }

    if ((v26 & 0xFE) != 2)
    {
      return;
    }

    v55 = ne_log_obj();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    if (*a4 - 1 > 6)
    {
      v56 = "unknwon";
    }

    else
    {
      v56 = off_1E812AB88[(*a4 - 1)];
    }

    *buf = 67109890;
    *&buf[4] = dword_1EBE73118;
    *&buf[8] = 2080;
    *&buf[10] = v7;
    *&buf[18] = 2080;
    *&buf[20] = v56;
    *&buf[28] = 1024;
    *&buf[30] = v115;
    v16 = "(%u): %s: Recevied a %s message for flow %u, but the flow cannot be found";
    v17 = v55;
    v18 = 34;
    goto LABEL_15;
  }

  v27 = *(a1 + 32);
  v28 = v115;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  memset(buf, 0, sizeof(buf));
  v116 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v127 = 0u;
  v128 = 0u;
  v126 = 0u;
  memset(bytes, 0, sizeof(bytes));
  if (v24)
  {
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      os_unfair_lock_opaque = v25[6]._os_unfair_lock_opaque;
      v79 = strerror(37);
      *dst = 67109378;
      *&dst[4] = os_unfair_lock_opaque;
      *v118 = 2080;
      *&v118[2] = v79;
      _os_log_error_impl(&dword_1C0DA5000, v29, OS_LOG_TYPE_ERROR, "(%u): Sending error connect result: %s", dst, 0x12u);
    }

    flow_director_send_connect_result(v27, v28, 0x25u, 0, 0, 0, 0, 0, 0);
    return;
  }

  v46 = a5 - 8;
  v136 = 0uLL;
  v137 = 0uLL;
  v134 = 0uLL;
  v135 = 0uLL;
  v133 = 0uLL;
  memset(buf, 0, sizeof(buf));
  bytes[1] = 0;
  v47 = ne_log_obj();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *dst = 67109376;
    *&dst[4] = dword_1EBE73118;
    *v118 = 1024;
    *&v118[2] = v28;
    _os_log_impl(&dword_1C0DA5000, v47, OS_LOG_TYPE_DEFAULT, "(%u): Flow %u is connecting", dst, 0xEu);
  }

  v48 = *MEMORY[0x1E695E480];
  if (v46 < 5)
  {
    v49 = 0;
    v50 = 0;
    v99 = 0;
    v111 = 0;
    v112 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v110 = 0;
    v101 = 0;
    v54 = 0;
    v98 = 5;
    v100 = 1;
    goto LABEL_139;
  }

  cf = 0;
  v108 = v27;
  v112 = 0;
  v113 = 0;
  v49 = 0;
  v50 = 0;
  v99 = 0;
  v110 = 0;
  v111 = 0;
  v102 = 0;
  v104 = 0;
  v101 = 0;
  v96 = 0;
  v57 = a4 + 8;
  v98 = 5;
  v100 = 1;
  do
  {
    v58 = *v57;
    v59 = *(v57 + 1);
    v60 = bswap32(v59);
    if (v59)
    {
      v61 = v60 + 5;
      if (v60 + 5 > v46)
      {
        break;
      }

      v62 = v57 + 5;
    }

    else
    {
      v62 = 0;
      v61 = 5;
    }

    v63 = v58 == 21 && v50 == 0;
    if (v63)
    {
      v50 = CFStringCreateWithBytes(v48, v62, v60, 0x8000100u, 0);
      goto LABEL_78;
    }

    if (v58 == 11 || v58 == 23 || v58 == 22)
    {
      __memcpy_chk();
      goto LABEL_78;
    }

    if (v58 == 24 && !v113)
    {
      v113 = CFDataCreate(v48, v62, v60);
      goto LABEL_78;
    }

    if (v58 == 25 && !v49)
    {
      v49 = CFStringCreateWithBytes(v48, v62, v60, 0x8000100u, 0);
      goto LABEL_78;
    }

    if (*v57 > 0x1Du)
    {
      switch(v58)
      {
        case 30:
          if (v59 != 0x4000000)
          {
            break;
          }

          *dst = 0;
          __memcpy_chk();
          v64 = *dst;
          if (*dst != 1)
          {
            if (*dst != 3)
            {
              break;
            }

            v64 = 2;
          }

          v100 = v64;
          break;
        case 31:
          if (v112)
          {
            CFRelease(v112);
          }

          v112 = CFDataCreate(v48, v62, v60);
          break;
        case 32:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v59 == 0x20000000)
          {
            cf = CFDataCreate(v48, v62, 32);
          }

          else
          {
            v65 = ne_log_obj();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *dst = 67109376;
              *&dst[4] = MEMORY[0x18];
              *v118 = 1024;
              *&v118[2] = v60;
              _os_log_error_impl(&dword_1C0DA5000, v65, OS_LOG_TYPE_ERROR, "(%u): Invalid App audit token tlv length: %d", dst, 0xEu);
            }
          }

          break;
        default:
          goto LABEL_106;
      }
    }

    else
    {
      switch(v58)
      {
        case 14:
          if (v59 == 0x2000000)
          {
            v96 = *v62;
          }

          break;
        case 20:
          if (v59 == 0x1000000)
          {
            v98 = *v62;
          }

          break;
        case 29:
          if (v59 == 0x4000000)
          {
            *dst = 0;
            __memcpy_chk();
            v99 |= *dst;
          }

          break;
        default:
LABEL_106:
          if (v58 != 33 || v102)
          {
            if (v58 != 34 || v104)
            {
              if (v58 != 35 || v111)
              {
                if (v58 != 36 || v110)
                {
                  if (v58 == 13 && !v101 && v59 == 0x4000000)
                  {
                    v101 = *v62;
                  }
                }

                else if (v60 > 0x10)
                {
                  v110 = 0;
                }

                else
                {
                  *dst = 0;
                  *v118 = 0;
                  if (v59 == 0x10000000)
                  {
                    uuid_copy(dst, v62);
                  }

                  else
                  {
                    uuid_copy(dst, g_cfil_flow_uuid_template);
                    memcpy(&dst[-v60 + 16], v62, v60);
                  }

                  v110 = CFDataCreate(v48, dst, 16);
                }
              }

              else if (v59 == 0x20000000)
              {
                v111 = CFDataCreate(v48, v62, 32);
              }

              else
              {
                v66 = ne_log_obj();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  *dst = 67109376;
                  *&dst[4] = MEMORY[0x18];
                  *v118 = 1024;
                  *&v118[2] = v60;
                  _os_log_error_impl(&dword_1C0DA5000, v66, OS_LOG_TYPE_ERROR, "(%u): Invalid real audit token tlv length: %d", dst, 0xEu);
                }

                v111 = 0;
              }
            }

            else
            {
              v104 = CFDataCreate(v48, v62, v60);
            }
          }

          else
          {
            v102 = CFStringCreateWithBytes(v48, v62, v60, 0x8000100u, 0);
          }

          break;
      }
    }

LABEL_78:
    v57 += v61;
    v46 -= v61;
  }

  while (v46 > 4);
  v54 = v96;
  v51 = cf;
  v27 = v108;
  v52 = v102;
  v53 = v104;
  v67 = v113;
  if (!v113)
  {
LABEL_139:
    v67 = CFDataCreate(v48, 0, 0);
  }

  v114 = v67;
  if (!v49)
  {
    v49 = &stru_1F403BB50;
  }

  if (!v116 || ((TypeID = CFStringGetTypeID(), !v50) ? (v69 = 1) : (v69 = CFGetTypeID(v50) != TypeID), v69 && !buf[1] || (v70 = CFStringGetTypeID(), CFGetTypeID(v49) != v70)))
  {
    v76 = ne_log_obj();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *dst = 67110402;
      *&dst[4] = dword_1EBE73118;
      *v118 = 1024;
      *&v118[2] = v28;
      *&v118[6] = 1024;
      *&v118[8] = v116;
      v119 = 2112;
      v120 = v50;
      v121 = 1024;
      v122 = buf[1];
      v123 = 2112;
      v124 = v49;
      _os_log_error_impl(&dword_1C0DA5000, v76, OS_LOG_TYPE_ERROR, "(%u): Flow properties are incomplete for flow %u, port = %d, dest_name = %@, target_addr family = %d, app_signing_id = %@", dst, 0x2Eu);
    }

    flow_director_send_connect_result(v27, v28, 0x16u, 0, 0, 0, 0, 0, 0);
    v77 = v112;
    goto LABEL_167;
  }

  v105 = v53;
  cfa = v51;
  v103 = v52;
  v109 = v27;
  if (!buf[1])
  {
    buf[1] = 2;
    v71 = v116;
    v74 = v116 == 53 && v100 == 2 && *(v27 + 122) != 0;
LABEL_192:
    *&buf[2] = bswap32(v71) >> 16;
    v75 = 16;
LABEL_193:
    buf[0] = v75;
    goto LABEL_195;
  }

  v71 = v116;
  v74 = v116 == 53 && v100 == 2 && *(v27 + 122) != 0;
  if (buf[1] == 2)
  {
    goto LABEL_192;
  }

  if (buf[1] == 30)
  {
    *&buf[2] = bswap32(v116) >> 16;
    v75 = 28;
    goto LABEL_193;
  }

  v75 = buf[0];
LABEL_195:
  v82 = CFDataCreate(v48, buf, v75);
  v83 = bytes[1];
  if (!bytes[1])
  {
    v83 = buf[1];
    bytes[1] = buf[1];
    bytes[0] = buf[0];
  }

  v84 = NEIsWildcardAddress(bytes);
  v85 = 16;
  if (!v84)
  {
    if (v83)
    {
LABEL_205:
      v86 = v105;
      goto LABEL_206;
    }

LABEL_207:
    v97 = 16;
    v88 = 0;
    v86 = v105;
    goto LABEL_208;
  }

  if (!v83)
  {
    goto LABEL_207;
  }

  if (v83 == 30)
  {
    v95 = *(v27 + 168);
    if (v95)
    {
      *&bytes[8] = *(v95 + 8);
      v85 = 80;
    }

    else
    {
      v85 = 16;
    }

    goto LABEL_205;
  }

  v63 = v83 == 2;
  v86 = v105;
  if (v63)
  {
    v87 = *(v27 + 160);
    if (v87)
    {
      *&bytes[4] = *(v87 + 4);
      v85 = 80;
    }

    else
    {
      v85 = 16;
    }
  }

LABEL_206:
  v97 = v85;
  v88 = CFDataCreate(v48, bytes, bytes[0]);
LABEL_208:
  if (v101)
  {
    v89 = v74;
    v90 = ne_log_obj();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      *dst = 67109632;
      *&dst[4] = dword_1EBE73118;
      *v118 = 1024;
      *&v118[2] = v28;
      *&v118[6] = 1024;
      *&v118[8] = v101;
      _os_log_debug_impl(&dword_1C0DA5000, v90, OS_LOG_TYPE_DEBUG, "(%u): Kernel set interface index for flow %u to %u", dst, 0x14u);
    }

    v74 = v89;
  }

  else
  {
    v101 = *(v27 + 176);
  }

  if (runtime_inited != -1)
  {
    dispatch_once(&runtime_inited, &__block_literal_global_165);
  }

  Instance = _CFRuntimeCreateInstance();
  v92 = Instance;
  if (Instance)
  {
    *(Instance + 16) = v100;
    *(Instance + 24) = v28;
    *(Instance + 40) = v109;
    *(Instance + 48) = v82;
    if (v82)
    {
      CFRetain(v82);
    }

    *(v92 + 64) = v50;
    if (v50)
    {
      CFRetain(v50);
    }

    *(v92 + 56) = v88;
    if (v88)
    {
      CFRetain(v88);
    }

    *(v92 + 280) = 0x4000000000000;
    *(v92 + 32) = 0;
    *(v92 + 100) = 0;
    *(v92 + 104) = 0;
    *(v92 + 112) = MEMORY[0x1E69E9668];
    *(v92 + 120) = 0;
    *(v92 + 80) = v49;
    CFRetain(v49);
    *(v92 + 88) = v114;
    if (v114)
    {
      CFRetain(v114);
    }

    *(v92 + 176) = 0u;
    *(v92 + 192) = 0u;
    *(v92 + 144) = 0u;
    *(v92 + 160) = 0u;
    *(v92 + 96) = v54;
    *(v92 + 108) = v98;
    *(v92 + 320) = 0;
    *(v92 + 264) = 0;
    *(v92 + 272) = v92 + 264;
    *(v92 + 304) = 0;
    *(v92 + 312) = v92 + 304;
    *(v92 + 344) = v99;
    *(v92 + 352) = v112;
    if (v112)
    {
      CFRetain(v112);
    }

    *(v92 + 360) = cfa;
    if (cfa)
    {
      CFRetain(cfa);
    }

    *(v92 + 368) = v103;
    if (v103)
    {
      CFRetain(v103);
    }

    *(v92 + 376) = v86;
    if (v86)
    {
      CFRetain(v86);
    }

    *(v92 + 384) = v111;
    if (v111)
    {
      CFRetain(v111);
    }

    *(v92 + 392) = v110;
    if (v110)
    {
      CFRetain(v110);
    }

    *(v92 + 400) = v101;
    *(v92 + 432) = v74;
  }

  CFRelease(v82);
  if (v88)
  {
    CFRelease(v88);
  }

  v77 = v112;
  if (!v92)
  {
    __assert_rtn("flow_director_handle_connect", "NEFlow.c", 3021, "new_flow != NULL");
  }

  v52 = v103;
  v51 = cfa;
  if (rb_tree_insert_node((v109 + 56), v92) != v92)
  {
    __assert_rtn("flow_director_handle_connect", "NEFlow.c", 3022, "rb_tree_insert_node(&director->flow_tree, new_flow) == new_flow");
  }

  *(v92 + 100) = v97;
  v93 = ne_log_obj();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    v94 = *(v92 + 24);
    *dst = 67109378;
    *&dst[4] = v94;
    *v118 = 2112;
    *&v118[2] = v92;
    _os_log_impl(&dword_1C0DA5000, v93, OS_LOG_TYPE_DEFAULT, "(%u): New flow: %@", dst, 0x12u);
  }

  os_unfair_lock_lock((v92 + 120));
  flow_startup(v92, v109, 0);
  os_unfair_lock_unlock((v92 + 120));
  v53 = v105;
LABEL_167:
  if (v50)
  {
    CFRelease(v50);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  CFRelease(v49);
  if (v77)
  {
    CFRelease(v77);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v110)
  {
    CFRelease(v110);
  }
}

void __flow_director_create_ctl_source_block_invoke(uint64_t a1)
{
  context = dispatch_get_context(*(a1 + 32));
  if (context)
  {
    _Block_release(context);
    dispatch_set_context(*(a1 + 32), 0);
  }

  guarded_close_np();
  v3 = *(a1 + 32);

  dispatch_release(v3);
}

int *flow_director_ctl_source_do_read(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v16 = *MEMORY[0x1E69E9840];
  v14[0] = v15;
  v14[1] = 66624;
  *&v9.msg_control = 0u;
  *&v9.msg_name = 0u;
  v9.msg_iov = v14;
  *&v9.msg_iovlen = 1;
  handle = dispatch_source_get_handle(v1);
  context = dispatch_get_context(v1);
  if (!context)
  {
    __assert_rtn("flow_director_ctl_source_do_read", "NEFlow.c", 3445, "saved_handler != NULL");
  }

  for (i = context; ; (*(i + 2))(i, v1, 0, v15, v5))
  {
    bzero(v15, 0x10440uLL);
    v5 = recvmsg(handle, &v9, 0);
    if (!v5)
    {
      v6 = 0;
      return (*(i + 2))(i, v1, v6, 0, 0);
    }

    if (v5 < 0)
    {
      break;
    }

    if ((v9.msg_flags & 8) == 0)
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        v6 = 22;
        return (*(i + 2))(i, v1, v6, 0, 0);
      }

      *buf = 67109378;
      v11 = dword_1EBE73118;
      v12 = 2080;
      v13 = "Failed to read an entire packet";
LABEL_18:
      _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "(%u): %s", buf, 0x12u);
      goto LABEL_14;
    }

    if ((v9.msg_flags & 0x10) != 0)
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109378;
      v11 = dword_1EBE73118;
      v12 = 2080;
      v13 = "Message was too big for the read buffer";
      goto LABEL_18;
    }
  }

  result = __error();
  if (*result == 35)
  {
    return result;
  }

  v6 = *__error();
  return (*(i + 2))(i, v1, v6, 0, 0);
}

void __flow_director_handle_flow_states_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void flow_startup(uint64_t a1, uint64_t a2, int a3)
{
  v60 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 120));
  if (a3)
  {
    goto LABEL_2;
  }

  if (!*a2)
  {
    if ((*(a1 + 100) & 0x20) != 0 || !*(a2 + 136))
    {
      CFRetain(a1);
      dispatch_retain(*(a2 + 16));
      v20 = *(a2 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __flow_startup_block_invoke_191;
      block[3] = &__block_descriptor_tmp_198;
      block[4] = a2;
      block[5] = a1;
      v21 = block;
    }

    else
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 360);
      if (!v14)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *state_changed_handler = 134218240;
          *&state_changed_handler[4] = 0;
          *&state_changed_handler[12] = 2048;
          *&state_changed_handler[14] = v15;
          v33 = "Signing identifier (%p) and/or audit token (%p) not available, rejecting flow";
          p_receive_handler = state_changed_handler;
          v36 = v34;
          v37 = 22;
LABEL_62:
          _os_log_error_impl(&dword_1C0DA5000, v36, OS_LOG_TYPE_ERROR, v33, p_receive_handler, v37);
          goto LABEL_2;
        }

        goto LABEL_2;
      }

      v16 = *(a1 + 24);
      v17 = *(a1 + 368);
      v18 = *(a1 + 384);
      CFRetain(*(a1 + 80));
      if (v15)
      {
        CFRetain(v15);
      }

      if (v17)
      {
        CFRetain(v17);
      }

      if (v18)
      {
        CFRetain(v18);
      }

      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a1 + 24);
        *state_changed_handler = 67109378;
        *&state_changed_handler[4] = v44;
        *&state_changed_handler[8] = 2112;
        *&state_changed_handler[10] = v14;
        _os_log_debug_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_DEBUG, "(%u): Requesting rule matching for %@", state_changed_handler, 0x12u);
      }

      dispatch_retain(*(a2 + 16));
      v20 = *(a2 + 8);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 0x40000000;
      v46[2] = __flow_startup_block_invoke;
      v46[3] = &__block_descriptor_tmp_190;
      v47 = v16;
      v46[4] = a2;
      v46[5] = v15;
      v46[6] = v14;
      v46[7] = v17;
      v46[8] = v18;
      v21 = v46;
    }

    dispatch_async(v20, v21);
    return;
  }

  if (*(a1 + 16) != 2)
  {
    goto LABEL_8;
  }

  os_unfair_lock_assert_owner((a1 + 120));
  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_36;
  }

  if (*(a1 + 64))
  {
    goto LABEL_8;
  }

  BytePtr = CFDataGetBytePtr(v6);
  if (!BytePtr)
  {
LABEL_36:
    os_unfair_lock_assert_owner((a1 + 120));
    v24 = *a2;
    v25 = *(a2 + 121);
    os_unfair_lock_assert_owner((a1 + 120));
    bridged_parameters = flow_create_bridged_parameters(a1, v24, v25);
    if (bridged_parameters)
    {
      v27 = bridged_parameters;
      v28 = nw_connection_group_create_with_parameters();
      nw_release(v27);
      if (v28)
      {
        *(a1 + 416) = v28;
        if (!*(a1 + 136))
        {
          v29 = *(a2 + 16);
          *(a1 + 136) = v29;
          dispatch_retain(v29);
        }

        nw_connection_group_set_queue(v28, *(a2 + 16));
        v48[0] = 0;
        v48[1] = v48;
        v48[2] = 0x2000000000;
        v48[3] = CFRetain(a1);
        *state_changed_handler = MEMORY[0x1E69E9820];
        *&state_changed_handler[8] = 0x40000000;
        *&state_changed_handler[16] = __flow_setup_bridged_connection_group_block_invoke;
        v56 = &unk_1E812AA40;
        v57 = v48;
        v58 = a1;
        v59 = a2;
        nw_connection_group_set_state_changed_handler(v28, state_changed_handler);
        os_unfair_lock_assert_owner((a1 + 120));
        if ((*(a1 + 100) & 1) == 0)
        {
          v30 = *(a1 + 416);
          if (v30)
          {
            receive_handler = MEMORY[0x1E69E9820];
            v50 = 0x40000000;
            v51 = __flow_bridge_read_data_from_connection_group_block_invoke;
            v52 = &__block_descriptor_tmp_207;
            v53 = a1;
            v54 = v30;
            nw_connection_group_set_receive_handler(v30, 0xFFFFFFFF, 0, &receive_handler);
          }
        }

        nw_connection_group_start(v28);
        v31 = v48;
        goto LABEL_56;
      }
    }

    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(receive_handler) = 0;
      v33 = "Failed to create bridged connection group, rejecting flow";
LABEL_61:
      p_receive_handler = &receive_handler;
      v36 = v32;
      v37 = 2;
      goto LABEL_62;
    }

LABEL_2:
    flow_director_send_connect_result(a2, *(a1 + 24), 0x3Du, 0, 0, 0, 0, 0, 0);
    flow_drop_director(a1);
    flow_cancel_bridged_connection(a1, 0);
    return;
  }

  v23 = BytePtr[1];
  if (v23 == 30)
  {
    if (*(BytePtr + 2) || *(BytePtr + 3) || *(BytePtr + 4) || *(BytePtr + 5))
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  if (v23 != 2 || !*(BytePtr + 1))
  {
    goto LABEL_36;
  }

LABEL_8:
  os_unfair_lock_assert_owner((a1 + 120));
  v7 = *a2;
  v8 = *(a2 + 121);
  os_unfair_lock_assert_owner((a1 + 120));
  v9 = flow_create_bridged_parameters(a1, v7, v8);
  if (!v9)
  {
    goto LABEL_59;
  }

  v10 = v9;
  os_unfair_lock_assert_owner((a1 + 120));
  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_50;
  }

  v12 = CFDataGetBytePtr(v11);
  if (!v12)
  {
    goto LABEL_50;
  }

  v13 = v12[1];
  if (v13 != 30 && v13 != 2)
  {
    goto LABEL_50;
  }

  if (*(a1 + 64) && (*(a1 + 16) != 2 || *(v12 + 1) != 13568))
  {
    v38 = NECreateCStringFromCFString(*(a1 + 64));
    if (v38)
    {
      v39 = v38;
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
      free(v39);
      goto LABEL_65;
    }

LABEL_50:
    host_with_numeric_port = 0;
LABEL_51:
    v41 = 0;
    goto LABEL_52;
  }

  if (*(a1 + 432))
  {
    address = nw_endpoint_create_host_with_numeric_port();
  }

  else
  {
    address = nw_endpoint_create_address(v12);
  }

  host_with_numeric_port = address;
LABEL_65:
  if (!host_with_numeric_port)
  {
    goto LABEL_51;
  }

  v41 = nw_connection_create(host_with_numeric_port, v10);
LABEL_52:
  nw_release(host_with_numeric_port);
  nw_release(v10);
  if (!v41)
  {
LABEL_59:
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(receive_handler) = 0;
      v33 = "Failed to create bridged connection, rejecting flow";
      goto LABEL_61;
    }

    goto LABEL_2;
  }

  *(a1 + 408) = v41;
  if (!*(a1 + 136))
  {
    v42 = *(a2 + 16);
    *(a1 + 136) = v42;
    dispatch_retain(v42);
  }

  nw_connection_set_queue(v41, *(a2 + 16));
  receive_handler = 0;
  v50 = &receive_handler;
  v51 = 0x2000000000;
  v52 = CFRetain(a1);
  *state_changed_handler = MEMORY[0x1E69E9820];
  *&state_changed_handler[8] = 0x40000000;
  *&state_changed_handler[16] = __flow_setup_bridged_connection_block_invoke;
  v56 = &unk_1E812AAF0;
  v57 = &receive_handler;
  v58 = a1;
  v59 = a2;
  nw_connection_set_state_changed_handler(v41, state_changed_handler);
  nw_connection_start(v41);
  v31 = &receive_handler;
LABEL_56:
  _Block_object_dispose(v31, 8);
  if (*(a2 + 121))
  {
    if (!*(a1 + 128))
    {
      *(a1 + 128) = os_transaction_create();
    }
  }
}

void flow_director_handle_connect_result(uint64_t a1, CFIndex a2, unint64_t a3, unsigned __int8 *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  memset(length, 0, sizeof(length));
  if (a3 >= 5)
  {
    for (i = a3; i > 4; i -= v11)
    {
      v8 = *a4;
      v9 = *(a4 + 1);
      v10 = bswap32(v9);
      if (v9)
      {
        v11 = v10 + 5;
        if (v10 + 5 > i)
        {
          break;
        }
      }

      else
      {
        v11 = 5;
      }

      if (v8 == 9)
      {
        __memcpy_chk();
        HIDWORD(v23) = bswap32(HIDWORD(v23));
      }

      else if (v8 == 11 && v10 <= 0x1C)
      {
        __memcpy_chk();
      }

      a4 += v11;
    }
  }

  os_unfair_lock_lock((a2 + 120));
  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a2 + 24);
    *buf = 67109376;
    v25 = v21;
    v26 = 1024;
    LODWORD(v27) = HIDWORD(v23);
    _os_log_debug_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEBUG, "(%u): Got a connect result with window size %u", buf, 0xEu);
  }

  if ((*(a2 + 100) & 3) != 0)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a2 + 24);
      *buf = 67109378;
      v25 = v15;
      v26 = 2080;
      v27 = "Flow is closed, sending close while handling connect result";
      _os_log_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_DEFAULT, "(%u): %s", buf, 0x12u);
    }

    v16 = *(a2 + 24);
    v17 = flow_error_to_errno(*(a2 + 32));
    flow_director_send_close(a1, v16, v17, 2u, *(a2 + 100) & 4);
    goto LABEL_22;
  }

  if (*(a2 + 104))
  {
LABEL_22:
    os_unfair_lock_unlock((a2 + 120));
    return;
  }

  v18 = HIDWORD(v23);
  if (!HIDWORD(v23))
  {
    flow_read_close(a2, 0);
    flow_write_close(a2, 0);
    flow_drop_director(a2);
    goto LABEL_22;
  }

  *(a2 + 104) = HIDWORD(v23);
  *(a2 + 288) = v18;
  if (BYTE1(length[0]))
  {
    v19 = CFDataCreate(*MEMORY[0x1E695E480], length, LOBYTE(length[0]));
    v20 = *(a2 + 56);
    if (v20)
    {
      CFRelease(v20);
    }

    *(a2 + 56) = v19;
  }

  flow_notify_client(a2, 5);
  os_unfair_lock_unlock((a2 + 120));
  flow_director_handle_read_notification(a2);
}

void flow_director_handle_data(uint64_t a1, uint64_t a2, size_t a3, unsigned __int8 *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a2 + 120));
  if ((*(a2 + 100) & 2) != 0)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a2 + 24);
      *buf = 67109378;
      *&buf[4] = v18;
      *&buf[8] = 2080;
      *&buf[10] = "received bytes, but flow is closed";
      _os_log_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_DEFAULT, "(%u): %s", buf, 0x12u);
    }

    goto LABEL_70;
  }

  v8 = *(a2 + 16);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v9 = dispatch_data_create(a4, a3, *(a1 + 16), 0);
      *(a2 + 232) += dispatch_data_get_size(v9);
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a2 + 24);
        *buf = 67109376;
        *&buf[4] = v59;
        *&buf[8] = 2048;
        *&buf[10] = dispatch_data_get_size(v9);
        _os_log_debug_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_DEBUG, "(%u): received %zu tcp bytes from app", buf, 0x12u);
      }

      v11 = *(a2 + 112);
      if (dispatch_data_get_size(v11))
      {
        concat = dispatch_data_create_concat(v11, v9);
        dispatch_release(*(a2 + 112));
        dispatch_release(v9);
        v9 = concat;
      }

      *(a2 + 112) = v9;
      if (*(a2 + 408))
      {
        if (v9 && dispatch_data_get_size(v9))
        {
          *(a2 + 112) = MEMORY[0x1E69E9668];
          size = dispatch_data_get_size(v9);
          v14 = CFRetain(a2);
          v15 = *(a2 + 408);
          v16 = *MEMORY[0x1E6977E88];
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 0x40000000;
          completion[2] = __flow_director_handle_data_block_invoke;
          completion[3] = &__block_descriptor_tmp_168;
          completion[4] = a2;
          completion[5] = size;
          completion[6] = v14;
          nw_connection_send(v15, v9, v16, 1, completion);
          dispatch_release(v9);
        }
      }

      else
      {
        flow_call_stream_read_handler(a2, 0);
      }
    }

    goto LABEL_70;
  }

  v19 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  v66 = 0;
  v65 = 0;
  buf[1] = 0;
  if (a3 < 5)
  {
    goto LABEL_15;
  }

  v19 = 0;
  v31 = a3;
  v32 = a4;
  while (1)
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = bswap32(v34);
    if (v34)
    {
      v36 = v35 + 5;
      if (v35 + 5 > v31)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v36 = 5;
    }

    if (*v32 > 0x1Au)
    {
      break;
    }

    if (v33 == 22)
    {
      if (v35 <= 0x80)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v33 == 23)
    {
      if (v35 <= 4)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

LABEL_35:
    v32 += v36;
    v31 -= v36;
    if (v31 <= 4)
    {
      goto LABEL_15;
    }
  }

  if (v33 == 27)
  {
    if (v35 <= 1)
    {
LABEL_33:
      __memcpy_chk();
    }

LABEL_34:
    v19 += v35 + 5;
    goto LABEL_35;
  }

  if (v33 != 37)
  {
    goto LABEL_35;
  }

  if (v35 <= 8)
  {
    __memcpy_chk();
  }

  v19 += v35 + 5;
LABEL_15:
  v20 = a3 - v19;
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v60 = *(a2 + 24);
    *v68 = 67109888;
    v69 = v60;
    v70 = 2048;
    v71 = v20;
    v72 = 2048;
    v73 = v66;
    v74 = 1024;
    v75 = v65;
    _os_log_debug_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_DEBUG, "(%u): received %zu datagram bytes from app, total_size = %lu, is_fragment = %d", v68, 0x22u);
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 152, 0x10200406C3B2734, 0);
  v24 = v23;
  *(v23 + 96) = 0u;
  *(v23 + 112) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 128) = 0u;
  *(v23 + 144) = 0;
  if (buf[1])
  {
    v25 = *buf;
    v26 = *&buf[16];
    v27 = v78;
    *(v23 + 32) = v77;
    *(v23 + 48) = v27;
    *v23 = v25;
    *(v23 + 16) = v26;
    v28 = v79;
    v29 = v80;
    v30 = v82;
    *(v23 + 96) = v81;
    *(v23 + 112) = v30;
    *(v23 + 64) = v28;
    *(v23 + 80) = v29;
  }

  else
  {
    v37 = *(a2 + 48);
    if (v37)
    {
      BytePtr = CFDataGetBytePtr(v37);
      Length = CFDataGetLength(*(a2 + 48));
      memcpy(v24, BytePtr, Length);
    }
  }

  v40 = v66;
  if (v66)
  {
    *(v24 + 128) = MEMORY[0x1E69E9668];
    *(v24 + 136) = v40;
    if (*(a2 + 296))
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v62 = *(a2 + 24);
        v63 = *(*(a2 + 296) + 136);
        *v68 = 67109376;
        v69 = v62;
        v70 = 2048;
        v71 = v63;
        _os_log_error_impl(&dword_1C0DA5000, v41, OS_LOG_TYPE_ERROR, "(%u): previous fragmented datagram was never completed (%lu bytes remaining), dropping it", v68, 0x12u);
      }

      dispatch_release(*(*(a2 + 296) + 128));
      CFAllocatorDeallocate(v22, *(a2 + 296));
    }

    *(a2 + 296) = v24;
  }

  else
  {
    *(v24 + 128) = dispatch_data_create(&a4[v19], v20, 0, 0);
    *(v24 + 144) = 0;
    **(a2 + 272) = v24;
    *(a2 + 272) = v24 + 144;
    *(a2 + 280) += dispatch_data_get_size(*(v24 + 128));
  }

  if (v65)
  {
    v42 = *(a2 + 296);
    if (v42 && *(v42 + 128))
    {
      if (*(v42 + 136) >= v20)
      {
        v56 = dispatch_data_create(&a4[v19], v20, 0, 0);
        v57 = *(v42 + 128);
        *(v42 + 128) = dispatch_data_create_concat(v57, v56);
        dispatch_release(v57);
        dispatch_release(v56);
        v58 = *(v42 + 136) - v20;
        *(v42 + 136) = v58;
        if (!v58)
        {
          *(v42 + 144) = 0;
          **(a2 + 272) = v42;
          *(a2 + 272) = v42 + 144;
          *(a2 + 280) += dispatch_data_get_size(*(v42 + 128));
          *(a2 + 296) = 0;
        }
      }

      else
      {
        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(a2 + 24);
          v45 = *(v42 + 136);
          *v68 = 67109632;
          v69 = v44;
          v70 = 2048;
          v71 = v20;
          v72 = 2048;
          v73 = v45;
          v46 = "(%u): Received a datagram fragment with more data than expected (%lu vs. %lu)";
          v47 = v43;
          v48 = 28;
          goto LABEL_72;
        }
      }
    }

    else
    {
      v49 = ne_log_obj();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v61 = *(a2 + 24);
        *v68 = 67109378;
        v69 = v61;
        v70 = 2080;
        v71 = "Received a datagram fragment but no previous datagram was found";
        v46 = "(%u): %s";
        v47 = v49;
        v48 = 18;
LABEL_72:
        _os_log_error_impl(&dword_1C0DA5000, v47, OS_LOG_TYPE_ERROR, v46, v68, v48);
      }
    }
  }

  v50 = *(a2 + 280);
  if (v50)
  {
    v51 = *(a2 + 408);
    if (v51)
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 0x40000000;
      v64[2] = __flow_director_handle_data_block_invoke_170;
      v64[3] = &__block_descriptor_tmp_172;
      v64[4] = a2;
      nw_connection_batch(v51, v64);
    }

    else if (*(a2 + 416))
    {
      v52 = *(a2 + 264);
      if (v52)
      {
        v53 = *MEMORY[0x1E6977E88];
        do
        {
          v54 = *(v52 + 128);
          address = nw_endpoint_create_address(v52);
          nw_connection_group_send_message(*(a2 + 416), v54, address, v53, &__block_literal_global_175);
          nw_release(address);
          v52 = *(v52 + 144);
        }

        while (v52);
        v50 = *(a2 + 280);
      }

      flow_director_send_read_notification(*(a2 + 40), *(a2 + 24), v50);
      flow_clear_datagram_queue(*(a2 + 264), *(a2 + 272));
      *(a2 + 264) = 0;
      *(a2 + 272) = a2 + 264;
    }

    else
    {
      flow_call_dgram_read_handler(a2, 0);
    }
  }

LABEL_70:
  os_unfair_lock_unlock((a2 + 120));
}

void flow_director_handle_close(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  while (a2 >= 5)
  {
    v4 = *a3;
    v5 = *(a3 + 1);
    v6 = bswap32(v5);
    if (v5)
    {
      v7 = v6 + 5;
      if (v6 + 5 > a2)
      {
        return;
      }
    }

    else
    {
      v7 = 5;
    }

    a3 += v7;
    a2 -= v7;
    if (v4 == 7)
    {
      __memcpy_chk();
      v9 = bswap32(0);
      os_unfair_lock_lock((a1 + 120));
      if (!v9 || (flow_read_close(a1, 0), v9 != 1))
      {
        flow_write_close(a1, 0);
      }

      v8 = *(a1 + 100);
      if ((v8 & 3) != 0)
      {
        flow_cancel_bridged_connection(a1, 0);
        v8 = *(a1 + 100);
      }

      if ((~v8 & 3) == 0 && !*(a1 + 320))
      {
        flow_drop_director(a1);
      }

      os_unfair_lock_unlock((a1 + 120));
      return;
    }
  }
}

void flow_director_handle_read_notification(os_unfair_lock_s *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 30);
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    os_unfair_lock_opaque = a1[6]._os_unfair_lock_opaque;
    *buf = 67109120;
    v6 = os_unfair_lock_opaque;
    _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "(%u): Received a read notification", buf, 8u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __flow_director_handle_read_notification_block_invoke;
  v4[3] = &__block_descriptor_tmp_177;
  v4[4] = a1;
  flow_handle_pending_write_requests(a1, v4);
  os_unfair_lock_unlock(a1 + 30);
}

uint64_t __flow_director_handle_read_notification_block_invoke(uint64_t a1, unsigned __int8 *__src)
{
  v4 = flow_write_range_of_cfdata(*(a1 + 32), *(__src + 16), *(__src + 17), *(__src + 18), __src);
  if (v5 < 1)
  {
    v8 = *(__src + 19);
    if (v8)
    {
      flow_call_write_completion(*(a1 + 32), 0, v8);
    }

    return 1;
  }

  else
  {
    v6 = v4;
    result = 0;
    *(__src + 17) = v6;
    *(__src + 18) = v5;
  }

  return result;
}

void __flow_director_handle_data_block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    v3 = nw_error_copy_cf_error(error);
    flow_close(*(a1 + 32), v3, 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    flow_director_send_read_notification(*(*(a1 + 32) + 40), *(*(a1 + 32) + 24), *(a1 + 40));
  }

  v4 = *(a1 + 48);

  CFRelease(v4);
}

void __flow_director_handle_data_block_invoke_170(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 264);
  if (v3)
  {
    v4 = *MEMORY[0x1E6977E88];
    do
    {
      v5 = *(v3 + 128);
      v6 = CFRetain(*(a1 + 32));
      v7 = *(a1 + 32);
      v8 = *(v7 + 408);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __flow_director_handle_data_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_171;
      v9[4] = v7;
      v9[5] = v6;
      nw_connection_send(v8, v5, v4, 1, v9);
      v3 = *(v3 + 144);
    }

    while (v3);
    v2 = *(a1 + 32);
  }

  flow_director_send_read_notification(*(v2 + 40), *(v2 + 24), *(v2 + 280));
  flow_clear_datagram_queue(*(*(a1 + 32) + 264), *(*(a1 + 32) + 272));
  *(*(a1 + 32) + 264) = 0;
  *(*(a1 + 32) + 272) = *(a1 + 32) + 264;
}

void __flow_director_handle_data_block_invoke_2(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    v3 = nw_error_copy_cf_error(error);
    flow_close(*(a1 + 32), v3, 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

NSObject *flow_create_bridged_parameters(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_assert_owner((a1 + 120));
  v5 = *(a1 + 16);
  if (v5 == 2)
  {
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  }

  else
  {
    if (v5 != 1)
    {
      return 0;
    }

    secure_udp = nw_parameters_create_secure_tcp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  }

  v7 = secure_udp;
  if ((*(a1 + 344) & 8) != 0)
  {
    if (*(a1 + 400))
    {
      v8 = nw_interface_create_with_index();
      if (v8)
      {
        v9 = v8;
        nw_parameters_require_interface(v7, v8);
        nw_release(v9);
      }
    }
  }

  if (*(a1 + 96))
  {
    nw_parameters_set_traffic_class();
  }

  *buffer = 0u;
  v14 = 0u;
  v10 = *(a1 + 360);
  if (v10)
  {
    Length = CFDataGetLength(v10);
    if (a3)
    {
      if (Length == 32)
      {
        v15.location = 0;
        v15.length = 32;
        CFDataGetBytes(*(a1 + 360), v15, buffer);
        nw_parameters_set_source_application();
      }
    }
  }

  nw_parameters_set_context();
  nw_parameters_set_indefinite();
  return v7;
}

void __flow_setup_bridged_connection_group_block_invoke(void *a1, int a2, NSObject *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(*(a1[4] + 8) + 24))
  {
    return;
  }

  os_unfair_lock_lock((a1[5] + 120));
  v6 = a1[5];
  if (!*(v6 + 416))
  {
    os_unfair_lock_unlock((v6 + 120));
    goto LABEL_15;
  }

  if ((a2 - 3) < 2)
  {
    v14 = nw_error_copy_cf_error(a3);
    flow_cancel_bridged_connection(a1[5], v14);
    if (v14)
    {
      CFRelease(v14);
    }

    flow_cancel_connection_waiting_timer(a1[5]);
    os_unfair_lock_unlock((a1[5] + 120));
    if (a2 != 4)
    {
      return;
    }

LABEL_15:
    v15 = *(a1[4] + 8);
    v16 = *(v15 + 24);
    if (v16)
    {
      CFRelease(v16);
      *(v15 + 24) = 0;
    }

    return;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
LABEL_25:
      flow_cancel_connection_waiting_timer(v6);
      os_unfair_lock_unlock((a1[5] + 120));
      return;
    }

    port = nw_connection_group_get_port();
    v8 = a1[5];
    os_unfair_lock_assert_owner((v8 + 120));
    v9 = *(v8 + 48);
    if (v9)
    {
      BytePtr = CFDataGetBytePtr(v9);
      if (BytePtr)
      {
        v11 = BytePtr[1];
        if (v11 == 30)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *bytes = 7708;
          v21 = __rev16(port);
          v12 = *MEMORY[0x1E695E480];
          v13 = 28;
LABEL_21:
          v18 = CFDataCreate(v12, bytes, v13);
          NEFlowResetLocalEndpoint(a1[5], v18);
          if (v18)
          {
            CFRelease(v18);
          }

          goto LABEL_23;
        }

        if (v11 == 2)
        {
          LODWORD(v23) = 0;
          v22 = 0;
          *bytes = 528;
          v21 = __rev16(port);
          v12 = *MEMORY[0x1E695E480];
          v13 = 16;
          goto LABEL_21;
        }
      }
    }

LABEL_23:
    v19 = flow_open(a1[5]);
    v6 = a1[5];
    if (!v19)
    {
      flow_cancel_bridged_connection(v6, 0);
      v6 = a1[5];
    }

    goto LABEL_25;
  }

  flow_start_connection_waiting_timer(v6, *(a1[6] + 16));
  v17 = (a1[5] + 120);

  os_unfair_lock_unlock(v17);
}

void __flow_bridge_read_data_from_connection_group_block_invoke(uint64_t a1, const void *a2, NSObject *a3)
{
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v6 = *(a1 + 32);
  if ((*(v6 + 100) & 1) == 0 && *(v6 + 416))
  {
    os_unfair_lock_unlock((v6 + 120));
    if (!a2)
    {
      return;
    }

    if (a3)
    {
      v7 = *(a1 + 32);
      if (*(v7 + 432))
      {
        BytePtr = CFDataGetBytePtr(*(v7 + 48));
        a3 = 0;
LABEL_14:
        v10 = *(a1 + 32);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = __flow_bridge_read_data_from_connection_group_block_invoke_2;
        v11[3] = &__block_descriptor_tmp_205;
        v11[4] = v10;
        NEFlowWrite(v10, a2, &BytePtr->sa_len, v11);
        nw_release(a3);
        return;
      }

      v9 = nw_connection_group_copy_remote_endpoint_for_message(*(a1 + 40), a3);
      a3 = v9;
      if (v9 && nw_endpoint_get_type(v9) == nw_endpoint_type_address)
      {
        BytePtr = nw_endpoint_get_address(a3);
        goto LABEL_14;
      }
    }

    BytePtr = 0;
    goto LABEL_14;
  }

  os_unfair_lock_unlock((v6 + 120));
}

void __flow_setup_bridged_connection_block_invoke(void *a1, int a2, NSObject *a3)
{
  if (!*(*(a1[4] + 8) + 24))
  {
    return;
  }

  os_unfair_lock_lock((a1[5] + 120));
  v6 = a1[5];
  if (!*(v6 + 408))
  {
    os_unfair_lock_unlock((v6 + 120));
LABEL_21:
    v18 = *(a1[4] + 8);
    v19 = *(v18 + 24);
    if (v19)
    {
      CFRelease(v19);
      *(v18 + 24) = 0;
    }

    return;
  }

  if ((a2 - 4) >= 2)
  {
    if (a2 == 1)
    {
      flow_start_connection_waiting_timer(v6, *(a1[6] + 16));
    }

    else
    {
      if (a2 == 3)
      {
        v7 = nw_connection_copy_connected_local_endpoint();
        if (v7)
        {
          v8 = v7;
          if (nw_endpoint_get_type(v7) == nw_endpoint_type_address)
          {
            address = nw_endpoint_get_address(v8);
            v10 = CFDataCreate(*MEMORY[0x1E695E480], &address->sa_len, address->sa_len);
            NEFlowResetLocalEndpoint(a1[5], v10);
            if (v10)
            {
              CFRelease(v10);
            }
          }

          nw_release(v8);
        }

        v11 = nw_connection_copy_connected_path();
        if (v11)
        {
          v12 = v11;
          interface_index = nw_path_get_interface_index();
          if (interface_index)
          {
            v14 = a1[5];
            *(v14 + 400) = interface_index;
            flow_director_send_properties_update(*(v14 + 40), *(v14 + 24), interface_index, 0);
          }

          nw_release(v12);
        }

        v15 = flow_open(a1[5]);
        v16 = a1[5];
        if (v15)
        {
          flow_bridge_read_data_from_connection(v16);
        }

        else
        {
          flow_cancel_bridged_connection(v16, 0);
        }
      }

      flow_cancel_connection_waiting_timer(a1[5]);
    }

    v20 = (a1[5] + 120);

    os_unfair_lock_unlock(v20);
    return;
  }

  v17 = nw_error_copy_cf_error(a3);
  flow_cancel_bridged_connection(a1[5], v17);
  if (v17)
  {
    CFRelease(v17);
  }

  flow_cancel_connection_waiting_timer(a1[5]);
  os_unfair_lock_unlock((a1[5] + 120));
  if (a2 == 5)
  {
    goto LABEL_21;
  }
}

void __flow_startup_block_invoke_191(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 144);
  v3 = ne_log_obj();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(*(a1 + 40) + 24);
      *buf = 67109378;
      v15 = v11;
      v16 = 2080;
      v17 = "Delivering to client";
      _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "(%u): %s", buf, 0x12u);
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v9 + 144);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __flow_startup_block_invoke_193;
    v13[3] = &__block_descriptor_tmp_196;
    v13[4] = v9;
    v13[5] = v8;
    (*(v10 + 16))(v10, v8, v13, v5, v6, v7);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 40) + 24);
      *buf = 67109378;
      v15 = v12;
      v16 = 2080;
      v17 = "No new flow callback registered, dropping the flow";
      _os_log_error_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_ERROR, "(%u): %s", buf, 0x12u);
    }

    os_unfair_lock_lock((*(a1 + 40) + 120));
    flow_startup(*(a1 + 40), *(a1 + 32), 1);
    os_unfair_lock_unlock((*(a1 + 40) + 120));
    CFRelease(*(a1 + 40));
    dispatch_release(*(*(a1 + 32) + 16));
  }
}

void __flow_startup_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 72), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = *(v2 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEFlowDirectorHandleMatchRulesResult_block_invoke;
    block[3] = &__block_descriptor_tmp_116;
    v10 = v4;
    block[4] = v2;
    block[5] = 0;
    dispatch_async(v5, block);
  }

  dispatch_release(*(*(a1 + 32) + 16));
  CFRelease(*(a1 + 48));
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    CFRelease(v8);
  }
}

void __NEFlowDirectorHandleMatchRulesResult_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  node = rb_tree_find_node((*(a1 + 32) + 56), (a1 + 48));
  if (node)
  {
    v3 = node;
    os_unfair_lock_lock(node + 30);
    v4 = *(a1 + 40);
    if (!v4)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v3 + 24);
        v16[0] = 67109378;
        v16[1] = v11;
        v17 = 2080;
        v18 = "Failed validation, aborting";
        _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, "(%u): %s", v16, 0x12u);
      }

      goto LABEL_22;
    }

    *(v3 + 72) = CFRetain(v4);
    v5 = *(v3 + 368);
    if (v5)
    {
      if (CFStringCompare(v5, *(a1 + 40), 0) == kCFCompareEqualTo)
      {
        v12 = *(v3 + 80);
        if (v12)
        {
          CFRelease(v12);
        }

        *(v3 + 80) = *(v3 + 368);
        *(v3 + 368) = 0;
        v13 = *(v3 + 88);
        if (v13)
        {
          CFRelease(v13);
        }

        *(v3 + 88) = *(v3 + 376);
        *(v3 + 376) = 0;
        v14 = *(v3 + 360);
        if (v14)
        {
          CFRelease(v14);
        }

        v9 = (v3 + 384);
        *(v3 + 360) = *(v3 + 384);
        goto LABEL_20;
      }

      v6 = *(v3 + 368);
      if (v6)
      {
        CFRelease(v6);
        *(v3 + 368) = 0;
      }
    }

    v7 = *(v3 + 376);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 376) = 0;
    }

    v8 = *(v3 + 384);
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = (v3 + 384);
    CFRelease(v8);
LABEL_20:
    *v9 = 0;
LABEL_21:
    *(v3 + 100) |= 0x20u;
LABEL_22:
    flow_startup(v3, *(a1 + 32), (*(v3 + 100) & 0x20) == 0);
    os_unfair_lock_unlock((v3 + 120));
    v15 = *(a1 + 40);
    if (v15)
    {
      CFRelease(v15);
    }
  }
}

void __flow_startup_block_invoke_193(int8x16_t *a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  v3 = vextq_s8(a1[2], a1[2], 8uLL);
  v4 = *(a1[2].i64[0] + 16);
  block[2] = __flow_startup_block_invoke_2;
  block[3] = &__block_descriptor_tmp_194;
  v7 = a2;
  v6 = v3;
  dispatch_async(v4, block);
  dispatch_release(*(a1[2].i64[0] + 16));
}

void __flow_startup_block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    os_unfair_lock_lock((*(a1 + 32) + 120));
    flow_startup(*(a1 + 32), *(a1 + 40), 1);
    os_unfair_lock_unlock((*(a1 + 32) + 120));
  }

  v2 = *(a1 + 32);

  CFRelease(v2);
}

void flow_bridge_read_data_from_connection(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 120));
    if ((*(a1 + 100) & 1) == 0)
    {
      v2 = *(a1 + 408);
      if (v2)
      {
        v3 = CFRetain(a1);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __flow_bridge_read_data_from_connection_block_invoke;
        v5[3] = &__block_descriptor_tmp_213;
        v5[4] = a1;
        v5[5] = v3;
        nw_connection_receive(v2, 0, 0xFFFFFFFF, v5);
      }
    }
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v7 = "flow_bridge_read_data_from_connection";
      _os_log_fault_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_FAULT, "%s called with null flow", buf, 0xCu);
    }
  }
}

void flow_start_connection_waiting_timer(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 120));
  if (!*(a1 + 424) && (*(a1 + 408) || *(a1 + 416)))
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a2);
    v5 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __flow_start_connection_waiting_timer_block_invoke;
    handler[3] = &__block_descriptor_tmp_201;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v9[3] = CFRetain(a1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __flow_start_connection_waiting_timer_block_invoke_202;
    v8[3] = &unk_1E812AA88;
    v8[4] = v9;
    dispatch_source_set_cancel_handler(v4, v8);
    dispatch_activate(v4);
    *(a1 + 424) = v4;
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 24);
      *buf = 67109120;
      v12 = v7;
      _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, "(%u): Starting waiting timer", buf, 8u);
    }

    _Block_object_dispose(v9, 8);
  }
}

void __flow_start_connection_waiting_timer_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v2 = *(*(a1 + 32) + 424);
  v3 = ne_log_obj();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = *(*(a1 + 32) + 24);
      v7 = 67109120;
      v8 = v5;
      _os_log_debug_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEBUG, "(%u): Waiting timer fired, cancelling flow", &v7, 8u);
    }

    flow_cancel_bridged_connection(*(a1 + 32), 0);
  }

  else if (v4)
  {
    v6 = *(*(a1 + 32) + 24);
    v7 = 67109120;
    v8 = v6;
    _os_log_debug_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEBUG, "(%u): Waiting timer fired, ignoring stale event", &v7, 8u);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 120));
}

void __flow_start_connection_waiting_timer_block_invoke_202(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 24) = 0;
  }
}

void __flow_bridge_read_data_from_connection_block_invoke(uint64_t a1, const void *a2, int a3, char a4, nw_error_t error)
{
  if (a2)
  {
    v9 = *(a1 + 32);
    if (*(v9 + 16) == 2)
    {
      if (!*(v9 + 432))
      {
        v15 = nw_connection_copy_endpoint(*(v9 + 408));
        v11 = v15;
        if (v15 && nw_endpoint_get_type(v15) == nw_endpoint_type_address)
        {
          address = nw_endpoint_get_address(v11);
        }

        else
        {
          address = 0;
        }

        goto LABEL_7;
      }

      address = CFDataGetBytePtr(*(v9 + 48));
    }

    else
    {
      address = 0;
    }

    v11 = 0;
LABEL_7:
    v12 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __flow_bridge_read_data_from_connection_block_invoke_2;
    v16[3] = &__block_descriptor_tmp_211;
    v16[4] = v12;
    NEFlowWrite(v12, a2, &address->sa_len, v16);
    nw_release(v11);
  }

  v13 = *(a1 + 32);
  if (*(v13 + 16) == 1)
  {
    if (!error && (a4 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (!error)
    {
      flow_close(v13, 0, 0);
      goto LABEL_16;
    }
  }

  else if (!error)
  {
    goto LABEL_16;
  }

  v14 = nw_error_copy_cf_error(error);
  flow_close(*(a1 + 32), v14, 0);
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_16:
  CFRelease(*(a1 + 40));
}

void __flow_bridge_read_data_from_connection_block_invoke_2(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v4 = *(a1 + 32);
  if (a2)
  {
    flow_cancel_bridged_connection(v4, 0);
  }

  else
  {
    flow_bridge_read_data_from_connection(v4);
  }

  v5 = (*(a1 + 32) + 120);

  os_unfair_lock_unlock(v5);
}

void __flow_bridge_read_data_from_connection_group_block_invoke_2(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 120));
  if (a2)
  {
    flow_cancel_bridged_connection(*(a1 + 32), 0);
  }

  v4 = (*(a1 + 32) + 120);

  os_unfair_lock_unlock(v4);
}

void flow_director_deallocate(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 67109378;
    v3[1] = dword_1EBE73118;
    v4 = 2080;
    v5 = "Deallocated flow director";
    _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "(%u): %s", v3, 0x12u);
  }

  CFAllocatorDeallocate(*MEMORY[0x1E695E480], a1);
}

uint64_t flow_divert_compare_id(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = bswap32(*(a2 + 24));
  v4 = bswap32(*a3);
  v5 = v3 >= v4;
  v6 = v3 > v4;
  v7 = !v5;
  return (v6 - v7);
}

uint64_t flow_divert_compare_flows(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = bswap32(*(a2 + 24));
  v4 = bswap32(*(a3 + 24));
  v5 = v3 >= v4;
  v6 = v3 > v4;
  v7 = !v5;
  return (v6 - v7);
}

double __NEFlowDirectorCreateInternal_block_invoke()
{
  qword_1EBE732B0 = 0;
  result = 0.0;
  xmmword_1EBE73290 = 0u;
  unk_1EBE732A0 = 0u;
  xmmword_1EBE73270 = 0u;
  unk_1EBE73280 = 0u;
  xmmword_1EBE73250 = 0u;
  unk_1EBE73260 = 0u;
  xmmword_1EBE73230 = 0u;
  unk_1EBE73240 = 0u;
  xmmword_1EBE73210 = 0u;
  unk_1EBE73220 = 0u;
  xmmword_1EBE731F0 = 0u;
  unk_1EBE73200 = 0u;
  xmmword_1EBE731D0 = 0u;
  unk_1EBE731E0 = 0u;
  xmmword_1EBE731B0 = 0u;
  unk_1EBE731C0 = 0u;
  xmmword_1EBE73190 = 0u;
  unk_1EBE731A0 = 0u;
  xmmword_1EBE73170 = 0u;
  unk_1EBE73180 = 0u;
  xmmword_1EBE73150 = 0u;
  unk_1EBE73160 = 0u;
  xmmword_1EBE73130 = 0u;
  unk_1EBE73140 = 0u;
  unk_1EBE73110 = 0u;
  unk_1EBE73120 = 0u;
  nil_flow = 0u;
  byte_1EBE7316C = 5;
  return result;
}

uint64_t NEFlowDirectorCreateBridge(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a1;
    Internal = NEFlowDirectorCreateInternal(a1, 0, a2);
    if (Internal)
    {
      arc4random_buf(__buf, 0x100uLL);
      if (nelog_is_debug_logging_enabled())
      {
        v4 = 7;
      }

      else
      {
        v4 = 5;
      }

      v5 = *MEMORY[0x1E695E480];
      v6 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 284, 0x10000404A09149ALL, 0);
      *v6 = 6;
      *(v6 + 1) = 0;
      v6[8] = 17;
      *(v6 + 9) = 0x10000;
      v7 = __buf[2];
      v8 = __buf[3];
      v9 = __buf[1];
      *(v6 + 13) = __buf[0];
      *(v6 + 61) = v8;
      *(v6 + 45) = v7;
      *(v6 + 29) = v9;
      v10 = __buf[6];
      v11 = __buf[7];
      v12 = __buf[5];
      *(v6 + 77) = __buf[4];
      *(v6 + 125) = v11;
      *(v6 + 109) = v10;
      *(v6 + 93) = v12;
      v13 = __buf[10];
      v14 = __buf[11];
      v15 = __buf[9];
      *(v6 + 141) = __buf[8];
      *(v6 + 189) = v14;
      *(v6 + 173) = v13;
      *(v6 + 157) = v15;
      v16 = __buf[14];
      v17 = __buf[15];
      v18 = __buf[13];
      *(v6 + 205) = __buf[12];
      *(v6 + 253) = v17;
      *(v6 + 237) = v16;
      *(v6 + 221) = v18;
      v6[269] = 20;
      *(v6 + 270) = 0x1000000;
      v6[274] = v4;
      v6[275] = 29;
      *(v6 + 276) = 0x104000000;
      v19 = send(v2, v6, 0x11CuLL, 0);
      CFAllocatorDeallocate(v5, v6);
      if (v19 < 0)
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v22 = __error();
          v23 = strerror(*v22);
          v25 = 136315138;
          v26 = v23;
          _os_log_error_impl(&dword_1C0DA5000, v20, OS_LOG_TYPE_ERROR, "Failed to send the FLOW_DIVERT_PKT_GROUP_INIT message: %s", &v25, 0xCu);
        }
      }
    }
  }

  else
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      LODWORD(__buf[0]) = 136315138;
      *(__buf + 4) = "NEFlowDirectorCreateBridge";
      _os_log_fault_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_FAULT, "%s called with null context", __buf, 0xCu);
    }

    return 0;
  }

  return Internal;
}

void NEFlowDirectorAllowProcessDelegation(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 121) = 1;
  }

  else
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      v2 = 136315138;
      v3 = "NEFlowDirectorAllowProcessDelegation";
      _os_log_fault_impl(&dword_1C0DA5000, v1, OS_LOG_TYPE_FAULT, "%s called with null director", &v2, 0xCu);
    }
  }
}

void NEFlowDirectorRedirectDNSToLoopback(uint64_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 122) = a2;
  }

  else
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = 136315138;
      v4 = "NEFlowDirectorRedirectDNSToLoopback";
      _os_log_fault_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_FAULT, "%s called with null director", &v3, 0xCu);
    }
  }
}

void NEFlowDirectorStart(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEFlowDirectorStart_block_invoke;
    block[3] = &__block_descriptor_tmp_108;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void __NEFlowDirectorStart_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    flow_director_ctl_source_do_read(v2);
    v3 = *(*(a1 + 32) + 24);

    dispatch_resume(v3);
  }
}

void NEFlowDirectorDestroy(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v7 = dword_1EBE73118;
    v8 = 2080;
    v9 = "Destroying flow director";
    _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "(%u): %s", buf, 0x12u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEFlowDirectorDestroy_block_invoke;
  v5[3] = &unk_1E812A650;
  v5[4] = a2;
  v5[5] = a1;
  flow_director_abort(a1, v5);
}

void __NEFlowDirectorDestroy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[16];
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 40);
  }

  v4 = v2[17];
  if (v4)
  {
    _Block_release(v4);
    v2 = *(a1 + 40);
  }

  v5 = v2[18];
  if (v5)
  {
    _Block_release(v5);
    v2 = *(a1 + 40);
  }

  v6 = v2[19];
  if (v6)
  {
    _Block_release(v6);
    v2 = *(a1 + 40);
  }

  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  v7 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    goto LABEL_14;
  }

  v8 = *(v7 + 8);
  if (v8)
  {
    dispatch_retain(*(v7 + 8));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEFlowDirectorDestroy_block_invoke_2;
    block[3] = &unk_1E812A600;
    block[4] = *(a1 + 32);
    block[5] = v8;
    dispatch_async(v8, block);
    v7 = *(a1 + 40);
  }

  if (*v7)
  {
    nw_queue_context_async_if_needed();
    v7 = *(a1 + 40);
LABEL_14:
    if (*v7)
    {
      nw_release(*v7);
      **(a1 + 40) = 0;
      v7 = *(a1 + 40);
    }
  }

  v9 = *(v7 + 8);
  if (v9)
  {
    dispatch_release(v9);
    *(*(a1 + 40) + 8) = 0;
    v7 = *(a1 + 40);
  }

  v10 = *(v7 + 16);
  if (v10)
  {
    dispatch_release(v10);
    *(*(a1 + 40) + 16) = 0;
  }
}

void __NEFlowDirectorDestroy_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void NEFlowDirectorHandleNewControlSocket(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __NEFlowDirectorHandleNewControlSocket_block_invoke;
  v3[3] = &__block_descriptor_tmp_114;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

os_unfair_lock_s *__NEFlowDirectorHandleNewControlSocket_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 40))
  {
    __assert_rtn("NEFlowDirectorHandleNewControlSocket_block_invoke", "NEFlow.c", 3876, "director->data_source == NULL");
  }

  v3 = *(a1 + 40);
  if ((v3 & 0x80000000) == 0)
  {
    v20 = 0x100000;
    if (setsockopt(v3, 0xFFFF, 4097, &v20, 4u))
    {
      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v17 = dword_1EBE73118;
      v18 = __error();
      v19 = strerror(*v18);
      *&v22[0].sa_len = 67109378;
      *&v22[0].sa_data[2] = v17;
      *&v22[0].sa_data[6] = 2080;
      *&v22[0].sa_data[8] = v19;
      v16 = "(%u): Failed to set SO_SNDBUF on the data control socket: %s";
    }

    else
    {
      v8 = *(a1 + 40);
      v21 = 32;
      memset(v22, 0, sizeof(v22));
      v9 = getpeername(v8, v22, &v21);
      v10 = *&v22[0].sa_data[6];
      if (v9)
      {
        v10 = 0;
      }

      v11 = *(a1 + 32);
      *(v11 + 48) = v10;
      if (v10)
      {
        *(*(a1 + 32) + 40) = flow_director_create_io_handler(v11, *(a1 + 40));
        v12 = *(*(a1 + 32) + 40);
        if (v12)
        {
          dispatch_resume(v12);
        }

        goto LABEL_6;
      }

      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        close(*(a1 + 40));
LABEL_6:
        v1 = *(a1 + 32);
        goto LABEL_7;
      }

      v13 = dword_1EBE73118;
      v14 = __error();
      v15 = strerror(*v14);
      *&v22[0].sa_len = 67109378;
      *&v22[0].sa_data[2] = v13;
      *&v22[0].sa_data[6] = 2080;
      *&v22[0].sa_data[8] = v15;
      v16 = "(%u): getpeername failed on the data control socket: %s";
    }

    _os_log_error_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_ERROR, v16, &v22[0].sa_len, 0x12u);
    goto LABEL_5;
  }

LABEL_7:
  result = rb_tree_iterate((v1 + 56), 0, 1u);
  if (result)
  {
    v6 = result;
    do
    {
      os_unfair_lock_lock(v6 + 30);
      os_unfair_lock_opaque = v6[25]._os_unfair_lock_opaque;
      if ((os_unfair_lock_opaque & 8) != 0)
      {
        v6[25]._os_unfair_lock_opaque = os_unfair_lock_opaque & 0xFFFFFFF7;
        flow_startup(v6, *(a1 + 32), *(*(a1 + 32) + 40) == 0);
      }

      os_unfair_lock_unlock(v6 + 30);
      result = rb_tree_iterate((*(a1 + 32) + 56), v6, 1u);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void NEFlowDirectorHandleMatchRulesResult(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEFlowDirectorHandleMatchRulesResult_block_invoke;
  block[3] = &__block_descriptor_tmp_116;
  v8 = a2;
  block[4] = a1;
  block[5] = cf;
  dispatch_async(v6, block);
}

void NEFlowDirectorSetDelegateInterface(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __NEFlowDirectorSetDelegateInterface_block_invoke;
  v3[3] = &__block_descriptor_tmp_117;
  v4 = a2;
  v3[4] = a1;
  dispatch_async(v2, v3);
}

char *__NEFlowDirectorSetDelegateInterface_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = if_indextoname(*(a1 + 40), v3);
  if (result)
  {
    return flow_director_reset_default_interface_info(*(a1 + 32), v3);
  }

  return result;
}

void NEFlowDirectorSetOpenControlSocketCallback(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEFlowDirectorSetOpenControlSocketCallback_block_invoke;
  v5[3] = &unk_1E812A6D8;
  v5[4] = v3;
  v5[5] = a1;
  dispatch_async(v4, v5);
}

void __NEFlowDirectorSetOpenControlSocketCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 128);
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 128) = *(a1 + 32);
}

void NEFlowDirectorSetMatchRulesCallback(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEFlowDirectorSetMatchRulesCallback_block_invoke;
  v5[3] = &unk_1E812A700;
  v5[4] = v3;
  v5[5] = a1;
  dispatch_async(v4, v5);
}

void __NEFlowDirectorSetMatchRulesCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 136);
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 136) = *(a1 + 32);
}

void NEFlowDirectorSetNewFlowCallback(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEFlowDirectorSetNewFlowCallback_block_invoke;
  v5[3] = &unk_1E812A728;
  v5[4] = v3;
  v5[5] = a1;
  dispatch_async(v4, v5);
}

void __NEFlowDirectorSetNewFlowCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 144);
  if (v3)
  {
    _Block_release(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 144) = *(a1 + 32);
}

void NEFlowDirectorFetchFlowStates(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
    v4 = *(a1 + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __NEFlowDirectorFetchFlowStates_block_invoke;
    v5[3] = &unk_1E812A750;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_async(v4, v5);
  }
}

void __NEFlowDirectorFetchFlowStates_block_invoke(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (*(v3 + 152))
  {

    _Block_release(v2);
  }

  else
  {
    *(v3 + 152) = v2;
    v5 = *MEMORY[0x1E695E480];
    v6 = MEMORY[0x1C68E54B0](*MEMORY[0x1E695E480], 8, 0x10000404A09149ALL, 0);
    *v6 = 10;
    v6[1] = 0;
    flow_director_msg_send(*(a1 + 40), v6, 8uLL, 1);

    CFAllocatorDeallocate(v5, v6);
  }
}

uint64_t NEPunyCodeString(const char *a1, int32_t a2, char *a3, int32_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  pErrorCode = U_ZERO_ERROR;
  v13 = xmmword_1C0DDA9E0;
  v8 = MEMORY[0x1C68E69D0](34, &pErrorCode);
  v9 = uidna_nameToASCII_UTF8(v8, a1, a2, a3, a4, &v13, &pErrorCode);
  uidna_close(v8);
  if (pErrorCode)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = a1;
      v17 = 1024;
      errors = pErrorCode;
      v11 = "Failed to punycode label - uidna_nameToASCII_UTF8(%s) failed errorCode %d";
LABEL_9:
      _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
      return 0;
    }

    return 0;
  }

  if (v13.errors)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = a1;
      v17 = 1024;
      errors = v13.errors;
      v11 = "Failed to punycode label - uidna_nameToASCII_UTF8(%s) failed info.errors 0x%08X";
      goto LABEL_9;
    }

    return 0;
  }

  return v9;
}

BOOL NEHelperTrackerAppInfoSetSigningIdentifier(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *a1 = a2;
    a1[8] = a3;
  }

  return a1 != 0;
}

BOOL NEHelperTrackerAppInfoSetPID(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    *(a1 + 56) = a2;
    *(a1 + 120) = a3;
  }

  return a1 != 0;
}

BOOL NEHelperTrackerAppInfoSetIsBrowser(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 124) |= 1u;
  }

  return a1 != 0;
}

uint64_t NEHelperTrackerAppInfoIsBrowser(uint64_t result)
{
  if (result)
  {
    return *(result + 124) & 1;
  }

  return result;
}

uint64_t NEHelperTrackerGetAppUUID(uint64_t result, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (uuid_is_null((result + 40)))
    {
      v4 = *(v3 + 56);
      if (!v4 || (v11 = 0, v9 = 0u, v10 = 0u, v8 = 0u, proc_pidinfo(v4, 17, 1uLL, &v8, 56) != 56))
      {
        v5 = *(v3 + 28);
        if (!v5 || (v11 = 0, v9 = 0u, v10 = 0u, v8 = 0u, proc_pidinfo(v5, 17, 1uLL, &v8, 56) != 56))
        {
          if (!uuid_is_null((v3 + 104)))
          {
            v7 = (v3 + 104);
            goto LABEL_15;
          }

          v6 = *(v3 + 120);
          if (!v6 || (v11 = 0, v9 = 0u, v10 = 0u, v8 = 0u, proc_pidinfo(v6, 17, 1uLL, &v8, 56) != 56))
          {
            result = *(v3 + 92);
            if (!result)
            {
              return result;
            }

            v11 = 0;
            v9 = 0u;
            v10 = 0u;
            v8 = 0u;
            if (proc_pidinfo(result, 17, 1uLL, &v8, 56) != 56)
            {
              return 0;
            }
          }
        }
      }

      v7 = &v8;
    }

    else
    {
      v7 = (v3 + 40);
    }

LABEL_15:
    uuid_copy(a2, v7);
    return 1;
  }

  return result;
}

void NETrackerInsertTCCCache(char *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *key = 0u;
  v10 = 0u;
  NETrackerGenerateTCCCacheKey(a1, key, 0x80uLL);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  os_unfair_lock_lock(&g_tcc_cache_lock);
  v4 = MEMORY[0x1E69E9E80];
  if (g_tcc_cache && MEMORY[0x1C68E6D80]() == v4)
  {
    if (!g_tcc_cache)
    {
      goto LABEL_12;
    }
  }

  else
  {
    g_tcc_cache = xpc_dictionary_create(0, 0, 0);
    if (!g_tcc_cache)
    {
      goto LABEL_12;
    }
  }

  if (MEMORY[0x1C68E6D80]() == v4 && !xpc_dictionary_get_int64(g_tcc_cache, key))
  {
    xpc_dictionary_set_int64(g_tcc_cache, key, v3);
  }

LABEL_12:
  os_unfair_lock_unlock(&g_tcc_cache_lock);
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2080;
    v8 = key;
    _os_log_debug_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_DEBUG, "NETrackerInsertTCCCache(): (%d) for bundle: (%s)", v6, 0x12u);
  }
}

unsigned int *NEHelperTrackerAppInfoGetPID(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    result = result[14];
    if (!result)
    {
      result = v1[7];
      if (!result)
      {
        result = v1[30];
        if (!result)
        {
          return v1[23];
        }
      }
    }
  }

  return result;
}

unint64_t NEHelperTrackerContextGetDomain(unint64_t a1)
{
  domain = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v2 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v2 && (qword_1ED4D46F0 <= domain ? (v3 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= domain) : (v3 = 0), v3))
    {
      domain = ne_tracker_context_get_domain();
    }

    else
    {
      domain = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return domain;
}

unint64_t NEHelperTrackerContextGetDomainOwner(unint64_t a1)
{
  domain_owner = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v2 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v2 && (qword_1ED4D46F0 <= domain_owner ? (v3 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= domain_owner) : (v3 = 0), v3))
    {
      domain_owner = ne_tracker_context_get_domain_owner();
    }

    else
    {
      domain_owner = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return domain_owner;
}

unint64_t NEHelperTrackerContextCanBlockRequest(unint64_t a1)
{
  can_block_request = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v2 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v2 && (qword_1ED4D46F0 <= can_block_request ? (v3 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= can_block_request) : (v3 = 0), v3))
    {
      can_block_request = ne_tracker_context_can_block_request();
    }

    else
    {
      can_block_request = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return can_block_request;
}

char *NEHelperTrackerContextCopyDomain(char *a1, char *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v8 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v8 && (qword_1ED4D46F0 <= v4 ? (v9 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= v4) : (v9 = 0), v9 && (domain = ne_tracker_context_get_domain()) != 0))
    {
      v11 = domain;
      v12 = strlen(domain);
      v13 = v12;
      v4 = 0;
      if (a2 && v12 <= a3 - 1)
      {
        strncpy(a2, v11, v12);
        a2[v13] = 0;
        v4 = a2;
      }

      if (a4)
      {
        *a4 = v13;
      }
    }

    else
    {
      v4 = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return v4;
}

char *NEHelperTrackerContextCopyDomainOwner(char *a1, char *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v8 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v8 && (qword_1ED4D46F0 <= v4 ? (v9 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= v4) : (v9 = 0), v9 && (domain_owner = ne_tracker_context_get_domain_owner()) != 0))
    {
      v11 = domain_owner;
      v12 = strlen(domain_owner);
      v13 = v12;
      v4 = 0;
      if (a2 && v12 <= a3 - 1)
      {
        strncpy(a2, v11, v12);
        a2[v13] = 0;
        v4 = a2;
      }

      if (a4)
      {
        *a4 = v13;
      }
    }

    else
    {
      v4 = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return v4;
}

CFStringRef NEHelperTrackerContextDupDomain(const __CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v2 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v2 && (qword_1ED4D46F0 <= v1 ? (v3 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= v1) : (v3 = 0), v3 && (domain = ne_tracker_context_get_domain()) != 0))
    {
      v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], domain, 0x8000100u);
    }

    else
    {
      v1 = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return v1;
}

CFStringRef NEHelperTrackerContextDupDomainOwner(const __CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    os_unfair_lock_lock(&ne_helper_tracker_lock);
    v2 = ne_helper_tracker_trie == 0x5061747269636961 && unk_1ED4D46D8 == 2;
    if (v2 && (qword_1ED4D46F0 <= v1 ? (v3 = qword_1ED4D46F0 + word_1ED4D4704 - 1 >= v1) : (v3 = 0), v3 && (domain_owner = ne_tracker_context_get_domain_owner()) != 0))
    {
      v1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], domain_owner, 0x8000100u);
    }

    else
    {
      v1 = 0;
    }

    os_unfair_lock_unlock(&ne_helper_tracker_lock);
  }

  return v1;
}

void NEHelperTrackerProcessMatch(const char *is_null, uint64_t a2, uint64_t a3, _BYTE *a4, int a5)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    buffer = 0u;
    v62 = 0u;
    if (*a4)
    {
      v10 = 0;
      goto LABEL_43;
    }

    v10 = 0;
    goto LABEL_42;
  }

  v10 = *(a3 + 56);
  if (v10 || (v10 = *(a3 + 28)) != 0 || (v10 = *(a3 + 120)) != 0)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    buffer = 0u;
    v62 = 0u;
LABEL_6:
    proc_name(v10, &buffer, 0x100u);
    goto LABEL_7;
  }

  v10 = *(a3 + 92);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  buffer = 0u;
  v62 = 0u;
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (*a4)
  {
    goto LABEL_43;
  }

  v11 = *(a3 + 56);
  if (!v11)
  {
    v11 = *(a3 + 28);
  }

  v12 = *a3;
  if (!*a3)
  {
    if (v11)
    {
      v16 = NECopySigningIdentifierForPIDwithAuditToken(v11, 0);
      if (!v16)
      {
        goto LABEL_42;
      }

      v17 = v16;
      v12 = NEHelperTrackerDomainIsApproved_buffer;
      CFStringGetCString(v16, NEHelperTrackerDomainIsApproved_buffer, 254, 0x600u);
      CFRelease(v17);
    }

    else
    {
      *uu = 0;
      v78 = 0;
      NEHelperTrackerGetAppUUID(a3, uu);
      if (uuid_is_null(uu))
      {
        goto LABEL_42;
      }

      v18 = NEHelperCacheCopySigningIdentifierMapping();
      if (!v18)
      {
        goto LABEL_42;
      }

      v19 = v18;
      xpc_string_get_string_ptr(v18);
      v12 = NEHelperTrackerDomainIsApproved_buffer;
      __strlcpy_chk();
      xpc_release(v19);
    }
  }

  if (ne_helper_skip_associated_domain_bundles && xpc_dictionary_get_BOOL(ne_helper_skip_associated_domain_bundles, v12))
  {
    goto LABEL_42;
  }

  if (!ne_helper_last_approved_bundle || (v13 = ne_helper_last_approved_associated_domains) == 0 || strcmp(ne_helper_last_approved_bundle, v12))
  {
    v14 = ne_tracker_lookup_app_domains();
    if (!v14)
    {
      goto LABEL_42;
    }

    v13 = v14;
    if (!xpc_array_get_count(v14))
    {
      v20 = ne_helper_skip_associated_domain_bundles;
      if (!ne_helper_skip_associated_domain_bundles)
      {
        v20 = xpc_dictionary_create(0, 0, 0);
        ne_helper_skip_associated_domain_bundles = v20;
      }

      if (xpc_dictionary_get_count(v20) <= 0x7F)
      {
        xpc_dictionary_set_BOOL(ne_helper_skip_associated_domain_bundles, v12, 1);
      }

      xpc_release(v13);
      goto LABEL_42;
    }

    if (ne_helper_last_approved_bundle)
    {
      free(ne_helper_last_approved_bundle);
      ne_helper_last_approved_bundle = 0;
    }

    if (ne_helper_last_approved_associated_domains)
    {
      xpc_release(ne_helper_last_approved_associated_domains);
    }

    ne_helper_last_approved_bundle = strdup(v12);
    ne_helper_last_approved_associated_domains = v13;
  }

  *uu = 0;
  v78 = uu;
  v79 = 0x2000000000;
  v80 = 0;
  *applier = MEMORY[0x1E69E9820];
  *&applier[8] = 0x40000000;
  *&applier[16] = __NEHelperTrackerDomainIsApproved_block_invoke;
  *&applier[24] = &unk_1E812ABE8;
  *&applier[32] = uu;
  *&applier[40] = is_null;
  xpc_array_apply(v13, applier);
  v15 = v78[24];
  _Block_object_dispose(uu, 8);
  if ((v15 & 1) == 0)
  {
LABEL_42:
    *a4 = 1;
  }

LABEL_43:
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = ", approved domain";
    if (*a4)
    {
      v22 = "";
    }

    v23 = "App";
    if (a3 && (*(a3 + 124) & 1) != 0)
    {
      v23 = "Web";
    }

    *applier = 136316162;
    *&applier[4] = "NEHelperTrackerProcessMatch";
    *&applier[12] = 1024;
    *&applier[14] = v10;
    *&applier[18] = 2080;
    *&applier[20] = &buffer;
    *&applier[28] = 2080;
    *&applier[30] = v22;
    *&applier[38] = 2080;
    *&applier[40] = v23;
    _os_log_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_DEFAULT, "%s: domain lookup - found match for tracker domain (pid %d %s)%s for %s", applier, 0x30u);
  }

  v24 = ne_log_obj();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  if (a5)
  {
    if (v25)
    {
      v26 = strlen(is_null);
      if (a2)
      {
        domain = ne_tracker_context_get_domain();
        v29 = strlen(domain);
        v27 = ne_tracker_context_get_domain();
        domain_owner = ne_tracker_context_get_domain_owner();
        v28 = strlen(domain_owner);
        v30 = ne_tracker_context_get_domain_owner();
      }

      else
      {
        v27 = "null";
        v28 = 4;
        v29 = 4;
        v30 = "null";
      }

      if (a3)
      {
        v38 = *(a3 + 56);
        if (!v38)
        {
          v38 = *(a3 + 28);
          if (!v38)
          {
            v38 = *(a3 + 120);
            if (!v38)
            {
              v38 = *(a3 + 92);
            }
          }
        }

        v39 = ", approved domain";
        if (*a4)
        {
          v39 = "";
        }

        if (*(a3 + 124))
        {
          v40 = "Web";
        }

        else
        {
          v40 = "App";
        }
      }

      else
      {
        v38 = 0;
        if (*a4)
        {
          v39 = "";
        }

        else
        {
          v39 = ", approved domain";
        }

        v40 = "App";
      }

      *applier = 136318723;
      *&applier[4] = "NEHelperTrackerProcessMatch";
      *&applier[12] = 2160;
      *&applier[14] = 1752392040;
      *&applier[22] = 1040;
      *&applier[24] = v26;
      *&applier[28] = 2101;
      *&applier[30] = is_null;
      *&applier[38] = 2160;
      *&applier[40] = 1752392040;
      *&applier[48] = 1040;
      LODWORD(v50) = v29;
      WORD2(v50) = 2101;
      *(&v50 + 6) = v27;
      HIWORD(v50) = 2160;
      v51 = 1752392040;
      LOWORD(v52) = 1040;
      *(&v52 + 2) = v28;
      HIWORD(v52) = 2101;
      *v53 = v30;
      *&v53[8] = 1024;
      *v54 = a3;
      *&v54[4] = 1024;
      *&v54[6] = v38;
      v55 = 2080;
      p_buffer = &buffer;
      v57 = 2080;
      v58 = v39;
      v59 = 2080;
      v60 = v40;
      v46 = "%s: domain lookup - found match for tracker%{sensitive, mask.hash, networkextension:string}.*P --> metadata %{sensitive, mask.hash, networkextension:string}.*P %{sensitive, mask.hash, networkextension:string}.*P (app info ref %X pid %d %s) %s - %s";
      v47 = v24;
      v48 = 132;
LABEL_90:
      _os_log_debug_impl(&dword_1C0DA5000, v47, OS_LOG_TYPE_DEBUG, v46, applier, v48);
    }
  }

  else if (v25)
  {
    v31 = strlen(is_null);
    if (a2)
    {
      v41 = ne_tracker_context_get_domain();
      v34 = strlen(v41);
      v32 = ne_tracker_context_get_domain();
      v42 = ne_tracker_context_get_domain_owner();
      v33 = strlen(v42);
      v35 = ne_tracker_context_get_domain_owner();
    }

    else
    {
      v32 = "null";
      v33 = 4;
      v34 = 4;
      v35 = "null";
    }

    if (a3)
    {
      v43 = *(a3 + 56);
      if (!v43)
      {
        v43 = *(a3 + 28);
        if (!v43)
        {
          v43 = *(a3 + 120);
          if (!v43)
          {
            v43 = *(a3 + 92);
          }
        }
      }

      v44 = ", approved domain";
      if (*a4)
      {
        v44 = "";
      }

      if (*(a3 + 124))
      {
        v45 = "Web";
      }

      else
      {
        v45 = "App";
      }
    }

    else
    {
      v43 = 0;
      if (*a4)
      {
        v44 = "";
      }

      else
      {
        v44 = ", approved domain";
      }

      v45 = "App";
    }

    *applier = 136317955;
    *&applier[4] = "NEHelperTrackerProcessMatch";
    *&applier[12] = 1024;
    *&applier[14] = v31;
    *&applier[18] = 2081;
    *&applier[20] = is_null;
    *&applier[28] = 1024;
    *&applier[30] = v34;
    *&applier[34] = 2081;
    *&applier[36] = v32;
    *&applier[44] = 1024;
    *&applier[46] = v33;
    LOWORD(v50) = 2081;
    *(&v50 + 2) = v35;
    WORD5(v50) = 1024;
    HIDWORD(v50) = a3;
    LOWORD(v51) = 1024;
    *(&v51 + 2) = v43;
    HIWORD(v51) = 2080;
    v52 = &buffer;
    *v53 = 2080;
    *&v53[2] = v44;
    *v54 = 2080;
    *&v54[2] = v45;
    v46 = "%s: domain lookup - found match for tracker<%d : %{private}s> --> metadata <%d : %{private}s> <%d : %{private}s> (app info ref %X pid %d %s) %s - %s";
    v47 = v24;
    v48 = 102;
    goto LABEL_90;
  }
}