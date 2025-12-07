uint64_t ___dx_gai_request_take_results_block_invoke(uint64_t result)
{
  v2 = (result + 40);
  v1 = *(result + 40);
  if ((*(v1 + 250) & 3) != 0)
  {
    v9 = 0;
    v5 = *(v1 + 96);
    v3 = (v1 + 96);
    v4 = v5;
    if (v5)
    {
      v6 = &v9;
      do
      {
        if ((*(v4 + 80) & 0x80000000) != 0)
        {
          *v3 = *(v4 + 16);
          *(v4 + 16) = 0;
          *v6 = v4;
          v6 = (v4 + 16);
        }

        else
        {
          v3 = (v4 + 16);
        }

        v4 = *v3;
      }

      while (*v3);
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    v2 = (*(result + 32) + 8);
    v8 = 24;
  }

  else
  {
    v7 = 0;
    *(*(*(result + 32) + 8) + 24) = *(v1 + 96);
    v8 = 96;
  }

  *(*v2 + v8) = v7;
  return result;
}

void _dx_gai_request_finalize(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[12] = 0;
    do
    {
      v3 = *(v2 + 16);
      _dx_release(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[13];
  if (v4)
  {
    free(v4);
    a1[13] = 0;
  }

  v5 = a1[25];
  if (v5)
  {
    free(v5);
    a1[25] = 0;
  }

  v6 = a1[19];
  if (v6)
  {
    xpc_release(v6);
    a1[19] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    xpc_release(v7);
    a1[20] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    os_release(v8);
    a1[21] = 0;
  }

  v9 = a1[22];
  if (v9)
  {
    xpc_release(v9);
    a1[22] = 0;
  }

  v10 = a1[18];
  if (v10)
  {
    free(v10);
    a1[18] = 0;
  }

  v11 = a1[26];
  if (v11)
  {
    _dx_release(v11);
    a1[26] = 0;
  }
}

void _dx_gai_request_invalidate(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 252);
  if (*(v2 + 100) == 1)
  {
    if (v3 == 1)
    {
      if (_mdns_server_log_s_once != -1)
      {
        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
      }

      v4 = _mdns_server_log_s_log;
      if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v6 = *(a1 + 104);
        v7 = *(v2 + 76);
        LODWORD(v24) = 67110147;
        HIDWORD(v24) = v5;
        strcpy(&v25, "p\bhash");
        HIBYTE(v25) = 0;
        *v26 = 0;
        *&v26[2] = 2085;
        *&v26[4] = v6;
        *&v26[12] = 2048;
        *&v26[14] = v7;
        *&v26[22] = 2082;
        v27 = v2 + 84;
        v8 = "[R%u] getaddrinfo stop (forced) -- hostname: %{sensitive,mask.hash}s, client pid: %lld (%{public}s)";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v8, &v24, 0x30u);
      }
    }

    else
    {
      if (_mdns_server_log_s_once != -1)
      {
        dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
      }

      v4 = _mdns_server_log_s_log;
      if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v13 = *(a1 + 104);
        v14 = *(v2 + 76);
        LODWORD(v24) = 67110147;
        HIDWORD(v24) = v12;
        strcpy(&v25, "p\bhash");
        HIBYTE(v25) = 0;
        *v26 = 0;
        *&v26[2] = 2081;
        *&v26[4] = v13;
        *&v26[12] = 2048;
        *&v26[14] = v14;
        *&v26[22] = 2082;
        v27 = v2 + 84;
        v8 = "[R%u] getaddrinfo stop (forced) -- hostname: %{private,mask.hash}s, client pid: %lld (%{public}s)";
        goto LABEL_20;
      }
    }
  }

  else if (v3 == 1)
  {
    if (_mdns_server_log_s_once != -1)
    {
      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    }

    v4 = _mdns_server_log_s_log;
    if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 104);
      v11 = *(v2 + 76);
      LODWORD(v24) = 67110147;
      HIDWORD(v24) = v9;
      strcpy(&v25, "p\bhash");
      HIBYTE(v25) = 0;
      *v26 = 0;
      *&v26[2] = 2085;
      *&v26[4] = v10;
      *&v26[12] = 2048;
      *&v26[14] = v11;
      *&v26[22] = 2082;
      v27 = v2 + 84;
      v8 = "[R%u] getaddrinfo stop -- hostname: %{sensitive,mask.hash}s, client pid: %lld (%{public}s)";
      goto LABEL_20;
    }
  }

  else
  {
    if (_mdns_server_log_s_once != -1)
    {
      dispatch_once(&_mdns_server_log_s_once, &__block_literal_global_22);
    }

    v4 = _mdns_server_log_s_log;
    if (os_log_type_enabled(_mdns_server_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 104);
      v17 = *(v2 + 76);
      LODWORD(v24) = 67110147;
      HIDWORD(v24) = v15;
      strcpy(&v25, "p\bhash");
      HIBYTE(v25) = 0;
      *v26 = 0;
      *&v26[2] = 2081;
      *&v26[4] = v16;
      *&v26[12] = 2048;
      *&v26[14] = v17;
      *&v26[22] = 2082;
      v27 = v2 + 84;
      v8 = "[R%u] getaddrinfo stop -- hostname: %{private,mask.hash}s, client pid: %lld (%{public}s)";
      goto LABEL_20;
    }
  }

  v24 = _NSConcreteStackBlock;
  v25 = 0x40000000;
  *v26 = ___dx_gai_request_stop_client_requests_block_invoke;
  *&v26[8] = &__block_descriptor_tmp_38_1039;
  *&v26[16] = a1;
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  (*v26)(&v24);
  KQueueUnlock("dx_gai_request: stopping client requests");
  v18 = *(a1 + 64);
  if (v18)
  {
    Querier_DeregisterCustomDNSService(v18);
    *(a1 + 64) = 0;
  }

  v19 = *(a1 + 184);
  if (v19)
  {
    mdns_trust_invalidate(v19);
    os_release(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v20 = *(a1 + 192);
  if (v20)
  {
    os_release(v20);
    *(a1 + 192) = 0;
  }

  v21 = *(a1 + 112);
  if (v21)
  {
    os_release(v21);
    *(a1 + 112) = 0;
  }

  v22 = *(a1 + 120);
  if (v22)
  {
    xpc_release(v22);
    *(a1 + 120) = 0;
  }

  v23 = *(a1 + 128);
  if (v23)
  {
    xpc_release(v23);
    *(a1 + 128) = 0;
  }
}

void _dx_request_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _dx_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_release(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t _dx_request_init(uint64_t result)
{
  *(result + 48) = atomic_fetch_add(&dnssd_server_get_new_request_id_s_next_id, 1u);
  *(result + 56) = 0;
  return result;
}

void _dx_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    os_release(v3);
    *(a1 + 64) = 0;
  }
}

void __dnssd_server_idle_block_invoke(id a1)
{
  if (_dx_server_queue_once != -1)
  {
    dispatch_once(&_dx_server_queue_once, &__block_literal_global_27);
  }

  dnssd_server_idle_s_source = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, _dx_server_queue_queue);
  dispatch_source_set_event_handler(dnssd_server_idle_s_source, &__block_literal_global_19);
  v1 = dnssd_server_idle_s_source;

  dispatch_activate(v1);
}

void __dnssd_server_idle_block_invoke_2(id a1)
{
  if (g_session_list)
  {
    v1 = mach_absolute_time();
    v2 = g_session_list;
    if (g_session_list)
    {
      v3 = v1;
      do
      {
        if (*(v2 + 32))
        {
          if (!*(v2 + 80))
          {
            goto LABEL_10;
          }

          v4 = *(v2 + 56);
          if (mdns_mach_ticks_per_second_s_once != -1)
          {
            dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
          }

          if ((v3 - v4) / mdns_mach_ticks_per_second_s_ticks_per_second < 5)
          {
LABEL_10:
            v7 = *(v2 + 24);
            if (!v7)
            {
              goto LABEL_20;
            }

            while (1)
            {
              v8 = *(*v7 + 32);
              if (v8)
              {
                v9 = v8(v7);
                if (v9)
                {
                  v10 = v9;
                  v11 = xpc_dictionary_create(0, 0, 0);
                  if (!v11)
                  {
                    _dx_session_terminate(v2, 5);
                    xpc_release(v10);
                    goto LABEL_20;
                  }

                  v12 = v11;
                  xpc_dictionary_set_uint64(v11, "id", v7[5]);
                  xpc_dictionary_set_int64(v12, "error", 0);
                  xpc_dictionary_set_value(v12, "results", v10);
                  xpc_release(v10);
                  _dx_session_send_message(v2, v12);
                  xpc_release(v12);
                }
              }

              if ((_dx_request_send_pending_error(v7) & 1) == 0)
              {
                v5 = v2;
                v6 = 5;
                goto LABEL_19;
              }

              v7 = v7[2];
              if (!v7)
              {
                goto LABEL_20;
              }
            }
          }

          v5 = v2;
          v6 = 2;
LABEL_19:
          _dx_session_terminate(v5, v6);
        }

        else
        {
          fprintf(__stderrp, "AssertMacros: %s, %s file: %s, line: %d, value: %lld\n", "me->connection", "", "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssd_server.c", 1050, 0);
        }

LABEL_20:
        v2 = *(v2 + 16);
      }

      while (v2);
    }
  }
}

uint64_t *GetAuthInfoForName_direct(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2)
  {
    v2 = a2;
    v3 = (a1 + 12760);
    do
    {
      v4 = v3;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (SameDomainNameBytes(v4 + 12, v2))
        {
          return v4;
        }
      }

      v5 = &v2[*v2];
      v6 = v5[1];
      v2 = v5 + 1;
    }

    while (v6);
  }

  return 0;
}

void RecreateNATMappings(uint64_t a1, int a2)
{
  if ((*(a1 + 64) + a2) <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 64) + a2;
  }

  for (i = *(a1 + 14720); i; i = *i)
  {
    i[1] = 0xFA00000000;
    *(i + 4) = v3;
    *(i + 6) = 0;
    if (!*(i + 172))
    {
      *(i + 5) = 0;
    }

    v5 = i[7];
    if (v5)
    {
      mDNSPlatformTCPCloseConnection(v5);
      i[7] = 0;
    }
  }

  *(a1 + 14748) = arc4random();
  *(a1 + 14752) = arc4random();
  *(a1 + 14756) = arc4random();
  *(a1 + 14736) = 0;
  *(a1 + 14740) = v3;
  LNT_ClearState(a1);
  *(a1 + 104) = *(a1 + 64);
}

void natTraversalHandleAddressReply(uint64_t a1, int a2, int a3)
{
  v11 = a3;
  if (a2)
  {
    v4 = a2;
    if (natTraversalHandleAddressReply_last_err != a2)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Error getting external address %d", a2);
    }

    v11 = 0;
    goto LABEL_5;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Received external IP address %.4a from NAT", COERCE_DOUBLE(&v11));
    LOBYTE(a3) = v11;
  }

  if (a3 == 10)
  {
    goto LABEL_16;
  }

  if (a3 != 172)
  {
    if (a3 != 192 || BYTE1(v11) != 168)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((BYTE1(v11) & 0xF0) == 0x10)
  {
LABEL_16:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Double NAT (external NAT gateway address %.4a is also a private RFC 1918 address)", COERCE_DOUBLE(&v11));
  }

LABEL_17:
  if (v11)
  {
    v4 = 0;
    v5 = 900000;
    *(a1 + 14744) = v11;
    goto LABEL_19;
  }

  v4 = 3;
LABEL_5:
  *(a1 + 14744) = 0;
  if (natTraversalHandleAddressReply_last_err)
  {
    v5 = *(a1 + 14736);
    goto LABEL_20;
  }

  v5 = 250;
LABEL_19:
  *(a1 + 14736) = v5;
LABEL_20:
  v6 = v5 + *(a1 + 64);
  *(a1 + 14740) = v6;
  if (*(a1 + 104) - v6 >= 1)
  {
    *(a1 + 104) = v6;
  }

  natTraversalHandleAddressReply_last_err = v4;
  for (i = *(a1 + 14720); i; i = *i)
  {
    if (*(i + 39) != v11)
    {
      v8 = *(i + 6);
      if (*(i + 172))
      {
        if ((v8 - 1) < 2)
        {
          goto LABEL_28;
        }
      }

      else if (v8 != 3)
      {
LABEL_28:
        *(i + 39) = v11;
        i[1] = 0xFA00000000;
        v9 = *(a1 + 64);
        *(i + 4) = v9;
        v10 = i[7];
        if (v10)
        {
          mDNSPlatformTCPCloseConnection(v10);
          i[7] = 0;
          v9 = *(a1 + 64);
        }

        *(a1 + 104) = v9;
      }
    }
  }
}

void natTraversalHandlePortMapReplyWithAddress(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, unsigned int a7, int a8)
{
  v8 = a6;
  v27 = a5;
  v12 = "Add";
  v13 = "UDP";
  v14 = *(a2 + 172);
  v15 = "???";
  if (v14 == 2)
  {
    v15 = "TCP";
  }

  if (v14 != 1)
  {
    v13 = v15;
  }

  if (*(a2 + 172))
  {
    v12 = v13;
  }

  *(a2 + 20) = a4;
  if (!a4 && a7 && a6)
  {
    if (a7 >= 0xF423F)
    {
      v18 = 999999;
    }

    else
    {
      v18 = a7;
    }

    if (*(a1 + 64) + 1000 * v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = *(a1 + 64) + 1000 * v18;
    }

    v20 = *(a2 + 156);
    *(a2 + 8) = v19;
    if (v20 == a5)
    {
      if (*(a2 + 176) == a6 || (mDNS_LoggingEnabled & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (mDNS_LoggingEnabled != 1)
    {
LABEL_34:
      *(a2 + 144) = a3;
      *(a2 + 156) = a5;
      if (v14)
      {
        *(a2 + 176) = v8;
      }

      *(a2 + 24) = a8;
      v25 = (*(a2 + 8) - *(a1 + 64)) / 2;
      if (v25 <= 2000)
      {
        v25 = 2000;
      }

      *(a2 + 12) = v25;
      v26 = *(a1 + 64);
      *(a2 + 16) = v26 + v25;
      *(a1 + 104) = v26;
      return;
    }

    v23 = *(a2 + 24);
    if (v23 >= 3)
    {
      if (v23 == 3)
      {
        v24 = "PCP     ";
      }

      else
      {
        v24 = "Unknown ";
      }
    }

    else
    {
      v24 = off_100150538[v23];
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "natTraversalHandlePortMapReplyWithAddress: %p %s Response %s Port %5d External %.4a:%d changed to %.4a:%d lease %d", a2, v24, v12, bswap32(*(a2 + 174)) >> 16, COERCE_DOUBLE(a2 + 156), bswap32(*(a2 + 176)) >> 16, COERCE_DOUBLE(&v27), bswap32(a6) >> 16, v18);
    a5 = v27;
    v14 = *(a2 + 172);
    goto LABEL_34;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "natTraversalHandlePortMapReplyWithAddress: %p Response %s Port %5d External %.4a:%d lease %d error %d", a2, v12, bswap32(*(a2 + 174)) >> 16, COERCE_DOUBLE(&v27), bswap32(a6) >> 16, a7, a4);
  }

  v21 = *(a1 + 64) + 900000;
  *(a2 + 12) = 900000;
  *(a2 + 16) = v21;
  if (a4 == 2)
  {
    v22 = -65565;
  }

  else
  {
    if ((a4 - 1) > 4)
    {
      return;
    }

    v22 = -65564;
  }

  *(a2 + 20) = v22;
}

void mDNS_StopNATOperation_internal(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 14720);
  v5 = (a1 + 14720);
  do
  {
    v6 = v5;
    v5 = *v5;
    if (v5)
    {
      v7 = v5 == a2;
    }

    else
    {
      v7 = 1;
    }
  }

  while (!v7);
  if (!v5)
  {
    v10 = mDNSLogCategory_NAT;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_NAT == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      *&buf[4] = a2;
    }

    else
    {
      v10 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      *&buf[4] = a2;
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mDNS_StopNATOperation_internal: NATTraversalInfo %p not found in list", buf, 0xCu);
    return;
  }

  *v6 = *v5;
  v8 = mDNSLogCategory_NAT;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v9 = mDNSLogCategory_NAT == mDNSLogCategory_State;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = mDNSLogCategory_NAT_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
  {
LABEL_23:
    v13 = *(a2 + 172);
    v14 = bswap32(*(a2 + 174)) >> 16;
    v15 = bswap32(*(a2 + 176)) >> 16;
    v16 = *(a2 + 180);
    *buf = 134219008;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 1024;
    *&buf[20] = v14;
    LOWORD(v58) = 1024;
    *(&v58 + 2) = v15;
    HIWORD(v58) = 1024;
    LODWORD(v59) = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "mDNS_StopNATOperation_internal %p %d %d %d %u", buf, 0x24u);
  }

LABEL_24:
  v17 = *(a1 + 14728);
  if (v17 == a2)
  {
    *(a1 + 14728) = *v17;
  }

  v18 = *v4;
  if (!*v4)
  {
    LOBYTE(v31) = 1;
    goto LABEL_55;
  }

  v19 = 1;
  do
  {
    v20 = *(a2 + 172);
    v21 = *(v18 + 172);
    if (!*(a2 + 172))
    {
      if (*(v18 + 172))
      {
        if (v21 != 2)
        {
          goto LABEL_52;
        }

        v22 = *(v18 + 87);
        goto LABEL_41;
      }

LABEL_42:
      v24 = mDNSLogCategory_NAT;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v25 = mDNSLogCategory_NAT == mDNSLogCategory_State;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
LABEL_51:
          v19 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v24 = mDNSLogCategory_NAT_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_51;
        }
      }

      v27 = bswap32(*(a2 + 174));
      v28 = *(a2 + 180);
      v29 = bswap32(*(v18 + 87));
      v30 = *(v18 + 45);
      *buf = 134219776;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v20;
      *&buf[18] = 1024;
      *&buf[20] = HIWORD(v27);
      LOWORD(v58) = 1024;
      *(&v58 + 2) = v28;
      HIWORD(v58) = 2048;
      v59 = v18;
      LOWORD(v60) = 1024;
      *(&v60 + 2) = v21;
      HIWORD(v60) = 1024;
      LODWORD(v61) = HIWORD(v29);
      WORD2(v61) = 1024;
      *(&v61 + 6) = v30;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Warning: Removed port mapping request %p Prot %d Int %d TTL %u duplicates existing port mapping request %p Prot %d Int %d TTL %u", buf, 0x3Au);
      goto LABEL_51;
    }

    if (v20 == v21)
    {
      if (*(a2 + 174) == *(v18 + 87))
      {
        goto LABEL_42;
      }
    }

    else if (v20 == 2 && v21 == 0)
    {
      v22 = *(a2 + 174);
LABEL_41:
      if (v22 != 2304)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

LABEL_52:
    v18 = *v18;
  }

  while (v18);
  v31 = v19 != 0;
LABEL_55:
  if (!*(a1 + 15036) || !*(a1 + 15056) || !*(a1 + 15072))
  {
    goto LABEL_101;
  }

  v32 = *(a2 + 176);
  if (!*(a2 + 176))
  {
    v32 = *(a2 + 174);
  }

  v64 = 0;
  v63 = 0;
  mDNS_snprintf(&v63, 10, "%u", __rev16(v32));
  *buf = "NewRemoteHost";
  *&buf[8] = "string";
  *&buf[16] = "";
  v58 = "NewExternalPort";
  v59 = "ui2";
  v60 = &v63;
  *&v61 = "NewProtocol";
  *(&v61 + 1) = "string";
  v33 = "TCP";
  if (*(a2 + 172) == 1)
  {
    v33 = "UDP";
  }

  v62 = v33;
  *(a2 + 48) = a2;
  if (*(a2 + 56))
  {
    v34 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 0;
LABEL_72:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LNT_UnmapPort: closing previous open connection", v56, 2u);
      }
    }

    else
    {
      v34 = mDNSLogCategory_NAT_redacted;
      if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 0;
        goto LABEL_72;
      }
    }

    v36 = *(a2 + 56);
    if (v36)
    {
      mDNSPlatformTCPCloseConnection(v36);
      *(a2 + 56) = 0;
    }
  }

  v37 = *(a2 + 96);
  if (v37)
  {
    free(v37);
    *(a2 + 96) = 0;
  }

  v38 = *(a2 + 112);
  if (v38)
  {
    free(v38);
    *(a2 + 112) = 0;
  }

  v39 = malloc_type_malloc(0x70uLL, 0xE6A816B6uLL);
  if (v39)
  {
    v40 = v39;
    v41 = (a1 + 15008);
    v42 = *(a2 + 32);
    v43 = *(a2 + 64);
    v39[1] = *(a2 + 48);
    v39[2] = v43;
    *v39 = v42;
    v44 = *(a2 + 80);
    v45 = *(a2 + 96);
    v46 = *(a2 + 128);
    v39[5] = *(a2 + 112);
    v39[6] = v46;
    v39[3] = v44;
    v39[4] = v45;
    v47 = (a1 + 15008);
    do
    {
      v48 = v47;
      v47 = *v47;
    }

    while (v47);
    *v48 = v39;
    v49 = SendSOAPMsgControlAction(a1, v39, "DeletePortMapping", 3u, buf, 4);
    if (v49)
    {
      v50 = v49;
      do
      {
        v51 = v41;
        v41 = *v41;
        if (v41)
        {
          v52 = v41 == v40;
        }

        else
        {
          v52 = 1;
        }
      }

      while (!v52);
      if (v41)
      {
        *v51 = *v41;
        free(v40);
      }

      v53 = mDNSLogCategory_NAT;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v54 = mDNSLogCategory_NAT == mDNSLogCategory_State;
      }

      else
      {
        v54 = 1;
      }

      if (v54)
      {
        if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v50;
          goto LABEL_100;
        }
      }

      else
      {
        v53 = mDNSLogCategory_NAT_redacted;
        if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v50;
LABEL_100:
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Legacy NAT Traversal - unmap request failed with error %d", buf, 8u);
        }
      }
    }

LABEL_101:
    if (*(a2 + 8) != 0 && v31)
    {
      *(a2 + 180) = 0;
      *(a2 + 12) = 0;
      *(a2 + 28) = 0;
      *(a2 + 176) = 0;
      *(a2 + 156) = 0;
      uDNS_SendNATMsg(a1, a2, *(a2 + 24) != 1, 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t mDNS_StartNATOperation(uint64_t *a1)
{
  mDNS_Lock_(mDNSStorage, "mDNS_StartNATOperation", 1003);
  started = mDNS_StartNATOperation_internal(mDNSStorage, a1);
  mDNS_Unlock_(mDNSStorage, "mDNS_StartNATOperation", 1005);
  return started;
}

void FoundStaticHostname(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(a3 + 40) + 4);
  v8 = *(a1 + 14680);
  if (*(a3 + 12))
  {
    if (mDNS_LoggingEnabled)
    {
      v9 = "ADD";
      if (!a4)
      {
        v9 = "RMV";
      }

      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "FoundStaticHostname: question %##s -> answer %##s (%s)", a2 + 376, *(a3 + 40) + 4, v9);
    }
  }

  else if (mDNS_LoggingEnabled)
  {
    v10 = "ADD";
    if (!a4)
    {
      v10 = "RMV";
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "FoundStaticHostname: question %##s -> answer NULL (%s)", a2 + 376, v10);
  }

  if (!a4)
  {
    if (!SameDomainNameBytes(v7, (a1 + 14168)))
    {
      return;
    }

    mDNS_Lock_(a1, "FoundStaticHostname", 2587);
    *(a1 + 14168) = 0;
    v13 = *(a1 + 64);
    if (v13 <= 1)
    {
      v13 = 1;
    }

    *(a1 + 12684) = v13;
    v14 = a1;
    v15 = 2590;
    goto LABEL_36;
  }

  if (!*(a3 + 12) || SameDomainNameBytes(v7, (a1 + 14168)))
  {
    return;
  }

  v11 = v7;
  do
  {
    if (!v11)
    {
      break;
    }

    v12 = *v11;
    if (v12 > 0x3F)
    {
      break;
    }

    if (!*v11)
    {
      v16 = v11 - v7 + 1;
      if (v16 <= 0x100u)
      {
        memcpy((a1 + 14168), v7, v16);
        goto LABEL_26;
      }

      break;
    }

    v11 += v12 + 1;
  }

  while (v11 - v7 <= 255);
  *(a1 + 14168) = 0;
LABEL_26:
  if (!v8)
  {
LABEL_33:
    mDNS_Lock_(a1, "FoundStaticHostname", 2581);
    v19 = *(a1 + 64);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    *(a1 + 12684) = v19;
    v14 = a1;
    v15 = 2583;
LABEL_36:

    mDNS_Unlock_(v14, "FoundStaticHostname", v15);
    return;
  }

  while (1)
  {
    v17 = *(v8 + 202);
    v18 = v17 == 1 || v17 == 6;
    if (v18 || *(v8 + 496) == 1)
    {
      break;
    }

    v8 = *v8;
    if (!v8)
    {
      goto LABEL_33;
    }
  }

  v20 = *(a1 + 64) + 5000;
  if (v20 <= 1)
  {
    v20 = 1;
  }

  *(a1 + 12684) = v20;
}

void UpdateOneSRVRecord(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  ServiceTarget = GetServiceTarget(a1, a2);
  v6 = ServiceTarget;
  if (ServiceTarget)
  {
    v7 = ServiceTarget;
  }

  else
  {
    v7 = "";
  }

  v8 = *v7 && *(a2 + 344) == 8 || SameDomainNameBytes((v4 + 10), v7) == 0;
  v9 = *(a2 + 48);
  v10 = *(v9 + 8);
  if (*(a2 + 120) != 2 || v10 == 0)
  {
    goto LABEL_13;
  }

  v13 = *(a1 + 12720);
  if (v13 != 10)
  {
    if (v13 == 172)
    {
      if ((*(a1 + 12721) & 0xF0) != 0x10)
      {
        goto LABEL_13;
      }
    }

    else if (v13 != 192 || *(a1 + 12721) != 168)
    {
      goto LABEL_13;
    }
  }

  v16 = *(a2 + 376);
  if (v16)
  {
    if (*(v16 + 788) != 4)
    {
      v12 = 1;
      if (*(a2 + 584))
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v17 = *(v16 + 792);
    switch(v17)
    {
      case 10:
        v25 = 1;
        break;
      case 192:
        v18 = *(v16 + 793) == 168;
LABEL_68:
        v25 = v18;
        break;
      case 172:
        v18 = (*(v16 + 793) & 0xF0) == 16;
        goto LABEL_68;
      default:
        v25 = 0;
        break;
    }

    LODWORD(v12) = v25 ^ 1;
    goto LABEL_14;
  }

LABEL_13:
  LODWORD(v12) = 0;
LABEL_14:
  if (*(a2 + 584))
  {
LABEL_15:
    v12 = (v10 != *(a2 + 568)) & ~v12;
    goto LABEL_22;
  }

  v12 = (v12 & 1) != 0;
LABEL_22:
  if (mDNS_LoggingEnabled == 1)
  {
    v14 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (v9 + 4), (a1 + 47032));
    LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: Resource Record %s TargetChanged %d, NewTarget %##s", a1 + 47032, v8, v6);
  }

  mDNS_VerifyLockState("Check Lock", 1, *(a1 + 48), *(a1 + 52), "UpdateOneSRVRecord", 2307);
  if (v8 | v12)
  {
    if (*(a2 + 8) == 1)
    {
      if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: Deregistering record, Ignoring TargetChanged %d, NATChanged %d for %##s, state %d", v8, v12, *(a2 + 40), *(a2 + 344));
      }

      return;
    }

    if (mDNS_LoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: TargetChanged %d, NATChanged %d for %##s, state %d, newtarget %##s", v8, v12, *(a2 + 40), *(a2 + 344), v7);
    }

    v15 = *(a2 + 344);
    if (v15 <= 5)
    {
      if ((v15 - 1) < 3 || v15 == 5)
      {
        *(a2 + 592) = 1;
        *(a2 + 280) = 1000;
        *(a2 + 284) = *(a1 + 64) - 1000;
        if (*v7)
        {
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: SRV record changed for service %##s, registering with new target %##s", *(a2 + 40), v7);
          }

          *(a2 + 344) = 1;
          return;
        }

        if (mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: SRV record changed for service %##s de-registering", *(a2 + 40));
        }

        *(a2 + 344) = 3;
        v22 = a1;
        v23 = a2;
        v24 = 0;
        goto LABEL_79;
      }

LABEL_66:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: Unknown state %d for %##s", *(a2 + 344), *(a2 + 40), v27, v28);
      return;
    }

    if ((v15 - 6) < 2)
    {
      return;
    }

    if (v15 != 8)
    {
      if (v15 != 9)
      {
        goto LABEL_66;
      }

      if (!v12)
      {
        return;
      }
    }

    if (*v7)
    {
      if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RegisterAllServiceRecords: Service Record %##s", *(a2 + 40));
      }

      *(a2 + 592) = 0;
      v19 = (a1 + 12616);
      do
      {
        v20 = v19;
        v19 = *v19;
        if (v19)
        {
          v21 = v19 == a2;
        }

        else
        {
          v21 = 1;
        }
      }

      while (!v21);
      if (v19)
      {
        *v20 = *a2;
        *a2 = 0;
        if (*(a2 + 584))
        {
          mDNS_StopNATOperation_internal(a1, a2 + 392);
          *(a2 + 584) = 0;
          if (*(a2 + 12) == 33)
          {
            *(*(a2 + 48) + 8) = *(a2 + 566);
          }
        }
      }

      else
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "UnlinkResourceRecord:ERROR!! - no such active record %##s", *(a2 + 40));
      }

      mDNS_Register_internal(a1, a2);
      v22 = a1;
      v23 = a2;
      v24 = 1;
LABEL_79:

      UpdateAllServiceRecords(v22, v23, v24);
      return;
    }

    if (mDNS_LoggingEnabled)
    {
      v26 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v26, OS_LOG_TYPE_DEFAULT, "UpdateOneSRVRecord: No target yet for Resource Record %s");
    }
  }
}

void UpdateAllServiceRecords(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 12) != 33)
  {
    v6 = "UpdateAllServiceRecords:ERROR!! ResourceRecord not a service record %s";
    goto LABEL_6;
  }

  if (a3 && *(a2 + 344) == 8)
  {
    v6 = "UpdateAllServiceRecords:ERROR!! SRV record %s in noTarget state during registration";
LABEL_6:
    v7 = mDNSLogCategory_Default;
    v8 = a1 + 47032;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, v6, v8);
    return;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v9 = mDNSLogCategory_Default;
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "UpdateAllServiceRecords: ResourceRecord %s", (a1 + 47032));
  }

  v10 = *(a1 + 12616);
  if (v10)
  {
    while (*(v10 + 32) || *(v10 + 122) || IsLocalDomain(*(v10 + 40)))
    {
LABEL_23:
      v10 = *v10;
      if (!v10)
      {
        return;
      }
    }

    v11 = *(v10 + 12);
    if (v11 == 12)
    {
      v12 = 72;
    }

    else
    {
      if (v11 != 16)
      {
        v13 = 0;
LABEL_22:
        if (v13 == a2)
        {
          if (a3)
          {
            *(v10 + 592) = 0;
            v15 = *(v10 + 344);
            if (v15 == 2 || v15 == 1 && (v16 = *(v10 + 376)) != 0 && *(v16 + 792))
            {
              if (mDNS_LoggingEnabled == 1)
              {
                v17 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), (a1 + 47032));
                LogMsgWithLevel(v17, OS_LOG_TYPE_DEFAULT, "UpdateAllServiceRecords: not registering %s, state %d", (a1 + 47032), *(v10 + 344));
              }
            }

            else
            {
              if (mDNS_LoggingEnabled == 1)
              {
                v19 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), (a1 + 47032));
                LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "UpdateAllServiceRecords: registering %s, state %d", (a1 + 47032), *(v10 + 344));
              }

              ActivateUnicastRegistration(a1, v10);
            }
          }

          else
          {
            if (mDNS_LoggingEnabled == 1)
            {
              v18 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((v10 + 8), (*(v10 + 48) + 4), (a1 + 47032));
              LogMsgWithLevel(v18, OS_LOG_TYPE_DEFAULT, "UpdateAllServiceRecords: deregistering %s", (a1 + 47032));
            }

            *(v10 + 592) = 1;
            *(v10 + 280) = 1000;
            *(v10 + 284) = *(a1 + 64) - 1000;
            *(v10 + 344) = 3;
          }
        }

        goto LABEL_23;
      }

      v12 = 88;
    }

    v13 = *(v10 + v12);
    if (v13 && *(v13 + 12) != 33)
    {
      v14 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v13 + 8), (*(v13 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "UpdateAllServiceRecords: ERROR!! Resource record %s wrong, expecting SRV type", (a1 + 47032));
    }

    goto LABEL_22;
  }
}

void hostnameGetPublicAddressCallback(unsigned int *a1, uint64_t a2)
{
  v2 = *(a2 + 192);
  if (v2)
  {
    if (!*(a2 + 168))
    {
      v4 = (a2 + 152);
      v3 = *(a2 + 152);
      if (v3 && v3 != 10)
      {
        if (v3 == 172)
        {
          if ((BYTE1(v3) & 0xF0) == 0x10)
          {
            return;
          }
        }

        else if (v3 == 192 && BYTE1(v3) == 168)
        {
          return;
        }

        if (*(v2 + 472))
        {
          v8 = *(v2 + 512);
          v10 = *(v8 + 4);
          v9 = v8 + 4;
          if (v10 != v3)
          {
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Updating hostname %p %##s IPv4 from %.4a to %.4a (NAT gateway's external address)", a2, *(v2 + 504), v9, a2 + 152);
            }

            mDNS_Deregister(a1, (v2 + 464));
          }
        }

        else
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Advertising hostname %##s IPv4 %.4a (NAT gateway's external address)", *(v2 + 504), a2 + 152);
          }

          *(v2 + 472) = 32;
          *(*(v2 + 512) + 4) = *v4;

          mDNS_Register(a1, v2 + 464);
        }
      }
    }
  }

  else
  {
    v6 = mDNSLogCategory_Default;

    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "RegisterHostnameRecord: registration cancelled");
  }
}

void mDNS_RemoveDynDNSHostName(_BYTE *a1)
{
  v2 = mDNSLogCategory_uDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v3 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v2 = mDNSLogCategory_uDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    if (a1)
    {
      v8 = a1;
      while (1)
      {
        if (!v8 || (v9 = *v8, v9 > 0x3F))
        {
LABEL_21:
          v6 = 257;
          goto LABEL_26;
        }

        if (!*v8)
        {
          break;
        }

        v8 += v9 + 1;
        if (v8 - a1 >= 256)
        {
          goto LABEL_21;
        }
      }

      v6 = (v8 - a1 + 1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v4 = a1;
      while (1)
      {
        if (!v4 || (v5 = *v4, v5 > 0x3F))
        {
LABEL_13:
          v6 = 257;
          goto LABEL_26;
        }

        if (!*v4)
        {
          break;
        }

        v4 += v5 + 1;
        if (v4 - a1 >= 256)
        {
          goto LABEL_13;
        }
      }

      v6 = (v4 - a1 + 1);
    }

    else
    {
      v6 = 0;
    }

LABEL_26:
    v37 = 141558531;
    v38 = 1752392040;
    v39 = 1040;
    v40 = v6;
    v41 = 2101;
    v42 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mDNS_RemoveDynDNSHostName %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v37, 0x1Cu);
  }

LABEL_27:
  v10 = xmmword_100170B70;
  if (!xmmword_100170B70)
  {
    goto LABEL_37;
  }

  v11 = &xmmword_100170B70;
  while (1)
  {
    v12 = SameDomainNameBytes(a1, (v10 + 208));
    v13 = *v11;
    if (v12)
    {
      break;
    }

    v10 = *v13;
    v11 = *v11;
    if (!*v13)
    {
      goto LABEL_37;
    }
  }

  if (!v13)
  {
LABEL_37:
    v16 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v17 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_79;
      }

      if (a1)
      {
        v18 = a1;
        while (1)
        {
          if (!v18 || (v19 = *v18, v19 > 0x3F))
          {
LABEL_49:
            v20 = 257;
            goto LABEL_78;
          }

          if (!*v18)
          {
            break;
          }

          v18 += v19 + 1;
          if (v18 - a1 >= 256)
          {
            goto LABEL_49;
          }
        }

        v20 = (v18 - a1 + 1);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v16 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_79;
      }

      if (a1)
      {
        v22 = a1;
        while (1)
        {
          if (!v22 || (v23 = *v22, v23 > 0x3F))
          {
LABEL_57:
            v20 = 257;
            goto LABEL_78;
          }

          if (!*v22)
          {
            break;
          }

          v22 += v23 + 1;
          if (v22 - a1 >= 256)
          {
            goto LABEL_57;
          }
        }

        v20 = (v22 - a1 + 1);
      }

      else
      {
        v20 = 0;
      }
    }

LABEL_78:
    v37 = 141558531;
    v38 = 1752392040;
    v39 = 1040;
    v40 = v20;
    v41 = 2101;
    v42 = a1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mDNS_RemoveDynDNSHostName: no such domainname %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v37, 0x1Cu);
    goto LABEL_79;
  }

  v14 = v13[472];
  if (v13[472])
  {
    v14 = *(v13 + 202) != 4;
  }

  if (v13[1648])
  {
    v15 = *(v13 + 496) != 4;
  }

  else
  {
    v15 = 0;
  }

  *v11 = *v13;
  if ((v14 | v15))
  {
    if (!v14)
    {
      goto LABEL_96;
    }

    v24 = mDNSLogCategory_uDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v29 = a1;
          while (1)
          {
            if (!v29 || (v30 = *v29, v30 > 0x3F))
            {
LABEL_89:
              v27 = 257;
              goto LABEL_94;
            }

            if (!*v29)
            {
              break;
            }

            v29 += v30 + 1;
            if (v29 - a1 >= 256)
            {
              goto LABEL_89;
            }
          }

          v27 = (v29 - a1 + 1);
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v24 = mDNSLogCategory_uDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v25 = a1;
          while (1)
          {
            if (!v25 || (v26 = *v25, v26 > 0x3F))
            {
LABEL_72:
              v27 = 257;
              goto LABEL_94;
            }

            if (!*v25)
            {
              break;
            }

            v25 += v26 + 1;
            if (v25 - a1 >= 256)
            {
              goto LABEL_72;
            }
          }

          v27 = (v25 - a1 + 1);
        }

        else
        {
          v27 = 0;
        }

LABEL_94:
        v37 = 141558531;
        v38 = 1752392040;
        v39 = 1040;
        v40 = v27;
        v41 = 2101;
        v42 = a1;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "mDNS_RemoveDynDNSHostName removing v4 %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v37, 0x1Cu);
      }
    }

    mDNS_Deregister_internal(mDNSStorage, v13 + 58, 0);
LABEL_96:
    if (!v15)
    {
      goto LABEL_79;
    }

    v31 = mDNSLogCategory_uDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v35 = a1;
          while (1)
          {
            if (!v35 || (v36 = *v35, v36 > 0x3F))
            {
LABEL_114:
              v34 = 257;
              goto LABEL_119;
            }

            if (!*v35)
            {
              break;
            }

            v35 += v36 + 1;
            if (v35 - a1 >= 256)
            {
              goto LABEL_114;
            }
          }

          v34 = (v35 - a1 + 1);
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v31 = mDNSLogCategory_uDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v32 = a1;
          while (1)
          {
            if (!v32 || (v33 = *v32, v33 > 0x3F))
            {
LABEL_106:
              v34 = 257;
              goto LABEL_119;
            }

            if (!*v32)
            {
              break;
            }

            v32 += v33 + 1;
            if (v32 - a1 >= 256)
            {
              goto LABEL_106;
            }
          }

          v34 = (v32 - a1 + 1);
        }

        else
        {
          v34 = 0;
        }

LABEL_119:
        v37 = 141558531;
        v38 = 1752392040;
        v39 = 1040;
        v40 = v34;
        v41 = 2101;
        v42 = a1;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "mDNS_RemoveDynDNSHostName removing v6 %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", &v37, 0x1Cu);
      }
    }

    mDNS_Deregister_internal(mDNSStorage, v13 + 205, 0);
    goto LABEL_79;
  }

  if (*(v13 + 25))
  {
    mDNS_StopNATOperation_internal(mDNSStorage, (v13 + 8));
    *(v13 + 25) = 0;
  }

  free(v13);
LABEL_79:
  mDNS_VerifyLockState("Check Lock", 1, dword_10016D248, dword_10016D24C, "mDNS_RemoveDynDNSHostName", 2699);
  v28 = dword_10016D258;
  if (dword_10016D258 <= 1)
  {
    v28 = 1;
  }

  dword_1001703A4 = v28;
}

uint64_t ParseTSIGError(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a1 + 36864;
  Additionals = LocateAdditionals(a2, a3);
  if (!Additionals || !*(a2 + 10))
  {
    goto LABEL_21;
  }

  v10 = Additionals;
  v11 = 0;
  while (1)
  {
    LargeResourceRecord = GetLargeResourceRecord(a1, a2, v10, a3, 0, 128, a1 + 37912);
    if (!LargeResourceRecord)
    {
      goto LABEL_21;
    }

    v10 = LargeResourceRecord;
    if (*(v8 + 1056) != 240 && *(v8 + 1060) == 250)
    {
      break;
    }

    *(v8 + 1056) = 0;
    *(v8 + 1158) = 0;
    v13 = *(v8 + 1112);
    if (v13)
    {
      ref_count_obj_release(v13);
      *(v8 + 1112) = 0;
    }

    if (++v11 >= *(a2 + 10))
    {
      goto LABEL_21;
    }
  }

  if ((v14 = (*(v8 + 1096) + 4), v15 = &v14[*(v8 + 1068)], v16 = DomainNameBytesLength(v14, v15), v16 <= 0x100) && (v17 = &v14[v16], (v17 + 6) <= v15) && (v18 = (v17 + 8), (v17 + 8) <= v15) && (v19 = (v17 + 10), v19 <= v15) && (v20 = v19 + (bswap32(*v18) >> 16), v20 <= v15) && ((v21 = (v20 + 2), v22 = v20 + 4, v21 <= v15) ? (v23 = v22 > v15) : (v23 = 1), !v23))
  {
    v27 = bswap32(*v21);
    v24 = HIWORD(v27);
    if (HIWORD(v27) <= 0x10u)
    {
      if (!v24)
      {
        goto LABEL_22;
      }

      if (v24 == 16)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%##s: bad signature", a4);
        v24 = 4294901736;
        goto LABEL_22;
      }

LABEL_32:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%##s: unknown tsig error %d", a4, v24);
      v24 = 4294901759;
      goto LABEL_22;
    }

    if (v24 != 17)
    {
      if (v24 == 18)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%##s: bad time", a4);
        v24 = 4294901737;
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    v24 = 4294901735;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%##s: bad key", a4);
  }

  else
  {
LABEL_21:
    v24 = 0;
  }

LABEL_22:
  *(v8 + 1056) = 0;
  *(v8 + 1158) = 0;
  v25 = *(v8 + 1112);
  if (v25)
  {
    ref_count_obj_release(v25);
    *(v8 + 1112) = 0;
  }

  return v24;
}

const char *LLQStateToString(int a1)
{
  if (a1 > 11)
  {
    if (a1 <= 20)
    {
      if (a1 == 12)
      {
        return "LLQ_DNSPush_Established";
      }

      if (a1 == 20)
      {
        return "LLQ_InitialRequest";
      }
    }

    else
    {
      switch(a1)
      {
        case 21:
          return "LLQ_SecondaryRequest";
        case 22:
          return "LLQ_Established";
        case 30:
          return "LLQ_Poll";
      }
    }

LABEL_21:
    v3 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        v4 = 67109120;
        v5 = a1;
        goto LABEL_27;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        v4 = 67109120;
        v5 = a1;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Invalid LLQ_State - state: %u", &v4, 8u);
      }
    }

    return "<INVALID LLQ_State>";
  }

  if (a1 <= 9)
  {
    if (!a1)
    {
      return "LLQ_Invalid";
    }

    if (a1 == 1)
    {
      return "LLQ_Init";
    }

    goto LABEL_21;
  }

  if (a1 == 10)
  {
    return "LLQ_DNSPush_ServerDiscovery";
  }

  else
  {
    return "LLQ_DNSPush_Connecting";
  }
}

void uDNS_DeregisterRecord(uint64_t a1, uint64_t a2)
{
  v4 = mDNSLogCategory_uDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = mDNSLogCategory_uDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
  v7 = *(a2 + 344);
  *buf = 141558531;
  *v39 = 1752392040;
  *&v39[8] = 2085;
  *&v39[10] = a1 + 47032;
  *&v39[18] = 1024;
  *v40 = v7;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: Resource Record %{sensitive, mask.hash}s, state %u", buf, 0x1Cu);
LABEL_10:
  v8 = *(a2 + 344);
  if (v8 <= 9 && ((1 << v8) & 0x351) != 0)
  {
    v10 = mDNSLogCategory_uDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v15 = *(a2 + 40);
        while (1)
        {
          if (!v15 || (v16 = *v15, v16 > 0x3F))
          {
LABEL_31:
            v14 = 257;
            goto LABEL_48;
          }

          if (!*v15)
          {
            break;
          }

          v15 += v16 + 1;
          if (&v15[-v11] >= 256)
          {
            goto LABEL_31;
          }
        }

        v14 = (v15 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v10 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v12 = *(a2 + 40);
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_23:
            v14 = 257;
            goto LABEL_48;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (&v12[-v11] >= 256)
          {
            goto LABEL_23;
          }
        }

        v14 = (v12 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_48:
    v22 = DNSTypeName(*(a2 + 12));
    *buf = 67110147;
    *v39 = v8;
    *&v39[4] = 2160;
    *&v39[6] = 1752392040;
    *&v39[14] = 1040;
    *&v39[16] = v14;
    *v40 = 2101;
    *&v40[2] = v11;
    v41 = 2082;
    v42 = v22;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: State %u for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P type %{public}s", buf, 0x2Cu);
LABEL_49:
    if (*(a2 + 8) == 1)
    {
      CompleteDeregistration(a1, a2);
    }

    return;
  }

  v17 = *(a2 + 632);
  if (v17 && *(a2 + 320))
  {
    v18 = *(a2 + 48);
    v19 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v20 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v20 = 1;
    }

    v21 = v20;
    if (v17 != v18)
    {
      if (v21)
      {
        if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }
      }

      else
      {
        v19 = mDNSLogCategory_uDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
LABEL_56:
          GetRRDisplayString_rdb((a2 + 8), (v18 + 4), (a1 + 47032));
          *buf = 141558275;
          *v39 = 1752392040;
          *&v39[8] = 2085;
          *&v39[10] = a1 + 47032;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: Freeing InFlightRData for %{sensitive, mask.hash}s", buf, 0x16u);
        }
      }

      (*(a2 + 320))(a1, a2, *(a2 + 632), *(a2 + 618));
      *(a2 + 632) = 0;
      goto LABEL_60;
    }

    if (!v21)
    {
      v19 = mDNSLogCategory_uDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

LABEL_59:
      GetRRDisplayString_rdb((a2 + 8), (v18 + 4), (a1 + 47032));
      *buf = 141558275;
      *v39 = 1752392040;
      *&v39[8] = 2085;
      *&v39[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: InFlightRData same as rdata for %{sensitive, mask.hash}s", buf, 0x16u);
      goto LABEL_60;
    }

    if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }
  }

LABEL_60:
  v23 = *(a2 + 640);
  if (!v23 || !*(a2 + 320))
  {
    goto LABEL_80;
  }

  v24 = *(a2 + 48);
  v25 = mDNSLogCategory_uDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v26 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26;
  if (v23 != v24)
  {
    if (v27)
    {
      if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_76;
      }
    }

    else
    {
      v25 = mDNSLogCategory_uDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_76:
        GetRRDisplayString_rdb((a2 + 8), (v24 + 4), (a1 + 47032));
        *buf = 141558275;
        *v39 = 1752392040;
        *&v39[8] = 2085;
        *&v39[10] = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: Freeing QueuedRData for %{sensitive, mask.hash}s", buf, 0x16u);
      }
    }

    (*(a2 + 320))(a1, a2, *(a2 + 640), *(a2 + 620));
    *(a2 + 640) = 0;
    goto LABEL_80;
  }

  if (!v27)
  {
    v25 = mDNSLogCategory_uDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

LABEL_79:
    GetRRDisplayString_rdb((a2 + 8), (v24 + 4), (a1 + 47032));
    *buf = 141558275;
    *v39 = 1752392040;
    *&v39[8] = 2085;
    *&v39[10] = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: ERROR!! QueuedRData same as rdata for %{sensitive, mask.hash}s", buf, 0x16u);
    goto LABEL_80;
  }

  if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_79;
  }

LABEL_80:
  if (!*(a2 + 358))
  {
    goto LABEL_115;
  }

  v28 = *(a1 + 12616);
  if (!v28)
  {
    goto LABEL_106;
  }

  v29 = 1;
  do
  {
    while (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)) && *(v28 + 179) == *(a2 + 358) && *(v28 + 48))
    {
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
      {
        log = mDNSLogCategory_uDNS;
        if (!os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_96;
        }
      }

      else
      {
        log = mDNSLogCategory_uDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_96;
        }
      }

      GetRRDisplayString_rdb(v28 + 8, (*(v28 + 6) + 4), (a1 + 47032));
      *buf = 141558275;
      *v39 = 1752392040;
      *&v39[8] = 2085;
      *&v39[10] = a1 + 47032;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: Found Anchor RR %{sensitive, mask.hash}s terminated", buf, 0x16u);
LABEL_96:
      if ((v29 & 1) == 0)
      {
        v30 = mDNSLogCategory_uDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
          {
LABEL_102:
            GetRRDisplayString_rdb(v28 + 8, (*(v28 + 6) + 4), (a1 + 47032));
            *buf = 141558275;
            *v39 = 1752392040;
            *&v39[8] = 2085;
            *&v39[10] = a1 + 47032;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "uDNS_DeregisterRecord: ERROR: Another anchorRR %{sensitive, mask.hash}s found", buf, 0x16u);
          }
        }

        else
        {
          v30 = mDNSLogCategory_uDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_102;
          }
        }
      }

      DisposeTCPConn(*(v28 + 48));
      v29 = 0;
      *(v28 + 48) = 0;
      v28 = *v28;
      if (!v28)
      {
        goto LABEL_115;
      }
    }

    v28 = *v28;
  }

  while (v28);
  if (v29)
  {
LABEL_106:
    v31 = mDNSLogCategory_uDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v32 = mDNSLogCategory_uDNS == mDNSLogCategory_State;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_114;
      }
    }

    else
    {
      v31 = mDNSLogCategory_uDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_114:
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        *buf = 141558275;
        *v39 = 1752392040;
        *&v39[8] = 2085;
        *&v39[10] = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "uDNSDeregisterRecord: Cannot find the anchor Resource Record for %{sensitive, mask.hash}s, not an error", buf, 0x16u);
      }
    }
  }

LABEL_115:
  *(a2 + 344) = 3;
  *(a2 + 280) = 1000;
  *(a2 + 284) = *(a1 + 64) - 1000;
  AuthInfoForName_internal = GetAuthInfoForName_internal(a1, *(a2 + 40));
  if (IsRecordMergeable(a1, a2, *(a1 + 64) + 1000))
  {
    if (AuthInfoForName_internal && *(AuthInfoForName_internal + 2))
    {
      v35 = *(a2 + 284) + 2000;
    }

    else
    {
      v35 = *(a2 + 284) + 1000;
    }

    *(a2 + 284) = v35;
  }

  else
  {
    v35 = *(a2 + 284);
  }

  v36 = *(a2 + 280) + v35;
  if (*(a1 + 12680) - v36 >= 0)
  {
    *(a1 + 12680) = v36;
  }
}

void StartRecordNatMap(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  if (v3 == 33)
  {
    v5 = *(a2 + 40);
    if (*v5)
    {
      v5 += *v5 + 1;
    }

    if (*v5)
    {
      v6 = &v5[*v5 + 1];
    }

    else
    {
      v6 = v5;
    }

    if (SameDomainLabelPointer(v6, "\x04_tcp"))
    {
      v7 = 2;
    }

    else
    {
      if (!SameDomainLabelPointer(v6, "\x04_udp"))
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StartRecordNatMap: could not determine transport protocol of service %##s", *(a2 + 40));
        return;
      }

      v7 = 1;
    }

    if (*(a2 + 584))
    {
      mDNS_StopNATOperation_internal(a1, a2 + 392);
    }

    *(a2 + 564) = v7;
    v8 = *(*(a2 + 48) + 8);
    *(a2 + 566) = v8;
    *(a2 + 568) = v8;
    *(a2 + 572) = 0;
    *(a2 + 576) = CompleteRecordNatMap;
    *(a2 + 584) = a2;

    mDNS_StartNATOperation_internal(a1, (a2 + 392));
  }

  else if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "StartRecordNatMap: Resource Record %##s type %d, not supported", *(a2 + 40), v3);
  }
}

BOOL IsRecordMergeable(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 32))
  {
    return 0;
  }

  if (*(a2 + 122))
  {
    return 0;
  }

  if (IsLocalDomain(*(a2 + 40)))
  {
    return 0;
  }

  if (*(a2 + 284) - a3 + *(a2 + 280) > 0)
  {
    return 0;
  }

  v7 = *(a2 + 368);
  if (!v7)
  {
    return 0;
  }

  AuthInfoForName_internal = GetAuthInfoForName_internal(a1, v7);
  if (AuthInfoForName_internal)
  {
    v9 = *(AuthInfoForName_internal + 2);
    if (v9)
    {
      if (*(a1 + 64) - v9 >= 0)
      {
        return 0;
      }
    }
  }

  result = 0;
  v10 = *(a2 + 344);
  if (v10 <= 7 && ((1 << v10) & 0xAE) != 0)
  {
    v11 = *(a2 + 376);
    if (v11 && *(v11 + 792) && *(a2 + 348))
    {
      return *(a2 + 596) != 1;
    }

    return 0;
  }

  return result;
}

void CompleteRecordNatMap(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 192);
  if (v2)
  {
    if (!*(a2 + 180))
    {
      v7 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v7, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap No NATLease for %s");
      return;
    }

    if (*(v2 + 12) != 33)
    {
      v8 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap: Not a service record %s");
      return;
    }

    if (*(v2 + 8) == 1)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v5 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v5, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap called for %s, Service deregistering");
      }

      return;
    }

    if (*(v2 + 344) == 3)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v9 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
        LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap called for %s, record in DeregPending");
      }

      return;
    }

    v10 = *(v2 + 376);
    if (v10 && *(v10 + 792))
    {
      mDNS_Lock_(a1, "CompleteRecordNatMap", 2122);
      ServiceTarget = GetServiceTarget(a1, v2);
      v12 = ServiceTarget;
      v13 = 0;
      v14 = *(v2 + 12);
      if (v14 <= 0x27)
      {
        if (((1 << v14) & 0x1000248000) != 0)
        {
          v15 = 6;
          goto LABEL_30;
        }

        if (((1 << v14) & 0x8000001024) != 0)
        {
          v15 = 4;
LABEL_30:
          v13 = (*(v2 + 48) + v15);
          goto LABEL_31;
        }

        if (v14 == 33)
        {
          v15 = 10;
          goto LABEL_30;
        }
      }

LABEL_31:
      if (ServiceTarget && *ServiceTarget)
      {
        if (*(a2 + 160))
        {
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap - Target %##s for ResourceRecord %##s, ExternalPort %d", ServiceTarget, *(v2 + 40), __rev16(*(a2 + 160)));
          }

          if (v13 && !SameDomainNameBytes(v13, v12))
          {
            v17 = v12;
            do
            {
              if (!v17)
              {
                break;
              }

              v18 = *v17;
              if (v18 > 0x3F)
              {
                break;
              }

              if (!*v17)
              {
                v22 = v17 - v12 + 1;
                if (v22 <= 0x100u)
                {
                  memcpy(v13, v12, v22);
                  goto LABEL_54;
                }

                break;
              }

              v17 = (v17 + v18 + 1);
            }

            while (v17 - v12 <= 255);
            *v13 = 0;
LABEL_54:
            SetNewRData(v2 + 8, 0, 0);
          }

          *(v2 + 592) = 0;
          *(v2 + 344) = 1;
          *(v2 + 280) = 1000;
          v23 = *(a1 + 64);
          *(v2 + 284) = v23 - 1000;
          if (IsRecordMergeable(a1, v2, v23 + 1000))
          {
            *(v2 + 284) += 1000;
          }

          mDNS_Unlock_(a1, "CompleteRecordNatMap", 2174);
          v19 = a1;
          v20 = v2;
          v21 = 1;
          goto LABEL_58;
        }

        if (mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap - Target %##s for ResourceRecord %##s, ExternalPort %d", ServiceTarget, *(v2 + 40), 0);
        }
      }

      else if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap - no target for %##s, ExternalPort %d", *(v2 + 40), bswap32(*(a2 + 160)) >> 16);
      }

      if (v13)
      {
        *v13 = 0;
      }

      *(v2 + 344) = 8;
      *(v2 + 20) = 0;
      mDNS_Unlock_(a1, "CompleteRecordNatMap", 2136);
      v19 = a1;
      v20 = v2;
      v21 = 0;
LABEL_58:

      UpdateAllServiceRecords(v19, v20, v21);
      return;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v16 = mDNSLogCategory_Default;
      GetRRDisplayString_rdb((v2 + 8), (*(v2 + 48) + 4), (a1 + 47032));
      LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap called for %s but no zone information!", (a1 + 47032));
    }

    if (*(v2 + 584))
    {
      mDNS_StopNATOperation_internal(a1, v2 + 392);
      *(v2 + 584) = 0;
    }

    *(v2 + 344) = 1;
    *(v2 + 280) = 1000;
    *(v2 + 284) = *(a1 + 64) - 1000;
  }

  else
  {
    v6 = mDNSLogCategory_Default;

    LogMsgWithLevel(v6, OS_LOG_TYPE_DEFAULT, "CompleteRecordNatMap called with unknown AuthRecord object");
  }
}

uint64_t uDNS_UpdateRecord(uint64_t a1)
{
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_UpdateRecord: Resource Record %##s, state %d", *(a1 + 40), *(a1 + 344));
  }

  v2 = *(a1 + 344);
  if (v2 > 4)
  {
    if (v2 <= 6)
    {
      if (v2 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (v2 != 7)
    {
      if (v2 == 9)
      {
        goto LABEL_25;
      }

      if (v2 != 8)
      {
        goto LABEL_14;
      }

LABEL_17:
      v5 = *(a1 + 320);
      if (v5)
      {
        v5(mDNSStorage, a1, *(a1 + 48), *(a1 + 20));
      }

      SetNewRData(a1 + 8, *(a1 + 304), *(a1 + 312));
      result = 0;
      goto LABEL_24;
    }

LABEL_20:
    if (*(a1 + 640))
    {
      v6 = *(a1 + 320);
      if (v6)
      {
        v6(mDNSStorage, a1);
      }
    }

    result = 0;
    *(a1 + 640) = *(a1 + 304);
    *(a1 + 620) = *(a1 + 312);
LABEL_24:
    *(a1 + 304) = 0;
    return result;
  }

  if (v2 > 2)
  {
LABEL_15:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_UpdateRecord: Requested update of record %##s type %d, in erroneous state %d", *(a1 + 40), *(a1 + 12), v2);
    return 4294901747;
  }

  if (!v2)
  {
LABEL_25:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: uDNS_UpdateRecord called for record %##s with bad state regState_NATError", *(a1 + 40));
    return 4294901759;
  }

  if (v2 == 1)
  {
    goto LABEL_20;
  }

  if (v2 != 2)
  {
LABEL_14:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_UpdateRecord: Unknown state %d for %##s", *(a1 + 344), *(a1 + 40));
    v2 = *(a1 + 344);
    goto LABEL_15;
  }

  *(a1 + 624) = *(a1 + 48);
  *(a1 + 616) = *(a1 + 20);
  *(a1 + 632) = *(a1 + 304);
  *(a1 + 618) = *(a1 + 312);
  *(a1 + 304) = 0;
  *(a1 + 344) = 7;
  *(a1 + 280) = 1000;
  v3 = dword_10016D258;
  *(a1 + 284) = dword_10016D258 - 1000;
  result = 0;
  if (dword_1001703A0 - v3 >= 0)
  {
    dword_1001703A0 = v3;
  }

  return result;
}

uint64_t AreRecordsMergeable(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = IsRecordMergeable(a1, a3, a4);
  if (result)
  {
    result = SameDomainNameBytes(*(a2 + 368), *(a3 + 368));
    if (result)
    {
      v7 = *(a2 + 376);
      v8 = *(a3 + 376);
      return *(v7 + 792) == *(v8 + 792) && *(v7 + 786) == *(v8 + 786);
    }
  }

  return result;
}

void SendGroupRRMessage(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _DWORD *a4)
{
  updated = putUpdateLeaseWithLimit(a1 + 28960, a3, a1 + 30412);
  if (updated)
  {
    v8 = updated;
    if (*(a2 + 356))
    {
      v9 = *(a2 + 384);
      if (v9)
      {
        DisposeTCPConn(v9);
        *(a2 + 384) = 0;
      }

      v10 = *(a2 + 376);
      if (v10)
      {
        TCPConn = MakeTCPConn(a1, (a1 + 28960), v8, 1, (v10 + 788), *(v10 + 786), (v10 + 530), 0, a2);
        *(a2 + 384) = TCPConn;
        if (TCPConn)
        {
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendGroupRRMessage: Sent a group update ID: %d start %p, end %p, limit %p");
          }

          return;
        }

        if (!mDNS_LoggingEnabled)
        {
          return;
        }

        v13 = mDNSLogCategory_Default;
        v17 = (a1 + 47032);
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v17);
        v18 = v17;
        v15 = "SendGroupRRMessage: Cannot establish TCP connection for %s";
      }

      else
      {
        v13 = mDNSLogCategory_Default;
        v16 = (a1 + 47032);
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v16);
        v18 = v16;
        v15 = "SendGroupRRMessage:ERROR!! nta is NULL for %s";
      }

LABEL_18:
      LogMsgWithLevel(v13, OS_LOG_TYPE_DEFAULT, v15, v18, v19);
      return;
    }

    if (mDNSSendDNSMessage(a1, (a1 + 28960), updated, 0, 0, 0, (*(a2 + 376) + 788), *(*(a2 + 376) + 786), a4, 0))
    {
      if (!mDNS_LoggingEnabled)
      {
        return;
      }

      v13 = mDNSLogCategory_Default;
      v14 = (a1 + 47032);
      GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v14);
      v18 = v14;
      v15 = "SendGroupRRMessage: Cannot send UDP message for %s";
      goto LABEL_18;
    }

    if (mDNS_LoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendGroupRRMessage: Sent a group UDP update ID: %d start %p, end %p, limit %p");
    }
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SendGroupRRMessage: ERROR: Could not put lease option, failing the group registration");
    for (i = *(a1 + 12616); i; i = *i)
    {
      *(i + 596) = 1;
      *(i + 224) = 0;
      ActivateUnicastRegistration(a1, i);
    }
  }
}

unsigned __int8 *BuildUpdateMessage(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *(a3 + 344);
  if (v8 <= 4)
  {
    if (v8 == 2)
    {
      v8 = 5;
      goto LABEL_12;
    }

    if (v8 == 3)
    {
      *(a3 + 352) = 0;
      v9 = *(a3 + 14);
      *(a3 + 14) = 254;
      result = PutResourceRecordTTLWithLimit(a1 + 28960, a2, (a1 + 28968), a3 + 8, 0, a4);
      *(a3 + 14) = v9;
      if (result)
      {
        return result;
      }

      goto LABEL_32;
    }

LABEL_10:
    v8 = 1;
LABEL_12:
    *(a3 + 344) = v8;
    goto LABEL_13;
  }

  if (v8 != 5 && v8 != 7)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (*(a3 + 8) != 4)
  {
    *(a3 + 192) = 1;
  }

  if (*(a3 + 12) == 33 && *(a3 + 120) == 2 && *(a3 + 552))
  {
    *(*(a3 + 48) + 8) = *(a3 + 552);
    v8 = *(a3 + 344);
  }

  if (v8 != 7)
  {
    v17 = *(a3 + 8);
    if (v17 == 32 || v17 == 16)
    {
      v18 = *(a3 + 12);
      v19 = putDomainNameAsLabels(a1 + 28960, a2, a4, *(a3 + 40));
      if (!v19)
      {
        goto LABEL_32;
      }

      v6 = v19 + 10;
      if ((v19 + 10) >= a4)
      {
        goto LABEL_32;
      }

      *v19 = HIBYTE(v18);
      v19[1] = v18;
      *(v19 + 1) = -256;
      *(v19 + 1) = 0;
      *(v19 + 4) = 0;
      ++*(a1 + 28968);
      if (v19 == -10)
      {
        goto LABEL_32;
      }
    }

    else if (!a2 && v17 != 8)
    {
      goto LABEL_32;
    }

    v14 = *(a3 + 16);
    v15 = a1 + 28960;
    v16 = (a1 + 28968);
LABEL_31:
    result = PutResourceRecordTTLWithLimit(v15, v6, v16, a3 + 8, v14, a4);
    if (result)
    {
      return result;
    }

    goto LABEL_32;
  }

  SetNewRData(a3 + 8, *(a3 + 624), *(a3 + 616));
  v12 = *(a3 + 14);
  *(a3 + 14) = 254;
  v13 = PutResourceRecordTTLWithLimit(a1 + 28960, v6, (a1 + 28968), a3 + 8, 0, a4);
  *(a3 + 14) = v12;
  if (v13)
  {
    v6 = v13;
    SetNewRData(a3 + 8, *(a3 + 632), *(a3 + 618));
    v14 = *(a3 + 16);
    v15 = a1 + 28960;
    v16 = (a1 + 28968);
    goto LABEL_31;
  }

LABEL_32:
  v20 = mDNSLogCategory_Default;
  v21 = (a1 + 47032);
  GetRRDisplayString_rdb((a3 + 8), (*(a3 + 48) + 4), v21);
  LogMsgWithLevel(v20, OS_LOG_TYPE_DEFAULT, "BuildUpdateMessage: Error formatting message for %s", v21);
  return 0;
}

void uDNS_SetupWABQueries()
{
  for (i = SearchList; i; i = *i)
  {
    *(i + 264) |= 1u;
  }

  mDNS_Lock_(mDNSStorage, "uDNS_SetupWABQueries", 5491);
  if (!mDNSPlatformSetDNSConfig(0, 1, 0, 0, 0, 0))
  {
    for (j = SearchList; j; j = *j)
    {
      *(j + 264) &= ~1u;
    }

    v2 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: No config change", buf, 2u);
    }
  }

  mDNS_Unlock_(mDNSStorage, "uDNS_SetupWABQueries", 5501);
  v3 = DWORD2(xmmword_100170B70) != 0;
  if (DWORD2(xmmword_100170B70))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (HIDWORD(xmmword_100170B70))
  {
    v3 = v4;
  }

  if (dword_100170B80)
  {
    v5 = v3 | 4;
  }

  else
  {
    v5 = v3;
  }

  v6 = SearchList;
  if (SearchList)
  {
    v7 = &SearchList;
    v71 = v5;
    do
    {
      v8 = v6 + 8;
      v9 = mDNS_DomainNameFNV1aHash((v6 + 8));
      v10 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v6 + 264);
        v12 = *(v6 + 272);
        v13 = (v6 + 8);
        while (1)
        {
          if (!v13 || (v14 = *v13, v14 > 0x3F))
          {
LABEL_24:
            v15 = 257;
            goto LABEL_26;
          }

          if (!*v13)
          {
            break;
          }

          v13 += v14 + 1;
          if (&v13[-v8] >= 256)
          {
            goto LABEL_24;
          }
        }

        v15 = (v13 - v8 + 1);
LABEL_26:
        *buf = 67110402;
        *v73 = v5;
        *&v73[4] = 1024;
        *&v73[6] = v11;
        LOWORD(v74) = 2048;
        *(&v74 + 2) = v12;
        WORD5(v74) = 1040;
        HIDWORD(v74) = v15;
        *v75 = 2098;
        *&v75[2] = v6 + 8;
        *v76 = 1024;
        *&v76[2] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries -- action: 0x%x, flags: 0x%x, ifid: %p, domain: %{public, mdnsresponder:domain_name}.*P (%x)", buf, 0x2Eu);
      }

      v16 = *(v6 + 264);
      if (v16)
      {
        v19 = *(v6 + 3768);
        *(v6 + 3768) = 0;
        *v7 = *v6;
        if ((v16 & 2) != 0 && !SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
        {
          v20 = v9;
          v21 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v73 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: DELETE Browse for domain -- name hash: %x", buf, 8u);
          }

          mDNS_StopQuery(mDNSStorage, v6 + 280);
          mDNS_StopQuery(mDNSStorage, v6 + 976);
          v9 = v20;
        }

        if ((*(v6 + 264) & 4) != 0 && !SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
        {
          v22 = v9;
          v23 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v73 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: DELETE Legacy Browse for domain -- name hash: %x", buf, 8u);
          }

          mDNS_StopQuery(mDNSStorage, v6 + 1672);
          v9 = v22;
        }

        if ((*(v6 + 264) & 8) != 0 && !SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
        {
          v24 = v9;
          v25 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v73 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: DELETE Registration for domain -- name hash: %x", buf, 8u);
          }

          mDNS_StopQuery(mDNSStorage, v6 + 2368);
          mDNS_StopQuery(mDNSStorage, v6 + 3064);
        }

        free(v6);
        while (v19)
        {
          v26 = v19;
          v19 = *v19;
          v27 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v26[6];
            if (v28)
            {
              v29 = v26[6];
              while (1)
              {
                if (!v29 || (v30 = *v29, v30 > 0x3F))
                {
LABEL_61:
                  v31 = 257;
                  goto LABEL_64;
                }

                if (!*v29)
                {
                  break;
                }

                v29 += v30 + 1;
                if (&v29[-v28] >= 256)
                {
                  goto LABEL_61;
                }
              }

              v31 = (v29 - v28 + 1);
            }

            else
            {
              v31 = 0;
            }

LABEL_64:
            v32 = v26[7] + 4;
            v33 = v32;
            while (1)
            {
              if (!v33 || (v34 = *v33, v34 > 0x3F))
              {
LABEL_69:
                v35 = 257;
                goto LABEL_71;
              }

              if (!*v33)
              {
                break;
              }

              v33 += v34 + 1;
              if (&v33[-v32] >= 256)
              {
                goto LABEL_69;
              }
            }

            v35 = (v33 - v32 + 1);
LABEL_71:
            *buf = 141559299;
            *v73 = 1752392040;
            *&v73[8] = 1040;
            LODWORD(v74) = v31;
            WORD2(v74) = 2101;
            *(&v74 + 6) = v28;
            HIWORD(v74) = 2160;
            *v75 = 1752392040;
            *&v75[8] = 1040;
            *v76 = v35;
            *&v76[4] = 2101;
            v77 = v32;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: DELETE Deregistering PTR -- record: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P PTR %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x36u);
          }

          v36 = mDNS_Deregister(mDNSStorage, v26 + 1);
          if (v36)
          {
            v37 = v36;
            v38 = mDNSLogCategory_State;
            if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v73 = v37;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "uDNS_SetupWABQueries: mDNS_Deregister returned error -- error: %d", buf, 8u);
            }
          }
        }

        v6 = v7;
        v5 = v71;
        goto LABEL_141;
      }

      if ((v5 & 1) != 0 || (v16 & 2) == 0)
      {
        if ((v5 & 2) == 0 && (v16 & 4) != 0)
        {
LABEL_83:
          if (!SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
          {
            v39 = v9;
            v40 = mDNSLogCategory_State;
            if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v73 = v39;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: Deleting Legacy Browse for domain -- name hash: %x", buf, 8u);
            }

            *(v6 + 264) &= ~4u;
            uDNS_DeleteWABQueries(v6, 2);
            v9 = v39;
          }

          goto LABEL_88;
        }

        if (v5 > 3 || (v16 & 8) == 0)
        {
          goto LABEL_95;
        }
      }

      else if (!SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
      {
        v17 = v9;
        v18 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v73 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: Deleting Browse for domain -- name hash: %x", buf, 8u);
        }

        *(v6 + 264) &= ~2u;
        uDNS_DeleteWABQueries(v6, 1);
        v9 = v17;
      }

      if ((v5 & 2) == 0 && (*(v6 + 264) & 4) != 0)
      {
        goto LABEL_83;
      }

LABEL_88:
      if (v5 <= 3 && (*(v6 + 264) & 8) != 0 && !SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
      {
        v41 = v9;
        v42 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v73 = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: Deleting Registration for domain -- name hash: %x", buf, 8u);
        }

        *(v6 + 264) &= ~8u;
        uDNS_DeleteWABQueries(v6, 4);
        v9 = v41;
      }

LABEL_95:
      v43 = v9;
      if ((v5 & 1) == 0 || (*(v6 + 264) & 2) != 0 || SameDomainNameBytes((v6 + 8), "\x05local") || *(v6 + 272))
      {
        goto LABEL_109;
      }

      Domains = mDNS_GetDomains(v6 + 280, 0, (v6 + 8), 0, FoundDomain, v6);
      v45 = mDNSLogCategory_State;
      if (Domains)
      {
        if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        *buf = 67109376;
        *v73 = v43;
        *&v73[4] = 1024;
        *&v73[6] = Domains;
        v46 = v45;
        v47 = OS_LOG_TYPE_ERROR;
        v48 = "uDNS_SetupWABQueries: GetDomains(mDNS_DomainTypeBrowse) returned error -- name hash: %x, error: %d";
        v49 = 14;
      }

      else
      {
        if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 67109120;
        *v73 = v43;
        v46 = v45;
        v47 = OS_LOG_TYPE_DEFAULT;
        v48 = "uDNS_SetupWABQueries: Starting Browse for domain -- name hash: %x";
        v49 = 8;
      }

      _os_log_impl(&_mh_execute_header, v46, v47, v48, buf, v49);
LABEL_105:
      v70 = Domains;
      v50 = mDNS_GetDomains(v6 + 976, 1, (v6 + 8), *(v6 + 272), FoundDomain, v6);
      v51 = mDNSLogCategory_State;
      if (v50)
      {
        v52 = v50;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *v73 = v43;
          *&v73[4] = 1024;
          *&v73[6] = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "uDNS_SetupWABQueries: GetDomains(mDNS_DomainTypeBrowseDefault) returned error -- name hash: %x, error: %d", buf, 0xEu);
        }

        if (v70)
        {
LABEL_109:
          if ((v5 & 2) == 0)
          {
            goto LABEL_123;
          }

          goto LABEL_110;
        }
      }

      else if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v73 = v43;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: Starting Default Browse for domain -- name hash: %x", buf, 8u);
      }

      *(v6 + 264) |= 2u;
      if ((v5 & 2) == 0)
      {
        goto LABEL_123;
      }

LABEL_110:
      if ((*(v6 + 264) & 4) == 0 && !SameDomainNameBytes((v6 + 8), "\x05local") && !*(v6 + 272))
      {
        v53 = mDNS_GetDomains(v6 + 1672, 2, (v6 + 8), 0, FoundDomain, v6);
        if (v53)
        {
          v54 = v53;
          v55 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v73 = v43;
            *&v73[4] = 1024;
            *&v73[6] = v54;
            v56 = v55;
            v57 = OS_LOG_TYPE_ERROR;
            v58 = "uDNS_SetupWABQueries: GetDomains(mDNS_DomainTypeBrowseAutomatic) returned error -- name hash: %x, error: %d";
            v59 = 14;
LABEL_122:
            _os_log_impl(&_mh_execute_header, v56, v57, v58, buf, v59);
          }
        }

        else
        {
          *(v6 + 264) |= 4u;
          v60 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v73 = v43;
            v56 = v60;
            v57 = OS_LOG_TYPE_DEFAULT;
            v58 = "uDNS_SetupWABQueries: Starting Legacy Browse for domain -- name hash: %x";
            v59 = 8;
            goto LABEL_122;
          }
        }
      }

LABEL_123:
      if (v5 < 4 || (*(v6 + 264) & 8) != 0 || SameDomainNameBytes((v6 + 8), "\x05local") || *(v6 + 272))
      {
        goto LABEL_141;
      }

      v61 = mDNS_GetDomains(v6 + 2368, 3, (v6 + 8), 0, FoundDomain, v6);
      v62 = mDNSLogCategory_State;
      if (v61)
      {
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *v73 = v43;
          *&v73[4] = 1024;
          *&v73[6] = v61;
          v63 = v62;
          v64 = OS_LOG_TYPE_ERROR;
          v65 = "uDNS_SetupWABQueries: GetDomains(mDNS_DomainTypeRegistration) returned error -- name hash: %x, error: %d";
          v66 = 14;
LABEL_132:
          _os_log_impl(&_mh_execute_header, v63, v64, v65, buf, v66);
        }
      }

      else if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v73 = v43;
        v63 = v62;
        v64 = OS_LOG_TYPE_DEFAULT;
        v65 = "uDNS_SetupWABQueries: Starting Registration for domain -- name hash: %x";
        v66 = 8;
        goto LABEL_132;
      }

      v67 = mDNS_GetDomains(v6 + 3064, 4, (v6 + 8), *(v6 + 272), FoundDomain, v6);
      v68 = mDNSLogCategory_State;
      if (v67)
      {
        v69 = v67;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *v73 = v43;
          *&v73[4] = 1024;
          *&v73[6] = v69;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "uDNS_SetupWABQueries: GetDomains(mDNS_DomainTypeRegistrationDefault) returned error -- name hash: %x, error: %d", buf, 0xEu);
        }

        if (v61)
        {
          goto LABEL_141;
        }
      }

      else if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v73 = v43;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "uDNS_SetupWABQueries: Starting Default Registration for domain -- name hash: %x", buf, 8u);
      }

      *(v6 + 264) |= 8u;
LABEL_141:
      v7 = v6;
      v6 = *v6;
    }

    while (v6);
  }
}

void uDNS_DeleteWABQueries(uint64_t a1, int a2)
{
  v3 = mDNS_DomainTypeNames;
  switch(a2)
  {
    case 1:
      v6 = "db._dns-sd._udp.";
      v4 = 976;
      v5 = 280;
      goto LABEL_7;
    case 2:
      v6 = 0;
      v3 = off_100150218;
      v7 = 1;
      v4 = 1672;
LABEL_8:
      mDNS_StopQuery(mDNSStorage, a1 + v4);
      memset(v14, 0, sizeof(v14));
      memset(v13, 0, sizeof(v13));
      v8 = *v3;
      if (v8)
      {
        AppendDNSNameString(v14, v8);
        AppendDNSNameString(v14, "local");
      }

      v9 = (a1 + 3768);
      if ((v7 & 1) == 0)
      {
        LOBYTE(v13[0]) = 0;
        AppendDNSNameString(v13, v6);
        AppendDNSNameString(v13, "local");
      }

      for (i = *v9; *v9; i = *v9)
      {
        if (v8 && SameDomainNameBytes(i + 660, v14) || (v7 & 1) == 0 && SameDomainNameBytes(i + 660, v13))
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_DeleteWABQueries: Deregistering PTR %##s -> %##s", i[6], i[7] + 4);
          }

          *v9 = *i;
          v11 = mDNS_Deregister(mDNSStorage, i + 1);
          if (v11)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_DeleteWABQueries:: ERROR!! mDNS_Deregister returned %d", v11);
          }
        }

        else
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_DeleteWABQueries: Skipping PTR %##s -> %##s", i[6], i[7] + 4);
          }

          v9 = *v9;
        }
      }

      return;
    case 4:
      v3 = off_100150220;
      v4 = 3064;
      v5 = 2368;
      v6 = "dr._dns-sd._udp.";
LABEL_7:
      mDNS_StopQuery(mDNSStorage, a1 + v5);
      v7 = 0;
      goto LABEL_8;
  }

  v12 = mDNSLogCategory_Default;

  LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "uDNS_DeleteWABQueries: ERROR!! returning from default");
}

void FoundDomain(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (*(a3 + 2) != 12)
  {
    return;
  }

  if (*a3 == 240)
  {
    return;
  }

  v5 = *(a3 + 3);
  if (v5 == -2)
  {
    return;
  }

  v8 = *(a2 + 176);
  if (v8 + 280 == a2)
  {
    v10 = mDNS_DomainTypeNames;
  }

  else if (v8 + 976 == a2)
  {
    v10 = off_100150210;
  }

  else if (v8 + 1672 == a2)
  {
    v10 = off_100150218;
  }

  else if (v8 + 2368 == a2)
  {
    v10 = off_100150220;
  }

  else
  {
    if (v8 + 3064 != a2)
    {
      v9 = mDNSLogCategory_Default;

      LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "FoundDomain - unknown question");
      return;
    }

    v10 = &off_100150228;
  }

  v11 = *v10;
  if (mDNS_LoggingEnabled == 1)
  {
    v12 = mDNSLogCategory_Default;
    if (a4)
    {
      v13 = "Add";
    }

    else
    {
      v13 = "Rmv";
    }

    v14 = a2 + 376;
    GetRRDisplayString_rdb(a3, (*(a3 + 5) + 4), (a1 + 47032));
    LogMsgWithLevel(v12, OS_LOG_TYPE_DEFAULT, "FoundDomain: %p %s %s Q %##s A %s", v5, v13, v11, v14, a1 + 47032);
  }

  if (a4)
  {
    v15 = malloc_type_calloc(1uLL, 0x4A0uLL, 0x1437C6E8uLL);
    if (v15)
    {
      v16 = v15;
      mDNS_SetupResourceRecord((v15 + 1), 0, -2, 12, 0x1C20u, 8, 4, FreeARElemCallback, v15);
      *(v16 + 660) = 0;
      AppendDNSNameString(v16 + 660, v11);
      AppendDNSNameString(v16 + 660, "local");
      v17 = (*(a3 + 5) + 4);
      v18 = v17;
      do
      {
        if (!v18)
        {
          break;
        }

        v19 = *v18;
        if (v19 > 0x3F)
        {
          break;
        }

        if (!*v18)
        {
          v26 = v18 - v17 + 1;
          if (v26 <= 0x100u)
          {
            memcpy((v16[7] + 4), v17, v26);
            goto LABEL_43;
          }

          break;
        }

        v18 += v19 + 1;
      }

      while (v18 - v17 <= 255);
      *(v16[7] + 4) = 0;
LABEL_43:
      if (mDNS_LoggingEnabled == 1)
      {
        v27 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(v16 + 16, (v16[7] + 4), (a1 + 47032));
        LogMsgWithLevel(v27, OS_LOG_TYPE_DEFAULT, "FoundDomain: Registering %s", (a1 + 47032));
      }

      v28 = mDNS_Register(a1, (v16 + 1));
      if (v28)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: FoundDomain - mDNS_Register returned %d", v28);

        free(v16);
      }

      else
      {
        *v16 = *(v8 + 3768);
        *(v8 + 3768) = v16;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = *(v8 + 3768);
    if (v20)
    {
      v21 = (v8 + 3768);
      do
      {
        v22 = SameDomainNameBytes((v20[7] + 4), (*(a3 + 5) + 4));
        v23 = *v21;
        if (v22)
        {
          *v21 = *v23;
          if (mDNS_LoggingEnabled == 1)
          {
            v24 = mDNSLogCategory_Default;
            GetRRDisplayString_rdb(v23 + 16, (v23[7] + 4), (a1 + 47032));
            LogMsgWithLevel(v24, OS_LOG_TYPE_DEFAULT, "FoundDomain: Deregistering %s", (a1 + 47032));
          }

          v25 = mDNS_Deregister(a1, v23 + 1);
          if (v25)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: FoundDomain - mDNS_Deregister returned %d", v25);
          }
        }

        else
        {
          v21 = *v21;
        }

        v20 = *v21;
      }

      while (*v21);
    }
  }
}

void FreeARElemCallback(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -65792)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      free(v3);
    }
  }
}

void uDNS_StartWABQueries(char a1)
{
  if (a1)
  {
    v2 = ++DWORD2(xmmword_100170B70);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_StartWABQueries: Browse query count %d", v2);
    }
  }

  if ((a1 & 2) != 0)
  {
    v3 = ++HIDWORD(xmmword_100170B70);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_StartWABQueries: Legacy Browse query count %d", v3);
    }
  }

  if ((a1 & 4) != 0)
  {
    v4 = ++dword_100170B80;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_StartWABQueries: Reg query count %d", v4);
    }
  }

  uDNS_SetupWABQueries();
}

void uDNS_StopWABQueries(char a1)
{
  if (a1)
  {
    v2 = --DWORD2(xmmword_100170B70);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_StopWABQueries: Browse query count %d", v2);
    }
  }

  if ((a1 & 2) != 0)
  {
    v3 = --HIDWORD(xmmword_100170B70);
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_StopWABQueries: Legacy Browse query count %d", v3);
    }
  }

  if ((a1 & 4) != 0)
  {
    v4 = --dword_100170B80;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_StopWABQueries: Reg query count %d", v4);
    }
  }

  uDNS_SetupWABQueries();
}

uint64_t FlushAddressCacheRecords(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v9 = result + 272;
  v3 = (result + 47032);
  do
  {
    v10 = v2;
    v4 = *(v9 + 8 * v2);
    if (v4)
    {
      while (1)
      {
        v5 = v4[2];
        if (v5)
        {
          break;
        }

LABEL_18:
        v4 = *v4;
        if (!v4)
        {
          goto LABEL_19;
        }
      }

      while (1)
      {
        if (*(v5 + 32))
        {
          goto LABEL_17;
        }

        if (!RRTypeAnswersQuestionType(v5 + 8, 1u, 3))
        {
          result = RRTypeAnswersQuestionType(v5 + 8, 0x1Cu, 3);
          if (!result)
          {
            goto LABEL_17;
          }
        }

        v6 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_Default != mDNSLogCategory_State)
        {
          break;
        }

        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

LABEL_16:
        result = mDNS_PurgeCacheResourceRecord(v1, v5);
LABEL_17:
        v5 = *v5;
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v6 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

LABEL_15:
      GetRRDisplayString_rdb((v5 + 8), (*(v5 + 48) + 4), v3);
      *buf = 141558275;
      v12 = 1752392040;
      v13 = 2085;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FlushAddressCacheRecords: Purging Resourcerecord - record description: %{sensitive, mask.hash}s.", buf, 0x16u);
      goto LABEL_16;
    }

LABEL_19:
    v2 = v10 + 1;
  }

  while (v10 != 498);
  return result;
}

void _mdns_powerlog_awdl_event(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (a4)
  {
    goto LABEL_5;
  }

  if (_mdns_powerlog_log_s_once != -1)
  {
    dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
  }

  if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      if (a2)
      {
        bzero(cStr, 0x3F1uLL);
        if (_mdns_get_service_type_from_domain_name(a2, cStr))
        {
          v9 = CFStringCreateWithCString(0, cStr, 0x8000100u);
          if (v9)
          {
            v10 = v9;
            CFDictionarySetValue(Mutable, @"service", v9);
            CFRelease(v10);
          }
        }
      }

      memset(cStr, 0, 32);
      v11 = DNSRecordTypeValueToString(v5);
      if (!v11)
      {
        v11 = cStr;
        snprintf(cStr, 0x20uLL, "TYPE%d", v5);
      }

      v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(Mutable, @"recordType", v12);
        CFRelease(v13);
      }

      if ((v4 & 0x80000000) == 0)
      {
        *cStr = v4;
        v14 = CFNumberCreate(0, kCFNumberLongLongType, cStr);
        if (v14)
        {
          v15 = v14;
          CFDictionarySetValue(Mutable, @"clientPID", v14);
          CFRelease(v15);
        }

        *cStr = 0;
        *&cStr[8] = 0;
        if (v4)
        {
          if (mdns_system_pid_to_name(v4, cStr))
          {
            v16 = CFStringCreateWithCString(0, cStr, 0x8000100u);
            if (v16)
            {
              v17 = v16;
              CFDictionarySetValue(Mutable, @"clientName", v16);
              CFRelease(v17);
            }
          }
        }
      }
    }

    if (_mdns_powerlog_log_s_once != -1)
    {
      dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
    }

    v18 = _mdns_powerlog_log_s_log;
    if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      *cStr = 138412802;
      *&cStr[4] = a1;
      *&cStr[12] = 1024;
      *&cStr[14] = v4 == 0;
      *&cStr[18] = 2112;
      *&cStr[20] = Mutable;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "PowerLog event -- name: %@, exclude: %{mdns:yesno}d, dictionary: %@", cStr, 0x1Cu);
    }

    if (&_PLLogRegisteredEvent && v4)
    {
      PLLogRegisteredEvent();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

char *_mdns_get_service_type_from_domain_name(unsigned __int8 *a1, char *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a1;
    v7 = v5;
    v5 = v4;
    v8 = &a1[v2];
    v9 = v8[1];
    a1 = v8 + 1;
    v2 = v9;
    v4 = v6;
  }

  while (v9);
  memset(v16, 0, sizeof(v16));
  if (v7)
  {
    result = 0;
    if (!v5 || v7[1] != 95)
    {
      return result;
    }

    if (!_mdns_label_is_protocol_label(v5))
    {
      return 0;
    }

    if (!DomainNameEqual(v6, "\x05local"))
    {
      return 0;
    }

    v11 = *v7;
    __memcpy_chk();
    v12 = *v5;
    if ((v11 ^ 0xFFuLL) <= v12)
    {
      return 0;
    }

    v13 = v12 + 1;
    memcpy(v16 + v11 + 1, v5, v12 + 1);
    v14 = v16 + v11 + v13 + 1;
    if (v16 - v14 + 256 < 1)
    {
      return 0;
    }

    *v14 = 0;
    v5 = v16;
  }

  else if (!v5 || v5[1] != 95 || !_mdns_label_is_protocol_label(v6))
  {
    return 0;
  }

  if (DomainNameToString(v5, 0, a2, 0))
  {
    return 0;
  }

  v15 = strlen(a2);
  if (v15)
  {
    if (a2[v15 - 1] == 46)
    {
      a2[v15 - 1] = 0;
    }
  }

  return a2;
}

BOOL _mdns_label_is_protocol_label(char *a1)
{
  if (a1 == "\x04_tcp")
  {
    return 1;
  }

  if (*a1 != 4)
  {
    return a1 == "\x04_udp";
  }

  if (mdns_memcmp_us_ascii_case_insensitive(a1 + 1, "_tcp", 4))
  {
    v2 = a1 == "\x04_udp";
  }

  else
  {
    v2 = 1;
  }

  result = v2;
  if (!v2)
  {
    return mdns_memcmp_us_ascii_case_insensitive(a1 + 1, "_udp", 4) == 0;
  }

  return result;
}

__uint64_t _mdns_powerlog_get_monotonic_time_ns()
{
  result = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (!result)
  {
    if (*__error())
    {
      v1 = *__error();
      if (!v1)
      {
        return 0;
      }
    }

    else
    {
      v1 = -6700;
    }

    if (_mdns_powerlog_log_s_once != -1)
    {
      dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
    }

    v2 = _mdns_powerlog_log_s_log;
    if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
    {
      v3[0] = 67109120;
      v3[1] = v1;
      _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "clock_gettime_nsec_np() returned 0: %{mdns:err}d", v3, 8u);
    }

    return 1;
  }

  return result;
}

void _mdns_powerlog_bonjour_event(unsigned int a1, int a2, const char *a3, const char *a4, uint64_t a5)
{
  if (a1 > 0x12)
  {
    return;
  }

  LODWORD(v8) = a1;
  if (((1 << a1) & 0x12493) != 0)
  {
    v10 = &g_client_info_list;
    v11 = g_client_info_list;
    if (g_client_info_list)
    {
      while (1)
      {
        v8 = v11;
        if (_mdns_powerlog_client_info_match(v11, a3, a4))
        {
          goto LABEL_17;
        }

        v11 = v8[8];
        if (!v11)
        {
          v10 = v8 + 8;
          break;
        }
      }
    }

    v12 = malloc_type_calloc(1uLL, 0x60uLL, 0x34B071F1uLL);
    if (v12 && a3)
    {
      v8 = v12;
      v13 = v12 + 80;
      v14 = 16;
      while (1)
      {
        v15 = *a3;
        *v13 = v15;
        if (!v15)
        {
          break;
        }

        ++v13;
        ++a3;
        if (--v14 <= 1)
        {
          *v13 = 0;
          break;
        }
      }

      if (!a4)
      {
        goto LABEL_16;
      }

      v16 = strdup(a4);
      if (v16)
      {
        v8[9] = v16;
LABEL_16:
        v38 = 0;
        _mdns_powerlog_client_info_forget(&v38);
        *v10 = v8;
LABEL_17:
        v17 = 4;
        if (!a2)
        {
          v17 = 0;
        }

        v18 = &v8[v17];
        v19 = *(v18 + 4);
        if (v19 != -1)
        {
          *(v18 + 4) = v19 + 1;
        }

        v20 = *(v18 + 6);
        *(v18 + 6) = v20 + 1;
        if (!v20)
        {
          *v18 = a5;
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  if (((1 << a1) & 0x49248) == 0)
  {
    return;
  }

  monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
  v22 = g_client_info_list;
  if (g_client_info_list)
  {
    v23 = monotonic_time_ns;
    while (!_mdns_powerlog_client_info_match(v22, a3, a4))
    {
      v22 = *(v22 + 64);
      if (!v22)
      {
        goto LABEL_28;
      }
    }

    v28 = 32;
    if (!a2)
    {
      v28 = 0;
    }

    v29 = v22 + v28;
    v30 = *(v29 + 20);
    if (v30 != -1)
    {
      *(v29 + 20) = v30 + 1;
    }

    v31 = *(v29 + 24);
    if (v31)
    {
      v32 = v31 - 1;
      *(v29 + 24) = v32;
      if (!v32)
      {
        v33 = *(v29 + 8);
        v34 = v23 - *v29;
        v35 = __CFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          v36 = -1;
        }

        *(v29 + 8) = v36;
      }
    }
  }

  else
  {
LABEL_28:
    if (a4)
    {
      if (_mdns_powerlog_log_s_once == -1)
      {
LABEL_30:
        v24 = _mdns_powerlog_log_s_log;
        if (!os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
        {
          return;
        }

        LODWORD(v38) = 67109635;
        HIDWORD(v38) = v8;
        v39 = 2082;
        v40 = a3;
        v41 = 2081;
        v42 = a4;
        v25 = "No powerlog client info found for %{mdns:powerlog_event_subtype}u event -- client name: %{public}s, service type: %{private}s";
        v26 = v24;
        v27 = 28;
LABEL_47:
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, v25, &v38, v27);
        return;
      }

LABEL_49:
      dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
      goto LABEL_30;
    }

    if (_mdns_powerlog_log_s_once != -1)
    {
      dispatch_once(&_mdns_powerlog_log_s_once, &__block_literal_global_1431);
    }

    v37 = _mdns_powerlog_log_s_log;
    if (os_log_type_enabled(_mdns_powerlog_log_s_log, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v38) = 67109378;
      HIDWORD(v38) = v8;
      v39 = 2082;
      v40 = a3;
      v25 = "No powerlog client info found for %{mdns:powerlog_event_subtype}u event -- client name: %{public}s";
      v26 = v37;
      v27 = 18;
      goto LABEL_47;
    }
  }
}

BOOL _mdns_powerlog_client_info_match(uint64_t a1, const char *a2, const char *a3)
{
  if (strcasecmp((a1 + 80), a2))
  {
    return 0;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    return a3 && !strcasecmp(v6, a3);
  }

  return !a3;
}

void _mdns_powerlog_client_info_forget(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[9];
    if (!v3 || (free(v3), v1[9] = 0, (v1 = *a1) != 0))
    {
      free(v1);
      *a1 = 0;
    }
  }
}

void mdns_powerlog_register_record_stop(const char *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  bzero(v9, 0x3F1uLL);
  service_type_from_domain_name = _mdns_get_service_type_from_domain_name(a2, v9);
  _mdns_powerlog_bonjour_event(0xCu, a4, a1, service_type_from_domain_name, a3);
}

void _mdns_powerlog_set_client_stats(__CFDictionary *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  v12 = *(a2 + 8);
  if (v12 % 0x3B9ACA00)
  {
    v13 = v12 / 0x3B9ACA00 + 1;
  }

  else
  {
    v13 = v12 / 0x3B9ACA00;
  }

  _mdns_powerlog_event_dictionary_set_int64(a1, a3, v13);
  _mdns_powerlog_event_dictionary_set_int64(a1, a4, *(a2 + 16));
  _mdns_powerlog_event_dictionary_set_int64(a1, a5, *(a2 + 20));
  v14 = *(a2 + 28);

  _mdns_powerlog_event_dictionary_set_int64(a1, a6, v14);
}

void _mdns_powerlog_event_dictionary_set_int64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void _mdns_interface_monitor_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    nw_release(v3);
    a1[5] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    _Block_release(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    free(v6);
    a1[10] = 0;
  }

  v7 = a1[15];
  if (v7)
  {
    nw_release(v7);
    a1[15] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    nw_release(v8);
    a1[16] = 0;
  }

  _mdns_interface_monitor_forget_signatures(a1);
}

void _mdns_interface_monitor_forget_signatures(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  *(a1 + 96) = 0;
  v3 = *(a1 + 104);
  if (v3)
  {
    free(v3);
    *(a1 + 104) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 152) = 0;
}

char *_mdns_interface_monitor_copy_description(uint64_t a1, int a2)
{
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  p_s1 = &__s1;
  __s1 = 0;
  if (!a2 || (mdns_snprintf_add(&p_s1, &v20, "<%s: %p>: ", *(*(a1 + 16) + 8), a1) & 0x80000000) == 0)
  {
    v3 = *(a1 + 136);
    if (v3)
    {
      name = *(a1 + 80);
    }

    else
    {
      name = *(a1 + 128);
      if (name)
      {
        name = nw_interface_get_name(name);
        v3 = *(a1 + 136);
      }

      else
      {
        v3 = 0;
      }
    }

    v5 = "";
    if (name)
    {
      v5 = name;
    }

    if ((mdns_snprintf_add(&p_s1, &v20, "interface %s/%u: ", v5, v3) & 0x80000000) == 0)
    {
      v6 = "";
      v7 = &dword_10014FB98;
      v8 = 7;
      while (1)
      {
        if ((*v7 & *(a1 + 144)) != 0)
        {
          v9 = mdns_snprintf_add(&p_s1, &v20, "%s%s", v6, *(v7 - 1));
          v6 = ", ";
          if (v9 < 0)
          {
            break;
          }
        }

        v7 += 4;
        if (!--v8)
        {
          result = strdup(&__s1);
          if (!result)
          {
            __break(1u);
          }

          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t mdns_interface_monitor_create(uint64_t a1)
{
  v1 = a1;
  v2 = _os_object_alloc();
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = &_mdns_interface_monitor_kind;
  *(v2 + 16) = &_mdns_interface_monitor_kind;
  do
  {
    v5 = v4[2];
    if (v5)
    {
      v5(v3);
    }

    v4 = *v4;
  }

  while (v4);
  *(v3 + 148) = 0;
  *(v3 + 136) = v1;
  if (v1)
  {
    v6 = mdns_system_interface_index_to_name(v1);
    *(v3 + 80) = v6;
    if (v6)
    {
      v7 = nw_interface_create_with_index();
      if (v7)
      {
        v8 = v7;
        v9 = nw_parameters_create();
        if (v9)
        {
          v10 = v9;
          nw_parameters_require_interface(v9, v8);
          evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
          *(v3 + 40) = evaluator_for_endpoint;
          if (evaluator_for_endpoint)
          {
            v12 = nw_path_evaluator_copy_path();
            if (v12)
            {
              v13 = v12;
LABEL_13:
              *(v3 + 140) = _mdns_get_interface_flags_from_nw_path(v13, 0);
              goto LABEL_14;
            }

            if (_mdns_ifmon_log_s_once != -1)
            {
              dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
            }

            v19 = _mdns_ifmon_log_s_log;
            if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
            {
LABEL_45:
              os_release(v3);
              v3 = 0;
              v13 = 0;
              if (!v8)
              {
                goto LABEL_16;
              }

              goto LABEL_15;
            }

            *buf = 0;
            v20 = "Failed to copy path from path evaluator";
          }

          else
          {
            if (_mdns_ifmon_log_s_once != -1)
            {
              dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
            }

            v19 = _mdns_ifmon_log_s_log;
            if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_45;
            }

            *buf = 0;
            v20 = "Failed to create path evaluator";
          }

          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
          goto LABEL_45;
        }

        if (_mdns_ifmon_log_s_once != -1)
        {
          dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
        }

        v18 = _mdns_ifmon_log_s_log;
        if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to create params", buf, 2u);
        }

        v10 = 0;
        goto LABEL_45;
      }

      if (_mdns_ifmon_log_s_once != -1)
      {
        dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
      }

      v17 = _mdns_ifmon_log_s_log;
      if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v21 = *(v3 + 136);
        *buf = 67109120;
        v24 = v21;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create interface for index %u", buf, 8u);
      }
    }

    v10 = 0;
    v8 = 0;
    goto LABEL_45;
  }

  v8 = nw_path_create_evaluator_for_endpoint();
  if (v8)
  {
    v13 = nw_path_evaluator_copy_path();
    nw_release(v8);
    if (v13)
    {
      v15 = nw_path_copy_interface();
      v8 = v15;
      if (v15)
      {
        *(v3 + 120) = v15;
        nw_retain(v15);
        v16 = *(v3 + 120);
        *(v3 + 128) = v16;
        nw_retain(v16);
        nw_release(v8);
        v10 = 0;
        v8 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_13;
    }

    v8 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v13 = 0;
  }

LABEL_14:
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 0x40000000;
  v22[2] = __mdns_interface_monitor_create_block_invoke;
  v22[3] = &__block_descriptor_tmp_1529;
  v22[4] = v3;
  os_unfair_lock_lock(&_mdns_nwi_locked_s_lock);
  __mdns_interface_monitor_create_block_invoke(v22);
  os_unfair_lock_unlock(&_mdns_nwi_locked_s_lock);
  *(v3 + 144) = *(v3 + 140);
  if (v8)
  {
LABEL_15:
    nw_release(v8);
  }

LABEL_16:
  if (v10)
  {
    nw_release(v10);
  }

  if (v13)
  {
    nw_release(v13);
  }

  return v3;
}

uint64_t _mdns_get_interface_flags_from_nw_path(NSObject *a1, int a2)
{
  v3 = a2 & 0xFFFFFFF0 | nw_path_has_ipv4(a1);
  if (nw_path_has_ipv6(a1))
  {
    v3 |= 2u;
  }

  if (nw_path_is_expensive(a1))
  {
    v3 |= 4u;
  }

  if (nw_path_is_constrained(a1))
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

uint64_t __mdns_interface_monitor_create_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 136))
  {
    name = *(v2 + 80);
  }

  else
  {
    v4 = *(v2 + 120);
    if (!v4)
    {
LABEL_10:
      ifstate = 0;
      goto LABEL_11;
    }

    name = nw_interface_get_name(v4);
  }

  if (name)
  {
    v5 = g_nwi_state == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  ifstate = nwi_state_get_ifstate();
LABEL_11:
  _mdns_interface_monitor_update_signatures_from_nwi_state(*(a1 + 32), ifstate);
  result = _mdns_get_interface_flags_from_nwi_state(ifstate, *(*(a1 + 32) + 140));
  *(*(a1 + 32) + 140) = result;
  return result;
}

uint64_t _mdns_interface_monitor_update_signatures_from_nwi_state(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  if (a2)
  {
    signature = nwi_ifstate_get_signature();
    v5 = v19;
  }

  else
  {
    v5 = 0;
    signature = 0;
  }

  updated = _mdns_interface_monitor_update_signature((a1 + 88), (a1 + 96), (a1 + 152), signature, v5 & ~(v5 >> 31));
  v19 = 0;
  if (a2)
  {
    v7 = nwi_ifstate_get_signature();
    v8 = v19;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = _mdns_interface_monitor_update_signature((a1 + 104), (a1 + 112), (a1 + 153), v7, v8 & ~(v8 >> 31));
  if (updated & v9)
  {
    v10 = 1;
  }

  else if (updated)
  {
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 153) ^ 1;
    }
  }

  else
  {
    v10 = v9 & (*(a1 + 152) ^ 1);
  }

  if (_mdns_ifmon_log_s_once != -1)
  {
    dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
  }

  v11 = _mdns_ifmon_log_s_log;
  if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 80);
    if (!v13)
    {
      v13 = "";
    }

    if (*(a1 + 152) == 1)
    {
      v14 = *(a1 + 96);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 136);
    v16 = *(a1 + 88);
    if (*(a1 + 153) == 1)
    {
      v17 = *(a1 + 112);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a1 + 104);
    v19 = 136447746;
    v20 = v13;
    v21 = 1024;
    v22 = v15;
    v23 = 1040;
    v24 = v14;
    v25 = 2096;
    v26 = v16;
    v27 = 1040;
    v28 = v17;
    v29 = 2096;
    v30 = v18;
    v31 = 1024;
    v32 = v10 & 1;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Signature update -- interface: %{public}s/%u, IPv4: %{mdns:base64}.*P, IPv6: %{mdns:base64}.*P, network changed: %{mdns:yesno}d", &v19, 0x38u);
  }

  return v10 & 1;
}

uint64_t _mdns_get_interface_flags_from_nwi_state(uint64_t a1, int a2)
{
  v2 = a2 & 0xFFFFFFCF;
  if (a1)
  {
    LODWORD(v2) = (nwi_ifstate_get_flags() >> 2) & 0x10 | v2;
    if (nwi_ifstate_get_vpn_server())
    {
      return v2 | 0x20;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

uint64_t _mdns_interface_monitor_update_signature(const void **a1, void *a2, char *a3, void *__s2, size_t __n)
{
  if (!__n)
  {
    v13 = 0;
    if (*a3 == 1)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = *a1;
  if (*a2 == __n && !memcmp(*a1, __s2, __n))
  {
    if ((*a3 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v10)
  {
    free(v10);
    *a1 = 0;
  }

  *a2 = 0;
  result = malloc_type_malloc(__n, 0xFE29915uLL);
  if (result)
  {
    v12 = result;
    memcpy(result, __s2, __n);
    *a1 = v12;
    *a2 = __n;
LABEL_8:
    v13 = 1;
LABEL_10:
    *a3 = v13;
    return 1;
  }

  __break(1u);
  return result;
}

void _mdns_interface_monitor_activate_async(void *a1)
{
  os_retain(a1);
  if (_mdns_internal_queue_s_once != -1)
  {
    dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8_1538);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___mdns_interface_monitor_activate_async_block_invoke;
  block[3] = &__block_descriptor_tmp_22_1539;
  block[4] = a1;
  dispatch_async(_mdns_internal_queue_s_queue, block);
}

void ___mdns_interface_monitor_activate_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 155) & 1) != 0 || (*(v2 + 156))
  {
    goto LABEL_68;
  }

  *(v2 + 155) = 1;
  if (!_mdns_start_interface_availability_monitoring_s_store)
  {
    v3 = SCDynamicStoreCreate(0, @"com.apple.mdns.interface-monitor", _mdns_store_changed, 0);
    if (v3)
    {
      goto LABEL_7;
    }

    if (SCError())
    {
      v4 = SCError();
      if (!v4)
      {
LABEL_7:
        NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
        if (NetworkInterface)
        {
          goto LABEL_10;
        }

        if (SCError())
        {
          v6 = SCError();
          if (!v6)
          {
LABEL_10:
            values[0] = NetworkInterface;
            v7 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
            if (v7)
            {
              v8 = v7;
              if (!SCDynamicStoreSetNotificationKeys(v3, v7, 0))
              {
                if (SCError())
                {
                  v9 = SCError();
                  if (!v9)
                  {
                    goto LABEL_14;
                  }

                  v15 = v9;
                }

                else
                {
                  v15 = -6700;
                }

                if (_mdns_ifmon_log_s_once != -1)
                {
                  dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
                }

                v16 = _mdns_ifmon_log_s_log;
                if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
                {
LABEL_40:
                  if (!v3)
                  {
                    goto LABEL_42;
                  }

LABEL_41:
                  CFRelease(v3);
                  goto LABEL_42;
                }

                LODWORD(buf) = 134217984;
                *(&buf + 4) = v15;
                v17 = "Failed to set notification keys for interface availability monitoring: %{mdns:err}ld";
LABEL_72:
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, &buf, 0xCu);
                if (!v3)
                {
                  goto LABEL_42;
                }

                goto LABEL_41;
              }

LABEL_14:
              if (_mdns_internal_queue_s_once != -1)
              {
                dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8_1538);
              }

              if (SCDynamicStoreSetDispatchQueue(v3, _mdns_internal_queue_s_queue))
              {
                goto LABEL_19;
              }

              if (SCError())
              {
                v10 = SCError();
                if (!v10)
                {
LABEL_19:
                  _mdns_start_interface_availability_monitoring_s_store = v3;
LABEL_42:
                  if (NetworkInterface)
                  {
                    CFRelease(NetworkInterface);
                  }

                  if (v8)
                  {
                    CFRelease(v8);
                  }

                  goto LABEL_46;
                }

                v18 = v10;
              }

              else
              {
                v18 = -6700;
              }

              if (_mdns_ifmon_log_s_once != -1)
              {
                dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
              }

              v16 = _mdns_ifmon_log_s_log;
              if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_40;
              }

              LODWORD(buf) = 134217984;
              *(&buf + 4) = v18;
              v17 = "Failed to set dispatch queue for interface availability monitoring: %{mdns:err}ld";
              goto LABEL_72;
            }

            if (_mdns_ifmon_log_s_once != -1)
            {
              dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
            }

            v36 = _mdns_ifmon_log_s_log;
            if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              v33 = "Failed to create notification keys array for interface availability monitoring";
              v34 = v36;
              v35 = 2;
              goto LABEL_70;
            }

            goto LABEL_29;
          }

          v13 = v6;
        }

        else
        {
          v13 = -6700;
        }

        if (_mdns_ifmon_log_s_once != -1)
        {
          dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
        }

        v14 = _mdns_ifmon_log_s_log;
        if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v13;
          v33 = "Failed to create interfaces state key for interface availability monitoring: %{mdns:err}ld";
          v34 = v14;
          v35 = 12;
LABEL_70:
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v33, &buf, v35);
        }

LABEL_29:
        v8 = 0;
        if (!v3)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v11 = v4;
    }

    else
    {
      v11 = -6700;
    }

    if (_mdns_ifmon_log_s_once != -1)
    {
      dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
    }

    v12 = _mdns_ifmon_log_s_log;
    if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create store for interface availability monitoring: %{mdns:err}ld", &buf, 0xCu);
    }
  }

LABEL_46:
  v19 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, *(v2 + 32));
  *(v2 + 56) = v19;
  if (!v19)
  {
LABEL_82:
    _mdns_interface_monitor_terminate(v2, -6729);
    goto LABEL_68;
  }

  os_retain(v2);
  v20 = *(v2 + 56);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v42 = ___mdns_interface_monitor_activate_internal_block_invoke;
  v43 = &__block_descriptor_tmp_23_1546;
  v44 = v2;
  dispatch_source_set_event_handler(v20, &buf);
  v21 = *(v2 + 56);
  values[0] = _NSConcreteStackBlock;
  values[1] = 0x40000000;
  values[2] = ___mdns_interface_monitor_activate_internal_block_invoke_2;
  values[3] = &__block_descriptor_tmp_24_1547;
  values[4] = v2;
  dispatch_source_set_cancel_handler(v21, values);
  dispatch_activate(*(v2 + 56));
  if (*(v2 + 40))
  {
    os_retain(v2);
    if (_mdns_internal_queue_s_once != -1)
    {
      dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8_1538);
    }

    update_handler[10] = _NSConcreteStackBlock;
    update_handler[11] = 0x40000000;
    update_handler[12] = ___mdns_interface_monitor_activate_internal_block_invoke_3;
    update_handler[13] = &__block_descriptor_tmp_26_1548;
    update_handler[14] = v2;
    nw_path_evaluator_set_update_handler();
    update_handler[5] = _NSConcreteStackBlock;
    update_handler[6] = 0x40000000;
    update_handler[7] = ___mdns_interface_monitor_activate_internal_block_invoke_4;
    update_handler[8] = &__block_descriptor_tmp_27_1549;
    update_handler[9] = v2;
    nw_path_evaluator_set_cancel_handler();
    nw_path_evaluator_start();
    *(v2 + 157) = 1;
  }

  if (*(v2 + 136))
  {
    goto LABEL_56;
  }

  v22 = nw_path_monitor_create();
  *(v2 + 48) = v22;
  if (!v22)
  {
    if (_mdns_ifmon_log_s_once != -1)
    {
      dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
    }

    v37 = _mdns_ifmon_log_s_log;
    if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(update_handler[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to create path monitor", update_handler, 2u);
    }

    goto LABEL_82;
  }

  v23 = v22;
  if (_mdns_internal_queue_s_once != -1)
  {
    dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8_1538);
  }

  nw_path_monitor_set_queue(v23, _mdns_internal_queue_s_queue);
  os_retain(v2);
  v24 = *(v2 + 48);
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 0x40000000;
  update_handler[2] = ___mdns_interface_monitor_activate_internal_block_invoke_28;
  update_handler[3] = &__block_descriptor_tmp_29_1551;
  update_handler[4] = v2;
  nw_path_monitor_set_update_handler(v24, update_handler);
  v25 = *(v2 + 48);
  cancel_handler[0] = _NSConcreteStackBlock;
  cancel_handler[1] = 0x40000000;
  cancel_handler[2] = ___mdns_interface_monitor_activate_internal_block_invoke_2_30;
  cancel_handler[3] = &__block_descriptor_tmp_31;
  cancel_handler[4] = v2;
  nw_path_monitor_set_cancel_handler(v25, cancel_handler);
  nw_path_monitor_start(*(v2 + 48));
  *(v2 + 157) = 1;
LABEL_56:
  v26 = &g_monitor_list;
  do
  {
    v27 = v26;
    v28 = *v26;
    v26 = (*v26 + 24);
  }

  while (v28);
  os_retain(v2);
  *v27 = v2;
  if (_mdns_start_nwi_state_monitoring_s_nwi_notify_token == -1)
  {
    notify_key = nwi_state_get_notify_key();
    if (_mdns_internal_queue_s_once != -1)
    {
      dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8_1538);
    }

    v30 = notify_register_dispatch(notify_key, &_mdns_start_nwi_state_monitoring_s_nwi_notify_token, _mdns_internal_queue_s_queue, &__block_literal_global_39);
    if (_mdns_start_nwi_state_monitoring_s_nwi_notify_token == -1)
    {
      v31 = v30;
      if (_mdns_nwi_log_s_once != -1)
      {
        dispatch_once(&_mdns_nwi_log_s_once, &__block_literal_global_43);
      }

      v32 = _mdns_nwi_log_s_log;
      if (os_log_type_enabled(_mdns_nwi_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *v45 = 67109120;
        v46 = v31;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to register for NWI state notifications (status %u)", v45, 8u);
      }
    }

    else
    {
      _mdns_nwi_state_update();
    }
  }

  _mdns_interface_monitor_check_nwi_state_for_updates(v2);
LABEL_68:
  os_release(*(a1 + 32));
}

void ___mdns_interface_monitor_activate_internal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___mdns_interface_monitor_update_block_invoke;
  v11[3] = &unk_10014FD08;
  v11[4] = &v20;
  v11[5] = &v16;
  v11[6] = &v12;
  v11[7] = v2;
  os_unfair_lock_lock((v2 + 148));
  ___mdns_interface_monitor_update_block_invoke(v11);
  os_unfair_lock_unlock((v2 + 148));
  v3 = *(v2 + 144);
  v4 = *(v21 + 6);
  *(v2 + 144) = v4;
  v5 = *(v17 + 24);
  if (*(v2 + 136))
  {
    v6 = v13[3];
    if (!v6)
    {
      goto LABEL_8;
    }

    nw_release(v6);
    v7 = v13 + 3;
  }

  else
  {
    v8 = *(v2 + 128);
    if (v8)
    {
      nw_release(v8);
      *(v2 + 128) = 0;
    }

    v7 = v13 + 3;
    *(v2 + 128) = v13[3];
  }

  *v7 = 0;
LABEL_8:
  if (v5)
  {
    v9 = v4 ^ v3 | 0x80;
  }

  else
  {
    v9 = v4 ^ v3;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }
  }
}

void _mdns_nwi_state_update()
{
  v0 = nwi_state_copy();
  if (!v0)
  {
    if (_mdns_nwi_log_s_once != -1)
    {
      dispatch_once(&_mdns_nwi_log_s_once, &__block_literal_global_43);
    }

    v1 = _mdns_nwi_log_s_log;
    if (os_log_type_enabled(_mdns_nwi_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to copy NWI state", buf, 2u);
    }
  }

  *buf = 0;
  v5 = buf;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___mdns_nwi_state_update_block_invoke;
  v3[3] = &unk_10014FD78;
  v3[4] = buf;
  v3[5] = v0;
  os_unfair_lock_lock(&_mdns_nwi_locked_s_lock);
  ___mdns_nwi_state_update_block_invoke(v3);
  os_unfair_lock_unlock(&_mdns_nwi_locked_s_lock);
  if (*(v5 + 3))
  {
    nwi_state_release();
  }

  for (i = g_monitor_list; i; i = *(i + 24))
  {
    _mdns_interface_monitor_check_nwi_state_for_updates(i);
  }

  _Block_object_dispose(buf, 8);
}

void _mdns_interface_monitor_check_nwi_state_for_updates(uint64_t a1)
{
  if (*(a1 + 136))
  {
    name = *(a1 + 80);
  }

  else
  {
    v3 = *(a1 + 120);
    if (!v3)
    {
      goto LABEL_10;
    }

    name = nw_interface_get_name(v3);
  }

  if (name)
  {
    v4 = g_nwi_state == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ifstate = nwi_state_get_ifstate();
    goto LABEL_11;
  }

LABEL_10:
  ifstate = 0;
LABEL_11:
  interface_flags_from_nwi_state = _mdns_get_interface_flags_from_nwi_state(ifstate, *(a1 + 140));
  updated = _mdns_interface_monitor_update_signatures_from_nwi_state(a1, ifstate);

  _mdns_interface_monitor_trigger_update(a1, interface_flags_from_nwi_state, updated);
}

void _mdns_interface_monitor_terminate(void *object, int a2)
{
  v4 = object[7];
  if (v4)
  {
    dispatch_source_cancel(object[7]);
    dispatch_release(v4);
    object[7] = 0;
  }

  v5 = object[5];
  if (v5)
  {
    if (*(object + 157) != 1 || (nw_path_evaluator_cancel(), (v5 = object[5]) != 0))
    {
      nw_release(v5);
      object[5] = 0;
    }
  }

  v6 = object[6];
  if (v6)
  {
    nw_path_monitor_cancel(v6);
    v7 = object[6];
    if (v7)
    {
      nw_release(v7);
      object[6] = 0;
    }
  }

  v8 = g_monitor_list;
  if (g_monitor_list)
  {
    if (g_monitor_list == object)
    {
      v10 = &g_monitor_list;
LABEL_16:
      *v10 = object[3];
      object[3] = 0;
      os_release(object);
    }

    else
    {
      while (1)
      {
        v9 = v8;
        v8 = v8[3];
        if (!v8)
        {
          break;
        }

        if (v8 == object)
        {
          v10 = v9 + 3;
          goto LABEL_16;
        }
      }
    }
  }

  os_retain(object);
  v11 = object[4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___mdns_interface_monitor_terminate_block_invoke;
  v12[3] = &__block_descriptor_tmp_45;
  v13 = a2;
  v12[4] = object;
  dispatch_async(v11, v12);
}

void ___mdns_interface_monitor_terminate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    if (v2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v4[2](v3[9], v5, v2);
    v3 = *(a1 + 32);
  }

  if (!v2 && v3[9])
  {
    _Block_release(v3[9]);
    v3 = *(a1 + 32);
    v3[9] = 0;
  }

  os_release(v3);
}

void _mdns_interface_monitor_trigger_update(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 140) != a2 || a3 != 0)
  {
    v11 = v3;
    v12 = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = ___mdns_interface_monitor_trigger_update_block_invoke;
    v8[3] = &__block_descriptor_tmp_33_1553;
    v8[4] = a1;
    v9 = a2;
    v10 = a3;
    os_unfair_lock_lock((a1 + 148));
    ___mdns_interface_monitor_trigger_update_block_invoke(v8);
    os_unfair_lock_unlock((a1 + 148));
    v7 = *(a1 + 56);
    if (v7)
    {
      dispatch_source_merge_data(v7, 1uLL);
    }
  }
}

uint64_t ___mdns_interface_monitor_trigger_update_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 140) = *(result + 40);
  if (*(result + 44) == 1)
  {
    *(v1 + 158) = 1;
  }

  return result;
}

uint64_t ___mdns_nwi_state_update_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = g_nwi_state;
  g_nwi_state = *(result + 40);
  return result;
}

void _mdns_interface_monitor_trigger_update_with_path(uint64_t a1, NSObject *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (*(a1 + 136))
  {
    goto LABEL_2;
  }

  v7 = nw_path_copy_interface();
  v19[3] = v7;
  v8 = *(a1 + 120);
  if (!v7)
  {
    v4 = (a1 + 140);
    interface_flags_from_nw_path = _mdns_get_interface_flags_from_nw_path(a2, *(a1 + 140));
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    _mdns_interface_monitor_forget_signatures(a1);
    v10 = v19[3];
    if (!v10 || (nw_interface_get_name(v10) ? (v11 = g_nwi_state == 0) : (v11 = 1), v11))
    {
      ifstate = 0;
    }

    else
    {
      ifstate = nwi_state_get_ifstate();
    }

    _mdns_interface_monitor_update_signatures_from_nwi_state(a1, ifstate);
    interface_flags_from_nw_path = _mdns_get_interface_flags_from_nwi_state(ifstate, interface_flags_from_nw_path);
    v6 = 1;
    goto LABEL_18;
  }

  if (!v8 || (index = nw_interface_get_index(*(a1 + 120)), index != nw_interface_get_index(v19[3])))
  {
    interface_flags_from_nw_path = _mdns_get_interface_flags_from_nw_path(a2, *(a1 + 140));
    goto LABEL_10;
  }

LABEL_2:
  v4 = (a1 + 140);
  interface_flags_from_nw_path = _mdns_get_interface_flags_from_nw_path(a2, *(a1 + 140));
LABEL_3:
  if (*v4 == interface_flags_from_nw_path)
  {
    goto LABEL_20;
  }

  v6 = 0;
LABEL_18:
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = ___mdns_interface_monitor_trigger_update_with_path_block_invoke;
  v15[3] = &unk_10014FD30;
  v16 = interface_flags_from_nw_path;
  v17 = v6;
  v15[4] = &v18;
  v15[5] = a1;
  os_unfair_lock_lock((a1 + 148));
  ___mdns_interface_monitor_trigger_update_with_path_block_invoke(v15);
  os_unfair_lock_unlock((a1 + 148));
  v13 = *(a1 + 56);
  if (v13)
  {
    dispatch_source_merge_data(v13, 1uLL);
  }

LABEL_20:
  v14 = v19[3];
  if (v14)
  {
    nw_release(v14);
    v19[3] = 0;
  }

  _Block_object_dispose(&v18, 8);
}

void ___mdns_interface_monitor_trigger_update_with_path_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1 + 140) = *(a1 + 48);
  v2 = *(a1 + 52);
  if (v2 == 1)
  {
    *(v1 + 158) = v2;
    v4 = *(v1 + 120);
    if (v4)
    {
      nw_release(v4);
      *(*(a1 + 40) + 120) = 0;
      v1 = *(a1 + 40);
    }

    *(v1 + 120) = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void *___mdns_interface_monitor_update_block_invoke(void *a1)
{
  v1 = a1[7];
  *(*(a1[4] + 8) + 24) = *(v1 + 140);
  *(*(a1[5] + 8) + 24) = *(v1 + 158);
  *(v1 + 158) = 0;
  *(*(a1[6] + 8) + 24) = *(v1 + 120);
  result = *(*(a1[6] + 8) + 24);
  if (result)
  {
    return nw_retain(result);
  }

  return result;
}

void _mdns_store_changed()
{
  v9 = 0;
  if (getifaddrs(&v9))
  {
    if (*__error())
    {
      v0 = *__error();
      if (!v0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = -6700;
    }

    if (_mdns_ifmon_log_s_once != -1)
    {
      dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_1524);
    }

    v8 = _mdns_ifmon_log_s_log;
    if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "getifaddrs() failed: %{mdns:err}ld", buf, 0xCu);
    }

    goto LABEL_22;
  }

LABEL_4:
  for (i = g_monitor_list; i; i = *(i + 24))
  {
    v4 = *(i + 136);
    if (v4)
    {
      v5 = *(i + 140);
      v6 = v9;
      if (v9)
      {
        while (1)
        {
          ifa_addr = v6->ifa_addr;
          if (ifa_addr)
          {
            if (ifa_addr->sa_family == 18 && v4 == *ifa_addr->sa_data)
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

        v2 = v5 & 0xFFFFFFBF;
        v3 = (v5 >> 6) & 1;
      }

      else
      {
LABEL_13:
        v3 = (*(i + 140) & 0x40) == 0;
        v2 = v5 | 0x40;
      }

      _mdns_interface_monitor_trigger_update(i, v2, v3);
    }
  }

LABEL_22:
  if (v9)
  {
    freeifaddrs(v9);
  }
}

void mdns_interface_monitor_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_internal_queue_s_once != -1)
  {
    dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8_1538);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_interface_monitor_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = a1;
  dispatch_async(_mdns_internal_queue_s_queue, block);
}

void __mdns_interface_monitor_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 156) & 1) == 0)
  {
    _mdns_interface_monitor_terminate(v2, 0);
    v2 = *(a1 + 32);
    *(v2 + 156) = 1;
  }

  os_release(v2);
}

void mdns_interface_monitor_set_queue(uint64_t a1, dispatch_object_t object)
{
  if (*(a1 + 154))
  {
    if (!*(a1 + 32))
    {
      *(a1 + 32) = object;
      dispatch_retain(object);

      _mdns_interface_monitor_activate_async(a1);
    }
  }

  else
  {
    dispatch_retain(object);
    v4 = *(a1 + 32);
    if (v4)
    {
      dispatch_release(v4);
    }

    *(a1 + 32) = object;
  }
}

void mdns_interface_monitor_set_event_handler(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 72) = v3;
}

void mdns_interface_monitor_set_update_handler(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 64) = v3;
}

char *DNSTypeName(int a1)
{
  if (a1 > 42)
  {
    if (a1 <= 50)
    {
      if (a1 <= 46)
      {
        if (a1 == 43)
        {
          return "DS";
        }

        if (a1 == 46)
        {
          return "RRSIG";
        }
      }

      else
      {
        switch(a1)
        {
          case '/':
            return "NSEC";
          case '0':
            return "DNSKEY";
          case '2':
            return "NSEC3";
        }
      }
    }

    else if (a1 > 249)
    {
      switch(a1)
      {
        case 250:
          return "TSIG";
        case 255:
          return "ANY";
        case 65323:
          return "TSR";
      }
    }

    else
    {
      switch(a1)
      {
        case '3':
          return "NSEC3PARAM";
        case '@':
          return "SVCB";
        case 'A':
          return "HTTPS";
      }
    }

LABEL_52:
    v1 = DNSTypeName_buffer;
    mDNS_snprintf(DNSTypeName_buffer, 16, "TYPE%d", a1);
    return v1;
  }

  if (a1 <= 11)
  {
    if (a1 <= 4)
    {
      if (a1 == 1)
      {
        return "Addr";
      }

      if (a1 == 2)
      {
        return "NS";
      }
    }

    else
    {
      switch(a1)
      {
        case 5:
          return "CNAME";
        case 6:
          return "SOA";
        case 10:
          return "NULL";
      }
    }

    goto LABEL_52;
  }

  if (a1 > 27)
  {
    switch(a1)
    {
      case 28:
        return "AAAA";
      case 33:
        return "SRV";
      case 41:
        return "OPT";
    }

    goto LABEL_52;
  }

  if (a1 == 12)
  {
    return "PTR";
  }

  if (a1 == 13)
  {
    return "HINFO";
  }

  if (a1 != 16)
  {
    goto LABEL_52;
  }

  return "TXT";
}

char *GetRRDisplayString_rdb(unsigned __int8 *a1, unsigned __int16 *a2, char *a3)
{
  v6 = *(a1 + 6);
  v7 = *(a1 + 4);
  v8 = DNSTypeName(*(a1 + 2));
  v80 = a3;
  v9 = mDNS_snprintf(a3, 511, "%4d %##s %s ", v6, v7, v8);
  if (*a1 == 240)
  {
    return v80;
  }

  v10 = v9;
  v11 = *(a1 + 6);
  v12 = *(a1 + 2);
  if (!*(a1 + 6))
  {
    if (v12 != 41)
    {
      mDNS_snprintf(&v80[v9], 511 - v9, "<< ZERO RDATA LENGTH >>", v72, v73, v74);
      return v80;
    }

LABEL_10:
    v13 = (a2 + v11);
    v14 = mDNS_snprintf(&v80[v9], 511 - v9, "Max %d", *(a1 + 3));
    if (v13 <= a2)
    {
      return v80;
    }

    v15 = v14 + v10;
    while (1)
    {
      v16 = *a2;
      if (v16 <= 3)
      {
        if (v16 != 1)
        {
          if (v16 == 2)
          {
            v21 = mDNS_snprintf(&v80[v15], 511 - v15, " Lease %d");
          }

          else
          {
LABEL_26:
            v21 = mDNS_snprintf(&v80[v15], 511 - v15, " Unknown %d");
          }

LABEL_27:
          v15 += v21;
          goto LABEL_28;
        }

        v26 = mDNS_snprintf(&v80[v15], 511 - v15, " LLQ") + v15;
        v27 = mDNS_snprintf(&v80[v26], 511 - v26, " Vers %d", a2[2]) + v26;
        v28 = mDNS_snprintf(&v80[v27], 511 - v27, " Op %d", a2[3]) + v27;
        v29 = mDNS_snprintf(&v80[v28], 511 - v28, " Err/Port %d", a2[4]) + v28;
        v19 = mDNS_snprintf(&v80[v29], 511 - v29, " ID %08X%08X", *(a2 + 3), *(a2 + 4)) + v29;
        v20 = mDNS_snprintf(&v80[v19], 511 - v19, " Lease %d");
      }

      else
      {
        switch(v16)
        {
          case 4u:
            v22 = mDNS_snprintf(&v80[v15], 511 - v15, " Owner") + v15;
            v23 = mDNS_snprintf(&v80[v22], 511 - v22, " Vers %d", *(a2 + 4)) + v22;
            v24 = mDNS_snprintf(&v80[v23], 511 - v23, " Seq %3d", *(a2 + 5)) + v23;
            v15 = v24 + mDNS_snprintf(&v80[v24], 511 - v24, " MAC %.6a", COERCE_DOUBLE(a2 + 3));
            if (a2[1] < 0xEu)
            {
              goto LABEL_28;
            }

            v15 += mDNS_snprintf(&v80[v15], 511 - v15, " I-MAC %.6a", COERCE_DOUBLE(a2 + 6));
            if (a2[1] < 0xFu)
            {
              goto LABEL_28;
            }

            v21 = mDNS_snprintf(&v80[v15], 511 - v15, " Password %.6a");
            goto LABEL_27;
          case 0xFDE9u:
            v25 = mDNS_snprintf(&v80[v15], 511 - v15, " Trace") + v15;
            v19 = mDNS_snprintf(&v80[v25], 511 - v25, " Platform %d", *(a2 + 4)) + v25;
            v20 = mDNS_snprintf(&v80[v19], 511 - v19, " mDNSVers %d");
            break;
          case 0xFDEAu:
            v17 = mDNS_snprintf(&v80[v15], 511 - v15, " TSR") + v15;
            v18 = mDNS_snprintf(&v80[v17], 511 - v17, " Tm %d", *(a2 + 1)) + v17;
            v19 = mDNS_snprintf(&v80[v18], 511 - v18, " Hk %x", *(a2 + 2)) + v18;
            v20 = mDNS_snprintf(&v80[v19], 511 - v19, " Ix %u");
            break;
          default:
            goto LABEL_26;
        }
      }

      v15 = v20 + v19;
LABEL_28:
      a2 += 12;
      if (a2 >= v13)
      {
        return v80;
      }
    }
  }

  if (*(a1 + 2) > 0x1Bu)
  {
    if (*(a1 + 2) > 0x2Du)
    {
      if (*(a1 + 2) <= 0x2Fu)
      {
        if (v12 != 46)
        {
          v30 = a2;
          while (1)
          {
            if (!v30 || (v31 = *v30, v31 > 0x3F))
            {
LABEL_43:
              v32 = 257;
              goto LABEL_139;
            }

            if (!*v30)
            {
              break;
            }

            v30 = (v30 + v31 + 1);
            if (v30 - a2 >= 256)
            {
              goto LABEL_43;
            }
          }

          v32 = v30 - a2 + 1;
LABEL_139:
          v62 = v11 - v32;
          if (RRAssertsExistence(a1, 0x2Fu))
          {
            v10 += mDNS_snprintf(&v80[v10], 511 - v10, "%##s ", a2);
          }

          if (v62 >= 1)
          {
            v63 = a2 + v32;
            while (1)
            {
              v64 = v62 - 2;
              if (v62 <= 2)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PrintTypeBitmap: malformed bitmap, bitmaplen %d short");
                return v80;
              }

              v65 = v63[1];
              if (v64 < v65 || (v65 - 33) <= 0xFFFFFFDF)
              {
                break;
              }

              v79 = v64 - v65;
              v66 = 0;
              v67 = v63 + 2;
              v68 = *v63 << 8;
              v69 = 8 * v65;
              do
              {
                if (((v67[v66 >> 3] << (v66 & 7)) & 0x80) != 0)
                {
                  v70 = DNSTypeName(v68);
                  v10 += mDNS_snprintf(&v80[v10], 511 - v10, "%s ", v70);
                }

                ++v66;
                ++v68;
                --v69;
              }

              while (v69);
              v63 = &v67[v65];
              v62 = v79;
              if (v79 <= 0)
              {
                return v80;
              }
            }

            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "PrintTypeBitmap: malformed nsec, bitmaplen %d wlen %d");
            }
          }

          return v80;
        }

        v82 = 0;
        v57 = dnssec_obj_rr_rrsig_create(*(a1 + 4), (*(a1 + 5) + 4), v11, 0, &v82);
        v55 = v57;
        if (!v82)
        {
          v56 = dnssec_obj_rr_copy_rdata_rfc_description(v57, &v82);
          if (!v82)
          {
            goto LABEL_137;
          }

          goto LABEL_124;
        }

        goto LABEL_123;
      }

      if (v12 == 48)
      {
        v81 = 0;
        v58 = dnssec_obj_rr_dnskey_create(*(a1 + 4), *(a1 + 3), (*(a1 + 5) + 4), v11, &v81);
        v55 = v58;
        if (!v81)
        {
          v56 = dnssec_obj_rr_copy_rdata_rfc_description(v58, &v81);
          if (!v81)
          {
LABEL_137:
            mDNS_snprintf(&v80[v10], 511 - v10, "%s", v56);
          }

LABEL_124:
          if (v55)
          {
            ref_count_obj_release(v55);
          }

          if (v56)
          {
            free(v56);
          }

          return v80;
        }

LABEL_123:
        v56 = 0;
        goto LABEL_124;
      }

      if (v12 == 65323)
      {
        mDNS_snprintf(&v80[v9], 511 - v9, "%d");
        return v80;
      }

LABEL_128:
      mDNS_snprintf(&v80[v9], 511 - v9, "RDLen %d: %.*s", v11, *(a1 + 6), a2);
      v59 = *v80;
      if (*v80)
      {
        v60 = (v80 + 1);
        do
        {
          if (v59 <= 31)
          {
            *(v60 - 1) = 46;
          }

          v61 = *v60++;
          v59 = v61;
        }

        while (v61);
      }

      return v80;
    }

    if (*(a1 + 2) <= 0x28u)
    {
      if (v12 == 28)
      {
        mDNS_snprintf(&v80[v9], 511 - v9, "%.16a");
        return v80;
      }

      if (v12 == 33)
      {
        mDNS_snprintf(&v80[v9], 511 - v9, "%u %u %u %##s", *a2, a2[1], bswap32(a2[2]) >> 16, a2 + 3);
        return v80;
      }

      goto LABEL_128;
    }

    if (v12 != 41)
    {
      if (v12 == 43)
      {
        v83 = 0;
        v54 = dnssec_obj_rr_ds_create(*(a1 + 4), *(a1 + 3), (*(a1 + 5) + 4), v11, 0, &v83);
        v55 = v54;
        if (!v83)
        {
          v56 = dnssec_obj_rr_copy_rdata_rfc_description(v54, &v83);
          if (!v83)
          {
            goto LABEL_137;
          }

          goto LABEL_124;
        }

        goto LABEL_123;
      }

      goto LABEL_128;
    }

    goto LABEL_10;
  }

  if (*(a1 + 2) <= 5u)
  {
    if (v12 == 1)
    {
      mDNS_snprintf(&v80[v9], 511 - v9, "%.4a");
      return v80;
    }

    if (v12 != 2 && v12 != 5)
    {
      goto LABEL_128;
    }

LABEL_47:
    mDNS_snprintf(&v80[v9], 511 - v9, "%##s", a2, v73, v74);
    return v80;
  }

  if (*(a1 + 2) <= 0xCu)
  {
    if (v12 == 6)
    {
      mDNS_snprintf(&v80[v9], 511 - v9, "%##s %##s %d %d %d %d %d", a2, a2 + 128, *(a2 + 128), *(a2 + 129), *(a2 + 130), *(a2 + 131), *(a2 + 132));
      return v80;
    }

    if (v12 != 12)
    {
      goto LABEL_128;
    }

    goto LABEL_47;
  }

  if (v12 != 13 && v12 != 16)
  {
    goto LABEL_128;
  }

  v33 = 511 - v9;
  if ((511 - v9) < 5)
  {
    return v80;
  }

  v34 = &v80[v9];
  v35 = a2 + v11;
  if ((a2 + v11) <= a2)
  {
    v36 = 0;
    goto LABEL_158;
  }

  v75 = 511 - v9;
  v36 = 0;
  v37 = 1;
  v76 = (a2 + v11);
  v77 = &v80[v9];
  while (1)
  {
    v40 = *a2;
    v39 = a2 + 1;
    v38 = v40;
    if (v35 - v39 < v40)
    {
LABEL_155:
      v33 = v75;
      goto LABEL_158;
    }

    v41 = &v34[v36];
    v42 = 506 - (v10 + v36);
    v78 = v36;
    if (v37)
    {
      v43 = 0;
      goto LABEL_58;
    }

    if (v42 < 2)
    {
      break;
    }

    v43 = mDNS_snprintf(v41, 506 - (v10 + v36), "%c", 124);
LABEL_58:
    v44 = &v39[v38];
    if (v39 < &v39[v38])
    {
      while (1)
      {
        v45 = &v39[v44 - v39];
        if (v45 > v39)
        {
          break;
        }

LABEL_94:
        v46 = 0;
LABEL_95:
        if (v46)
        {
          v50 = v46 - v39;
        }

        else
        {
          v50 = v44 - v39;
        }

        if (v50)
        {
          v51 = mDNS_snprintf(&v41[v43], v42 - v43, "%.*s", v50, v39);
          v43 += v51;
          if (v51 != v50)
          {
            goto LABEL_157;
          }
        }

        if (v46)
        {
          v52 = v42 - v43;
          if ((*v46 & 0xDF) == 0x5C)
          {
            v53 = "\\%c";
            if (v52 <= 2)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v53 = "\\x%02X";
            if (v52 < 5)
            {
              goto LABEL_157;
            }
          }

          v43 += mDNS_snprintf(&v41[v43], v52, v53, *v46);
          v45 = v46 + 1;
        }

        v39 = v45;
        if (v45 >= v44)
        {
          goto LABEL_107;
        }
      }

      v46 = v39;
      while (2)
      {
        v47 = v44 - v46;
        if (v44 == v46)
        {
          goto LABEL_95;
        }

        v48 = *v46;
        if ((*v46 & 0x80000000) == 0)
        {
          if ((v48 & 0x5F) == 0x5C || (v48 - 32) > 0x5E)
          {
            goto LABEL_95;
          }

          v49 = 1;
          goto LABEL_66;
        }

        if (v47 == 1)
        {
          goto LABEL_95;
        }

        if ((v48 - 224) >= 0xFFFFFFE2 && v46[1] < -64)
        {
          v49 = 2;
        }

        else
        {
          if (v47 < 3 || v46[2] > -65)
          {
            goto LABEL_95;
          }

          if (v48 == 224)
          {
            if ((v46[1] & 0xE0) != 0xA0)
            {
LABEL_83:
              if (v47 == 3 || v46[3] > -65)
              {
                goto LABEL_95;
              }

              if (v48 == 240)
              {
                if (*(v46 + 1) - 192 < 0xFFFFFFD0)
                {
                  goto LABEL_95;
                }
              }

              else if ((v48 - 244) >= 0xFFFFFFFD)
              {
                if (v46[1] > -65)
                {
                  goto LABEL_95;
                }
              }

              else if (v48 != 244 || v46[1] > -113)
              {
                goto LABEL_95;
              }

              v49 = 4;
              goto LABEL_66;
            }
          }

          else if ((v48 - 225) < 0xC || (v48 & 0xFE) == 0xEE)
          {
            if (v46[1] > -65)
            {
              goto LABEL_83;
            }
          }

          else if (v48 != 237 || v46[1] >= -96)
          {
            goto LABEL_83;
          }

          v49 = 3;
        }

LABEL_66:
        v46 += v49;
        if (v46 >= v45)
        {
          goto LABEL_94;
        }

        continue;
      }
    }

LABEL_107:
    v37 = 0;
    v36 = v43 + v78;
    a2 = v44;
    v35 = v76;
    v34 = v77;
    if (v44 >= v76)
    {
      goto LABEL_155;
    }
  }

  v43 = 0;
LABEL_157:
  v36 = v43 + v78;
  v33 = v75;
  v34 = v77;
LABEL_158:
  mDNS_snprintf(&v34[v36], v33 - v36, " <%c>");
  return v80;
}

uint64_t RRAssertsExistence(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 4) != 47)
  {
    return 0;
  }

  v2 = *(a1 + 40) + 4;
  v3 = v2;
  while (1)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *v3;
    if (v4 > 0x3F)
    {
      return 0;
    }

    if (!*v3)
    {
      break;
    }

    v3 += v4 + 1;
    if (&v3[-v2] > 255)
    {
      return 0;
    }
  }

  v6 = v3 - v2 + 1;
  if (v6 > 0x100u)
  {
    return 0;
  }

  v7 = *(a1 + 12) - v6;
  if (v7 < 1)
  {
    return 0;
  }

  v8 = (v2 + v6);
  while (1)
  {
    v9 = v7 - 2;
    if (v7 <= 2)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BitmapTypeCheck: malformed nsec, bitmaplen %d short");
      }

      return 0;
    }

    v10 = *v8;
    v11 = v8[1];
    v7 = v9 - v11;
    if (v9 < v11 || (v11 - 33) <= 0xFFFFFFDF)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "BitmapTypeCheck: malformed nsec, bitmaplen %d wlen %d, win %d");
      }

      return 0;
    }

    v12 = v8 + 2;
    if (a2 >> 8 == v10)
    {
      break;
    }

    result = 0;
    v8 = &v12[v11];
    if (v7 <= 0)
    {
      return result;
    }
  }

  v13 = a2 >> 3;
  if (v13 >= v11)
  {
    return 0;
  }

  return v12[v13] & (0x80u >> (a2 & 7));
}

uint64_t DomainNameBytesLength(_BYTE *a1, unint64_t a2)
{
  v2 = a1;
  while (1)
  {
    if (a2)
    {
      v3 = 257;
      if (v2 >= a2 || !v2)
      {
        return v3;
      }
    }

    else if (!v2)
    {
      return 257;
    }

    v4 = *v2;
    if (v4 > 0x3F)
    {
      return 257;
    }

    if (!*v2)
    {
      break;
    }

    v2 += v4 + 1;
    if (v2 - a1 >= 256)
    {
      return 257;
    }
  }

  return (v2 - a1 + 1);
}

uint64_t mDNS_DomainNameFNV1aHash(unsigned __int8 *a1)
{
  result = 2166136261;
  v3 = a1;
  while (1)
  {
    if (!v3 || (v4 = *v3, v4 > 0x3F))
    {
LABEL_6:
      LODWORD(v3) = 257;
      goto LABEL_7;
    }

    if (!*v3)
    {
      break;
    }

    v3 += v4 + 1;
    if ((v3 - a1) > 255)
    {
      goto LABEL_6;
    }
  }

  LODWORD(v3) = (v3 - a1 + 1);
  if (!v3)
  {
    return result;
  }

LABEL_7:
  v3 = v3;
  do
  {
    v6 = *a1++;
    v5 = v6;
    v7 = v6 | 0x20;
    if ((v6 - 65) < 0x1A)
    {
      v5 = v7;
    }

    result = 16777619 * (v5 ^ result);
    --v3;
  }

  while (v3);
  return result;
}

uint64_t SameDomainNameBytes(_BYTE *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = a1 + 256;
  while (*v3 || *a2)
  {
    if (&v3[*v3 + 1] >= v4)
    {
      return 0;
    }

    result = SameDomainLabelPointer(v3, a2);
    if (!result)
    {
      return result;
    }

    v3 += *v3 + 1;
    a2 += *a2 + 1;
  }

  return 1;
}

uint64_t IsSubdomain(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 0;
    v4 = a1;
    do
    {
      ++v3;
      v5 = &v4[v2];
      v6 = v5[1];
      v4 = v5 + 1;
      v2 = v6;
    }

    while (v6);
  }

  else
  {
    v3 = 0;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      ++v8;
      v10 = &v9[v7];
      v11 = v10[1];
      v9 = v10 + 1;
      v7 = v11;
    }

    while (v11);
  }

  else
  {
    v8 = 0;
  }

  v12 = __OFSUB__(v3, v8);
  v13 = v3 - v8;
  if (v13 < 0 != v12)
  {
    return 0;
  }

  if (v13 >= 1)
  {
    v15 = v13 + 1;
    do
    {
      if (!*a1)
      {
        break;
      }

      a1 += *a1 + 1;
      --v15;
    }

    while (v15 > 1);
  }

  return SameDomainNameBytes(a1, a2);
}

uint64_t TruncateUTF8ToLength(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    return a2;
  }

  LODWORD(v3) = a3;
  v4 = a3 + 1;
  if (v4 >= a2)
  {
    v5 = -80;
    if (a3)
    {
LABEL_4:
      v6 = *(a1 + a3);
      v7 = (a1 + a3 - 1);
      while (1)
      {
        v8 = v5 & 0xF0;
        v5 = v6;
        v9 = v6 & 0xC0;
        v10 = v6 == 237 && v8 == 176;
        v11 = v10;
        if (v9 != 128 && !v11)
        {
          break;
        }

        v12 = *v7--;
        v6 = v12;
        LODWORD(v3) = v3 - 1;
        if (!--a3)
        {
          LODWORD(v3) = 0;
          break;
        }
      }

      v3 = v3;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(a1 + v4);
    if (a3)
    {
      goto LABEL_4;
    }
  }

  v3 = 0;
  do
  {
LABEL_18:
    a2 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
  }

  while (*(a1 - 1 + a2) < 0x21u);
  return a2;
}

uint64_t IncrementLabelSuffix(unsigned __int8 *a1, int a2)
{
  v4 = *a1;
  if (!a2)
  {
    if (v4 >= 2)
    {
      v7 = a1[v4];
      v9 = 2;
      if ((v7 - 48) <= 9)
      {
        if ((v4 - 1) >= 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = v4 - 1;
        }

        v12 = v4 - 1;
        while (v12 > 2u)
        {
          v13 = a1[v12--];
          if ((v13 - 48) >= 0xA)
          {
            goto LABEL_39;
          }
        }

        v13 = a1[v11];
LABEL_39:
        if (v13 != 45)
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      }

      v10 = 1;
    }

    else
    {
      v10 = 1;
      v9 = 2;
    }

    v8 = 2;
    goto LABEL_27;
  }

  if (v4 >= 4 && a1[v4] == 41 && a1[(v4 - 1)] - 48 <= 9)
  {
    v5 = v4 - 2;
    v6 = (v4 - 2);
    if ((v4 - 2) >= 3)
    {
      do
      {
        if (a1[v6] - 48 >= 0xA)
        {
          break;
        }

        v6 = --v5;
      }

      while (v5 >= 3u);
    }

    if (a1[v6] != 40 || a1[v6 - 1] != 32)
    {
      goto LABEL_61;
    }

    v7 = 41;
LABEL_40:
    if (a2 && v7 == 41)
    {
      LOBYTE(v4) = v4 - 1;
      *a1 = v4;
    }

    v23 = a1[v4];
    if ((v23 - 48) > 9)
    {
      v24 = 0;
      if (a2)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v24 += (v23 - 48) * v25;
        v25 *= 10;
        LOBYTE(v4) = v4 - 1;
        *a1 = v4;
        v23 = a1[v4];
      }

      while ((v23 - 48) < 0xA);
      if (a2)
      {
LABEL_47:
        if (v4 >= 2u && v23 == 40 && a1[v4 - 1] == 32)
        {
          v26 = -2;
LABEL_55:
          *a1 = v4 + v26;
          goto LABEL_56;
        }

        goto LABEL_56;
      }
    }

    if (v4 && v23 == 45)
    {
      v26 = -1;
      goto LABEL_55;
    }

LABEL_56:
    if (v24)
    {
      if (v24 >= 0xA)
      {
        do
        {
          v27 = arc4random() & 0x7F;
        }

        while (v27 > 0x63);
        v8 = v24 + v27 + 1;
      }

      else
      {
        v8 = v24 + 1;
      }

      goto LABEL_62;
    }

LABEL_61:
    v8 = 2;
LABEL_62:
    if (a2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (!a2)
    {
      v10 = 1;
      goto LABEL_27;
    }

    LODWORD(v4) = *a1;
    goto LABEL_12;
  }

  v8 = 2;
  v9 = 4;
LABEL_12:
  while (a1[v4] == 32)
  {
    LODWORD(v4) = v4 - 1;
    *a1 = v4;
  }

  v10 = 0;
LABEL_27:
  v14 = v9 - 1;
  v15 = 1;
  do
  {
    v16 = v15;
    ++v14;
    if (v15 > 0x19999998)
    {
      break;
    }

    v15 *= 10;
  }

  while (v15 <= v8);
  result = TruncateUTF8ToLength((a1 + 1), *a1, 63 - v14);
  *a1 = result + 1;
  v18 = (result + 1);
  if (v10)
  {
    v19 = 45;
  }

  else
  {
    a1[v18] = 32;
    LOBYTE(v18) = *a1 + 1;
    *a1 = v18;
    v18 = v18;
    v19 = 40;
  }

  a1[v18] = v19;
  if (v16)
  {
    do
    {
      v20 = *a1 + 1;
      *a1 = v20;
      a1[v20] = v8 / v16 + 48;
      v8 %= v16;
      v21 = v16 > 9;
      v16 /= 0xAu;
    }

    while (v21);
  }

  if ((v10 & 1) == 0)
  {
    v22 = *a1 + 1;
    *a1 = v22;
    a1[v22] = 41;
  }

  return result;
}

uint64_t mDNS_SetupQuestion(uint64_t a1, uint64_t a2, _BYTE *__src, int a4, uint64_t a5)
{
  *(a1 + 136) = a2;
  *(a1 + 324) = 0;
  v8 = __src;
  do
  {
    if (!v8)
    {
      break;
    }

    v9 = *v8;
    if (v9 > 0x3F)
    {
      break;
    }

    if (!*v8)
    {
      v10 = v8 - __src + 1;
      if (v10 <= 0x100u)
      {
        memcpy((a1 + 376), __src, v10);
        goto LABEL_10;
      }

      break;
    }

    v8 += v9 + 1;
  }

  while (v8 - __src <= 255);
  *(a1 + 376) = 0;
LABEL_10:
  *(a1 + 342) = a4;
  *(a1 + 344) = 1;
  *(a1 + 632) = 0;
  *(a1 + 633) = a4 != 12;
  *(a1 + 641) = 0;
  *(a1 + 639) = 0;
  *(a1 + 653) = 0;
  *(a1 + 634) = 0;
  result = getpid();
  *(a1 + 244) = result;
  *(a1 + 655) = 0;
  *(a1 + 280) = -1;
  *(a1 + 152) = ProxyClientCallback;
  *(a1 + 176) = a5;
  return result;
}

BOOL RRTypeAnswersQuestionType(uint64_t a1, unsigned int a2, char a3)
{
  v5 = a3 & 3;
  if (v5 == 1)
  {
    v6 = *(a1 + 56);
    if (!v6)
    {
      return 0;
    }

    v7 = 0;
  }

  else
  {
    if (v5 == 3)
    {
      v6 = *(a1 + 56);
      if (!v6)
      {
        return 0;
      }

      if (!*(v6 + 32))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(a1 + 56);
      if (v5 != 2 || !v6)
      {
        result = 0;
        if (v5 == 2 || v6)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    v7 = 1;
  }

  if (*(v6 + 32) != v7)
  {
    return 0;
  }

LABEL_15:
  v9 = *(a1 + 4);
  if (v9 == 41)
  {
    return 0;
  }

  if (v9 == 5)
  {
    return 1;
  }

  result = 1;
  if (a2 != 255 && v9 != a2)
  {
    if (v9 == 47)
    {
      v10 = RRAssertsExistence(a1, 0x2Fu);
      v9 = *(a1 + 4);
      if (!v10 && v9 == 47)
      {
        if (!RRAssertsExistence(a1, a2))
        {
          return 1;
        }

        v9 = *(a1 + 4);
      }
    }

    if (v9 == 46)
    {
      if (resource_record_as_rrsig_get_covered_type(a1) == a2)
      {
        return 1;
      }

      return resource_record_as_rrsig_get_covered_type(a1) == 5;
    }

    return 0;
  }

  return result;
}

BOOL RecordAnswersQuestion(uint64_t a1, int a2, uint64_t a3)
{
  result = SameNameRecordAnswersQuestion(a1, a2, a3);
  if (result)
  {
    return *(a1 + 16) == *(a3 + 200) && SameDomainNameBytes(*(a1 + 32), (a3 + 376)) != 0;
  }

  return result;
}

BOOL LocalOnlyRecordAnswersQuestion(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 172);
  if (v3 <= 3)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "LocalOnlyRecordAnswersQuestion: ERROR!! called with regular AuthRecordAny %##s", *(a1 + 40));
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a2 + 136);
    if (v6 != -2)
    {
      if (v6)
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v7 = v5 + 5;
        if (v7 > 3 || v7 == 1)
        {
          return 0;
        }
      }
    }

    if (v3 != 4 && *(a2 + 340))
    {
      return 0;
    }
  }

  if (*(a2 + 144))
  {
    return 0;
  }

  result = RRTypeAnswersQuestionType(a1 + 8, *(a2 + 342), 0);
  if (result)
  {
    v10 = *(a2 + 344);
    if ((*(a1 + 14) == v10 || v10 == 255) && *(a1 + 24) == *(a2 + 200))
    {
      return SameDomainNameBytes(*(a1 + 40), (a2 + 376)) != 0;
    }

    return 0;
  }

  return result;
}

char *ResourceRecordGetRDataBytesPointer(uint64_t a1, char *a2, int a3, _WORD *a4, int *a5)
{
  v8 = *(a1 + 4);
  if ((v8 > 0x2F || ((1 << v8) & 0x821204268040) == 0) && v8 != 65323)
  {
    v15 = 0;
    result = (*(a1 + 40) + 4);
    v13 = *(a1 + 12);
    if (!a4)
    {
      goto LABEL_19;
    }

LABEL_18:
    *a4 = v13;
    goto LABEL_19;
  }

  v12 = putRData(0, a2, &a2[a3], a1);
  v13 = v12 - a2;
  v14 = v12 > a2;
  if (v12 > a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = -65540;
  }

  if (v12 > a2)
  {
    result = a2;
  }

  else
  {
    result = 0;
  }

  if (!v14)
  {
    v13 = 0;
  }

  if (a4)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (a5)
  {
    *a5 = v15;
  }

  return result;
}

unsigned __int8 *putUpdateLeaseWithLimit(unint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  bzero(&v8, 0x498uLL);
  v9[0] = 32;
  v10 = 41;
  v44[0] = 264;
  v14 = v43;
  v15 = v44;
  v23 = 0;
  v24 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v25 = v43;
  v39 = 0;
  v40 = 0;
  v42 = 0;
  v41 = 0;
  v43[0] = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v11 = 1440;
  v12 = 4500;
  v13 = 1572888;
  v44[2] = 2;
  v45 = 7200;
  v6 = PutResourceRecordTTLWithLimit(a1, a2, (a1 + 10), v9, 0, a3);
  if (!v6)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: putUpdateLeaseWithLimit - PutResourceRecordTTLWithLimit");
  }

  return v6;
}

_BYTE *skipDomainName(unint64_t a1, _BYTE *a2, unint64_t a3)
{
  result = 0;
  if (a2 >= a1 && a2 < a3)
  {
    result = a2 + 1;
    v5 = *a2;
    if (*a2)
    {
      v6 = 0;
      while (!(v5 >> 6))
      {
        a2 += v5 + 1;
        if (a2 >= a3 || v5 + v6 + 1 > 0xFF)
        {
          return 0;
        }

        v6 += v5 + 1;
        v5 = *a2;
        if (!*a2)
        {
          return a2 + 1;
        }
      }

      v7 = a2 + 2;
      if ((a2 + 2) > a3)
      {
        v7 = 0;
      }

      if ((v5 >> 6) - 1 >= 2)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL SetRData(unint64_t a1, unsigned __int8 *__src, unint64_t a3, uint64_t a4, size_t __n)
{
  v7 = a3;
  v8 = __src;
  v9 = a1;
  v10 = *(a4 + 40);
  v11 = v10 + 4;
  v12 = *(a4 + 4);
  switch(*(a4 + 4))
  {
    case 1:
      if (__n != 4)
      {
        return 0;
      }

      v10[4] = *__src;
      v10[5] = __src[1];
      v10[6] = __src[2];
      v10[7] = __src[3];
      return 1;
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xC:
    case 0x17:
    case 0x27:
      if (a1)
      {
        goto LABEL_3;
      }

      v20 = DomainNameBytesLength(__src, a3);
      if (v20 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_15;
      }

      memcpy(v10 + 4, v8, v20);
      v17 = 257;
      v18 = v10 + 4;
      do
      {
        if (!v18)
        {
          break;
        }

        v22 = *v18;
        if (v22 > 0x3F)
        {
          break;
        }

        if (!*v18)
        {
          goto LABEL_133;
        }

        v18 += v22 + 1;
      }

      while (v18 - v11 < 256);
      goto LABEL_134;
    case 6:
      if (a1)
      {
        DomainName = getDomainName(a1, __src, a3, v10 + 4);
        if (!DomainName)
        {
          return 0;
        }

        v44 = getDomainName(v9, DomainName, v7, v10 + 260);
        if (!v44)
        {
          return 0;
        }

        goto LABEL_92;
      }

      v73 = DomainNameBytesLength(__src, a3);
      if (v73 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_15;
      }

      memcpy(v10 + 4, v8, v73);
      v74 = 257;
      v75 = v10 + 4;
      do
      {
        if (!v75)
        {
          break;
        }

        v76 = *v75;
        if (v76 > 0x3F)
        {
          break;
        }

        if (!*v75)
        {
          v74 = (v75 - v11 + 1);
          break;
        }

        v75 += v76 + 1;
      }

      while (v75 - v11 < 256);
      v106 = &v8[v74];
      if (!&v8[v74])
      {
        return 0;
      }

      v24 = v10 + 260;
      v107 = DomainNameBytesLength(v106, v7);
      if (v107 - 257 > 0xFFFFFEFF)
      {
        memcpy(v10 + 260, v106, v107);
        v108 = 257;
        v109 = v10 + 260;
        while (1)
        {
          if (!v109)
          {
            goto LABEL_292;
          }

          v110 = *v109;
          if (v110 > 0x3F)
          {
            goto LABEL_292;
          }

          if (!*v109)
          {
            break;
          }

          v109 += v110 + 1;
          if (v109 - v24 >= 256)
          {
            goto LABEL_292;
          }
        }

        v108 = (v109 - v24 + 1);
LABEL_292:
        v44 = &v106[v108];
        if (!&v106[v108])
        {
          return 0;
        }

LABEL_92:
        if (v44 + 5 != v7)
        {
          return 0;
        }

        *(v10 + 129) = bswap32(*v44);
        *(v10 + 130) = bswap32(v44[1]);
        *(v10 + 131) = bswap32(v44[2]);
        *(v10 + 132) = bswap32(v44[3]);
        *(v10 + 133) = bswap32(v44[4]);
        return 1;
      }

LABEL_278:
      *v24 = 0;
      return 0;
    case 0xA:
    case 0xB:
    case 0x10:
    case 0x13:
    case 0x14:
    case 0x16:
    case 0x18:
    case 0x19:
    case 0x1B:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x22:
    case 0x25:
    case 0x26:
    case 0x28:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
      goto LABEL_98;
    case 0xD:
      if (a3 <= __src || __n != a3 - __src)
      {
        v61 = mDNSLogCategory_Default;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v62 = mDNSLogCategory_Default == mDNSLogCategory_State;
        }

        else
        {
          v62 = 1;
        }

        if (v62)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
          {
            return 0;
          }

          LODWORD(__dst) = 67109120;
          DWORD1(__dst) = __n;
          v63 = "SetRData: Malformed HINFO RDATA - invalid RDATA length: %u";
        }

        else
        {
          v61 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
          {
            return 0;
          }

          LODWORD(__dst) = 67109120;
          DWORD1(__dst) = __n;
          v63 = "SetRData: Malformed HINFO RDATA - invalid RDATA length: %u";
        }

        v78 = v61;
        v79 = 8;
LABEL_155:
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, v63, &__dst, v79);
        return 0;
      }

      v45 = *__src + 1;
      if (v45 >= __n)
      {
        v88 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
          {
            return 0;
          }

          LOWORD(__dst) = 0;
          v63 = "SetRData: Malformed HINFO RDATA - CPU character string goes out of boundary";
        }

        else
        {
          v88 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
          {
            return 0;
          }

          LOWORD(__dst) = 0;
          v63 = "SetRData: Malformed HINFO RDATA - CPU character string goes out of boundary";
        }

LABEL_257:
        v78 = v88;
        v79 = 2;
        goto LABEL_155;
      }

      if (__src[v45] + 1 == a3 - (__src + v45))
      {
        goto LABEL_98;
      }

      v88 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(__dst) = 0;
          v63 = "SetRData: Malformed HINFO RDATA - OS character string does not end at the RDATA ending";
          goto LABEL_257;
        }
      }

      else
      {
        v88 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(__dst) = 0;
          v63 = "SetRData: Malformed HINFO RDATA - OS character string does not end at the RDATA ending";
          goto LABEL_257;
        }
      }

      return 0;
    case 0xE:
    case 0x11:
      if (a1)
      {
        v21 = getDomainName(a1, __src, a3, v10 + 4);
        if (!v21)
        {
          return 0;
        }

        v13 = v21;
        v14 = v10 + 260;
        goto LABEL_23;
      }

      v57 = DomainNameBytesLength(__src, a3);
      if (v57 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_15;
      }

      memcpy(v10 + 4, v8, v57);
      v58 = 257;
      v59 = v10 + 4;
      while (2)
      {
        if (v59)
        {
          v60 = *v59;
          if (v60 <= 0x3F)
          {
            if (*v59)
            {
              v59 += v60 + 1;
              if (v59 - v11 >= 256)
              {
                break;
              }

              continue;
            }

            v58 = (v59 - v11 + 1);
          }
        }

        break;
      }

      v23 = &v8[v58];
      if (!&v8[v58])
      {
        return 0;
      }

      v24 = v10 + 260;
      v89 = DomainNameBytesLength(v23, v7);
      if (v89 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_278;
      }

      memcpy(v10 + 260, v23, v89);
      v81 = 257;
      v82 = v10 + 260;
      do
      {
        if (!v82)
        {
          break;
        }

        v90 = *v82;
        if (v90 > 0x3F)
        {
          break;
        }

        if (!*v82)
        {
          goto LABEL_285;
        }

        v82 += v90 + 1;
      }

      while (v82 - v24 < 256);
      goto LABEL_286;
    case 0xF:
    case 0x12:
    case 0x15:
    case 0x24:
      if (__n < 3)
      {
        return 0;
      }

      v8 = __src + 2;
      *(v10 + 2) = bswap32(*__src) >> 16;
      v11 = v10 + 6;
      if (a1)
      {
LABEL_3:
        v13 = v8;
        v14 = v11;
        goto LABEL_4;
      }

      v16 = DomainNameBytesLength(__src + 2, a3);
      if (v16 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_15;
      }

      memcpy(v10 + 6, v8, v16);
      v17 = 257;
      v18 = v10 + 6;
      while (2)
      {
        if (v18)
        {
          v19 = *v18;
          if (v19 <= 0x3F)
          {
            if (*v18)
            {
              v18 += v19 + 1;
              if (v18 - v11 >= 256)
              {
                break;
              }

              continue;
            }

LABEL_133:
            v17 = (v18 - v11 + 1);
          }
        }

        break;
      }

LABEL_134:
      v15 = &v8[v17];
      return v15 == v7;
    case 0x1A:
      if (__n < 4)
      {
        return 0;
      }

      v41 = __src + 2;
      *(v10 + 2) = bswap32(*__src) >> 16;
      v11 = v10 + 6;
      if (a1)
      {
        v42 = getDomainName(a1, v41, a3, v10 + 6);
        if (!v42)
        {
          return 0;
        }

        v13 = v42;
        v14 = v10 + 262;
LABEL_23:
        a1 = v9;
        a3 = v7;
        goto LABEL_4;
      }

      v84 = DomainNameBytesLength(v41, a3);
      if (v84 - 257 <= 0xFFFFFEFF)
      {
LABEL_15:
        *v11 = 0;
        return 0;
      }

      memcpy(v10 + 6, v41, v84);
      v85 = 257;
      v86 = v10 + 6;
      while (2)
      {
        if (v86)
        {
          v87 = *v86;
          if (v87 <= 0x3F)
          {
            if (*v86)
            {
              v86 += v87 + 1;
              if (v86 - v11 >= 256)
              {
                break;
              }

              continue;
            }

            v85 = (v86 - v11 + 1);
          }
        }

        break;
      }

      v23 = &v41[v85];
      if (!&v41[v85])
      {
        return 0;
      }

      v24 = v10 + 262;
      v117 = DomainNameBytesLength(v23, v7);
      if (v117 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_278;
      }

      memcpy(v10 + 262, v23, v117);
      v81 = 257;
      v82 = v10 + 262;
      do
      {
        if (!v82)
        {
          break;
        }

        v118 = *v82;
        if (v118 > 0x3F)
        {
          break;
        }

        if (!*v82)
        {
          goto LABEL_285;
        }

        v82 += v118 + 1;
      }

      while (v82 - v24 < 256);
LABEL_286:
      v15 = &v23[v81];
      return v15 == v7;
    case 0x1C:
      if (__n != 16)
      {
        return 0;
      }

      *v11 = *__src;
      return 1;
    case 0x21:
      if (__n < 7)
      {
        return 0;
      }

      *(v10 + 2) = bswap32(*__src) >> 16;
      *(v10 + 3) = bswap32(*(__src + 1)) >> 16;
      v10[8] = __src[4];
      v10[9] = __src[5];
      v23 = __src + 6;
      v24 = v10 + 10;
      if (a1)
      {
        v13 = __src + 6;
        v14 = v10 + 10;
LABEL_4:
        v15 = getDomainName(a1, v13, a3, v14);
        return v15 == v7;
      }

      v80 = DomainNameBytesLength(__src + 6, a3);
      if (v80 - 257 <= 0xFFFFFEFF)
      {
        goto LABEL_278;
      }

      memcpy(v10 + 10, v23, v80);
      v81 = 257;
      v82 = v10 + 10;
      while (v82)
      {
        v83 = *v82;
        if (v83 > 0x3F)
        {
          break;
        }

        if (!*v82)
        {
LABEL_285:
          v81 = (v82 - v24 + 1);
          goto LABEL_286;
        }

        v82 += v83 + 1;
        if (v82 - v24 >= 256)
        {
          goto LABEL_286;
        }
      }

      goto LABEL_286;
    case 0x23:
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      __dst = 0u;
      v122 = 0u;
      if (__n < 8)
      {
        return 0;
      }

      v49 = &__src[__src[4] + 5];
      if (v49 >= a3)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NAPTR flags");
        }

        return 0;
      }

      v50 = &v49[*v49 + 1];
      if (v50 >= a3)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NAPTR service");
        }

        return 0;
      }

      v51 = &v50[*v50];
      v52 = (v51 + 1);
      if ((v51 + 1) >= a3)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NAPTR regexp");
        }

        return 0;
      }

      if (!a1)
      {
        v114 = DomainNameBytesLength(v51 + 1, a3);
        if (v114 - 257 < 0xFFFFFF00)
        {
          return 0;
        }

        memcpy(&__dst, v52, v114);
        p_dst = &__dst;
        do
        {
          if (!p_dst)
          {
            break;
          }

          v116 = *p_dst;
          if (v116 > 0x3F)
          {
            break;
          }

          if (!*p_dst)
          {
            v56 = p_dst - &__dst + 1;
            goto LABEL_296;
          }

          p_dst = (p_dst + v116 + 1);
        }

        while (p_dst - &__dst < 256);
        LOWORD(v56) = 257;
LABEL_296:
        v53 = &v52[v56];
        goto LABEL_297;
      }

      v53 = getDomainName(a1, v51 + 1, a3, &__dst);
      v54 = &__dst;
      while (1)
      {
        if (!v54 || (v55 = *v54, v55 > 0x3F))
        {
LABEL_111:
          LOWORD(v56) = 257;
          goto LABEL_297;
        }

        if (!*v54)
        {
          break;
        }

        v54 = (v54 + v55 + 1);
        if (v54 - &__dst > 255)
        {
          goto LABEL_111;
        }
      }

      v56 = v54 - &__dst + 1;
LABEL_297:
      if (v53 == v7)
      {
        v120 = v52 - v8;
        *(a4 + 12) = v56 + v52 - v8;
        if ((v56 + v52 - v8) <= 0x2000u)
        {
          memcpy(v11, v8, v120);
          v47 = &v11[v120];
          v48 = &__dst;
          v46 = v56;
          goto LABEL_100;
        }

        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NAPTR rdlength %d, rr->rdlength %d, bmaplen %d, name %##s", __n, (v56 + v52 - v8), &__dst);
        }
      }

      else if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NAPTR RDATA name");
      }

      return 0;
    case 0x29:
      v25 = *v10;
      *(a4 + 12) = 0;
      if (__src >= a3 || v25 < 0x18)
      {
        goto LABEL_76;
      }

      v26 = &v11[v25];
      do
      {
        v27 = v8 + 4;
        if ((v8 + 4) > v7)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: OPT RDATA ptr + 4 > end");
          }

          return 0;
        }

        v28 = v8;
        v29 = __rev16(*v8);
        *v11 = v29;
        v30 = __rev16(*(v8 + 1));
        *(v11 + 1) = v30;
        v8 = &v27[v30];
        if (&v27[v30] > v7)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: ptr + opt->optlen > end");
          }

          return 0;
        }

        if (v29 <= 3)
        {
          if (v29 == 1)
          {
            if (v30 != 18)
            {
              continue;
            }

            *(v11 + 2) = bswap32(*(v28 + 2)) >> 16;
            *(v11 + 3) = bswap32(*(v28 + 3)) >> 16;
            *(v11 + 4) = bswap32(*(v28 + 4)) >> 16;
            *(v11 + 12) = *(v28 + 10);
            v38 = bswap32(*(v28 + 18));
            if (v38 >= 0x1CAC08)
            {
              v38 = 1879048;
            }

            *(v11 + 5) = v38;
            goto LABEL_69;
          }

          if (v29 == 2 && v30 == 4)
          {
            v32 = bswap32(*(v28 + 1));
            if (v32 >= 0x1CAC08)
            {
              v32 = 1879048;
            }

            *(v11 + 1) = v32;
            goto LABEL_69;
          }
        }

        else
        {
          if (v29 != 4)
          {
            if (v29 == 65001)
            {
              if (v30 == 5)
              {
                v11[4] = v28[4];
                *(v11 + 2) = bswap32(*(v28 + 5));
              }

              else
              {
                v11[4] = -1;
                *(v11 + 2) = -1;
              }
            }

            else
            {
              if (v29 != 65002 || v30 != 10)
              {
                continue;
              }

              *(v11 + 1) = bswap32(*(v28 + 1));
              *(v11 + 2) = bswap32(*(v28 + 2));
              *(v11 + 6) = bswap32(*(v28 + 6)) >> 16;
            }

            goto LABEL_69;
          }

          v33 = (v30 - 8) >> 1;
          if ((v33 | ((v30 - 8) << 15)) <= 6u && ((1 << v33) & 0x69) != 0)
          {
            v11[4] = v28[4];
            v11[5] = v28[5];
            v35 = *(v28 + 6);
            *(v11 + 5) = *(v28 + 5);
            *(v11 + 6) = v35;
            v36 = *(v28 + 5);
            *(v11 + 3) = *(v28 + 6);
            *(v11 + 8) = v36;
            *(v11 + 18) = 0;
            *(v11 + 11) = 0;
            if (v30 >= 0xE)
            {
              v37 = *(v28 + 3);
              *(v11 + 8) = *(v28 + 8);
              *(v11 + 3) = v37;
              if (v30 != 14)
              {
                memcpy(v11 + 18, v28 + 18, (v30 - 14));
              }
            }

LABEL_69:
            v11 += 24;
          }
        }
      }

      while (v8 < v7 && v26 - v11 > 23);
      v10 = *(a4 + 40);
LABEL_76:
      *(a4 + 12) = v11 - v10 - 4;
      if (v8 != v7)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed OptRdata");
        }

        return 0;
      }

      return 1;
    case 0x2F:
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      __dst = 0u;
      v122 = 0u;
      if (a1)
      {
        v40 = getDomainName(a1, __src, a3, &__dst);
        goto LABEL_226;
      }

      v69 = DomainNameBytesLength(__src, a3);
      if (v69 - 257 < 0xFFFFFF00)
      {
        return 0;
      }

      memcpy(&__dst, v8, v69);
      v70 = 257;
      v71 = &__dst;
      while (1)
      {
        if (!v71)
        {
          goto LABEL_225;
        }

        v72 = *v71;
        if (v72 > 0x3F)
        {
          goto LABEL_225;
        }

        if (!*v71)
        {
          break;
        }

        v71 = (v71 + v72 + 1);
        if (v71 - &__dst >= 256)
        {
          goto LABEL_225;
        }
      }

      v70 = (v71 - &__dst + 1);
LABEL_225:
      v40 = &v8[v70];
LABEL_226:
      if (v40)
      {
        v98 = 257;
        v99 = &__dst;
        while (1)
        {
          if (!v99)
          {
            goto LABEL_236;
          }

          v100 = *v99;
          if (v100 > 0x3F)
          {
            goto LABEL_236;
          }

          if (!*v99)
          {
            break;
          }

          v99 = (v99 + v100 + 1);
          if (v99 - &__dst >= 256)
          {
            goto LABEL_236;
          }
        }

        v98 = (v99 - &__dst + 1);
LABEL_236:
        v101 = v8 - v40 + __n;
        v102 = SanityCheckBitMap(v40, v7, v101);
        if (v102)
        {
          if (v102 == v7)
          {
            v103 = &__dst;
            while (1)
            {
              if (!v103 || (v104 = *v103, v104 > 0x3F))
              {
LABEL_245:
                LOWORD(v105) = 257;
                goto LABEL_259;
              }

              if (!*v103)
              {
                break;
              }

              v103 = (v103 + v104 + 1);
              if (v103 - &__dst >= 256)
              {
                goto LABEL_245;
              }
            }

            v105 = v103 - &__dst + 1;
LABEL_259:
            v111 = v105 + v101;
            *(a4 + 12) = v111;
            if (v111 <= 0x2000u)
            {
              v112 = &__dst;
              while (1)
              {
                if (!v112)
                {
                  goto LABEL_289;
                }

                v113 = *v112;
                if (v113 > 0x3F)
                {
                  goto LABEL_289;
                }

                if (!*v112)
                {
                  break;
                }

                v112 = (v112 + v113 + 1);
                if (v112 - &__dst > 255)
                {
                  goto LABEL_289;
                }
              }

              v119 = v112 - &__dst + 1;
              if (v119 > 0x100u)
              {
LABEL_289:
                *v11 = 0;
              }

              else
              {
                memcpy(v11, &__dst, v119);
              }

              v46 = v101;
              v47 = &v11[v98];
              v48 = v40;
LABEL_100:
              memcpy(v47, v48, v46);
              return 1;
            }

            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NSEC rdlength %d, rr->rdlength %d, bmaplen %d, name %##s", __n, v111, &__dst);
            }
          }

          else if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NSEC length not right");
          }
        }
      }

      else if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed NSEC nextname");
      }

      return 0;
    default:
      if ((v12 - 249) >= 2)
      {
        if (v12 == 65323)
        {
          *v11 = bswap32(*__src);
          return 1;
        }

LABEL_98:
        *(a4 + 12) = __n;
        v46 = __n;
        v47 = v10 + 4;
      }

      else
      {
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        __dst = 0u;
        v122 = 0u;
        if (a1)
        {
          v8 = getDomainName(a1, __src, a3, &__dst);
          if (!v8)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v64 = DomainNameBytesLength(__src, a3);
          if (v64 - 257 < 0xFFFFFF00)
          {
            return 0;
          }

          memcpy(&__dst, v8, v64);
          v65 = 257;
          v66 = &__dst;
          while (1)
          {
            if (!v66)
            {
              goto LABEL_192;
            }

            v67 = *v66;
            if (v67 > 0x3F)
            {
              goto LABEL_192;
            }

            if (!*v66)
            {
              break;
            }

            v66 = (v66 + v67 + 1);
            if (v66 - &__dst >= 256)
            {
              goto LABEL_192;
            }
          }

          v65 = (v66 - &__dst + 1);
LABEL_192:
          v8 += v65;
          if (!v8)
          {
LABEL_200:
            if (mDNS_LoggingEnabled == 1)
            {
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed name for TSIG/TKEY type %d");
            }

            return 0;
          }
        }

        if (v8 >= v7)
        {
          goto LABEL_200;
        }

        v91 = &__dst;
        while (1)
        {
          if (!v91 || (v92 = *v91, v92 > 0x3F))
          {
LABEL_199:
            LOWORD(v93) = 257;
            goto LABEL_203;
          }

          if (!*v91)
          {
            break;
          }

          v91 = (v91 + v92 + 1);
          if (v91 - &__dst >= 256)
          {
            goto LABEL_199;
          }
        }

        v93 = v91 - &__dst + 1;
LABEL_203:
        v94 = v7 - v8;
        *(a4 + 12) = v93 + v94;
        if ((v93 + v94) > 0x2000u)
        {
          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetRData: Malformed TSIG/TKEY rdlength %d, rr->rdlength %d, bmaplen %d, name %##s", __n, (v93 + v94), &__dst);
          }

          return 0;
        }

        v95 = &__dst;
        while (1)
        {
          if (!v95)
          {
            goto LABEL_214;
          }

          v96 = *v95;
          if (v96 > 0x3F)
          {
            goto LABEL_214;
          }

          if (!*v95)
          {
            break;
          }

          v95 = (v95 + v96 + 1);
          if (v95 - &__dst > 255)
          {
            goto LABEL_214;
          }
        }

        v97 = v95 - &__dst + 1;
        if (v97 > 0x100u)
        {
LABEL_214:
          *v11 = 0;
        }

        else
        {
          memcpy(v10 + 4, &__dst, v97);
        }

        v47 = &v11[v93];
        v46 = v94;
      }

      v48 = v8;
      goto LABEL_100;
  }
}

unint64_t SanityCheckBitMap(unint64_t result, unint64_t a2, int a3)
{
  if (result < a2)
  {
    while (1)
    {
      v3 = a3 - 2;
      if (a3 <= 2)
      {
        break;
      }

      v4 = *(result + 1);
      a3 = v3 - v4;
      if (v3 < v4 || (v4 - 33) <= 0xFFFFFFDF)
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SanityCheckBitMap: invalid window length %d");
        }

        return 0;
      }

      result += v4 + 2;
      if (result >= a2)
      {
        return result;
      }
    }

    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SanityCheckBitMap: invalid length %d");
    }

    return 0;
  }

  return result;
}

char **mDNS_snprintf_add(char **result, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *result;
  v10 = a2 - *result;
  if (v10)
  {
    v11 = result;
    result = mDNS_vsnprintf(v9, v10, a3, &a9);
    *v11 = &v9[result];
  }

  return result;
}

void DumpPacket(int a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned int a5, unsigned int *a6, unsigned int a7, unsigned __int8 *a8, unint64_t a9, uint64_t a10)
{
  v14 = a2;
  v130 = xmmword_10010D568;
  v131 = 0;
  memset(v134, 0, sizeof(v134));
  if (a1)
  {
    mDNS_snprintf(v134, 32, "ERROR %d %sing");
  }

  else if (a2)
  {
    mDNS_snprintf(v134, 32, "Sent");
  }

  else
  {
    mDNS_snprintf(v134, 32, "Received");
  }

  v16 = &xmmword_100170388;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v17 = v16;
    if (*(v16 + 444) == a10)
    {
      goto LABEL_11;
    }
  }

  v17 = 0;
LABEL_11:
  v18 = v17 + 3606;
  if (v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = *a8;
  if (*a8)
  {
    v21 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v22 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_45:
        v31 = a8 + 12;
        v32 = 0uLL;
        memset(v193, 0, sizeof(v193));
        v192 = 0u;
        v191 = 0u;
        v190 = 0u;
        v189 = 0u;
        v188 = 0u;
        v187 = 0u;
        v186 = 0u;
        v185 = 0u;
        v184 = 0u;
        v183 = 0u;
        v182 = 0u;
        v181 = 0u;
        v180 = 0u;
        memset(buf, 0, sizeof(buf));
        memset(v178, 0, sizeof(v178));
        v133 = v178;
        if (*(a8 + 2))
        {
          v33 = 0;
          do
          {
            DomainName = getDomainName(a8, v31, a9, buf);
            if (!DomainName)
            {
              return;
            }

            v40 = DomainName;
            if ((a9 - DomainName) < 4)
            {
              return;
            }

            v41 = bswap32(*DomainName) >> 16;
            v42 = *(DomainName + 1);
            if (v41 != 1)
            {
              DNSTypeName(v41);
            }

            v43 = __rev16(v42);
            mDNS_snprintf_add(&v133, buf, " %##s %s", v35, v36, v37, v38, v39, buf);
            if (v43 != 1)
            {
              mDNS_snprintf_add(&v133, buf, "/%u", v44, v45, v46, v47, v48, v43);
            }

            v31 = v40 + 4;
            mDNS_snprintf_add(&v133, buf, "?", v44, v45, v46, v47, v48, v124);
            ++v33;
          }

          while (v33 < *(a8 + 2));
          v49 = buf;
          v32 = 0uLL;
        }

        else
        {
          v49 = 0;
        }

        v177[30] = v32;
        v177[31] = v32;
        v177[28] = v32;
        v177[29] = v32;
        v177[26] = v32;
        v177[27] = v32;
        v177[24] = v32;
        v177[25] = v32;
        v177[22] = v32;
        v177[23] = v32;
        v177[20] = v32;
        v177[21] = v32;
        v177[18] = v32;
        v177[19] = v32;
        v177[16] = v32;
        v177[17] = v32;
        v177[14] = v32;
        v177[15] = v32;
        v177[12] = v32;
        v177[13] = v32;
        v177[10] = v32;
        v177[11] = v32;
        v177[8] = v32;
        v177[9] = v32;
        v177[6] = v32;
        v177[7] = v32;
        v177[4] = v32;
        v177[5] = v32;
        v177[2] = v32;
        v177[3] = v32;
        v177[0] = v32;
        v177[1] = v32;
        v132 = v177;
        v50 = *(a8 + 3);
        v51 = *(a8 + 4);
        v52 = *(a8 + 5);
        if (v51 + v50 + v52)
        {
          v53 = 0;
          v127 = v51 + v52 + v50;
          do
          {
            v54 = &buf[256 * (v49 == buf)];
            v55 = getDomainName(a8, v31, a9, v54);
            if (v55)
            {
              v61 = (a9 - v55) < 10;
            }

            else
            {
              v61 = 1;
            }

            if (v61)
            {
              return;
            }

            v62 = __rev16(*(v55 + 4));
            v63 = v55 + 10;
            if ((a9 - (v55 + 10)) < v62)
            {
              return;
            }

            v64 = *v55;
            v65 = *(v55 + 1);
            v129 = *(v55 + 1);
            if (v53)
            {
              mDNS_snprintf_add(&v132, v178, ",", v56, v57, v58, v59, v60, v123);
            }

            if (!v49 || !SameDomainNameBytes(v54, v49))
            {
              mDNS_snprintf_add(&v132, v178, " %##s", v56, v57, v58, v59, v60, v54);
            }

            v66 = __rev16(v64);
            v67 = "A";
            if (v66 != 1)
            {
              LODWORD(v67) = DNSTypeName(v66);
            }

            v68 = __rev16(v65);
            mDNS_snprintf_add(&v132, v178, " %s", v56, v57, v58, v59, v60, v67);
            if (v68 != 1)
            {
              mDNS_snprintf_add(&v132, v178, "/%u", v69, v70, v71, v72, v73, v68);
            }

            mDNS_snprintf_add(&v132, v178, " ", v69, v70, v71, v72, v73, v125);
            if (v66 > 5)
            {
              if (v66 == 6)
              {
                v89 = getDomainName(a8, v63, a9, buf);
                if (!v89)
                {
                  return;
                }

                v90 = getDomainName(a8, v89, a9, v193);
                if (!v90 || (a9 - v90) < 20)
                {
                  return;
                }

                mDNS_snprintf_add(&v132, v178, "%##s %##s %lu %lu %lu %lu %lu", v91, v92, v93, v94, v95, buf);
                v54 = 0;
              }

              else
              {
                if (v66 != 28 || v62 != 16)
                {
                  goto LABEL_83;
                }

                mDNS_snprintf_add(&v132, v178, "%.16a", v74, v75, v76, v77, v78, v63);
              }
            }

            else
            {
              if (v66 != 1)
              {
                if (v66 == 5)
                {
                  if (!getDomainName(a8, v63, a9, v54))
                  {
                    return;
                  }

                  mDNS_snprintf_add(&v132, v178, "%##s", v79, v80, v81, v82, v83, v54);
                  goto LABEL_84;
                }

LABEL_83:
                mDNS_snprintf_add(&v132, v178, "RDATA[%u]: %.*H", v74, v75, v76, v77, v78, v62);
                goto LABEL_84;
              }

              if (v62 != 4)
              {
                goto LABEL_83;
              }

              mDNS_snprintf_add(&v132, v178, "%.4a", v74, v75, v76, v77, v78, v63);
            }

LABEL_84:
            mDNS_snprintf_add(&v132, v178, " (%lu)", v84, v85, v86, v87, v88, bswap32(v129));
            v31 = &v63[v62];
            ++v53;
            v49 = v54;
          }

          while (v127 != v53);
        }

        v96 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v100 = bswap32(*a8);
          v101 = a8[2];
          if ((v101 & 0x78u) >= 0x30)
          {
            v102 = "DSO ";
            if ((v101 & 0x78) != 0x30)
            {
              v102 = "?? ";
            }
          }

          else
          {
            v102 = *(&off_10014FDF8 + (v101 & 0x78));
          }

          v107 = HIWORD(v100);
          if ((v101 & 0x80u) != 0)
          {
            v108 = "Response";
          }

          else
          {
            v108 = "Query";
          }

          v109 = a8[3];
          v110 = v109 & 0xF;
          if ((v109 & 0xFu) >= 0xB)
          {
            v111 = "??";
            if ((v109 & 0xF) == 0xB)
            {
              v111 = "DSOTypeNI";
            }
          }

          else
          {
            v111 = off_10014FE28[v110];
          }

          v112 = *(a8 + 3);
          v113 = " AA";
          v114 = *(a8 + 4);
          v115 = *(a8 + 5);
          if ((v101 & 4) == 0)
          {
            v113 = "";
          }

          *v135 = 67114243;
          v136 = v107;
          if ((v101 & 2) != 0)
          {
            v116 = " TC";
          }

          else
          {
            v116 = "";
          }

          v137 = 2082;
          v138 = v102;
          if (v101)
          {
            v117 = " RD";
          }

          else
          {
            v117 = "";
          }

          v139 = 2082;
          v140 = v108;
          v141 = 2048;
          if ((v109 & 0x80u) != 0)
          {
            v118 = " RA";
          }

          else
          {
            v118 = "";
          }

          v142 = a9 - a8;
          v119 = " AD";
          v143 = 1024;
          if ((v109 & 0x20) == 0)
          {
            v119 = "";
          }

          v144 = v101;
          v120 = " CD";
          v145 = 1024;
          if ((v109 & 0x10) == 0)
          {
            v120 = "";
          }
        }

        else
        {
          v96 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v97 = bswap32(*a8);
          v98 = a8[2];
          if ((v98 & 0x78u) >= 0x30)
          {
            v99 = "DSO ";
            if ((v98 & 0x78) != 0x30)
            {
              v99 = "?? ";
            }
          }

          else
          {
            v99 = *(&off_10014FDF8 + (v98 & 0x78));
          }

          v121 = HIWORD(v97);
          if ((v98 & 0x80u) != 0)
          {
            v122 = "Response";
          }

          else
          {
            v122 = "Query";
          }

          v109 = a8[3];
          v110 = v109 & 0xF;
          if ((v109 & 0xFu) >= 0xB)
          {
            v111 = "??";
            if ((v109 & 0xF) == 0xB)
            {
              v111 = "DSOTypeNI";
            }
          }

          else
          {
            v111 = off_10014FE28[v110];
          }

          v112 = *(a8 + 3);
          v113 = " AA";
          v114 = *(a8 + 4);
          v115 = *(a8 + 5);
          if ((v98 & 4) == 0)
          {
            v113 = "";
          }

          *v135 = 67114243;
          v136 = v121;
          if ((v98 & 2) != 0)
          {
            v116 = " TC";
          }

          else
          {
            v116 = "";
          }

          v137 = 2082;
          v138 = v99;
          if (v98)
          {
            v117 = " RD";
          }

          else
          {
            v117 = "";
          }

          v139 = 2082;
          v140 = v122;
          v141 = 2048;
          if ((v109 & 0x80u) != 0)
          {
            v118 = " RA";
          }

          else
          {
            v118 = "";
          }

          v142 = a9 - a8;
          v119 = " AD";
          v143 = 1024;
          if ((v109 & 0x20) == 0)
          {
            v119 = "";
          }

          v144 = v98;
          v120 = " CD";
          v145 = 1024;
          if ((v109 & 0x10) == 0)
          {
            v120 = "";
          }
        }

        v146 = v109;
        v147 = 2082;
        v148 = v111;
        v149 = 1024;
        v150 = v110;
        v151 = 2082;
        v152 = v113;
        v153 = 2082;
        v154 = v116;
        v155 = 2082;
        v156 = v117;
        v157 = 2082;
        v158 = v118;
        v159 = 2082;
        v160 = v119;
        v161 = 2082;
        v162 = v120;
        v163 = 2160;
        v164 = 1752392040;
        v165 = 2085;
        v166 = v178;
        v167 = 1024;
        v168 = v112;
        v169 = 1024;
        v170 = v114;
        v171 = 1024;
        v172 = v115;
        v173 = 2160;
        v174 = 1752392040;
        v175 = 2085;
        v176 = v177;
        v29 = "[Q%u] DNS %{public}s%{public}s (%lu) (flags %02X%02X) RCODE: %{public}s (%d)%{public}s%{public}s%{public}s%{public}s%{public}s%{public}s:%{sensitive, mask.hash}s %u/%u/%u %{sensitive, mask.hash}s";
        v103 = v135;
        v104 = v96;
        v105 = OS_LOG_TYPE_DEFAULT;
        v106 = 184;
        goto LABEL_156;
      }

      *buf = 67112451;
      v23 = &v130;
      *&buf[4] = __rev16(v20);
      if (a4)
      {
        v24 = a4;
      }

      else
      {
        v24 = &v130;
      }

      *&buf[8] = 2082;
      *&buf[10] = v134;
      v25 = bswap32(a5) >> 16;
      *&buf[18] = 2082;
      if (a6)
      {
        v23 = a6;
      }
    }

    else
    {
      v21 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      *buf = 67112451;
      v23 = &v130;
      *&buf[4] = __rev16(v20);
      if (a4)
      {
        v24 = a4;
      }

      else
      {
        v24 = &v130;
      }

      *&buf[8] = 2082;
      *&buf[10] = v134;
      v25 = bswap32(a5) >> 16;
      *&buf[18] = 2082;
      if (a6)
      {
        v23 = a6;
      }
    }

    *&buf[20] = a3;
    *&buf[28] = 2048;
    *&buf[30] = a9 - a8;
    *&buf[38] = 2160;
    *&buf[40] = 1752392040;
    LOWORD(v180) = 1045;
    *(&v180 + 2) = 20;
    WORD3(v180) = 2101;
    *(&v180 + 1) = v24;
    LOWORD(v181) = 1024;
    *(&v181 + 2) = v25;
    WORD3(v181) = 2160;
    *(&v181 + 1) = 1752392040;
    LOWORD(v182) = 1045;
    *(&v182 + 2) = 20;
    WORD3(v182) = 2101;
    *(&v182 + 1) = v23;
    LOWORD(v183) = 1024;
    *(&v183 + 2) = bswap32(a7) >> 16;
    WORD3(v183) = 2082;
    *(&v183 + 1) = v19;
    LOWORD(v184) = 2048;
    *(&v184 + 2) = a10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Q%u] %{public}s %{public}s DNS Message %lu bytes from %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d to %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P:%d via %{public}s (%p)", buf, 0x7Au);
    goto LABEL_45;
  }

  DumpMDNSPacket(v14, a8, a9, a4, a5, a6, a7, a10, v19);
  if (!a1)
  {
    return;
  }

  v26 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v27 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (v14)
  {
    if (v28)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 67109120;
      *&buf[4] = a1;
      v29 = "Sending mDNS message failed - mStatus: %d";
    }

    else
    {
      v26 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 67109120;
      *&buf[4] = a1;
      v29 = "Sending mDNS message failed - mStatus: %d";
    }
  }

  else if (v28)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = a1;
    v29 = "Receiving mDNS message failed - mStatus: %d";
  }

  else
  {
    v26 = mDNSLogCategory_mDNS_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = a1;
    v29 = "Receiving mDNS message failed - mStatus: %d";
  }

  v103 = buf;
  v104 = v26;
  v105 = OS_LOG_TYPE_ERROR;
  v106 = 8;
LABEL_156:
  _os_log_impl(&_mh_execute_header, v104, v105, v29, v103, v106);
}