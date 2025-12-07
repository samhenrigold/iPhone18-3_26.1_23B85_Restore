BOOL is_config_agent_type_dns(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return !strcmp((result + 16), "SystemConfig") && strcmp((v1 + 48), "DNSAgent") == 0;
  }

  return result;
}

uint64_t config_agent_copy_dns_information(uint64_t a1)
{
  if (!is_config_agent_type_dns(a1))
  {
    return 0;
  }

  if (!*(a1 + 212))
  {
    v3 = (a1 + 80);
    if (strncmp(v3, "DNSAgent(p)", 0xBuLL) && strncmp(v3, "DNSAgent(m)", 0xBuLL))
    {
      if (*v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = "DNSAgent";
      }

      syslog(3, "Cannot parse config agent (%s). No data available", v4);
    }

    return 0;
  }

  return xpc_create_from_plist();
}

void __dns_configuration_copy_block_invoke(uint64_t result)
{
  if (dnsinfo_active++)
  {
    v2 = dnsinfo_client == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (_block_invoke_once != -1)
    {
      __dns_configuration_copy_block_invoke_cold_1();
    }

    if (__dns_configuration_queue_once != -1)
    {
      dns_configuration_copy_cold_1();
    }

    dnsinfo_client = libSC_info_client_create(__dns_configuration_queue_q, "com.apple.SystemConfiguration.DNSConfiguration", "DNS configuration");
    if (!dnsinfo_client)
    {
      --dnsinfo_active;
    }
  }
}

_DWORD *dns_configuration_copy()
{
  v67 = *MEMORY[0x29EDCA608];
  if (!libSC_info_available())
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "*** DNS configuration requested between fork() and exec()", buf, 2u);
    }

    return 0;
  }

  if (__dns_configuration_queue_once != -1)
  {
    dns_configuration_copy_cold_1();
  }

  dispatch_sync(__dns_configuration_queue_q, &__block_literal_global);
  if (!dnsinfo_client || *dnsinfo_client != 1)
  {
    return 0;
  }

  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = v0;
  if (dns_configuration_copy_proc_name)
  {
    xpc_dictionary_set_string(v0, "proc_name", dns_configuration_copy_proc_name);
  }

  xpc_dictionary_set_int64(v1, "request_op", 65537);
  v2 = libSC_send_message_with_reply_sync(dnsinfo_client, v1);
  xpc_release(v1);
  if (!v2)
  {
    return 0;
  }

  length = 0;
  data = xpc_dictionary_get_data(v2, "configuration", &length);
  if (!data)
  {
    goto LABEL_20;
  }

  v4 = length;
  if (length - 56 > 0xFFFC8)
  {
    goto LABEL_20;
  }

  v5 = data;
  v6 = bswap32(data[12]) + 56;
  if (v6 != length)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v66 = v6;
      *&v66[8] = 2048;
      *&v66[10] = v4;
      v8 = MEMORY[0x29EDCA988];
      v9 = "DNS configuration: size error (%zu != %zu)";
      v10 = 22;
      goto LABEL_19;
    }

LABEL_20:
    xpc_release(v2);
    return 0;
  }

  v7 = bswap32(data[13]);
  if (0x100000 - length < v7)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v66 = v7;
      *&v66[4] = 2048;
      *&v66[6] = 0x100000 - v4;
      v8 = MEMORY[0x29EDCA988];
      v9 = "DNS configuration: padding error (%u > %zu)";
      v10 = 18;
LABEL_19:
      _os_log_impl(&dword_299DD2000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v11 = malloc_type_malloc(length + v7, 0xAC30884BuLL);
  memcpy(v11, v5, v4);
  bzero(v11 + v4, v7);
  xpc_release(v2);
  if (!v11)
  {
    return v11;
  }

  v13 = v11[12];
  v14 = bswap32(v11[13]);
  v15 = bswap32(*v11);
  *v11 = v15;
  if (v14 < 8 * v15)
  {
    goto LABEL_95;
  }

  v16 = bswap32(v13);
  v17 = v11 + 14;
  v18 = 8 * v15;
  v19 = 8 * v15 ? v11 + v16 + 56 : 0;
  v20 = v14 - v18;
  *(v11 + 1) = v19;
  v21 = bswap32(v11[3]);
  v11[3] = v21;
  if (v20 < 8 * v21)
  {
    goto LABEL_95;
  }

  v22 = 8 * v21;
  v23 = v11 + v16 + v18 + 56;
  v24 = v22 ? v23 : 0;
  v25 = v20 - v22;
  *(v11 + 2) = v24;
  v26 = bswap32(v11[8]);
  v11[8] = v26;
  if (v25 < 8 * v26)
  {
    goto LABEL_95;
  }

  v27 = 8 * v26;
  v28 = v23 + v22;
  if (8 * v26)
  {
    v29 = v23 + v22;
  }

  else
  {
    v29 = 0;
  }

  *(v11 + 9) = v29;
  if (v16 < 8)
  {
    v32 = 0;
    v31 = 0;
    v30 = 0;
    goto LABEL_92;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v25 - v27;
  v34 = v28 + v27;
  do
  {
    v35 = bswap32(v17[1]);
    v36 = bswap32(*v17);
    if (v36 - 1 > 2)
    {
      goto LABEL_89;
    }

    if (v35 - 8 < 0x64)
    {
      goto LABEL_95;
    }

    *(v17 + 1) = 0;
    v37 = bswap32(v17[4]);
    v17[4] = v37;
    if (v33 < 8 * v37)
    {
      goto LABEL_95;
    }

    v38 = 8 * v37;
    v39 = 8 * v37 ? v34 : 0;
    v40 = v33 - v38;
    *(v17 + 5) = v39;
    *(v17 + 14) = bswap32(*(v17 + 14)) >> 16;
    v41 = bswap32(v17[8]);
    v17[8] = v41;
    if (v40 < 8 * v41)
    {
      goto LABEL_95;
    }

    v42 = 8 * v41;
    v43 = v34 + v38;
    v44 = 8 * v41 ? v43 : 0;
    v45 = v40 - v42;
    *(v17 + 9) = v44;
    v46 = bswap32(v17[11]);
    v17[11] = v46;
    if (v45 < 8 * v46)
    {
      goto LABEL_95;
    }

    v47 = 8 * v46;
    v48 = v43 + v42;
    v49 = 8 * v46 ? v48 : 0;
    *(v17 + 6) = v49;
    *(v17 + 7) = 0;
    *(v17 + 4) = vrev32q_s8(*(v17 + 4));
    *(v17 + 10) = vrev32_s8(*(v17 + 20));
    v50 = v35 - 108;
    if (v35 - 108 != bswap32(v17[26]))
    {
      goto LABEL_95;
    }

    v51 = v17 + 2;
    if (v50 < 8)
    {
      v54 = 0;
      v53 = 0;
      v52 = 0;
    }

    else
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = v17 + 27;
      do
      {
        v56 = v55[1];
        v57 = bswap32(*v55);
        if (v57 <= 12)
        {
          switch(v57)
          {
            case 10:
              *v51 = v55 + 2;
              break;
            case 11:
              v60 = *(v17 + 5);
              if (!v60)
              {
                goto LABEL_95;
              }

              *(v60 + 8 * v54++) = v55 + 2;
              break;
            case 12:
              v58 = *(v17 + 9);
              if (!v58)
              {
                goto LABEL_95;
              }

              *(v58 + 8 * v53++) = v55 + 2;
              break;
          }
        }

        else if (v57 > 14)
        {
          if (v57 == 15)
          {
            *(v17 + 11) = v55 + 2;
          }

          else if (v57 == 16)
          {
            *(v17 + 12) = v55 + 2;
          }
        }

        else if (v57 == 13)
        {
          v59 = *(v17 + 6);
          if (!v59)
          {
            goto LABEL_95;
          }

          *(v59 + 8 * v52++) = v55 + 2;
        }

        else
        {
          *(v17 + 7) = v55 + 2;
        }

        v61 = bswap32(v56);
        v55 = (v55 + v61);
        v50 -= v61;
      }

      while (v50 > 7);
    }

    if (v54 != v37 || v53 != v41 || v52 != v46)
    {
      goto LABEL_95;
    }

    v34 = v48 + v47;
    v33 = v45 - v47;
    switch(v36)
    {
      case 3u:
        v62 = *(v11 + 9);
        if (!v62)
        {
          goto LABEL_95;
        }

        v63 = v30++;
        break;
      case 2u:
        v62 = *(v11 + 2);
        if (!v62)
        {
          goto LABEL_95;
        }

        v63 = v31++;
        break;
      case 1u:
        v62 = *(v11 + 1);
        if (!v62)
        {
          goto LABEL_95;
        }

        v63 = v32++;
        break;
      default:
        goto LABEL_89;
    }

    *(v62 + 8 * v63) = v51;
LABEL_89:
    v17 = (v17 + v35);
    v16 -= v35;
  }

  while (v16 > 7);
  v15 = *v11;
LABEL_92:
  if (v32 != v15 || v31 != v11[3] || v30 != v11[8])
  {
LABEL_95:
    free(v11);
    return 0;
  }

  return v11;
}

dispatch_queue_t ____dns_configuration_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.SystemConfiguration.DNSConfiguration", 0);
  __dns_configuration_queue_q = result;
  return result;
}

void dns_configuration_copy_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__dns_configuration_queue_once, &__block_literal_global_19);
}

void nwi_state_copy_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&nwi_state_copy_initialized, &__block_literal_global_0);
}

uint64_t nwi_state_copy()
{
  v14 = *MEMORY[0x29EDCA608];
  if (nwi_state_copy_initialized != -1)
  {
    nwi_state_copy_cold_1();
  }

  pthread_mutex_lock(&nwi_store_lock);
  v0 = 1;
  atomic_compare_exchange_strong(nwi_store_force_refresh, &v0, 0);
  v1 = v0 == 1;
  if (!G_nwi_state)
  {
    v3 = 0;
    goto LABEL_10;
  }

  check[0] = 0;
  if (nwi_store_token_valid != 1)
  {
    goto LABEL_9;
  }

  v2 = notify_check(nwi_store_token, check);
  if (v2)
  {
    fprintf(*MEMORY[0x29EDCA610], "nwi notify_check: failed with %u\n", v2);
LABEL_9:
    v3 = G_nwi_state;
    G_nwi_state = 0;
    goto LABEL_10;
  }

  if (check[0] != 0 || v1)
  {
    goto LABEL_9;
  }

  v3 = 0;
  v10 = G_nwi_state;
  if (G_nwi_state)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (!libSC_info_available())
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(check[0]) = 0;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "*** network information requested between fork() and exec()", check, 2u);
    }

    goto LABEL_27;
  }

  _nwi_client_init();
  if (!nwi_client || *nwi_client != 1)
  {
    goto LABEL_27;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (client_proc_name)
  {
    xpc_dictionary_set_string(v4, "proc_name", client_proc_name);
  }

  xpc_dictionary_set_int64(v5, "request_op", 131073);
  v6 = libSC_send_message_with_reply_sync(nwi_client, v5);
  xpc_release(v5);
  if (!v6)
  {
LABEL_27:
    v11 = 0;
    G_nwi_state = 0;
    goto LABEL_28;
  }

  *check = 0;
  data = xpc_dictionary_get_data(v6, "configuration", check);
  if (!data || (v8 = data, *check < 8uLL))
  {
LABEL_26:
    xpc_release(v6);
    goto LABEL_27;
  }

  v9 = malloc_type_malloc(*check, 0x32071A3EuLL);
  memcpy(v9, v8, *check);
  if (*v9 != 538379777)
  {
    free(v9);
    goto LABEL_26;
  }

  v9[5] = 0;
  xpc_release(v6);
  G_nwi_state = v9;
  atomic_fetch_add(v9 + 5, 1u);
  v10 = G_nwi_state;
  if (G_nwi_state)
  {
LABEL_24:
    atomic_fetch_add((v10 + 20), 1u);
    v11 = G_nwi_state;
    goto LABEL_28;
  }

  v11 = 0;
LABEL_28:
  pthread_mutex_unlock(&nwi_store_lock);
  if (v3 && atomic_fetch_add(v3 + 5, 0xFFFFFFFF) == 1)
  {
    _nwi_client_release();
    free(v3);
  }

  return v11;
}

void __dns_configuration_copy_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&_block_invoke_once, &__block_literal_global_5);
}

uint64_t __nwi_state_copy_block_invoke()
{
  result = notify_register_check("com.apple.system.SystemConfiguration.nwi", &nwi_store_token);
  if (result)
  {
    return fprintf(*MEMORY[0x29EDCA610], "nwi_state: registration failed (%u)\n", result);
  }

  nwi_store_token_valid = 1;
  return result;
}

void _nwi_client_release_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&__nwi_client_queue_once, &__block_literal_global_27);
}

void _nwi_client_init()
{
  if (__nwi_client_queue_once != -1)
  {
    _nwi_client_release_cold_1();
  }

  v0 = __nwi_client_queue_q;

  dispatch_sync(v0, &__block_literal_global_17);
}

const char *__dns_configuration_copy_block_invoke_2()
{
  result = getprogname();
  dns_configuration_copy_proc_name = result;
  return result;
}

void *libSC_send_message_with_reply_sync(uint64_t a1, xpc_object_t message)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCAA00];
  v5 = MEMORY[0x29EDCA9B8];
  v6 = MEMORY[0x29EDCAA18];
  v7 = MEMORY[0x29EDCA988];
  while (1)
  {
    do
    {
      v8 = xpc_connection_send_message_with_reply_sync(*(a1 + 8), message);
    }

    while (!v8);
    v9 = v8;
    v10 = MEMORY[0x29C2B1550]();
    if (v10 == v4)
    {
      break;
    }

    v11 = v10;
    if (v9 != v5 || v10 != v6)
    {
      v13 = MEMORY[0x29EDCA9C0];
      v14 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
      if (v9 == v13 && v11 == v6)
      {
        if (v14)
        {
          v15 = *(a1 + 16);
          v18 = 136315138;
          v19 = v15;
          _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s server not available", &v18, 0xCu);
        }

        *a1 = 0;
      }

      else
      {
        if (v14)
        {
          v16 = *(a1 + 16);
          v18 = 136315138;
          v19 = v16;
          _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s xpc_connection_send_message_with_reply_sync() with unexpected reply", &v18, 0xCu);
        }

        log_xpc_object("  reply", v9);
      }

      xpc_release(v9);
      return 0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      libSC_send_message_with_reply_sync_cold_1(buf, (a1 + 16), &buf[4]);
    }

    xpc_release(v5);
  }

  return v9;
}

void *libSC_info_client_create(NSObject *a1, const char *a2, const char *a3)
{
  handler[6] = *MEMORY[0x29EDCA608];
  if (_available)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x20uLL, 0x103004009027118uLL);
  *v3 = 1;
  v3[2] = strdup(a3);
  v3[3] = strdup(a2);
  mach_service = xpc_connection_create_mach_service(a2, a1, 2uLL);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = __libSC_info_client_create_block_invoke;
  handler[3] = &__block_descriptor_tmp_1;
  handler[4] = v3;
  handler[5] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  v3[1] = mach_service;
  xpc_connection_set_context(mach_service, v3);
  xpc_connection_set_finalizer_f(mach_service, libSC_client_dealloc);
  xpc_connection_resume(mach_service);
  return v3;
}

void dns_configuration_free(void *a1)
{
  if (a1)
  {
    if (__dns_configuration_queue_once != -1)
    {
      dns_configuration_copy_cold_1();
    }

    dispatch_sync(__dns_configuration_queue_q, &__block_literal_global_12);

    free(a1);
  }
}

void libSC_client_dealloc(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    free(a1[3]);

    free(a1);
  }
}

dispatch_queue_t ____nwi_client_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.SystemConfiguration.NetworkInformation", 0);
  __nwi_client_queue_q = result;
  return result;
}

void __dns_configuration_free_block_invoke()
{
  if (!--dnsinfo_active)
  {
    libSC_info_client_release(dnsinfo_client);
    dnsinfo_client = 0;
  }
}

void libSC_info_client_release(uint64_t a1)
{
  v1 = *(a1 + 8);

  xpc_release(v1);
}

void ___nwi_client_init_block_invoke()
{
  if (nwi_active++)
  {
    v1 = nwi_client == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (nwi_store_force_refresh_block_invoke_once != -1)
    {
      ___nwi_client_init_block_invoke_cold_1();
    }

    if (__nwi_client_queue_once != -1)
    {
      _nwi_client_release_cold_1();
    }

    nwi_client = libSC_info_client_create(__nwi_client_queue_q, "com.apple.SystemConfiguration.NetworkInformation", "Network information");
    if (!nwi_client)
    {
      --nwi_active;
    }
  }
}

void ___nwi_client_init_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();

  dispatch_once(&nwi_store_force_refresh_block_invoke_once, &__block_literal_global_21);
}

const char *___nwi_client_init_block_invoke_2()
{
  result = getprogname();
  client_proc_name = result;
  return result;
}

void ___nwi_client_release_block_invoke()
{
  if (!--nwi_active)
  {
    libSC_info_client_release(nwi_client);
    nwi_client = 0;
  }
}

void _nwi_client_release()
{
  if (__nwi_client_queue_once != -1)
  {
    _nwi_client_release_cold_1();
  }

  v0 = __nwi_client_queue_q;

  dispatch_sync(v0, &__block_literal_global_14);
}

const char *nwi_state_get_ifstate(_DWORD *a1, char *__s1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  if (v5 >= 1 && v5 <= v4)
  {
    i = (a1 + 10);
    while (strcmp(__s1, i))
    {
      i += 112;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = v4;
    v9 = a1[3];
    if (v9 < 1 || v9 > v8)
    {
      return 0;
    }

    for (i = &a1[28 * v8 + 10]; strcmp(__s1, i); i += 112)
    {
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t nwi_ifstate_get_signature(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 != 30 && a2 != 2)
  {
    goto LABEL_9;
  }

  if (*(a1 + 32) != a2)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      goto LABEL_9;
    }

    a1 += 112 * v3;
LABEL_7:
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = 0;
    *a3 = 0;
    return result;
  }

LABEL_8:
  if ((*(a1 + 16) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *a3 = 20;
  return a1 + 92;
}

void _dns_configuration_ack(uint64_t a1)
{
  if (a1 && dnsinfo_client && *dnsinfo_client == 1)
  {
    if (__dns_configuration_queue_once != -1)
    {
      dns_configuration_copy_cold_1();
    }

    dispatch_sync(__dns_configuration_queue_q, &__block_literal_global_15);
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "request_op", 65538);
    xpc_dictionary_set_uint64(v2, "generation", *(a1 + 24));
    xpc_connection_send_message(*(dnsinfo_client + 8), v2);

    xpc_release(v2);
  }
}

void nwi_state_release(atomic_uint *a1)
{
  if (atomic_fetch_add(a1 + 5, 0xFFFFFFFF) == 1)
  {
    _nwi_client_release();

    free(a1);
  }
}

void *_nwi_config_agent_copy_data(uint64_t a1, void *a2)
{
  v2 = 0;
  size[1] = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    _nwi_client_init();
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "request_op", 131075);
    if (client_proc_name)
    {
      xpc_dictionary_set_string(v5, "proc_name", client_proc_name);
    }

    xpc_dictionary_set_uuid(v5, "AgentUUID", a1);
    xpc_dictionary_set_string(v5, "AgentType", (a1 + 48));
    v6 = libSC_send_message_with_reply_sync(nwi_client, v5);
    xpc_release(v5);
    if (v6)
    {
      size[0] = 0;
      data = xpc_dictionary_get_data(v6, "AgentData", size);
      v2 = 0;
      if (data)
      {
        v8 = data;
        if (size[0])
        {
          v2 = malloc_type_malloc(size[0], 0xB077D0A5uLL);
          v9 = size[0];
          *a2 = size[0];
          memcpy(v2, v8, v9);
        }
      }

      xpc_release(v6);
    }

    else
    {
      v2 = 0;
    }

    _nwi_client_release();
  }

  return v2;
}

void _nwi_state_ack(uint64_t a1)
{
  if (a1 && nwi_client && *nwi_client == 1)
  {
    if (__nwi_client_queue_once != -1)
    {
      _nwi_client_release_cold_1();
    }

    dispatch_sync(__nwi_client_queue_q, &__block_literal_global_10);
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "request_op", 131074);
    xpc_dictionary_set_uint64(v2, "generation", *(a1 + 32));
    xpc_connection_send_message(*(nwi_client + 8), v2);

    xpc_release(v2);
  }
}

uint64_t nwi_ifstate_get_flags(uint64_t a1)
{
  v2 = 1;
  if (*(a1 + 32) != 2)
  {
    v2 = 2;
  }

  result = v2 | *(a1 + 16) & 0x44;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = a1 + 112 * v4;
      v6 = 1;
      if (*(v5 + 32) != 2)
      {
        v6 = 2;
      }

      return *(v5 + 16) & 0x44 | result | v6;
    }
  }

  return result;
}

uint64_t nwi_state_get_first_ifstate(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 4);
    if (v2 < 1)
    {
      return 0;
    }

    v3 = 12;
    if (a2 == 2)
    {
      v3 = 8;
    }

    if (*(result + v3) < 1)
    {
      return 0;
    }

    else
    {
      if (a2 != 30)
      {
        v2 = 0;
      }

      v4 = result + 112 * v2;
      if ((*(v4 + 56) & 8) != 0)
      {
        return 0;
      }

      else
      {
        return v4 + 40;
      }
    }
  }

  return result;
}

uint64_t nwi_ifstate_get_next(uint64_t a1, int a2)
{
  if (*(a1 + 32) != a2)
  {
    v2 = *(a1 + 24);
    if (!v2)
    {
      return 0;
    }

    a1 += 112 * v2;
  }

  if ((*(a1 + 16) & 0x1008) != 0)
  {
    return 0;
  }

  if ((*(a1 + 128) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return a1 + 112;
  }
}

uint64_t nwi_ifstate_compare_rank(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  v3 = *(a2 + 28);
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t nwi_state_get_reachability_flags(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 == 30 || a2 == 2)
    {
      v2 = *(a1 + 4);
      if (v2 < 1)
      {
        goto LABEL_14;
      }

      v3 = 12;
      if (a2 == 2)
      {
        v3 = 8;
      }

      if (*(a1 + v3) < 1)
      {
LABEL_14:
        v5 = 0;
      }

      else
      {
        if (a2 != 30)
        {
          v2 = 0;
        }

        v4 = a1 + 112 * v2;
        if ((*(v4 + 56) & 8) != 0)
        {
          v5 = 0;
        }

        else
        {
          v5 = v4 + 40;
        }
      }

      v7 = 28;
      if (a2 == 2)
      {
        v7 = 24;
      }

      v8 = (a1 + v7);
      if (v5)
      {
        v9 = (v5 + 60);
      }

      else
      {
        v9 = v8;
      }

      return *v9;
    }

    v11 = *(a1 + 4);
    if (v11 >= 1)
    {
      if (*(a1 + 8) < 1)
      {
        if (*(a1 + 12) >= 1)
        {
          v18 = a1 + 112 * v11;
          if ((*(v18 + 56) & 8) == 0)
          {
            v15 = v18 + 40;
            goto LABEL_41;
          }
        }
      }

      else
      {
        v12 = a1 + 40;
        v13 = *(a1 + 56);
        if ((v13 & 8) != 0)
        {
          v14 = 0;
        }

        else
        {
          v14 = a1 + 40;
        }

        if (*(a1 + 12) <= 0)
        {
          v12 = v14;
          if ((v13 & 8) == 0)
          {
LABEL_39:
            v9 = (v12 + 60);
            return *v9;
          }
        }

        else
        {
          v15 = v12 + 112 * v11;
          v16 = *(v15 + 16);
          if ((v16 & 8) != 0)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15;
          }

          if ((v13 & 8) == 0)
          {
            if ((v16 & 8) == 0)
            {
              if (*(v14 + 28) <= *(v17 + 28))
              {
                v9 = (v14 + 60);
              }

              else
              {
                v9 = (v17 + 60);
              }

              return *v9;
            }

            goto LABEL_39;
          }

          if ((v16 & 8) == 0)
          {
LABEL_41:
            v9 = (v15 + 60);
            return *v9;
          }
        }
      }
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      return v6;
    }

    v9 = (a1 + 28);
    return *v9;
  }

  return 0;
}

uint64_t nwi_ifstate_get_vpn_server(uint64_t a1)
{
  if (*(a1 + 65))
  {
    return a1 + 64;
  }

  else
  {
    return 0;
  }
}

uint64_t nwi_ifstate_get_dns_signature(uint64_t a1, int *a2)
{
  v3 = a1;
  *a2 = 0;
  if ((nwi_ifstate_get_flags(a1) & 4) != 0)
  {
    v5 = *(v3 + 32);
    v6 = v3;
    if (v5 != 2)
    {
      v7 = *(v3 + 24);
      if (!v7)
      {
        v10 = 0;
        v11 = 0;
        goto LABEL_10;
      }

      v6 = v3 + 112 * v7;
    }

    v8 = *(v6 + 16);
    v9 = v6 + 92;
    if ((v8 & 0x10) != 0)
    {
      v10 = 20;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 & (v8 << 59 >> 63);
LABEL_10:
    v12 = v3;
    if (v5 != 30)
    {
      v13 = *(v3 + 24);
      if (!v13)
      {
        goto LABEL_14;
      }

      v12 = v3 + 112 * v13;
    }

    if ((*(v12 + 16) & 0x10) != 0)
    {
      v4 = v12 + 92;
      v14 = 20;
      goto LABEL_17;
    }

LABEL_14:
    v4 = 0;
    if (!v11)
    {
      return v4;
    }

    v14 = 0;
LABEL_17:
    v15 = v3;
    if (v5 != 2)
    {
      v16 = *(v3 + 24);
      if (!v16)
      {
        goto LABEL_21;
      }

      v15 = v3 + 112 * v16;
    }

    if ((nwi_ifstate_get_flags(v15) & 8) == 0)
    {
LABEL_27:
      *a2 = v10;
      return v11;
    }

LABEL_21:
    if (v5 != 30)
    {
      v17 = *(v3 + 24);
      if (!v17)
      {
        LOBYTE(v18) = 1;
LABEL_25:
        if ((v18 & (v10 != 0)) == 0)
        {
          v10 = v14;
          v11 = v4;
        }

        goto LABEL_27;
      }

      v3 += 112 * v17;
    }

    v18 = (nwi_ifstate_get_flags(v3) >> 3) & 1;
    goto LABEL_25;
  }

  return 0;
}

uint64_t nwi_state_get_interface_names(uint64_t a1, void *a2, int a3)
{
  if (!a2 || !a3)
  {
    return *(a1 + 16);
  }

  result = *(a1 + 16);
  if (result >= 1)
  {
    v5 = a1 + 40;
    v6 = 2 * *(a1 + 4);
    v7 = (v5 + 112 * v6);
    v8 = result;
    while (*v7 < v6)
    {
      *a2++ = v5 + 112 * *v7++;
      if (!--v8)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _libSC_info_fork_child()
{
  result = _dispatch_is_fork_of_multithreaded_parent();
  if (result)
  {
    _available = 1;
  }

  return result;
}

void __libSC_info_client_create_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C2B1550](a2);
  if (v4 == MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 24);
      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: unexpected message", &v10, 0xCu);
    }

    log_xpc_object("  dict = ", a2);
  }

  else
  {
    v5 = v4;
    if (v4 == MEMORY[0x29EDCAA18])
    {
      if (a2 == MEMORY[0x29EDCA9C0])
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 32) + 24);
          v10 = 136315138;
          v11 = v9;
          _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: server not available", &v10, 0xCu);
        }

        **(a1 + 32) = 0;
      }

      else if (a2 == MEMORY[0x29EDCA9B8])
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          __libSC_info_client_create_block_invoke_cold_2(a1);
        }
      }

      else
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          __libSC_info_client_create_block_invoke_cold_1(a1, string);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      v10 = 136315394;
      v11 = v6;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: unknown event type : %p", &v10, 0x16u);
    }
  }
}

void log_xpc_object(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29C2B1490](a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = a1;
    v6 = 2080;
    v7 = v3;
    _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s = %s", &v4, 0x16u);
  }

  free(v3);
}

BOOL is_config_agent_type_proxy(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return !strcmp((result + 16), "SystemConfig") && strcmp((v1 + 48), "ProxyAgent") == 0;
  }

  return result;
}

xpc_object_t config_agent_get_dns_nameservers(void *a1)
{
  if (!a1 || MEMORY[0x29C2B1550]() != MEMORY[0x29EDCAA00])
  {
    return 0;
  }

  return xpc_dictionary_get_value(a1, "NameServers");
}

xpc_object_t config_agent_get_dns_searchdomains(void *a1)
{
  if (!a1 || MEMORY[0x29C2B1550]() != MEMORY[0x29EDCAA00])
  {
    return 0;
  }

  return xpc_dictionary_get_value(a1, "SearchDomains");
}

void config_agent_free_dns_information(void *a1)
{
  if (a1)
  {

    xpc_release(a1);
  }

  else
  {
    syslog(3, "Attempting to free invalid resolver");
  }
}

uint64_t config_agent_copy_proxy_information(uint64_t a1)
{
  if (!is_config_agent_type_proxy(a1))
  {
    return 0;
  }

  if (!*(a1 + 212))
  {
    v4 = *(a1 + 80);
    v3 = (a1 + 80);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = "ProxyAgent";
    }

    syslog(3, "Cannot parse config agent (%s). No data available", v5);
    return 0;
  }

  return xpc_create_from_plist();
}

void *config_agent_update_proxy_information(void *a1)
{
  v1 = a1;
  v26 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v14 = 0u;
    v15 = 0u;
    *dst = 0u;
    v13 = 0u;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    if (MEMORY[0x29C2B1550](a1) == MEMORY[0x29EDCA9E0])
    {
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 0x40000000;
      applier[2] = __get_agent_uuid_if_OOB_data_required_block_invoke;
      applier[3] = &unk_29F28C090;
      applier[4] = &v8;
      xpc_array_apply(v1, applier);
    }

    else if (MEMORY[0x29C2B1550](v1) == MEMORY[0x29EDCAA00])
    {
      value = xpc_dictionary_get_value(v1, "OutOfBandDataUUID");
      v9[3] = value;
    }

    if (v9[3] && MEMORY[0x29C2B1550]() == MEMORY[0x29EDCA9F8] && xpc_data_get_length(v9[3]) >= 0x10)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v9[3]);
      uuid_copy(dst, bytes_ptr);
    }

    else
    {
      uuid_clear(dst);
    }

    _Block_object_dispose(&v8, 8);
    if (uuid_is_null(dst))
    {
      return 0;
    }

    else
    {
      applier[0] = 0;
      __strlcpy_chk();
      v4 = _nwi_config_agent_copy_data(dst, applier);
      v1 = 0;
      if (v4 && applier[0])
      {
        v5 = v4;
        v1 = xpc_create_from_plist();
        free(v5);
      }
    }
  }

  return v1;
}

void config_agent_free_proxy_information(void *a1)
{
  if (a1)
  {

    xpc_release(a1);
  }

  else
  {
    syslog(3, "Attempting to free proxy configuration");
  }
}

void __libSC_info_client_create_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(*(a1 + 32) + 24);
  pid = xpc_connection_get_pid(*(a1 + 40));
  v5 = 136315650;
  v6 = v3;
  v7 = 1024;
  v8 = pid;
  v9 = 2080;
  v10 = a2;
  _os_log_debug_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s: connection error: %d : %s", &v5, 0x1Cu);
}

void __libSC_info_client_create_block_invoke_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 24);
  v2 = 136315138;
  v3 = v1;
  _os_log_debug_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s: server failed", &v2, 0xCu);
}

void libSC_send_message_with_reply_sync_cold_1(uint8_t *buf, uint64_t *a2, void *a3)
{
  v3 = *a2;
  *buf = 136315138;
  *a3 = v3;
  _os_log_debug_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s server failure, retrying", buf, 0xCu);
}