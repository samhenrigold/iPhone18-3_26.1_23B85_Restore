int64_t NEHelperSettingsRemove(const char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!a1 || !*a1)
  {
    return 22;
  }

  v3 = v2;
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v4 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = a1;
    _os_log_impl(&dword_1A90C6000, v4, OS_LOG_TYPE_DEFAULT, "Removing %s", &v10, 0xCu);
  }

  xpc_dictionary_set_uint64(v3, "delegate-class-id", 2uLL);
  xpc_dictionary_set_string(v3, "setting-name", a1);
  xpc_dictionary_set_int64(v3, "setting-type", 4);
  v5 = NEHelperCopyResponse(v3);
  v6 = v5;
  if (v5 && MEMORY[0x1AC5803D0](v5) == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(v6, "result-code");
    if (!int64)
    {
      goto LABEL_14;
    }
  }

  else
  {
    int64 = 22;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v8 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    v10 = 67109120;
    LODWORD(v11) = int64;
    _os_log_error_impl(&dword_1A90C6000, v8, OS_LOG_TYPE_ERROR, "NEHelperSettingsRemove failed with error: %d", &v10, 8u);
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v6)
  {
LABEL_14:
    xpc_release(v6);
  }

LABEL_15:
  xpc_release(v3);
  return int64;
}

int64_t NEHelperCacheSetRoutes(const char *a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v4, "cache-command", 2uLL);
  xpc_dictionary_set_string(v4, "cache-service", a1);
  xpc_dictionary_set_value(v4, "cache-routes", a2);
  v5 = NEHelperCopyResponse(v4);
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v6, "result-code");
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v6);
  }

  else
  {
    int64 = 22;
  }

  xpc_release(v4);
  return int64;
}

int64_t NEHelperCacheSetMatchDomains(const char *a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v4, "cache-command", 9uLL);
  xpc_dictionary_set_string(v4, "cache-service", a1);
  xpc_dictionary_set_value(v4, "cache-match-domains", a2);
  v5 = NEHelperCopyResponse(v4);
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v6, "result-code");
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v6);
  }

  else
  {
    int64 = 22;
  }

  xpc_release(v4);
  return int64;
}

int64_t NEHelperCacheSetDomainDictionaries(const char *a1, const char *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "delegate-class-id", 1uLL);
    xpc_dictionary_set_uint64(v6, "cache-command", 4uLL);
    xpc_dictionary_set_string(v6, "cache-service", a1);
    xpc_dictionary_set_value(v6, "cache-domain-dictionaries", a3);
    xpc_dictionary_set_string(v6, "cache-interface-name", a2);
    v7 = NEHelperCopyResponse(v6);
    if (v7)
    {
      v8 = v7;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v8, "result-code");
      }

      else
      {
        int64 = 22;
      }

      xpc_release(v8);
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v6);
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = a1;
      _os_log_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_INFO, "missing interface name, set domain dictionaries failed for %s", &v12, 0xCu);
    }

    return 22;
  }

  return int64;
}

int64_t NEHelperCacheAddRedirectedAddress(const char *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
    xpc_dictionary_set_uint64(v4, "cache-command", 5uLL);
    xpc_dictionary_set_data(v4, "cache-redirected-address", a2, *a2);
    xpc_dictionary_set_string(v4, "cache-interface-name", a1);
    v5 = NEHelperCopyResponse(v4);
    if (v5)
    {
      v6 = v5;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v6, "result-code");
      }

      else
      {
        int64 = 22;
      }

      xpc_release(v6);
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v4);
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v8 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A90C6000, v8, OS_LOG_TYPE_INFO, "missing interface name, add redirected address failed", v10, 2u);
    }

    return 22;
  }

  return int64;
}

int64_t NEHelperCacheClearRedirectedAddresses(const char *a1)
{
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, "delegate-class-id", 1uLL);
    xpc_dictionary_set_uint64(v2, "cache-command", 7uLL);
    xpc_dictionary_set_string(v2, "cache-interface-name", a1);
    v3 = NEHelperCopyResponse(v2);
    if (v3)
    {
      v4 = v3;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v4, "result-code");
      }

      else
      {
        int64 = 22;
      }

      xpc_release(v4);
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v2);
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v6 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A90C6000, v6, OS_LOG_TYPE_INFO, "missing interface name, clear redirected address failed", v8, 2u);
    }

    return 22;
  }

  return int64;
}

void NEHelperCacheClearUUIDs()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v1 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A90C6000, v1, OS_LOG_TYPE_DEFAULT, "sending a message to clear the UUID cache", v3, 2u);
  }

  xpc_dictionary_set_uint64(v0, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v0, "cache-command", 8uLL);
  v2 = NEHelperCopyResponse(v0);
  if (v2)
  {
    xpc_release(v2);
  }

  xpc_release(v0);
}

void NEHelperCacheClearUUIDsForBundleID(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v3 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = a1;
    _os_log_impl(&dword_1A90C6000, v3, OS_LOG_TYPE_DEFAULT, "sending a message to clear the UUIDs for %s from the cache", &v5, 0xCu);
  }

  xpc_dictionary_set_uint64(v2, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v2, "cache-command", 8uLL);
  xpc_dictionary_set_string(v2, "cache-app-bundle-id", a1);
  v4 = NEHelperCopyResponse(v2);
  if (v4)
  {
    xpc_release(v4);
  }

  xpc_release(v2);
}

void NEHelperCachePopulateUUIDsForConfiguration(const unsigned __int8 *a1, unsigned int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  memset(out, 0, 37);
  uuid_unparse(a1, out);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v5 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = out;
    _os_log_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_DEFAULT, "Sending a message to populate the cache with UUIDs from configuration %s", &v10, 0xCu);
  }

  xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v4, "cache-command", 0xAuLL);
  xpc_dictionary_set_uuid(v4, "config-identifier", a1);
  xpc_dictionary_set_int64(v4, "cache-user-uid", a2);
  v6 = NEHelperCopyResponse(v4);
  if (v6)
  {
    v7 = v6;
    int64 = xpc_dictionary_get_int64(v6, "result-code");
    if (int64)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v9 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v10 = 67109120;
        LODWORD(v11) = int64;
        _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "Populating the cache failed: %d", &v10, 8u);
      }
    }

    xpc_release(v7);
  }

  xpc_release(v4);
}

xpc_object_t NEHelperCopyAggregatePathRules()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    xpc_dictionary_set_uint64(v0, "delegate-class-id", 6uLL);
    xpc_dictionary_set_int64(v1, "config-operation", 6);
    v2 = NEHelperCopyResponse(v1);
    if (!v2)
    {
      v4 = 0;
      goto LABEL_8;
    }

    v3 = v2;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(v3, "result-data");
      v4 = value;
      if (!value)
      {
        goto LABEL_5;
      }

      if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E70])
      {
        v4 = xpc_copy(v4);
        goto LABEL_5;
      }
    }

    v4 = 0;
LABEL_5:
    xpc_release(v3);
LABEL_8:
    xpc_release(v1);
    return v4;
  }

  return 0;
}

xpc_object_t NEHelperCopyPerAppDomains(const char *a1, BOOL a2)
{
  if (a1 && (!strncmp(a1, "com.apple.mobilesafari", 0x17uLL) || !strncmp(a1, "com.apple.webapp", 0x11uLL) || !strncmp(a1, "com.apple.mobilemail", 0x15uLL) || !strncmp(a1, "com.apple.MobileAddressBook", 0x1CuLL) || !strncmp(a1, "com.apple.mobilecal", 0x14uLL) || !strncmp(a1, "com.apple.datausage.dataaccess.activesync", 0x2AuLL) || !strncmp(a1, "com.apple.mobilenotes", 0x16uLL) || !strncmp(a1, "com.apple.reminders", 0x14uLL)))
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "delegate-class-id", 6uLL);
      xpc_dictionary_set_int64(v5, "config-operation", 11);
      xpc_dictionary_set_BOOL(v5, "one-per-configuration", a2);
      xpc_dictionary_set_string(v5, "bundle-id", a1);
      v6 = NEHelperCopyResponse(v5);
      if (!v6)
      {
        v8 = 0;
        goto LABEL_17;
      }

      v7 = v6;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        value = xpc_dictionary_get_value(v7, "result-data");
        v8 = value;
        if (!value)
        {
          goto LABEL_14;
        }

        if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E50])
        {
          v8 = xpc_copy(v8);
          goto LABEL_14;
        }
      }

      v8 = 0;
LABEL_14:
      xpc_release(v7);
LABEL_17:
      xpc_release(v5);
      return v8;
    }
  }

  return 0;
}

xpc_object_t NEHelperHandleConfigurationsChangedBySC(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_uint64(v2, "delegate-class-id", 6uLL);
    xpc_dictionary_set_int64(v3, "config-operation", 13);
    if (a1 && MEMORY[0x1AC5803D0](a1) == MEMORY[0x1E69E9E50] && xpc_array_get_count(a1))
    {
      xpc_dictionary_set_value(v3, "config-ids", a1);
    }

    v4 = NEHelperCopyResponse(v3);
    if (!v4)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v5 = v4;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(v5, "result-data");
      v6 = value;
      if (!value)
      {
        goto LABEL_9;
      }

      if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E50])
      {
        v6 = xpc_copy(v6);
        goto LABEL_9;
      }
    }

    v6 = 0;
LABEL_9:
    xpc_release(v5);
LABEL_12:
    xpc_release(v3);
    return v6;
  }

  return 0;
}

uint64_t NEHelperVPNSetEnabled(const unsigned __int8 *a1, BOOL a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, "delegate-class-id", 6uLL);
    xpc_dictionary_set_int64(v5, "config-operation", 14);
    xpc_dictionary_set_uuid(v5, "config-identifier", a1);
    xpc_dictionary_set_BOOL(v5, "enabled", a2);
    v6 = NEHelperCopyResponse(v5);
    if (!v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v7 = v6;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v7, "result-code");
      if (!int64)
      {
        v11 = 1;
        goto LABEL_10;
      }

      v9 = int64;
      memset(out, 0, 37);
      uuid_unparse(a1, out);
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v10 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = out;
        v15 = 2048;
        v16 = v9;
        _os_log_error_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_ERROR, "Failed to enable %s: %lld", &v13, 0x16u);
      }
    }

    v11 = 0;
LABEL_10:
    xpc_release(v7);
LABEL_13:
    xpc_release(v5);
    return v11;
  }

  return 0;
}

uint64_t NEHelperVPNConfigurationExists(uint64_t a1, BOOL a2)
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "delegate-class-id", 6uLL);
      xpc_dictionary_set_int64(v5, "config-operation", 15);
      xpc_dictionary_set_string(v5, "app-bundle-id", v2);
      xpc_dictionary_set_BOOL(v5, "enable-required", a2);
      v6 = NEHelperCopyResponse(v5);
      if (!v6)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v10 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_error_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_ERROR, "nehelper sent NULL Configuration check response", &v14, 2u);
        }

        v2 = 0;
        goto LABEL_23;
      }

      v7 = v6;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v7, "result-code");
        if (!int64)
        {
          v2 = 1;
          goto LABEL_22;
        }

        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v12 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v14 = 67109120;
          LODWORD(v15) = int64;
          _os_log_error_impl(&dword_1A90C6000, v12, OS_LOG_TYPE_ERROR, "received invalid Configuration check result %d", &v14, 8u);
        }
      }

      else
      {
        v8 = MEMORY[0x1AC5801F0](v7);
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v9 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315138;
          v15 = v8;
          _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "nehelper sent invalid Configuration check response: %s", &v14, 0xCu);
        }

        free(v8);
      }

      v2 = 0;
LABEL_22:
      xpc_release(v7);
LABEL_23:
      xpc_release(v5);
      return v2;
    }

    return 0;
  }

  return v2;
}

void NEHelperInit()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    xpc_dictionary_set_BOOL(v0, "init-command", 1);
    v2 = NEHelperCopyResponse(v1);
    if (v2)
    {
      xpc_release(v2);
    }

    xpc_release(v1);
  }
}

xpc_object_t NEHelperCopyCurrentNetworkInfo(const char *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      v3 = v2;
      xpc_dictionary_set_uint64(v2, "delegate-class-id", 0xAuLL);
      xpc_dictionary_set_string(v3, "interface-name", a1);
      xpc_dictionary_set_BOOL(v3, "LegacyAPI", 1);
      v4 = NEHelperCopyResponse(v3);
      if (!v4)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v9 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "nehelper sent NULL response for Wi-Fi information request", &v15, 2u);
        }

        v8 = 0;
        goto LABEL_23;
      }

      v5 = v4;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v5, "result-code");
        if (int64)
        {
          v11 = int64;
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v12 = ne_log_obj_log_obj;
          if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
          {
            v15 = 134217984;
            v16 = v11;
            _os_log_error_impl(&dword_1A90C6000, v12, OS_LOG_TYPE_ERROR, "nehelper sent invalid result code [%lld] for Wi-Fi information request", &v15, 0xCu);
          }
        }

        else
        {
          value = xpc_dictionary_get_value(v5, "result-data");
          if (value)
          {
            v8 = xpc_copy(value);
            goto LABEL_22;
          }
        }
      }

      else
      {
        v6 = MEMORY[0x1AC5801F0](v5);
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v7 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315138;
          v16 = v6;
          _os_log_error_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_ERROR, "nehelper sent invalid response for Wi-Fi information request: %s", &v15, 0xCu);
        }

        free(v6);
      }

      v8 = 0;
LABEL_22:
      xpc_release(v5);
LABEL_23:
      xpc_release(v3);
      return v8;
    }
  }

  return 0;
}

BOOL NEHelperCopyCurrentNetworkAsync(NSObject *a1, void (**a2)(void, void, void, void))
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    xpc_dictionary_set_uint64(v4, "delegate-class-id", 0xAuLL);
    xpc_dictionary_set_BOOL(v5, "security-type-requested", 1);
    NEHelperSendRequest(v5, a1, a2);
    xpc_release(v5);
  }

  return v5 != 0;
}

uint64_t NEHelperGetPid()
{
  v0 = nehelper_copy_connection_for_delegate_class(0xEuLL);
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v1, "delegate-class-id", 0xEuLL);
  xpc_dictionary_set_uint64(v1, "relay-command", 3uLL);
  v2 = NEHelperCopyResponse(v1);
  pid = xpc_connection_get_pid(v0);
  xpc_release(v1);
  xpc_release(v2);
  xpc_release(v0);
  return pid;
}

xpc_object_t NEHelperCopyXPCEndpointForIdentityProxyExtended(const unsigned __int8 *a1, const void *a2, size_t a3, const char *a4, void *a5)
{
  is_null = uuid_is_null(a1);
  value = 0;
  if (a3 && a2 && !is_null)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "delegate-class-id", 0xEuLL);
    xpc_dictionary_set_uint64(v12, "relay-command", 1uLL);
    xpc_dictionary_set_data(v12, "relay-persistent-reference", a2, a3);
    xpc_dictionary_set_uuid(v12, "relay-config-id", a1);
    if (a4 && *a4)
    {
      xpc_dictionary_set_string(v12, "relay-identity-domain", a4);
    }

    if (a5)
    {
      xpc_dictionary_set_value(v12, "relay-options", a5);
    }

    v13 = NEHelperCopyResponse(v12);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0x1AC5803D0]();
      v16 = MEMORY[0x1E69E9E80];
      if (v15 == MEMORY[0x1E69E9E80] && (v18 = xpc_dictionary_get_value(v14, "result-data")) != 0 && (v19 = v18, MEMORY[0x1AC5803D0]() == v16))
      {
        value = xpc_dictionary_get_value(v19, "relay-identity-xpc-endpoint");
        xpc_release(v12);
        if (value)
        {
          xpc_retain(value);
        }
      }

      else
      {
        xpc_release(v12);
        value = 0;
      }

      xpc_release(v14);
    }

    else
    {
      xpc_release(v12);
      return 0;
    }
  }

  return value;
}

xpc_object_t NEHelperCopyDataForCertificate(const unsigned __int8 *a1, const void *a2, size_t a3)
{
  is_null = uuid_is_null(a1);
  value = 0;
  if (a3 && a2 && !is_null)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "delegate-class-id", 0xEuLL);
    xpc_dictionary_set_uint64(v8, "relay-command", 2uLL);
    xpc_dictionary_set_data(v8, "relay-persistent-reference", a2, a3);
    xpc_dictionary_set_uuid(v8, "relay-config-id", a1);
    v9 = NEHelperCopyResponse(v8);
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x1AC5803D0]();
      v12 = MEMORY[0x1E69E9E80];
      if (v11 == MEMORY[0x1E69E9E80] && (v14 = xpc_dictionary_get_value(v10, "result-data")) != 0 && (v15 = v14, MEMORY[0x1AC5803D0]() == v12))
      {
        value = xpc_dictionary_get_value(v15, "relay-certificate-data");
        xpc_release(v8);
        if (value)
        {
          xpc_retain(value);
        }
      }

      else
      {
        xpc_release(v8);
        value = 0;
      }

      xpc_release(v10);
    }

    else
    {
      xpc_release(v8);
      return 0;
    }
  }

  return value;
}

unsigned __int16 *ne_tracker_context_get_domain(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  result = a1 + 1;
  if (v2 <= 0xF)
  {
    return 0;
  }

  return result;
}

const char *ne_tracker_context_get_domain_owner(const char *result)
{
  if (result)
  {
    v1 = *result;
    if (v1 < 0x10)
    {
      return 0;
    }

    v2 = result + 2;
    v3 = strlen(result + 2);
    if (v3 + 1 == v1 >> 4)
    {
      return 0;
    }

    else
    {
      return &v2[v3 + 1];
    }
  }

  return result;
}

unsigned __int16 *ne_tracker_context_can_block_request(unsigned __int16 *result)
{
  if (result)
  {
    return ((*result >> 2) & 1);
  }

  return result;
}

_WORD *ne_tracker_context_is_from_web_list(_WORD *result)
{
  if (result)
  {
    return (*result & 1);
  }

  return result;
}

unsigned __int16 *ne_tracker_context_is_from_app_list(unsigned __int16 *result)
{
  if (result)
  {
    return ((*result >> 1) & 1);
  }

  return result;
}

void ne_tracker_build_trie(unsigned __int16 *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = a6;
    if (MEMORY[0x1AC5803D0](a2) == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(a2);
      if (a3)
      {
        if (a5 && a4 && count && MEMORY[0x1AC5803D0](a3) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_count(a3))
        {
          v15 = xpc_array_get_count(a2);
          v16 = xpc_dictionary_get_count(a3);
          if (ne_trie_init(a1, a4, v15, a5 + 4 * v16, v8, 0, a7))
          {
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 0x40000000;
            v26[2] = __ne_tracker_build_trie_block_invoke;
            v26[3] = &__block_descriptor_tmp_121;
            v26[4] = a3;
            v26[5] = a1;
            xpc_array_apply(a2, v26);
            if (v8 < 0 || ne_trie_save_to_file(a1))
            {
LABEL_13:
              if (ne_log_obj_g_init != -1)
              {
                dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
              }

LABEL_22:
              v22 = ne_log_obj_log_obj;
              if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
              {
                v23 = a1[27];
                v24 = a1[28];
                v25 = a1[29];
                *buf = 136316162;
                v28 = "ne_tracker_build_trie";
                v29 = 1024;
                v30 = v15;
                v31 = 1024;
                v32 = v23;
                v33 = 1024;
                v34 = v24;
                v35 = 1024;
                v36 = v25;
                _os_log_impl(&dword_1A90C6000, v22, OS_LOG_TYPE_DEFAULT, "%s: Initialized with %d domains (Nodes used = %d, child maps used = %d, bytes used = %d)", buf, 0x24u);
              }

              return;
            }

            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v21 = ne_log_obj_log_obj;
            if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_22;
            }

            *buf = 136315394;
            v28 = "ne_tracker_build_trie";
            v29 = 1024;
            v30 = v8;
            v18 = "%s: failed to save trie to file <fd %d>";
            v19 = v21;
            v20 = 18;
          }

          else
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v17 = ne_log_obj_log_obj;
            if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_22;
            }

            *buf = 136315138;
            v28 = "ne_tracker_build_trie";
            v18 = "%s: failed to init trie";
            v19 = v17;
            v20 = 12;
          }

          _os_log_error_impl(&dword_1A90C6000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
          goto LABEL_13;
        }
      }
    }
  }
}

uint64_t __ne_tracker_build_trie_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (MEMORY[0x1AC5803D0](a3, a2) == MEMORY[0x1E69E9F10])
    {
      string_ptr = xpc_string_get_string_ptr(a3);
      if (string_ptr)
      {
        v7 = string_ptr;
        dictionary = xpc_dictionary_get_dictionary(*(a1 + 32), string_ptr);
        if (dictionary)
        {
          v9 = dictionary;
          string = xpc_dictionary_get_string(dictionary, "owner");
          v11 = xpc_dictionary_get_BOOL(v9, "is-web-list");
          v12 = xpc_dictionary_get_BOOL(v9, "is-app-list");
          v13 = xpc_dictionary_get_BOOL(v9, "can-block-request");
          v14 = strlen(v7);
          v15 = strlen(string);
          if (v14 + v15 - 507 >= 0xFFFFFFFFFFFFFDFFLL)
          {
            v17 = v15;
            __memcpy_chk();
            byte_1EB382052[v14] = 0;
            v18 = v14 + 1;
            memcpy(&byte_1EB382052[v18], string, v17);
            byte_1EB382052[v17 + v18] = 0;
            v19 = 16 * (v17 + v18) + 16;
            v20 = v12 ? 2 : 0;
            v21 = v13 ? 4 : 0;
            ne_tracker_build_trie_buffer = v20 | v11 | v21 | ne_tracker_build_trie_buffer & 8 | v19;
            v16 = (v19 >> 4) + 4;
          }

          else
          {
            v16 = 0;
          }

          v22 = strlen(v7);
          if (ne_trie_insert(*(a1 + 40), v7, v22, &ne_tracker_build_trie_buffer, v16, 1) == 0xFFFF)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v23 = ne_log_obj_log_obj;
            if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
            {
              v24 = 136315394;
              v25 = "ne_tracker_build_trie_block_invoke";
              v26 = 2080;
              v27 = v7;
              _os_log_error_impl(&dword_1A90C6000, v23, OS_LOG_TYPE_ERROR, "%s: failed to insert <%s>", &v24, 0x16u);
            }
          }
        }
      }
    }
  }

  return 1;
}

void ne_tracker_set_test_domains(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (a1)
  {
    v3 = v2;
    if (MEMORY[0x1AC5803D0](a1) == MEMORY[0x1E69E9E50])
    {
      xpc_dictionary_set_uint64(v3, "delegate-class-id", 0xCuLL);
      xpc_dictionary_set_value(v3, "test-domains", a1);
      xpc_dictionary_set_uint64(v3, "tracker-command", 1uLL);
      v4 = ne_tracker_copy_response(v3);
      if (v4)
      {
        v5 = v4;
        if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
        {
          int64 = xpc_dictionary_get_int64(v5, "result-code");
          if (ne_log_obj_g_init != -1)
          {
            v8 = int64;
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            int64 = v8;
          }

          v7 = ne_log_obj_log_obj;
          if (int64)
          {
            if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
            {
              v9 = 136315138;
              v10 = "ne_tracker_set_test_domains";
              _os_log_error_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_ERROR, "%s: got bad response", &v9, 0xCu);
            }
          }

          else if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
          {
            v9 = 136315138;
            v10 = "ne_tracker_set_test_domains";
            _os_log_debug_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_DEBUG, "%s: got good response", &v9, 0xCu);
          }
        }

        xpc_release(v5);
      }

      xpc_release(v3);
    }
  }
}

xpc_object_t ne_tracker_copy_response(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = 136315138;
    v12 = "ne_tracker_copy_response";
    v4 = "%s: request is NULL";
    goto LABEL_27;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "delegate-class-id");
  if (uint64 - 15 <= 0xFFFFFFF1)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = 136315138;
    v12 = "ne_tracker_copy_response";
    v4 = "%s: request has an invalid delegate class ID";
LABEL_27:
    _os_log_error_impl(&dword_1A90C6000, v3, OS_LOG_TYPE_ERROR, v4, &v11, 0xCu);
    return 0;
  }

  v5 = nehelper_copy_connection_for_delegate_class(uint64);
  if (!v5)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = 136315138;
    v12 = "ne_tracker_copy_response";
    v4 = "%s: nehelper_copy_connection_for_delegate_class() returned NULL";
    goto LABEL_27;
  }

  v6 = v5;
  v7 = xpc_connection_send_message_with_reply_sync(v5, a1);
  xpc_release(v6);
  if (!v7)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = 136315138;
    v12 = "ne_tracker_copy_response";
    v4 = "%s: nehelper sent NULL response";
    goto LABEL_27;
  }

  if (MEMORY[0x1AC5803D0](v7) != MEMORY[0x1E69E9E80])
  {
    v8 = MEMORY[0x1AC5801F0](v7);
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v9 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ne_tracker_copy_response";
      v13 = 2080;
      v14 = v8;
      _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "%s: nehelper sent invalid response: %s", &v11, 0x16u);
    }

    free(v8);
  }

  return v7;
}

double ne_tracker_clear_cache(uint64_t a1)
{
  if (a1)
  {
    return ne_trie_free(a1);
  }

  return result;
}

BOOL ne_tracker_domain_is_known_tracker(uint64_t a1, unsigned int a2, uint64_t *a3, int *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  os_unfair_lock_lock(&ne_tracker_lock);
  if (!ne_tracker_build_cache(&ne_tracker_trie, 0))
  {
    os_unfair_lock_unlock(&ne_tracker_lock);
    return 0;
  }

  if (a2 < 1)
  {
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  v27 = a4;
  v28 = a3;
  v8 = 0;
  v9 = a2;
  v10 = 1;
  while (1)
  {
    v11 = *(a1 + 8 * v8);
    if (v11)
    {
      break;
    }

LABEL_25:
    v10 = ++v8 < v9;
    if (v8 == v9)
    {
      goto LABEL_28;
    }
  }

  v12 = strlen(*(a1 + 8 * v8));
  v13 = v12;
  if (!v12)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v19 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

LABEL_24:
    *buf = 0;
    _os_log_error_impl(&dword_1A90C6000, v19, OS_LOG_TYPE_ERROR, "Failed to set domain of zero-length", buf, 2u);
    goto LABEL_25;
  }

  if (v11[v12 - 1] == 46)
  {
    v13 = v12 - 1;
    if (v12 == 1)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v19 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  if (v13 >= 1)
  {
    v14 = v13;
    v15 = *(a1 + 8 * v8);
    v16 = ne_tracker_domain_is_known_tracker_domain_buf;
    do
    {
      v17 = *v15++;
      *v16++ = __tolower(v17);
      --v14;
    }

    while (v14);
  }

  ne_tracker_domain_is_known_tracker_domain_buf[v13] = 0;
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v18 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315651;
    v32 = "ne_tracker_domain_is_known_tracker";
    v33 = 2081;
    v34 = ne_tracker_domain_is_known_tracker_domain_buf;
    v35 = 1024;
    v36 = v13;
    _os_log_debug_impl(&dword_1A90C6000, v18, OS_LOG_TYPE_DEBUG, "%s: lookup for <%{private}s> length %d", buf, 0x1Cu);
  }

  if (ne_trie_search(&ne_tracker_trie, ne_tracker_domain_is_known_tracker_domain_buf, v13, &v30, &v29, 1, 1, 46, 0, ne_tracker_check_metadata_for_app) == 0xFFFF)
  {
    goto LABEL_25;
  }

  if (v28 && v30 && v29)
  {
    v21 = *v30;
    if (v21 < 0x10 || (v22 = strlen(v30 + 2), v22 + 1 == v21 >> 4))
    {
      v23 = 0;
    }

    else
    {
      v23 = &v30[v22 + 3];
    }

    *v28 = v23;
  }

  if (v27)
  {
    *v27 = v8;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v24 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    if (v27)
    {
      v25 = *v27;
    }

    else
    {
      v25 = -1;
    }

    if (v28)
    {
      v26 = *v28;
    }

    else
    {
      v26 = "n/a";
    }

    *buf = 136315907;
    v32 = "ne_tracker_domain_is_known_tracker";
    v33 = 2081;
    v34 = v11;
    v35 = 1024;
    v36 = v25;
    v37 = 2081;
    v38 = v26;
    _os_log_debug_impl(&dword_1A90C6000, v24, OS_LOG_TYPE_DEBUG, "%s: found match for domain <%{private}s> (index %d) owner <%{private}s>", buf, 0x26u);
  }

LABEL_29:
  os_unfair_lock_unlock(&ne_tracker_lock);
  return v10;
}

unsigned __int16 *ne_tracker_check_metadata_for_app(unsigned __int16 *result)
{
  if (result)
  {
    return ((*result >> 1) & 1);
  }

  return result;
}

xpc_object_t ne_tracker_get_ddg_dictionary()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "delegate-class-id", 0xCuLL);
  xpc_dictionary_set_uint64(v0, "tracker-command", 1uLL);
  v1 = ne_tracker_copy_response(v0);
  if (!v1)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v2 = v1;
  v3 = MEMORY[0x1AC5803D0]();
  v4 = MEMORY[0x1E69E9E80];
  if (v3 == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_int64(v2, "result-code"))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v5 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "ne_tracker_get_ddg_dictionary";
        _os_log_error_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_ERROR, "%s: got bad response", &v9, 0xCu);
      }
    }

    else
    {
      value = xpc_dictionary_get_value(v2, "domain-dictionary");
      v6 = value;
      if (!value)
      {
        goto LABEL_9;
      }

      if (MEMORY[0x1AC5803D0](value) == v4 && xpc_dictionary_get_count(v6))
      {
        v6 = xpc_copy(v6);
        goto LABEL_9;
      }
    }
  }

  v6 = 0;
LABEL_9:
  xpc_release(v2);
LABEL_11:
  xpc_release(v0);
  return v6;
}

xpc_object_t ne_tracker_lookup_app_domains(const char *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, "delegate-class-id", 0xCuLL);
    xpc_dictionary_set_uint64(v2, "tracker-command", 2uLL);
    xpc_dictionary_set_string(v2, "bundle-id", a1);
    v3 = ne_tracker_copy_response(v2);
    if (!v3)
    {
      v6 = 0;
      goto LABEL_17;
    }

    v4 = v3;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_int64(v4, "result-code"))
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v5 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v10 = 136315138;
          v11 = "ne_tracker_lookup_app_domains";
          _os_log_error_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_ERROR, "%s: got bad response", &v10, 0xCu);
        }
      }

      else
      {
        value = xpc_dictionary_get_value(v4, "sorted-domains");
        v6 = value;
        if (!value)
        {
          goto LABEL_10;
        }

        if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E50])
        {
          v6 = xpc_copy(v6);
          goto LABEL_10;
        }
      }
    }

    v6 = 0;
LABEL_10:
    xpc_release(v4);
LABEL_17:
    xpc_release(v2);
    return v6;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v7 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "ne_tracker_lookup_app_domains";
    _os_log_error_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_ERROR, "%s: bundle_id is NULL", &v10, 0xCu);
  }

  return 0;
}

BOOL ne_tracker_validate_domain(const void *a1, int a2, uint64_t (*a3)(char *, size_t, char *, uint64_t), char *a4, uint64_t a5, _DWORD *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a2 && a2 < 254)
  {
    __memcpy_chk();
    ne_tracker_validate_domain_buffer[a2] = 0;
    __stringp = ne_tracker_validate_domain_buffer;
    if (a3)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    v13 = !v11 && a5 != 0;
    v39 = v13;
    v14 = MEMORY[0x1E69E9830];
    v37 = a5;
    v15 = a4;
    while (1)
    {
      v16 = strsep(&__stringp, ".");
      if (!v16)
      {
        if (a6)
        {
          *a6 = a5 - v37;
        }

        return 1;
      }

      v17 = v16;
      v18 = strlen(v16);
      v19 = v18;
      if (v18 >= 64)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v29 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 67109376;
          v42 = v19;
          v43 = 1024;
          v44 = 63;
          v31 = "Failed to validate domain - label size %d exceeded max label size %d";
          goto LABEL_46;
        }

        return result;
      }

      if (*v17 == 45 || v17[((v18 << 32) - 0x100000000) >> 32] == 45)
      {
        break;
      }

      if (v18 >= 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = v18 & 0x7FFFFFFF;
        do
        {
          while (1)
          {
            v23 = v17[v20];
            if ((v23 & 0x80) == 0)
            {
              break;
            }

            if ((v39 & 1) == 0)
            {
              if (ne_log_obj_g_init != -1)
              {
                dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
              }

              v34 = ne_log_obj_log_obj;
              result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *buf = 0;
                v31 = "Failed to validate domain - label contains non-printable ASCII character(s)";
                goto LABEL_63;
              }

              return result;
            }

            ++v20;
            v21 = 1;
            if (v20 == v22)
            {
              goto LABEL_34;
            }
          }

          if (v23 != 45 && (*(v14 + 4 * v23 + 60) & 0x500) == 0)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v34 = ne_log_obj_log_obj;
            result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 0;
              v31 = "Failed to validate domain - label must be consisted of alphanumeric or hyphen";
              goto LABEL_63;
            }

            return result;
          }

          ++v20;
        }

        while (v22 != v20);
        if ((v21 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_34:
        if (v15 <= a4)
        {
          v27 = v17 - ne_tracker_validate_domain_buffer;
          if (v37 < v27)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v34 = ne_log_obj_log_obj;
            result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 0;
              v31 = "Failed to validate domain - puny-coding exceeded buffer size";
              goto LABEL_63;
            }

            return result;
          }

          v38 = v37 - v27;
          memcpy(v15, a1, v27);
          v26 = &v15[v17 - ne_tracker_validate_domain_buffer];
        }

        else
        {
          if (v37 <= 0)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v34 = ne_log_obj_log_obj;
            result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 0;
              v31 = "Failed to validate domain - puny-coding exceeded buffer size";
              goto LABEL_63;
            }

            return result;
          }

          *v15 = 46;
          v26 = v15 + 1;
          v38 = v37 - 1;
        }

        v28 = a3(v17, v19, v26, a5);
        if ((v28 - 64) >= 0xFFFFFFC1 && v38 >= v28)
        {
          v37 = v38 - v28;
          v15 = &v26[v28];
          continue;
        }

        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v34 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v31 = "Failed to validate domain - failed to puny-code label";
          goto LABEL_63;
        }

        return result;
      }

LABEL_30:
      if (v15 > a4)
      {
        if (v37 <= 0)
        {
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v34 = ne_log_obj_log_obj;
          result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 0;
            v31 = "Failed to validate domain - puny-coding exceeded buffer size";
            goto LABEL_63;
          }

          return result;
        }

        *v15 = 46;
        if (v37 <= v18)
        {
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v34 = ne_log_obj_log_obj;
          result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 0;
            v31 = "Failed to validate domain - puny-coding exceeded buffer size";
            goto LABEL_63;
          }

          return result;
        }

        v35 = v18 << 32;
        v25 = v15 + 1;
        memcpy(v25, v17, v18);
        v15 = &v25[v35 >> 32];
        v37 += ~v19;
      }
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v34 = ne_log_obj_log_obj;
    result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v31 = "Failed to validate domain - leading and trailing hyphen is not allowed in label";
LABEL_63:
      v32 = v34;
      v33 = 2;
      goto LABEL_64;
    }
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v29 = ne_log_obj_log_obj;
    result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109376;
      v42 = a2;
      v43 = 1024;
      v44 = 253;
      v31 = "Failed to validate domain - invalid domain length of %d (max length is %d)";
LABEL_46:
      v32 = v29;
      v33 = 14;
LABEL_64:
      _os_log_error_impl(&dword_1A90C6000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      return 0;
    }
  }

  return result;
}

int ne_socket_set_domains(int socket, const char *const *const domain_names, int domain_count)
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v29 = -1;
  v30 = 0;
  if (!domain_names || socket < 0 || domain_count < 1 || (v6 = *domain_names) == 0 || !*v6)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v9 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      return 22;
    }

    *buf = 0;
    v22 = "Failed to set domain(s) for socket - invalid socket or no domain provided";
    v23 = v9;
    v24 = 2;
    goto LABEL_45;
  }

  if (ne_tracker_domain_is_known_tracker(domain_names, domain_count, &v31, &v29))
  {
    v7 = 0;
    v30 = 1;
    if (v29 >= 1 && v29 < domain_count)
    {
      v7 = domain_names[v29];
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v8 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "ne_socket_set_domains";
      _os_log_impl(&dword_1A90C6000, v8, OS_LOG_TYPE_DEFAULT, "%s: marking socket as tracker", buf, 0xCu);
    }
  }

  else
  {
    v12 = strlen(v6);
    v7 = 0;
    if (!ne_tracker_validate_domain(v6, v12, 0, 0, 0, 0))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v21 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        return 22;
      }

      *buf = 136380675;
      v33 = v6;
      v22 = "Failed to set domain(s) for socket - invalid domain syntax in <%{private}s>";
      v23 = v21;
      v24 = 12;
      goto LABEL_45;
    }
  }

  v10 = setsockopt(socket, 0xFFFF, 4389, &v30, 4u);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v13 = ne_log_obj_log_obj;
  if (v10)
  {
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 136315394;
      v33 = v15;
      v34 = 2048;
      *v35 = 4;
      _os_log_error_impl(&dword_1A90C6000, v13, OS_LOG_TYPE_ERROR, "Could not set SO_MARK_KNOWN_TRACKER. Received error: %s (%lu)", buf, 0x16u);
    }

    return v10;
  }

  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v33 = "ne_socket_set_domains";
    v34 = 1024;
    *v35 = v30;
    _os_log_debug_impl(&dword_1A90C6000, v13, OS_LOG_TYPE_DEBUG, "%s set tracker option is %d", buf, 0x12u);
  }

  v16 = ne_session_set_socket_tracker_attributes(socket, v6, v31, v7);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v17 = ne_log_obj_log_obj;
  if ((v16 & 1) == 0)
  {
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      return 22;
    }

    v25 = "<n/a>";
    v26 = v31;
    if (!v31)
    {
      v26 = "<n/a>";
    }

    *buf = 136381187;
    if (v7)
    {
      v25 = v7;
    }

    v33 = v6;
    v34 = 2081;
    *v35 = v26;
    *&v35[8] = 2081;
    *&v35[10] = v25;
    v22 = "Could not set tracker domain attributes - domain <%{private}s>, owner <%{private}s>, tracker domain <%{private}s>";
    v23 = v17;
    v24 = 32;
LABEL_45:
    _os_log_error_impl(&dword_1A90C6000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    return 22;
  }

  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "not present";
    if (v31)
    {
      v19 = "present";
    }

    else
    {
      v19 = "not present";
    }

    *buf = 136316162;
    v33 = "ne_socket_set_domains";
    v34 = 1024;
    if (v7)
    {
      v18 = "present";
    }

    *v35 = v30;
    *&v35[4] = 2080;
    *&v35[6] = "present";
    *&v35[14] = 2080;
    *&v35[16] = v19;
    v36 = 2080;
    v37 = v18;
    _os_log_impl(&dword_1A90C6000, v17, OS_LOG_TYPE_DEFAULT, "%s Set domain - is_tracker %d domain %s owner %s, tracker domain %s", buf, 0x30u);
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }
  }

  v20 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    v27 = v31;
    v28 = "<n/a>";
    if (!v31)
    {
      v27 = "<n/a>";
    }

    if (v7)
    {
      v28 = v7;
    }

    *buf = 136316163;
    v33 = "ne_socket_set_domains";
    v34 = 1024;
    *v35 = v30;
    *&v35[4] = 2081;
    *&v35[6] = v6;
    *&v35[14] = 2081;
    *&v35[16] = v27;
    v36 = 2081;
    v37 = v28;
    _os_log_debug_impl(&dword_1A90C6000, v20, OS_LOG_TYPE_DEBUG, "%s Set domain - is_tracker %d domain <%{private}s> owner <%{private}s>, tracker domain <%{private}s>", buf, 0x30u);
  }

  return 0;
}

int ne_socket_set_attribution(int socket, ne_socket_attribution_t attribution)
{
  v18 = *MEMORY[0x1E69E9840];
  if (socket < 0)
  {
    return 22;
  }

  v13 = attribution == NE_SOCKET_ATTRIBUTION_USER;
  v4 = setsockopt(socket, 0xFFFF, 4390, &v13, 4u);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v5 = ne_log_obj_log_obj;
  if (!v4)
  {
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "developer";
      v15 = "ne_socket_set_attribution";
      *buf = 136315650;
      if (attribution == NE_SOCKET_ATTRIBUTION_USER)
      {
        v9 = "user";
      }

      v16 = 2080;
      *v17 = v9;
      *&v17[8] = 1024;
      *&v17[10] = v13;
      _os_log_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_DEFAULT, "%s: marking socket attribution as %s <non-app-initiated flag %d>", buf, 0x1Cu);
    }

    if (attribution != NE_SOCKET_ATTRIBUTION_DEVELOPER)
    {
      return 0;
    }

    v10 = ne_session_set_socket_context_attribute(socket, 0);
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v11 = ne_log_obj_log_obj;
    if (v10)
    {
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "ne_socket_set_attribution";
        _os_log_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_DEFAULT, "%s: Cleared attribution context for developer attribution", buf, 0xCu);
      }

      return 0;
    }

    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "ne_socket_set_attribution";
      _os_log_error_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_ERROR, "%s: Could not clear attribution context for developer attribution", buf, 0xCu);
    }

    return 22;
  }

  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    v6 = v13;
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136315650;
    v15 = "ne_socket_set_attribution";
    v16 = 1024;
    *v17 = v6;
    *&v17[4] = 2080;
    *&v17[6] = v8;
    _os_log_error_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_ERROR, "%s: Could not set SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED to %d. Received error: %s", buf, 0x1Cu);
  }

  return v4;
}

int ne_socket_set_website_attribution(int socket, const char *hostname)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v2 = 22;
  if ((socket & 0x80000000) == 0 && hostname)
  {
    v5 = setsockopt(socket, 0xFFFF, 4390, &v14, 4u);
    if (v5)
    {
      v2 = v5;
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v6 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v7 = v14;
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 136315650;
        v16 = "ne_socket_set_website_attribution";
        v17 = 1024;
        v18 = v7;
        v19 = 2080;
        v20 = v9;
        _os_log_error_impl(&dword_1A90C6000, v6, OS_LOG_TYPE_ERROR, "%s: Could not set SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED to %d. Received error: %s", buf, 0x1Cu);
      }
    }

    else
    {
      v10 = ne_session_set_socket_context_attribute(socket, hostname);
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v11 = ne_log_obj_log_obj;
      if (v10)
      {
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v16 = "ne_socket_set_website_attribution";
          v17 = 1024;
          v18 = v14;
          _os_log_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_DEFAULT, "%s: marking socket attribution as user <non-app-initiated flag %d> with website context", buf, 0x12u);
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }
        }

        v12 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315651;
          v16 = "ne_socket_set_website_attribution";
          v17 = 1024;
          v18 = v14;
          v19 = 2081;
          v20 = hostname;
          _os_log_debug_impl(&dword_1A90C6000, v12, OS_LOG_TYPE_DEBUG, "%s: marking socket attribution as user <non-app-initiated flag %d> with website context <%{private}s>", buf, 0x1Cu);
        }

        return 0;
      }

      else
      {
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v16 = "ne_socket_set_website_attribution";
          _os_log_error_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_ERROR, "%s: Could not set attribution context", buf, 0xCu);
        }

        return 22;
      }
    }
  }

  return v2;
}

int ne_socket_set_is_app_initiated(int socket, BOOL is_app_initiated)
{
  if (is_app_initiated)
  {
    v2 = NE_SOCKET_ATTRIBUTION_DEVELOPER;
  }

  else
  {
    v2 = NE_SOCKET_ATTRIBUTION_USER;
  }

  return ne_socket_set_attribution(socket, v2);
}

void ne_tracker_create_xcode_issue(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    should_save_stacktrace = ne_tracker_should_save_stacktrace();
    v3 = should_save_stacktrace;
    if (ne_tracker_create_xcode_issue_onceToken == -1)
    {
      if (should_save_stacktrace)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&ne_tracker_create_xcode_issue_onceToken, &__block_literal_global_256);
      if (v3)
      {
LABEL_4:
        v4 = ne_tracker_create_xcode_issue_poi_handle;
        if (os_log_type_enabled(ne_tracker_create_xcode_issue_poi_handle, OS_LOG_TYPE_FAULT))
        {
          v6 = 136315138;
          v7 = a1;
          _os_log_fault_impl(&dword_1A90C6000, v4, OS_LOG_TYPE_FAULT, "%s is not listed in your app’s NSPrivacyTrackingDomain key in any privacy manifest. It may be following users across multiple apps and websites to create a profile about users of apps that contact this domain.", &v6, 0xCu);
        }

        return;
      }
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v5 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = a1;
      _os_log_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_DEFAULT, "%s is not listed in your app’s NSPrivacyTrackingDomain key in any privacy manifest. It may be following users across multiple apps and websites to create a profile about users of apps that contact this domain.", &v6, 0xCu);
    }
  }
}

os_log_t __ne_tracker_create_xcode_issue_block_invoke()
{
  result = os_log_create("com.apple.neappprivacy", "PointsOfInterest");
  ne_tracker_create_xcode_issue_poi_handle = result;
  return result;
}

void *ne_tracker_copy_current_stacktrace(size_t *a1)
{
  __src[128] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (qword_1ED4C39A0 != -1)
  {
    dispatch_once(&qword_1ED4C39A0, &__block_literal_global_10);
  }

  if (state != -1)
  {
    dispatch_once(&state, &__block_literal_global_14);
  }

  bzero(__src, 0x400uLL);
  v2 = 8 * backtrace(__src, 128);
  *a1 = v2;
  v3 = malloc_type_malloc(v2, 0xB1BE5970uLL);
  v4 = v3;
  if (v3)
  {
    memcpy(v3, __src, *a1);
  }

  return v4;
}

uint64_t ne_log_large_obj()
{
  if (ne_log_large_obj_g_large_init != -1)
  {
    dispatch_once(&ne_log_large_obj_g_large_init, &__block_literal_global_5);
  }

  return ne_log_large_obj_large_log_obj;
}

os_log_t __ne_log_large_obj_block_invoke()
{
  result = os_log_create("com.apple.networkextension", "Large");
  ne_log_large_obj_large_log_obj = result;
  return result;
}

BOOL nelog_is_info_logging_enabled()
{
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v1 = ne_log_obj_log_obj;

  return os_log_type_enabled(v1, OS_LOG_TYPE_INFO);
}

void ne_print_backtrace()
{
  v42 = *MEMORY[0x1E69E9840];
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
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v0 = backtrace(v10, 128);
  v1 = backtrace_symbols(v10, v0);
  v2 = v1;
  if (v0 >= 1)
  {
    v3 = v0;
    v4 = ne_log_obj_g_init;
    v5 = v1;
    do
    {
      if (v4 != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v6 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v7 = *v5;
        *buf = 136315138;
        v9 = v7;
        _os_log_error_impl(&dword_1A90C6000, v6, OS_LOG_TYPE_ERROR, "    %s", buf, 0xCu);
        v4 = ne_log_obj_g_init;
      }

      else
      {
        v4 = -1;
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  free(v2);
}

uint64_t ne_trie_init(uint64_t result, uint64_t a2, uint64_t a3, size_t a4, int a5, uint64_t a6, double a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v8 = result;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  if (a2 && a3 && a4)
  {
    v10 = a2 + a3;
    v11 = __CFADD__(a2, a3);
    v12 = v10 + 1;
    v13 = ((v10 == -1) << 63) >> 63 != (v10 == -1);
    if (v11 || v13)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v15 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        v44 = "ne_trie_init";
        v16 = "%s: NETrie - Overflow while computing the number of nodes";
        goto LABEL_48;
      }

      return result;
    }

    v14 = a2 + 1;
    if (((a2 == -1) << 63) >> 63 != (a2 == -1))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v15 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        v44 = "ne_trie_init";
        v16 = "%s: NETrie - Overflow while computing the number of maps";
LABEL_48:
        v18 = v15;
        v19 = 12;
        goto LABEL_49;
      }

      return result;
    }

    if (a4 >> 16 || ((v12 | v14) & 0xFFFFFFFFFFFF0000) != 0)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v17 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136315906;
      v44 = "ne_trie_init";
      v45 = 2048;
      *v46 = a4;
      *&v46[8] = 2048;
      *v47 = v12;
      *&v47[8] = 2048;
      *v48 = v14;
      v16 = "%s: NETrie - Invalid bytes count (%lu), nodes count (%lu) or maps count (%lu)";
      v18 = v17;
      v19 = 42;
LABEL_49:
      _os_log_error_impl(&dword_1A90C6000, v18, OS_LOG_TYPE_ERROR, v16, buf, v19);
      return 0;
    }

    if (!is_mul_ok(v14, 0xC0uLL) || ((v20 = 10 * v12, v21 = 192 * v14, v22 = 10 * v12 + 192 * v14, !__CFADD__(10 * v12, 192 * v14)) ? (v23 = 0) : (v23 = 1), (v24 = a4 + v22, !__CFADD__(a4, v22)) ? (v25 = 0) : (v25 = 1), (v23 & 1) != 0 || v25))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v15 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        v44 = "ne_trie_init";
        v16 = "%s: NETrie - Overflow while computing trie memory sizes";
        goto LABEL_48;
      }

      return result;
    }

    if (v24 > 0x100000)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v26 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136315650;
      v44 = "ne_trie_init";
      v45 = 2048;
      *v46 = v24;
      *&v46[8] = 1024;
      *v47 = 0x100000;
      v16 = "%s: NETrie - Trie memory size (%lu) is too big (maximum is %u)";
      v18 = v26;
      v19 = 28;
      goto LABEL_49;
    }

    if (a6)
    {
      v29 = __CFADD__(v24, a6);
      v24 += a6;
      if (v29)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v15 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315138;
          v44 = "ne_trie_init";
          v16 = "%s: NETrie - Overflow while adding requested extra bytes";
          goto LABEL_48;
        }

        return result;
      }
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v30 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v44 = "ne_trie_init";
      v45 = 2048;
      *v46 = v12;
      *&v46[8] = 2048;
      *v47 = v14;
      *&v47[8] = 2048;
      *v48 = a4;
      *&v48[8] = 2048;
      v49 = a6;
      v50 = 2048;
      v51 = v24;
      v52 = 1024;
      v53 = a5;
      _os_log_debug_impl(&dword_1A90C6000, v30, OS_LOG_TYPE_DEBUG, "%s: NETrie - initializing (Nodes count = %lu, child maps count = %lu, bytes_count = %lu, extra_bytes = %lu, total memory size %lu fd %d)", buf, 0x44u);
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    else if ((a5 & 0x80000000) == 0)
    {
LABEL_61:
      if (ftruncate(a5, v24 + 112))
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v31 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315394;
          v44 = "ne_trie_init";
          v45 = 1024;
          *v46 = v24 + 112;
          v16 = "%s: NETrie - failed to ftruncate mmap file to %d";
          v18 = v31;
          v19 = 18;
          goto LABEL_49;
        }

        return result;
      }

      v32 = mmap(0, v24 + 112, 3, 1, a5, 0);
      if (v32 == -1)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v35 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315650;
          v44 = "ne_trie_init";
          v45 = 1024;
          *v46 = a5;
          *&v46[4] = 1024;
          *&v46[6] = v24 + 112;
          v16 = "%s: NETrie - Failed mmap <fd %d, size %d>";
          v18 = v35;
          v19 = 24;
          goto LABEL_49;
        }

        return result;
      }

      *(v8 + 40) = v32;
      *(v8 + 96) = 1;
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v33 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v44 = "ne_trie_init";
        v45 = 1024;
        *v46 = a5;
        *&v46[4] = 1024;
        *&v46[6] = v24 + 112;
        *v47 = 2048;
        v34 = 112;
        *&v47[2] = 112;
        *v48 = 2048;
        *&v48[2] = v24;
        _os_log_debug_impl(&dword_1A90C6000, v33, OS_LOG_TYPE_DEBUG, "%s: NETrie - initialized with mmap <fd %d, file size %d hdr size %zu memory size %zu>", buf, 0x2Cu);
      }

      else
      {
        v34 = 112;
      }

LABEL_82:
      *v8 = xmmword_1A90DD720;
      *(v8 + 104) = a7;
      *(v8 + 64) = v24;
      *(v8 + 72) = v20;
      *(v8 + 80) = v21;
      *(v8 + 88) = a4;
      *(v8 + 52) = a4;
      *(v8 + 48) = v12;
      *(v8 + 50) = v14;
      v38 = (*(v8 + 40) + v34 + a6);
      *(v8 + 16) = v38;
      *(v8 + 54) = 0;
      bzero(v38, 10 * v12);
      v39 = &v38[v20];
      *(v8 + 24) = v39;
      *(v8 + 56) = 0;
      memset(v39, 255, 192 * v14);
      *(v8 + 32) = &v39[v21];
      *(v8 + 58) = 0;
      bzero(&v39[v21], a4);
      v40 = *(v8 + 54);
      v41 = -1;
      if (v40 < *(v8 + 48))
      {
        *(v8 + 54) = v40 + 1;
        *(*(v8 + 16) + 10 * v40 + 4) = -1;
        v41 = v40;
      }

      *(v8 + 60) = v41;
      return 1;
    }

    v36 = malloc_type_malloc(v24, 0xCEA5ABE5uLL);
    if (!v36)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v42 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315394;
        v44 = "ne_trie_init";
        v45 = 2048;
        *v46 = v24;
        v16 = "%s: NETrie - Failed to allocate %lu bytes of memory for the trie";
        v18 = v42;
        v19 = 22;
        goto LABEL_49;
      }

      return result;
    }

    *(v8 + 40) = v36;
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v37 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v44 = "ne_trie_init";
      v45 = 2048;
      *v46 = v24;
      _os_log_debug_impl(&dword_1A90C6000, v37, OS_LOG_TYPE_DEBUG, "%s: NETrie - initialized with malloc %zu", buf, 0x16u);
    }

    v34 = 0;
    goto LABEL_82;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v15 = ne_log_obj_log_obj;
  result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    v44 = "ne_trie_init";
    v16 = "%s: NETrie - null trie, no prefix/leaf count or no byte count";
    goto LABEL_48;
  }

  return result;
}

uint64_t ne_trie_save_to_file(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 96) == 1)
    {
      v1 = *(result + 40);
      v2 = *result;
      v3 = *(result + 32);
      v1[1] = *(result + 16);
      v1[2] = v3;
      *v1 = v2;
      v4 = *(result + 48);
      v5 = *(result + 64);
      v6 = *(result + 96);
      v1[5] = *(result + 80);
      v1[6] = v6;
      v1[3] = v4;
      v1[4] = v5;
      if (msync(*(result + 40), *(result + 64) + 112, 16) == -1)
      {
        v8 = *__error();
        if (strerror_r(v8, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v9 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_FAULT))
        {
          v10 = 136315650;
          v11 = "ne_trie_save_to_file";
          v12 = 1024;
          v13 = v8;
          v14 = 2080;
          v15 = buf;
          _os_log_fault_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_FAULT, "%s: NETrie - Failed msync: [%d] %s", &v10, 0x1Cu);
        }
      }

      else
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v7 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v17 = "ne_trie_save_to_file";
          _os_log_debug_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_DEBUG, "%s: NETrie - done msync", buf, 0xCu);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ne_trie_has_high_ascii(char *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (*a1 < 0)
  {
    return 1;
  }

  v2 = 0;
  while ((a2 & 0x7FFFFFFF) - 1 != v2)
  {
    v3 = a1[++v2];
    if (v3 < 0)
    {
      return v2 < (a2 & 0x7FFFFFFFu);
    }
  }

  v2 = a2 & 0x7FFFFFFF;
  return v2 < (a2 & 0x7FFFFFFFu);
}

uint64_t ne_trie_insert(uint64_t a1, char *a2, size_t __n, const void *a4, size_t a5, int a6)
{
  v66 = *MEMORY[0x1E69E9840];
  LOWORD(v6) = -1;
  if (!__n || !a2 || !*(a1 + 40))
  {
    return v6;
  }

  v8 = __n;
  if (__n >> 16 || (v9 = *(a1 + 58), v9 + __n > *(a1 + 52)))
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v65 = "ne_trie_insert";
    v17 = "%s: NETrie - failed insert - out of allocated memory";
    goto LABEL_80;
  }

  if (*a2 < 0)
  {
    goto LABEL_16;
  }

  v14 = 1;
  do
  {
    if (__n == v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    v16 = a2[v14++];
  }

  while ((v16 & 0x80000000) == 0);
  if (v15 < __n)
  {
LABEL_16:
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v65 = "ne_trie_insert";
    v17 = "%s: NETrie - failed insert - non-printable ASCII not supported";
    goto LABEL_80;
  }

LABEL_20:
  v18 = (*(a1 + 32) + v9);
  if (a6)
  {
    v19 = __n;
    do
    {
      *v18++ = a2[--v19];
    }

    while (v19);
  }

  else
  {
    memcpy(v18, a2, __n);
  }

  v20 = *(a1 + 60);
  LOWORD(v21) = *(a1 + 58);
  v62 = a5;
  if (v20 == 0xFFFF)
  {
    v22 = 0xFFFF;
LABEL_27:
    v6 = *(a1 + 54);
    if (v6 >= *(a1 + 48))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v10 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315138;
      v65 = "ne_trie_insert";
      v17 = "%s: NETrie - Ran out of trie nodes while inserting a new leaf";
    }

    else
    {
      *(a1 + 54) = v6 + 1;
      v23 = *(a1 + 16);
      *(v23 + 10 * v6 + 4) = -1;
      v24 = *(a1 + 58);
      if (v24 + v8 > *(a1 + 52))
      {
        *(v23 + 10 * v6) = -1;
LABEL_88:
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v10 = ne_log_obj_log_obj;
        if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        v65 = "ne_trie_insert";
        v17 = "%s: NETrie - Ran out of bytes while inserting a new leaf";
        goto LABEL_80;
      }

      if (v24 != v21)
      {
        memmove((*(a1 + 32) + v24), (*(a1 + 32) + v21), v8);
        LOWORD(v21) = *(a1 + 58);
        v23 = *(a1 + 16);
      }

      *(a1 + 58) = v21 + v8;
      *(v23 + 10 * v6) = v24;
      if (v24 == 0xFFFF)
      {
        goto LABEL_88;
      }

      *(v23 + 10 * v6 + 2) = *(v23 + 10 * v6 + 2) & 0x8000 | v8 & 0x7FFF;
      *(*(a1 + 16) + 10 * v6 + 2) |= 0x8000u;
      if (a4 && v62)
      {
        memcpy((*(a1 + 32) + *(a1 + 58)), a4, v62);
        v51 = *(a1 + 58);
        if (v51 + v62 <= *(a1 + 52))
        {
          *(a1 + 58) = v51 + v62;
        }

        else
        {
          LOWORD(v51) = -1;
        }

        v52 = *(a1 + 16);
        v53 = v52 + 10 * v6;
        *(v53 + 6) = v51;
        *(v53 + 8) = v62;
      }

      else
      {
        v52 = *(a1 + 16);
      }

      v54 = v52 + 10 * v22;
      v57 = *(v54 + 4);
      v56 = (v54 + 4);
      v55 = v57;
      if (v57 != 0xFFFF)
      {
LABEL_107:
        v58 = *(*(a1 + 32) + *(v52 + 10 * v6));
        if (v58 < 32)
        {
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v59 = ne_log_obj_log_obj;
          if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
          {
            v60 = *(*(a1 + 32) + *(*(a1 + 16) + 10 * v6));
            *buf = 67109120;
            LODWORD(v65) = v60;
            _os_log_error_impl(&dword_1A90C6000, v59, OS_LOG_TYPE_ERROR, "NETrie - out of printable acsii range <%X>", buf, 8u);
          }
        }

        else
        {
          *(*(a1 + 24) + 192 * v55 + 2 * (v58 - 32)) = v6;
        }

        return v6;
      }

      v55 = *(a1 + 56);
      if (v55 < *(a1 + 50))
      {
        *(a1 + 56) = v55 + 1;
        *v56 = v55;
        goto LABEL_107;
      }

      *v56 = -1;
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v10 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315138;
      v65 = "ne_trie_insert";
      v17 = "%s: NETrie - Ran out of child maps while inserting a new leaf";
    }

LABEL_80:
    _os_log_error_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    goto LABEL_9;
  }

  v25 = v21 + v8;
  if (a4)
  {
    v26 = a5 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  v61 = v27;
  v28 = (v21 + v8);
  v29 = *(a1 + 16);
  v30 = *(a1 + 60);
  v63 = v21 + v8;
  while (1)
  {
    v31 = (v29 + 10 * v30);
    v32 = *v31;
    if (v32 >= ((v31[1] & 0x7FFF) + v32) || v21 >= v25)
    {
      LOWORD(v33) = *v31;
    }

    else
    {
      v21 = v21;
      v33 = *v31;
      do
      {
        if (*(*(a1 + 32) + v33) != *(*(a1 + 32) + v21))
        {
          break;
        }

        ++v33;
        ++v21;
        if (v33 >= ((v31[1] & 0x7FFF) + v32))
        {
          break;
        }
      }

      while (v21 < v28);
    }

    v8 = v25 - v21;
    if ((v31[1] & 0x7FFF) + v32 > v33)
    {
      break;
    }

    LODWORD(v6) = v30;
LABEL_70:
    if (!v8)
    {
      return v6;
    }

    v29 = *(a1 + 16);
    v22 = v6;
    if (*(v29 + 10 * v6 + 4) != 0xFFFFLL)
    {
      v48 = *(*(a1 + 32) + v21);
      if (v48 >= 32)
      {
        v30 = *(*(a1 + 24) + 192 * *(v29 + 10 * v6 + 4) + 2 * (v48 - 32));
        v20 = v6;
        if (v30 != 0xFFFF)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  LODWORD(v6) = *(a1 + 54);
  if (v6 >= *(a1 + 48))
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v65 = "ne_trie_insert";
      v17 = "%s: NETrie - Ran out of trie nodes while splitting an existing node";
      goto LABEL_80;
    }

    goto LABEL_9;
  }

  *(a1 + 54) = v6 + 1;
  v34 = (v29 + 10 * v6);
  v34[2] = -1;
  *v34 = v32;
  v34[1] = v34[1] & 0x8000 | (v33 - *v31) & 0x7FFF;
  if (v25 == v21)
  {
    v35 = *(a1 + 16) + 10 * v6;
    *(v35 + 2) |= 0x8000u;
    if (v61)
    {
      memcpy((*(a1 + 32) + *(a1 + 58)), a4, v62);
      v36 = *(a1 + 58);
      if (v36 + v62 <= *(a1 + 52))
      {
        *(a1 + 58) = v36 + v62;
      }

      else
      {
        LOWORD(v36) = -1;
      }

      v37 = *(a1 + 16) + 10 * v6;
      *(v37 + 6) = v36;
      *(v37 + 8) = v62;
      v25 = v63;
    }
  }

  v38 = *(a1 + 56);
  if (v38 < *(a1 + 50))
  {
    *(a1 + 56) = v38 + 1;
    *(*(a1 + 16) + 10 * v6 + 4) = v38;
    v39 = *(a1 + 32);
    v40 = *(v39 + v33);
    if (v40 < 32)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v41 = ne_log_obj_log_obj;
      v42 = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      v39 = *(a1 + 32);
      if (v42)
      {
        v49 = *(v39 + v33);
        *buf = 67109120;
        LODWORD(v65) = v49;
        _os_log_error_impl(&dword_1A90C6000, v41, OS_LOG_TYPE_ERROR, "NETrie - out of printable acsii range <%X>", buf, 8u);
        v39 = *(a1 + 32);
      }

      v25 = v63;
    }

    else
    {
      *(*(a1 + 24) + 192 * v38 + 2 * (v40 - 32)) = v30;
    }

    v43 = *(a1 + 16);
    v44 = *(v39 + *(v43 + 10 * v6));
    if (v44 < 32)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v45 = ne_log_obj_log_obj;
      v46 = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      v43 = *(a1 + 16);
      if (v46)
      {
        v50 = *(*(a1 + 32) + *(v43 + 10 * v6));
        *buf = 67109120;
        LODWORD(v65) = v50;
        _os_log_error_impl(&dword_1A90C6000, v45, OS_LOG_TYPE_ERROR, "NETrie - out of printable acsii range <%X>", buf, 8u);
        v43 = *(a1 + 16);
      }

      v25 = v63;
    }

    else
    {
      *(*(a1 + 24) + 192 * *(v43 + 10 * v20 + 4) + 2 * (v44 - 32)) = v6;
    }

    v47 = (v43 + 10 * v30);
    *v47 = v33;
    v47[1] = v47[1] & 0x8000 | (v47[1] - *(v43 + 10 * v6 + 2)) & 0x7FFF;
    goto LABEL_70;
  }

  *(*(a1 + 16) + 10 * v6 + 4) = -1;
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v10 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v65 = "ne_trie_insert";
    v17 = "%s: NETrie - Ran out of child maps while splitting an existing node";
    goto LABEL_80;
  }

LABEL_9:
  LOWORD(v6) = -1;
  return v6;
}

uint64_t ne_trie_search(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7, uint64_t a8, _DWORD *a9, uint64_t (*a10)(void, void))
{
  LOWORD(v10) = -1;
  if (!a3)
  {
    return v10;
  }

  if (!a2)
  {
    return v10;
  }

  v12 = a1;
  if (!*(a1 + 40))
  {
    return v10;
  }

  v13 = a9;
  v10 = *(a1 + 60);
  if (a6)
  {
    v14 = (a3 - 1);
  }

  else
  {
    v14 = 0;
  }

  v44 = a3;
  if (v10 == 0xFFFF)
  {
LABEL_58:
    if (v13)
    {
      if (a6)
      {
        if ((v14 & 0x8000) == 0)
        {
          while ((*(a2 + v14) & 0x80000000) == 0)
          {
            v41 = v14;
            LOWORD(v14) = v14 - 1;
            if (v41 < 1)
            {
              goto LABEL_71;
            }
          }

LABEL_68:
          *v13 = 1;
        }
      }

      else if (v44 > v14)
      {
        while ((*(a2 + v14) & 0x80000000) == 0)
        {
          LOWORD(v14) = v14 + 1;
          LOWORD(v10) = -1;
          if (v44 <= v14)
          {
            return v10;
          }
        }

        goto LABEL_68;
      }
    }

LABEL_71:
    LOWORD(v10) = -1;
    return v10;
  }

  v16 = a3;
  v17 = *(a1 + 16);
  v46 = a3;
  v18 = 0xFFFFLL;
  v50 = a7;
  v47 = v16;
  do
  {
    v19 = v10;
    v20 = (v17 + 10 * v10);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v22 & 0x7FFF) + v21;
    if (!a6)
    {
      if (v21 >= ((v20[1] & 0x7FFF) + v21))
      {
LABEL_26:
        v24 = v14;
      }

      else
      {
        v24 = v14 + (v22 & 0x7FFF);
        v26 = v14;
        if (v14 <= v16)
        {
          v27 = v16;
        }

        else
        {
          v27 = v14;
        }

        v28 = v46;
        if (v14 > v46)
        {
          v28 = v14;
        }

        while (1)
        {
          if (v28 == v26)
          {
            v24 = v27;
            goto LABEL_27;
          }

          if (*(a2 + v26) != *(v12[4] + v21))
          {
            break;
          }

          ++v21;
          ++v26;
          if (v23 == v21)
          {
            LOWORD(v21) = v23;
            goto LABEL_27;
          }
        }

        v24 = v26;
      }

LABEL_27:
      v29 = v24;
      v14 = v24;
      if ((v24 & 0x8000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v21 >= ((v20[1] & 0x7FFF) + v21) || (v14 & 0x8000) != 0)
    {
      goto LABEL_26;
    }

    while (*(a2 + v14) == *(v12[4] + v21))
    {
      ++v21;
      v24 = (v14 - 1);
      if (v21 < v23)
      {
        v25 = v14;
        v14 = (v14 - 1);
        if (v25 > 0)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    v29 = v14;
LABEL_30:
    if (v16 > v29 && *(a2 + v14) < 0)
    {
      if (a9)
      {
        *a9 = 1;
      }

      goto LABEL_71;
    }

LABEL_32:
    if (v21 != v23)
    {
      break;
    }

    if (a6 && (v14 & 0x8000) != 0)
    {
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v30 = 0;
      v31 = v16 == v29;
      if (a7 && v16 != v29)
      {
        v31 = 0;
        v30 = *(a2 + v14) == a8;
      }
    }

    if (v22 < 0)
    {
      v32 = v12[4];
      v33 = v32 + v20[3];
      v34 = v20[4];
      if (!a10 || (v35 = a8, v36 = a6, v49 = v32 + v20[3], v37 = v18, v38 = a10, v39 = a10(v49, v20[4]), a10 = v38, v18 = v37, v33 = v49, v19 = v10, a6 = v36, a8 = v35, v16 = v47, v12 = a1, v39))
      {
        if (v31)
        {
          if (a4 && a5)
          {
            *a4 = v33;
            *a5 = v34;
          }

          return v10;
        }

        if (v30)
        {
          v18 = v10;
        }

        else
        {
          v18 = v18;
        }
      }

      a7 = v50;
    }

    v17 = v12[2];
    if (*(v17 + 10 * v19 + 4) == 0xFFFFLL)
    {
      break;
    }

    v40 = *(a2 + v14);
    if (v40 < 32)
    {
      break;
    }

    v10 = *(v12[3] + 192 * *(v17 + 10 * v19 + 4) + 2 * (v40 - 32));
  }

  while (v10 != 0xFFFF);
  v13 = a9;
  if (v18 == 0xFFFF)
  {
    goto LABEL_58;
  }

  if (a4 && a5)
  {
    *a4 = v12[4] + *(v17 + 10 * v18 + 6);
    *a5 = *(v12[2] + 10 * v18 + 8);
  }

  LOWORD(v10) = v18;
  return v10;
}