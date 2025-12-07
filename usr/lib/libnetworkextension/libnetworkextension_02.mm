const char *NECertificateStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E812B848[a1 - 1];
  }
}

uint64_t NECertificateDateIsValid(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4;
  }

  SecCertificateNotValidBefore();
  v2 = v1;
  if (v1 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = CFDateCreate(*MEMORY[0x1E695E480], v1);
  }

  SecCertificateNotValidAfter();
  v6 = v5;
  if (v5 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFDateCreate(*MEMORY[0x1E695E480], v5);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current == 0.0)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = CFDateCreate(0, Current);
  v10 = v9;
  if (!v3 || !v9)
  {
LABEL_19:
    v4 = 1;
    if (!v3)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

  if (CFDateCompare(v9, v3, 0) == kCFCompareLessThan)
  {
    v13 = ne_log_obj();
    v4 = 2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEBUG, "Current time before valid time", buf, 2u);
    }
  }

  else
  {
    if (!v7 || CFDateCompare(v10, v7, 0) != kCFCompareGreaterThan)
    {
      v4 = 1;
      goto LABEL_35;
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_DEBUG, "Current time after valid time", buf, 2u);
    }

    v4 = 3;
  }

  if (nelog_is_info_logging_enabled())
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v14 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
    if (v14)
    {
      v15 = v14;
      CFCalendarDecomposeAbsoluteTime(v14, v2, "yMdHm", &v20 + 4, &v20, &v19 + 4, &v19, &v18);
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        v22 = HIDWORD(v20);
        v23 = 1024;
        v24 = v20;
        v25 = 1024;
        v26 = HIDWORD(v19);
        v27 = 1024;
        v28 = v19;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_INFO, "Certificate not valid before yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
      }

      CFCalendarDecomposeAbsoluteTime(v15, v6, "yMdHm", &v20 + 4, &v20, &v19 + 4, &v19, &v18);
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        v22 = HIDWORD(v20);
        v23 = 1024;
        v24 = v20;
        v25 = 1024;
        v26 = HIDWORD(v19);
        v27 = 1024;
        v28 = v19;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_INFO, "Certificate not valid after yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
      }

      CFRelease(v15);
    }
  }

LABEL_35:
  CFRelease(v3);
  if (v7)
  {
LABEL_21:
    CFRelease(v7);
  }

LABEL_22:
  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

BOOL NEIsInterfaceWIFI(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = socket(2, 2, 0);
  if (v1 < 0)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LODWORD(v8[0]) = 136315138;
    *(v8 + 4) = "NEIsInterfaceWIFI";
    v4 = "%s: Failed to open socket";
    v5 = v8;
LABEL_10:
    _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
    goto LABEL_7;
  }

  memset(v8, 0, 44);
  __strlcpy_chk();
  if (ioctl(v1, 0xC02C6938uLL, v8) != -1)
  {
    close(v1);
    return (v8[1] & 0xE0) == 128;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v7 = "NEIsInterfaceWIFI";
    v4 = "%s: Failed to get media";
    v5 = buf;
    goto LABEL_10;
  }

LABEL_7:
  close(v1);
  return 0;
}

ifaddrs *NEGetInterfaceType(const char *a1, _BYTE *a2, BOOL *a3)
{
  v10 = 0;
  *a2 = 0;
  *a3 = 0;
  v6 = 0;
  if (!getifaddrs(&v10))
  {
    v7 = v10;
    if (v10)
    {
      v6 = v10;
      while (1)
      {
        ifa_name = v6->ifa_name;
        if (ifa_name)
        {
          if (!strcmp(ifa_name, a1))
          {
            break;
          }
        }

        v6 = v6->ifa_next;
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      v6 = v6->ifa_addr->sa_data[2];
      if (v6 == 255)
      {
        *a2 = 0;
      }

      else if (v6 == 6)
      {
        *a2 = 1;
        *a3 = NEIsInterfaceWIFI(a1);
        v7 = v10;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_13:
    MEMORY[0x1C68E5D60](v7);
  }

  return v6;
}

void *NECopyInterfaceAddress(const char *a1, int a2)
{
  v11 = 0;
  p_ifa_next = 0;
  if (getifaddrs(&v11))
  {
    return p_ifa_next;
  }

  v5 = v11;
  if (!v11)
  {
    p_ifa_next = 0;
    goto LABEL_15;
  }

  p_ifa_next = &v11->ifa_next;
  while (1)
  {
    v6 = p_ifa_next[1];
    if (!v6)
    {
      goto LABEL_9;
    }

    if (strcmp(v6, a1))
    {
      goto LABEL_9;
    }

    v7 = p_ifa_next[3];
    if (v7[1] != a2)
    {
      goto LABEL_9;
    }

    if (a2 == 2)
    {
      break;
    }

    if (a2 == 30)
    {
      v8 = 30;
      v9 = 8;
      goto LABEL_14;
    }

LABEL_9:
    p_ifa_next = *p_ifa_next;
    if (!p_ifa_next)
    {
      goto LABEL_15;
    }
  }

  v8 = 2;
  v9 = 4;
LABEL_14:
  p_ifa_next = NECreateAddressStringFromBuffer(&v7[v9], *v7, v8);
  v5 = v11;
LABEL_15:
  MEMORY[0x1C68E5D60](v5);
  return p_ifa_next;
}

uint64_t NEGetInterfaceForAddress(unsigned __int8 *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (v2 == 30)
  {
    if (*a1 <= 0x1Bu)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 2 && *a1 < 0x10u)
  {
LABEL_4:
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, "Address passed to NEGetInterfaceForAddress is too short", buf, 2u);
    }

    return 0;
  }

  v17 = 0;
  if (getifaddrs(&v17) < 0)
  {
    v11 = *__error();
    if (strerror_r(v11, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v18 = 67109378;
      *v19 = v11;
      *&v19[4] = 2080;
      *&v19[6] = buf;
      _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, "getifaddrs failed: [%d] %s", v18, 0x12u);
    }

    return 0;
  }

  v4 = v17;
  if (!v17)
  {
    return 0;
  }

  v5 = a1[1];
  while (1)
  {
    ifa_addr = v4->ifa_addr;
    if (v5 != ifa_addr->sa_family)
    {
      goto LABEL_19;
    }

    if (v5 == 30)
    {
      break;
    }

    if (v5 == 2 && *(a1 + 1) == *&ifa_addr->sa_data[2])
    {
      goto LABEL_29;
    }

LABEL_19:
    v4 = v4->ifa_next;
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v8 = *&ifa_addr->sa_data[6];
  v7 = *&ifa_addr[1].sa_len;
  if (*(a1 + 1) != v8 || *(a1 + 2) != v7)
  {
    goto LABEL_19;
  }

LABEL_29:
  v10 = if_nametoindex(v4->ifa_name);
  if (!v10)
  {
    v14 = *__error();
    if (strerror_r(v14, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      ifa_name = v4->ifa_name;
      *v18 = 136315650;
      *v19 = ifa_name;
      *&v19[8] = 1024;
      *&v19[10] = v14;
      v20 = 2080;
      v21 = buf;
      _os_log_fault_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_FAULT, "Failed to get an interface index for interface %s: [%d] %s", v18, 0x1Cu);
    }

LABEL_20:
    v10 = 0;
  }

  if (v17)
  {
    MEMORY[0x1C68E5D60]();
  }

  return v10;
}

uint64_t NEIsValidInterface(const char *a1)
{
  v7 = 0;
  if (getifaddrs(&v7))
  {
    return 0;
  }

  v3 = v7;
  if (v7)
  {
    v4 = v7;
    while (1)
    {
      ifa_name = v4->ifa_name;
      if (ifa_name)
      {
        if (!strcmp(ifa_name, a1))
        {
          break;
        }
      }

      v4 = v4->ifa_next;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v2 = 1;
  }

  else
  {
LABEL_8:
    v2 = 0;
  }

  MEMORY[0x1C68E5D60](v3);
  return v2;
}

BOOL NEIsWildcardAddress(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 == 30)
  {
    if (*a1 >= 0x1Cu && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 4))
    {
      v2 = 20;
      return *&a1[v2] == 0;
    }
  }

  else if (v1 == 2 && *a1 > 0xFu)
  {
    v2 = 4;
    return *&a1[v2] == 0;
  }

  return 0;
}

BOOL NEIsLoopbackAddress(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 == 30)
  {
    if (*a1 >= 0x1Cu && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 4))
    {
      v2 = 0x1000000;
      v3 = 20;
      return *&a1[v3] == v2;
    }
  }

  else if (v1 == 2 && *a1 > 0xFu)
  {
    v2 = 16777343;
    v3 = 4;
    return *&a1[v3] == v2;
  }

  return 0;
}

uint64_t NEGetEntitlement(void *a1)
{
  if (a1)
  {
    if (MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(a1);
      if (count)
      {
        v5 = count;
        v2 = 0;
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(a1, v6);
          if (string)
          {
            v8 = string;
            v9 = strlen(string);
            if (strncmp(v8, "packet-tunnel-provider", v9))
            {
              if (!strncmp(v8, "app-proxy-provider", v9))
              {
                goto LABEL_24;
              }

              if (!strncmp(v8, "content-filter-provider", v9))
              {
                goto LABEL_25;
              }

              if (!strncmp(v8, "dns-proxy", v9))
              {
                goto LABEL_26;
              }

              if (!strncmp(v8, "dns-settings", v9))
              {
                v2 = v2 | 0x40;
                goto LABEL_29;
              }

              if (!strncmp(v8, "relay", v9))
              {
                v2 = v2 | 0x80;
                goto LABEL_29;
              }

              if (strncmp(v8, "packet-tunnel-provider-systemextension", v9))
              {
                if (strncmp(v8, "app-proxy-provider-systemextension", v9))
                {
                  if (strncmp(v8, "content-filter-provider-systemextension", v9))
                  {
                    if (strncmp(v8, "dns-proxy-systemextension", v9))
                    {
                      if (!strncmp(v8, "app-push-provider", v9))
                      {
                        v2 = v2 | 0x20;
                      }

                      else if (!strncmp(v8, "hotspot-provider", v9))
                      {
                        v2 = v2 | 0x100;
                      }

                      else if (!strncmp(v8, "url-filter-provider", v9))
                      {
                        v2 = v2 | 0x200;
                      }

                      else
                      {
                        v2 = v2;
                      }

                      goto LABEL_29;
                    }

LABEL_26:
                    v2 = v2 | 0x10;
                    goto LABEL_29;
                  }

LABEL_25:
                  v2 = v2 | 4;
                  goto LABEL_29;
                }

LABEL_24:
                v2 = v2 | 2;
                goto LABEL_29;
              }
            }

            v2 = v2 | 1;
          }

LABEL_29:
          if (v5 == ++v6)
          {
            return v2;
          }
        }
      }
    }
  }

  return 0;
}

CFStringRef NECopySynthesizedIPv6Address(const __CFString *a1, int a2)
{
  v13 = 0;
  v4 = 0;
  if (NEGetAddressFamilyFromString(a1) != 30)
  {
    v12 = a2;
    v5 = nw_nat64_copy_prefixes();
    if (v5 < 1)
    {
      v4 = 0;
      v7 = 0;
    }

    else
    {
      v6 = v5;
      v7 = NECreateAddressStructFromString(a1, 0, 0);
      if (v7)
      {
        v8 = 0;
        v9 = 16 * v6;
        while (1)
        {
          *&v11.isa = xmmword_1C0DDAA50;
          *(&v11.info + 4) = *(&xmmword_1C0DDAA50 + 12);
          if (nw_nat64_synthesize_v6())
          {
            break;
          }

          v8 += 16;
          if (v9 == v8)
          {
            goto LABEL_7;
          }
        }

        v4 = NECreateAddressString(&v11);
      }

      else
      {
LABEL_7:
        v4 = 0;
      }
    }

    if (v13)
    {
      free(v13);
      v13 = 0;
    }

    if (v7)
    {
      free(v7);
    }
  }

  return v4;
}

const char *inputNotification2String(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "network changed";
  }

  else
  {
    return off_1E812B870[a1 - 1];
  }
}

void ne_filter_request_connection(os_unfair_lock_s *a1, unsigned int a2, int a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a2 < 8)
    {
      os_unfair_lock_lock(a1 + 1);
      v9 = _Block_copy(a4);
      v10 = &a1[8 * a2];
      v11 = v10 + 2;
      v12 = *&v10[6]._os_unfair_lock_opaque;
      if (v12)
      {
        atomic_fetch_add(a1, 1u);
        dispatch_retain(v12);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = __ne_filter_request_connection_block_invoke;
        v22[3] = &unk_1E812B8A8;
        v22[4] = v9;
        v22[5] = a1;
        v22[6] = v11;
        v22[7] = v12;
        v13 = v22;
        v14 = v12;
      }

      else
      {
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_create("Filter provider connection waiter queue", v15);
        *&v11[4]._os_unfair_lock_opaque = v16;
        dispatch_suspend(v16);
        atomic_fetch_add(a1, 1u);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = __ne_filter_request_connection_block_invoke_2;
        v21[3] = &unk_1E812B8D0;
        v21[5] = a1;
        v21[6] = v11;
        v21[4] = v9;
        if (ne_filter_connection_queue_onceToken != -1)
        {
          dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
        }

        v14 = ne_filter_connection_queue_filter_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __ne_filter_request_connection_block_invoke_3;
        block[3] = &unk_1E812B8F8;
        v19 = a2;
        v20 = a3;
        block[4] = v21;
        block[5] = a1;
        v13 = block;
      }

      dispatch_async(v14, v13);
      os_unfair_lock_unlock(a1 + 1);
    }

    else
    {
      v6 = a4[2];

      v6(a4, 0);
    }
  }

  else
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v24 = "ne_filter_request_connection";
      _os_log_fault_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_FAULT, "%s called with null completionHandler", buf, 0xCu);
    }
  }
}

void __ne_filter_request_connection_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 56));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 40);

    free(v2);
  }
}

void __ne_filter_request_connection_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  dispatch_resume(*(*(a1 + 48) + 16));
  dispatch_release(*(*(a1 + 48) + 16));
  *(*(a1 + 48) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 40);

    free(v2);
  }
}

void __ne_filter_request_connection_block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 >= 8)
  {
    v3 = v2[2];
    v4 = *(a1 + 32);

    v3(v4, 0);
    return;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 52);
  os_unfair_lock_lock((v5 + 4));
  if (*(v5 + 264))
  {
    goto LABEL_13;
  }

  if (get_current_notify_pid())
  {
    getpid();
    v7 = "com.apple.nesessionmanager.content-filter";
    if (sandbox_check())
    {
      v8 = ne_log_obj();
      v7 = "com.apple.nesessionmanager";
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "com.apple.nesessionmanager";
        _os_log_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_INFO, "Filter falling back to Mach service %s", &buf, 0xCu);
      }
    }

    atomic_fetch_add(v5, 1u);
    if (ne_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
    }

    mach_service = xpc_connection_create_mach_service(v7, ne_filter_connection_queue_filter_queue, 2uLL);
    xpc_connection_set_context(mach_service, v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_filter_request_xpc_connection_block_invoke;
    handler[3] = &__block_descriptor_tmp_20;
    handler[4] = mach_service;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    *(v5 + 264) = mach_service;
LABEL_13:
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "SessionClientType", 2);
    xpc_dictionary_set_int64(v10, "SessionConfigType", 4);
    xpc_dictionary_set_int64(v10, "command", 1);
    xpc_dictionary_set_uint64(v10, "control-unit", v6);
    v11 = _Block_copy(v2);
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v6;
      _os_log_debug_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_DEBUG, "Filter requesting xpc connection to control unit %u", &buf, 8u);
    }

    v13 = *(v5 + 264);
    if (ne_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v17 = __ne_filter_request_xpc_connection_block_invoke_24;
    v18 = &unk_1E812B9C0;
    v21 = v6;
    v22 = v1;
    v19 = v11;
    v20 = v5;
    xpc_connection_send_message_with_reply(v13, v10, ne_filter_connection_queue_filter_queue, &buf);
    xpc_release(v10);
    os_unfair_lock_unlock((v5 + 4));
    return;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "Session manager not running, cannot filter", &buf, 2u);
  }

  os_unfair_lock_unlock((v5 + 4));
  (v2[2])(v2, 0);
}

void __ne_filter_request_xpc_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  context = xpc_connection_get_context(*(a1 + 32));
  if (a2)
  {
    v5 = context;
    if (context)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        xpc_connection_set_context(*(a1 + 32), 0);
        os_unfair_lock_lock(v5 + 1);
        v6 = *(v5 + 33);
        if (v6)
        {
          xpc_connection_cancel(v6);
          xpc_release(*(v5 + 33));
          *(v5 + 33) = 0;
        }

        os_unfair_lock_unlock(v5 + 1);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {

          free(v5);
        }
      }
    }
  }
}

void __ne_filter_request_xpc_connection_block_invoke_24(uint64_t a1, xpc_object_t xdict)
{
  v29 = *MEMORY[0x1E69E9840];
  length = 0;
  if (xdict && MEMORY[0x1C68E6D80](xdict) == MEMORY[0x1E69E9E98])
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 48);
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
    *buf = 67109378;
    v26 = v12;
    v27 = 2080;
    v28 = string;
    v14 = "Filter got an error on the XPC connection when requesting endpoint to control unit %u: %s";
    goto LABEL_32;
  }

  value = xpc_dictionary_get_value(xdict, "new-connection");
  if (!value)
  {
    int64 = xpc_dictionary_get_int64(xdict, "error");
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 48);
    if ((int64 - 1) > 4)
    {
      v11 = "None";
    }

    else
    {
      v11 = off_1E812B9E0[int64 - 1];
    }

    *buf = 67109378;
    v26 = v10;
    v27 = 2080;
    v28 = v11;
    v14 = "Filter failed to get endpoint to control unit %u: %s";
LABEL_32:
    _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    goto LABEL_12;
  }

  v5 = xpc_connection_create_from_endpoint(value);
  if (v5)
  {
    v6 = v5;
    data = xpc_dictionary_get_data(xdict, "crypto-key", &length);
    goto LABEL_13;
  }

  v15 = xpc_dictionary_get_int64(xdict, "error");
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a1 + 48);
    if ((v15 - 1) > 4)
    {
      v22 = "None";
    }

    else
    {
      v22 = off_1E812B9E0[v15 - 1];
    }

    *buf = 67109378;
    v26 = v21;
    v27 = 2080;
    v28 = v22;
    v14 = "Filter failed to create connection to unit %u: %s";
    goto LABEL_32;
  }

LABEL_12:
  data = 0;
  v6 = 0;
LABEL_13:
  os_unfair_lock_lock((*(a1 + 40) + 4));
  v16 = *(a1 + 40) + 32 * *(a1 + 52);
  *(v16 + 8) = v6;
  v17 = v16 + 8;
  if (v6)
  {
    atomic_fetch_add(*(a1 + 40), 1u);
    if (ne_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
    }

    xpc_connection_set_target_queue(v6, ne_filter_connection_queue_filter_queue);
    xpc_connection_set_context(v6, *(a1 + 40));
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_filter_request_xpc_connection_block_invoke_28;
    handler[3] = &__block_descriptor_tmp_29_412;
    handler[4] = v6;
    handler[5] = *(a1 + 48);
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(v6);
  }

  if (data && length == 32)
  {
    inited = ne_filter_crypto_init_client(data);
    *(v17 + 24) = inited;
    if (!inited)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "Filter failed to init client crypto";
LABEL_25:
        _os_log_error_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
      }
    }
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Filter failed to retrieve client crypto key";
      goto LABEL_25;
    }
  }

  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
}

void __ne_filter_request_xpc_connection_block_invoke_28(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  context = xpc_connection_get_context(*(a1 + 32));
  if (context)
  {
    v5 = context;
    if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        v16[0] = 67109120;
        v16[1] = v15;
        _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "Got an error on the Filter XPC connection to unit %u", v16, 8u);
      }

      xpc_connection_set_context(*(a1 + 32), 0);
      os_unfair_lock_lock(v5 + 1);
      v10 = &v5[32 * *(a1 + 44)];
      v13 = *(v10 + 1);
      v12 = v10 + 8;
      v11 = v13;
      if (v13)
      {
        xpc_connection_cancel(v11);
        xpc_release(*v12);
        *v12 = 0;
      }

      v14 = *(v12 + 3);
      if (v14)
      {
        free(v14);
        *(v12 + 3) = 0;
      }

      os_unfair_lock_unlock(v5 + 1);
      if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
      {
        free(v5);
      }
    }

    else
    {
      uuid = xpc_dictionary_get_uuid(a2, "flow-uuid");
      if (uuid)
      {
        v7 = uuid;
        os_unfair_lock_lock(v5 + 1);
        v8 = *(v5 + 34);
        if (v8)
        {
          while (uuid_compare(v7, v8))
          {
            v8 = *(v8 + 184);
            if (!v8)
            {
              goto LABEL_8;
            }
          }

          ne_filter_protocol_retain(v8);
          os_unfair_lock_unlock(v5 + 1);
          ne_filter_protocol_handle_message(v8, a2, *(a1 + 40));

          ne_filter_protocol_release(v8);
        }

        else
        {
LABEL_8:

          os_unfair_lock_unlock(v5 + 1);
        }
      }
    }
  }
}

dispatch_queue_t __ne_filter_connection_queue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("ne.filter", v0);
  ne_filter_connection_queue_filter_queue = result;
  return result;
}

uint64_t ne_filter_copy_connection(os_unfair_lock_s *a1, unsigned int a2)
{
  if (a2 > 7)
  {
    return 0;
  }

  os_unfair_lock_lock(a1 + 1);
  v5 = &a1[8 * a2];
  v2 = *&v5[2]._os_unfair_lock_opaque;
  if (v2)
  {
    xpc_retain(*&v5[2]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(a1 + 1);
  return v2;
}

BOOL ne_filter_sign_data(os_unfair_lock_s *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, _DWORD *a11)
{
  v11 = 0;
  if (a1 && a2 <= 7)
  {
    os_unfair_lock_lock(a1 + 1);
    v20 = *&a1[8 * a2 + 8]._os_unfair_lock_opaque;
    if (v20)
    {
      v11 = ne_filter_crypto_sign_data(v20, a3, a4, a5, a6, a7, a8, a9, a10, a11) == 0;
    }

    else
    {
      v11 = 1;
    }

    os_unfair_lock_unlock(a1 + 1);
  }

  return v11;
}

void ne_filter_send_message(os_unfair_lock_s *a1, unsigned int a2, void *a3, void *a4)
{
  v6 = ne_filter_copy_connection(a1, a2);
  if (v6)
  {
    v7 = v6;
    if (a4)
    {
      if (ne_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
      }

      xpc_connection_send_message_with_reply(v7, a3, ne_filter_connection_queue_filter_queue, a4);
    }

    else
    {
      xpc_connection_send_message(v6, a3);
    }

    xpc_release(v7);
  }
}

uint64_t ne_filter_stats_init(uint64_t a1)
{
  *(a1 + 288) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("Filter stats reporting queue", v2);
  *(a1 + 312) = 0;
  *(a1 + 320) = v3;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1 + 296;
  info = 0;
  result = mach_timebase_info(&info);
  v5 = 1000000;
  if (!result && info.numer && info.denom)
  {
    v5 = ((1000000000 * info.denom / info.numer * 0x20C49BA5E353F7CFuLL) >> 64) >> 7;
  }

  *(a1 + 328) = v5;
  return result;
}

_OWORD *ne_filter_allocate_globals()
{
  v0 = malloc_type_malloc(0x150uLL, 0x10A00403A9E6ACAuLL);
  v1 = v0;
  if (v0)
  {
    v0[19] = 0u;
    v0[20] = 0u;
    v0[17] = 0u;
    v0[18] = 0u;
    v0[15] = 0u;
    v0[16] = 0u;
    v0[13] = 0u;
    v0[14] = 0u;
    v0[11] = 0u;
    v0[12] = 0u;
    v0[9] = 0u;
    v0[10] = 0u;
    v0[7] = 0u;
    v0[8] = 0u;
    v0[5] = 0u;
    v0[6] = 0u;
    v0[3] = 0u;
    v0[4] = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
    atomic_fetch_add(v0, 1u);
    *(v0 + 34) = 0;
    *(v0 + 35) = v0 + 17;
    ne_filter_stats_init(v0);
  }

  return v1;
}

void ne_filter_deallocate_globals(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 288));
  dispatch_release(*(a2 + 320));
  v3 = *(a2 + 312);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a2 + 312));
    *(a2 + 312) = 0;
  }

  os_unfair_lock_unlock((a2 + 288));
  if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
  {

    free(a2);
  }
}

void *ne_filter_set_test_provider_factory(void *result)
{
  if (result)
  {
    result = _Block_copy(result);
    g_testProviderFactory = result;
  }

  return result;
}

void ne_filter_register_flow(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  os_unfair_lock_lock((a1 + 4));
  v4 = *(a1 + 272);
  *(v3 + 184) = v4;
  if (v4)
  {
    v5 = (v4 + 192);
  }

  else
  {
    v5 = (a1 + 280);
  }

  *v5 = v3 + 184;
  *(a1 + 272) = v3;
  *(v3 + 192) = a1 + 272;
  *(v3 + 120) |= 0x10000u;

  os_unfair_lock_unlock((a1 + 4));
}

void ne_filter_unregister_flow(os_unfair_lock_s *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(v2 + 122))
  {
    os_unfair_lock_lock(a1 + 1);
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);
    v6 = a1 + 70;
    if (v4)
    {
      v6 = v4 + 48;
    }

    *&v6->_os_unfair_lock_opaque = v5;
    *v5 = v4;
    *(v2 + 120) &= ~0x10000u;

    os_unfair_lock_unlock(a1 + 1);
  }
}

void ne_filter_stats_report(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(v36, 0, sizeof(v36));
  v2 = mach_absolute_time();
  os_unfair_lock_lock((a1 + 288));
  v3 = *(a1 + 296);
  if (!v3)
  {
    goto LABEL_29;
  }

  do
  {
    v4 = *(v3 + 144);
    if (!v4)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v5 = atomic_load((v3 + 104));
      v6 = atomic_load((v3 + 112));
      v7 = *(v4 + 4);
      if (v7 > 7)
      {
        goto LABEL_20;
      }

      if (!*(v4 + 80))
      {
        goto LABEL_20;
      }

      v8 = (v2 - *(v4 + 136)) / *(a1 + 328);
      if (v8 <= (*(v4 + 80) * 0.95) || *(v4 + 120) >= v5 && *(v4 + 128) >= v6)
      {
        goto LABEL_20;
      }

      if (!*(v36 + v7))
      {
        break;
      }

LABEL_11:
      v10 = xpc_dictionary_create(0, 0, 0);
      if (!v10)
      {
        v17 = ne_log_obj();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v18 = v17;
        v19 = "Stats Report - failed to create xpc dictionary for stats message";
        goto LABEL_28;
      }

      v11 = v10;
      xpc_dictionary_set_uuid(v10, "flow-uuid", v3);
      xpc_dictionary_set_uint64(v11, "byte-count-inbound", v5);
      xpc_dictionary_set_uint64(v11, "byte-count-outbound", v6);
      if ((*(v4 + 144) & 0x100) == 0)
      {
        v12 = *(v3 + 64);
        if (v12)
        {
          if (nw_endpoint_get_type(v12) == nw_endpoint_type_address)
          {
            address = nw_endpoint_get_address(*(v3 + 64));
            if (address)
            {
              xpc_dictionary_set_data(v11, "local-addr", address, address->sa_len);
              *(v4 + 144) |= 0x100u;
            }
          }
        }
      }

      xpc_array_append_value(*(v36 + *(v4 + 4)), v11);
      xpc_release(v11);
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v4 + 4);
        v16 = *(v4 + 136);
        *buf = 67110144;
        v27 = v15;
        v28 = 2048;
        v29 = v5;
        v30 = 2048;
        v31 = v6;
        v32 = 2048;
        v33 = v16;
        v34 = 2048;
        v35 = v8;
        _os_log_debug_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_DEBUG, "Stats Report collected (client %d) - in %llu out %llu (client ts %llu - elapsed msecs %llu)", buf, 0x30u);
      }

      *(v4 + 120) = v5;
      *(v4 + 128) = v6;
      *(v4 + 136) = mach_absolute_time();
LABEL_20:
      v4 = *(v4 + 152);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    v9 = xpc_array_create(0, 0);
    if (v9)
    {
      *(v36 + *(v4 + 4)) = v9;
      goto LABEL_11;
    }

    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v18 = v20;
    v19 = "Stats Report - failed to create xpc array for stats message";
LABEL_28:
    _os_log_error_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
LABEL_25:
    v3 = *(v3 + 200);
  }

  while (v3);
LABEL_29:
  for (i = 0; i != 8; ++i)
  {
    v22 = *(v36 + i);
    if (v22)
    {
      v23 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v23, "command", 12);
      xpc_dictionary_set_value(v23, "stats-report-statistics", v22);
      ne_filter_send_message(a1, i, v23, 0);
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        count = xpc_array_get_count(v22);
        *buf = 67109376;
        v27 = i;
        v28 = 2048;
        v29 = count;
        _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, "Stats Report (client %d) - reported %zu stats", buf, 0x12u);
      }

      xpc_release(v23);
      xpc_release(v22);
    }
  }

  os_unfair_lock_unlock((a1 + 288));
}

uint64_t ne_filter_stats_report_register(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  os_unfair_lock_lock((a1 + 288));
  v4 = *(a1 + 296);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = 0;
  do
  {
    v5 |= v4 == v3;
    v4 = *(v4 + 200);
  }

  while (v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
LABEL_6:
    *(v3 + 200) = 0;
    v7 = *(a1 + 304);
    *(v3 + 208) = v7;
    *v7 = v3;
    *(a1 + 304) = v3 + 200;
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_DEBUG, "Stats toggle - INSERTED flow", buf, 2u);
    }

    v6 = 1;
  }

  if (*(a1 + 296) && !*(a1 + 312))
  {
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 320));
    *(a1 + 312) = v9;
    if (v9)
    {
      atomic_fetch_add(a1, 1u);
      v10 = *(a1 + 312);
      v11 = dispatch_time(0, 200000000);
      dispatch_source_set_timer(v10, v11, 0xBEBC200uLL, 0);
      v12 = *(a1 + 312);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __ne_filter_stats_report_register_block_invoke;
      handler[3] = &__block_descriptor_tmp_12_436;
      handler[4] = a1;
      dispatch_source_set_event_handler(v12, handler);
      v13 = *(a1 + 312);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __ne_filter_stats_report_register_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_13_437;
      v16[4] = a1;
      dispatch_source_set_cancel_handler(v13, v16);
      dispatch_activate(*(a1 + 312));
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "ne_filter_stats_report_register - dispatch_source_create failed", buf, 2u);
      }
    }
  }

  os_unfair_lock_unlock((a1 + 288));
  return v6;
}

void __ne_filter_stats_report_register_block_invoke_2(uint64_t a1)
{
  if (atomic_fetch_add(*(a1 + 32), 0xFFFFFFFF) == 1)
  {
    free(*(a1 + 32));
  }
}

uint64_t ne_filter_stats_report_unregister(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  os_unfair_lock_lock((a1 + 288));
  v4 = *(a1 + 296);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 |= v4 == v3;
      v4 = *(v4 + 200);
    }

    while (v4);
    if (v5)
    {
      v6 = *(v3 + 200);
      v7 = *(v3 + 208);
      v8 = (a1 + 304);
      if (v6)
      {
        v8 = (v6 + 208);
      }

      *v8 = v7;
      *v7 = v6;
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "Stats toggle - REMOVED flow", v12, 2u);
      }
    }

    if (!*(a1 + 296))
    {
      v10 = *(a1 + 312);
      if (v10)
      {
        dispatch_source_cancel(v10);
        dispatch_release(*(a1 + 312));
        *(a1 + 312) = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((a1 + 288));
  return v5 & 1;
}

void ne_url_filter_request_connection(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = a3[2];

    v4(a3, 0);
  }

  else
  {
    os_unfair_lock_lock((a1 + 4));
    v6 = _Block_copy(a3);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add(a1, 1u);
      dispatch_retain(v7);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __ne_url_filter_request_connection_block_invoke;
      v15[3] = &unk_1E812BA10;
      v15[4] = v6;
      v15[5] = a1;
      v15[6] = a1 + 8;
      v15[7] = v7;
      v8 = v15;
      v9 = v7;
    }

    else
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("URL Filter provider connection waiter queue", v10);
      *(a1 + 16) = v11;
      dispatch_suspend(v11);
      atomic_fetch_add(a1, 1u);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __ne_url_filter_request_connection_block_invoke_2;
      v14[3] = &unk_1E812BA38;
      v14[5] = a1;
      v14[6] = a1 + 8;
      v14[4] = v6;
      if (ne_url_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
      }

      v9 = ne_url_filter_connection_queue_url_filter_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __ne_url_filter_request_connection_block_invoke_3;
      block[3] = &unk_1E812BA60;
      v13 = 0;
      block[4] = v14;
      block[5] = a1;
      v8 = block;
    }

    dispatch_async(v9, v8);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void __ne_url_filter_request_connection_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 56));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 40);

    free(v2);
  }
}

void __ne_url_filter_request_connection_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  dispatch_resume(*(*(a1 + 48) + 8));
  dispatch_release(*(*(a1 + 48) + 8));
  *(*(a1 + 48) + 8) = 0;
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 40);

    free(v2);
  }
}

void __ne_url_filter_request_connection_block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  os_unfair_lock_lock((v2 + 4));
  if (v1)
  {
    return;
  }

  if (*(v2 + 24))
  {
    goto LABEL_10;
  }

  if (get_current_notify_pid())
  {
    getpid();
    v4 = "com.apple.nesessionmanager.content-filter";
    if (sandbox_check())
    {
      v5 = ne_log_obj();
      v4 = "com.apple.nesessionmanager";
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "ne_url_filter_request_xpc_connection";
        *&buf[12] = 2080;
        *&buf[14] = "com.apple.nesessionmanager";
        _os_log_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_INFO, "%s: URL Filter falling back to Mach service %s", buf, 0x16u);
      }
    }

    atomic_fetch_add(v2, 1u);
    if (ne_url_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
    }

    mach_service = xpc_connection_create_mach_service(v4, ne_url_filter_connection_queue_url_filter_queue, 2uLL);
    xpc_connection_set_context(mach_service, v2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_url_filter_request_xpc_connection_block_invoke;
    handler[3] = &__block_descriptor_tmp_42_451;
    handler[4] = mach_service;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    *(v2 + 24) = mach_service;
LABEL_10:
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "SessionClientType", 2);
    xpc_dictionary_set_int64(v7, "SessionConfigType", 10);
    xpc_dictionary_set_int64(v7, "command", 1);
    v8 = _Block_copy(v3);
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "ne_url_filter_request_xpc_connection";
      _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "%s: URL Filter requesting xpc connection", buf, 0xCu);
    }

    v10 = *(v2 + 24);
    if (ne_url_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __ne_url_filter_request_xpc_connection_block_invoke_45;
    v14 = &unk_1E812BC28;
    v15 = v8;
    v16 = v2;
    xpc_connection_send_message_with_reply(v10, v7, ne_url_filter_connection_queue_url_filter_queue, buf);
    xpc_release(v7);
    os_unfair_lock_unlock((v2 + 4));
    return;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "ne_url_filter_request_xpc_connection";
    _os_log_error_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_ERROR, "%s: Session manager not running, cannot filter", buf, 0xCu);
  }

  os_unfair_lock_unlock((v2 + 4));
  v3[2](v3, 0);
}

void __ne_url_filter_request_xpc_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  context = xpc_connection_get_context(*(a1 + 32));
  if (a2)
  {
    v5 = context;
    if (context)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        xpc_connection_set_context(*(a1 + 32), 0);
        os_unfair_lock_lock(v5 + 1);
        v6 = *(v5 + 3);
        if (v6)
        {
          xpc_connection_cancel(v6);
          xpc_release(*(v5 + 3));
          *(v5 + 3) = 0;
        }

        os_unfair_lock_unlock(v5 + 1);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {

          free(v5);
        }
      }
    }
  }
}

void __ne_url_filter_request_xpc_connection_block_invoke_45(uint64_t a1, xpc_object_t xdict)
{
  v18 = *MEMORY[0x1E69E9840];
  if (xdict && MEMORY[0x1C68E6D80](xdict) == MEMORY[0x1E69E9E98])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
      *buf = 136315394;
      v15 = "ne_url_filter_request_xpc_connection_block_invoke";
      v16 = 2080;
      v17 = string;
      v12 = "%s: URL Filter got an error on the XPC connection when requesting endpoint: %s";
LABEL_23:
      _os_log_error_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "new-connection");
    if (value)
    {
      v5 = xpc_connection_create_from_endpoint(value);
      if (v5)
      {
        goto LABEL_13;
      }

      int64 = xpc_dictionary_get_int64(xdict, "error");
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if ((int64 - 1) > 3)
        {
          v8 = "None";
        }

        else
        {
          v8 = off_1E812BCB8[int64 - 1];
        }

        *buf = 136315394;
        v15 = "ne_url_filter_request_xpc_connection_block_invoke";
        v16 = 2080;
        v17 = v8;
        v12 = "%s: URL Filter failed to create connection: %s";
        goto LABEL_23;
      }
    }

    else
    {
      v9 = xpc_dictionary_get_int64(xdict, "error");
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if ((v9 - 1) > 3)
        {
          v10 = "None";
        }

        else
        {
          v10 = off_1E812BCB8[v9 - 1];
        }

        *buf = 136315394;
        v15 = "ne_url_filter_request_xpc_connection_block_invoke";
        v16 = 2080;
        v17 = v10;
        v12 = "%s: URL Filter failed to get endpoint: %s";
        goto LABEL_23;
      }
    }
  }

  v5 = 0;
LABEL_13:
  os_unfair_lock_lock((*(a1 + 40) + 4));
  *(*(a1 + 40) + 8) = v5;
  if (v5)
  {
    atomic_fetch_add(*(a1 + 40), 1u);
    if (ne_url_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
    }

    xpc_connection_set_target_queue(v5, ne_url_filter_connection_queue_url_filter_queue);
    xpc_connection_set_context(v5, *(a1 + 40));
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_url_filter_request_xpc_connection_block_invoke_47;
    handler[3] = &__block_descriptor_tmp_48_463;
    handler[4] = v5;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_activate(v5);
  }

  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
}

void __ne_url_filter_request_xpc_connection_block_invoke_47(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  context = xpc_connection_get_context(*(a1 + 32));
  if (a2)
  {
    v5 = context;
    if (context)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = 136315138;
          v9 = "ne_url_filter_request_xpc_connection_block_invoke";
          _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "%s: Got an error on the URL Filter XPC connection", &v8, 0xCu);
        }

        xpc_connection_set_context(*(a1 + 32), 0);
        os_unfair_lock_lock(v5 + 1);
        v7 = *(v5 + 1);
        if (v7)
        {
          xpc_connection_cancel(v7);
          xpc_release(*(v5 + 1));
          *(v5 + 1) = 0;
        }

        os_unfair_lock_unlock(v5 + 1);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          free(v5);
        }
      }
    }
  }
}

dispatch_queue_t __ne_url_filter_connection_queue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("ne.urlfilter", v0);
  ne_url_filter_connection_queue_url_filter_queue = result;
  return result;
}

void ne_url_filter_send_message(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = ne_url_filter_copy_connection(a1, a2);
  if (v6)
  {
    v7 = v6;
    if (a4)
    {
      if (ne_url_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
      }

      xpc_connection_send_message_with_reply(v7, a3, ne_url_filter_connection_queue_url_filter_queue, a4);
    }

    else
    {
      xpc_connection_send_message(v6, a3);
    }

    xpc_release(v7);
  }
}

uint64_t ne_url_filter_copy_connection(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 4));
  v2 = *(a1 + 8);
  if (v2)
  {
    xpc_retain(*(a1 + 8));
  }

  os_unfair_lock_unlock((a1 + 4));
  return v2;
}

BOOL ne_url_filter_should_fail_closed()
{
  v12 = *MEMORY[0x1E69E9840];
  check = 0;
  v0 = ne_url_filter_should_fail_closed_current_info_token;
  if (ne_url_filter_should_fail_closed_current_info_token < 0)
  {
    if (notify_register_check("com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed", &ne_url_filter_should_fail_closed_current_info_token))
    {
      goto LABEL_6;
    }

    v0 = ne_url_filter_should_fail_closed_current_info_token;
    v4 = 0;
    if (ne_url_filter_should_fail_closed_current_info_token < 0)
    {
      v1 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
  }

  if (notify_check(v0, &check))
  {
LABEL_4:
    notify_cancel(ne_url_filter_should_fail_closed_current_info_token);
LABEL_6:
    v1 = 0;
    ne_url_filter_should_fail_closed_current_info_token = -1;
    v4 = 0;
    goto LABEL_7;
  }

  if (check)
  {
    if (notify_get_state(ne_url_filter_should_fail_closed_current_info_token, &v4))
    {
      goto LABEL_4;
    }

    v1 = v4;
  }

  else
  {
    v1 = ne_url_filter_should_fail_closed_current_shouldFailClosed;
    v4 = ne_url_filter_should_fail_closed_current_shouldFailClosed;
  }

LABEL_7:
  if (v1 != ne_url_filter_should_fail_closed_current_shouldFailClosed)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "ne_url_filter_should_fail_closed";
      v8 = 2048;
      v9 = ne_url_filter_should_fail_closed_current_shouldFailClosed;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEFAULT, "%s: URL Filter shouldfailClosed changed from %llu to %llu", buf, 0x20u);
    }

    v1 = v4;
    ne_url_filter_should_fail_closed_current_shouldFailClosed = v4;
  }

  return v1 != 0;
}

BOOL ne_url_prefilter_check_info_changed()
{
  v13 = *MEMORY[0x1E69E9840];
  check = 0;
  v0 = ne_url_prefilter_check_info_changed_current_info_token;
  if (ne_url_prefilter_check_info_changed_current_info_token < 0)
  {
    if (notify_register_check("com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready", &ne_url_prefilter_check_info_changed_current_info_token))
    {
      goto LABEL_6;
    }

    v0 = ne_url_prefilter_check_info_changed_current_info_token;
    v5 = 0;
    if (ne_url_prefilter_check_info_changed_current_info_token < 0)
    {
      v1 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  if (notify_check(v0, &check))
  {
LABEL_4:
    notify_cancel(ne_url_prefilter_check_info_changed_current_info_token);
LABEL_6:
    v1 = 0;
    ne_url_prefilter_check_info_changed_current_info_token = -1;
    v5 = 0;
    goto LABEL_7;
  }

  if (check)
  {
    if (notify_get_state(ne_url_prefilter_check_info_changed_current_info_token, &v5))
    {
      goto LABEL_4;
    }

    v1 = v5;
  }

  else
  {
    v1 = ne_url_prefilter_check_info_changed_current_timestamp;
    v5 = ne_url_prefilter_check_info_changed_current_timestamp;
  }

LABEL_7:
  v2 = ne_url_prefilter_check_info_changed_current_timestamp;
  if (v1 != ne_url_prefilter_check_info_changed_current_timestamp)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "ne_url_prefilter_check_info_changed";
      v9 = 2048;
      v10 = ne_url_prefilter_check_info_changed_current_timestamp;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEFAULT, "%s: Prefilter info timestamp changed from %llu to %llu", buf, 0x20u);
    }

    ne_url_prefilter_check_info_changed_current_timestamp = v5;
  }

  return v1 != v2;
}

BOOL ne_url_prefilter_contains(_BOOL8 result, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "ne_url_prefilter_contains";
    v10 = 2080;
    v11 = v3;
    _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "%s: checking prefilter for url <%s>", &v8, 0x16u);
  }

  os_unfair_lock_lock(&ne_url_prefilter_lock);
  if (g_bloom_filter_ready != 1 || ne_url_prefilter_check_info_changed())
  {
    g_bloom_filter_ready = 0;
    if (!ne_bloom_filter_from_mmap("/private/var/db/urlPrefilter", "com.apple.networkextension.url-prefilter-data.", "com.apple.networkextension.url-prefilter-data.temp.", &g_bloom_filters, 1))
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "ne_url_prefilter_contains";
        v10 = 2080;
        v11 = "/private/var/db/urlPrefilter";
        _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "%s: Failed to init bloom filter from directory %s", &v8, 0x16u);
      }

      os_unfair_lock_unlock(&ne_url_prefilter_lock);
      return 0;
    }

    g_bloom_filter_ready = 1;
  }

  v5 = ne_parse_url_and_check(v3, &g_bloom_filters, 1u);
  os_unfair_lock_unlock(&ne_url_prefilter_lock);
  if (v5)
  {
    *a2 = v5;
    return 1;
  }

  v7 = ne_log_obj();
  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v8 = 136315394;
    v9 = "ne_url_prefilter_contains";
    v10 = 2080;
    v11 = v3;
    _os_log_debug_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_DEBUG, "%s: FINAL RESULT for <%s> - PREFILTER ALLOWED", &v8, 0x16u);
    return 0;
  }

  return result;
}

void ne_url_filter_handle_request(uint64_t a1, void *a2, void *a3, int a4, void *a5, uint64_t a6, _BOOL4 a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v16 = ne_log_obj();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (!a7)
  {
    if (!v17)
    {
      goto LABEL_6;
    }

    if (a2)
    {
      if (xpc_string_get_string_ptr(a2))
      {
        string_ptr = xpc_string_get_string_ptr(a2);
        v29 = strlen(string_ptr);
      }

      else
      {
        v29 = 0;
      }

      if (xpc_string_get_string_ptr(a2))
      {
        v22 = xpc_string_get_string_ptr(a2);
        if (!a3)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v29 = 0;
    }

    v22 = "<nil url>";
    if (!a3)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (xpc_string_get_string_ptr(a3))
    {
      v24 = xpc_string_get_string_ptr(a3);
      goto LABEL_36;
    }

LABEL_32:
    v24 = "<nil>";
LABEL_36:
    *buf = 136316163;
    v34 = "ne_url_filter_handle_request";
    v35 = 1024;
    *v36 = v29;
    *&v36[4] = 2081;
    *&v36[6] = v22;
    v37 = 2080;
    v38 = v24;
    v39 = 1024;
    LODWORD(v40) = a4;
    v25 = "%s: URLCHECK: SENDING URL CHECK REQ - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    v26 = v16;
    v27 = 44;
    goto LABEL_37;
  }

  if (!v17)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (xpc_string_get_string_ptr(a2))
    {
      v19 = xpc_string_get_string_ptr(a2);
      v28 = strlen(v19);
    }

    else
    {
      v28 = 0;
    }

    if (xpc_string_get_string_ptr(a2))
    {
      v20 = xpc_string_get_string_ptr(a2);
      if (!a3)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v28 = 0;
  }

  v20 = "<nil url>";
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_28:
  if (xpc_string_get_string_ptr(a3))
  {
    v23 = xpc_string_get_string_ptr(a3);
    goto LABEL_34;
  }

LABEL_29:
  v23 = "<nil>";
LABEL_34:
  *buf = 136316419;
  v34 = "ne_url_filter_handle_request";
  v35 = 2160;
  *v36 = 1752392040;
  *&v36[8] = 1040;
  *&v36[10] = v28;
  v37 = 2101;
  v38 = v20;
  v39 = 2080;
  v40 = v23;
  v41 = 1024;
  v42 = a4;
  v25 = "%s: URLCHECK: SENDING URL CHECK REQ - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
  v26 = v16;
  v27 = 54;
LABEL_37:
  _os_log_debug_impl(&dword_1C0DA5000, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
LABEL_6:
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "command", 2);
  xpc_dictionary_set_value(v18, "URL", a2);
  if (a5)
  {
    xpc_dictionary_set_value(v18, "URLPrefiltered", a5);
  }

  if (a3)
  {
    xpc_dictionary_set_value(v18, "bundleIdentifier", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_int64(v18, "PID", a4);
  }

  xpc_dictionary_set_BOOL(v18, "redactSensitiveLogs", a7);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = __ne_url_filter_handle_request_block_invoke;
  v30[3] = &unk_1E812BB28;
  v30[4] = a8;
  v30[5] = a6;
  v32 = a7;
  v30[6] = a2;
  v30[7] = a3;
  v31 = a4;
  ne_url_filter_send_message(a1, 0, v18, v30);
  xpc_release(v18);
}

void __ne_url_filter_handle_request_block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v62 = "ne_url_filter_handle_request_block_invoke";
    _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "%s: received url filter xpc reply", buf, 0xCu);
  }

  xpc_retain(a2);
  if (!a2)
  {
    goto LABEL_6;
  }

  if (MEMORY[0x1C68E6D80](a2) != MEMORY[0x1E69E9E98])
  {
    if (MEMORY[0x1C68E6D80](a2) != MEMORY[0x1E69E9E80])
    {
LABEL_6:
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v62 = "ne_url_filter_handle_request_block_invoke_2";
        _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, "%s: Got an invalid url filter reply", buf, 0xCu);
      }

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = __ne_url_filter_handle_request_block_invoke_21;
      v59[3] = &unk_1E812BAB0;
      v6 = *(a1 + 40);
      v59[4] = *(a1 + 32);
      v7 = v59;
      goto LABEL_30;
    }

    int64 = xpc_dictionary_get_int64(a2, "error");
    if (int64)
    {
      v10 = int64;
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v62 = "ne_url_filter_handle_request_block_invoke_2";
        v63 = 2048;
        *v64 = v10;
        _os_log_error_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_ERROR, "%s: Got an error in reply <%lld>", buf, 0x16u);
      }

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 0x40000000;
      v58[2] = __ne_url_filter_handle_request_block_invoke_24;
      v58[3] = &unk_1E812BAD8;
      v6 = *(a1 + 40);
      v58[4] = *(a1 + 32);
      v7 = v58;
      goto LABEL_30;
    }

    v12 = xpc_dictionary_get_int64(a2, "verdict");
    v13 = *(a1 + 68);
    v14 = ne_log_obj();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v12 == 1)
    {
      if (v13)
      {
        if (v15)
        {
          v16 = *(a1 + 48);
          if (v16)
          {
            if (xpc_string_get_string_ptr(v16))
            {
              string_ptr = xpc_string_get_string_ptr(*(a1 + 48));
              v17 = strlen(string_ptr);
            }

            else
            {
              v17 = 0;
            }

            v26 = *(a1 + 48);
            if (v26 && xpc_string_get_string_ptr(v26))
            {
              v52 = *(a1 + 48);
              if (v52)
              {
                v27 = xpc_string_get_string_ptr(v52);
              }

              else
              {
                v27 = 0;
              }

              goto LABEL_45;
            }
          }

          else
          {
            v17 = 0;
          }

          v27 = "<nil url>";
LABEL_45:
          v28 = *(a1 + 56);
          if (v28 && xpc_string_get_string_ptr(v28))
          {
            v29 = *(a1 + 56);
            if (v29)
            {
              v29 = xpc_string_get_string_ptr(v29);
            }
          }

          else
          {
            v29 = "<nil>";
          }

          v30 = *(a1 + 64);
          *buf = 136316419;
          v62 = "ne_url_filter_handle_request_block_invoke_2";
          v63 = 2160;
          *v64 = 1752392040;
          *&v64[8] = 1040;
          *&v64[10] = v17;
          v65 = 2101;
          v66 = v27;
          v67 = 2080;
          v68 = v29;
          v69 = 1024;
          v70 = v30;
          v31 = "%s: URLCHECK: FINAL RESULT: FILTER ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
LABEL_57:
          v38 = v14;
          v39 = 54;
LABEL_75:
          _os_log_debug_impl(&dword_1C0DA5000, v38, OS_LOG_TYPE_DEBUG, v31, buf, v39);
        }

LABEL_29:
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __ne_url_filter_handle_request_block_invoke_27;
        block[3] = &unk_1E812BB00;
        v6 = *(a1 + 40);
        block[4] = *(a1 + 32);
        v57 = v12;
        v7 = block;
        goto LABEL_30;
      }

      if (!v15)
      {
        goto LABEL_29;
      }

      v21 = *(a1 + 48);
      if (v21)
      {
        if (xpc_string_get_string_ptr(v21))
        {
          v40 = xpc_string_get_string_ptr(*(a1 + 48));
          v22 = strlen(v40);
        }

        else
        {
          v22 = 0;
        }

        v41 = *(a1 + 48);
        if (v41 && xpc_string_get_string_ptr(v41))
        {
          v54 = *(a1 + 48);
          if (v54)
          {
            v42 = xpc_string_get_string_ptr(v54);
          }

          else
          {
            v42 = 0;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v22 = 0;
      }

      v42 = "<nil url>";
LABEL_62:
      v43 = *(a1 + 56);
      if (v43 && xpc_string_get_string_ptr(v43))
      {
        v44 = *(a1 + 56);
        if (v44)
        {
          v44 = xpc_string_get_string_ptr(v44);
        }
      }

      else
      {
        v44 = "<nil>";
      }

      v45 = *(a1 + 64);
      *buf = 136316163;
      v62 = "ne_url_filter_handle_request_block_invoke";
      v63 = 1024;
      *v64 = v22;
      *&v64[4] = 2081;
      *&v64[6] = v42;
      v65 = 2080;
      v66 = v44;
      v67 = 1024;
      LODWORD(v68) = v45;
      v31 = "%s: URLCHECK: FINAL RESULT: FILTER ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
LABEL_74:
      v38 = v14;
      v39 = 44;
      goto LABEL_75;
    }

    if (v13)
    {
      if (!v15)
      {
        goto LABEL_29;
      }

      v18 = *(a1 + 48);
      if (v18)
      {
        if (xpc_string_get_string_ptr(v18))
        {
          v32 = xpc_string_get_string_ptr(*(a1 + 48));
          v19 = strlen(v32);
        }

        else
        {
          v19 = 0;
        }

        v33 = *(a1 + 48);
        if (v33 && xpc_string_get_string_ptr(v33))
        {
          v53 = *(a1 + 48);
          if (v53)
          {
            v34 = xpc_string_get_string_ptr(v53);
          }

          else
          {
            v34 = 0;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v19 = 0;
      }

      v34 = "<nil url>";
LABEL_53:
      v35 = *(a1 + 56);
      if (v35 && xpc_string_get_string_ptr(v35))
      {
        v36 = *(a1 + 56);
        if (v36)
        {
          v36 = xpc_string_get_string_ptr(v36);
        }
      }

      else
      {
        v36 = "<nil>";
      }

      v37 = *(a1 + 64);
      *buf = 136316419;
      v62 = "ne_url_filter_handle_request_block_invoke";
      v63 = 2160;
      *v64 = 1752392040;
      *&v64[8] = 1040;
      *&v64[10] = v19;
      v65 = 2101;
      v66 = v34;
      v67 = 2080;
      v68 = v36;
      v69 = 1024;
      v70 = v37;
      v31 = "%s: URLCHECK: FINAL RESULT: FILTER DENIED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
      goto LABEL_57;
    }

    if (!v15)
    {
      goto LABEL_29;
    }

    v23 = *(a1 + 48);
    if (v23)
    {
      if (xpc_string_get_string_ptr(v23))
      {
        v46 = xpc_string_get_string_ptr(*(a1 + 48));
        v24 = strlen(v46);
      }

      else
      {
        v24 = 0;
      }

      v47 = *(a1 + 48);
      if (v47 && xpc_string_get_string_ptr(v47))
      {
        v55 = *(a1 + 48);
        if (v55)
        {
          v48 = xpc_string_get_string_ptr(v55);
        }

        else
        {
          v48 = 0;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v24 = 0;
    }

    v48 = "<nil url>";
LABEL_70:
    v49 = *(a1 + 56);
    if (v49 && xpc_string_get_string_ptr(v49))
    {
      v50 = *(a1 + 56);
      if (v50)
      {
        v50 = xpc_string_get_string_ptr(v50);
      }
    }

    else
    {
      v50 = "<nil>";
    }

    v51 = *(a1 + 64);
    *buf = 136316163;
    v62 = "ne_url_filter_handle_request_block_invoke";
    v63 = 1024;
    *v64 = v24;
    *&v64[4] = 2081;
    *&v64[6] = v48;
    v65 = 2080;
    v66 = v50;
    v67 = 1024;
    LODWORD(v68) = v51;
    v31 = "%s: URLCHECK: FINAL RESULT: FILTER DENIED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    goto LABEL_74;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
    *buf = 136315394;
    v62 = "ne_url_filter_handle_request_block_invoke";
    v63 = 2080;
    *v64 = string;
    _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "%s: Got an error on the XPC connection when sending a url filter request: %s", buf, 0x16u);
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 0x40000000;
  v60[2] = __ne_url_filter_handle_request_block_invoke_18;
  v60[3] = &unk_1E812BA88;
  v6 = *(a1 + 40);
  v60[4] = *(a1 + 32);
  v7 = v60;
LABEL_30:
  dispatch_async(v6, v7);
  xpc_release(a2);
}

void __ne_url_filter_check_block_invoke(uint64_t a1, int a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(v3 + 8) + 24);
    v6 = *(*(v4 + 8) + 24);
    v7 = *(a1 + 96);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 100);
    v49[0] = MEMORY[0x1E69E9820];
    v11 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v49[1] = 0x40000000;
    v49[2] = __ne_url_filter_check_block_invoke_2;
    v49[3] = &unk_1E812BB50;
    v50 = v11;
    v51 = v3;
    v52 = v4;
    ne_url_filter_handle_request(v8, v5, v6, v7, v9, v12, v10, v49);
    goto LABEL_17;
  }

  should_fail_closed = ne_url_filter_should_fail_closed();
  v14 = *(a1 + 100);
  v15 = ne_log_obj();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (!should_fail_closed)
  {
    if (v14)
    {
      if (v16)
      {
        v19 = *(a1 + 80);
        if (v19)
        {
          v20 = strlen(*(a1 + 80));
        }

        else
        {
          v20 = 0;
          v19 = "<nil url>";
        }

        v36 = *(a1 + 88);
        v37 = *(a1 + 96);
        if (!v36)
        {
          v36 = "<nil>";
        }

        *buf = 136316419;
        v54 = "ne_url_filter_check_block_invoke";
        v55 = 2160;
        *v56 = 1752392040;
        *&v56[8] = 1040;
        *&v56[10] = v20;
        v57 = 2101;
        v58 = v19;
        v59 = 2080;
        v60 = v36;
        v61 = 1024;
        v62 = v37;
        v38 = "%s: URLCHECK: Allow (FailOpened): Failed url request - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
        v39 = v15;
        v40 = 54;
LABEL_41:
        _os_log_debug_impl(&dword_1C0DA5000, v39, OS_LOG_TYPE_DEBUG, v38, buf, v40);
      }
    }

    else if (v16)
    {
      v29 = *(a1 + 80);
      if (v29)
      {
        v30 = strlen(*(a1 + 80));
      }

      else
      {
        v30 = 0;
        v29 = "<nil url>";
      }

      v43 = *(a1 + 88);
      if (!v43)
      {
        v43 = "<nil>";
      }

      v44 = *(a1 + 96);
      *buf = 136316163;
      v54 = "ne_url_filter_check_block_invoke";
      v55 = 1024;
      *v56 = v30;
      *&v56[4] = 2081;
      *&v56[6] = v29;
      v57 = 2080;
      v58 = v43;
      v59 = 1024;
      LODWORD(v60) = v44;
      v38 = "%s: URLCHECK: Allow (FailOpened): Failed url request - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
      v39 = v15;
      v40 = 44;
      goto LABEL_41;
    }

    v21 = 1;
    goto LABEL_16;
  }

  if (v14)
  {
    if (v16)
    {
      v17 = *(a1 + 80);
      if (v17)
      {
        v18 = strlen(*(a1 + 80));
      }

      else
      {
        v18 = 0;
        v17 = "<nil url>";
      }

      v31 = *(a1 + 88);
      v32 = *(a1 + 96);
      if (!v31)
      {
        v31 = "<nil>";
      }

      *buf = 136316419;
      v54 = "ne_url_filter_check_block_invoke";
      v55 = 2160;
      *v56 = 1752392040;
      *&v56[8] = 1040;
      *&v56[10] = v18;
      v57 = 2101;
      v58 = v17;
      v59 = 2080;
      v60 = v31;
      v61 = 1024;
      v62 = v32;
      v33 = "%s: URLCHECK: Deny (FailClosed): Failed url request - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
      v21 = 2;
      v34 = v15;
      v35 = 54;
LABEL_36:
      _os_log_debug_impl(&dword_1C0DA5000, v34, OS_LOG_TYPE_DEBUG, v33, buf, v35);
      goto LABEL_16;
    }
  }

  else if (v16)
  {
    v27 = *(a1 + 80);
    if (v27)
    {
      v28 = strlen(*(a1 + 80));
    }

    else
    {
      v28 = 0;
      v27 = "<nil url>";
    }

    v41 = *(a1 + 88);
    if (!v41)
    {
      v41 = "<nil>";
    }

    v42 = *(a1 + 96);
    *buf = 136316163;
    v54 = "ne_url_filter_check_block_invoke";
    v55 = 1024;
    *v56 = v28;
    *&v56[4] = 2081;
    *&v56[6] = v27;
    v57 = 2080;
    v58 = v41;
    v59 = 1024;
    LODWORD(v60) = v42;
    v33 = "%s: URLCHECK: Deny (FailClosed): Failed url request - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    v21 = 2;
    v34 = v15;
    v35 = 44;
    goto LABEL_36;
  }

  v21 = 2;
LABEL_16:
  block[0] = MEMORY[0x1E69E9820];
  v22 = *(a1 + 32);
  v23 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v24 = *(*(a1 + 48) + 8);
  block[1] = 0x40000000;
  v25 = *(v24 + 24);
  block[2] = __ne_url_filter_check_block_invoke_34;
  block[3] = &unk_1E812BB78;
  v48 = v21;
  v46 = v23;
  v47 = v22;
  dispatch_async(v25, block);
LABEL_17:
  v26 = *(a1 + 72);
  if (v26)
  {
    xpc_release(v26);
  }
}

void __ne_url_filter_request_connections_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __ne_url_filter_request_connections_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = 136315394;
    v5 = "ne_url_filter_request_connections_block_invoke_2";
    v6 = 1024;
    v7 = v3;
    _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "%s: all url filter provider connection requests complete with success: %d", &v4, 0x12u);
  }

  g_waitingForXPCConnections = 0;
  (*(*(a1 + 32) + 16))();
  dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 56));
}

void __ne_url_filter_check_block_invoke_2(void *a1)
{
  (*(*(*(a1[4] + 8) + 40) + 16))();
  _Block_release(*(*(a1[4] + 8) + 40));
  dispatch_release(*(*(a1[5] + 8) + 24));
  xpc_release(*(*(a1[6] + 8) + 24));
  v2 = *(*(a1[7] + 8) + 24);

  xpc_release(v2);
}

void __ne_url_filter_check_block_invoke_34(void *a1)
{
  (*(*(*(a1[4] + 8) + 40) + 16))();
  _Block_release(*(*(a1[4] + 8) + 40));
  dispatch_release(*(*(a1[5] + 8) + 24));
  xpc_release(*(*(a1[6] + 8) + 24));
  v2 = *(*(a1[7] + 8) + 24);

  xpc_release(v2);
}

void __ne_url_filter_globals_block_invoke()
{
  ne_url_filter_globals_globals = 0u;
  unk_1EBE73C58 = 0u;
  atomic_fetch_add(&ne_url_filter_globals_globals, 1u);
}

uint64_t ne_filter_get_definition()
{
  if (ne_filter_get_definition_onceToken != -1)
  {
    dispatch_once(&ne_filter_get_definition_onceToken, &__block_literal_global_518);
  }

  return ne_filter_get_definition_filter_definition;
}

uint64_t __ne_filter_get_definition_block_invoke()
{
  if (ne_filter_protocol_identifier_onceToken != -1)
  {
    dispatch_once(&ne_filter_protocol_identifier_onceToken, &__block_literal_global_3);
  }

  ne_filter_get_definition_filter_definition = nw_protocol_definition_create_with_identifier();

  return MEMORY[0x1EEDD4290]();
}

uint64_t __ne_filter_protocol_identifier_block_invoke()
{
  ne_filter_protocol_identifier_g_hasNESMAccess = 1;
  g_filter_protocol_identifier = 0u;
  unk_1EBE73844 = 0u;
  qword_1EBE73854 = 0;
  g_filter_protocol_callbacks = 0u;
  *algn_1EBE73628 = 0u;
  xmmword_1EBE73638 = 0u;
  *&qword_1EBE73648 = 0u;
  xmmword_1EBE73658 = 0u;
  *&qword_1EBE73668 = 0u;
  xmmword_1EBE73678 = 0u;
  unk_1EBE73688 = 0u;
  xmmword_1EBE73698 = 0u;
  unk_1EBE736A8 = 0u;
  xmmword_1EBE736B8 = 0u;
  unk_1EBE736C8 = 0u;
  xmmword_1EBE736D8 = 0u;
  unk_1EBE736E8 = 0u;
  xmmword_1EBE736F8 = 0u;
  unk_1EBE73708 = 0u;
  xmmword_1EBE73718 = 0u;
  __strlcpy_chk();
  qword_1EBE73854 = 0x100000002;
  nw_protocol_set_default_one_to_one_callbacks();
  *&g_filter_protocol_callbacks = ne_filter_protocol_add_input_handler;
  *(&g_filter_protocol_callbacks + 1) = ne_filter_protocol_remove_input_handler;
  qword_1EBE73668 = ne_filter_protocol_get_input_frames;
  qword_1EBE73670 = ne_filter_protocol_get_output_frames;
  *&xmmword_1EBE73678 = ne_filter_protocol_finalize_output_frames;
  *&xmmword_1EBE73658 = ne_filter_protocol_input_available;
  *(&xmmword_1EBE73658 + 1) = ne_filter_protocol_output_available;
  qword_1EBE736D0 = ne_filter_protocol_input_finished;
  *&xmmword_1EBE736D8 = ne_filter_protocol_output_finished;
  qword_1EBE73630 = ne_filter_protocol_connect;
  *(&xmmword_1EBE73638 + 1) = ne_filter_protocol_connected;
  *&xmmword_1EBE73638 = ne_filter_protocol_disconnect;
  qword_1EBE73648 = ne_filter_protocol_disconnected;
  *&xmmword_1EBE73718 = nw_filter_protocol_reset;

  return MEMORY[0x1EEDD4750](&g_filter_protocol_identifier, ne_filter_protocol_create);
}

void ne_filter_protocol_create()
{
  v7 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 8uLL, 0xD8uLL, 0x10A0040BDFCEB50uLL))
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v6 = 216;
      _os_log_fault_impl(&dword_1C0DA5000, v0, OS_LOG_TYPE_FAULT, "posix_memalign(%zu) failed", buf, 0xCu);
    }
  }

  else
  {
    v1 = memptr;
    *memptr = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    v1[4] = 0u;
    v1[5] = 0u;
    v1[6] = 0u;
    v1[7] = 0u;
    v1[9] = 0u;
    v1[10] = 0u;
    v1[11] = 0u;
    v1[12] = 0u;
    v1[8] = 0u;
    *(v1 + 26) = 0;
    *(v1 + 2) = &g_filter_protocol_identifier;
    *(v1 + 3) = &g_filter_protocol_callbacks;
    *(v1 + 5) = v1;
    nw_frame_array_init();
    v2 = memptr;
    *(memptr + 18) = 0;
    v2 += 144;
    *(v2 + 1) = v2;
    atomic_fetch_add(v2 + 9, 1u);
    v3 = memptr;
    atomic_store(0, memptr + 13);
    atomic_store(0, v3 + 14);
  }
}

uint64_t nw_filter_protocol_reset(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *v63 = 136315138;
    *&v63[4] = "nw_filter_protocol_reset";
    v15 = "%s called with null protocol";
LABEL_37:
    _os_log_fault_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_FAULT, v15, v63, 0xCu);
    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *v63 = 136315138;
    *&v63[4] = "nw_filter_protocol_reset";
    v15 = "%s called with null filter";
    goto LABEL_37;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
    return 0;
  }

  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v5 = *(v3 + 176);
  v6 = ne_log_obj();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5 == 3)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(v3 + 80);
    if (v8)
    {
      LODWORD(v8) = nw_parameters_get_ip_protocol();
    }

    v9 = *(v3 + 160);
    if (v9)
    {
      v11 = v9[6];
      v12 = v9[7];
      v10 = v9[8];
      v13 = v9[9];
    }

    else
    {
      v10 = -1;
      v11 = -1;
      v12 = -1;
      v13 = -1;
    }

    v44 = *(v3 + 168);
    if (v44)
    {
      v46 = v44[6];
      v47 = v44[7];
      v45 = v44[8];
      v48 = v44[9];
    }

    else
    {
      v45 = -1;
      v46 = -1;
      v47 = -1;
      v48 = -1;
    }

    *v63 = 136317442;
    *&v63[4] = out;
    *&v63[12] = 1024;
    *&v63[14] = v8;
    *&v63[18] = 2048;
    *&v63[20] = v11;
    *&v63[28] = 2048;
    *&v63[30] = v12;
    *&v63[38] = 2048;
    v64 = v10;
    v65 = 2048;
    v66 = v13;
    v67 = 2048;
    v68 = v46;
    v69 = 2048;
    v70 = v47;
    v71 = 2048;
    v72 = v45;
    v73 = 2048;
    v74 = v48;
    v49 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]connection reset";
    v50 = v6;
    v51 = 98;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v41 = *(v3 + 80);
    if (v41)
    {
      LODWORD(v41) = nw_parameters_get_ip_protocol();
    }

    v42 = *(v3 + 176);
    if (v42 > 3)
    {
      v43 = "unknown";
    }

    else
    {
      v43 = off_1E812BFE0[v42];
    }

    *v63 = 136315650;
    *&v63[4] = out;
    *&v63[12] = 1024;
    *&v63[14] = v41;
    *&v63[18] = 2080;
    *&v63[20] = v43;
    v49 = "[filter %s %d %s] connection reset";
    v50 = v6;
    v51 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v50, OS_LOG_TYPE_DEBUG, v49, v63, v51);
LABEL_15:
  ne_filter_protocol_retain(a1);
  v17 = *(v3 + 144);
  if (v17)
  {
    do
    {
      ne_filter_data_protocol_send_finished(a1, v17, 0xBu);
      ne_filter_destroy_frames(*(a1 + 40));
      *(v17 + 40) = 0;
      *(v17 + 88) = 0u;
      *(v17 + 104) = 0u;
      *(v17 + 120) = 0u;
      *(v17 + 136) = 0;
      *(v17 + 144) &= 0xFE00u;
      v17 = *(v17 + 152);
    }

    while (v17);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  *(v3 + 176) = v18;
  if (!(*(*(a2 + 24) + 112))(a2) || nw_parameters_get_data_mode() != 1)
  {
    goto LABEL_29;
  }

  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v19 = *(v3 + 176);
  v20 = ne_log_obj();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19 == 3)
  {
    if (v21)
    {
      v22 = *(v3 + 80);
      if (v22)
      {
        LODWORD(v22) = nw_parameters_get_ip_protocol();
      }

      v23 = *(v3 + 160);
      if (v23)
      {
        v25 = v23[6];
        v26 = v23[7];
        v24 = v23[8];
        v27 = v23[9];
      }

      else
      {
        v24 = -1;
        v25 = -1;
        v26 = -1;
        v27 = -1;
      }

      v55 = *(v3 + 168);
      if (v55)
      {
        v57 = v55[6];
        v58 = v55[7];
        v56 = v55[8];
        v59 = v55[9];
      }

      else
      {
        v56 = -1;
        v57 = -1;
        v58 = -1;
        v59 = -1;
      }

      *v63 = 136317442;
      *&v63[4] = out;
      *&v63[12] = 1024;
      *&v63[14] = v22;
      *&v63[18] = 2048;
      *&v63[20] = v25;
      *&v63[28] = 2048;
      *&v63[30] = v26;
      *&v63[38] = 2048;
      v64 = v24;
      v65 = 2048;
      v66 = v27;
      v67 = 2048;
      v68 = v57;
      v69 = 2048;
      v70 = v58;
      v71 = 2048;
      v72 = v56;
      v73 = 2048;
      v74 = v59;
      v60 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]detected datagram connection, frame fragmentation disabled";
      v61 = v20;
      v62 = 98;
LABEL_61:
      _os_log_debug_impl(&dword_1C0DA5000, v61, OS_LOG_TYPE_DEBUG, v60, v63, v62);
    }
  }

  else if (v21)
  {
    v52 = *(v3 + 80);
    if (v52)
    {
      LODWORD(v52) = nw_parameters_get_ip_protocol();
    }

    v53 = *(v3 + 176);
    if (v53 > 3)
    {
      v54 = "unknown";
    }

    else
    {
      v54 = off_1E812BFE0[v53];
    }

    *v63 = 136315650;
    *&v63[4] = out;
    *&v63[12] = 1024;
    *&v63[14] = v52;
    *&v63[18] = 2080;
    *&v63[20] = v54;
    v60 = "[filter %s %d %s] detected datagram connection, frame fragmentation disabled";
    v61 = v20;
    v62 = 28;
    goto LABEL_61;
  }

  *(v3 + 120) |= 0x8000u;
LABEL_29:
  nw_release(*(v3 + 64));
  v28 = (*(*(a2 + 24) + 128))(a2);
  *(v3 + 64) = nw_retain(v28);
  nw_release(*(v3 + 72));
  v29 = (*(*(a2 + 24) + 136))(a2);
  *(v3 + 72) = nw_retain(v29);
  nw_release(*(v3 + 80));
  v30 = (*(*(a2 + 24) + 112))(a2);
  *(v3 + 80) = nw_retain(v30);
  atomic_store(0, (v3 + 104));
  atomic_store(0, (v3 + 112));
  *(v3 + 120) &= 0xFFFFC003;
  ne_filter_unregister_flow(*(v3 + 96), a1);
  MEMORY[0x1C68E6A10](v3);
  ne_filter_register_flow(*(v3 + 96), a1);
  v37 = *(a1 + 32);
  if (v37 && (v38 = *(v37 + 24)) != 0 && (v39 = *(v38 + 256)) != 0)
  {
    v16 = v39(v37, a1, v31, v32, v33, v34, v35, v36, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32]);
  }

  else
  {
    v16 = 1;
  }

  ne_filter_protocol_release(a1);
  return v16;
}

void ne_filter_protocol_retain(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = 136315138;
    v6 = "ne_filter_protocol_retain";
    v4 = "%s called with null protocol";
    goto LABEL_10;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = 136315138;
    v6 = "ne_filter_protocol_retain";
    v4 = "%s called with null filter";
LABEL_10:
    _os_log_fault_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_FAULT, v4, &v5, 0xCu);
    return;
  }

  v2 = (v1 + 180);
  if (atomic_fetch_or(v2, 0))
  {
    atomic_fetch_add(v2, 1u);
  }
}

void ne_filter_data_protocol_send_finished(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *&length[11] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (v3 && atomic_fetch_or((v3 + 180), 0))
  {
    if (a3 == 9)
    {
      v8 = *(a2 + 144);
      *(a2 + 144) = v8 | 0x10;
      if ((v8 & 0x10) != 0)
      {
        return;
      }
    }

    else if (a3 == 10)
    {
      v7 = *(a2 + 144);
      *(a2 + 144) = v7 | 0x20;
      if ((v7 & 0x20) != 0)
      {
        return;
      }
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "command", a3);
    xpc_dictionary_set_uuid(v9, "flow-uuid", v3);
    if (a3 == 11)
    {
      v10 = atomic_load((v3 + 104));
      xpc_dictionary_set_uint64(v9, "byte-count-inbound", v10);
      v11 = atomic_load((v3 + 112));
      xpc_dictionary_set_uint64(v9, "byte-count-outbound", v11);
    }

    memset(length, 0, 36);
    if (ne_filter_generate_crypto_signature(*(a2 + 4), v3, &length[1], length, a3 == 11))
    {
      xpc_dictionary_set_data(v9, "crypto-signature", &length[1], length[0]);
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, "Failed to generate signature for finished message", buf, 2u);
      }
    }

    if (a3 == 11)
    {
      v13 = *(v3 + 96);
      v14 = *(a2 + 4);
      v15 = v9;
      v16 = 0;
    }

    else
    {
      atomic_fetch_add((v3 + 180), 1u);
      v13 = *(v3 + 96);
      v14 = *(a2 + 4);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __ne_filter_data_protocol_send_finished_block_invoke;
      v17[3] = &__block_descriptor_tmp_42_542;
      v17[4] = v3;
      v17[5] = a1;
      v18 = a3;
      v17[6] = a2;
      v16 = v17;
      v15 = v9;
    }

    ne_filter_send_message(v13, v14, v15, v16);
    xpc_release(v9);
  }
}

uint64_t ne_filter_destroy_frames(uint64_t a1)
{
  for (i = *(a1 + 144); i; i = *(i + 152))
  {
    nw_frame_array_foreach();
    nw_frame_array_foreach();
  }

  return nw_frame_array_foreach();
}

void ne_filter_protocol_release(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = (v1 + 180);
      if (atomic_fetch_or(v2, 0))
      {
        if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
        {

          ne_filter_protocol_destroy(a1);
        }
      }
    }
  }

  else
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_INFO, "protocol is null", v4, 2u);
    }
  }
}

void ne_filter_protocol_destroy(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  memset(out, 0, 37);
  uuid_unparse(v2, out);
  v3 = *(v2 + 176);
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 3)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 80);
    if (v6)
    {
      LODWORD(v6) = nw_parameters_get_ip_protocol();
    }

    v7 = *(v2 + 160);
    if (v7)
    {
      v9 = v7[6];
      v10 = v7[7];
      v8 = v7[8];
      v11 = v7[9];
    }

    else
    {
      v8 = -1;
      v9 = -1;
      v10 = -1;
      v11 = -1;
    }

    v19 = *(v2 + 168);
    if (v19)
    {
      v21 = v19[6];
      v22 = v19[7];
      v20 = v19[8];
      v23 = v19[9];
    }

    else
    {
      v20 = -1;
      v21 = -1;
      v22 = -1;
      v23 = -1;
    }

    v27 = 136317442;
    v28 = out;
    v29 = 1024;
    v30 = v6;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v11;
    v39 = 2048;
    v40 = v21;
    v41 = 2048;
    v42 = v22;
    v43 = 2048;
    v44 = v20;
    v45 = 2048;
    v46 = v23;
    v24 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]destroying filter";
    v25 = v4;
    v26 = 98;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v16 = *(v2 + 80);
    if (v16)
    {
      LODWORD(v16) = nw_parameters_get_ip_protocol();
    }

    v17 = *(v2 + 176);
    if (v17 > 3)
    {
      v18 = "unknown";
    }

    else
    {
      v18 = off_1E812BFE0[v17];
    }

    v27 = 136315650;
    v28 = out;
    v29 = 1024;
    v30 = v16;
    v31 = 2080;
    v32 = v18;
    v24 = "[filter %s %d %s] destroying filter";
    v25 = v4;
    v26 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEBUG, v24, &v27, v26);
LABEL_8:
  *(a1 + 40) = 0;
  nw_release(*(v2 + 64));
  nw_release(*(v2 + 72));
  nw_release(*(v2 + 80));
  nw_release(*(v2 + 88));
  *(v2 + 96) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  for (i = *(v2 + 144); i; i = *(v2 + 144))
  {
    v13 = i[19];
    v14 = i[20];
    v15 = (v13 + 160);
    if (!v13)
    {
      v15 = (v2 + 152);
    }

    *v15 = v14;
    *v14 = v13;
    free(i);
  }

  ne_filter_stats_toggle(a1, 0, 0);
  memset_s(v2, 0xD8uLL, 0, 0xD8uLL);
  free(v2);
}

void ne_filter_stats_toggle(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *(a2 + 80);
    if (a3)
    {
      if (v6 == a3)
      {
        return;
      }
    }

    else if (!v6)
    {
      return;
    }
  }

  if (a1)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      return;
    }

    if (!atomic_fetch_or((v7 + 180), 0))
    {
      return;
    }

    v8 = *(v7 + 96);
    if (!v8)
    {
      return;
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218240;
      v17 = a2;
      v18 = 2048;
      v19 = a3;
      _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "Stats toggle - client %lX frequency %llu", &v16, 0x16u);
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else if (a3)
    {
LABEL_12:
      if (a2 && *(a2 + 80) != a3)
      {
        v10 = 200;
        if (a3 > 0xC8)
        {
          v10 = a3;
        }

        *(a2 + 80) = v10;
        *(a2 + 136) = mach_absolute_time();
        if (ne_filter_stats_report_register(v8, a1))
        {
          atomic_fetch_add((v7 + 180), 1u);
        }
      }

      return;
    }

    if (!a2)
    {
      goto LABEL_30;
    }

    *(a2 + 80) = 0;
    v12 = *(v7 + 144);
    if (!v12)
    {
      goto LABEL_30;
    }

    v13 = 0;
    do
    {
      v13 |= *(v12 + 80) != 0;
      v12 = *(v12 + 152);
    }

    while (v12);
    if ((v13 & 1) == 0)
    {
LABEL_30:
      if (ne_filter_stats_report_unregister(v8, a1))
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = (v14 + 180);
          if (atomic_fetch_or(v15, 0))
          {
            if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
            {
              ne_filter_protocol_destroy(a1);
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "protocol is null", &v16, 2u);
    }
  }
}

uint64_t __ne_filter_destroy_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

uint64_t __ne_filter_destroy_frames_block_invoke_2(uint64_t a1, uint64_t a2)
{
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

uint64_t __ne_filter_destroy_frames_block_invoke_3(uint64_t a1, uint64_t a2)
{
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

BOOL ne_filter_generate_crypto_signature(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = 0u;
  *dst = 0u;
  memset(v36, 0, sizeof(v36));
  if (!a4)
  {
    return 0;
  }

  uuid_copy(dst, a2);
  DWORD2(v36[0]) = nw_parameters_get_server_mode() ^ 1;
  v10 = *(a2 + 64);
  if (!v10)
  {
    goto LABEL_10;
  }

  if (nw_endpoint_get_type(v10) != nw_endpoint_type_address)
  {
    goto LABEL_10;
  }

  address = nw_endpoint_get_address(*(a2 + 64));
  if (!address)
  {
    goto LABEL_10;
  }

  sa_family = address->sa_family;
  if (sa_family == 30)
  {
    v13 = *address;
    *(&v36[3] + 4) = *&address->sa_data[10];
    goto LABEL_9;
  }

  if (sa_family == 2)
  {
    v13 = *address;
LABEL_9:
    *(&v36[2] + 8) = v13;
  }

LABEL_10:
  v14 = *(a2 + 72);
  if (!v14)
  {
    goto LABEL_18;
  }

  type = nw_endpoint_get_type(v14);
  v16 = *(a2 + 72);
  if (type == nw_endpoint_type_address)
  {
    v17 = nw_endpoint_get_address(v16);
    if (v17)
    {
      v18 = v17->sa_family;
      if (v18 == 30)
      {
        v19 = *v17;
        *(&v36[1] + 8) = *&v17->sa_data[10];
        goto LABEL_20;
      }

      if (v18 == 2)
      {
        v19 = *v17;
LABEL_20:
        *(v36 + 12) = v19;
      }
    }

    parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
    goto LABEL_22;
  }

  if (nw_endpoint_get_type(v16) != nw_endpoint_type_host)
  {
LABEL_18:
    v21 = 0;
    goto LABEL_23;
  }

  ne_filter_create_wildcard_remote_sockaddr(buf, a2);
  *(v36 + 12) = *buf;
  *(&v36[1] + 8) = *&buf[12];
  parent_endpoint_domain = nw_endpoint_get_hostname(*(a2 + 72));
LABEL_22:
  v21 = parent_endpoint_domain;
LABEL_23:
  DWORD1(v36[4]) = nw_parameters_get_ip_protocol();
  DWORD2(v36[4]) = getpid();
  HIDWORD(v36[4]) = nw_parameters_get_pid();
  nw_parameters_get_proc_uuid();
  nw_parameters_get_e_proc_uuid();
  if (a5)
  {
    v22 = atomic_load((a2 + 104));
    v23 = atomic_load((a2 + 112));
    *(&v37 + 1) = v22;
    v38 = v23;
  }

  effective_bundle_id = nw_parameters_get_effective_bundle_id();
  url = nw_parameters_get_url();
  v26 = url;
  *a4 = 32;
  v27 = *(a2 + 96);
  if (effective_bundle_id)
  {
    v28 = strlen(effective_bundle_id);
    if (v26)
    {
      goto LABEL_27;
    }

LABEL_30:
    v29 = 0;
    if (v21)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v28 = 0;
  if (!url)
  {
    goto LABEL_30;
  }

LABEL_27:
  v29 = strlen(v26);
  if (v21)
  {
LABEL_28:
    v30 = strlen(v21);
    v31 = ne_filter_sign_data(v27, a1, dst, effective_bundle_id, v28, v26, v29, v21, v30, a3, a4);
    goto LABEL_32;
  }

LABEL_31:
  v31 = ne_filter_sign_data(v27, a1, dst, effective_bundle_id, v28, v26, v29, 0, 0, a3, a4);
LABEL_32:
  if (!v31)
  {
    v33 = ne_log_obj();
    result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_error_impl(&dword_1C0DA5000, v33, OS_LOG_TYPE_ERROR, "Failed to sign flow message", buf, 2u);
    return 0;
  }

  result = 1;
  if (*(a2 + 64))
  {
    *(a2 + 124) = 1;
  }

  return result;
}

uint64_t __ne_filter_data_protocol_send_finished_block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(*(a1 + 32), out);
  v4 = *(*(a1 + 32) + 176);
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v7[10];
      if (v8)
      {
        LODWORD(v8) = nw_parameters_get_ip_protocol();
        v7 = *(a1 + 32);
      }

      v9 = v7[20];
      if (v9)
      {
        v11 = v9[6];
        v12 = v9[7];
        v10 = v9[8];
        v13 = v9[9];
      }

      else
      {
        v10 = -1;
        v11 = -1;
        v12 = -1;
        v13 = -1;
      }

      v19 = v7[21];
      if (v19)
      {
        v21 = v19[6];
        v22 = v19[7];
        v20 = v19[8];
        v23 = v19[9];
      }

      else
      {
        v20 = -1;
        v21 = -1;
        v22 = -1;
        v23 = -1;
      }

      *buf = 136317442;
      v28 = out;
      v29 = 1024;
      v30 = v8;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v12;
      v35 = 2048;
      v36 = v10;
      v37 = 2048;
      v38 = v13;
      v39 = 2048;
      v40 = v21;
      v41 = 2048;
      v42 = v22;
      v43 = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v23;
      v24 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]received send-finish reply";
      v25 = v5;
      v26 = 98;
LABEL_20:
      _os_log_debug_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEBUG, v24, buf, v26);
    }
  }

  else if (v6)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 80);
    if (v16)
    {
      LODWORD(v16) = nw_parameters_get_ip_protocol();
      v15 = *(a1 + 32);
    }

    v17 = *(v15 + 176);
    if (v17 > 3)
    {
      v18 = "unknown";
    }

    else
    {
      v18 = off_1E812BFE0[v17];
    }

    *buf = 136315650;
    v28 = out;
    v29 = 1024;
    v30 = v16;
    v31 = 2080;
    v32 = v18;
    v24 = "[filter %s %d %s] received send-finish reply";
    v25 = v5;
    v26 = 28;
    goto LABEL_20;
  }

  xpc_retain(a2);
  return nw_queue_context_async();
}

void __ne_filter_data_protocol_send_finished_block_invoke_40(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  if (MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E98])
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x1E69E9E28]);
    v12 = 136315138;
    v13 = string;
    v3 = "Got an error on the XPC connection when sending a finished message: %s";
    v4 = v6;
    v5 = 12;
    goto LABEL_9;
  }

  if (!*(a1 + 32) || MEMORY[0x1C68E6D80]() != MEMORY[0x1E69E9E80])
  {
LABEL_5:
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v12) = 0;
    v3 = "Got an invalid finished message reply";
    v4 = v2;
    v5 = 2;
LABEL_9:
    _os_log_error_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_ERROR, v3, &v12, v5);
    goto LABEL_11;
  }

  ne_filter_process_verdict(*(a1 + 40), *(a1 + 56), *(a1 + 32), **(a1 + 48));
LABEL_11:
  xpc_release(*(a1 + 32));
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = (v9 + 180);
      if (atomic_fetch_or(v10, 0))
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          ne_filter_protocol_destroy(*(a1 + 40));
        }
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "protocol is null", &v12, 2u);
    }
  }
}

void ne_filter_process_verdict(void *a1, int a2, void *a3, int a4)
{
  v164 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1[5];
    if (v5 && atomic_fetch_or((v5 + 180), 0))
    {
      if (!a3 || MEMORY[0x1C68E6D80](a3) != MEMORY[0x1E69E9E80])
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v141 = 136315138;
          v142 = "";
          _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "Received invalid reply from %s, dropping", &v141, 0xCu);
        }

        return;
      }

      int64 = xpc_dictionary_get_int64(a3, "verdict-value");
      if (!int64)
      {
        v12 = xpc_dictionary_get_int64(a3, "error");
        v13 = v12;
        if (v12 != 6 && v12)
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v141 = 134218242;
            v142 = v13;
            v143 = 2080;
            *v144 = "";
            _os_log_error_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_ERROR, "Received error %llu from %s", &v141, 0x16u);
          }

          int64 = 2;
        }

        else
        {
          v14 = ne_log_obj();
          int64 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
          if (int64)
          {
            v15 = "system-internal";
            if (v13 == 6)
            {
              v15 = "gone-away";
            }

            v141 = 136315394;
            v142 = v15;
            v143 = 2080;
            *v144 = "";
            _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "Received error %s from %s", &v141, 0x16u);
            int64 = 0;
          }
        }
      }

      v17 = *(v5 + 144);
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        LOBYTE(v22) = 1;
        LOBYTE(v23) = 1;
        do
        {
          if (*v17 == a4)
          {
            if (!int64)
            {
              if (*(v17 + 40) == 3)
              {
                int64 = 1;
              }

              else
              {
                int64 = 2;
              }
            }

            *(v17 + 40) = int64;
            v24 = int64;
            v18 = v17;
          }

          else
          {
            v24 = *(v17 + 40);
          }

          v23 = (v24 != 0) & v23;
          v22 = (v24 == 1) & v22;
          if (v19)
          {
            v25 = 0;
          }

          else
          {
            v25 = v24 == 3;
          }

          if (v25)
          {
            v19 = v17;
          }

          if (v24 == 3)
          {
            v20 = v17;
          }

          v26 = v24 > 3 || v24 == 2;
          v21 |= v26;
          v17 = *(v17 + 152);
        }

        while (v17);
        if (v18)
        {
          if ((v22 & 1) == 0)
          {
            if ((v21 & 1) == 0)
            {
              v27 = (v5 + 176);
              if (v23)
              {
                *v27 = 3;
LABEL_51:
                *(v5 + 160) = v19;
                v29 = (v5 + 160);
                v27 = (v5 + 176);
                *(v5 + 168) = v20;
                v30 = (v5 + 168);
                goto LABEL_52;
              }

              *(v5 + 160) = v19;
              v29 = (v5 + 160);
              v63 = *(v5 + 176);
              *(v5 + 168) = v20;
              v30 = (v5 + 168);
              if (v63 != 2)
              {
LABEL_52:
                *(v18 + 48) = xpc_dictionary_get_uint64(a3, "input-pass-offset");
                *(v18 + 56) = xpc_dictionary_get_uint64(a3, "input-peek-offset");
                *(v18 + 64) = xpc_dictionary_get_uint64(a3, "output-pass-offset");
                *(v18 + 72) = xpc_dictionary_get_uint64(a3, "output-peek-offset");
                memset(out, 0, 37);
                uuid_unparse(v5, out);
                v31 = *(v5 + 176);
                v32 = ne_log_obj();
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
                if (v31 == 3)
                {
                  if (!v33)
                  {
                    goto LABEL_59;
                  }

                  v34 = *(v5 + 80);
                  if (v34)
                  {
                    LODWORD(v34) = nw_parameters_get_ip_protocol();
                  }

                  v35 = *v29;
                  if (*v29)
                  {
                    v37 = v35[6];
                    v38 = v35[7];
                    v36 = v35[8];
                    v39 = v35[9];
                  }

                  else
                  {
                    v36 = -1;
                    v37 = -1;
                    v38 = -1;
                    v39 = -1;
                  }

                  v91 = *v30;
                  if (*v30)
                  {
                    v93 = v91[6];
                    v94 = v91[7];
                    v92 = v91[8];
                    v95 = v91[9];
                  }

                  else
                  {
                    v92 = -1;
                    v93 = -1;
                    v94 = -1;
                    v95 = -1;
                  }

                  v109 = *(v18 + 40);
                  if (v109 > 3)
                  {
                    v110 = "unknown";
                  }

                  else
                  {
                    v110 = off_1E812BFE0[v109];
                  }

                  v141 = 136317954;
                  v142 = out;
                  v143 = 1024;
                  *v144 = v34;
                  *&v144[4] = 2048;
                  *&v144[6] = v37;
                  v145 = 2048;
                  v146 = v38;
                  v147 = 2048;
                  v148 = v36;
                  v149 = 2048;
                  v150 = v39;
                  v151 = 2048;
                  v152 = v93;
                  v153 = 2048;
                  v154 = v94;
                  v155 = 2048;
                  v156 = v92;
                  v157 = 2048;
                  v158 = v95;
                  v159 = 2080;
                  v160 = "";
                  v161 = 2080;
                  v162 = v110;
                  v111 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]new verdict from %s: %s";
                  v112 = v32;
                  v113 = 118;
                }

                else
                {
                  if (!v33)
                  {
                    goto LABEL_59;
                  }

                  v82 = *(v5 + 80);
                  if (v82)
                  {
                    LODWORD(v82) = nw_parameters_get_ip_protocol();
                  }

                  v83 = *v27;
                  if (v83 > 3)
                  {
                    v84 = "unknown";
                  }

                  else
                  {
                    v84 = off_1E812BFE0[v83];
                  }

                  v104 = *(v18 + 40);
                  if (v104 > 3)
                  {
                    v105 = "unknown";
                  }

                  else
                  {
                    v105 = off_1E812BFE0[v104];
                  }

                  v141 = 136316162;
                  v142 = out;
                  v143 = 1024;
                  *v144 = v82;
                  *&v144[4] = 2080;
                  *&v144[6] = v84;
                  v145 = 2080;
                  v146 = "";
                  v147 = 2080;
                  v148 = v105;
                  v111 = "[filter %s %d %s] new verdict from %s: %s";
                  v112 = v32;
                  v113 = 48;
                }

                _os_log_debug_impl(&dword_1C0DA5000, v112, OS_LOG_TYPE_DEBUG, v111, &v141, v113);
LABEL_59:
                if ((a2 & 0xFFFFFFFD) == 9)
                {
                  *(v18 + 144) = *(v18 + 144) & 0xFFAF | 0x40;
                }

                if ((a2 & 0xFFFFFFFE) == 0xA)
                {
                  *(v18 + 144) = *(v18 + 144) & 0xFF5F | 0x80;
                }

                uint64 = xpc_dictionary_get_uint64(a3, "stats-report-frequency");
                ne_filter_stats_toggle(a1, v18, uint64);
                if ((*(v18 + 144) & 2) == 0)
                {
                  if ((*v27 | 2) != 3)
                  {
                    goto LABEL_124;
                  }

                  ne_filter_send_approved_frames(v5, 0);
                  v41 = *(v18 + 144);
                  if ((v41 & 4) != 0)
                  {
                    if (*(v18 + 40) == 3 && (v41 & 0x40) == 0 && *(v18 + 64) != -1)
                    {
LABEL_81:
                      v51 = *(v5 + 120);
                      if ((v51 & 0x100) != 0)
                      {
                        if ((v51 & 0x400) != 0)
                        {
                          goto LABEL_88;
                        }
                      }

                      else if ((*(v5 + 120) & 0x430) != 0x10)
                      {
                        goto LABEL_88;
                      }

                      if ((nw_frame_array_is_empty() & 1) != 0 || *(v18 + 104) >= *(v18 + 64))
                      {
                        ne_filter_handle_output_finished(a1);
                      }

LABEL_88:
                      ne_filter_read_approved_frames(v5, 0);
                      v52 = *(v18 + 144);
                      if ((v52 & 8) != 0)
                      {
                        if (*(v18 + 40) == 3 && (v52 & 0x80) == 0 && *(v18 + 48) != -1)
                        {
LABEL_95:
                          v53 = *(v5 + 120);
                          if ((v53 & 0x200) != 0)
                          {
                            if ((v53 & 0x800) != 0)
                            {
                              goto LABEL_102;
                            }
                          }

                          else if ((*(v5 + 120) & 0x8C0) != 0x40)
                          {
                            goto LABEL_102;
                          }

                          if ((nw_frame_array_is_empty() & 1) != 0 || *(v18 + 88) >= *(v18 + 48))
                          {
                            ne_filter_handle_input_finished(a1, 0);
                          }

LABEL_102:
                          if ((*(v5 + 120) & 0x10) == 0 && (nw_frame_array_is_empty() & 1) == 0)
                          {
                            memset(out, 0, 37);
                            uuid_unparse(v5, out);
                            v54 = *(v5 + 176);
                            v55 = ne_log_obj();
                            v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
                            if (v54 == 3)
                            {
                              if (v56)
                              {
                                v57 = *(v5 + 80);
                                if (v57)
                                {
                                  LODWORD(v57) = nw_parameters_get_ip_protocol();
                                }

                                v58 = *v29;
                                if (*v29)
                                {
                                  v60 = v58[6];
                                  v61 = v58[7];
                                  v59 = v58[8];
                                  v62 = v58[9];
                                }

                                else
                                {
                                  v59 = -1;
                                  v60 = -1;
                                  v61 = -1;
                                  v62 = -1;
                                }

                                v133 = *v30;
                                if (*v30)
                                {
                                  v135 = v133[6];
                                  v136 = v133[7];
                                  v134 = v133[8];
                                  v137 = v133[9];
                                }

                                else
                                {
                                  v134 = -1;
                                  v135 = -1;
                                  v136 = -1;
                                  v137 = -1;
                                }

                                v141 = 136317442;
                                v142 = out;
                                v143 = 1024;
                                *v144 = v57;
                                *&v144[4] = 2048;
                                *&v144[6] = v60;
                                v145 = 2048;
                                v146 = v61;
                                v147 = 2048;
                                v148 = v59;
                                v149 = 2048;
                                v150 = v62;
                                v151 = 2048;
                                v152 = v135;
                                v153 = 2048;
                                v154 = v136;
                                v155 = 2048;
                                v156 = v134;
                                v157 = 2048;
                                v158 = v137;
                                v138 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending input available";
                                v139 = v55;
                                v140 = 98;
LABEL_197:
                                _os_log_debug_impl(&dword_1C0DA5000, v139, OS_LOG_TYPE_DEBUG, v138, &v141, v140);
                              }
                            }

                            else if (v56)
                            {
                              v130 = *(v5 + 80);
                              if (v130)
                              {
                                LODWORD(v130) = nw_parameters_get_ip_protocol();
                              }

                              v131 = *v27;
                              if (v131 > 3)
                              {
                                v132 = "unknown";
                              }

                              else
                              {
                                v132 = off_1E812BFE0[v131];
                              }

                              v141 = 136315650;
                              v142 = out;
                              v143 = 1024;
                              *v144 = v130;
                              *&v144[4] = 2080;
                              *&v144[6] = v132;
                              v138 = "[filter %s %d %s] sending input available";
                              v139 = v55;
                              v140 = 28;
                              goto LABEL_197;
                            }

                            ne_filter_protocol_input_available(v5);
                          }

LABEL_124:
                          memset(out, 0, 37);
                          uuid_unparse(v5, out);
                          v73 = *(v5 + 176);
                          v74 = ne_log_obj();
                          v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);
                          if (v73 == 3)
                          {
                            if (v75)
                            {
                              v76 = *(v5 + 80);
                              if (v76)
                              {
                                LODWORD(v76) = nw_parameters_get_ip_protocol();
                              }

                              v77 = *v29;
                              if (*v29)
                              {
                                v79 = v77[6];
                                v80 = v77[7];
                                v78 = v77[8];
                                v81 = v77[9];
                              }

                              else
                              {
                                v78 = -1;
                                v79 = -1;
                                v80 = -1;
                                v81 = -1;
                              }

                              v99 = *v30;
                              if (*v30)
                              {
                                v101 = v99[6];
                                v102 = v99[7];
                                v100 = v99[8];
                                v103 = v99[9];
                              }

                              else
                              {
                                v100 = -1;
                                v101 = -1;
                                v102 = -1;
                                v103 = -1;
                              }

                              v141 = 136317442;
                              v142 = out;
                              v143 = 1024;
                              *v144 = v76;
                              *&v144[4] = 2048;
                              *&v144[6] = v79;
                              v145 = 2048;
                              v146 = v80;
                              v147 = 2048;
                              v148 = v78;
                              v149 = 2048;
                              v150 = v81;
                              v151 = 2048;
                              v152 = v101;
                              v153 = 2048;
                              v154 = v102;
                              v155 = 2048;
                              v156 = v100;
                              v157 = 2048;
                              v158 = v103;
                              v106 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]finished processing new verdict";
                              v107 = v74;
                              v108 = 98;
LABEL_164:
                              _os_log_debug_impl(&dword_1C0DA5000, v107, OS_LOG_TYPE_DEBUG, v106, &v141, v108);
                            }
                          }

                          else if (v75)
                          {
                            v85 = *(v5 + 80);
                            if (v85)
                            {
                              LODWORD(v85) = nw_parameters_get_ip_protocol();
                            }

                            v86 = *v27;
                            if (v86 > 3)
                            {
                              v87 = "unknown";
                            }

                            else
                            {
                              v87 = off_1E812BFE0[v86];
                            }

                            v141 = 136315650;
                            v142 = out;
                            v143 = 1024;
                            *v144 = v85;
                            *&v144[4] = 2080;
                            *&v144[6] = v87;
                            v106 = "[filter %s %d %s] finished processing new verdict";
                            v107 = v74;
                            v108 = 28;
                            goto LABEL_164;
                          }

                          ne_filter_cleanup(a1);
                          return;
                        }
                      }

                      else if ((v52 & 0x80) == 0)
                      {
                        goto LABEL_95;
                      }

                      ne_filter_handle_input_finished(a1, 0);
                      goto LABEL_95;
                    }
                  }

                  else if ((v41 & 0x40) == 0)
                  {
                    goto LABEL_81;
                  }

                  ne_filter_handle_output_finished(a1);
                  goto LABEL_81;
                }

                memset(out, 0, 37);
                uuid_unparse(v5, out);
                v42 = *(v5 + 176);
                v43 = ne_log_obj();
                v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
                if (v42 == 3)
                {
                  if (!v44)
                  {
                    goto LABEL_75;
                  }

                  v45 = *(v5 + 80);
                  if (v45)
                  {
                    LODWORD(v45) = nw_parameters_get_ip_protocol();
                  }

                  v46 = *v29;
                  if (*v29)
                  {
                    v48 = v46[6];
                    v49 = v46[7];
                    v47 = v46[8];
                    v50 = v46[9];
                  }

                  else
                  {
                    v47 = -1;
                    v48 = -1;
                    v49 = -1;
                    v50 = -1;
                  }

                  v122 = *v30;
                  if (*v30)
                  {
                    v124 = v122[6];
                    v125 = v122[7];
                    v123 = v122[8];
                    v126 = v122[9];
                  }

                  else
                  {
                    v123 = -1;
                    v124 = -1;
                    v125 = -1;
                    v126 = -1;
                  }

                  v141 = 136317698;
                  v142 = out;
                  v143 = 1024;
                  *v144 = v45;
                  *&v144[4] = 2048;
                  *&v144[6] = v48;
                  v145 = 2048;
                  v146 = v49;
                  v147 = 2048;
                  v148 = v47;
                  v149 = 2048;
                  v150 = v50;
                  v151 = 2048;
                  v152 = v124;
                  v153 = 2048;
                  v154 = v125;
                  v155 = 2048;
                  v156 = v123;
                  v157 = 2048;
                  v158 = v126;
                  v159 = 2080;
                  v160 = "";
                  v127 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]received initial verdict from %s";
                  v128 = v43;
                  v129 = 108;
                }

                else
                {
                  if (!v44)
                  {
                    goto LABEL_75;
                  }

                  v96 = *(v5 + 80);
                  if (v96)
                  {
                    LODWORD(v96) = nw_parameters_get_ip_protocol();
                  }

                  v97 = *v27;
                  if (v97 > 3)
                  {
                    v98 = "unknown";
                  }

                  else
                  {
                    v98 = off_1E812BFE0[v97];
                  }

                  v141 = 136315906;
                  v142 = out;
                  v143 = 1024;
                  *v144 = v96;
                  *&v144[4] = 2080;
                  *&v144[6] = v98;
                  v145 = 2080;
                  v146 = "";
                  v127 = "[filter %s %d %s] received initial verdict from %s";
                  v128 = v43;
                  v129 = 38;
                }

                _os_log_debug_impl(&dword_1C0DA5000, v128, OS_LOG_TYPE_DEBUG, v127, &v141, v129);
LABEL_75:
                *(v18 + 144) &= ~2u;
                if (!ne_filter_protocol_connect(a1))
                {
                  ne_filter_protocol_drop_flow(a1);
                }

                goto LABEL_124;
              }

LABEL_114:
              memset(out, 0, 37);
              uuid_unparse(v5, out);
              v64 = *(v5 + 176);
              v65 = ne_log_obj();
              v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG);
              if (v64 == 3)
              {
                if (v66)
                {
                  v67 = *(v5 + 80);
                  if (v67)
                  {
                    LODWORD(v67) = nw_parameters_get_ip_protocol();
                  }

                  v68 = *v29;
                  if (*v29)
                  {
                    v70 = v68[6];
                    v71 = v68[7];
                    v69 = v68[8];
                    v72 = v68[9];
                  }

                  else
                  {
                    v69 = -1;
                    v70 = -1;
                    v71 = -1;
                    v72 = -1;
                  }

                  v114 = *v30;
                  if (*v30)
                  {
                    v116 = v114[6];
                    v117 = v114[7];
                    v115 = v114[8];
                    v118 = v114[9];
                  }

                  else
                  {
                    v115 = -1;
                    v116 = -1;
                    v117 = -1;
                    v118 = -1;
                  }

                  v141 = 136317442;
                  v142 = out;
                  v143 = 1024;
                  *v144 = v67;
                  *&v144[4] = 2048;
                  *&v144[6] = v70;
                  v145 = 2048;
                  v146 = v71;
                  v147 = 2048;
                  v148 = v69;
                  v149 = 2048;
                  v150 = v72;
                  v151 = 2048;
                  v152 = v116;
                  v153 = 2048;
                  v154 = v117;
                  v155 = 2048;
                  v156 = v115;
                  v157 = 2048;
                  v158 = v118;
                  v119 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]overall verdict is drop, dropping the flow";
                  v120 = v65;
                  v121 = 98;
LABEL_177:
                  _os_log_debug_impl(&dword_1C0DA5000, v120, OS_LOG_TYPE_DEBUG, v119, &v141, v121);
                }
              }

              else if (v66)
              {
                v88 = *(v5 + 80);
                if (v88)
                {
                  LODWORD(v88) = nw_parameters_get_ip_protocol();
                }

                v89 = *v27;
                if (v89 > 3)
                {
                  v90 = "unknown";
                }

                else
                {
                  v90 = off_1E812BFE0[v89];
                }

                v141 = 136315650;
                v142 = out;
                v143 = 1024;
                *v144 = v88;
                *&v144[4] = 2080;
                *&v144[6] = v90;
                v119 = "[filter %s %d %s] overall verdict is drop, dropping the flow";
                v120 = v65;
                v121 = 28;
                goto LABEL_177;
              }

              ne_filter_protocol_drop_flow(a1);
              return;
            }

LABEL_113:
            *(v5 + 176) = 2;
            v27 = (v5 + 176);
            *(v5 + 160) = v19;
            v29 = (v5 + 160);
            *(v5 + 168) = v20;
            v30 = (v5 + 168);
            goto LABEL_114;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v22 = 1;
      }

      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v141 = 136315138;
        v142 = "";
        _os_log_error_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_ERROR, "Failed to find the filter client for provider %s", &v141, 0xCu);
        if ((v22 & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if (!v22)
      {
        goto LABEL_113;
      }

      v18 = 0;
LABEL_50:
      *(v5 + 176) = 1;
      goto LABEL_51;
    }
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v141) = 0;
      _os_log_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_INFO, "protocol is null", &v141, 2u);
    }
  }
}

void ne_filter_protocol_drop_flow(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *v40 = 136315138;
    *&v40[4] = "ne_filter_protocol_drop_flow";
    v13 = "%s called with null protocol";
    goto LABEL_14;
  }

  v2 = a1[5];
  if (!v2)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *v40 = 136315138;
    *&v40[4] = "ne_filter_protocol_drop_flow";
    v13 = "%s called with null filter";
LABEL_14:
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, v13, v40, 0xCu);
    return;
  }

  if (!atomic_fetch_or((v2 + 180), 0))
  {
    return;
  }

  memset(out, 0, 37);
  uuid_unparse(v2, out);
  v3 = *(v2 + 176);
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 3)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *(v2 + 80);
    if (v6)
    {
      LODWORD(v6) = nw_parameters_get_ip_protocol();
    }

    v7 = *(v2 + 160);
    if (v7)
    {
      v9 = v7[6];
      v10 = v7[7];
      v8 = v7[8];
      v11 = v7[9];
    }

    else
    {
      v8 = -1;
      v9 = -1;
      v10 = -1;
      v11 = -1;
    }

    v32 = *(v2 + 168);
    if (v32)
    {
      v34 = v32[6];
      v35 = v32[7];
      v33 = v32[8];
      v36 = v32[9];
    }

    else
    {
      v33 = -1;
      v34 = -1;
      v35 = -1;
      v36 = -1;
    }

    *v40 = 136317442;
    *&v40[4] = out;
    *&v40[12] = 1024;
    *&v40[14] = v6;
    *&v40[18] = 2048;
    *&v40[20] = v9;
    *&v40[28] = 2048;
    *&v40[30] = v10;
    *&v40[38] = 2048;
    v41 = v8;
    v42 = 2048;
    v43 = v11;
    v44 = 2048;
    v45 = v34;
    v46 = 2048;
    v47 = v35;
    v48 = 2048;
    v49 = v33;
    v50 = 2048;
    v51 = v36;
    v37 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]drop flow";
    v38 = v4;
    v39 = 98;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v29 = *(v2 + 80);
    if (v29)
    {
      LODWORD(v29) = nw_parameters_get_ip_protocol();
    }

    v30 = *(v2 + 176);
    if (v30 > 3)
    {
      v31 = "unknown";
    }

    else
    {
      v31 = off_1E812BFE0[v30];
    }

    *v40 = 136315650;
    *&v40[4] = out;
    *&v40[12] = 1024;
    *&v40[14] = v29;
    *&v40[18] = 2080;
    *&v40[20] = v31;
    v37 = "[filter %s %d %s] drop flow";
    v38 = v4;
    v39 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v38, OS_LOG_TYPE_DEBUG, v37, v40, v39);
LABEL_16:
  v14 = a1[6];
  if (v14)
  {
    *(v2 + 176) = 2;
    for (i = *(v2 + 144); i; i = *(i + 152))
    {
      *(i + 40) = 2;
    }

    ne_filter_protocol_retain(a1);
    v22 = *(v2 + 120);
    if ((v22 & 0x80) == 0)
    {
      *(v2 + 120) = v22 | 0x80;
      v23 = *(v14 + 24);
      v24 = *(v23 + 56);
      if (v24)
      {
        v24(v14, a1, 57);
        v23 = *(v14 + 24);
      }

      v25 = *(v23 + 48);
      if (v25)
      {
        v25(v14, a1);
      }
    }

    v26 = *(v2 + 120);
    if ((v26 & 0x20) == 0)
    {
      *(v2 + 120) = v26 | 0x20;
      v27 = a1[4];
      if (v27)
      {
        v28 = *(*(v27 + 24) + 32);
        if (v28)
        {
          v28(v27, a1, v16, v17, v18, v19, v20, v21, *v40, *&v40[8], *&v40[16], *&v40[24], *&v40[32]);
        }
      }
    }

    ne_filter_cleanup(a1);
    ne_filter_protocol_release(a1);
  }
}

BOOL ne_filter_protocol_connect(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = ne_log_obj();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    v71 = 136315138;
    v72 = "ne_filter_protocol_connect";
    v10 = "%s called with null protocol";
LABEL_18:
    _os_log_fault_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_FAULT, v10, &v71, 0xCu);
    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v9 = ne_log_obj();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    v71 = 136315138;
    v72 = "ne_filter_protocol_connect";
    v10 = "%s called with null filter";
    goto LABEL_18;
  }

  if (!atomic_fetch_or((v2 + 180), 0))
  {
    return 0;
  }

  v3 = *(v2 + 120);
  *(v2 + 120) = v3 | 4;
  if ((v3 & 2) != 0)
  {
    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v11 = *(v2 + 176);
    v12 = ne_log_obj();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11 == 3)
    {
      if (v13)
      {
        v14 = *(v2 + 80);
        if (v14)
        {
          LODWORD(v14) = nw_parameters_get_ip_protocol();
        }

        v15 = *(v2 + 160);
        if (v15)
        {
          v17 = v15[6];
          v18 = v15[7];
          v16 = v15[8];
          v19 = v15[9];
        }

        else
        {
          v16 = -1;
          v17 = -1;
          v18 = -1;
          v19 = -1;
        }

        v45 = *(v2 + 168);
        if (v45)
        {
          v47 = v45[6];
          v48 = v45[7];
          v46 = v45[8];
          v49 = v45[9];
        }

        else
        {
          v46 = -1;
          v47 = -1;
          v48 = -1;
          v49 = -1;
        }

        v71 = 136317442;
        v72 = out;
        v73 = 1024;
        v74 = v14;
        v75 = 2048;
        v76 = v17;
        v77 = 2048;
        v78 = v18;
        v79 = 2048;
        v80 = v16;
        v81 = 2048;
        v82 = v19;
        v83 = 2048;
        v84 = v47;
        v85 = 2048;
        v86 = v48;
        v87 = 2048;
        v88 = v46;
        v89 = 2048;
        v90 = v49;
        v50 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]waiting for xpc connection";
LABEL_67:
        v51 = v12;
        v52 = 98;
        goto LABEL_68;
      }
    }

    else if (v13)
    {
      v39 = *(v2 + 80);
      if (v39)
      {
        LODWORD(v39) = nw_parameters_get_ip_protocol();
      }

      v40 = *(v2 + 176);
      if (v40 > 3)
      {
        v41 = "unknown";
      }

      else
      {
        v41 = off_1E812BFE0[v40];
      }

      v71 = 136315650;
      v72 = out;
      v73 = 1024;
      v74 = v39;
      v75 = 2080;
      v76 = v41;
      v50 = "[filter %s %d %s] waiting for xpc connection";
      goto LABEL_64;
    }

    return 1;
  }

  v4 = *(v2 + 176);
  if (v4 != 3 && v4 != 1)
  {
    if (!v4)
    {
      v20 = *(v2 + 144);
      if (v20)
      {
        result = 1;
        while (*(v20 + 40))
        {
          v20 = *(v20 + 152);
          if (!v20)
          {
            return result;
          }
        }

        v30 = *(v20 + 144);
        if ((v30 & 2) == 0)
        {
          *(v20 + 144) = v30 | 2;
          ne_filter_data_protocol_send_new_flow(a1, v20);
          return 1;
        }

        memset(out, 0, 37);
        uuid_unparse(v2, out);
        v31 = *(v2 + 176);
        v12 = ne_log_obj();
        v32 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v31 == 3)
        {
          if (!v32)
          {
            return 1;
          }

          v33 = *(v2 + 80);
          if (v33)
          {
            LODWORD(v33) = nw_parameters_get_ip_protocol();
          }

          v34 = *(v2 + 160);
          if (v34)
          {
            v36 = v34[6];
            v37 = v34[7];
            v35 = v34[8];
            v38 = v34[9];
          }

          else
          {
            v35 = -1;
            v36 = -1;
            v37 = -1;
            v38 = -1;
          }

          v66 = *(v2 + 168);
          if (v66)
          {
            v68 = v66[6];
            v69 = v66[7];
            v67 = v66[8];
            v70 = v66[9];
          }

          else
          {
            v67 = -1;
            v68 = -1;
            v69 = -1;
            v70 = -1;
          }

          v71 = 136317442;
          v72 = out;
          v73 = 1024;
          v74 = v33;
          v75 = 2048;
          v76 = v36;
          v77 = 2048;
          v78 = v37;
          v79 = 2048;
          v80 = v35;
          v81 = 2048;
          v82 = v38;
          v83 = 2048;
          v84 = v68;
          v85 = 2048;
          v86 = v69;
          v87 = 2048;
          v88 = v67;
          v89 = 2048;
          v90 = v70;
          v50 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]suppressing duplicate connect call while waiting for initial verdict";
          goto LABEL_67;
        }

        if (!v32)
        {
          return 1;
        }

        v42 = *(v2 + 80);
        if (v42)
        {
          LODWORD(v42) = nw_parameters_get_ip_protocol();
        }

        v43 = *(v2 + 176);
        if (v43 > 3)
        {
          v44 = "unknown";
        }

        else
        {
          v44 = off_1E812BFE0[v43];
        }

        v71 = 136315650;
        v72 = out;
        v73 = 1024;
        v74 = v42;
        v75 = 2080;
        v76 = v44;
        v50 = "[filter %s %d %s] suppressing duplicate connect call while waiting for initial verdict";
LABEL_64:
        v51 = v12;
        v52 = 28;
LABEL_68:
        _os_log_debug_impl(&dword_1C0DA5000, v51, OS_LOG_TYPE_DEBUG, v50, &v71, v52);
        return 1;
      }

      return 1;
    }

    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v21 = *(v2 + 176);
    v22 = ne_log_obj();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v21 == 3)
    {
      if (v23)
      {
        v24 = *(v2 + 80);
        if (v24)
        {
          LODWORD(v24) = nw_parameters_get_ip_protocol();
        }

        v25 = *(v2 + 160);
        if (v25)
        {
          v27 = v25[6];
          v28 = v25[7];
          v26 = v25[8];
          v29 = v25[9];
        }

        else
        {
          v26 = -1;
          v27 = -1;
          v28 = -1;
          v29 = -1;
        }

        v56 = *(v2 + 168);
        if (v56)
        {
          v58 = v56[6];
          v59 = v56[7];
          v57 = v56[8];
          v60 = v56[9];
        }

        else
        {
          v57 = -1;
          v58 = -1;
          v59 = -1;
          v60 = -1;
        }

        v61 = *(v2 + 176);
        if (v61 > 3)
        {
          v62 = "unknown";
        }

        else
        {
          v62 = off_1E812BFE0[v61];
        }

        v71 = 136317698;
        v72 = out;
        v73 = 1024;
        v74 = v24;
        v75 = 2048;
        v76 = v27;
        v77 = 2048;
        v78 = v28;
        v79 = 2048;
        v80 = v26;
        v81 = 2048;
        v82 = v29;
        v83 = 2048;
        v84 = v58;
        v85 = 2048;
        v86 = v59;
        v87 = 2048;
        v88 = v57;
        v89 = 2048;
        v90 = v60;
        v91 = 2080;
        v92 = v62;
        v63 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]failing call to connect because of verdict: %s";
        v64 = v22;
        v65 = 108;
        goto LABEL_90;
      }

      return 0;
    }

    if (!v23)
    {
      return 0;
    }

    v53 = *(v2 + 80);
    if (v53)
    {
      LODWORD(v53) = nw_parameters_get_ip_protocol();
    }

    v54 = *(v2 + 176);
    if (v54 > 1)
    {
      if (v54 == 2)
      {
        v55 = "drop";
        goto LABEL_89;
      }

      if (v54 == 3)
      {
        v55 = "more-data";
        goto LABEL_89;
      }
    }

    else
    {
      if (!v54)
      {
        v55 = "invalid";
        goto LABEL_89;
      }

      if (v54 == 1)
      {
        v55 = "pass";
LABEL_89:
        v71 = 136315906;
        v72 = out;
        v73 = 1024;
        v74 = v53;
        v75 = 2080;
        v76 = v55;
        v77 = 2080;
        v78 = v55;
        v63 = "[filter %s %d %s] failing call to connect because of verdict: %s";
        v64 = v22;
        v65 = 38;
LABEL_90:
        _os_log_debug_impl(&dword_1C0DA5000, v64, OS_LOG_TYPE_DEBUG, v63, &v71, v65);
        return 0;
      }
    }

    v55 = "unknown";
    goto LABEL_89;
  }

  result = 1;
  if ((v3 & 0x40) == 0)
  {
    v7 = *(v2 + 32);
    if (v7)
    {
      v8 = *(*(v7 + 24) + 24);
      if (v8)
      {
        v8(*(v2 + 32), a1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ne_filter_send_approved_frames(uint64_t a1, uint64_t a2)
{
  v140 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(a1, out);
  v4 = *(a1 + 176);
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 3)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      LODWORD(v7) = nw_parameters_get_ip_protocol();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      v10 = v8[6];
      v11 = v8[7];
      v9 = v8[8];
      v12 = v8[9];
    }

    else
    {
      v9 = -1;
      v10 = -1;
      v11 = -1;
      v12 = -1;
    }

    v59 = *(a1 + 168);
    if (v59)
    {
      v61 = v59[6];
      v62 = v59[7];
      v60 = v59[8];
      v63 = v59[9];
    }

    else
    {
      v60 = -1;
      v61 = -1;
      v62 = -1;
      v63 = -1;
    }

    *buf = 136317442;
    *&buf[4] = out;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    v121 = 2048;
    v122 = v10;
    v123 = 2048;
    v124 = v11;
    v125 = 2048;
    v126 = v9;
    v127 = 2048;
    v128 = v12;
    v129 = 2048;
    v130 = v61;
    v131 = 2048;
    v132 = v62;
    v133 = 2048;
    v134 = v60;
    v135 = 2048;
    v136 = v63;
    v64 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending approved frames";
    v65 = v5;
    v66 = 98;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v56 = *(a1 + 80);
    if (v56)
    {
      LODWORD(v56) = nw_parameters_get_ip_protocol();
    }

    v57 = *(a1 + 176);
    if (v57 > 3)
    {
      v58 = "unknown";
    }

    else
    {
      v58 = off_1E812BFE0[v57];
    }

    *buf = 136315650;
    *&buf[4] = out;
    *&buf[12] = 1024;
    *&buf[14] = v56;
    v121 = 2080;
    v122 = v58;
    v64 = "[filter %s %d %s] sending approved frames";
    v65 = v5;
    v66 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v65, OS_LOG_TYPE_DEBUG, v64, buf, v66);
LABEL_8:
  v119[0] = 0;
  v119[1] = 0;
  nw_frame_array_init();
  if (a2)
  {
    nw_frame_array_append_array();
  }

  v13 = *(a1 + 144);
  if (v13)
  {
    while (1)
    {
      if (*(v13 + 40) != 3 || *(v13 + 64) == -1)
      {
        goto LABEL_23;
      }

      if ((nw_frame_array_is_empty() & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (ne_filter_data_protocol_send_data(a1, v13, 0) && (*(v13 + 144) & 4) != 0)
      {
        ne_filter_data_protocol_send_finished(a1, v13, 9u);
        *(v13 + 144) &= ~4u;
      }

LABEL_23:
      if (*(v13 + 104) < *(v13 + 64) && (nw_frame_array_is_empty() & 1) == 0)
      {
        memset(out, 0, 37);
        uuid_unparse(a1, out);
        v17 = *(a1 + 176);
        v18 = ne_log_obj();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v17 == 3)
        {
          if (v19)
          {
            if (*(a1 + 80))
            {
              ip_protocol = nw_parameters_get_ip_protocol();
            }

            else
            {
              ip_protocol = 0;
            }

            v22 = *(a1 + 160);
            if (v22)
            {
              v108 = v22[7];
              v110 = v22[6];
              v24 = v22[8];
              v23 = v22[9];
              v112 = v24;
            }

            else
            {
              v23 = -1;
              v110 = -1;
              v112 = -1;
              v108 = -1;
            }

            v106 = v23;
            v25 = *(a1 + 168);
            if (v25)
            {
              v26 = v25[7];
              v27 = v25[9];
              v102 = v25[6];
              v104 = v25[8];
            }

            else
            {
              v102 = -1;
              v104 = -1;
              v26 = -1;
              v27 = -1;
            }

            v28 = nw_frame_array_unclaimed_length();
            *buf = 136317698;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = ip_protocol;
            v121 = 2048;
            v122 = v110;
            v123 = 2048;
            v124 = v108;
            v125 = 2048;
            v126 = v112;
            v127 = 2048;
            v128 = v106;
            v129 = 2048;
            v130 = v102;
            v131 = 2048;
            v132 = v26;
            v133 = 2048;
            v134 = v104;
            v135 = 2048;
            v136 = v27;
            v137 = 1024;
            v138 = v28;
            v29 = v18;
            v30 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]have %u pending output bytes";
            v31 = 104;
            goto LABEL_52;
          }
        }

        else if (v19)
        {
          if (*(a1 + 80))
          {
            v20 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v20 = 0;
          }

          v32 = *(a1 + 176);
          v33 = "unknown";
          if (v32 <= 3)
          {
            v33 = off_1E812BFE0[v32];
          }

          v34 = nw_frame_array_unclaimed_length();
          *buf = 136315906;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v20;
          v121 = 2080;
          v122 = v33;
          v123 = 1024;
          LODWORD(v124) = v34;
          v29 = v18;
          v30 = "[filter %s %d %s] have %u pending output bytes";
          v31 = 34;
LABEL_52:
          _os_log_debug_impl(&dword_1C0DA5000, v29, OS_LOG_TYPE_DEBUG, v30, buf, v31);
        }

        *buf = 0;
        *&buf[8] = 0;
        nw_frame_array_init();
        nw_frame_array_foreach();
        if ((nw_frame_array_is_empty() & 1) == 0)
        {
          nw_frame_array_prepend_array();
        }
      }

      if ((nw_frame_array_is_empty() & 1) == 0)
      {
        *(a1 + 120) |= 0x2000u;
      }

      v13 = *(v13 + 152);
      if (!v13)
      {
        goto LABEL_66;
      }
    }

    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v14 = *(a1 + 176);
    v15 = ne_log_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14 == 3)
    {
      if (v16)
      {
        if (*(a1 + 80))
        {
          v114 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v114 = 0;
        }

        v35 = *(a1 + 160);
        if (v35)
        {
          v109 = v35[7];
          v111 = v35[6];
          v37 = v35[8];
          v36 = v35[9];
          v113 = v37;
        }

        else
        {
          v36 = -1;
          v111 = -1;
          v113 = -1;
          v109 = -1;
        }

        v107 = v36;
        v38 = *(a1 + 168);
        if (v38)
        {
          v39 = v38[7];
          v40 = v38[9];
          v103 = v38[6];
          v105 = v38[8];
        }

        else
        {
          v103 = -1;
          v105 = -1;
          v39 = -1;
          v40 = -1;
        }

        v41 = nw_frame_array_unclaimed_length();
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v114;
        v121 = 2048;
        v122 = v111;
        v123 = 2048;
        v124 = v109;
        v125 = 2048;
        v126 = v113;
        v127 = 2048;
        v128 = v107;
        v129 = 2048;
        v130 = v103;
        v131 = 2048;
        v132 = v39;
        v133 = 2048;
        v134 = v105;
        v135 = 2048;
        v136 = v40;
        v137 = 1024;
        v138 = v41;
        v42 = v15;
        v43 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending %u bytes to the next filter";
        v44 = 104;
LABEL_65:
        _os_log_debug_impl(&dword_1C0DA5000, v42, OS_LOG_TYPE_DEBUG, v43, buf, v44);
      }
    }

    else if (v16)
    {
      if (*(a1 + 80))
      {
        v21 = nw_parameters_get_ip_protocol();
      }

      else
      {
        v21 = 0;
      }

      v45 = *(a1 + 176);
      v46 = "unknown";
      if (v45 <= 3)
      {
        v46 = off_1E812BFE0[v45];
      }

      v47 = nw_frame_array_unclaimed_length();
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v121 = 2080;
      v122 = v46;
      v123 = 1024;
      LODWORD(v124) = v47;
      v42 = v15;
      v43 = "[filter %s %d %s] sending %u bytes to the next filter";
      v44 = 34;
      goto LABEL_65;
    }

    nw_frame_array_append_array();
    goto LABEL_20;
  }

LABEL_66:
  result = nw_frame_array_is_empty();
  if ((result & 1) == 0)
  {
    if ((*(a1 + 120) & 0x40) == 0)
    {
      v49 = *(a1 + 32);
      if (v49)
      {
        if (*(*(v49 + 24) + 96))
        {
          memset(out, 0, 37);
          uuid_unparse(a1, out);
          v50 = *(a1 + 176);
          v51 = ne_log_obj();
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
          if (v50 == 3)
          {
            if (v52)
            {
              if (*(a1 + 80))
              {
                v117 = nw_parameters_get_ip_protocol();
              }

              else
              {
                v117 = 0;
              }

              v86 = *(a1 + 160);
              if (v86)
              {
                v87 = v86[6];
                v88 = v86[7];
                v89 = v86[9];
                v116 = v86[8];
              }

              else
              {
                v116 = -1;
                v87 = -1;
                v88 = -1;
                v89 = -1;
              }

              v92 = *(a1 + 168);
              if (v92)
              {
                v94 = v92[6];
                v95 = v92[7];
                v93 = v92[8];
                v96 = v92[9];
              }

              else
              {
                v93 = -1;
                v94 = -1;
                v95 = -1;
                v96 = -1;
              }

              v101 = nw_frame_array_unclaimed_length();
              *buf = 136317698;
              *&buf[4] = out;
              *&buf[12] = 1024;
              *&buf[14] = v117;
              v121 = 2048;
              v122 = v87;
              v123 = 2048;
              v124 = v88;
              v125 = 2048;
              v126 = v116;
              v127 = 2048;
              v128 = v89;
              v129 = 2048;
              v130 = v94;
              v131 = 2048;
              v132 = v95;
              v133 = 2048;
              v134 = v93;
              v135 = 2048;
              v136 = v96;
              v137 = 1024;
              v138 = v101;
              v98 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending %u bytes to the network";
              v99 = v51;
              v100 = 104;
LABEL_126:
              _os_log_debug_impl(&dword_1C0DA5000, v99, OS_LOG_TYPE_DEBUG, v98, buf, v100);
            }
          }

          else if (v52)
          {
            if (*(a1 + 80))
            {
              v85 = nw_parameters_get_ip_protocol();
            }

            else
            {
              v85 = 0;
            }

            v90 = *(a1 + 176);
            if (v90 > 3)
            {
              v91 = "unknown";
            }

            else
            {
              v91 = off_1E812BFE0[v90];
            }

            v97 = nw_frame_array_unclaimed_length();
            *buf = 136315906;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v85;
            v121 = 2080;
            v122 = v91;
            v123 = 1024;
            LODWORD(v124) = v97;
            v98 = "[filter %s %d %s] sending %u bytes to the network";
            v99 = v51;
            v100 = 34;
            goto LABEL_126;
          }

          return (*(*(v49 + 24) + 96))(v49, v119);
        }
      }
    }

    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v53 = *(a1 + 176);
    v54 = ne_log_obj();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
    if (v53 == 3)
    {
      if (v55)
      {
        if (*(a1 + 80))
        {
          v118 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v118 = 0;
        }

        v68 = *(a1 + 160);
        if (v68)
        {
          v70 = v68[6];
          v71 = v68[7];
          v69 = v68[8];
          v72 = v68[9];
        }

        else
        {
          v69 = -1;
          v70 = -1;
          v71 = -1;
          v72 = -1;
        }

        v75 = *(a1 + 168);
        if (v75)
        {
          v77 = v75[6];
          v78 = v75[7];
          v76 = v75[8];
          v79 = v75[9];
        }

        else
        {
          v76 = -1;
          v77 = -1;
          v78 = -1;
          v79 = -1;
        }

        v84 = nw_frame_array_unclaimed_length();
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v118;
        v121 = 2048;
        v122 = v70;
        v123 = 2048;
        v124 = v71;
        v125 = 2048;
        v126 = v69;
        v127 = 2048;
        v128 = v72;
        v129 = 2048;
        v130 = v77;
        v131 = 2048;
        v132 = v78;
        v133 = 2048;
        v134 = v76;
        v135 = 2048;
        v136 = v79;
        v137 = 1024;
        v138 = v84;
        v81 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]output protocol is disconnected or does not exist, dropping %u outbound bytes";
        v82 = v54;
        v83 = 104;
LABEL_110:
        _os_log_debug_impl(&dword_1C0DA5000, v82, OS_LOG_TYPE_DEBUG, v81, buf, v83);
      }
    }

    else if (v55)
    {
      if (*(a1 + 80))
      {
        v67 = nw_parameters_get_ip_protocol();
      }

      else
      {
        v67 = 0;
      }

      v73 = *(a1 + 176);
      if (v73 > 3)
      {
        v74 = "unknown";
      }

      else
      {
        v74 = off_1E812BFE0[v73];
      }

      v80 = nw_frame_array_unclaimed_length();
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v67;
      v121 = 2080;
      v122 = v74;
      v123 = 1024;
      LODWORD(v124) = v80;
      v81 = "[filter %s %d %s] output protocol is disconnected or does not exist, dropping %u outbound bytes";
      v82 = v54;
      v83 = 34;
      goto LABEL_110;
    }

    return nw_frame_array_foreach();
  }

  return result;
}

void ne_filter_handle_output_finished(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (!v1)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v56 = 136315138;
      *&v56[4] = "ne_filter_handle_output_finished";
      _os_log_fault_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_FAULT, "%s called with null filter", v56, 0xCu);
    }

    return;
  }

  if (!atomic_fetch_or((v1 + 180), 0))
  {
    return;
  }

  v3 = *(v1 + 120);
  if ((v3 & 0x400) != 0 || *(v1 + 176) != 3 || (v4 = *(v1 + 144)) == 0)
  {
LABEL_10:
    *(v1 + 120) = v3 | 0x400;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    *(v1 + 120) = v3 & 0xFFFFFAFF | 0x400;
    memset(out, 0, 37);
    uuid_unparse(v1, out);
    v6 = *(v1 + 176);
    v7 = ne_log_obj();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6 == 3)
    {
      if (v8)
      {
        v15 = *(v1 + 80);
        if (v15)
        {
          LODWORD(v15) = nw_parameters_get_ip_protocol();
        }

        v16 = *(v1 + 160);
        if (v16)
        {
          v18 = v16[6];
          v19 = v16[7];
          v17 = v16[8];
          v20 = v16[9];
        }

        else
        {
          v17 = -1;
          v18 = -1;
          v19 = -1;
          v20 = -1;
        }

        v40 = *(v1 + 168);
        if (v40)
        {
          v42 = v40[6];
          v43 = v40[7];
          v41 = v40[8];
          v44 = v40[9];
        }

        else
        {
          v41 = -1;
          v42 = -1;
          v43 = -1;
          v44 = -1;
        }

        *v56 = 136317442;
        *&v56[4] = out;
        *&v56[12] = 1024;
        *&v56[14] = v15;
        *&v56[18] = 2048;
        *&v56[20] = v18;
        *&v56[28] = 2048;
        *&v56[30] = v19;
        *&v56[38] = 2048;
        v57 = v17;
        v58 = 2048;
        v59 = v20;
        v60 = 2048;
        v61 = v42;
        v62 = 2048;
        v63 = v43;
        v64 = 2048;
        v65 = v41;
        v66 = 2048;
        v67 = v44;
        v50 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling output_finished on output protocol";
        v51 = v7;
        v52 = 98;
LABEL_58:
        _os_log_debug_impl(&dword_1C0DA5000, v51, OS_LOG_TYPE_DEBUG, v50, v56, v52);
      }
    }

    else if (v8)
    {
      v34 = *(v1 + 80);
      if (v34)
      {
        LODWORD(v34) = nw_parameters_get_ip_protocol();
      }

      v35 = *(v1 + 176);
      if (v35 > 3)
      {
        v36 = "unknown";
      }

      else
      {
        v36 = off_1E812BFE0[v35];
      }

      *v56 = 136315650;
      *&v56[4] = out;
      *&v56[12] = 1024;
      *&v56[14] = v34;
      *&v56[18] = 2080;
      *&v56[20] = v36;
      v50 = "[filter %s %d %s] calling output_finished on output protocol";
      v51 = v7;
      v52 = 28;
      goto LABEL_58;
    }

    v22 = *(v1 + 32);
    if (v22)
    {
      v23 = *(*(v22 + 24) + 192);
      if (v23)
      {
        v23(v22, a1, v9, v10, v11, v12, v13, v14, *v56, *&v56[8], *&v56[16], *&v56[24], *&v56[32]);
      }
    }

LABEL_23:
    if ((*(v1 + 120) & 0x30) != 0x10)
    {
      return;
    }

    *(v1 + 120) |= 0x20u;
    memset(out, 0, 37);
    uuid_unparse(v1, out);
    v24 = *(v1 + 176);
    v25 = ne_log_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    if (v24 == 3)
    {
      if (!v26)
      {
        goto LABEL_31;
      }

      v27 = *(v1 + 80);
      if (v27)
      {
        LODWORD(v27) = nw_parameters_get_ip_protocol();
      }

      v28 = *(v1 + 160);
      if (v28)
      {
        v30 = v28[6];
        v31 = v28[7];
        v29 = v28[8];
        v32 = v28[9];
      }

      else
      {
        v29 = -1;
        v30 = -1;
        v31 = -1;
        v32 = -1;
      }

      v45 = *(v1 + 168);
      if (v45)
      {
        v47 = v45[6];
        v48 = v45[7];
        v46 = v45[8];
        v49 = v45[9];
      }

      else
      {
        v46 = -1;
        v47 = -1;
        v48 = -1;
        v49 = -1;
      }

      *v56 = 136317442;
      *&v56[4] = out;
      *&v56[12] = 1024;
      *&v56[14] = v27;
      *&v56[18] = 2048;
      *&v56[20] = v30;
      *&v56[28] = 2048;
      *&v56[30] = v31;
      *&v56[38] = 2048;
      v57 = v29;
      v58 = 2048;
      v59 = v32;
      v60 = 2048;
      v61 = v47;
      v62 = 2048;
      v63 = v48;
      v64 = 2048;
      v65 = v46;
      v66 = 2048;
      v67 = v49;
      v53 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling disconnect on output protocol";
      v54 = v25;
      v55 = 98;
    }

    else
    {
      if (!v26)
      {
        goto LABEL_31;
      }

      v37 = *(v1 + 80);
      if (v37)
      {
        LODWORD(v37) = nw_parameters_get_ip_protocol();
      }

      v38 = *(v1 + 176);
      if (v38 > 3)
      {
        v39 = "unknown";
      }

      else
      {
        v39 = off_1E812BFE0[v38];
      }

      *v56 = 136315650;
      *&v56[4] = out;
      *&v56[12] = 1024;
      *&v56[14] = v37;
      *&v56[18] = 2080;
      *&v56[20] = v39;
      v53 = "[filter %s %d %s] calling disconnect on output protocol";
      v54 = v25;
      v55 = 28;
    }

    _os_log_debug_impl(&dword_1C0DA5000, v54, OS_LOG_TYPE_DEBUG, v53, v56, v55);
LABEL_31:
    v33 = *(v1 + 32);
    if (v33)
    {
      if (*(*(v33 + 24) + 32))
      {
        (*(*(*(a1 + 32) + 24) + 32))();
      }
    }

    return;
  }

  while (1)
  {
    if (*(v4 + 40) == 3 && *(v4 + 64) != -1)
    {
      v5 = *(v4 + 144);
      if ((v5 & 0x40) == 0)
      {
        break;
      }
    }

    v4 = *(v4 + 152);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  *(v4 + 144) = v5 | 4;

  ne_filter_send_approved_frames(v1, 0);
}

uint64_t ne_filter_read_approved_frames(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x1E69E9840];
  nw_frame_array_init();
  if (a2 && nw_frame_array_unclaimed_length())
  {
    nw_frame_array_append_array();
  }

  for (i = *(a1 + 144); i; i = *(i + 152))
  {
    if (*(i + 40) == 3 && *(i + 48) != -1)
    {
      if ((nw_frame_array_is_empty() & 1) == 0)
      {
        memset(out, 0, 37);
        uuid_unparse(a1, out);
        v5 = *(a1 + 176);
        v6 = ne_log_obj();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (v5 == 3)
        {
          if (v7)
          {
            if (*(a1 + 80))
            {
              ip_protocol = nw_parameters_get_ip_protocol();
            }

            else
            {
              ip_protocol = 0;
            }

            v27 = *(a1 + 160);
            if (v27)
            {
              v28 = v27[7];
              v29 = v27[9];
              v62 = v27[6];
              v64 = v27[8];
            }

            else
            {
              v62 = -1;
              v64 = -1;
              v28 = -1;
              v29 = -1;
            }

            v30 = *(a1 + 168);
            if (v30)
            {
              v32 = v30[6];
              v33 = v30[7];
              v31 = v30[8];
              v34 = v30[9];
            }

            else
            {
              v31 = -1;
              v32 = -1;
              v33 = -1;
              v34 = -1;
            }

            v35 = nw_frame_array_unclaimed_length();
            *buf = 136317698;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = ip_protocol;
            v69 = 2048;
            v70 = v62;
            v71 = 2048;
            v72 = v28;
            v73 = 2048;
            v74 = v64;
            v75 = 2048;
            v76 = v29;
            v77 = 2048;
            v78 = v32;
            v79 = 2048;
            v80 = v33;
            v81 = 2048;
            v82 = v31;
            v83 = 2048;
            v84 = v34;
            v85 = 1024;
            v86 = v35;
            _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending %u input bytes to the next filter", buf, 0x68u);
          }
        }

        else if (v7)
        {
          if (*(a1 + 80))
          {
            v14 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v14 = 0;
          }

          v36 = *(a1 + 176);
          v37 = "unknown";
          if (v36 <= 3)
          {
            v37 = off_1E812BFE0[v36];
          }

          v38 = nw_frame_array_unclaimed_length();
          *buf = 136315906;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v14;
          v69 = 2080;
          v70 = v37;
          v71 = 1024;
          LODWORD(v72) = v38;
          _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, "[filter %s %d %s] sending %u input bytes to the next filter", buf, 0x22u);
        }

        nw_frame_array_append_array();
      }

      if (ne_filter_data_protocol_send_data(a1, i, 1) && (*(i + 144) & 8) != 0)
      {
        ne_filter_data_protocol_send_finished(a1, i, 0xAu);
        *(i + 144) &= ~8u;
      }
    }

    if (*(i + 88) < *(i + 48) && (nw_frame_array_is_empty() & 1) == 0)
    {
      memset(out, 0, 37);
      uuid_unparse(a1, out);
      v8 = *(a1 + 176);
      v9 = ne_log_obj();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v8 == 3)
      {
        if (v10)
        {
          if (*(a1 + 80))
          {
            v66 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v66 = 0;
          }

          v15 = *(a1 + 160);
          if (v15)
          {
            v16 = v15[7];
            v17 = v15[9];
            v61 = v15[6];
            v63 = v15[8];
          }

          else
          {
            v61 = -1;
            v63 = -1;
            v16 = -1;
            v17 = -1;
          }

          v18 = *(a1 + 168);
          if (v18)
          {
            v20 = v18[6];
            v21 = v18[7];
            v19 = v18[8];
            v22 = v18[9];
          }

          else
          {
            v19 = -1;
            v20 = -1;
            v21 = -1;
            v22 = -1;
          }

          v23 = nw_frame_array_unclaimed_length();
          *buf = 136317698;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v66;
          v69 = 2048;
          v70 = v61;
          v71 = 2048;
          v72 = v16;
          v73 = 2048;
          v74 = v63;
          v75 = 2048;
          v76 = v17;
          v77 = 2048;
          v78 = v20;
          v79 = 2048;
          v80 = v21;
          v81 = 2048;
          v82 = v19;
          v83 = 2048;
          v84 = v22;
          v85 = 1024;
          v86 = v23;
          _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]have %u pending input bytes", buf, 0x68u);
        }
      }

      else if (v10)
      {
        if (*(a1 + 80))
        {
          v13 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v13 = 0;
        }

        v24 = *(a1 + 176);
        v25 = "unknown";
        if (v24 <= 3)
        {
          v25 = off_1E812BFE0[v24];
        }

        v26 = nw_frame_array_unclaimed_length();
        *buf = 136315906;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v13;
        v69 = 2080;
        v70 = v25;
        v71 = 1024;
        LODWORD(v72) = v26;
        _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "[filter %s %d %s] have %u pending input bytes", buf, 0x22u);
      }

      *buf = 0;
      *&buf[8] = 0;
      nw_frame_array_init();
      v11 = *(i + 48) - *(i + 88);
      out[0] = 0;
      v12 = ne_filter_protocol_fulfill_frame_request(a1, i + 24, buf, (*(a1 + 120) & 0x8000) == 0, v11, -1, out);
      *(i + 88) += out[0];
      if (v12)
      {
        nw_frame_array_prepend_array();
      }
    }

    if ((nw_frame_array_is_empty() & 1) == 0)
    {
      *(a1 + 120) |= 0x1000u;
    }
  }

  result = nw_frame_array_is_empty();
  if ((result & 1) == 0)
  {
    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v40 = *(a1 + 176);
    v41 = ne_log_obj();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
    if (v40 == 3)
    {
      if (v42)
      {
        if (*(a1 + 80))
        {
          v67 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v67 = 0;
        }

        v44 = *(a1 + 160);
        if (v44)
        {
          v46 = v44[6];
          v47 = v44[7];
          v45 = v44[8];
          v48 = v44[9];
        }

        else
        {
          v45 = -1;
          v46 = -1;
          v47 = -1;
          v48 = -1;
        }

        v51 = *(a1 + 168);
        if (v51)
        {
          v53 = v51[6];
          v54 = v51[7];
          v52 = v51[8];
          v55 = v51[9];
        }

        else
        {
          v52 = -1;
          v53 = -1;
          v54 = -1;
          v55 = -1;
        }

        v60 = nw_frame_array_unclaimed_length();
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v67;
        v69 = 2048;
        v70 = v46;
        v71 = 2048;
        v72 = v47;
        v73 = 2048;
        v74 = v45;
        v75 = 2048;
        v76 = v48;
        v77 = 2048;
        v78 = v53;
        v79 = 2048;
        v80 = v54;
        v81 = 2048;
        v82 = v52;
        v83 = 2048;
        v84 = v55;
        v85 = 1024;
        v86 = v60;
        v57 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]accepting %u input bytes";
        v58 = v41;
        v59 = 104;
LABEL_81:
        _os_log_debug_impl(&dword_1C0DA5000, v58, OS_LOG_TYPE_DEBUG, v57, buf, v59);
      }
    }

    else if (v42)
    {
      if (*(a1 + 80))
      {
        v43 = nw_parameters_get_ip_protocol();
      }

      else
      {
        v43 = 0;
      }

      v49 = *(a1 + 176);
      if (v49 > 3)
      {
        v50 = "unknown";
      }

      else
      {
        v50 = off_1E812BFE0[v49];
      }

      v56 = nw_frame_array_unclaimed_length();
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v43;
      v69 = 2080;
      v70 = v50;
      v71 = 1024;
      LODWORD(v72) = v56;
      v57 = "[filter %s %d %s] accepting %u input bytes";
      v58 = v41;
      v59 = 34;
      goto LABEL_81;
    }

    return nw_frame_array_append_array();
  }

  return result;
}

void ne_filter_handle_input_finished(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *v63 = 136315138;
    *&v63[4] = "ne_filter_handle_input_finished";
    v24 = "%s called with null protocol";
    goto LABEL_28;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    *v63 = 136315138;
    *&v63[4] = "ne_filter_handle_input_finished";
    v24 = "%s called with null filter";
LABEL_28:
    _os_log_fault_impl(&dword_1C0DA5000, v23, OS_LOG_TYPE_FAULT, v24, v63, 0xCu);
    return;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
    return;
  }

  v4 = *(v3 + 120);
  if ((v4 & 0x800) != 0 || *(v3 + 176) != 3 || (v5 = *(v3 + 144)) == 0)
  {
LABEL_11:
    *(v3 + 120) = v4 | 0x800;
    if (a2 && (nw_frame_array_is_empty() & 1) == 0)
    {
      nw_frame_array_append_array();
    }

    v7 = *(v3 + 120);
    if ((v7 & 0x10) == 0)
    {
      if (!nw_frame_array_is_empty())
      {

        ne_filter_protocol_input_available(a1);
        return;
      }

      v7 = *(v3 + 120);
    }

    if ((v7 & 0x200) == 0)
    {
LABEL_37:
      if ((*(v3 + 120) & 0xC0) != 0x40)
      {
        return;
      }

      *(v3 + 120) |= 0x80u;
      for (i = *(v3 + 144); i; i = *(i + 152))
      {
        ne_filter_data_protocol_send_finished(a1, i, 0xBu);
      }

      memset(out, 0, 37);
      uuid_unparse(v3, out);
      v29 = *(v3 + 176);
      v30 = ne_log_obj();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
      if (v29 == 3)
      {
        if (v31)
        {
          v32 = *(v3 + 80);
          if (v32)
          {
            LODWORD(v32) = nw_parameters_get_ip_protocol();
          }

          v33 = *(v3 + 160);
          if (v33)
          {
            v35 = v33[6];
            v36 = v33[7];
            v34 = v33[8];
            v37 = v33[9];
          }

          else
          {
            v34 = -1;
            v35 = -1;
            v36 = -1;
            v37 = -1;
          }

          v52 = *(v3 + 168);
          if (v52)
          {
            v54 = v52[6];
            v55 = v52[7];
            v53 = v52[8];
            v56 = v52[9];
          }

          else
          {
            v53 = -1;
            v54 = -1;
            v55 = -1;
            v56 = -1;
          }

          *v63 = 136317442;
          *&v63[4] = out;
          *&v63[12] = 1024;
          *&v63[14] = v32;
          *&v63[18] = 2048;
          *&v63[20] = v35;
          *&v63[28] = 2048;
          *&v63[30] = v36;
          *&v63[38] = 2048;
          v64 = v34;
          v65 = 2048;
          v66 = v37;
          v67 = 2048;
          v68 = v54;
          v69 = 2048;
          v70 = v55;
          v71 = 2048;
          v72 = v53;
          v73 = 2048;
          v74 = v56;
          v60 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling disconnected on input protocol";
          v61 = v30;
          v62 = 98;
LABEL_78:
          _os_log_debug_impl(&dword_1C0DA5000, v61, OS_LOG_TYPE_DEBUG, v60, v63, v62);
        }
      }

      else if (v31)
      {
        v44 = *(v3 + 80);
        if (v44)
        {
          LODWORD(v44) = nw_parameters_get_ip_protocol();
        }

        v45 = *(v3 + 176);
        if (v45 > 3)
        {
          v46 = "unknown";
        }

        else
        {
          v46 = off_1E812BFE0[v45];
        }

        *v63 = 136315650;
        *&v63[4] = out;
        *&v63[12] = 1024;
        *&v63[14] = v44;
        *&v63[18] = 2080;
        *&v63[20] = v46;
        v60 = "[filter %s %d %s] calling disconnected on input protocol";
        v61 = v30;
        v62 = 28;
        goto LABEL_78;
      }

      v38 = *(v3 + 48);
      if (v38)
      {
        v39 = *(v38 + 24);
        if (v39)
        {
          v40 = *(v39 + 48);
          if (v40)
          {
            v40();
          }
        }
      }

      return;
    }

    *(v3 + 120) = v7 & 0xFFFFFDFF;
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v8 = *(v3 + 176);
    v9 = ne_log_obj();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 == 3)
    {
      if (v10)
      {
        v17 = *(v3 + 80);
        if (v17)
        {
          LODWORD(v17) = nw_parameters_get_ip_protocol();
        }

        v18 = *(v3 + 160);
        if (v18)
        {
          v20 = v18[6];
          v21 = v18[7];
          v19 = v18[8];
          v22 = v18[9];
        }

        else
        {
          v19 = -1;
          v20 = -1;
          v21 = -1;
          v22 = -1;
        }

        v47 = *(v3 + 168);
        if (v47)
        {
          v49 = v47[6];
          v50 = v47[7];
          v48 = v47[8];
          v51 = v47[9];
        }

        else
        {
          v48 = -1;
          v49 = -1;
          v50 = -1;
          v51 = -1;
        }

        *v63 = 136317442;
        *&v63[4] = out;
        *&v63[12] = 1024;
        *&v63[14] = v17;
        *&v63[18] = 2048;
        *&v63[20] = v20;
        *&v63[28] = 2048;
        *&v63[30] = v21;
        *&v63[38] = 2048;
        v64 = v19;
        v65 = 2048;
        v66 = v22;
        v67 = 2048;
        v68 = v49;
        v69 = 2048;
        v70 = v50;
        v71 = 2048;
        v72 = v48;
        v73 = 2048;
        v74 = v51;
        v57 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling input_finished on input protocol";
        v58 = v9;
        v59 = 98;
LABEL_75:
        _os_log_debug_impl(&dword_1C0DA5000, v58, OS_LOG_TYPE_DEBUG, v57, v63, v59);
      }
    }

    else if (v10)
    {
      v41 = *(v3 + 80);
      if (v41)
      {
        LODWORD(v41) = nw_parameters_get_ip_protocol();
      }

      v42 = *(v3 + 176);
      if (v42 > 3)
      {
        v43 = "unknown";
      }

      else
      {
        v43 = off_1E812BFE0[v42];
      }

      *v63 = 136315650;
      *&v63[4] = out;
      *&v63[12] = 1024;
      *&v63[14] = v41;
      *&v63[18] = 2080;
      *&v63[20] = v43;
      v57 = "[filter %s %d %s] calling input_finished on input protocol";
      v58 = v9;
      v59 = 28;
      goto LABEL_75;
    }

    v25 = *(v3 + 48);
    if (v25)
    {
      v26 = *(v25 + 24);
      if (v26)
      {
        v27 = *(v26 + 184);
        if (v27)
        {
          v27(v25, a1, v11, v12, v13, v14, v15, v16, *v63, *&v63[8], *&v63[16], *&v63[24], *&v63[32]);
        }
      }
    }

    goto LABEL_37;
  }

  while (1)
  {
    if (*(v5 + 40) == 3 && *(v5 + 48) != -1)
    {
      v6 = *(v5 + 144);
      if ((v6 & 0x80) == 0)
      {
        break;
      }
    }

    v5 = *(v5 + 152);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  *(v5 + 144) = v6 | 8;

  ne_filter_read_approved_frames(v3, a2);
}

void ne_filter_protocol_input_available(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = 136315138;
    v11 = "ne_filter_protocol_input_available";
    v8 = "%s called with null protocol";
LABEL_19:
    _os_log_fault_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_FAULT, v8, &v10, 0xCu);
    return;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = 136315138;
    v11 = "ne_filter_protocol_input_available";
    v8 = "%s called with null filter";
    goto LABEL_19;
  }

  if (atomic_fetch_or((v1 + 180), 0))
  {
    v2 = *(v1 + 176);
    if (v2 == 3 || v2 == 1)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 64);
          if (v6)
          {

            v6();
          }
        }
      }
    }

    else if (!v2)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "verdict invalid, returning", &v10, 2u);
      }
    }
  }
}

void ne_filter_cleanup(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v30 = 136315138;
    v31 = "ne_filter_cleanup";
    v15 = "%s called with null protocol";
    goto LABEL_28;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v30 = 136315138;
    v31 = "ne_filter_cleanup";
    v15 = "%s called with null filter";
LABEL_28:
    _os_log_fault_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_FAULT, v15, &v30, 0xCu);
    return;
  }

  if (atomic_fetch_or((v2 + 180), 0))
  {
    if ((~*(v2 + 120) & 0x10001) == 0 && (*(v2 + 120) & 0x88) != 8)
    {
      v4 = *(a1 + 32);
      if (!v4)
      {
LABEL_23:
        ne_filter_unregister_flow(*(v2 + 96), a1);
        v17 = *(a1 + 40);
        if (v17)
        {
          v18 = (v17 + 180);
          if (atomic_fetch_or(v18, 0))
          {
            if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
            {
              ne_filter_protocol_destroy(a1);
            }
          }
        }

        return;
      }

      memset(out, 0, 37);
      uuid_unparse(v2, out);
      v5 = *(v2 + 176);
      v6 = ne_log_obj();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (v5 == 3)
      {
        if (v7)
        {
          v8 = *(v2 + 80);
          if (v8)
          {
            LODWORD(v8) = nw_parameters_get_ip_protocol();
          }

          v9 = *(v2 + 160);
          if (v9)
          {
            v11 = v9[6];
            v12 = v9[7];
            v10 = v9[8];
            v13 = v9[9];
          }

          else
          {
            v10 = -1;
            v11 = -1;
            v12 = -1;
            v13 = -1;
          }

          v22 = *(v2 + 168);
          if (v22)
          {
            v24 = v22[6];
            v25 = v22[7];
            v23 = v22[8];
            v26 = v22[9];
          }

          else
          {
            v23 = -1;
            v24 = -1;
            v25 = -1;
            v26 = -1;
          }

          v30 = 136317442;
          v31 = out;
          v32 = 1024;
          v33 = v8;
          v34 = 2048;
          v35 = v11;
          v36 = 2048;
          v37 = v12;
          v38 = 2048;
          v39 = v10;
          v40 = 2048;
          v41 = v13;
          v42 = 2048;
          v43 = v24;
          v44 = 2048;
          v45 = v25;
          v46 = 2048;
          v47 = v23;
          v48 = 2048;
          v49 = v26;
          v27 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]tearing down output handler";
          v28 = v6;
          v29 = 98;
LABEL_40:
          _os_log_debug_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_DEBUG, v27, &v30, v29);
        }
      }

      else if (v7)
      {
        v19 = *(v2 + 80);
        if (v19)
        {
          LODWORD(v19) = nw_parameters_get_ip_protocol();
        }

        v20 = *(v2 + 176);
        if (v20 > 3)
        {
          v21 = "unknown";
        }

        else
        {
          v21 = off_1E812BFE0[v20];
        }

        v30 = 136315650;
        v31 = out;
        v32 = 1024;
        v33 = v19;
        v34 = 2080;
        v35 = v21;
        v27 = "[filter %s %d %s] tearing down output handler";
        v28 = v6;
        v29 = 28;
        goto LABEL_40;
      }

      v16 = *(*(v4 + 24) + 8);
      if (v16)
      {
        v16(v4, a1, 1);
      }

      *(a1 + 32) = 0;
      goto LABEL_23;
    }
  }
}

BOOL ne_filter_data_protocol_send_data(uint64_t a1, uint64_t a2, int a3)
{
  v322 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (!v3 || !atomic_fetch_or((v3 + 180), 0))
  {
    return 0;
  }

  v4 = a3;
  v6 = a1;
  v7 = 104;
  if (a3)
  {
    v7 = 88;
  }

  v8 = *(a2 + v7);
  v9 = (a2 + 96);
  v10 = (a2 + 112);
  v11 = 112;
  if (a3)
  {
    v11 = 96;
    v12 = (a2 + 96);
  }

  else
  {
    v12 = (a2 + 112);
  }

  length = v12;
  v13 = *(a2 + v11);
  v14 = nw_frame_array_unclaimed_length();
  if (!v14)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v28 = *(v3 + 176);
    v29 = ne_log_obj();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v28 == 3)
    {
      if (v30)
      {
        v31 = *(v3 + 80);
        if (v31)
        {
          LODWORD(v31) = nw_parameters_get_ip_protocol();
        }

        v32 = *(v3 + 160);
        if (v32)
        {
          v34 = v32[6];
          v35 = v32[7];
          v33 = v32[8];
          v36 = v32[9];
        }

        else
        {
          v33 = -1;
          v34 = -1;
          v35 = -1;
          v36 = -1;
        }

        v175 = *(v3 + 168);
        if (v175)
        {
          v177 = v175[6];
          v178 = v175[7];
          v176 = v175[8];
          v179 = v175[9];
        }

        else
        {
          v176 = -1;
          v177 = -1;
          v178 = -1;
          v179 = -1;
        }

        *&buf[4] = out;
        v184 = "out";
        *&buf[12] = 1024;
        *buf = 136317698;
        if (v4)
        {
          v184 = "in";
        }

        *&buf[14] = v31;
        *&buf[18] = 2048;
        *&buf[20] = v34;
        *&buf[28] = 2048;
        *&buf[30] = v35;
        v303 = 2048;
        v304 = v33;
        v305 = 2048;
        v306 = v36;
        v307 = 2048;
        v308 = v177;
        v309 = 2048;
        v310 = v178;
        v311 = 2048;
        v312 = v176;
        v313 = 2048;
        v314 = v179;
        v315 = 2080;
        v316 = v184;
        v181 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no %sbound pending bytes to filter";
        v182 = v29;
        v183 = 108;
        goto LABEL_238;
      }
    }

    else if (v30)
    {
      v37 = *(v3 + 80);
      if (v37)
      {
        LODWORD(v37) = nw_parameters_get_ip_protocol();
      }

      v38 = *(v3 + 176);
      if (v38 > 3)
      {
        v39 = "unknown";
      }

      else
      {
        v39 = off_1E812BFE0[v38];
      }

      v180 = "out";
      *&buf[4] = out;
      *&buf[12] = 1024;
      *buf = 136315906;
      if (v4)
      {
        v180 = "in";
      }

      *&buf[14] = v37;
      *&buf[18] = 2080;
      *&buf[20] = v39;
      *&buf[28] = 2080;
      *&buf[30] = v180;
      v181 = "[filter %s %d %s] no %sbound pending bytes to filter";
      v182 = v29;
      v183 = 38;
      goto LABEL_238;
    }

    return 1;
  }

  v294 = v10;
  v296 = v14;
  if (v13 >= v8)
  {
    v18 = v13;
    goto LABEL_29;
  }

  v15 = v6;
  v16 = v9;
  v17 = v4;
  v18 = v8;
  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v19 = *(v3 + 176);
  v20 = ne_log_obj();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19 == 3)
  {
    v4 = v17;
    v9 = v16;
    v6 = v15;
    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = *(v3 + 80);
    if (v22)
    {
      LODWORD(v22) = nw_parameters_get_ip_protocol();
    }

    v23 = *(v3 + 160);
    if (v23)
    {
      v25 = v23[6];
      v26 = v23[7];
      v24 = v23[8];
      v27 = v23[9];
    }

    else
    {
      v24 = -1;
      v25 = -1;
      v26 = -1;
      v27 = -1;
    }

    v185 = *(v3 + 168);
    if (v185)
    {
      v187 = v185[6];
      v188 = v185[7];
      v186 = v185[8];
      v189 = v185[9];
    }

    else
    {
      v186 = -1;
      v187 = -1;
      v188 = -1;
      v189 = -1;
    }

    *&buf[4] = out;
    v203 = "out";
    *&buf[12] = 1024;
    *buf = 136318210;
    if (v4)
    {
      v203 = "in";
    }

    *&buf[14] = v22;
    *&buf[18] = 2048;
    *&buf[20] = v25;
    *&buf[28] = 2048;
    *&buf[30] = v26;
    v303 = 2048;
    v304 = v24;
    v305 = 2048;
    v306 = v27;
    v307 = 2048;
    v308 = v187;
    v309 = 2048;
    v310 = v188;
    v311 = 2048;
    v312 = v186;
    v313 = 2048;
    v314 = v189;
    v315 = 2080;
    v316 = v203;
    v317 = 2048;
    v318 = v13;
    v319 = 2048;
    v320 = v8;
    v200 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]%sbound sent offset less than start, adjusting from %llu to %llu";
    v201 = v20;
    v202 = 128;
  }

  else
  {
    v4 = v17;
    v9 = v16;
    v6 = v15;
    if (!v21)
    {
      goto LABEL_29;
    }

    v136 = *(v3 + 80);
    if (v136)
    {
      LODWORD(v136) = nw_parameters_get_ip_protocol();
    }

    v137 = *(v3 + 176);
    if (v137 > 3)
    {
      v138 = "unknown";
    }

    else
    {
      v138 = off_1E812BFE0[v137];
    }

    *&buf[4] = out;
    v199 = "out";
    *&buf[12] = 1024;
    *buf = 136316418;
    if (v4)
    {
      v199 = "in";
    }

    *&buf[14] = v136;
    *&buf[18] = 2080;
    *&buf[20] = v138;
    *&buf[28] = 2080;
    *&buf[30] = v199;
    v303 = 2048;
    v304 = v13;
    v305 = 2048;
    v306 = v8;
    v200 = "[filter %s %d %s] %sbound sent offset less than start, adjusting from %llu to %llu";
    v201 = v20;
    v202 = 58;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v201, OS_LOG_TYPE_DEBUG, v200, buf, v202);
LABEL_29:
  v295 = v4;
  v40 = v4 == 0;
  v41 = 64;
  if (v4)
  {
    v41 = 48;
  }

  v42 = *(a2 + v41);
  v43 = 72;
  if (!v40)
  {
    v43 = 56;
  }

  v44 = *(a2 + v43);
  if (v44 <= v42)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v56 = *(v3 + 176);
    v57 = ne_log_obj();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
    if (v56 == 3)
    {
      if (v58)
      {
        v59 = *(v3 + 80);
        if (v59)
        {
          LODWORD(v59) = nw_parameters_get_ip_protocol();
        }

        v60 = *(v3 + 160);
        if (v60)
        {
          v62 = v60[6];
          v63 = v60[7];
          v61 = v60[8];
          v64 = v60[9];
        }

        else
        {
          v61 = -1;
          v62 = -1;
          v63 = -1;
          v64 = -1;
        }

        v190 = *(v3 + 168);
        if (v190)
        {
          v192 = v190[6];
          v193 = v190[7];
          v191 = v190[8];
          v194 = v190[9];
        }

        else
        {
          v191 = -1;
          v192 = -1;
          v193 = -1;
          v194 = -1;
        }

        *&buf[4] = out;
        v204 = "out";
        *&buf[12] = 1024;
        *buf = 136318210;
        if (v295)
        {
          v204 = "in";
        }

        *&buf[14] = v59;
        *&buf[18] = 2048;
        *&buf[20] = v62;
        *&buf[28] = 2048;
        *&buf[30] = v63;
        v303 = 2048;
        v304 = v61;
        v305 = 2048;
        v306 = v64;
        v307 = 2048;
        v308 = v192;
        v309 = 2048;
        v310 = v193;
        v311 = 2048;
        v312 = v191;
        v313 = 2048;
        v314 = v194;
        v315 = 2080;
        v316 = v204;
        v317 = 2048;
        v318 = v44;
        v319 = 2048;
        v320 = v42;
        v181 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no %sbound bytes to peek (%llu < %llu)";
        v182 = v57;
        v183 = 128;
        goto LABEL_238;
      }
    }

    else if (v58)
    {
      v65 = *(v3 + 80);
      if (v65)
      {
        LODWORD(v65) = nw_parameters_get_ip_protocol();
      }

      v66 = *(v3 + 176);
      if (v66 > 3)
      {
        v67 = "unknown";
      }

      else
      {
        v67 = off_1E812BFE0[v66];
      }

      *&buf[4] = out;
      v195 = "out";
      *&buf[12] = 1024;
      *buf = 136316418;
      if (v295)
      {
        v195 = "in";
      }

      *&buf[14] = v65;
      *&buf[18] = 2080;
      *&buf[20] = v67;
      *&buf[28] = 2080;
      *&buf[30] = v195;
      v303 = 2048;
      v304 = v44;
      v305 = 2048;
      v306 = v42;
      v181 = "[filter %s %d %s] no %sbound bytes to peek (%llu < %llu)";
      v182 = v57;
      v183 = 58;
      goto LABEL_238;
    }

    return 1;
  }

  v45 = v18 - v8;
  v46 = v42 - v18;
  if (v42 <= v18)
  {
    v42 = v18;
    v49 = v296;
    goto LABEL_55;
  }

  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v47 = *(v3 + 176);
  bytes = ne_log_obj();
  v48 = os_log_type_enabled(bytes, OS_LOG_TYPE_DEBUG);
  if (v47 == 3)
  {
    v49 = v296;
    if (v48)
    {
      v50 = *(v3 + 80);
      if (v50)
      {
        LODWORD(v50) = nw_parameters_get_ip_protocol();
      }

      v51 = *(v3 + 160);
      if (v51)
      {
        v53 = v51[6];
        v54 = v51[7];
        v52 = v51[8];
        v55 = v51[9];
      }

      else
      {
        v52 = -1;
        v53 = -1;
        v54 = -1;
        v55 = -1;
      }

      v208 = *(v3 + 168);
      if (v208)
      {
        v210 = v208[6];
        v211 = v208[7];
        v209 = v208[8];
        v212 = v208[9];
      }

      else
      {
        v209 = -1;
        v210 = -1;
        v211 = -1;
        v212 = -1;
      }

      v226 = "out";
      *buf = 136318210;
      *&buf[4] = out;
      *&buf[12] = 1024;
      if (v295)
      {
        v226 = "in";
      }

      *&buf[14] = v50;
      *&buf[18] = 2048;
      *&buf[20] = v53;
      *&buf[28] = 2048;
      *&buf[30] = v54;
      v303 = 2048;
      v304 = v52;
      v305 = 2048;
      v306 = v55;
      v307 = 2048;
      v308 = v210;
      v309 = 2048;
      v310 = v211;
      v311 = 2048;
      v312 = v209;
      v313 = 2048;
      v314 = v212;
      v315 = 2080;
      v316 = v226;
      v317 = 2048;
      v318 = v45;
      v319 = 2048;
      v320 = v46 + v45;
      v223 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]already passed %sbound bytes, moving frameArrayStart offset from %llu to %llu";
      v224 = bytes;
      v225 = 128;
LABEL_233:
      _os_log_debug_impl(&dword_1C0DA5000, v224, OS_LOG_TYPE_DEBUG, v223, buf, v225);
    }
  }

  else
  {
    v49 = v296;
    if (v48)
    {
      v196 = *(v3 + 80);
      if (v196)
      {
        LODWORD(v196) = nw_parameters_get_ip_protocol();
      }

      v197 = *(v3 + 176);
      if (v197 > 3)
      {
        v198 = "unknown";
      }

      else
      {
        v198 = off_1E812BFE0[v197];
      }

      v222 = "out";
      *buf = 136316418;
      *&buf[4] = out;
      *&buf[12] = 1024;
      if (v295)
      {
        v222 = "in";
      }

      *&buf[14] = v196;
      *&buf[18] = 2080;
      *&buf[20] = v198;
      *&buf[28] = 2080;
      *&buf[30] = v222;
      v303 = 2048;
      v304 = v45;
      v305 = 2048;
      v306 = v46 + v45;
      v223 = "[filter %s %d %s] already passed %sbound bytes, moving frameArrayStart offset from %llu to %llu";
      v224 = bytes;
      v225 = 58;
      goto LABEL_233;
    }
  }

  v45 += v46;
  *length += v46;
LABEL_55:
  if (v49 < v45)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v68 = *(v3 + 176);
    v69 = ne_log_obj();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
    if (v68 == 3)
    {
      if (v70)
      {
        v71 = *(v3 + 80);
        if (v71)
        {
          LODWORD(v71) = nw_parameters_get_ip_protocol();
        }

        v72 = *(v3 + 160);
        if (v72)
        {
          v74 = v72[6];
          v75 = v72[7];
          v73 = v72[8];
          v76 = v72[9];
        }

        else
        {
          v73 = -1;
          v74 = -1;
          v75 = -1;
          v76 = -1;
        }

        v213 = *(v3 + 168);
        if (v213)
        {
          v215 = v213[6];
          v216 = v213[7];
          v214 = v213[8];
          v217 = v213[9];
        }

        else
        {
          v214 = -1;
          v215 = -1;
          v216 = -1;
          v217 = -1;
        }

        v227 = "out";
        *buf = 136318210;
        *&buf[4] = out;
        *&buf[12] = 1024;
        if (v295)
        {
          v227 = "in";
        }

        *&buf[14] = v71;
        *&buf[18] = 2048;
        *&buf[20] = v74;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        v303 = 2048;
        v304 = v73;
        v305 = 2048;
        v306 = v76;
        v307 = 2048;
        v308 = v215;
        v309 = 2048;
        v310 = v216;
        v311 = 2048;
        v312 = v214;
        v313 = 2048;
        v314 = v217;
        v315 = 2080;
        v316 = v227;
        v317 = 2048;
        v318 = v45;
        v319 = 1024;
        LODWORD(v320) = v49;
        v181 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]all %sbound pending bytes already passed (%llu > %u), not filtering";
        v182 = v69;
        v183 = 124;
LABEL_238:
        _os_log_debug_impl(&dword_1C0DA5000, v182, OS_LOG_TYPE_DEBUG, v181, buf, v183);
      }
    }

    else if (v70)
    {
      v82 = *(v3 + 80);
      if (v82)
      {
        LODWORD(v82) = nw_parameters_get_ip_protocol();
      }

      v83 = *(v3 + 176);
      if (v83 > 3)
      {
        v84 = "unknown";
      }

      else
      {
        v84 = off_1E812BFE0[v83];
      }

      v218 = "out";
      *buf = 136316418;
      *&buf[4] = out;
      *&buf[12] = 1024;
      if (v295)
      {
        v218 = "in";
      }

      *&buf[14] = v82;
      *&buf[18] = 2080;
      *&buf[20] = v84;
      *&buf[28] = 2080;
      *&buf[30] = v218;
      v303 = 2048;
      v304 = v45;
      v305 = 1024;
      LODWORD(v306) = v49;
      v181 = "[filter %s %d %s] all %sbound pending bytes already passed (%llu > %u), not filtering";
      v182 = v69;
      v183 = 54;
      goto LABEL_238;
    }

    return 1;
  }

  if (v44 >= v49 - v45 + v42)
  {
    v77 = v49 - v45 + v42;
  }

  else
  {
    v77 = v44;
  }

  v78 = v45 + v8;
  if (v77 <= v78)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v85 = *(v3 + 176);
    v86 = ne_log_obj();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG);
    if (v85 == 3)
    {
      if (!v87)
      {
        return 0;
      }

      v88 = *(v3 + 80);
      if (v88)
      {
        LODWORD(v88) = nw_parameters_get_ip_protocol();
      }

      v89 = *(v3 + 160);
      if (v89)
      {
        v91 = v89[6];
        v92 = v89[7];
        v90 = v89[8];
        v93 = v89[9];
      }

      else
      {
        v90 = -1;
        v91 = -1;
        v92 = -1;
        v93 = -1;
      }

      v228 = *(v3 + 168);
      if (v228)
      {
        v230 = v228[6];
        v231 = v228[7];
        v229 = v228[8];
        v232 = v228[9];
      }

      else
      {
        v229 = -1;
        v230 = -1;
        v231 = -1;
        v232 = -1;
      }

      *&buf[4] = out;
      v237 = "out";
      *&buf[12] = 1024;
      *buf = 136318210;
      if (v295)
      {
        v237 = "in";
      }

      *&buf[14] = v88;
      *&buf[18] = 2048;
      *&buf[20] = v91;
      *&buf[28] = 2048;
      *&buf[30] = v92;
      v303 = 2048;
      v304 = v90;
      v305 = 2048;
      v306 = v93;
      v307 = 2048;
      v308 = v230;
      v309 = 2048;
      v310 = v231;
      v311 = 2048;
      v312 = v229;
      v313 = 2048;
      v314 = v232;
      v315 = 2080;
      v316 = v237;
      v317 = 2048;
      v318 = v77;
      v319 = 2048;
      v320 = v78;
      v234 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no %sbound bytes to filter (%llu <= %llu)";
      v235 = v86;
      v236 = 128;
    }

    else
    {
      if (!v87)
      {
        return 0;
      }

      v219 = *(v3 + 80);
      if (v219)
      {
        LODWORD(v219) = nw_parameters_get_ip_protocol();
      }

      v220 = *(v3 + 176);
      if (v220 > 3)
      {
        v221 = "unknown";
      }

      else
      {
        v221 = off_1E812BFE0[v220];
      }

      *&buf[4] = out;
      v233 = "out";
      *&buf[12] = 1024;
      *buf = 136316418;
      if (v295)
      {
        v233 = "in";
      }

      *&buf[14] = v219;
      *&buf[18] = 2080;
      *&buf[20] = v221;
      *&buf[28] = 2080;
      *&buf[30] = v233;
      v303 = 2048;
      v304 = v77;
      v305 = 2048;
      v306 = v78;
      v234 = "[filter %s %d %s] no %sbound bytes to filter (%llu <= %llu)";
      v235 = v86;
      v236 = 58;
    }

LABEL_252:
    _os_log_debug_impl(&dword_1C0DA5000, v235, OS_LOG_TYPE_DEBUG, v234, buf, v236);
    return 0;
  }

  v79 = v77 - v42;
  if ((v77 - v42) >> 32)
  {
    v80 = ne_log_obj();
    result = os_log_type_enabled(v80, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    *buf = 134217984;
    *&buf[4] = v77 - v42;
    _os_log_fault_impl(&dword_1C0DA5000, v80, OS_LOG_TYPE_FAULT, "frameArraySendLength too big %llu", buf, 0xCu);
    return 0;
  }

  bytesa = malloc_type_malloc(v77 - v42, 0xD101207FuLL);
  if (!bytesa)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v118 = *(v3 + 176);
    v119 = ne_log_obj();
    v120 = os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG);
    if (v118 == 3)
    {
      if (!v120)
      {
        return 0;
      }

      v121 = *(v3 + 80);
      if (v121)
      {
        LODWORD(v121) = nw_parameters_get_ip_protocol();
      }

      v122 = *(v3 + 160);
      if (v122)
      {
        v124 = v122[6];
        v125 = v122[7];
        v123 = v122[8];
        v126 = v122[9];
      }

      else
      {
        v123 = -1;
        v124 = -1;
        v125 = -1;
        v126 = -1;
      }

      v247 = *(v3 + 168);
      if (v247)
      {
        v249 = v247[6];
        v250 = v247[7];
        v248 = v247[8];
        v251 = v247[9];
      }

      else
      {
        v248 = -1;
        v249 = -1;
        v250 = -1;
        v251 = -1;
      }

      *buf = 136317698;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v121;
      *&buf[18] = 2048;
      *&buf[20] = v124;
      *&buf[28] = 2048;
      *&buf[30] = v125;
      v303 = 2048;
      v304 = v123;
      v305 = 2048;
      v306 = v126;
      v307 = 2048;
      v308 = v249;
      v309 = 2048;
      v310 = v250;
      v311 = 2048;
      v312 = v248;
      v313 = 2048;
      v314 = v251;
      v315 = 2048;
      v316 = v77 - v42;
      v234 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]failed to malloc %zu bytes";
      v235 = v119;
      v236 = 108;
    }

    else
    {
      if (!v120)
      {
        return 0;
      }

      v139 = *(v3 + 80);
      if (v139)
      {
        LODWORD(v139) = nw_parameters_get_ip_protocol();
      }

      v140 = *(v3 + 176);
      if (v140 > 3)
      {
        v141 = "unknown";
      }

      else
      {
        v141 = off_1E812BFE0[v140];
      }

      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v139;
      *&buf[18] = 2080;
      *&buf[20] = v141;
      *&buf[28] = 2048;
      *&buf[30] = v77 - v42;
      v234 = "[filter %s %d %s] failed to malloc %zu bytes";
      v235 = v119;
      v236 = 38;
    }

    goto LABEL_252;
  }

  v94 = nw_frame_array_first();
  lengtha = v77 - v42;
  v95 = v79 + v45;
  if (v79 + v45 && v94 && v77 != v42)
  {
    v96 = 0;
    v97 = 0;
    do
    {
      *buf = 0;
      v98 = nw_frame_unclaimed_bytes();
      if (v45 <= v97)
      {
        v99 = 0;
      }

      else
      {
        v99 = v45 - v97;
      }

      v100 = *buf;
      v101 = *buf - v99;
      if (*buf > v99)
      {
        v102 = v95 - (v97 + v99);
        if (v102 <= v101)
        {
          v103 = v102;
        }

        else
        {
          v103 = v101;
        }

        memcpy(&bytesa[v96], (v98 + v99), v103);
        v96 += v103;
        v100 = *buf;
      }

      v97 += v100;
      v104 = nw_frame_array_next();
    }

    while (v97 < v95 && v104 != 0 && v96 < lengtha);
  }

  v107 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uuid(v107, "flow-uuid", v3);
  ip_protocol = nw_parameters_get_ip_protocol();
  xpc_dictionary_set_uint64(v107, "ip-protocol", ip_protocol);
  if (!v295)
  {
    xpc_dictionary_set_uint64(v107, "pending-data-start-offset", *v294);
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v127 = *(v3 + 176);
    v128 = ne_log_obj();
    v129 = os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG);
    if (v127 == 3)
    {
      if (v129)
      {
        v130 = *(v3 + 80);
        if (v130)
        {
          LODWORD(v130) = nw_parameters_get_ip_protocol();
        }

        v131 = *(v3 + 160);
        if (v131)
        {
          v133 = v131[6];
          v134 = v131[7];
          v132 = v131[8];
          v135 = v131[9];
        }

        else
        {
          v132 = -1;
          v133 = -1;
          v134 = -1;
          v135 = -1;
        }

        v257 = *(v3 + 168);
        if (v257)
        {
          v259 = v257[6];
          v260 = v257[7];
          v258 = v257[8];
          v261 = v257[9];
        }

        else
        {
          v258 = -1;
          v259 = -1;
          v260 = -1;
          v261 = -1;
        }

        v289 = *v294;
        *buf = 136317954;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v130;
        *&buf[18] = 2048;
        *&buf[20] = v133;
        *&buf[28] = 2048;
        *&buf[30] = v134;
        v303 = 2048;
        v304 = v132;
        v305 = 2048;
        v306 = v135;
        v307 = 2048;
        v308 = v259;
        v309 = 2048;
        v310 = v260;
        v311 = 2048;
        v312 = v258;
        v313 = 2048;
        v314 = v261;
        v315 = 2048;
        v316 = lengtha;
        v317 = 2048;
        v318 = v289;
        v281 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]filtering %zu output bytes at offset %llu";
        v282 = v128;
        v283 = 118;
LABEL_297:
        _os_log_debug_impl(&dword_1C0DA5000, v282, OS_LOG_TYPE_DEBUG, v281, buf, v283);
      }
    }

    else if (v129)
    {
      v241 = *(v3 + 80);
      if (v241)
      {
        LODWORD(v241) = nw_parameters_get_ip_protocol();
      }

      v242 = *(v3 + 176);
      if (v242 > 3)
      {
        v243 = "unknown";
      }

      else
      {
        v243 = off_1E812BFE0[v242];
      }

      v280 = *v294;
      *buf = 136316162;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v241;
      *&buf[18] = 2080;
      *&buf[20] = v243;
      *&buf[28] = 2048;
      *&buf[30] = lengtha;
      v303 = 2048;
      v304 = v280;
      v281 = "[filter %s %d %s] filtering %zu output bytes at offset %llu";
      v282 = v128;
      v283 = 48;
      goto LABEL_297;
    }

    v142 = 7;
    goto LABEL_135;
  }

  xpc_dictionary_set_uint64(v107, "pending-data-start-offset", *v9);
  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v109 = *(v3 + 176);
  v110 = ne_log_obj();
  v111 = os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG);
  if (v109 == 3)
  {
    if (v111)
    {
      v112 = *(v3 + 80);
      if (v112)
      {
        LODWORD(v112) = nw_parameters_get_ip_protocol();
      }

      v113 = *(v3 + 160);
      if (v113)
      {
        v115 = v113[6];
        v116 = v113[7];
        v114 = v113[8];
        v117 = v113[9];
      }

      else
      {
        v114 = -1;
        v115 = -1;
        v116 = -1;
        v117 = -1;
      }

      v252 = *(v3 + 168);
      if (v252)
      {
        v254 = v252[6];
        v255 = v252[7];
        v253 = v252[8];
        v256 = v252[9];
      }

      else
      {
        v253 = -1;
        v254 = -1;
        v255 = -1;
        v256 = -1;
      }

      v288 = *v9;
      *buf = 136317954;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v112;
      *&buf[18] = 2048;
      *&buf[20] = v115;
      *&buf[28] = 2048;
      *&buf[30] = v116;
      v303 = 2048;
      v304 = v114;
      v305 = 2048;
      v306 = v117;
      v307 = 2048;
      v308 = v254;
      v309 = 2048;
      v310 = v255;
      v311 = 2048;
      v312 = v253;
      v313 = 2048;
      v314 = v256;
      v315 = 2048;
      v316 = lengtha;
      v317 = 2048;
      v318 = v288;
      v277 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]filtering %zu input bytes at offset %llu";
      v278 = v110;
      v279 = 118;
LABEL_294:
      _os_log_debug_impl(&dword_1C0DA5000, v278, OS_LOG_TYPE_DEBUG, v277, buf, v279);
    }
  }

  else if (v111)
  {
    v238 = *(v3 + 80);
    if (v238)
    {
      LODWORD(v238) = nw_parameters_get_ip_protocol();
    }

    v239 = *(v3 + 176);
    if (v239 > 3)
    {
      v240 = "unknown";
    }

    else
    {
      v240 = off_1E812BFE0[v239];
    }

    v276 = *v9;
    *buf = 136316162;
    *&buf[4] = out;
    *&buf[12] = 1024;
    *&buf[14] = v238;
    *&buf[18] = 2080;
    *&buf[20] = v240;
    *&buf[28] = 2048;
    *&buf[30] = lengtha;
    v303 = 2048;
    v304 = v276;
    v277 = "[filter %s %d %s] filtering %zu input bytes at offset %llu";
    v278 = v110;
    v279 = 48;
    goto LABEL_294;
  }

  v142 = 8;
LABEL_135:
  xpc_dictionary_set_int64(v107, "command", v142);
  v143 = *(v3 + 64);
  if (v143)
  {
    if (nw_endpoint_get_type(v143) == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(*(v3 + 64));
      if (address)
      {
        xpc_dictionary_set_data(v107, "local-addr", address, address->sa_len);
      }
    }
  }

  v145 = *(v3 + 72);
  if (v145)
  {
    type = nw_endpoint_get_type(v145);
    v147 = *(v3 + 72);
    if (type == nw_endpoint_type_address)
    {
      v148 = nw_endpoint_get_address(v147);
      if (!v148)
      {
        goto LABEL_146;
      }

      v149 = v148;
      sa_len = v148->sa_len;
    }

    else
    {
      if (nw_endpoint_get_type(v147) != nw_endpoint_type_host)
      {
        goto LABEL_146;
      }

      memset(buf, 0, 28);
      ne_filter_create_wildcard_remote_sockaddr(buf, v3);
      sa_len = buf[0];
      v149 = buf;
    }

    xpc_dictionary_set_data(v107, "remote-addr", v149, sa_len);
  }

LABEL_146:
  xpc_dictionary_set_data(v107, "data", bytesa, lengtha);
  free(bytesa);
  if (!v295)
  {
    v151 = (a2 + 104);
    *v294 = v95 + *(a2 + 104);
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v161 = *(v3 + 176);
    v162 = ne_log_obj();
    v163 = os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG);
    if (v161 == 3)
    {
      if (v163)
      {
        v164 = *(v3 + 80);
        if (v164)
        {
          LODWORD(v164) = nw_parameters_get_ip_protocol();
        }

        v165 = *(v3 + 160);
        if (v165)
        {
          v167 = v165[6];
          v168 = v165[7];
          v166 = v165[8];
          v169 = v165[9];
        }

        else
        {
          v166 = -1;
          v167 = -1;
          v168 = -1;
          v169 = -1;
        }

        v267 = *(v3 + 168);
        if (v267)
        {
          v269 = v267[6];
          v270 = v267[7];
          v268 = v267[8];
          v271 = v267[9];
        }

        else
        {
          v268 = -1;
          v269 = -1;
          v270 = -1;
          v271 = -1;
        }

        v291 = *v294;
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v164;
        *&buf[18] = 2048;
        *&buf[20] = v167;
        *&buf[28] = 2048;
        *&buf[30] = v168;
        v303 = 2048;
        v304 = v166;
        v305 = 2048;
        v306 = v169;
        v307 = 2048;
        v308 = v269;
        v309 = 2048;
        v310 = v270;
        v311 = 2048;
        v312 = v268;
        v313 = 2048;
        v314 = v271;
        v315 = 2048;
        v316 = v291;
        v285 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]outbound sent offset is now %llu";
        v286 = v162;
        v287 = 108;
LABEL_303:
        _os_log_debug_impl(&dword_1C0DA5000, v286, OS_LOG_TYPE_DEBUG, v285, buf, v287);
      }
    }

    else if (v163)
    {
      v244 = *(v3 + 80);
      if (v244)
      {
        LODWORD(v244) = nw_parameters_get_ip_protocol();
      }

      v245 = *(v3 + 176);
      if (v245 > 3)
      {
        v246 = "unknown";
      }

      else
      {
        v246 = off_1E812BFE0[v245];
      }

      v284 = *v294;
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v244;
      *&buf[18] = 2080;
      *&buf[20] = v246;
      *&buf[28] = 2048;
      *&buf[30] = v284;
      v285 = "[filter %s %d %s] outbound sent offset is now %llu";
      v286 = v162;
      v287 = 38;
      goto LABEL_303;
    }

    v9 = v294;
    goto LABEL_166;
  }

  v151 = (a2 + 88);
  *v9 = v95 + *(a2 + 88);
  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v152 = *(v3 + 176);
  v153 = ne_log_obj();
  v154 = os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG);
  if (v152 == 3)
  {
    if (v154)
    {
      v155 = *(v3 + 80);
      if (v155)
      {
        LODWORD(v155) = nw_parameters_get_ip_protocol();
      }

      v156 = *(v3 + 160);
      if (v156)
      {
        v158 = v156[6];
        v159 = v156[7];
        v157 = v156[8];
        v160 = v156[9];
      }

      else
      {
        v157 = -1;
        v158 = -1;
        v159 = -1;
        v160 = -1;
      }

      v262 = *(v3 + 168);
      if (v262)
      {
        v264 = v262[6];
        v265 = v262[7];
        v263 = v262[8];
        v266 = v262[9];
      }

      else
      {
        v263 = -1;
        v264 = -1;
        v265 = -1;
        v266 = -1;
      }

      v290 = *v9;
      *buf = 136317698;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v155;
      *&buf[18] = 2048;
      *&buf[20] = v158;
      *&buf[28] = 2048;
      *&buf[30] = v159;
      v303 = 2048;
      v304 = v157;
      v305 = 2048;
      v306 = v160;
      v307 = 2048;
      v308 = v264;
      v309 = 2048;
      v310 = v265;
      v311 = 2048;
      v312 = v263;
      v313 = 2048;
      v314 = v266;
      v315 = 2048;
      v316 = v290;
      v273 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]inbound sent offset is now %llu";
      v274 = v153;
      v275 = 108;
LABEL_300:
      _os_log_debug_impl(&dword_1C0DA5000, v274, OS_LOG_TYPE_DEBUG, v273, buf, v275);
    }
  }

  else if (v154)
  {
    v170 = *(v3 + 80);
    if (v170)
    {
      LODWORD(v170) = nw_parameters_get_ip_protocol();
    }

    v171 = *(v3 + 176);
    if (v171 > 3)
    {
      v172 = "unknown";
    }

    else
    {
      v172 = off_1E812BFE0[v171];
    }

    v272 = *v9;
    *buf = 136315906;
    *&buf[4] = out;
    *&buf[12] = 1024;
    *&buf[14] = v170;
    *&buf[18] = 2080;
    *&buf[20] = v172;
    *&buf[28] = 2048;
    *&buf[30] = v272;
    v273 = "[filter %s %d %s] inbound sent offset is now %llu";
    v274 = v153;
    v275 = 38;
    goto LABEL_300;
  }

LABEL_166:
  v173 = *v9 - *v151;
  v174 = lengtha;
  if (!*(v3 + 124))
  {
    memset(buf, 0, 32);
    out[0] = 0;
    if (ne_filter_generate_crypto_signature(*(a2 + 4), v3, buf, out, 0))
    {
      xpc_dictionary_set_data(v107, "crypto-signature", buf, out[0]);
    }

    else
    {
      v205 = ne_log_obj();
      if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
      {
        *v301 = 0;
        _os_log_error_impl(&dword_1C0DA5000, v205, OS_LOG_TYPE_ERROR, "Failed to generate signature for data message", v301, 2u);
      }
    }

    v174 = lengtha;
  }

  atomic_fetch_add((v3 + 180), 1u);
  v206 = *(v3 + 96);
  v207 = *(a2 + 4);
  v299[0] = MEMORY[0x1E69E9820];
  v299[1] = 0x40000000;
  v299[2] = __ne_filter_data_protocol_send_data_block_invoke;
  v299[3] = &__block_descriptor_tmp_34;
  v299[4] = v3;
  v299[5] = v174;
  v300 = v142;
  v299[6] = v6;
  v299[7] = a2;
  ne_filter_send_message(v206, v207, v107, v299);
  xpc_release(v107);
  return v296 == v173;
}

uint64_t ne_filter_protocol_fulfill_frame_request(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, _DWORD *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "ne_filter_protocol_fulfill_frame_request";
    v13 = "%s called with null source_array";
    goto LABEL_19;
  }

  if (!a3)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "ne_filter_protocol_fulfill_frame_request";
    v13 = "%s called with null destination_array";
LABEL_19:
    v14 = v16;
    v15 = 12;
    goto LABEL_14;
  }

  if (!a5 || !a6)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 67109632;
    DWORD1(buf) = a5;
    WORD4(buf) = 1024;
    *(&buf + 10) = 0;
    HIWORD(buf) = 1024;
    LODWORD(v23) = a6;
    v13 = "invalid values for frame request, max %u, min %u, max frame %u";
    v14 = v11;
    v15 = 20;
LABEL_14:
    _os_log_fault_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_FAULT, v13, &buf, v15);
    return 0;
  }

  v21 = 0uLL;
  nw_frame_array_init();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  nw_frame_array_foreach();
  if (a7)
  {
    *a7 = *(v18 + 6);
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    nw_frame_array_foreach();
  }

  v10 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);
  return v10;
}