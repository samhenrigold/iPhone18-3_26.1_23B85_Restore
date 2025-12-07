void *_handle_resolve_request_with_trust(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v10 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_resolve_request_start(a1, a2);
      }
    }

    else
    {
      v10 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_resolve_request_start(a1, a2);
      }
    }

    v19 = *(a1 + 200);
    v20 = *(a1 + 188);
    *buf = 67109634;
    *&buf[4] = v19;
    *&buf[8] = 2080;
    *&buf[10] = a1 + 256;
    *&buf[18] = 1024;
    *&buf[20] = v20;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_resolve_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_resolve_request_start(a1, a2);
  }

  v5 = 4294901757;
  v6 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v6;
  v7 = mdns_trust_checks_check(buf, 0, 0, a2, 0, 1);
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = v7[9];
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v5 = 4294901741;
      goto LABEL_30;
    }

    if (v9 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v5 = _handle_resolve_request_start(a1, a2);
LABEL_30:
      os_release(v8);
      return v5;
    }

LABEL_28:
    v5 = 4294901759;
    goto LABEL_30;
  }

  if (!*(a1 + 48))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 48) = Mutable;
    if (!Mutable)
    {
      goto LABEL_30;
    }
  }

  v13 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v13;
  v14 = mdns_trust_create(buf, a2, v8);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  result = malloc_type_malloc(0x500uLL, 0x7C31B88FuLL);
  if (result)
  {
    v17 = result;
    memcpy(result, a2, 0x500uLL);
    *(v15 + 56) = v17;
    mdns_interface_monitor_set_update_handler(v15, &__block_literal_global_2990);
    if (_get_trust_results_dispatch_queue_once != -1)
    {
      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
    }

    mdns_trust_set_queue(v15, _get_trust_results_dispatch_queue_queue);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 0x40000000;
    v21[2] = ___handle_resolve_request_with_trust_block_invoke_2;
    v21[3] = &__block_descriptor_tmp_236_2991;
    v21[4] = v15;
    v21[5] = a1;
    mdns_trust_set_event_handler(v15, v21);
    CFArrayAppendValue(*(a1 + 48), v15);
    os_release(v15);
    if ((*(v15 + 26) & 1) == 0)
    {
      *(v15 + 26) = 1;
      _mdns_trust_activate_if_ready(v15);
    }

    v5 = 0;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t _handle_resolve_request_start(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  started = mDNS_StartQuery(mDNSStorage, v4 + 696);
  if (!started)
  {
    v6 = mDNS_StartQuery(mDNSStorage, v4);
    if (v6)
    {
      started = v6;
      mDNS_StopQuery(mDNSStorage, v4 + 696);
      return started;
    }

    *(a1 + 112) = resolve_termination_callback;
    if (*(a1 + 252) != -1 && IsLocalDomain((a2 + 1009)))
    {
      v7 = *(a1 + 252);
      if (v7)
      {
        v8 = AWDLInterfaceID == v7 || WiFiAwareInterfaceID == v7;
      }

      else
      {
        v8 = (*(a1 + 250) >> 4) & 1;
      }

      monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
      bzero(v29, 0x3F1uLL);
      service_type_from_domain_name = _mdns_get_service_type_from_domain_name((a2 + 1009), v29);
      _mdns_powerlog_bonjour_event(0xDu, v8, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
      *(a1 + 8) = monotonic_time_ns;
    }

    if (mDNS_McastLoggingEnabled)
    {
      LogMcastQuestion(v4 + 696, a1, 1);
    }

    v11 = (a2 + 1009);
    if (!callExternalHelpers(*(a2 + 1272), (a2 + 1009), *(a1 + 248)))
    {
      return 0;
    }

    *(v4 + 1420) = 1;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "handle_resolve_request: calling external_start_resolving_service()");
    }

    v12 = *(a2 + 1272);
    v13 = *(a1 + 248);
    v14 = *(a1 + 188);
    memset(&v29[2], 0, 224);
    if (*(a2 + 1009))
    {
      v15 = (a2 + *(a2 + 1009) + 1010);
    }

    else
    {
      v15 = (a2 + 1009);
    }

    memset(v29, 0, 32);
    DomainnameToLower(v15, v29);
    v16 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v20 = v11;
      while (1)
      {
        if (!v20 || (v21 = *v20, v21 > 0x3F))
        {
LABEL_35:
          v19 = 257;
          goto LABEL_38;
        }

        if (!*v20)
        {
          break;
        }

        v20 += v21 + 1;
        if (v20 - v11 >= 256)
        {
          goto LABEL_35;
        }
      }

      v19 = (v20 - v11 + 1);
    }

    else
    {
      v16 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v17 = v11;
      while (1)
      {
        if (!v17 || (v18 = *v17, v18 > 0x3F))
        {
LABEL_28:
          v19 = 257;
          goto LABEL_38;
        }

        if (!*v17)
        {
          break;
        }

        v17 += v18 + 1;
        if (v17 - v11 >= 256)
        {
          goto LABEL_28;
        }
      }

      v19 = (v17 - v11 + 1);
    }

LABEL_38:
    *buf = 141558531;
    v31 = 1752392040;
    v32 = 1040;
    v33 = v19;
    v34 = 2101;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "external_start_resolving_service - fqdn: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
LABEL_39:
    v22 = putDomainNameAsLabels(&compression_base_msg, byte_10015DD07, &compression_base_msg + &loc_1000022F8, v29);
    if (v22)
    {
      *v22 = 3072;
      v22[2] = 1;
      v23 = v22 + 3;
    }

    else
    {
      v23 = 0;
    }

    *buf = 0;
    v24 = putDomainNameAsLabels(&compression_base_msg, v23, &compression_base_msg + &loc_1000022F8, v11);
    PrintHelper("external_start_resolving_service", byte_10015DD07, (v23 - byte_10015DD07), v23, (v24 - v23));
    v25 = xD2DMapToTransportType(v12, v13, buf);
    if (v25 == 4)
    {
      v26 = 0;
      v27 = *buf;
      do
      {
        if (&_D2DStartResolvingPairOnTransport && v27 != v26)
        {
          if (v26 >= 2)
          {
            _mdns_powerlog_awdl_event(@"startAWDLResolve", v29, 12, v14);
          }

          D2DStartResolvingPairOnTransport();
        }

        ++v26;
      }

      while (v26 != 4);
    }

    else if (&_D2DStartResolvingPairOnTransport)
    {
      if ((v25 & 6) == 2)
      {
        _mdns_powerlog_awdl_event(@"startAWDLResolve", v29, 12, v14);
      }

      D2DStartResolvingPairOnTransport();
    }

    return 0;
  }

  return started;
}

unsigned __int8 *get_tracker_info_tlvs(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    if ((*(a1 + 224) & 2) != 0)
    {
      result = get_tlv_uint32(result, *(a1 + 88), 8, 0);
      *(a1 + 289) = result != 0;
    }
  }

  return result;
}

uint64_t _handle_queryrecord_request_start(uint64_t a1, int *a2)
{
  *(a1 + 112) = queryrecord_termination_callback;
  v3 = *(a1 + 144);
  RecordClientRequestStart = QueryRecordClientRequestStart(v3, a2, queryrecord_result_reply, a1);
  if (!RecordClientRequestStart && *(a1 + 252) != -1 && IsLocalDomain((v3 + 376)))
  {
    v6 = *(a1 + 252);
    if (v6)
    {
      v7 = AWDLInterfaceID == v6 || WiFiAwareInterfaceID == v6;
    }

    else
    {
      v7 = (*(a1 + 250) >> 4) & 1;
    }

    monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
    bzero(v10, 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name((v3 + 376), v10);
    _mdns_powerlog_bonjour_event(7u, v7, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
    *(a1 + 8) = monotonic_time_ns;
  }

  return RecordClientRequestStart;
}

void ___handle_queryrecord_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return;
  }

  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  v6 = *(a1 + 32);
  if (!*(v6 + 64) || (*(v6 + 27) & 1) == 0)
  {
    v7 = *(v6 + 56);
    if (v7)
    {
      if (a3 == 1)
      {
        v8 = _handle_queryrecord_request_start(*(a1 + 40), v7);
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = -65570;
      }

      _return_queryrecord_request_error(*(a1 + 40), v8);
    }
  }

LABEL_10:

  KQueueUnlock("_handle_queryrecord_request_with_trust");
}

unsigned __int16 *_get_signed_data_tlvs(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    if ((*(a1 + 224) & 2) != 0)
    {
      v5 = *(a1 + 88);
      if (get_tlv_uint32(*(a1 + 80), v5, 6, 0) == 1)
      {
        *(a1 + 290) = 1;
        while (v5 - v2 >= 4)
        {
          v6 = 0;
          v7 = v2 + 2;
          if (v2 == -4)
          {
            result = 0;
            if (!a2)
            {
              return result;
            }

LABEL_15:
            *a2 = v6;
            return result;
          }

          v8 = __rev16(v2[1]);
          result = 0;
          if (v5 - v7 < v8)
          {
            goto LABEL_14;
          }

          v10 = __rev16(*v2);
          v2 = (v7 + v8);
          if (v10 == 7)
          {
            v6 = v8;
            result = v7;
            if (!a2)
            {
              return result;
            }

            goto LABEL_15;
          }
        }

        v6 = 0;
        result = 0;
LABEL_14:
        if (!a2)
        {
          return result;
        }

        goto LABEL_15;
      }
    }
  }

  return 0;
}

uint64_t _handle_browse_request_with_trust(uint64_t a1, const char *a2)
{
  if (!*(a1 + 32))
  {
    v14 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v15 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_browse_request_start(a1, a2);
      }
    }

    else
    {
      v14 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_browse_request_start(a1, a2);
      }
    }

    v17 = *(a1 + 200);
    v18 = *(a1 + 188);
    *buf = 67109634;
    v37 = v17;
    v38 = 2080;
    v39 = a1 + 256;
    v40 = 1024;
    v41 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_browse_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_browse_request_start(a1, a2);
  }

  v4 = 4294901757;
  bzero(buf, 0x3F1uLL);
  v5 = (*(a1 + 152) + 10);
  memset(v34, 0, sizeof(v34));
  if (DeconstructServiceName(v5, v35, v34, v33))
  {
    v6 = v34;
  }

  else
  {
    v6 = v5;
  }

  ConvertDomainNameToCString_withescape(v6, buf);
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *v31 = *(v7 + 24);
  v32 = v8;
  v9 = mdns_trust_checks_check(v31, 0, 0, buf, 0, 1);
  if (v9)
  {
    v10 = v9;
    v11 = v9[8];
    if ((v11 & 2) == 0)
    {
      *(a1 + 290) = 0;
    }

    if ((v11 & 4) == 0)
    {
LABEL_27:
      v20 = v10[9];
      if (v20 > 1)
      {
        if (v20 == 3)
        {
          v4 = 4294901741;
          goto LABEL_44;
        }

        if (v20 != 2)
        {
          goto LABEL_42;
        }
      }

      else if (v20)
      {
        if (v20 == 1)
        {
          v4 = _handle_browse_request_start(a1, a2);
LABEL_44:
          os_release(v10);
          return v4;
        }

LABEL_42:
        v4 = 4294901759;
        goto LABEL_44;
      }

      if (!*(a1 + 48))
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
        *(a1 + 48) = Mutable;
        if (!Mutable)
        {
          goto LABEL_44;
        }
      }

      v22 = *(v7 + 40);
      *v31 = *(v7 + 24);
      v32 = v22;
      v23 = mdns_trust_create(v31, buf, v10);
      if (!v23)
      {
        goto LABEL_44;
      }

      v24 = v23;
      v25 = strlen(a2);
      v26 = v25 + 1;
      if (v25 == -1 || (v27 = malloc_type_malloc(v25 + 1, 0x1409A336uLL)) == 0)
      {
        __break(1u);
      }

      else
      {
        v28 = v27;
        memcpy(v27, a2, v26);
        *(v24 + 56) = v28;
        mdns_interface_monitor_set_update_handler(v24, &__block_literal_global_262);
        if (_get_trust_results_dispatch_queue_once == -1)
        {
LABEL_39:
          mdns_trust_set_queue(v24, _get_trust_results_dispatch_queue_queue);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 0x40000000;
          v30[2] = ___handle_browse_request_with_trust_block_invoke_2;
          v30[3] = &__block_descriptor_tmp_264;
          v30[4] = v24;
          v30[5] = a1;
          mdns_trust_set_event_handler(v24, v30);
          CFArrayAppendValue(*(a1 + 48), v24);
          os_release(v24);
          if ((*(v24 + 26) & 1) == 0)
          {
            *(v24 + 26) = 1;
            _mdns_trust_activate_if_ready(v24);
          }

          v4 = 0;
          goto LABEL_44;
        }
      }

      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
      goto LABEL_39;
    }

    v12 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 200);
        *v31 = 67109120;
        *&v31[4] = v19;
        goto LABEL_25;
      }
    }

    else
    {
      v12 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 200);
        *v31 = 67109120;
        *&v31[4] = v13;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[R%u] _handle_browse_request_with_trust: has media discovery entitlement", v31, 8u);
      }
    }

    *(a1 + 290) = 1;
    goto LABEL_27;
  }

  return v4;
}

uint64_t _handle_browse_request_start(uint64_t a1, const char *a2)
{
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  *(a1 + 112) = browse_termination_callback;
  if (*a2)
  {
    v10 = 0;
    if (AppendDNSNameString(&v10, a2))
    {
      return add_domain_to_browser(a1, &v10);
    }

    else
    {
      return 4294901756;
    }
  }

  else
  {
    v4 = AutoBrowseDomains;
    if (AutoBrowseDomains)
    {
      while (1)
      {
        v5 = *(v4 + 8);
        if (!v5 || ((v6 = *(a1 + 196), v6 >= 0x1F5) ? (v7 = v6 == v5) : (v7 = 1), v7))
        {
          v8 = add_domain_to_browser(a1, (v4 + 12));
          if (v8)
          {
            v3 = v8;
            if (SameDomainNameBytes((v4 + 12), "\x05local"))
            {
              break;
            }
          }
        }

        v4 = *v4;
        if (!v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

_OWORD *_handle_regservice_request_with_trust(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v11 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_regservice_request_start(a1, a2);
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_regservice_request_start(a1, a2);
      }
    }

    v31 = *(a1 + 200);
    v32 = *(a1 + 188);
    *buf = 67109634;
    *&buf[4] = v31;
    *&buf[8] = 2080;
    *&buf[10] = a1 + 256;
    *&buf[18] = 1024;
    *&buf[20] = v32;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_regservice_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_regservice_request_start(a1, a2);
  }

  v5 = 4294901757;
  v6 = *(a1 + 128);
  v7 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v7;
  v8 = mdns_trust_checks_check(buf, 1u, 0, (v6 + 90), 0, 0);
  if (!v8)
  {
    return v5;
  }

  v9 = v8;
  v10 = v8[9];
  if (v10 > 1)
  {
    if (v10 == 3)
    {
      v5 = 4294901741;
      goto LABEL_30;
    }

    if (v10 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      v5 = _handle_regservice_request_start(a1, a2);
LABEL_30:
      os_release(v9);
      return v5;
    }

LABEL_28:
    v5 = 4294901759;
    goto LABEL_30;
  }

  if (!*(a1 + 48))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 48) = Mutable;
    if (!Mutable)
    {
      goto LABEL_30;
    }
  }

  v14 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v14;
  v15 = mdns_trust_create(buf, (v6 + 90), v9);
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = v15;
  result = malloc_type_malloc(0x100uLL, 0x609DA0FCuLL);
  if (result)
  {
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    result[2] = a2[2];
    result[3] = v20;
    *result = v18;
    result[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    result[6] = a2[6];
    result[7] = v23;
    result[4] = v21;
    result[5] = v22;
    v24 = a2[8];
    v25 = a2[9];
    v26 = a2[11];
    result[10] = a2[10];
    result[11] = v26;
    result[8] = v24;
    result[9] = v25;
    v27 = a2[12];
    v28 = a2[13];
    v29 = a2[15];
    result[14] = a2[14];
    result[15] = v29;
    result[12] = v27;
    result[13] = v28;
    *(v16 + 56) = result;
    mdns_interface_monitor_set_update_handler(v16, &__block_literal_global_281);
    if (_get_trust_results_dispatch_queue_once != -1)
    {
      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
    }

    mdns_trust_set_queue(v16, _get_trust_results_dispatch_queue_queue);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 0x40000000;
    v33[2] = ___handle_regservice_request_with_trust_block_invoke_2;
    v33[3] = &__block_descriptor_tmp_283;
    v33[4] = v16;
    v33[5] = a1;
    mdns_trust_set_event_handler(v16, v33);
    CFArrayAppendValue(*(a1 + 48), v16);
    os_release(v16);
    if ((*(v16 + 26) & 1) == 0)
    {
      *(v16 + 26) = 1;
      _mdns_trust_activate_if_ready(v16);
    }

    v5 = 0;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t _handle_regservice_request_start(uint64_t a1, _BYTE *a2)
{
  *(a1 + 112) = regservice_termination_callback;
  v3 = register_service_instance(a1, a2);
  if (!v3)
  {
    v5 = *(a1 + 128);
    if (*(v5 + 1612))
    {
      UpdateDeviceInfoRecord(mDNSStorage);
    }

    if (*(v5 + 1355))
    {
      for (i = AutoRegistrationDomains; i; i = *i)
      {
        v7 = *(i + 8);
        if (v7)
        {
          v8 = *(a1 + 196);
          if (v8 >= 0x1F5 && v8 != v7)
          {
            continue;
          }
        }

        register_service_instance(a1, (i + 12));
      }
    }
  }

  return v3;
}

void *_handle_addrinfo_request_with_trust(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v10 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_addrinfo_request_start(a1, a2);
      }
    }

    else
    {
      v10 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return _handle_addrinfo_request_start(a1, a2);
      }
    }

    v19 = *(a1 + 200);
    v20 = *(a1 + 188);
    *buf = 67109634;
    *&buf[4] = v19;
    *&buf[8] = 2080;
    *&buf[10] = a1 + 256;
    *&buf[18] = 1024;
    *&buf[20] = v20;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[R%u] _handle_addrinfo_request_with_trust: no audit token for pid(%s %d)", buf, 0x18u);
    return _handle_addrinfo_request_start(a1, a2);
  }

  v5 = 4294901757;
  v6 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v6;
  v7 = mdns_trust_checks_check(buf, 2u, a2 + 4, 0, 0, 0);
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = v7[9];
  if (v9 > 1)
  {
    if (v9 == 3)
    {
      v5 = 4294901741;
      goto LABEL_30;
    }

    if (v9 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      v5 = _handle_addrinfo_request_start(a1, a2);
LABEL_30:
      os_release(v8);
      return v5;
    }

LABEL_28:
    v5 = 4294901759;
    goto LABEL_30;
  }

  if (!*(a1 + 48))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    *(a1 + 48) = Mutable;
    if (!Mutable)
    {
      goto LABEL_30;
    }
  }

  v13 = *(v4 + 40);
  *buf = *(v4 + 24);
  *&buf[16] = v13;
  v14 = mdns_trust_create(buf, 0, v8);
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  result = malloc_type_malloc(0x3F8uLL, 0xA0E6AF8DuLL);
  if (result)
  {
    v17 = result;
    memcpy(result, a2, 0x3F8uLL);
    *(v15 + 56) = v17;
    mdns_interface_monitor_set_update_handler(v15, &__block_literal_global_307);
    if (_get_trust_results_dispatch_queue_once != -1)
    {
      dispatch_once(&_get_trust_results_dispatch_queue_once, &__block_literal_global_240);
    }

    mdns_trust_set_queue(v15, _get_trust_results_dispatch_queue_queue);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 0x40000000;
    v21[2] = ___handle_addrinfo_request_with_trust_block_invoke_2;
    v21[3] = &__block_descriptor_tmp_309;
    v21[4] = v15;
    v21[5] = a1;
    mdns_trust_set_event_handler(v15, v21);
    CFArrayAppendValue(*(a1 + 48), v15);
    os_release(v15);
    if ((*(v15 + 26) & 1) == 0)
    {
      *(v15 + 26) = 1;
      _mdns_trust_activate_if_ready(v15);
    }

    v5 = 0;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void *_handle_addrinfo_request_start(int32x2_t *a1, int *a2)
{
  a1[14] = addrinfo_termination_callback;
  v16 = 0u;
  v17 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  LODWORD(v16) = a1[25].i32[0];
  v3 = *a2;
  *(&v16 + 1) = a2 + 1;
  *&v17 = vrev64_s32(a1[31]);
  DWORD2(v17) = v3;
  v4 = a1[36].u8[0];
  if (a1[36].i8[0])
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[23].i32[1];
  }

  HIDWORD(v17) = v5;
  if (v4)
  {
    v6 = a1 + 34;
  }

  else
  {
    v6 = 0;
  }

  *&v18 = v6;
  DWORD2(v18) = a1[24].i32[1];
  LOBYTE(v20) = *(a2 + 1013) != 0;
  *(&v19 + 1) = *a1;
  *(&v20 + 1) = a1[4];
  get_tracker_info_tlvs(a1);
  AddrInfoClientRequestStart = GetAddrInfoClientRequestStart(*&a1[21], &v16, queryrecord_result_reply, a1);
  if (!AddrInfoClientRequestStart && a1[31].i32[1] != -1)
  {
    v9 = a1[21];
    v10 = *(*&v9 + 16);
    if (v10)
    {
      v11 = (v10 + 376);
    }

    else
    {
      v12 = *(*&v9 + 24);
      v11 = v12 ? (v12 + 376) : "";
    }

    if (IsLocalDomain(v11))
    {
      v13 = a1[31].u32[1];
      if (v13)
      {
        v14 = AWDLInterfaceID == v13 || WiFiAwareInterfaceID == v13;
      }

      else
      {
        v14 = (a1[31].u8[2] >> 4) & 1;
      }

      monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
      _mdns_powerlog_bonjour_event(4u, v14, &a1[32], 0, monotonic_time_ns);
      a1[1] = monotonic_time_ns;
    }
  }

  return AddrInfoClientRequestStart;
}

size_t _handle_regrecord_request_start(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) == -2 && !IsLocalDomain(*(a2 + 40)) && *(a2 + 14) == 1)
  {
    v4 = *(a2 + 12);
    v5 = v4 > 0x1C;
    v6 = (1 << v4) & 0x10000022;
    if (!v5 && v6 != 0)
    {
      free(a2);
      return 4294901756;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0x40uLL, 0xD44DF73DuLL);
  if (!v9)
  {
    goto LABEL_223;
  }

  v10 = v9;
  *(v9 + 14) = *(a1 + 240);
  v9[3] = a2;
  v9[5] = *(a1 + 232);
  v9[2] = a1;
  *(v9 + 60) = 0;
  *(a2 + 104) = regrecord_callback;
  *(a2 + 112) = v9;
  *(a2 + 122) = (*(a1 + 248) & 0x400) != 0;
  v11 = *(a2 + 32);
  v9[4] = v11;
  if (v11 == -3)
  {
    *(a2 + 32) = 0;
  }

  if (!*(a2 + 16))
  {
    *(a2 + 16) = 4500;
  }

  shouldLogFullRequestInfo = _shouldLogFullRequestInfo((a1 + 204), (a1 + 208));
  v13 = *(a2 + 40);
  v14 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v15 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (shouldLogFullRequestInfo)
  {
    if (v13)
    {
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v17 = v13;
        v200 = *(a1 + 200);
        v206 = *(v10 + 14);
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_29:
            v19 = 257;
            goto LABEL_66;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (v17 - v13 >= 256)
          {
            goto LABEL_29;
          }
        }

        v19 = (v17 - v13 + 1);
LABEL_66:
        v57 = *(a2 + 12);
        v59 = *(a1 + 248);
        v58 = *(a1 + 252);
        v60 = *(a1 + 188);
        *&__n[3] = 67111683;
        v210 = v200;
        v211 = 1024;
        v212 = v206;
        v213 = 2160;
        *v214 = 1752392040;
        *&v214[8] = 1040;
        *&v214[10] = v19;
        v215 = 2101;
        *v216 = v13;
        *&v216[8] = 1024;
        *&v216[10] = v57;
        v217 = 1024;
        v218 = v59;
        v219 = 1024;
        v220 = v58;
        v221 = 1024;
        *v222 = v60;
        *&v222[4] = 2082;
        *&v222[6] = a1 + 256;
        v223 = 1024;
        LODWORD(v224[0]) = mDNS_DomainNameFNV1aHash(v13);
        v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
      }

      else
      {
        v14 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v33 = v13;
        v201 = *(a1 + 200);
        v207 = *(v10 + 14);
        while (1)
        {
          if (!v33 || (v34 = *v33, v34 > 0x3F))
          {
LABEL_48:
            v35 = 257;
            goto LABEL_68;
          }

          if (!*v33)
          {
            break;
          }

          v33 += v34 + 1;
          if (v33 - v13 >= 256)
          {
            goto LABEL_48;
          }
        }

        v35 = (v33 - v13 + 1);
LABEL_68:
        v61 = *(a2 + 12);
        v63 = *(a1 + 248);
        v62 = *(a1 + 252);
        v64 = *(a1 + 188);
        *&__n[3] = 67111683;
        v210 = v201;
        v211 = 1024;
        v212 = v207;
        v213 = 2160;
        *v214 = 1752392040;
        *&v214[8] = 1040;
        *&v214[10] = v35;
        v215 = 2101;
        *v216 = v13;
        *&v216[8] = 1024;
        *&v216[10] = v61;
        v217 = 1024;
        v218 = v63;
        v219 = 1024;
        v220 = v62;
        v221 = 1024;
        *v222 = v64;
        *&v222[4] = 2082;
        *&v222[6] = a1 + 256;
        v223 = 1024;
        LODWORD(v224[0]) = mDNS_DomainNameFNV1aHash(v13);
        v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), name hash: %x";
      }

      v32 = v14;
      v50 = 80;
    }

    else
    {
      if (v16)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v25 = *(a1 + 200);
        v26 = *(v10 + 14);
        v27 = *(a2 + 12);
        v28 = *(a1 + 248);
        v29 = *(a1 + 252);
        v30 = *(a1 + 188);
        *&__n[3] = 67111427;
        v210 = v25;
        v211 = 1024;
        v212 = v26;
        v213 = 2160;
        *v214 = 1752392040;
        *&v214[8] = 1040;
        *&v214[10] = 257;
        v215 = 2101;
        *v216 = 0;
        *&v216[8] = 1024;
        *&v216[10] = v27;
        v217 = 1024;
        v218 = v28;
        v219 = 1024;
        v220 = v29;
        v221 = 1024;
        *v222 = v30;
        *&v222[4] = 2082;
        *&v222[6] = a1 + 256;
        v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
        v32 = v14;
      }

      else
      {
        v43 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        v44 = *(a1 + 200);
        v45 = *(v10 + 14);
        v46 = *(a2 + 12);
        v47 = *(a1 + 248);
        v48 = *(a1 + 252);
        v49 = *(a1 + 188);
        *&__n[3] = 67111427;
        v210 = v44;
        v211 = 1024;
        v212 = v45;
        v213 = 2160;
        *v214 = 1752392040;
        *&v214[8] = 1040;
        *&v214[10] = 257;
        v215 = 2101;
        *v216 = 0;
        *&v216[8] = 1024;
        *&v216[10] = v46;
        v217 = 1024;
        v218 = v47;
        v219 = 1024;
        v220 = v48;
        v221 = 1024;
        *v222 = v49;
        *&v222[4] = 2082;
        *&v222[6] = a1 + 256;
        v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, client pid: %d (%{public}s), ";
        v32 = v43;
      }

      v50 = 74;
    }
  }

  else if (v13)
  {
    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v20 = *(a1 + 200);
      v21 = *(v10 + 14);
      v22 = v13;
      while (1)
      {
        if (!v22 || (v23 = *v22, v23 > 0x3F))
        {
LABEL_38:
          v24 = 257;
          goto LABEL_72;
        }

        if (!*v22)
        {
          break;
        }

        v22 += v23 + 1;
        if (v22 - v13 >= 256)
        {
          goto LABEL_38;
        }
      }

      v24 = (v22 - v13 + 1);
    }

    else
    {
      v14 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v20 = *(a1 + 200);
      v21 = *(v10 + 14);
      v41 = v13;
      while (1)
      {
        if (!v41 || (v42 = *v41, v42 > 0x3F))
        {
LABEL_58:
          v24 = 257;
          goto LABEL_72;
        }

        if (!*v41)
        {
          break;
        }

        v41 += v42 + 1;
        if (v41 - v13 >= 256)
        {
          goto LABEL_58;
        }
      }

      v24 = (v41 - v13 + 1);
    }

LABEL_72:
    v65 = *(a2 + 12);
    v67 = *(a1 + 248);
    v66 = *(a1 + 252);
    *&__n[3] = 67111171;
    v210 = v20;
    v211 = 1024;
    v212 = v21;
    v213 = 2160;
    *v214 = 1752392040;
    *&v214[8] = 1040;
    *&v214[10] = v24;
    v215 = 2101;
    *v216 = v13;
    *&v216[8] = 1024;
    *&v216[10] = v65;
    v217 = 1024;
    v218 = v67;
    v219 = 1024;
    v220 = v66;
    v221 = 1024;
    *v222 = mDNS_DomainNameFNV1aHash(v13);
    v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, name hash: %x";
    v32 = v14;
    v50 = 64;
  }

  else
  {
    if (v16)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v36 = *(a1 + 200);
      v37 = *(v10 + 14);
      v38 = *(a2 + 12);
      v39 = *(a1 + 248);
      v40 = *(a1 + 252);
      *&__n[3] = 67110915;
      v210 = v36;
      v211 = 1024;
      v212 = v37;
      v213 = 2160;
      *v214 = 1752392040;
      *&v214[8] = 1040;
      *&v214[10] = 257;
      v215 = 2101;
      *v216 = 0;
      *&v216[8] = 1024;
      *&v216[10] = v38;
      v217 = 1024;
      v218 = v39;
      v219 = 1024;
      v220 = v40;
      v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, ";
      v32 = v14;
    }

    else
    {
      v51 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      v52 = *(a1 + 200);
      v53 = *(v10 + 14);
      v54 = *(a2 + 12);
      v55 = *(a1 + 248);
      v56 = *(a1 + 252);
      *&__n[3] = 67110915;
      v210 = v52;
      v211 = 1024;
      v212 = v53;
      v213 = 2160;
      *v214 = 1752392040;
      *&v214[8] = 1040;
      *&v214[10] = 257;
      v215 = 2101;
      *v216 = 0;
      *&v216[8] = 1024;
      *&v216[10] = v54;
      v217 = 1024;
      v218 = v55;
      v219 = 1024;
      v220 = v56;
      v31 = "[R%u->Rec%u] DNSServiceRegisterRecord START -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, flags: 0x%X, interface index: %d, ";
      v32 = v51;
    }

    v50 = 58;
  }

  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &__n[3], v50);
LABEL_74:
  _shouldLogFullRequestInfo(v10 + 12, v10 + 13);
  v68 = mDNS_Register(mDNSStorage, a2);
  if (v68)
  {
    v8 = v68;
    v69 = mDNS_DomainNameFNV1aHash(*(a2 + 40));
    v70 = *(a2 + 64);
    if (v70)
    {
      validation_result = dnssec_obj_resource_record_member_get_validation_result(v70);
      v73 = (a2 + 20);
      v72 = *(a2 + 20);
      if (validation_result)
      {
        if (v72 >= 0x201)
        {
          v98 = malloc_type_malloc(v72, 0x4C86F1A6uLL);
          if (!v98)
          {
            goto LABEL_223;
          }

          v74 = v98;
          v76 = *v73;
          v75 = v98;
          if (*v73)
          {
LABEL_79:
            *&__n[1] = 0;
            __n[0] = 0;
            RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a2 + 8, v75, v76, __n, &__n[1]);
            if (!*&__n[1])
            {
              v191 = RDataBytesPointer;
              if (__n[0] < 0x1FFuLL)
              {
                v78 = 0;
                v196 = 512;
                v79 = word_1001789D0;
                goto LABEL_161;
              }

              v196 = __n[0] + 2;
              v79 = malloc_type_malloc(__n[0] + 2, 0x4C86F1A6uLL);
              if (v79)
              {
                v78 = v79;
LABEL_161:
                v188 = v79;
                v208 = v78;
                v124 = mDNSLogCategory_mDNS;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_217;
                  }

                  v205 = v69;
                  v131 = *(a2 + 40);
                  if (v131)
                  {
                    v132 = *(a2 + 40);
                    v133 = v196;
                    while (1)
                    {
                      if (!v132 || (v134 = *v132, v134 > 0x3F))
                      {
LABEL_178:
                        v135 = 257;
                        goto LABEL_206;
                      }

                      if (!*v132)
                      {
                        break;
                      }

                      v132 += v134 + 1;
                      if (&v132[-v131] >= 256)
                      {
                        goto LABEL_178;
                      }
                    }

                    v135 = (v132 - v131 + 1);
                  }

                  else
                  {
                    v135 = 0;
                    v133 = v196;
                  }

LABEL_206:
                  v165 = *(a1 + 200);
                  v166 = *(v10 + 14);
                  v167 = *(a1 + 252);
                  v168 = *(a2 + 12);
                  v169 = __n[0];
                  v170 = __n[0] + 2;
                  if (v170 <= v133)
                  {
                    v171 = v188;
                    v172 = v191;
                    *v188 = __rev16(v168);
                    v182 = v135;
                    logc = v166;
                    v194 = v168;
                    v198 = v170;
                    memcpy(v188 + 1, v172, v169);
                    v135 = v182;
                    v166 = logc;
                    v170 = v198;
                    v168 = v194;
                  }

                  else
                  {
                    v171 = 0;
                  }

                  *&__n[3] = 67111939;
                  v210 = v165;
                  v211 = 1024;
                  v212 = v166;
                  v213 = 1024;
                  *v214 = v167;
                  *&v214[4] = 2160;
                  *&v214[6] = 1752392040;
                  v215 = 1040;
                  *v216 = v135;
                  *&v216[4] = 2101;
                  *&v216[6] = v131;
                  v217 = 1024;
                  v218 = v205;
                  v219 = 1026;
                  v220 = validation_result;
                  v221 = 1024;
                  *v222 = v168;
                  *&v222[4] = 2160;
                  *&v222[6] = 1752392040;
                  v223 = 1040;
                  LODWORD(v224[0]) = v170;
                  WORD2(v224[0]) = 2101;
                  *(v224 + 6) = v171;
                  v151 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  v152 = v124;
                }

                else
                {
                  v125 = mDNSLogCategory_mDNS_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_217;
                  }

                  v204 = v69;
                  v126 = *(a2 + 40);
                  log = v125;
                  if (v126)
                  {
                    v127 = *(a2 + 40);
                    v128 = v196;
                    while (1)
                    {
                      if (!v127 || (v129 = *v127, v129 > 0x3F))
                      {
LABEL_170:
                        v130 = 257;
                        goto LABEL_211;
                      }

                      if (!*v127)
                      {
                        break;
                      }

                      v127 += v129 + 1;
                      if (&v127[-v126] >= 256)
                      {
                        goto LABEL_170;
                      }
                    }

                    v130 = (v127 - v126 + 1);
                  }

                  else
                  {
                    v130 = 0;
                    v128 = v196;
                  }

LABEL_211:
                  v173 = *(a1 + 200);
                  v174 = *(v10 + 14);
                  v175 = *(a1 + 252);
                  v176 = *(a2 + 12);
                  v177 = __n[0];
                  v178 = __n[0] + 2;
                  if (v178 <= v128)
                  {
                    v179 = v188;
                    v180 = v191;
                    *v188 = __rev16(v176);
                    v183 = v130;
                    v199 = v175;
                    v195 = v174;
                    memcpy(v188 + 1, v180, v177);
                    v174 = v195;
                    v175 = v199;
                    v130 = v183;
                  }

                  else
                  {
                    v179 = 0;
                  }

                  *&__n[3] = 67111939;
                  v210 = v173;
                  v211 = 1024;
                  v212 = v174;
                  v213 = 1024;
                  *v214 = v175;
                  *&v214[4] = 2160;
                  *&v214[6] = 1752392040;
                  v215 = 1040;
                  *v216 = v130;
                  *&v216[4] = 2101;
                  *&v216[6] = v126;
                  v217 = 1024;
                  v218 = v204;
                  v219 = 1026;
                  v220 = validation_result;
                  v221 = 1024;
                  *v222 = v176;
                  *&v222[4] = 2160;
                  *&v222[6] = 1752392040;
                  v223 = 1040;
                  LODWORD(v224[0]) = v178;
                  WORD2(v224[0]) = 2101;
                  *(v224 + 6) = v179;
                  v151 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  v152 = log;
                }

                v164 = 90;
LABEL_216:
                _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, v151, &__n[3], v164);
LABEL_217:
                if (v208)
                {
                  free(v208);
                }

                goto LABEL_219;
              }

LABEL_223:
              __break(1u);
            }

LABEL_219:
            if (v74)
            {
              free(v74);
            }

            free(v10);
            free(a2);
            return v8;
          }
        }

        else
        {
          v74 = 0;
          v75 = &word_1001787D0;
          v76 = 512;
          if (*(a2 + 20))
          {
            goto LABEL_79;
          }
        }

        v99 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_219;
          }

          v100 = *(a1 + 200);
          v101 = *(v10 + 14);
          v102 = *(a1 + 252);
          v103 = *(a2 + 40);
          if (v103)
          {
            v109 = *(a2 + 40);
            while (1)
            {
              if (!v109 || (v110 = *v109, v110 > 0x3F))
              {
LABEL_133:
                v106 = 257;
                goto LABEL_192;
              }

              if (!*v109)
              {
                break;
              }

              v109 += v110 + 1;
              if (&v109[-v103] >= 256)
              {
                goto LABEL_133;
              }
            }

            v106 = (v109 - v103 + 1);
          }

          else
          {
            v106 = 0;
          }
        }

        else
        {
          v99 = mDNSLogCategory_mDNS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_219;
          }

          v100 = *(a1 + 200);
          v101 = *(v10 + 14);
          v102 = *(a1 + 252);
          v103 = *(a2 + 40);
          if (v103)
          {
            v104 = *(a2 + 40);
            while (1)
            {
              if (!v104 || (v105 = *v104, v105 > 0x3F))
              {
LABEL_116:
                v106 = 257;
                goto LABEL_192;
              }

              if (!*v104)
              {
                break;
              }

              v104 += v105 + 1;
              if (&v104[-v103] >= 256)
              {
                goto LABEL_116;
              }
            }

            v106 = (v104 - v103 + 1);
          }

          else
          {
            v106 = 0;
          }
        }

LABEL_192:
        v140 = *(a2 + 12);
        *&__n[3] = 67111171;
        v210 = v100;
        v211 = 1024;
        v212 = v101;
        v213 = 1024;
        *v214 = v102;
        *&v214[4] = 2160;
        *&v214[6] = 1752392040;
        v215 = 1040;
        *v216 = v106;
        *&v216[4] = 2101;
        *&v216[6] = v103;
        v217 = 1024;
        v218 = v69;
        v219 = 1026;
        v220 = validation_result;
        v221 = 1024;
        *v222 = v140;
        v137 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
        v138 = v99;
        v139 = 64;
LABEL_193:
        _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_ERROR, v137, &__n[3], v139);
        goto LABEL_219;
      }

      if (v72 >= 0x201)
      {
LABEL_93:
        v89 = malloc_type_malloc(v72, 0x4C86F1A6uLL);
        if (!v89)
        {
          goto LABEL_223;
        }

        v74 = v89;
        v83 = *v73;
        v82 = v89;
        if (!*v73)
        {
          goto LABEL_95;
        }

        goto LABEL_89;
      }
    }

    else
    {
      v73 = (a2 + 20);
      LODWORD(v72) = *(a2 + 20);
      if (v72 >= 0x201)
      {
        goto LABEL_93;
      }
    }

    v74 = 0;
    v82 = &word_1001787D0;
    v83 = 512;
    if (!v72)
    {
LABEL_95:
      v90 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_219;
        }

        v91 = *(a1 + 200);
        v92 = *(v10 + 14);
        v93 = *(a1 + 252);
        v94 = *(a2 + 40);
        if (v94)
        {
          v107 = *(a2 + 40);
          while (1)
          {
            if (!v107 || (v108 = *v107, v108 > 0x3F))
            {
LABEL_124:
              v97 = 257;
              goto LABEL_187;
            }

            if (!*v107)
            {
              break;
            }

            v107 += v108 + 1;
            if (&v107[-v94] >= 256)
            {
              goto LABEL_124;
            }
          }

          v97 = (v107 - v94 + 1);
        }

        else
        {
          v97 = 0;
        }
      }

      else
      {
        v90 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_219;
        }

        v91 = *(a1 + 200);
        v92 = *(v10 + 14);
        v93 = *(a1 + 252);
        v94 = *(a2 + 40);
        if (v94)
        {
          v95 = *(a2 + 40);
          while (1)
          {
            if (!v95 || (v96 = *v95, v96 > 0x3F))
            {
LABEL_104:
              v97 = 257;
              goto LABEL_187;
            }

            if (!*v95)
            {
              break;
            }

            v95 += v96 + 1;
            if (&v95[-v94] >= 256)
            {
              goto LABEL_104;
            }
          }

          v97 = (v95 - v94 + 1);
        }

        else
        {
          v97 = 0;
        }
      }

LABEL_187:
      v136 = *(a2 + 12);
      *&__n[3] = 67110915;
      v210 = v91;
      v211 = 1024;
      v212 = v92;
      v213 = 1024;
      *v214 = v93;
      *&v214[4] = 2160;
      *&v214[6] = 1752392040;
      v215 = 1040;
      *v216 = v97;
      *&v216[4] = 2101;
      *&v216[6] = v94;
      v217 = 1024;
      v218 = v69;
      v219 = 1024;
      v220 = v136;
      v137 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: <none>";
      v138 = v90;
      v139 = 58;
      goto LABEL_193;
    }

LABEL_89:
    *&__n[1] = 0;
    __n[0] = 0;
    v84 = ResourceRecordGetRDataBytesPointer(a2 + 8, v82, v83, __n, &__n[1]);
    if (!*&__n[1])
    {
      v85 = v84;
      if (__n[0] >= 0x1FFuLL)
      {
        v88 = __n[0] + 2;
        v86 = malloc_type_malloc(__n[0] + 2, 0x4C86F1A6uLL);
        if (!v86)
        {
          goto LABEL_223;
        }

        v87 = v86;
      }

      else
      {
        v86 = 0;
        v87 = word_1001789D0;
        v88 = 512;
      }

      v208 = v86;
      v197 = v87;
      v111 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_217;
        }

        v203 = v69;
        v117 = *(a2 + 40);
        if (v117)
        {
          v118 = *(a2 + 40);
          while (1)
          {
            if (!v118 || (v119 = *v118, v119 > 0x3F))
            {
LABEL_153:
              v120 = 257;
              goto LABEL_195;
            }

            if (!*v118)
            {
              break;
            }

            v118 += v119 + 1;
            if (&v118[-v117] >= 256)
            {
              goto LABEL_153;
            }
          }

          v120 = (v118 - v117 + 1);
        }

        else
        {
          v120 = 0;
        }

LABEL_195:
        v141 = *(a1 + 200);
        v142 = *(v10 + 14);
        v143 = *(a1 + 252);
        v144 = *(a2 + 12);
        v145 = __n[0];
        v146 = __n[0] + 2;
        if (v146 <= v88)
        {
          v147 = v197;
          *v197 = __rev16(v144);
          v148 = v85;
          loga = v120;
          v149 = v144;
          v193 = v143;
          v189 = v142;
          v150 = v141;
          memcpy(v197 + 1, v148, v145);
          v141 = v150;
          v142 = v189;
          v143 = v193;
          v144 = v149;
          v120 = loga;
        }

        else
        {
          v147 = 0;
        }

        *&__n[3] = 67111683;
        v210 = v141;
        v211 = 1024;
        v212 = v142;
        v213 = 1024;
        *v214 = v143;
        *&v214[4] = 2160;
        *&v214[6] = 1752392040;
        v215 = 1040;
        *v216 = v120;
        *&v216[4] = 2101;
        *&v216[6] = v117;
        v217 = 1024;
        v218 = v203;
        v219 = 1024;
        v220 = v144;
        v221 = 2160;
        *v222 = 1752392040;
        *&v222[8] = 1040;
        *&v222[10] = v146;
        v223 = 2101;
        v224[0] = v147;
        v151 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v152 = v111;
      }

      else
      {
        v112 = mDNSLogCategory_mDNS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_217;
        }

        v202 = v69;
        v113 = *(a2 + 40);
        v192 = v112;
        if (v113)
        {
          v114 = *(a2 + 40);
          while (1)
          {
            if (!v114 || (v115 = *v114, v115 > 0x3F))
            {
LABEL_145:
              v116 = 257;
              goto LABEL_200;
            }

            if (!*v114)
            {
              break;
            }

            v114 += v115 + 1;
            if (&v114[-v113] >= 256)
            {
              goto LABEL_145;
            }
          }

          v116 = (v114 - v113 + 1);
        }

        else
        {
          v116 = 0;
        }

LABEL_200:
        v153 = *(a1 + 200);
        v154 = *(v10 + 14);
        v155 = *(a1 + 252);
        v156 = *(a2 + 12);
        v157 = __n[0];
        v158 = __n[0] + 2;
        if (v158 <= v88)
        {
          v159 = v197;
          *v197 = __rev16(v156);
          v160 = v85;
          v161 = v116;
          v162 = v156;
          logb = v155;
          v163 = v154;
          v190 = v158;
          memcpy(v197 + 1, v160, v157);
          v158 = v190;
          v154 = v163;
          v155 = logb;
          v156 = v162;
          v116 = v161;
        }

        else
        {
          v159 = 0;
        }

        *&__n[3] = 67111683;
        v210 = v153;
        v211 = 1024;
        v212 = v154;
        v213 = 1024;
        *v214 = v155;
        *&v214[4] = 2160;
        *&v214[6] = 1752392040;
        v215 = 1040;
        *v216 = v116;
        *&v216[4] = 2101;
        *&v216[6] = v113;
        v217 = 1024;
        v218 = v202;
        v219 = 1024;
        v220 = v156;
        v221 = 2160;
        *v222 = 1752392040;
        *&v222[8] = 1040;
        *&v222[10] = v158;
        v223 = 2101;
        v224[0] = v159;
        v151 = "[R%u->mDNS] DNSServiceRegisterRecord Result -- record %u, event: ERROR, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v152 = v192;
      }

      v164 = 84;
      goto LABEL_216;
    }

    goto LABEL_219;
  }

  if (*(a2 + 32) != -2 && IsLocalDomain(*(a2 + 40)))
  {
    v80 = *(a1 + 252);
    if (v80)
    {
      v81 = AWDLInterfaceID == v80 || WiFiAwareInterfaceID == v80;
    }

    else
    {
      v81 = (*(a1 + 250) >> 4) & 1;
    }

    v121 = *(a2 + 40);
    monotonic_time_ns = _mdns_powerlog_get_monotonic_time_ns();
    bzero(&__n[3], 0x3F1uLL);
    service_type_from_domain_name = _mdns_get_service_type_from_domain_name(v121, &__n[3]);
    _mdns_powerlog_bonjour_event(0xAu, v81, (a1 + 256), service_type_from_domain_name, monotonic_time_ns);
    *v10 = monotonic_time_ns;
  }

  if (mDNS_McastLoggingEnabled)
  {
    LogMcastService(a2, a1, 1);
  }

  v8 = 0;
  v10[1] = *(a1 + 176);
  *(a1 + 176) = v10;
  return v8;
}

void ___handle_regrecord_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
    v5 = *(a1 + 32);
    if (*(v5 + 64) && (*(v5 + 27) & 1) != 0)
    {
      goto LABEL_17;
    }

    v6 = *(v5 + 56);
    if (!v6)
    {
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      *(v5 + 56) = 0;
      v7 = _handle_regrecord_request_start(*(a1 + 40), v6);
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = -65570;
    }

    v8 = *(a1 + 40);
    v11 = 0;
    if (GenerateNTDResponse(0, 0, v8, &v11, 0x45, 0, v7))
    {
      v9 = mDNSLogCategory_mDNS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
        {
LABEL_16:
          v10 = *(v8 + 200);
          *buf = 67109376;
          v13 = v10;
          v14 = 1024;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[R%u] DNSServiceRegisterRecord _return_regrecord_request_error: error(%d)", buf, 0xEu);
        }
      }

      else
      {
        v9 = mDNSLogCategory_mDNS_redacted;
        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      append_reply(v8, v11);
    }

LABEL_17:
    KQueueUnlock("_handle_regrecord_request_with_trust");
  }
}

uint64_t LocateSubordinateRequest(uint64_t result)
{
  v1 = all_requests;
  if (all_requests)
  {
    while (*(v1 + 24) != result || *(v1 + 232) != *(result + 232) || *(v1 + 236) != *(result + 236))
    {
      v1 = *(v1 + 16);
      if (!v1)
      {
        return result;
      }
    }

    return v1;
  }

  return result;
}

uint64_t handle_tsr_update_request(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = mDNSGetTSRForAuthRecordNamed(xmmword_100170360, *(a2 + 40), *(a2 + 24));
  *v29 = 0;
  *&v29[8] = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, v29);
  if (a3 > 0x93A80)
  {
    v9 = mDNSLogCategory_mDNS;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v10 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
      {
        return 4294901756;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v12 = *(a2 + 40);
        while (1)
        {
          if (!v12 || (v13 = *v12, v13 > 0x3F))
          {
LABEL_14:
            v14 = 257;
            goto LABEL_50;
          }

          if (!*v12)
          {
            break;
          }

          v12 += v13 + 1;
          if (&v12[-v11] >= 256)
          {
            goto LABEL_14;
          }
        }

        v14 = (v12 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v9 = mDNSLogCategory_mDNS_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
      {
        return 4294901756;
      }

      v11 = *(a2 + 40);
      if (v11)
      {
        v17 = *(a2 + 40);
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_24:
            v14 = 257;
            goto LABEL_50;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (&v17[-v11] >= 256)
          {
            goto LABEL_24;
          }
        }

        v14 = (v17 - v11 + 1);
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_50:
    *v29 = 67110147;
    *&v29[4] = a3;
    *&v29[8] = 1024;
    *&v29[10] = 604800;
    *&v29[14] = 2160;
    *&v29[16] = 1752392040;
    *&v29[24] = 1040;
    *&v29[26] = v14;
    v30 = 2101;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "tsrTimestamp[%u] out of range (%d) on TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v29, 0x28u);
    return 4294901756;
  }

  if (v8)
  {
    return updateTSRRecord(a1, v8, *v29 - a3, a4);
  }

  v15 = 4294901755;
  v19 = mDNSLogCategory_mDNS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v20 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
    {
      return v15;
    }

    v21 = *(a2 + 40);
    if (v21)
    {
      v22 = *(a2 + 40);
      while (1)
      {
        if (!v22 || (v23 = *v22, v23 > 0x3F))
        {
LABEL_37:
          v24 = 257;
          goto LABEL_57;
        }

        if (!*v22)
        {
          break;
        }

        v22 += v23 + 1;
        if (&v22[-v21] >= 256)
        {
          goto LABEL_37;
        }
      }

      v24 = (v22 - v21 + 1);
    }

    else
    {
      v24 = 0;
    }

LABEL_57:
    *v29 = 141558531;
    *&v29[4] = 1752392040;
    *&v29[12] = 1040;
    *&v29[14] = v24;
    *&v29[18] = 2101;
    *&v29[20] = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "No existing TSR for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v29, 0x1Cu);
    return v15;
  }

  v19 = mDNSLogCategory_mDNS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a2 + 40);
    if (v21)
    {
      v26 = *(a2 + 40);
      while (1)
      {
        if (!v26 || (v27 = *v26, v27 > 0x3F))
        {
LABEL_45:
          v24 = 257;
          goto LABEL_57;
        }

        if (!*v26)
        {
          break;
        }

        v26 += v27 + 1;
        if (&v26[-v21] >= 256)
        {
          goto LABEL_45;
        }
      }

      v24 = (v26 - v21 + 1);
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_57;
  }

  return v15;
}

void ___handle_regrecord_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void queryrecord_result_reply(uint64_t **a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  bzero(__s, 0x3F1uLL);
  v772 = a6;
  if (!a5 || !&_NEHelperTrackerGetAppInfo)
  {
    v16 = 0;
    *&__n[3] = 0;
    goto LABEL_19;
  }

  v13 = *(a3 + 4);
  *&__n[3] = 0;
  if (v13 == 28 || v13 == 1)
  {
    if (!*(a7 + 289))
    {
      v16 = 1;
      goto LABEL_19;
    }

    v16 = 1;
    if (resolved_cache_get_tracker_state(a2, &__n[3], 0, 0, 0) == 2 && !*&__n[3])
    {
      v15 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v15 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }

      v17 = *(a7 + 200);
      v18 = bswap32(*(a2 + 340)) >> 16;
      LODWORD(buf.tv_sec) = 67109376;
      HIDWORD(buf.tv_sec) = v17;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[R%u->Q%u] queryrecord_result_reply NULL tracker hostname", &buf, 0xEu);
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_19:
  ConvertDomainNameToCString_withescape(*(a3 + 32), __s);
  v773 = v16;
  if (*(a2 + 144) && (v19 = *(a3 + 56)) != 0)
  {
    validation_result = dnssec_obj_resource_record_member_get_validation_result(v19);
    if (validation_result == 2)
    {
      v21 = 2097184;
    }

    else
    {
      v21 = 0;
    }

    if (validation_result == 1)
    {
      v22 = 2097168;
    }

    else
    {
      v22 = v21;
    }

    v771 = v22;
  }

  else
  {
    v771 = 0;
  }

  v23 = *(a2 + 340);
  v24 = *(a7 + 228);
  v25 = mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a3 + 24), 0);
  v776 = a2;
  v26 = (a2 + 376);
  v27 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v28 = *(a7 + 208);
  buf.tv_sec = 0;
  buf.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &buf);
  if (v28)
  {
    v29 = LODWORD(buf.tv_sec) - v28 <= 299;
  }

  else
  {
    v29 = 0;
  }

  v30 = !v29;
  v775 = a7;
  if (v24 != 8)
  {
    if (v30)
    {
      *(a7 + 208) = buf.tv_sec;
      v44 = *(a3 + 56);
      if (v44)
      {
        v45 = v25;
        v46 = dnssec_obj_resource_record_member_get_validation_result(v44);
        v48 = (a3 + 12);
        v47 = *(a3 + 12);
        v49 = v47 < 0x201;
        if (v46)
        {
          if (!*(v776 + 340))
          {
            if (v47 >= 0x201)
            {
              v47 = malloc_type_malloc(v47, 0x7A5A2961uLL);
              if (!v47)
              {
                goto LABEL_1061;
              }

              v37 = v47;
              LODWORD(v47) = *v48;
              v144 = v47;
              v143 = v37;
            }

            else
            {
              v37 = 0;
              v143 = &word_1001787D0;
              v144 = 512;
            }

            v215 = v27;
            if (v47)
            {
              *&__n[1] = 0;
              __n[0] = 0;
              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a3, v143, v144, __n, &__n[1]);
              if (*&__n[1])
              {
                goto LABEL_951;
              }

              v217 = RDataBytesPointer;
              if (__n[0] >= 0x1FFuLL)
              {
                v443 = __n[0] + 2;
                v218 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
                if (!v218)
                {
                  goto LABEL_1061;
                }

                v715 = v443;
                v219 = v218;
              }

              else
              {
                v218 = 0;
                v219 = word_1001789D0;
                v715 = 512;
              }

              v698 = v219;
              v741 = v218;
              if (v23)
              {
                v436 = mDNSLogCategory_Default;
              }

              else
              {
                v436 = mDNSLogCategory_mDNS;
              }

              if (mDNS_SensitiveLoggingEnableCount && v436 != mDNSLogCategory_State)
              {
                if (v23)
                {
                  v444 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v444 = mDNSLogCategory_mDNS;
                }

                if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
                {
                  v445 = a5 != 0;
                  v446 = *(v775 + 200);
                  v447 = v26;
                  loga = v444;
                  while (1)
                  {
                    if (!v447 || (v448 = *v447, v448 > 0x3F))
                    {
LABEL_728:
                      v449 = 257;
                      goto LABEL_943;
                    }

                    if (!*v447)
                    {
                      break;
                    }

                    v447 += v448 + 1;
                    if (v447 - v26 >= 256)
                    {
                      goto LABEL_728;
                    }
                  }

                  v449 = (v447 - v26 + 1);
LABEL_943:
                  v619 = *(a3 + 4);
                  v620 = __n[0];
                  v621 = __n[0] + 2;
                  if (v621 <= v715)
                  {
                    v622 = v698;
                    *v698 = __rev16(v619);
                    v623 = v217;
                    v677 = v619;
                    v624 = v446;
                    v733 = v449;
                    v625 = v621;
                    memcpy(v698 + 1, v623, v620);
                    v619 = v677;
                    v445 = a5 != 0;
                    v621 = v625;
                    v449 = v733;
                    v446 = v624;
                  }

                  else
                  {
                    v622 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67112195;
                  HIDWORD(buf.tv_sec) = v446;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v445;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v779 = a4;
                  *&v779[4] = 1024;
                  *&v779[6] = v45;
                  strcpy(&v780, "p\bhash");
                  HIBYTE(v780) = 0;
                  *v781 = 0;
                  *&v781[2] = 1040;
                  *&v781[4] = v449;
                  *&v781[8] = 2101;
                  *&v781[10] = v26;
                  *&v781[18] = 1024;
                  *&v781[20] = v215;
                  *&v781[24] = 1026;
                  *&v781[26] = v46;
                  *&v781[30] = 1024;
                  *&v781[32] = v619;
                  *&v781[36] = 2160;
                  *&v781[38] = 1752392040;
                  *&v781[46] = 1040;
                  *&v781[48] = v621;
                  *&v781[52] = 2101;
                  *&v781[54] = v622;
                  v604 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  goto LABEL_947;
                }

LABEL_949:
                a7 = v775;
                v549 = v741;
                if (!v741)
                {
                  goto LABEL_951;
                }

                goto LABEL_950;
              }

              if (!os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_949;
              }

              v471 = a5 != 0;
              v472 = *(v775 + 200);
              v473 = v26;
              while (1)
              {
                if (!v473 || (v474 = *v473, v474 > 0x3F))
                {
LABEL_768:
                  v475 = 257;
                  goto LABEL_932;
                }

                if (!*v473)
                {
                  break;
                }

                v473 += v474 + 1;
                if (v473 - v26 >= 256)
                {
                  goto LABEL_768;
                }
              }

              v475 = (v473 - v26 + 1);
LABEL_932:
              v605 = *(a3 + 4);
              v606 = __n[0];
              v607 = __n[0] + 2;
              if (v607 <= v715)
              {
                v608 = v698;
                *v698 = __rev16(v605);
                v609 = v217;
                logk = v475;
                v731 = v472;
                v610 = v607;
                v675 = v605;
                memcpy(v698 + 1, v609, v606);
                v605 = v675;
                v471 = a5 != 0;
                v607 = v610;
                v475 = logk;
                v472 = v731;
              }

              else
              {
                v608 = 0;
              }

              LODWORD(buf.tv_sec) = 67112195;
              HIDWORD(buf.tv_sec) = v472;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v471;
              HIWORD(buf.tv_nsec) = 1024;
              *v779 = a4;
              *&v779[4] = 1024;
              *&v779[6] = v45;
              strcpy(&v780, "p\bhash");
              HIBYTE(v780) = 0;
              *v781 = 0;
              *&v781[2] = 1040;
              *&v781[4] = v475;
              *&v781[8] = 2101;
              *&v781[10] = v26;
              *&v781[18] = 1024;
              *&v781[20] = v215;
              *&v781[24] = 1026;
              *&v781[26] = v46;
              *&v781[30] = 1024;
              *&v781[32] = v605;
              *&v781[36] = 2160;
              *&v781[38] = 1752392040;
              *&v781[46] = 1040;
              *&v781[48] = v607;
              *&v781[52] = 2101;
              *&v781[54] = v608;
              v604 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_936:
              v611 = v436;
LABEL_948:
              _os_log_impl(&_mh_execute_header, v611, OS_LOG_TYPE_DEFAULT, v604, &buf, 0x60u);
              goto LABEL_949;
            }

            if (v23)
            {
              v113 = mDNSLogCategory_Default;
            }

            else
            {
              v113 = mDNSLogCategory_mDNS;
            }

            if (!mDNS_SensitiveLoggingEnableCount || v113 == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_951;
              }

              v239 = a5 != 0;
              v240 = *(a7 + 200);
              v390 = v26;
              while (1)
              {
                if (!v390 || (v391 = *v390, v391 > 0x3F))
                {
LABEL_608:
                  v243 = 257;
                  goto LABEL_898;
                }

                if (!*v390)
                {
                  break;
                }

                v390 += v391 + 1;
                if (v390 - v26 >= 256)
                {
                  goto LABEL_608;
                }
              }

              v243 = (v390 - v26 + 1);
            }

            else
            {
              if (v23)
              {
                v113 = mDNSLogCategory_Default_redacted;
              }

              else
              {
                v113 = mDNSLogCategory_mDNS;
              }

              if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_951;
              }

              v239 = a5 != 0;
              v240 = *(a7 + 200);
              v241 = v26;
              while (1)
              {
                if (!v241 || (v242 = *v241, v242 > 0x3F))
                {
LABEL_376:
                  v243 = 257;
                  goto LABEL_898;
                }

                if (!*v241)
                {
                  break;
                }

                v241 += v242 + 1;
                if (v241 - v26 >= 256)
                {
                  goto LABEL_376;
                }
              }

              v243 = (v241 - v26 + 1);
            }

LABEL_898:
            v573 = *(a3 + 4);
            LODWORD(buf.tv_sec) = 67111427;
            HIDWORD(buf.tv_sec) = v240;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v239;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = a4;
            *&v779[4] = 1024;
            *&v779[6] = v45;
            strcpy(&v780, "p\bhash");
            HIBYTE(v780) = 0;
            *v781 = 0;
            *&v781[2] = 1040;
            *&v781[4] = v243;
            *&v781[8] = 2101;
            *&v781[10] = v26;
            *&v781[18] = 1024;
            *&v781[20] = v215;
            *&v781[24] = 1026;
            *&v781[26] = v46;
            *&v781[30] = 1024;
            *&v781[32] = v573;
            v501 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_899:
            v518 = v113;
            v519 = 70;
            goto LABEL_900;
          }

          if (v47 >= 0x201)
          {
            v161 = malloc_type_malloc(v47, 0x7A5A2961uLL);
            if (!v161)
            {
              goto LABEL_1061;
            }

            v37 = v161;
            v51 = *v48;
            v50 = v161;
            if (*v48)
            {
LABEL_51:
              *&__n[1] = 0;
              __n[0] = 0;
              v52 = ResourceRecordGetRDataBytesPointer(a3, v50, v51, __n, &__n[1]);
              if (*&__n[1])
              {
                goto LABEL_892;
              }

              v53 = v52;
              v757 = v27;
              if (__n[0] >= 0x1FFuLL)
              {
                v735 = __n[0] + 2;
                v336 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
                if (!v336)
                {
                  goto LABEL_1061;
                }

                v42 = v336;
                v54 = v336;
              }

              else
              {
                v42 = 0;
                v54 = word_1001789D0;
                v735 = 512;
              }

              v718 = v54;
              if (v23)
              {
                v328 = mDNSLogCategory_Default;
              }

              else
              {
                v328 = mDNSLogCategory_mDNS;
              }

              if (mDNS_SensitiveLoggingEnableCount && v328 != mDNSLogCategory_State)
              {
                if (v23)
                {
                  v337 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v337 = mDNSLogCategory_mDNS;
                }

                if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
                {
                  v338 = a5 != 0;
                  v339 = *(v775 + 200);
                  v340 = bswap32(*(v776 + 340)) >> 16;
                  v341 = v26;
                  log = v337;
                  v696 = v42;
                  while (1)
                  {
                    if (!v341 || (v342 = *v341, v342 > 0x3F))
                    {
LABEL_548:
                      v343 = 257;
                      goto LABEL_883;
                    }

                    if (!*v341)
                    {
                      break;
                    }

                    v341 += v342 + 1;
                    if (v341 - v26 >= 256)
                    {
                      goto LABEL_548;
                    }
                  }

                  v343 = (v341 - v26 + 1);
LABEL_883:
                  v568 = *(a3 + 4);
                  v569 = __n[0];
                  v570 = __n[0] + 2;
                  if (v570 <= v735)
                  {
                    v571 = v718;
                    LOWORD(v718->isa) = __rev16(v568);
                    v673 = v339;
                    v683 = v570;
                    v753 = v340;
                    memcpy(&v718->isa + 2, v53, v569);
                    v339 = v673;
                    v570 = v683;
                    v340 = v753;
                    v338 = a5 != 0;
                  }

                  else
                  {
                    v571 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67112451;
                  HIDWORD(buf.tv_sec) = v339;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v340;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v779 = v338;
                  *&v779[4] = 1024;
                  *&v779[6] = a4;
                  LOWORD(v780) = 1024;
                  *(&v780 + 2) = v45;
                  HIWORD(v780) = 2160;
                  *v781 = 1752392040;
                  *&v781[8] = 1040;
                  *&v781[10] = v343;
                  *&v781[14] = 2101;
                  *&v781[16] = v26;
                  *&v781[24] = 1024;
                  *&v781[26] = v757;
                  *&v781[30] = 1026;
                  *&v781[32] = v46;
                  *&v781[36] = 1024;
                  *&v781[38] = v568;
                  *&v781[42] = 2160;
                  *&v781[44] = 1752392040;
                  *&v781[52] = 1040;
                  *&v781[54] = v570;
                  *&v781[58] = 2101;
                  *&v781[60] = v571;
                  v556 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                  goto LABEL_887;
                }

LABEL_889:
                if (v42)
                {
                  v541 = v42;
                  goto LABEL_891;
                }

                goto LABEL_892;
              }

              if (!os_log_type_enabled(v328, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_889;
              }

              v368 = a5 != 0;
              v369 = *(v775 + 200);
              v370 = bswap32(*(v776 + 340)) >> 16;
              v371 = v26;
              v696 = v42;
              while (1)
              {
                if (!v371 || (v372 = *v371, v372 > 0x3F))
                {
LABEL_588:
                  v373 = 257;
                  goto LABEL_872;
                }

                if (!*v371)
                {
                  break;
                }

                v371 += v372 + 1;
                if (v371 - v26 >= 256)
                {
                  goto LABEL_588;
                }
              }

              v373 = (v371 - v26 + 1);
LABEL_872:
              v557 = *(a3 + 4);
              v558 = __n[0];
              v559 = __n[0] + 2;
              if (v559 <= v735)
              {
                v560 = v718;
                LOWORD(v718->isa) = __rev16(v557);
                v561 = v53;
                v681 = v559;
                logi = v369;
                v751 = v370;
                v562 = v557;
                memcpy(&v718->isa + 2, v561, v558);
                v557 = v562;
                v559 = v681;
                v369 = logi;
                v370 = v751;
                v368 = a5 != 0;
              }

              else
              {
                v560 = 0;
              }

              LODWORD(buf.tv_sec) = 67112451;
              HIDWORD(buf.tv_sec) = v369;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v370;
              HIWORD(buf.tv_nsec) = 1024;
              *v779 = v368;
              *&v779[4] = 1024;
              *&v779[6] = a4;
              LOWORD(v780) = 1024;
              *(&v780 + 2) = v45;
              HIWORD(v780) = 2160;
              *v781 = 1752392040;
              *&v781[8] = 1040;
              *&v781[10] = v373;
              *&v781[14] = 2101;
              *&v781[16] = v26;
              *&v781[24] = 1024;
              *&v781[26] = v757;
              *&v781[30] = 1026;
              *&v781[32] = v46;
              *&v781[36] = 1024;
              *&v781[38] = v557;
              *&v781[42] = 2160;
              *&v781[44] = 1752392040;
              *&v781[52] = 1040;
              *&v781[54] = v559;
              *&v781[58] = 2101;
              *&v781[60] = v560;
              v556 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_876:
              v563 = v328;
LABEL_888:
              _os_log_impl(&_mh_execute_header, v563, OS_LOG_TYPE_DEFAULT, v556, &buf, 0x66u);
              v42 = v696;
              goto LABEL_889;
            }
          }

          else
          {
            v37 = 0;
            v50 = &word_1001787D0;
            v51 = 512;
            if (*(a3 + 12))
            {
              goto LABEL_51;
            }
          }

          v162 = v27;
          if (v23)
          {
            v154 = mDNSLogCategory_Default;
          }

          else
          {
            v154 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v154 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v163 = a5 != 0;
            v164 = *(a7 + 200);
            v165 = bswap32(*(v776 + 340)) >> 16;
            v249 = v26;
            while (1)
            {
              if (!v249 || (v250 = *v249, v250 > 0x3F))
              {
LABEL_410:
                v168 = 257;
                goto LABEL_819;
              }

              if (!*v249)
              {
                break;
              }

              v249 += v250 + 1;
              if (v249 - v26 >= 256)
              {
                goto LABEL_410;
              }
            }

            v168 = (v249 - v26 + 1);
          }

          else
          {
            if (v23)
            {
              v154 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v154 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v163 = a5 != 0;
            v164 = *(a7 + 200);
            v165 = bswap32(*(v776 + 340)) >> 16;
            v166 = v26;
            while (1)
            {
              if (!v166 || (v167 = *v166, v167 > 0x3F))
              {
LABEL_206:
                v168 = 257;
                goto LABEL_819;
              }

              if (!*v166)
              {
                break;
              }

              v166 += v167 + 1;
              if (v166 - v26 >= 256)
              {
                goto LABEL_206;
              }
            }

            v168 = (v166 - v26 + 1);
          }

LABEL_819:
          v517 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67111683;
          HIDWORD(buf.tv_sec) = v164;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v165;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = v163;
          *&v779[4] = 1024;
          *&v779[6] = a4;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v45;
          HIWORD(v780) = 2160;
          *v781 = 1752392040;
          *&v781[8] = 1040;
          *&v781[10] = v168;
          *&v781[14] = 2101;
          *&v781[16] = v26;
          *&v781[24] = 1024;
          *&v781[26] = v162;
          *&v781[30] = 1026;
          *&v781[32] = v46;
          *&v781[36] = 1024;
          *&v781[38] = v517;
          v501 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          goto LABEL_820;
        }

        v25 = v45;
        if (!*(v776 + 340))
        {
LABEL_92:
          if (v49)
          {
            v37 = 0;
            v100 = &word_1001787D0;
            v101 = 512;
          }

          else
          {
            v47 = malloc_type_malloc(v47, 0x7A5A2961uLL);
            if (!v47)
            {
              goto LABEL_1061;
            }

            v37 = v47;
            LODWORD(v47) = *v48;
            v101 = v47;
            v100 = v37;
          }

          v185 = v27;
          if (v47)
          {
            *&__n[1] = 0;
            __n[0] = 0;
            v186 = ResourceRecordGetRDataBytesPointer(a3, v100, v101, __n, &__n[1]);
            if (*&__n[1])
            {
              goto LABEL_951;
            }

            v187 = v186;
            v769 = v25;
            if (__n[0] >= 0x1FFuLL)
            {
              v410 = __n[0] + 2;
              v411 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
              if (!v411)
              {
                goto LABEL_1061;
              }

              v183 = v411;
              v737 = v410;
              v188 = v411;
            }

            else
            {
              v183 = 0;
              v188 = word_1001789D0;
              v737 = 512;
            }

            if (v23)
            {
              v403 = mDNSLogCategory_Default;
            }

            else
            {
              v403 = mDNSLogCategory_mDNS;
            }

            if (mDNS_SensitiveLoggingEnableCount && v403 != mDNSLogCategory_State)
            {
              if (v23)
              {
                v412 = mDNSLogCategory_Default_redacted;
              }

              else
              {
                v412 = mDNSLogCategory_mDNS;
              }

              if (!os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_924;
              }

              v413 = a5 != 0;
              v414 = *(v775 + 200);
              v415 = v26;
              v720 = v412;
              while (1)
              {
                if (!v415 || (v416 = *v415, v416 > 0x3F))
                {
LABEL_661:
                  v417 = 257;
                  goto LABEL_918;
                }

                if (!*v415)
                {
                  break;
                }

                v415 += v416 + 1;
                if (v415 - v26 >= 256)
                {
                  goto LABEL_661;
                }
              }

              v417 = (v415 - v26 + 1);
LABEL_918:
              v592 = *(a3 + 4);
              v593 = __n[0];
              v594 = __n[0] + 2;
              if (v594 <= v737)
              {
                v595 = v188;
                *v188 = __rev16(v592);
                v596 = v188 + 1;
                v597 = v414;
                v712 = v417;
                v755 = v594;
                memcpy(v596, v187, v593);
                v594 = v755;
                v417 = v712;
                v414 = v597;
                v413 = a5 != 0;
              }

              else
              {
                v595 = 0;
              }

              LODWORD(buf.tv_sec) = 67111939;
              HIDWORD(buf.tv_sec) = v414;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v413;
              HIWORD(buf.tv_nsec) = 1024;
              *v779 = a4;
              *&v779[4] = 1024;
              *&v779[6] = v769;
              strcpy(&v780, "p\bhash");
              HIBYTE(v780) = 0;
              *v781 = 0;
              *&v781[2] = 1040;
              *&v781[4] = v417;
              *&v781[8] = 2101;
              *&v781[10] = v26;
              *&v781[18] = 1024;
              *&v781[20] = v185;
              *&v781[24] = 1024;
              *&v781[26] = v592;
              *&v781[30] = 2160;
              *&v781[32] = 1752392040;
              *&v781[40] = 1040;
              *&v781[42] = v594;
              *&v781[46] = 2101;
              *&v781[48] = v595;
              v579 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_922:
              v585 = v720;
              goto LABEL_923;
            }

            if (os_log_type_enabled(v403, OS_LOG_TYPE_DEFAULT))
            {
              v430 = a5 != 0;
              v431 = *(v775 + 200);
              v432 = v26;
              while (1)
              {
                if (!v432 || (v433 = *v432, v433 > 0x3F))
                {
LABEL_691:
                  v434 = 257;
                  goto LABEL_907;
                }

                if (!*v432)
                {
                  break;
                }

                v432 += v433 + 1;
                if (v432 - v26 >= 256)
                {
                  goto LABEL_691;
                }
              }

              v434 = (v432 - v26 + 1);
LABEL_907:
              v580 = *(a3 + 4);
              v581 = __n[0];
              v582 = __n[0] + 2;
              if (v582 <= v737)
              {
                *v188 = __rev16(v580);
                v583 = v187;
                v710 = v434;
                v584 = v582;
                v729 = v580;
                memcpy(v188 + 1, v583, v581);
                v580 = v729;
                v582 = v584;
                v434 = v710;
                v430 = a5 != 0;
              }

              else
              {
                v188 = 0;
              }

              LODWORD(buf.tv_sec) = 67111939;
              HIDWORD(buf.tv_sec) = v431;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v430;
              HIWORD(buf.tv_nsec) = 1024;
              *v779 = a4;
              *&v779[4] = 1024;
              *&v779[6] = v769;
              strcpy(&v780, "p\bhash");
              HIBYTE(v780) = 0;
              *v781 = 0;
              *&v781[2] = 1040;
              *&v781[4] = v434;
              *&v781[8] = 2101;
              *&v781[10] = v26;
              *&v781[18] = 1024;
              *&v781[20] = v185;
              *&v781[24] = 1024;
              *&v781[26] = v580;
              *&v781[30] = 2160;
              *&v781[32] = 1752392040;
              *&v781[40] = 1040;
              *&v781[42] = v582;
              *&v781[46] = 2101;
              *&v781[48] = v188;
              v579 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              goto LABEL_911;
            }

LABEL_924:
            a7 = v775;
            if (!v183)
            {
              goto LABEL_951;
            }

            v549 = v183;
            goto LABEL_950;
          }

          if (v23)
          {
            v199 = mDNSLogCategory_Default;
          }

          else
          {
            v199 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v199 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v205 = a5 != 0;
            v206 = *(a7 + 200);
            v323 = v26;
            while (1)
            {
              if (!v323 || (v324 = *v323, v324 > 0x3F))
              {
LABEL_511:
                v209 = 257;
                goto LABEL_849;
              }

              if (!*v323)
              {
                break;
              }

              v323 += v324 + 1;
              if (v323 - v26 >= 256)
              {
                goto LABEL_511;
              }
            }

            v209 = (v323 - v26 + 1);
          }

          else
          {
            if (v23)
            {
              v199 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v199 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v205 = a5 != 0;
            v206 = *(a7 + 200);
            v207 = v26;
            while (1)
            {
              if (!v207 || (v208 = *v207, v208 > 0x3F))
              {
LABEL_294:
                v209 = 257;
                goto LABEL_849;
              }

              if (!*v207)
              {
                break;
              }

              v207 += v208 + 1;
              if (v207 - v26 >= 256)
              {
                goto LABEL_294;
              }
            }

            v209 = (v207 - v26 + 1);
          }

LABEL_849:
          v543 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67111171;
          HIDWORD(buf.tv_sec) = v206;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v205;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = a4;
          *&v779[4] = 1024;
          *&v779[6] = v25;
          strcpy(&v780, "p\bhash");
          HIBYTE(v780) = 0;
          *v781 = 0;
          *&v781[2] = 1040;
          *&v781[4] = v209;
          *&v781[8] = 2101;
          *&v781[10] = v26;
          *&v781[18] = 1024;
          *&v781[20] = v185;
          *&v781[24] = 1024;
          *&v781[26] = v543;
          v501 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
LABEL_850:
          v518 = v199;
          v519 = 64;
          goto LABEL_900;
        }
      }

      else
      {
        v48 = (a3 + 12);
        LODWORD(v47) = *(a3 + 12);
        v49 = v47 < 0x201;
        if (!*(v776 + 340))
        {
          goto LABEL_92;
        }
      }

      if (v49)
      {
        v37 = 0;
        v84 = &word_1001787D0;
        v85 = 512;
        if (v47)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v120 = malloc_type_malloc(v47, 0x7A5A2961uLL);
        if (!v120)
        {
          goto LABEL_1061;
        }

        v37 = v120;
        v85 = *v48;
        v84 = v120;
        if (*v48)
        {
LABEL_76:
          *&__n[1] = 0;
          __n[0] = 0;
          v86 = ResourceRecordGetRDataBytesPointer(a3, v84, v85, __n, &__n[1]);
          if (*&__n[1])
          {
            goto LABEL_892;
          }

          v87 = v86;
          v760 = v27;
          v764 = v25;
          if (__n[0] >= 0x1FFuLL)
          {
            v89 = __n[0] + 2;
            v266 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
            if (!v266)
            {
              goto LABEL_1061;
            }

            v81 = v266;
            v88 = v266;
          }

          else
          {
            v81 = 0;
            v88 = word_1001789D0;
            v89 = 512;
          }

          if (v23)
          {
            v257 = mDNSLogCategory_Default;
          }

          else
          {
            v257 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v257 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_842;
            }

            v301 = a5 != 0;
            v302 = *(v775 + 200);
            v303 = bswap32(*(v776 + 340)) >> 16;
            v304 = v26;
            while (1)
            {
              if (!v304 || (v305 = *v304, v305 > 0x3F))
              {
LABEL_489:
                v306 = v89;
                v307 = v88;
                v308 = 257;
                goto LABEL_827;
              }

              if (!*v304)
              {
                break;
              }

              v304 += v305 + 1;
              if (v304 - v26 >= 256)
              {
                goto LABEL_489;
              }
            }

            v306 = v89;
            v307 = v88;
            v308 = (v304 - v26 + 1);
LABEL_827:
            v526 = *(a3 + 4);
            v527 = __n[0];
            v528 = __n[0] + 2;
            if (v528 <= v306)
            {
              *v307 = __rev16(v526);
              v529 = v87;
              v725 = v303;
              v747 = v528;
              v530 = v526;
              memcpy(v307 + 1, v529, v527);
              v526 = v530;
              v528 = v747;
              v303 = v725;
              v301 = a5 != 0;
            }

            else
            {
              v307 = 0;
            }

            LODWORD(buf.tv_sec) = 67112195;
            HIDWORD(buf.tv_sec) = v302;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v303;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = v301;
            *&v779[4] = 1024;
            *&v779[6] = a4;
            LOWORD(v780) = 1024;
            *(&v780 + 2) = v764;
            HIWORD(v780) = 2160;
            *v781 = 1752392040;
            *&v781[8] = 1040;
            *&v781[10] = v308;
            *&v781[14] = 2101;
            *&v781[16] = v26;
            *&v781[24] = 1024;
            *&v781[26] = v760;
            *&v781[30] = 1024;
            *&v781[32] = v526;
            *&v781[36] = 2160;
            *&v781[38] = 1752392040;
            *&v781[46] = 1040;
            *&v781[48] = v528;
            *&v781[52] = 2101;
            *&v781[54] = v307;
            v525 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            goto LABEL_841;
          }

          if (v23)
          {
            v257 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v257 = mDNSLogCategory_mDNS;
          }

          if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
          {
            v267 = a5 != 0;
            v268 = *(v775 + 200);
            v269 = bswap32(*(v776 + 340)) >> 16;
            v270 = v26;
            while (1)
            {
              if (!v270 || (v271 = *v270, v271 > 0x3F))
              {
LABEL_449:
                v272 = v89;
                v273 = v88;
                v274 = 257;
                goto LABEL_837;
              }

              if (!*v270)
              {
                break;
              }

              v270 += v271 + 1;
              if (v270 - v26 >= 256)
              {
                goto LABEL_449;
              }
            }

            v272 = v89;
            v273 = v88;
            v274 = (v270 - v26 + 1);
LABEL_837:
            v536 = *(a3 + 4);
            v537 = __n[0];
            v538 = __n[0] + 2;
            if (v538 <= v272)
            {
              *v273 = __rev16(v536);
              v749 = v257;
              v539 = v268;
              v540 = v269;
              v704 = v274;
              v727 = v536;
              memcpy(v273 + 1, v87, v537);
              v536 = v727;
              v274 = v704;
              v269 = v540;
              v268 = v539;
              v257 = v749;
              v267 = a5 != 0;
            }

            else
            {
              v273 = 0;
            }

            LODWORD(buf.tv_sec) = 67112195;
            HIDWORD(buf.tv_sec) = v268;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v269;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = v267;
            *&v779[4] = 1024;
            *&v779[6] = a4;
            LOWORD(v780) = 1024;
            *(&v780 + 2) = v764;
            HIWORD(v780) = 2160;
            *v781 = 1752392040;
            *&v781[8] = 1040;
            *&v781[10] = v274;
            *&v781[14] = 2101;
            *&v781[16] = v26;
            *&v781[24] = 1024;
            *&v781[26] = v760;
            *&v781[30] = 1024;
            *&v781[32] = v536;
            *&v781[36] = 2160;
            *&v781[38] = 1752392040;
            *&v781[46] = 1040;
            *&v781[48] = v538;
            *&v781[52] = 2101;
            *&v781[54] = v273;
            v525 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            goto LABEL_841;
          }

LABEL_842:
          if (v81)
          {
            v541 = v81;
LABEL_891:
            free(v541);
          }

LABEL_892:
          a7 = v775;
          goto LABEL_951;
        }
      }

      v121 = v27;
      if (v23)
      {
        v113 = mDNSLogCategory_Default;
      }

      else
      {
        v113 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v113 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_951;
        }

        v122 = a5 != 0;
        v123 = *(a7 + 200);
        v124 = bswap32(*(v776 + 340)) >> 16;
        v232 = v26;
        while (1)
        {
          if (!v232 || (v233 = *v232, v233 > 0x3F))
          {
LABEL_342:
            v127 = 257;
            goto LABEL_788;
          }

          if (!*v232)
          {
            break;
          }

          v232 += v233 + 1;
          if (v232 - v26 >= 256)
          {
            goto LABEL_342;
          }
        }

        v127 = (v232 - v26 + 1);
      }

      else
      {
        if (v23)
        {
          v113 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v113 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_951;
        }

        v122 = a5 != 0;
        v123 = *(a7 + 200);
        v124 = bswap32(*(v776 + 340)) >> 16;
        v125 = v26;
        while (1)
        {
          if (!v125 || (v126 = *v125, v126 > 0x3F))
          {
LABEL_136:
            v127 = 257;
            goto LABEL_788;
          }

          if (!*v125)
          {
            break;
          }

          v125 += v126 + 1;
          if (v125 - v26 >= 256)
          {
            goto LABEL_136;
          }
        }

        v127 = (v125 - v26 + 1);
      }

LABEL_788:
      v502 = *(a3 + 4);
      LODWORD(buf.tv_sec) = 67111427;
      HIDWORD(buf.tv_sec) = v123;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v124;
      HIWORD(buf.tv_nsec) = 1024;
      *v779 = v122;
      *&v779[4] = 1024;
      *&v779[6] = a4;
      LOWORD(v780) = 1024;
      *(&v780 + 2) = v25;
      HIWORD(v780) = 2160;
      *v781 = 1752392040;
      *&v781[8] = 1040;
      *&v781[10] = v127;
      *&v781[14] = 2101;
      *&v781[16] = v26;
      *&v781[24] = 1024;
      *&v781[26] = v121;
      *&v781[30] = 1024;
      *&v781[32] = v502;
      v501 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
      goto LABEL_899;
    }

    v64 = *(a3 + 56);
    if (v64)
    {
      v65 = v25;
      v66 = dnssec_obj_resource_record_member_get_validation_result(v64);
      v58 = v776;
      v68 = (a3 + 12);
      v67 = *(a3 + 12);
      v69 = v67 < 0x201;
      if (v66)
      {
        if (*(v776 + 340))
        {
          if (v67 >= 0x201)
          {
            v174 = malloc_type_malloc(v67, 0x7A5A2961uLL);
            if (!v174)
            {
              goto LABEL_1061;
            }

            v71 = v174;
            v37 = v174;
            v70 = *v68;
            if (*v68)
            {
LABEL_64:
              *&__n[1] = 0;
              __n[0] = 0;
              v72 = ResourceRecordGetRDataBytesPointer(a3, v71, v70, __n, &__n[1]);
              if (!*&__n[1])
              {
                v73 = v72;
                v758 = v27;
                if (__n[0] >= 0x1FFuLL)
                {
                  v75 = __n[0] + 2;
                  v76 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
                  if (!v76)
                  {
                    goto LABEL_1061;
                  }

                  v74 = v76;
                }

                else
                {
                  v74 = 0;
                  v75 = 512;
                  v76 = word_1001789D0;
                }

                v739 = v76;
                if (v23)
                {
                  v344 = mDNSLogCategory_Default;
                }

                else
                {
                  v344 = mDNSLogCategory_mDNS;
                }

                if (!mDNS_SensitiveLoggingEnableCount || v344 == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_806;
                  }

                  v719 = v74;
                  v374 = a5 != 0;
                  v375 = *(v775 + 200);
                  v376 = bswap32(*(v776 + 340)) >> 16;
                  v377 = *(a3 + 4);
                  v378 = __n[0];
                  v379 = __n[0] + 2;
                  if (v379 <= v75)
                  {
                    v380 = v739;
                    *v739 = __rev16(v377);
                    v699 = v377;
                    logb = v376;
                    memcpy(v739 + 1, v73, v378);
                    v376 = logb;
                    v377 = v699;
                    v374 = a5 != 0;
                  }

                  else
                  {
                    v380 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67111683;
                  HIDWORD(buf.tv_sec) = v375;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v376;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v779 = v374;
                  *&v779[4] = 1024;
                  *&v779[6] = a4;
                  LOWORD(v780) = 1024;
                  *(&v780 + 2) = v65;
                  HIWORD(v780) = 1024;
                  *v781 = v758;
                  *&v781[4] = 1026;
                  *&v781[6] = v66;
                  *&v781[10] = 1024;
                  *&v781[12] = v377;
                  *&v781[16] = 2160;
                  *&v781[18] = 1752392040;
                  *&v781[26] = 1040;
                  *&v781[28] = v379;
                  *&v781[32] = 2101;
                  *&v781[34] = v380;
                  v503 = v344;
                  goto LABEL_797;
                }

                if (v23)
                {
                  v345 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v345 = mDNSLogCategory_mDNS;
                }

                if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
                {
                  v719 = v74;
                  v346 = a5 != 0;
                  v347 = *(v775 + 200);
                  v348 = bswap32(*(v776 + 340)) >> 16;
                  v349 = *(a3 + 4);
                  v350 = __n[0];
                  v351 = __n[0] + 2;
                  if (v351 <= v75)
                  {
                    v352 = v739;
                    *v739 = __rev16(v349);
                    v701 = v349;
                    logd = v348;
                    memcpy(v739 + 1, v73, v350);
                    v348 = logd;
                    v349 = v701;
                    v346 = a5 != 0;
                  }

                  else
                  {
                    v352 = 0;
                  }

                  LODWORD(buf.tv_sec) = 67111683;
                  HIDWORD(buf.tv_sec) = v347;
                  LOWORD(buf.tv_nsec) = 1024;
                  *(&buf.tv_nsec + 2) = v348;
                  HIWORD(buf.tv_nsec) = 1024;
                  *v779 = v346;
                  *&v779[4] = 1024;
                  *&v779[6] = a4;
                  LOWORD(v780) = 1024;
                  *(&v780 + 2) = v65;
                  HIWORD(v780) = 1024;
                  *v781 = v758;
                  *&v781[4] = 1026;
                  *&v781[6] = v66;
                  *&v781[10] = 1024;
                  *&v781[12] = v349;
                  *&v781[16] = 2160;
                  *&v781[18] = 1752392040;
                  *&v781[26] = 1040;
                  *&v781[28] = v351;
                  *&v781[32] = 2101;
                  *&v781[34] = v352;
                  v503 = v345;
LABEL_797:
                  _os_log_impl(&_mh_execute_header, v503, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &buf, 0x4Cu);
                  v74 = v719;
                }

LABEL_806:
                v58 = v776;
                if (v74)
                {
                  free(v74);
                }
              }

LABEL_808:
              a7 = v775;
              goto LABEL_952;
            }
          }

          else
          {
            v37 = 0;
            v70 = 512;
            v71 = &word_1001787D0;
            if (*(a3 + 12))
            {
              goto LABEL_64;
            }
          }

          v175 = v27;
          if (v23)
          {
            v176 = mDNSLogCategory_Default;
          }

          else
          {
            v176 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v176 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          else
          {
            if (v23)
            {
              v176 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v176 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          v177 = *(a7 + 200);
          v178 = bswap32(*(v776 + 340)) >> 16;
          v179 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67110912;
          HIDWORD(buf.tv_sec) = v177;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v178;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = a5 != 0;
          *&v779[4] = 1024;
          *&v779[6] = a4;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v65;
          HIWORD(v780) = 1024;
          *v781 = v175;
          *&v781[4] = 1026;
          *&v781[6] = v66;
          *&v781[10] = 1024;
          *&v781[12] = v179;
          v140 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_415:
          v254 = v176;
          v255 = 50;
LABEL_614:
          _os_log_impl(&_mh_execute_header, v254, OS_LOG_TYPE_DEFAULT, v140, &buf, v255);
          goto LABEL_952;
        }

        if (v67 >= 0x201)
        {
          v67 = malloc_type_malloc(v67, 0x7A5A2961uLL);
          if (!v67)
          {
            goto LABEL_1061;
          }

          v148 = v67;
          LODWORD(v67) = *v68;
          v37 = v148;
          v147 = v67;
        }

        else
        {
          v37 = 0;
          v147 = 512;
          v148 = &word_1001787D0;
        }

        if (!v67)
        {
          v246 = v27;
          if (v23)
          {
            v136 = mDNSLogCategory_Default;
          }

          else
          {
            v136 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v136 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          else
          {
            if (v23)
            {
              v136 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v136 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_952;
            }
          }

          v392 = *(a7 + 200);
          v393 = *(a3 + 4);
          LODWORD(buf.tv_sec) = 67110656;
          HIDWORD(buf.tv_sec) = v392;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = a5 != 0;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = a4;
          *&v779[4] = 1024;
          *&v779[6] = v65;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v246;
          HIWORD(v780) = 1026;
          *v781 = v66;
          *&v781[4] = 1024;
          *&v781[6] = v393;
          v140 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          goto LABEL_613;
        }

        *&__n[1] = 0;
        __n[0] = 0;
        v225 = ResourceRecordGetRDataBytesPointer(a3, v148, v147, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_951;
        }

        v226 = v225;
        v762 = v27;
        if (__n[0] >= 0x1FFuLL)
        {
          v228 = __n[0] + 2;
          v229 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
          if (!v229)
          {
            goto LABEL_1061;
          }

          v227 = v229;
        }

        else
        {
          v227 = 0;
          v228 = 512;
          v229 = word_1001789D0;
        }

        v742 = v229;
        if (v23)
        {
          v458 = mDNSLogCategory_Default;
        }

        else
        {
          v458 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v458 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
          {
LABEL_864:
            a7 = v775;
            if (!v227)
            {
              goto LABEL_951;
            }

            v549 = v227;
LABEL_950:
            free(v549);
            goto LABEL_951;
          }

          v721 = v227;
          v482 = a5 != 0;
          v483 = *(v775 + 200);
          v484 = *(a3 + 4);
          v485 = __n[0];
          v486 = __n[0] + 2;
          if (v486 <= v228)
          {
            v487 = v742;
            *v742 = __rev16(v484);
            v706 = v484;
            memcpy(v742 + 1, v226, v485);
            v484 = v706;
            v482 = a5 != 0;
          }

          else
          {
            v487 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v483;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v482;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = a4;
          *&v779[4] = 1024;
          *&v779[6] = v65;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v762;
          HIWORD(v780) = 1026;
          *v781 = v66;
          *&v781[4] = 1024;
          *&v781[6] = v484;
          *&v781[10] = 2160;
          *&v781[12] = 1752392040;
          *&v781[20] = 1040;
          *&v781[22] = v486;
          *&v781[26] = 2101;
          *&v781[28] = v487;
          v546 = v458;
        }

        else
        {
          if (v23)
          {
            v459 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v459 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v459, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_864;
          }

          v721 = v227;
          v460 = a5 != 0;
          v461 = *(v775 + 200);
          v462 = *(a3 + 4);
          v463 = __n[0];
          v464 = __n[0] + 2;
          if (v464 <= v228)
          {
            v465 = v742;
            *v742 = __rev16(v462);
            v708 = v462;
            memcpy(v742 + 1, v226, v463);
            v462 = v708;
            v460 = a5 != 0;
          }

          else
          {
            v465 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v461;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v460;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = a4;
          *&v779[4] = 1024;
          *&v779[6] = v65;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v762;
          HIWORD(v780) = 1026;
          *v781 = v66;
          *&v781[4] = 1024;
          *&v781[6] = v462;
          *&v781[10] = 2160;
          *&v781[12] = 1752392040;
          *&v781[20] = 1040;
          *&v781[22] = v464;
          *&v781[26] = 2101;
          *&v781[28] = v465;
          v546 = v459;
        }

        _os_log_impl(&_mh_execute_header, v546, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &buf, 0x46u);
        v227 = v721;
        goto LABEL_864;
      }

      v25 = v65;
      if (!*(v776 + 340))
      {
LABEL_98:
        if (v69)
        {
          v37 = 0;
          v104 = 512;
          v105 = &word_1001787D0;
          if (v67)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v194 = malloc_type_malloc(v67, 0x7A5A2961uLL);
          if (!v194)
          {
            goto LABEL_1061;
          }

          v105 = v194;
          v37 = v194;
          v104 = *v68;
          if (*v68)
          {
LABEL_100:
            *&__n[1] = 0;
            __n[0] = 0;
            v106 = ResourceRecordGetRDataBytesPointer(a3, v105, v104, __n, &__n[1]);
            if (*&__n[1])
            {
              goto LABEL_808;
            }

            v107 = v106;
            v766 = v25;
            v108 = v27;
            if (__n[0] >= 0x1FFuLL)
            {
              v109 = __n[0] + 2;
              v394 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
              if (!v394)
              {
                goto LABEL_1061;
              }

              v110 = v394;
              v74 = v394;
            }

            else
            {
              v74 = 0;
              v109 = 512;
              v110 = word_1001789D0;
            }

            if (v23)
            {
              v395 = mDNSLogCategory_Default;
            }

            else
            {
              v395 = mDNSLogCategory_mDNS;
            }

            if (!mDNS_SensitiveLoggingEnableCount || v395 == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_806;
              }

              v738 = v74;
              v396 = a5 != 0;
              v397 = *(v775 + 200);
              v398 = *(a3 + 4);
              v399 = __n[0];
              v400 = __n[0] + 2;
              if (v400 > v109)
              {
                v110 = 0;
                goto LABEL_804;
              }
            }

            else
            {
              if (v23)
              {
                v395 = mDNSLogCategory_Default_redacted;
              }

              else
              {
                v395 = mDNSLogCategory_mDNS;
              }

              if (!os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_806;
              }

              v738 = v74;
              v396 = a5 != 0;
              v397 = *(v775 + 200);
              v398 = *(a3 + 4);
              v399 = __n[0];
              v400 = __n[0] + 2;
              if (v400 > v109)
              {
                v110 = 0;
LABEL_804:
                LODWORD(buf.tv_sec) = 67111171;
                HIDWORD(buf.tv_sec) = v397;
                LOWORD(buf.tv_nsec) = 1024;
                *(&buf.tv_nsec + 2) = v396;
                HIWORD(buf.tv_nsec) = 1024;
                *v779 = a4;
                *&v779[4] = 1024;
                *&v779[6] = v766;
                LOWORD(v780) = 1024;
                *(&v780 + 2) = v108;
                HIWORD(v780) = 1024;
                *v781 = v398;
                *&v781[4] = 2160;
                *&v781[6] = 1752392040;
                *&v781[14] = 1040;
                *&v781[16] = v400;
                *&v781[20] = 2101;
                *&v781[22] = v110;
                v489 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                v490 = v395;
                v496 = 64;
                goto LABEL_805;
              }
            }

            *v110 = __rev16(v398);
            v511 = v107;
            v512 = v397;
            memcpy(v110 + 1, v511, v399);
            v397 = v512;
            v396 = a5 != 0;
            goto LABEL_804;
          }
        }

        v195 = v27;
        if (v23)
        {
          v196 = mDNSLogCategory_Default;
        }

        else
        {
          v196 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v196 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_952;
          }
        }

        else
        {
          if (v23)
          {
            v196 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v196 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_952;
          }
        }

        v197 = *(a7 + 200);
        v198 = *(a3 + 4);
        LODWORD(buf.tv_sec) = 67110400;
        HIDWORD(buf.tv_sec) = v197;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = a5 != 0;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = a4;
        *&v779[4] = 1024;
        *&v779[6] = v25;
        LOWORD(v780) = 1024;
        *(&v780 + 2) = v195;
        HIWORD(v780) = 1024;
        *v781 = v198;
        v140 = "[R%u->mDNS] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
        goto LABEL_514;
      }
    }

    else
    {
      v58 = v776;
      v68 = (a3 + 12);
      LODWORD(v67) = *(a3 + 12);
      v69 = v67 < 0x201;
      if (!*(v776 + 340))
      {
        goto LABEL_98;
      }
    }

    if (v69)
    {
      v37 = 0;
      v92 = &word_1001787D0;
      v93 = 512;
      if (v67)
      {
LABEL_85:
        *&__n[1] = 0;
        __n[0] = 0;
        v94 = ResourceRecordGetRDataBytesPointer(a3, v92, v93, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_808;
        }

        v95 = v94;
        v761 = v27;
        v765 = v25;
        if (__n[0] >= 0x1FFuLL)
        {
          v96 = __n[0] + 2;
          v275 = malloc_type_malloc(__n[0] + 2, 0x7A5A2961uLL);
          if (!v275)
          {
            goto LABEL_1061;
          }

          v97 = v275;
          v74 = v275;
        }

        else
        {
          v74 = 0;
          v96 = 512;
          v97 = word_1001789D0;
        }

        if (v23)
        {
          v276 = mDNSLogCategory_Default;
        }

        else
        {
          v276 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v276 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_806;
          }

          v738 = v74;
          v309 = a5 != 0;
          v310 = *(v775 + 200);
          v311 = bswap32(*(v776 + 340)) >> 16;
          v312 = *(a3 + 4);
          v313 = __n[0];
          v314 = __n[0] + 2;
          if (v314 <= v96)
          {
            *v97 = __rev16(v312);
            v488 = v311;
            memcpy(v97 + 1, v95, v313);
            v311 = v488;
            v309 = a5 != 0;
          }

          else
          {
            v97 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v310;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v311;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = v309;
          *&v779[4] = 1024;
          *&v779[6] = a4;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v765;
          HIWORD(v780) = 1024;
          *v781 = v761;
          *&v781[4] = 1024;
          *&v781[6] = v312;
          *&v781[10] = 2160;
          *&v781[12] = 1752392040;
          *&v781[20] = 1040;
          *&v781[22] = v314;
          *&v781[26] = 2101;
          *&v781[28] = v97;
          v489 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v490 = v276;
        }

        else
        {
          if (v23)
          {
            v277 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v277 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_806;
          }

          v738 = v74;
          v278 = a5 != 0;
          v279 = *(v775 + 200);
          v280 = bswap32(*(v776 + 340)) >> 16;
          v281 = *(a3 + 4);
          v282 = __n[0];
          v283 = __n[0] + 2;
          if (v283 <= v96)
          {
            *v97 = __rev16(v281);
            v495 = v280;
            memcpy(v97 + 1, v95, v282);
            v280 = v495;
            v278 = a5 != 0;
          }

          else
          {
            v97 = 0;
          }

          LODWORD(buf.tv_sec) = 67111427;
          HIDWORD(buf.tv_sec) = v279;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v280;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = v278;
          *&v779[4] = 1024;
          *&v779[6] = a4;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v765;
          HIWORD(v780) = 1024;
          *v781 = v761;
          *&v781[4] = 1024;
          *&v781[6] = v281;
          *&v781[10] = 2160;
          *&v781[12] = 1752392040;
          *&v781[20] = 1040;
          *&v781[22] = v283;
          *&v781[26] = 2101;
          *&v781[28] = v97;
          v489 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          v490 = v277;
        }

        v496 = 70;
LABEL_805:
        _os_log_impl(&_mh_execute_header, v490, OS_LOG_TYPE_DEFAULT, v489, &buf, v496);
        v74 = v738;
        goto LABEL_806;
      }
    }

    else
    {
      v134 = malloc_type_malloc(v67, 0x7A5A2961uLL);
      if (!v134)
      {
        goto LABEL_1061;
      }

      v37 = v134;
      v93 = *v68;
      v92 = v134;
      if (*v68)
      {
        goto LABEL_85;
      }
    }

    v135 = v27;
    if (v23)
    {
      v136 = mDNSLogCategory_Default;
    }

    else
    {
      v136 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v136 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    else
    {
      if (v23)
      {
        v136 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v136 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    v137 = *(a7 + 200);
    v138 = bswap32(*(v58 + 340)) >> 16;
    v139 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110656;
    HIDWORD(buf.tv_sec) = v137;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v138;
    HIWORD(buf.tv_nsec) = 1024;
    *v779 = a5 != 0;
    *&v779[4] = 1024;
    *&v779[6] = a4;
    LOWORD(v780) = 1024;
    *(&v780 + 2) = v25;
    HIWORD(v780) = 1024;
    *v781 = v135;
    *&v781[4] = 1024;
    *&v781[6] = v139;
    v140 = "[R%u->Q%u] DNSServiceGetAddrInfo result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_613;
  }

  if (v30)
  {
    *(a7 + 208) = buf.tv_sec;
    v31 = *(a3 + 56);
    if (v31)
    {
      v32 = v25;
      v33 = dnssec_obj_resource_record_member_get_validation_result(v31);
      v35 = (a3 + 12);
      v34 = *(a3 + 12);
      v36 = v34 < 0x201;
      if (v33)
      {
        if (*(v776 + 340))
        {
          if (v34 >= 0x201)
          {
            v152 = malloc_type_malloc(v34, 0x81348F3CuLL);
            if (!v152)
            {
              goto LABEL_1061;
            }

            v37 = v152;
            v39 = *v35;
            v38 = v152;
            if (*v35)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v37 = 0;
            v38 = &word_1001787D0;
            v39 = 512;
            if (*(a3 + 12))
            {
LABEL_42:
              *&__n[1] = 0;
              __n[0] = 0;
              v40 = ResourceRecordGetRDataBytesPointer(a3, v38, v39, __n, &__n[1]);
              if (*&__n[1])
              {
                goto LABEL_892;
              }

              v41 = v40;
              v756 = v27;
              if (__n[0] < 0x1FFuLL)
              {
                v42 = 0;
                v43 = word_1001789D0;
                v734 = 512;
LABEL_517:
                v717 = v43;
                if (v23)
                {
                  v328 = mDNSLogCategory_Default;
                }

                else
                {
                  v328 = mDNSLogCategory_mDNS;
                }

                if (mDNS_SensitiveLoggingEnableCount && v328 != mDNSLogCategory_State)
                {
                  if (v23)
                  {
                    v329 = mDNSLogCategory_Default_redacted;
                  }

                  else
                  {
                    v329 = mDNSLogCategory_mDNS;
                  }

                  if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
                  {
                    v330 = a5 != 0;
                    v331 = *(v775 + 200);
                    v332 = bswap32(*(v776 + 340)) >> 16;
                    v333 = v26;
                    log = v329;
                    v696 = v42;
                    while (1)
                    {
                      if (!v333 || (v334 = *v333, v334 > 0x3F))
                      {
LABEL_531:
                        v335 = 257;
                        goto LABEL_878;
                      }

                      if (!*v333)
                      {
                        break;
                      }

                      v333 += v334 + 1;
                      if (v333 - v26 >= 256)
                      {
                        goto LABEL_531;
                      }
                    }

                    v335 = (v333 - v26 + 1);
LABEL_878:
                    v564 = *(a3 + 4);
                    v565 = __n[0];
                    v566 = __n[0] + 2;
                    if (v566 <= v734)
                    {
                      v567 = v717;
                      LOWORD(v717->isa) = __rev16(v564);
                      v672 = v331;
                      v682 = v566;
                      v752 = v332;
                      memcpy(&v717->isa + 2, v41, v565);
                      v331 = v672;
                      v566 = v682;
                      v332 = v752;
                      v330 = a5 != 0;
                    }

                    else
                    {
                      v567 = 0;
                    }

                    LODWORD(buf.tv_sec) = 67112451;
                    HIDWORD(buf.tv_sec) = v331;
                    LOWORD(buf.tv_nsec) = 1024;
                    *(&buf.tv_nsec + 2) = v332;
                    HIWORD(buf.tv_nsec) = 1024;
                    *v779 = v330;
                    *&v779[4] = 1024;
                    *&v779[6] = a4;
                    LOWORD(v780) = 1024;
                    *(&v780 + 2) = v32;
                    HIWORD(v780) = 2160;
                    *v781 = 1752392040;
                    *&v781[8] = 1040;
                    *&v781[10] = v335;
                    *&v781[14] = 2101;
                    *&v781[16] = v26;
                    *&v781[24] = 1024;
                    *&v781[26] = v756;
                    *&v781[30] = 1026;
                    *&v781[32] = v33;
                    *&v781[36] = 1024;
                    *&v781[38] = v564;
                    *&v781[42] = 2160;
                    *&v781[44] = 1752392040;
                    *&v781[52] = 1040;
                    *&v781[54] = v566;
                    *&v781[58] = 2101;
                    *&v781[60] = v567;
                    v556 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_887:
                    v563 = log;
                    goto LABEL_888;
                  }

                  goto LABEL_889;
                }

                if (!os_log_type_enabled(v328, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_889;
                }

                v362 = a5 != 0;
                v363 = *(v775 + 200);
                v364 = bswap32(*(v776 + 340)) >> 16;
                v365 = v26;
                v696 = v42;
                while (1)
                {
                  if (!v365 || (v366 = *v365, v366 > 0x3F))
                  {
LABEL_581:
                    v367 = 257;
                    goto LABEL_867;
                  }

                  if (!*v365)
                  {
                    break;
                  }

                  v365 += v366 + 1;
                  if (v365 - v26 >= 256)
                  {
                    goto LABEL_581;
                  }
                }

                v367 = (v365 - v26 + 1);
LABEL_867:
                v550 = *(a3 + 4);
                v551 = __n[0];
                v552 = __n[0] + 2;
                if (v552 <= v734)
                {
                  v553 = v717;
                  LOWORD(v717->isa) = __rev16(v550);
                  v554 = v41;
                  v680 = v552;
                  logh = v363;
                  v750 = v364;
                  v555 = v550;
                  memcpy(&v717->isa + 2, v554, v551);
                  v550 = v555;
                  v552 = v680;
                  v363 = logh;
                  v364 = v750;
                  v362 = a5 != 0;
                }

                else
                {
                  v553 = 0;
                }

                LODWORD(buf.tv_sec) = 67112451;
                HIDWORD(buf.tv_sec) = v363;
                LOWORD(buf.tv_nsec) = 1024;
                *(&buf.tv_nsec + 2) = v364;
                HIWORD(buf.tv_nsec) = 1024;
                *v779 = v362;
                *&v779[4] = 1024;
                *&v779[6] = a4;
                LOWORD(v780) = 1024;
                *(&v780 + 2) = v32;
                HIWORD(v780) = 2160;
                *v781 = 1752392040;
                *&v781[8] = 1040;
                *&v781[10] = v367;
                *&v781[14] = 2101;
                *&v781[16] = v26;
                *&v781[24] = 1024;
                *&v781[26] = v756;
                *&v781[30] = 1026;
                *&v781[32] = v33;
                *&v781[36] = 1024;
                *&v781[38] = v550;
                *&v781[42] = 2160;
                *&v781[44] = 1752392040;
                *&v781[52] = 1040;
                *&v781[54] = v552;
                *&v781[58] = 2101;
                *&v781[60] = v553;
                v556 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
                goto LABEL_876;
              }

              v734 = __n[0] + 2;
              v327 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
              if (v327)
              {
                v42 = v327;
                v43 = v327;
                goto LABEL_517;
              }

LABEL_1061:
              __break(1u);
              return;
            }
          }

          v153 = v27;
          if (v23)
          {
            v154 = mDNSLogCategory_Default;
          }

          else
          {
            v154 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v154 != mDNSLogCategory_State)
          {
            if (v23)
            {
              v154 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v154 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_951;
            }

            v155 = a5 != 0;
            v156 = *(a7 + 200);
            v157 = bswap32(*(v776 + 340)) >> 16;
            v158 = v26;
            while (1)
            {
              if (!v158 || (v159 = *v158, v159 > 0x3F))
              {
LABEL_189:
                v160 = 257;
                goto LABEL_815;
              }

              if (!*v158)
              {
                break;
              }

              v158 += v159 + 1;
              if (v158 - v26 >= 256)
              {
                goto LABEL_189;
              }
            }

            v160 = (v158 - v26 + 1);
            goto LABEL_815;
          }

          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
          {
            v155 = a5 != 0;
            v156 = *(a7 + 200);
            v157 = bswap32(*(v776 + 340)) >> 16;
            v247 = v26;
            while (1)
            {
              if (!v247 || (v248 = *v247, v248 > 0x3F))
              {
LABEL_403:
                v160 = 257;
                goto LABEL_815;
              }

              if (!*v247)
              {
                break;
              }

              v247 += v248 + 1;
              if (v247 - v26 >= 256)
              {
                goto LABEL_403;
              }
            }

            v160 = (v247 - v26 + 1);
LABEL_815:
            v516 = *(a3 + 4);
            LODWORD(buf.tv_sec) = 67111683;
            HIDWORD(buf.tv_sec) = v156;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v157;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = v155;
            *&v779[4] = 1024;
            *&v779[6] = a4;
            LOWORD(v780) = 1024;
            *(&v780 + 2) = v32;
            HIWORD(v780) = 2160;
            *v781 = 1752392040;
            *&v781[8] = 1040;
            *&v781[10] = v160;
            *&v781[14] = 2101;
            *&v781[16] = v26;
            *&v781[24] = 1024;
            *&v781[26] = v153;
            *&v781[30] = 1026;
            *&v781[32] = v33;
            *&v781[36] = 1024;
            *&v781[38] = v516;
            v501 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_820:
            v518 = v154;
            v519 = 76;
LABEL_900:
            _os_log_impl(&_mh_execute_header, v518, OS_LOG_TYPE_DEFAULT, v501, &buf, v519);
          }

LABEL_951:
          v58 = v776;
          goto LABEL_952;
        }

        if (v34 >= 0x201)
        {
          v34 = malloc_type_malloc(v34, 0x81348F3CuLL);
          if (!v34)
          {
            goto LABEL_1061;
          }

          v37 = v34;
          LODWORD(v34) = *v35;
          v142 = v34;
          v141 = v37;
        }

        else
        {
          v37 = 0;
          v141 = &word_1001787D0;
          v142 = 512;
        }

        v210 = v27;
        if (v34)
        {
          *&__n[1] = 0;
          __n[0] = 0;
          v211 = ResourceRecordGetRDataBytesPointer(a3, v141, v142, __n, &__n[1]);
          if (*&__n[1])
          {
            goto LABEL_951;
          }

          v212 = v211;
          if (__n[0] >= 0x1FFuLL)
          {
            v435 = __n[0] + 2;
            v213 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
            if (!v213)
            {
              goto LABEL_1061;
            }

            v714 = v435;
            v214 = v213;
          }

          else
          {
            v213 = 0;
            v214 = word_1001789D0;
            v714 = 512;
          }

          v697 = v214;
          v741 = v213;
          if (v23)
          {
            v436 = mDNSLogCategory_Default;
          }

          else
          {
            v436 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v436 != mDNSLogCategory_State)
          {
            if (v23)
            {
              v437 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v437 = mDNSLogCategory_mDNS;
            }

            if (os_log_type_enabled(v437, OS_LOG_TYPE_DEFAULT))
            {
              v438 = a5 != 0;
              v439 = *(v775 + 200);
              v440 = v26;
              loga = v437;
              while (1)
              {
                if (!v440 || (v441 = *v440, v441 > 0x3F))
                {
LABEL_711:
                  v442 = 257;
                  goto LABEL_938;
                }

                if (!*v440)
                {
                  break;
                }

                v440 += v441 + 1;
                if (v440 - v26 >= 256)
                {
                  goto LABEL_711;
                }
              }

              v442 = (v440 - v26 + 1);
LABEL_938:
              v612 = *(a3 + 4);
              v613 = __n[0];
              v614 = __n[0] + 2;
              if (v614 <= v714)
              {
                v615 = v697;
                *v697 = __rev16(v612);
                v616 = v212;
                v676 = v612;
                v617 = v439;
                v732 = v442;
                v618 = v614;
                memcpy(v697 + 1, v616, v613);
                v612 = v676;
                v438 = a5 != 0;
                v614 = v618;
                v442 = v732;
                v439 = v617;
              }

              else
              {
                v615 = 0;
              }

              LODWORD(buf.tv_sec) = 67112195;
              HIDWORD(buf.tv_sec) = v439;
              LOWORD(buf.tv_nsec) = 1024;
              *(&buf.tv_nsec + 2) = v438;
              HIWORD(buf.tv_nsec) = 1024;
              *v779 = a4;
              *&v779[4] = 1024;
              *&v779[6] = v32;
              strcpy(&v780, "p\bhash");
              HIBYTE(v780) = 0;
              *v781 = 0;
              *&v781[2] = 1040;
              *&v781[4] = v442;
              *&v781[8] = 2101;
              *&v781[10] = v26;
              *&v781[18] = 1024;
              *&v781[20] = v210;
              *&v781[24] = 1026;
              *&v781[26] = v33;
              *&v781[30] = 1024;
              *&v781[32] = v612;
              *&v781[36] = 2160;
              *&v781[38] = 1752392040;
              *&v781[46] = 1040;
              *&v781[48] = v614;
              *&v781[52] = 2101;
              *&v781[54] = v615;
              v604 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_947:
              v611 = loga;
              goto LABEL_948;
            }

            goto LABEL_949;
          }

          if (!os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_949;
          }

          v466 = a5 != 0;
          v467 = *(v775 + 200);
          v468 = v26;
          while (1)
          {
            if (!v468 || (v469 = *v468, v469 > 0x3F))
            {
LABEL_761:
              v470 = 257;
              goto LABEL_927;
            }

            if (!*v468)
            {
              break;
            }

            v468 += v469 + 1;
            if (v468 - v26 >= 256)
            {
              goto LABEL_761;
            }
          }

          v470 = (v468 - v26 + 1);
LABEL_927:
          v598 = *(a3 + 4);
          v599 = __n[0];
          v600 = __n[0] + 2;
          if (v600 <= v714)
          {
            v601 = v697;
            *v697 = __rev16(v598);
            v602 = v212;
            logj = v470;
            v730 = v467;
            v603 = v600;
            v674 = v598;
            memcpy(v697 + 1, v602, v599);
            v598 = v674;
            v466 = a5 != 0;
            v600 = v603;
            v470 = logj;
            v467 = v730;
          }

          else
          {
            v601 = 0;
          }

          LODWORD(buf.tv_sec) = 67112195;
          HIDWORD(buf.tv_sec) = v467;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v466;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = a4;
          *&v779[4] = 1024;
          *&v779[6] = v32;
          strcpy(&v780, "p\bhash");
          HIBYTE(v780) = 0;
          *v781 = 0;
          *&v781[2] = 1040;
          *&v781[4] = v470;
          *&v781[8] = 2101;
          *&v781[10] = v26;
          *&v781[18] = 1024;
          *&v781[20] = v210;
          *&v781[24] = 1026;
          *&v781[26] = v33;
          *&v781[30] = 1024;
          *&v781[32] = v598;
          *&v781[36] = 2160;
          *&v781[38] = 1752392040;
          *&v781[46] = 1040;
          *&v781[48] = v600;
          *&v781[52] = 2101;
          *&v781[54] = v601;
          v604 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          goto LABEL_936;
        }

        if (v23)
        {
          v113 = mDNSLogCategory_Default;
        }

        else
        {
          v113 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v113 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v234 = a5 != 0;
          v235 = *(a7 + 200);
          v388 = v26;
          while (1)
          {
            if (!v388 || (v389 = *v388, v389 > 0x3F))
            {
LABEL_601:
              v238 = 257;
              goto LABEL_894;
            }

            if (!*v388)
            {
              break;
            }

            v388 += v389 + 1;
            if (v388 - v26 >= 256)
            {
              goto LABEL_601;
            }
          }

          v238 = (v388 - v26 + 1);
        }

        else
        {
          if (v23)
          {
            v113 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v113 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v234 = a5 != 0;
          v235 = *(a7 + 200);
          v236 = v26;
          while (1)
          {
            if (!v236 || (v237 = *v236, v237 > 0x3F))
            {
LABEL_361:
              v238 = 257;
              goto LABEL_894;
            }

            if (!*v236)
            {
              break;
            }

            v236 += v237 + 1;
            if (v236 - v26 >= 256)
            {
              goto LABEL_361;
            }
          }

          v238 = (v236 - v26 + 1);
        }

LABEL_894:
        v572 = *(a3 + 4);
        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v235;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v234;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = a4;
        *&v779[4] = 1024;
        *&v779[6] = v32;
        strcpy(&v780, "p\bhash");
        HIBYTE(v780) = 0;
        *v781 = 0;
        *&v781[2] = 1040;
        *&v781[4] = v238;
        *&v781[8] = 2101;
        *&v781[10] = v26;
        *&v781[18] = 1024;
        *&v781[20] = v210;
        *&v781[24] = 1026;
        *&v781[26] = v33;
        *&v781[30] = 1024;
        *&v781[32] = v572;
        v501 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
        goto LABEL_899;
      }

      v25 = v32;
      if (!*(v776 + 340))
      {
        goto LABEL_89;
      }
    }

    else
    {
      v35 = (a3 + 12);
      LODWORD(v34) = *(a3 + 12);
      v36 = v34 < 0x201;
      if (!*(v776 + 340))
      {
LABEL_89:
        if (v36)
        {
          v37 = 0;
          v98 = &word_1001787D0;
          v99 = 512;
        }

        else
        {
          v34 = malloc_type_malloc(v34, 0x81348F3CuLL);
          if (!v34)
          {
            goto LABEL_1061;
          }

          v37 = v34;
          LODWORD(v34) = *v35;
          v99 = v34;
          v98 = v37;
        }

        v180 = v27;
        if (v34)
        {
          *&__n[1] = 0;
          __n[0] = 0;
          v181 = ResourceRecordGetRDataBytesPointer(a3, v98, v99, __n, &__n[1]);
          if (*&__n[1])
          {
            goto LABEL_951;
          }

          v182 = v181;
          v768 = v25;
          if (__n[0] >= 0x1FFuLL)
          {
            v401 = __n[0] + 2;
            v402 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
            if (!v402)
            {
              goto LABEL_1061;
            }

            v183 = v402;
            v736 = v401;
            v184 = v402;
          }

          else
          {
            v183 = 0;
            v184 = word_1001789D0;
            v736 = 512;
          }

          if (v23)
          {
            v403 = mDNSLogCategory_Default;
          }

          else
          {
            v403 = mDNSLogCategory_mDNS;
          }

          if (mDNS_SensitiveLoggingEnableCount && v403 != mDNSLogCategory_State)
          {
            if (v23)
            {
              v404 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v404 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_924;
            }

            v405 = a5 != 0;
            v406 = *(v775 + 200);
            v407 = v26;
            v720 = v404;
            while (1)
            {
              if (!v407 || (v408 = *v407, v408 > 0x3F))
              {
LABEL_644:
                v409 = 257;
                goto LABEL_913;
              }

              if (!*v407)
              {
                break;
              }

              v407 += v408 + 1;
              if (v407 - v26 >= 256)
              {
                goto LABEL_644;
              }
            }

            v409 = (v407 - v26 + 1);
LABEL_913:
            v586 = *(a3 + 4);
            v587 = __n[0];
            v588 = __n[0] + 2;
            if (v588 <= v736)
            {
              v589 = v184;
              *v184 = __rev16(v586);
              v590 = v184 + 1;
              v591 = v406;
              v711 = v409;
              v754 = v588;
              memcpy(v590, v182, v587);
              v588 = v754;
              v409 = v711;
              v406 = v591;
              v405 = a5 != 0;
            }

            else
            {
              v589 = 0;
            }

            LODWORD(buf.tv_sec) = 67111939;
            HIDWORD(buf.tv_sec) = v406;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v405;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = a4;
            *&v779[4] = 1024;
            *&v779[6] = v768;
            strcpy(&v780, "p\bhash");
            HIBYTE(v780) = 0;
            *v781 = 0;
            *&v781[2] = 1040;
            *&v781[4] = v409;
            *&v781[8] = 2101;
            *&v781[10] = v26;
            *&v781[18] = 1024;
            *&v781[20] = v180;
            *&v781[24] = 1024;
            *&v781[26] = v586;
            *&v781[30] = 2160;
            *&v781[32] = 1752392040;
            *&v781[40] = 1040;
            *&v781[42] = v588;
            *&v781[46] = 2101;
            *&v781[48] = v589;
            v579 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            goto LABEL_922;
          }

          if (os_log_type_enabled(v403, OS_LOG_TYPE_DEFAULT))
          {
            v425 = a5 != 0;
            v426 = *(v775 + 200);
            v427 = v26;
            while (1)
            {
              if (!v427 || (v428 = *v427, v428 > 0x3F))
              {
LABEL_684:
                v429 = 257;
                goto LABEL_902;
              }

              if (!*v427)
              {
                break;
              }

              v427 += v428 + 1;
              if (v427 - v26 >= 256)
              {
                goto LABEL_684;
              }
            }

            v429 = (v427 - v26 + 1);
LABEL_902:
            v574 = *(a3 + 4);
            v575 = __n[0];
            v576 = __n[0] + 2;
            if (v576 <= v736)
            {
              *v184 = __rev16(v574);
              v577 = v182;
              v709 = v429;
              v578 = v576;
              v728 = v574;
              memcpy(v184 + 1, v577, v575);
              v574 = v728;
              v576 = v578;
              v429 = v709;
              v425 = a5 != 0;
            }

            else
            {
              v184 = 0;
            }

            LODWORD(buf.tv_sec) = 67111939;
            HIDWORD(buf.tv_sec) = v426;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v425;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = a4;
            *&v779[4] = 1024;
            *&v779[6] = v768;
            strcpy(&v780, "p\bhash");
            HIBYTE(v780) = 0;
            *v781 = 0;
            *&v781[2] = 1040;
            *&v781[4] = v429;
            *&v781[8] = 2101;
            *&v781[10] = v26;
            *&v781[18] = 1024;
            *&v781[20] = v180;
            *&v781[24] = 1024;
            *&v781[26] = v574;
            *&v781[30] = 2160;
            *&v781[32] = 1752392040;
            *&v781[40] = 1040;
            *&v781[42] = v576;
            *&v781[46] = 2101;
            *&v781[48] = v184;
            v579 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_911:
            v585 = v403;
LABEL_923:
            _os_log_impl(&_mh_execute_header, v585, OS_LOG_TYPE_DEFAULT, v579, &buf, 0x5Au);
            goto LABEL_924;
          }

          goto LABEL_924;
        }

        if (v23)
        {
          v199 = mDNSLogCategory_Default;
        }

        else
        {
          v199 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v199 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v200 = a5 != 0;
          v201 = *(a7 + 200);
          v321 = v26;
          while (1)
          {
            if (!v321 || (v322 = *v321, v322 > 0x3F))
            {
LABEL_504:
              v204 = 257;
              goto LABEL_845;
            }

            if (!*v321)
            {
              break;
            }

            v321 += v322 + 1;
            if (v321 - v26 >= 256)
            {
              goto LABEL_504;
            }
          }

          v204 = (v321 - v26 + 1);
        }

        else
        {
          if (v23)
          {
            v199 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v199 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_951;
          }

          v200 = a5 != 0;
          v201 = *(a7 + 200);
          v202 = v26;
          while (1)
          {
            if (!v202 || (v203 = *v202, v203 > 0x3F))
            {
LABEL_279:
              v204 = 257;
              goto LABEL_845;
            }

            if (!*v202)
            {
              break;
            }

            v202 += v203 + 1;
            if (v202 - v26 >= 256)
            {
              goto LABEL_279;
            }
          }

          v204 = (v202 - v26 + 1);
        }

LABEL_845:
        v542 = *(a3 + 4);
        LODWORD(buf.tv_sec) = 67111171;
        HIDWORD(buf.tv_sec) = v201;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v200;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = a4;
        *&v779[4] = 1024;
        *&v779[6] = v25;
        strcpy(&v780, "p\bhash");
        HIBYTE(v780) = 0;
        *v781 = 0;
        *&v781[2] = 1040;
        *&v781[4] = v204;
        *&v781[8] = 2101;
        *&v781[10] = v26;
        *&v781[18] = 1024;
        *&v781[20] = v180;
        *&v781[24] = 1024;
        *&v781[26] = v542;
        v501 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
        goto LABEL_850;
      }
    }

    if (v36)
    {
      v37 = 0;
      v77 = &word_1001787D0;
      v78 = 512;
      if (v34)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v111 = malloc_type_malloc(v34, 0x81348F3CuLL);
      if (!v111)
      {
        goto LABEL_1061;
      }

      v37 = v111;
      v78 = *v35;
      v77 = v111;
      if (*v35)
      {
LABEL_70:
        *&__n[1] = 0;
        __n[0] = 0;
        v79 = ResourceRecordGetRDataBytesPointer(a3, v77, v78, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_892;
        }

        v80 = v79;
        v759 = v27;
        v763 = v25;
        if (__n[0] >= 0x1FFuLL)
        {
          v83 = __n[0] + 2;
          v256 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
          if (!v256)
          {
            goto LABEL_1061;
          }

          v81 = v256;
          v82 = v256;
        }

        else
        {
          v81 = 0;
          v82 = word_1001789D0;
          v83 = 512;
        }

        if (v23)
        {
          v257 = mDNSLogCategory_Default;
        }

        else
        {
          v257 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v257 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_842;
          }

          v293 = a5 != 0;
          v294 = *(v775 + 200);
          v295 = bswap32(*(v776 + 340)) >> 16;
          v296 = v26;
          while (1)
          {
            if (!v296 || (v297 = *v296, v297 > 0x3F))
            {
LABEL_482:
              v298 = v83;
              v299 = v82;
              v300 = 257;
              goto LABEL_822;
            }

            if (!*v296)
            {
              break;
            }

            v296 += v297 + 1;
            if (v296 - v26 >= 256)
            {
              goto LABEL_482;
            }
          }

          v298 = v83;
          v299 = v82;
          v300 = (v296 - v26 + 1);
LABEL_822:
          v520 = *(a3 + 4);
          v521 = __n[0];
          v522 = __n[0] + 2;
          if (v522 <= v298)
          {
            *v299 = __rev16(v520);
            v523 = v80;
            v724 = v295;
            v746 = v522;
            v524 = v520;
            memcpy(v299 + 1, v523, v521);
            v520 = v524;
            v522 = v746;
            v295 = v724;
            v293 = a5 != 0;
          }

          else
          {
            v299 = 0;
          }

          LODWORD(buf.tv_sec) = 67112195;
          HIDWORD(buf.tv_sec) = v294;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v295;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = v293;
          *&v779[4] = 1024;
          *&v779[6] = a4;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v763;
          HIWORD(v780) = 2160;
          *v781 = 1752392040;
          *&v781[8] = 1040;
          *&v781[10] = v300;
          *&v781[14] = 2101;
          *&v781[16] = v26;
          *&v781[24] = 1024;
          *&v781[26] = v759;
          *&v781[30] = 1024;
          *&v781[32] = v520;
          *&v781[36] = 2160;
          *&v781[38] = 1752392040;
          *&v781[46] = 1040;
          *&v781[48] = v522;
          *&v781[52] = 2101;
          *&v781[54] = v299;
          v525 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
          goto LABEL_841;
        }

        if (v23)
        {
          v257 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v257 = mDNSLogCategory_mDNS;
        }

        if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
        {
          v258 = a5 != 0;
          v259 = *(v775 + 200);
          v260 = bswap32(*(v776 + 340)) >> 16;
          v261 = v26;
          while (1)
          {
            if (!v261 || (v262 = *v261, v262 > 0x3F))
            {
LABEL_432:
              v263 = v83;
              v264 = v82;
              v265 = 257;
              goto LABEL_832;
            }

            if (!*v261)
            {
              break;
            }

            v261 += v262 + 1;
            if (v261 - v26 >= 256)
            {
              goto LABEL_432;
            }
          }

          v263 = v83;
          v264 = v82;
          v265 = (v261 - v26 + 1);
LABEL_832:
          v531 = *(a3 + 4);
          v532 = __n[0];
          v533 = __n[0] + 2;
          if (v533 <= v263)
          {
            *v264 = __rev16(v531);
            v748 = v257;
            v534 = v259;
            v535 = v260;
            v703 = v265;
            v726 = v531;
            memcpy(v264 + 1, v80, v532);
            v531 = v726;
            v265 = v703;
            v260 = v535;
            v259 = v534;
            v257 = v748;
            v258 = a5 != 0;
          }

          else
          {
            v264 = 0;
          }

          LODWORD(buf.tv_sec) = 67112195;
          HIDWORD(buf.tv_sec) = v259;
          LOWORD(buf.tv_nsec) = 1024;
          *(&buf.tv_nsec + 2) = v260;
          HIWORD(buf.tv_nsec) = 1024;
          *v779 = v258;
          *&v779[4] = 1024;
          *&v779[6] = a4;
          LOWORD(v780) = 1024;
          *(&v780 + 2) = v763;
          HIWORD(v780) = 2160;
          *v781 = 1752392040;
          *&v781[8] = 1040;
          *&v781[10] = v265;
          *&v781[14] = 2101;
          *&v781[16] = v26;
          *&v781[24] = 1024;
          *&v781[26] = v759;
          *&v781[30] = 1024;
          *&v781[32] = v531;
          *&v781[36] = 2160;
          *&v781[38] = 1752392040;
          *&v781[46] = 1040;
          *&v781[48] = v533;
          *&v781[52] = 2101;
          *&v781[54] = v264;
          v525 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
LABEL_841:
          _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, v525, &buf, 0x60u);
          goto LABEL_842;
        }

        goto LABEL_842;
      }
    }

    v112 = v27;
    if (v23)
    {
      v113 = mDNSLogCategory_Default;
    }

    else
    {
      v113 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v113 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_951;
      }

      v114 = a5 != 0;
      v115 = *(a7 + 200);
      v116 = bswap32(*(v776 + 340)) >> 16;
      v230 = v26;
      while (1)
      {
        if (!v230 || (v231 = *v230, v231 > 0x3F))
        {
LABEL_335:
          v119 = 257;
          goto LABEL_786;
        }

        if (!*v230)
        {
          break;
        }

        v230 += v231 + 1;
        if (v230 - v26 >= 256)
        {
          goto LABEL_335;
        }
      }

      v119 = (v230 - v26 + 1);
    }

    else
    {
      if (v23)
      {
        v113 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v113 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_951;
      }

      v114 = a5 != 0;
      v115 = *(a7 + 200);
      v116 = bswap32(*(v776 + 340)) >> 16;
      v117 = v26;
      while (1)
      {
        if (!v117 || (v118 = *v117, v118 > 0x3F))
        {
LABEL_119:
          v119 = 257;
          goto LABEL_786;
        }

        if (!*v117)
        {
          break;
        }

        v117 += v118 + 1;
        if (v117 - v26 >= 256)
        {
          goto LABEL_119;
        }
      }

      v119 = (v117 - v26 + 1);
    }

LABEL_786:
    v500 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67111427;
    HIDWORD(buf.tv_sec) = v115;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v116;
    HIWORD(buf.tv_nsec) = 1024;
    *v779 = v114;
    *&v779[4] = 1024;
    *&v779[6] = a4;
    LOWORD(v780) = 1024;
    *(&v780 + 2) = v25;
    HIWORD(v780) = 2160;
    *v781 = 1752392040;
    *&v781[8] = 1040;
    *&v781[10] = v119;
    *&v781[14] = 2101;
    *&v781[16] = v26;
    *&v781[24] = 1024;
    *&v781[26] = v112;
    *&v781[30] = 1024;
    *&v781[32] = v500;
    v501 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_899;
  }

  v55 = *(a3 + 56);
  if (!v55)
  {
    v58 = v776;
    v60 = (a3 + 12);
    LODWORD(v59) = *(a3 + 12);
    v61 = v59 < 0x201;
    if (!*(v776 + 340))
    {
LABEL_95:
      if (v61)
      {
        v37 = 0;
        v102 = &word_1001787D0;
        v103 = 512;
      }

      else
      {
        v59 = malloc_type_malloc(v59, 0x81348F3CuLL);
        if (!v59)
        {
          goto LABEL_1061;
        }

        v37 = v59;
        LODWORD(v59) = *v60;
        v103 = v59;
        v102 = v37;
      }

      v189 = v27;
      if (v59)
      {
        *&__n[1] = 0;
        __n[0] = 0;
        v190 = ResourceRecordGetRDataBytesPointer(a3, v102, v103, __n, &__n[1]);
        if (*&__n[1])
        {
          goto LABEL_952;
        }

        v191 = v190;
        v770 = v25;
        if (__n[0] >= 0x1FFuLL)
        {
          v193 = __n[0] + 2;
          v418 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
          if (!v418)
          {
            goto LABEL_1061;
          }

          v131 = v418;
          v192 = v418;
        }

        else
        {
          v131 = 0;
          v192 = word_1001789D0;
          v193 = 512;
        }

        if (v23)
        {
          v419 = mDNSLogCategory_Default;
        }

        else
        {
          v419 = mDNSLogCategory_mDNS;
        }

        if (mDNS_SensitiveLoggingEnableCount && v419 != mDNSLogCategory_State)
        {
          if (v23)
          {
            v419 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v419 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_812;
          }

          v420 = a5 != 0;
          v421 = *(v775 + 200);
          v422 = *(a3 + 4);
          v423 = __n[0];
          v424 = __n[0] + 2;
          if (v424 > v193)
          {
            v192 = 0;
LABEL_810:
            LODWORD(buf.tv_sec) = 67111171;
            HIDWORD(buf.tv_sec) = v421;
            LOWORD(buf.tv_nsec) = 1024;
            *(&buf.tv_nsec + 2) = v420;
            HIWORD(buf.tv_nsec) = 1024;
            *v779 = a4;
            *&v779[4] = 1024;
            *&v779[6] = v770;
            LOWORD(v780) = 1024;
            *(&v780 + 2) = v189;
            HIWORD(v780) = 1024;
            *v781 = v422;
            *&v781[4] = 2160;
            *&v781[6] = 1752392040;
            *&v781[14] = 1040;
            *&v781[16] = v424;
            *&v781[20] = 2101;
            *&v781[22] = v192;
            v493 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            v494 = v419;
            v499 = 64;
            goto LABEL_811;
          }

          goto LABEL_809;
        }

        if (os_log_type_enabled(v419, OS_LOG_TYPE_DEFAULT))
        {
          v420 = a5 != 0;
          v421 = *(v775 + 200);
          v422 = *(a3 + 4);
          v423 = __n[0];
          v424 = __n[0] + 2;
          if (v424 > v193)
          {
            v192 = 0;
            goto LABEL_810;
          }

LABEL_809:
          *v192 = __rev16(v422);
          v513 = v191;
          v514 = v422;
          v745 = v421;
          memcpy(v192 + 1, v513, v423);
          v421 = v745;
          v420 = a5 != 0;
          v422 = v514;
          goto LABEL_810;
        }

LABEL_812:
        a7 = v775;
        v58 = v776;
        if (!v131)
        {
          goto LABEL_952;
        }

        v515 = v131;
LABEL_860:
        free(v515);
        goto LABEL_952;
      }

      if (v23)
      {
        v196 = mDNSLogCategory_Default;
      }

      else
      {
        v196 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v196 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_952;
        }
      }

      else
      {
        if (v23)
        {
          v196 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v196 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_952;
        }
      }

      v325 = *(a7 + 200);
      v326 = *(a3 + 4);
      LODWORD(buf.tv_sec) = 67110400;
      HIDWORD(buf.tv_sec) = v325;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = a5 != 0;
      HIWORD(buf.tv_nsec) = 1024;
      *v779 = a4;
      *&v779[4] = 1024;
      *&v779[6] = v25;
      LOWORD(v780) = 1024;
      *(&v780 + 2) = v189;
      HIWORD(v780) = 1024;
      *v781 = v326;
      v140 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_514:
      v254 = v196;
      v255 = 38;
      goto LABEL_614;
    }

    goto LABEL_80;
  }

  v56 = v25;
  v57 = dnssec_obj_resource_record_member_get_validation_result(v55);
  v58 = v776;
  v60 = (a3 + 12);
  v59 = *(a3 + 12);
  v61 = v59 < 0x201;
  if (!v57)
  {
    v25 = v56;
    if (!*(v776 + 340))
    {
      goto LABEL_95;
    }

LABEL_80:
    if (v61)
    {
      v37 = 0;
      v90 = &word_1001787D0;
      v91 = 512;
    }

    else
    {
      v59 = malloc_type_malloc(v59, 0x81348F3CuLL);
      if (!v59)
      {
        goto LABEL_1061;
      }

      v37 = v59;
      LODWORD(v59) = *v60;
      v91 = v59;
      v90 = v37;
    }

    v128 = v27;
    if (v59)
    {
      *&__n[1] = 0;
      __n[0] = 0;
      v129 = ResourceRecordGetRDataBytesPointer(a3, v90, v91, __n, &__n[1]);
      if (*&__n[1])
      {
        goto LABEL_952;
      }

      v130 = v129;
      v767 = v25;
      if (__n[0] >= 0x1FFuLL)
      {
        v133 = __n[0] + 2;
        v284 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
        if (!v284)
        {
          goto LABEL_1061;
        }

        v131 = v284;
        v132 = v284;
      }

      else
      {
        v131 = 0;
        v132 = word_1001789D0;
        v133 = 512;
      }

      if (v23)
      {
        v285 = mDNSLogCategory_Default;
      }

      else
      {
        v285 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v285 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_812;
        }

        v315 = a5 != 0;
        v316 = *(v775 + 200);
        v317 = bswap32(*(v776 + 340)) >> 16;
        v318 = *(a3 + 4);
        v319 = __n[0];
        v320 = __n[0] + 2;
        if (v320 <= v133)
        {
          *v132 = __rev16(v318);
          v491 = v130;
          v722 = v318;
          v743 = v316;
          v492 = v317;
          memcpy(v132 + 1, v491, v319);
          v317 = v492;
          v316 = v743;
          v315 = a5 != 0;
          v318 = v722;
        }

        else
        {
          v132 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v316;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v317;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = v315;
        *&v779[4] = 1024;
        *&v779[6] = a4;
        LOWORD(v780) = 1024;
        *(&v780 + 2) = v767;
        HIWORD(v780) = 1024;
        *v781 = v128;
        *&v781[4] = 1024;
        *&v781[6] = v318;
        *&v781[10] = 2160;
        *&v781[12] = 1752392040;
        *&v781[20] = 1040;
        *&v781[22] = v320;
        *&v781[26] = 2101;
        *&v781[28] = v132;
        v493 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v494 = v285;
      }

      else
      {
        if (v23)
        {
          v286 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v286 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_812;
        }

        v287 = a5 != 0;
        v288 = *(v775 + 200);
        v289 = bswap32(*(v776 + 340)) >> 16;
        v290 = *(a3 + 4);
        v291 = __n[0];
        v292 = __n[0] + 2;
        if (v292 <= v133)
        {
          *v132 = __rev16(v290);
          v497 = v130;
          v723 = v290;
          v744 = v288;
          v498 = v289;
          memcpy(v132 + 1, v497, v291);
          v289 = v498;
          v288 = v744;
          v287 = a5 != 0;
          v290 = v723;
        }

        else
        {
          v132 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v288;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v289;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = v287;
        *&v779[4] = 1024;
        *&v779[6] = a4;
        LOWORD(v780) = 1024;
        *(&v780 + 2) = v767;
        HIWORD(v780) = 1024;
        *v781 = v128;
        *&v781[4] = 1024;
        *&v781[6] = v290;
        *&v781[10] = 2160;
        *&v781[12] = 1752392040;
        *&v781[20] = 1040;
        *&v781[22] = v292;
        *&v781[26] = 2101;
        *&v781[28] = v132;
        v493 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v494 = v286;
      }

      v499 = 70;
LABEL_811:
      _os_log_impl(&_mh_execute_header, v494, OS_LOG_TYPE_DEFAULT, v493, &buf, v499);
      goto LABEL_812;
    }

    if (v23)
    {
      v136 = mDNSLogCategory_Default;
    }

    else
    {
      v136 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v136 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    else
    {
      if (v23)
      {
        v136 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v136 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    v149 = *(a7 + 200);
    v150 = bswap32(*(v58 + 340)) >> 16;
    v151 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110656;
    HIDWORD(buf.tv_sec) = v149;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v150;
    HIWORD(buf.tv_nsec) = 1024;
    *v779 = a5 != 0;
    *&v779[4] = 1024;
    *&v779[6] = a4;
    LOWORD(v780) = 1024;
    *(&v780 + 2) = v25;
    HIWORD(v780) = 1024;
    *v781 = v128;
    *&v781[4] = 1024;
    *&v781[6] = v151;
    v140 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_613:
    v254 = v136;
    v255 = 44;
    goto LABEL_614;
  }

  if (!*(v776 + 340))
  {
    if (v59 >= 0x201)
    {
      v59 = malloc_type_malloc(v59, 0x81348F3CuLL);
      if (!v59)
      {
        goto LABEL_1061;
      }

      v37 = v59;
      LODWORD(v59) = *v60;
      v146 = v59;
      v145 = v37;
    }

    else
    {
      v37 = 0;
      v145 = &word_1001787D0;
      v146 = 512;
    }

    v220 = v27;
    if (v59)
    {
      *&__n[1] = 0;
      __n[0] = 0;
      v221 = ResourceRecordGetRDataBytesPointer(a3, v145, v146, __n, &__n[1]);
      if (*&__n[1])
      {
        goto LABEL_952;
      }

      v222 = v221;
      if (__n[0] >= 0x1FFuLL)
      {
        v224 = __n[0] + 2;
        v223 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
        if (!v223)
        {
          goto LABEL_1061;
        }

        v716 = v223;
      }

      else
      {
        v223 = 0;
        v716 = word_1001789D0;
        v224 = 512;
      }

      v740 = v223;
      if (v23)
      {
        v450 = mDNSLogCategory_Default;
      }

      else
      {
        v450 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v450 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v450, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_859;
        }

        v476 = a5 != 0;
        v477 = *(v775 + 200);
        v478 = *(a3 + 4);
        v479 = __n[0];
        v480 = __n[0] + 2;
        if (v480 <= v224)
        {
          v481 = v716;
          LOWORD(v716->isa) = __rev16(v478);
          v544 = v222;
          logf = v478;
          v705 = v480;
          v545 = v477;
          memcpy(&v716->isa + 2, v544, v479);
          v477 = v545;
          v480 = v705;
          v476 = a5 != 0;
          v478 = logf;
        }

        else
        {
          v481 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v477;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v476;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = a4;
        *&v779[4] = 1024;
        *&v779[6] = v56;
        LOWORD(v780) = 1024;
        *(&v780 + 2) = v220;
        HIWORD(v780) = 1026;
        *v781 = v57;
        *&v781[4] = 1024;
        *&v781[6] = v478;
        *&v781[10] = 2160;
        *&v781[12] = 1752392040;
        *&v781[20] = 1040;
        *&v781[22] = v480;
        *&v781[26] = 2101;
        *&v781[28] = v481;
        v506 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v507 = v450;
      }

      else
      {
        if (v23)
        {
          v451 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v451 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v451, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_859;
        }

        v452 = a5 != 0;
        v453 = *(v775 + 200);
        v454 = *(a3 + 4);
        v455 = __n[0];
        v456 = __n[0] + 2;
        if (v456 <= v224)
        {
          v457 = v716;
          LOWORD(v716->isa) = __rev16(v454);
          v547 = v222;
          logg = v454;
          v707 = v456;
          v548 = v453;
          memcpy(&v716->isa + 2, v547, v455);
          v453 = v548;
          v456 = v707;
          v452 = a5 != 0;
          v454 = logg;
        }

        else
        {
          v457 = 0;
        }

        LODWORD(buf.tv_sec) = 67111427;
        HIDWORD(buf.tv_sec) = v453;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v452;
        HIWORD(buf.tv_nsec) = 1024;
        *v779 = a4;
        *&v779[4] = 1024;
        *&v779[6] = v56;
        LOWORD(v780) = 1024;
        *(&v780 + 2) = v220;
        HIWORD(v780) = 1026;
        *v781 = v57;
        *&v781[4] = 1024;
        *&v781[6] = v454;
        *&v781[10] = 2160;
        *&v781[12] = 1752392040;
        *&v781[20] = 1040;
        *&v781[22] = v456;
        *&v781[26] = 2101;
        *&v781[28] = v457;
        v506 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        v507 = v451;
      }

      v510 = 70;
      goto LABEL_858;
    }

    if (v23)
    {
      v136 = mDNSLogCategory_Default;
    }

    else
    {
      v136 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v136 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    else
    {
      if (v23)
      {
        v136 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v136 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_952;
      }
    }

    v244 = *(a7 + 200);
    v245 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110656;
    HIDWORD(buf.tv_sec) = v244;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = a5 != 0;
    HIWORD(buf.tv_nsec) = 1024;
    *v779 = a4;
    *&v779[4] = 1024;
    *&v779[6] = v56;
    LOWORD(v780) = 1024;
    *(&v780 + 2) = v220;
    HIWORD(v780) = 1026;
    *v781 = v57;
    *&v781[4] = 1024;
    *&v781[6] = v245;
    v140 = "[R%u->mDNS] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_613;
  }

  if (v59 >= 0x201)
  {
    v59 = malloc_type_malloc(v59, 0x81348F3CuLL);
    if (!v59)
    {
      goto LABEL_1061;
    }

    v37 = v59;
    LODWORD(v59) = *v60;
    v63 = v59;
    v62 = v37;
  }

  else
  {
    v37 = 0;
    v62 = &word_1001787D0;
    v63 = 512;
  }

  v169 = v27;
  if (v59)
  {
    *&__n[1] = 0;
    __n[0] = 0;
    v170 = ResourceRecordGetRDataBytesPointer(a3, v62, v63, __n, &__n[1]);
    if (*&__n[1])
    {
      goto LABEL_952;
    }

    v171 = v170;
    if (__n[0] >= 0x1FFuLL)
    {
      v173 = __n[0] + 2;
      v172 = malloc_type_malloc(__n[0] + 2, 0x81348F3CuLL);
      if (!v172)
      {
        goto LABEL_1061;
      }

      v713 = v172;
    }

    else
    {
      v172 = 0;
      v713 = word_1001789D0;
      v173 = 512;
    }

    v740 = v172;
    if (v23)
    {
      v353 = mDNSLogCategory_Default;
    }

    else
    {
      v353 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v353 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v353, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_859;
      }

      v381 = a5 != 0;
      v382 = *(v775 + 200);
      v383 = bswap32(*(v776 + 340)) >> 16;
      v384 = *(a3 + 4);
      v385 = __n[0];
      v386 = __n[0] + 2;
      if (v386 <= v173)
      {
        v387 = v713;
        LOWORD(v713->isa) = __rev16(v384);
        v504 = v171;
        v678 = v383;
        logc = v384;
        v700 = v386;
        v505 = v382;
        memcpy(&v713->isa + 2, v504, v385);
        v383 = v678;
        v384 = logc;
        v382 = v505;
        v386 = v700;
        v381 = a5 != 0;
      }

      else
      {
        v387 = 0;
      }

      LODWORD(buf.tv_sec) = 67111683;
      HIDWORD(buf.tv_sec) = v382;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v383;
      HIWORD(buf.tv_nsec) = 1024;
      *v779 = v381;
      *&v779[4] = 1024;
      *&v779[6] = a4;
      LOWORD(v780) = 1024;
      *(&v780 + 2) = v56;
      HIWORD(v780) = 1024;
      *v781 = v169;
      *&v781[4] = 1026;
      *&v781[6] = v57;
      *&v781[10] = 1024;
      *&v781[12] = v384;
      *&v781[16] = 2160;
      *&v781[18] = 1752392040;
      *&v781[26] = 1040;
      *&v781[28] = v386;
      *&v781[32] = 2101;
      *&v781[34] = v387;
      v506 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
      v507 = v353;
      goto LABEL_800;
    }

    if (v23)
    {
      v354 = mDNSLogCategory_Default_redacted;
    }

    else
    {
      v354 = mDNSLogCategory_mDNS;
    }

    if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
    {
      v355 = a5 != 0;
      v356 = *(v775 + 200);
      v357 = bswap32(*(v776 + 340)) >> 16;
      v358 = *(a3 + 4);
      v359 = __n[0];
      v360 = __n[0] + 2;
      if (v360 <= v173)
      {
        v361 = v713;
        LOWORD(v713->isa) = __rev16(v358);
        v508 = v171;
        v679 = v357;
        loge = v358;
        v702 = v360;
        v509 = v356;
        memcpy(&v713->isa + 2, v508, v359);
        v357 = v679;
        v358 = loge;
        v356 = v509;
        v360 = v702;
        v355 = a5 != 0;
      }

      else
      {
        v361 = 0;
      }

      LODWORD(buf.tv_sec) = 67111683;
      HIDWORD(buf.tv_sec) = v356;
      LOWORD(buf.tv_nsec) = 1024;
      *(&buf.tv_nsec + 2) = v357;
      HIWORD(buf.tv_nsec) = 1024;
      *v779 = v355;
      *&v779[4] = 1024;
      *&v779[6] = a4;
      LOWORD(v780) = 1024;
      *(&v780 + 2) = v56;
      HIWORD(v780) = 1024;
      *v781 = v169;
      *&v781[4] = 1026;
      *&v781[6] = v57;
      *&v781[10] = 1024;
      *&v781[12] = v358;
      *&v781[16] = 2160;
      *&v781[18] = 1752392040;
      *&v781[26] = 1040;
      *&v781[28] = v360;
      *&v781[32] = 2101;
      *&v781[34] = v361;
      v506 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
      v507 = v354;
LABEL_800:
      v510 = 76;
LABEL_858:
      _os_log_impl(&_mh_execute_header, v507, OS_LOG_TYPE_DEFAULT, v506, &buf, v510);
    }

LABEL_859:
    a7 = v775;
    v58 = v776;
    v515 = v740;
    if (!v740)
    {
      goto LABEL_952;
    }

    goto LABEL_860;
  }

  if (v23)
  {
    v176 = mDNSLogCategory_Default;
  }

  else
  {
    v176 = mDNSLogCategory_mDNS;
  }

  if (!mDNS_SensitiveLoggingEnableCount || v176 == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_952;
    }

    goto LABEL_414;
  }

  if (v23)
  {
    v176 = mDNSLogCategory_Default_redacted;
  }

  else
  {
    v176 = mDNSLogCategory_mDNS;
  }

  if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
  {
LABEL_414:
    v251 = *(a7 + 200);
    v252 = bswap32(*(v776 + 340)) >> 16;
    v253 = *(a3 + 4);
    LODWORD(buf.tv_sec) = 67110912;
    HIDWORD(buf.tv_sec) = v251;
    LOWORD(buf.tv_nsec) = 1024;
    *(&buf.tv_nsec + 2) = v252;
    HIWORD(buf.tv_nsec) = 1024;
    *v779 = a5 != 0;
    *&v779[4] = 1024;
    *&v779[6] = a4;
    LOWORD(v780) = 1024;
    *(&v780 + 2) = v56;
    HIWORD(v780) = 1024;
    *v781 = v169;
    *&v781[4] = 1026;
    *&v781[6] = v57;
    *&v781[10] = 1024;
    *&v781[12] = v253;
    v140 = "[R%u->Q%u] DNSServiceQueryRecord result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    goto LABEL_415;
  }

LABEL_952:
  if (v37)
  {
    free(v37);
  }

  v626 = *(a3 + 24);
  v627 = v626 + 5;
  if (v626 + 5) < 6 && ((0x2Du >> v627))
  {
    v626 = dword_10010DF40[v627];
  }

  v628 = strlen(__s);
  v629 = *(a3 + 12);
  v630 = v628 + v629 + 23;
  if (!*(a7 + 290))
  {
    v632 = 0;
    goto LABEL_992;
  }

  v631 = 0;
  v632 = 0;
  if (!a5 || (v633 = *(a7 + 56)) == 0 || (v631 = 0, v632 = 0, v634 = *(a3 + 4), v634 > 0x1C) || ((1 << v634) & 0x10010002) == 0)
  {
    v639 = 0;
    goto LABEL_993;
  }

  *&__n[1] = 0;
  if (v634 != 28)
  {
    if (v634 == 16)
    {
      if (*(v633 + 16) != &_mdns_signed_browse_result_kind)
      {
        v635 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_985;
          }
        }

        else
        {
          v635 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_985;
          }
        }

        v641 = *(a7 + 200);
        v642 = bswap32(*(v58 + 340)) >> 16;
        LODWORD(buf.tv_sec) = 67109376;
        HIDWORD(buf.tv_sec) = v641;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v642;
        v638 = "[R%u->Q%u] queryrecord_result_reply mdns_signed_browse_result_downcast failed";
        goto LABEL_984;
      }

      ipv4 = _mdns_signed_browse_result_create_ex((*(v633 + 32) + 32), *(v633 + 24), v626, (*(a3 + 40) + 4), v629, &__n[1]);
      goto LABEL_1050;
    }

    if (v634 != 1)
    {
      goto LABEL_985;
    }
  }

  if (*(v633 + 16) != &_mdns_signed_resolve_result_kind)
  {
    v635 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_969;
      }
    }

    else
    {
      v635 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
LABEL_969:
        v636 = *(a7 + 200);
        v637 = bswap32(*(v58 + 340)) >> 16;
        LODWORD(buf.tv_sec) = 67109376;
        HIDWORD(buf.tv_sec) = v636;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v637;
        v638 = "[R%u->Q%u] queryrecord_result_reply mdns_signed_resolve_result_downcast failed";
LABEL_984:
        _os_log_impl(&_mh_execute_header, v635, OS_LOG_TYPE_ERROR, v638, &buf, 0xEu);
      }
    }

LABEL_985:
    v632 = 0;
    goto LABEL_986;
  }

  if (v634 == 1)
  {
    ipv4 = mdns_signed_hostname_result_create_ipv4(v633, (*(a3 + 40) + 4), &__n[1]);
  }

  else
  {
    ipv4 = mdns_signed_hostname_result_create_ipv6(v633, (*(a3 + 40) + 4), v626, &__n[1]);
  }

LABEL_1050:
  v632 = ipv4;
  if (!ipv4 || *&__n[1])
  {
LABEL_986:
    v643 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
LABEL_991:
        v644 = *(a7 + 200);
        v645 = bswap32(*(v58 + 340)) >> 16;
        LODWORD(buf.tv_sec) = 67109632;
        HIDWORD(buf.tv_sec) = v644;
        LOWORD(buf.tv_nsec) = 1024;
        *(&buf.tv_nsec + 2) = v645;
        HIWORD(buf.tv_nsec) = 2048;
        *v779 = *&__n[1];
        _os_log_impl(&_mh_execute_header, v643, OS_LOG_TYPE_ERROR, "[R%u->Q%u] queryrecord_result_reply signed_result failed %ld", &buf, 0x18u);
      }
    }

    else
    {
      v643 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_991;
      }
    }

LABEL_992:
    v639 = 0;
    v631 = 0;
    goto LABEL_993;
  }

  buf.tv_sec = 0;
  data = mdns_signed_result_get_data(ipv4, &buf);
  tv_sec = buf.tv_sec;
  if (buf.tv_sec >= 0x10000uLL)
  {
    v639 = 0;
  }

  else
  {
    v639 = data;
  }

  if (buf.tv_sec >= 0x10000uLL)
  {
    tv_sec = 0;
  }

  v631 = tv_sec;
  if (buf.tv_sec >= 0x10000uLL)
  {
    v671 = 0;
  }

  else
  {
    v671 = buf.tv_sec + 4;
  }

  v630 += v671;
LABEL_993:
  if (*&__n[3])
  {
    v630 += strlen(*&__n[3]) + 5;
  }

  if (*(v775 + 228) == 8)
  {
    v646 = 68;
  }

  else
  {
    v646 = 72;
  }

  reply = create_reply(v646, v630, v775);
  v648 = reply;
  v649 = v771 | 2;
  if (!a5)
  {
    v649 = v771;
  }

  if (a4)
  {
    v649 |= 0x80000000;
  }

  if (!*(v58 + 357))
  {
    v649 |= 0x40000000u;
  }

  *(reply + 11) = bswap32(v649);
  v650 = reply + 44;
  *(reply + 12) = bswap32(v626);
  *(reply + 13) = bswap32(v772);
  v651 = reply + 56;
  v652 = strlen(__s) + 1;
  memcpy(v651, __s, v652);
  v653 = &v651[v652];
  *v653 = bswap32(*(a3 + 4)) >> 16;
  *(v653 + 1) = bswap32(*(a3 + 6)) >> 16;
  v654 = &v651[v652 + 6];
  *(v653 + 2) = bswap32(*(a3 + 12)) >> 16;
  if (*(a3 + 12) && !putRData(0, v654, &v650[v630], a3))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "queryrecord_result_reply putRData failed %d", v650 + v630 - v654);
  }

  v655 = &v654[*(a3 + 12)];
  if (a5)
  {
    v656 = *(a3 + 8);
  }

  else
  {
    v656 = 0;
  }

  *v655 = bswap32(v656);
  v657 = v655 + 4;
  if (v639)
  {
    if (v655 != -4 && v657 <= &v657[v630] && v630 >= v631 + 4)
    {
      *(v655 + 2) = 1792;
      v655[6] = BYTE1(v631);
      v657 = v655 + 8;
      v655[7] = v631;
      if (v631)
      {
        memcpy(v655 + 8, v639, v631);
        v657 += v631;
      }
    }

    *(v648 + 6) |= 2u;
  }

  if (v632)
  {
    os_release(v632);
  }

  v658 = *&__n[3];
  if (!*&__n[3])
  {
    goto LABEL_1032;
  }

  v659 = strlen(*&__n[3]);
  v660 = v659 + 1;
  if (!((v659 + 1) >> 16))
  {
    if (v657)
    {
      if (v657 <= &v657[v630] && v630 >= v659 + 5)
      {
        *v657 = 2304;
        v657[2] = BYTE1(v660);
        v657[3] = v660;
        if (v659 != -1)
        {
          memcpy(v657 + 4, v658, v660);
        }
      }
    }
  }

  *(v648 + 6) |= 2u;
  v661 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_1032;
    }
  }

  else
  {
    v661 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_1032;
    }
  }

  v662 = *(v775 + 200);
  v663 = bswap32(*(v776 + 340)) >> 16;
  LODWORD(buf.tv_sec) = 67109891;
  HIDWORD(buf.tv_sec) = v662;
  LOWORD(buf.tv_nsec) = 1024;
  *(&buf.tv_nsec + 2) = v663;
  HIWORD(buf.tv_nsec) = 2160;
  *v779 = 1752392040;
  *&v779[8] = 2085;
  v780 = *&__n[3];
  _os_log_impl(&_mh_execute_header, v661, OS_LOG_TYPE_DEBUG, "[R%u->Q%u] queryrecord_result_reply add tracker %{sensitive, mask.hash}s", &buf, 0x22u);
LABEL_1032:
  if (v773 && &_NEHelperTrackerGetAppInfo)
  {
    v664 = &s_head_0;
    while (1)
    {
      v664 = *v664;
      if (!v664)
      {
        break;
      }

      if (v664[1] == v776)
      {
        if (_cache_item_get_tracker_state(v664))
        {
          Count = CFArrayGetCount(v664[6]);
          if (Count >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v664[6], Count - 1);
            CFDataGetLength(ValueAtIndex);
            buf.tv_sec = CFDataGetBytePtr(ValueAtIndex);
            v667 = CFArrayGetCount(v664[5]);
            if (v667)
            {
              CFArrayGetValueAtIndex(v664[5], v667 - 1);
            }

            NEHelperTrackerAddIPForAllFlowsRedactLogs();
          }
        }

        break;
      }
    }
  }

  if (*(v775 + 292))
  {
    if (v648)
    {
      free(v648);
    }
  }

  else
  {
    v668 = *(v775 + 24);
    if (!v668)
    {
      v668 = v775;
    }

    *v648 = 0;
    **(v668 + 104) = v648;
    *(v668 + 104) = v648;
  }
}

void ___handle_addrinfo_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return;
  }

  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  v6 = *(a1 + 32);
  if (!*(v6 + 64) || (*(v6 + 27) & 1) == 0)
  {
    v7 = *(v6 + 56);
    if (v7)
    {
      if (a3 == 1)
      {
        v8 = _handle_addrinfo_request_start(*(a1 + 40), v7);
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = -65570;
      }

      _return_queryrecord_request_error(*(a1 + 40), v8);
    }
  }

LABEL_10:

  KQueueUnlock("_handle_addrinfo_request_with_trust");
}

void _return_queryrecord_request_error(uint64_t a1, unsigned int a2)
{
  v4 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 200);
    if (*(a1 + 228) == 8)
    {
      v7 = "QueryRecord";
    }

    else
    {
      v7 = "GetAddrInfo";
    }
  }

  else
  {
    v4 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v6 = *(a1 + 200);
    if (*(a1 + 228) == 8)
    {
      v7 = "QueryRecord";
    }

    else
    {
      v7 = "GetAddrInfo";
    }
  }

  v11[0] = 67109634;
  v11[1] = v6;
  v12 = 2082;
  v13 = v7;
  v14 = 1024;
  v15 = a2;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[R%u] DNSService%{public}s _return_queryrecord_request_error: error(%d)", v11, 0x18u);
LABEL_15:
  if (*(a1 + 228) == 8)
  {
    v9 = 68;
  }

  else
  {
    v9 = 72;
  }

  reply = create_reply(v9, 23, a1);
  *(reply + 11) = 0;
  *(reply + 12) = 0;
  *(reply + 13) = bswap32(a2);
  *(reply + 7) = 0;
  *(reply + 63) = 0;
  append_reply(a1, reply);
}

void ___handle_addrinfo_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void port_mapping_termination_callback(uint64_t a1)
{
  v2 = *(a1 + 160);
  v3 = mDNSLogCategory_NAT;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_NAT == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 200);
      if (*(v2 + 180) == 1)
      {
        v6 = 16;
      }

      else
      {
        v6 = 32;
      }

      if (*(v2 + 180))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v3 = mDNSLogCategory_NAT_redacted;
    if (os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 200);
      if (*(v2 + 180) == 1)
      {
        v9 = 16;
      }

      else
      {
        v9 = 32;
      }

      if (*(v2 + 180))
      {
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }

LABEL_20:
      v10 = bswap32(v2[91]) >> 16;
      v11 = bswap32(*v2) >> 16;
      v12 = *(v2 + 47);
      v13 = *(a1 + 188);
      v15.tv_sec = 0;
      v15.tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW, &v15);
      v14 = LODWORD(v15.tv_sec) - *(a1 + 204);
      LODWORD(v15.tv_sec) = 67110914;
      HIDWORD(v15.tv_sec) = v5;
      LOWORD(v15.tv_nsec) = 1024;
      *(&v15.tv_nsec + 2) = v7;
      HIWORD(v15.tv_nsec) = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      v23 = 2082;
      v24 = a1 + 256;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceNATPortMappingCreate(%X, %u, %u, %u) STOP PID[%d](%{public}s) -- duration: %{mdns:time_duration}u", &v15, 0x36u);
    }
  }

  mDNS_Lock_(mDNSStorage, "mDNS_StopNATOperation", 1012);
  mDNS_StopNATOperation_internal(mDNSStorage, (v2 + 4));
  mDNS_Unlock_(mDNSStorage, "mDNS_StopNATOperation", 1014);
}

void port_mapping_create_request_callback(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 192);
  if (v2)
  {
    reply = create_reply(0x47, 25, v2);
    *(reply + 11) = 0;
    *(reply + 12) = bswap32(mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a2 + 144), 0));
    *(reply + 13) = bswap32(*(a2 + 168));
    v6 = *(v2 + 160);
    reply[56] = *(v6 + 160);
    reply[57] = *(v6 + 161);
    reply[58] = *(v6 + 162);
    reply[59] = *(v6 + 163);
    if (*(v6 + 180) == 1)
    {
      v7 = 16;
    }

    else
    {
      v7 = 32;
    }

    if (*(v6 + 180))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    reply[60] = v8;
    reply[61] = *(v6 + 182);
    reply[62] = *(v6 + 183);
    reply[63] = *(v6 + 168);
    reply[64] = *(v6 + 169);
    *(reply + 65) = bswap32(*(v6 + 43));
    v9 = mDNSLogCategory_NAT;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_NAT == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_NAT, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v10 = *(v2 + 200);
      v16 = *(v6 + 180);
      if (v16 == 1)
      {
        v12 = 16;
      }

      else
      {
        v12 = 32;
      }

      v13 = v16 == 0;
      v14 = v6[91];
      if (v13)
      {
        v12 = 0;
      }
    }

    else
    {
      v9 = mDNSLogCategory_NAT_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_NAT_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v10 = *(v2 + 200);
      v11 = *(v6 + 180);
      if (v11 == 1)
      {
        v12 = 16;
      }

      else
      {
        v12 = 32;
      }

      v13 = v11 == 0;
      v14 = v6[91];
      if (v13)
      {
        v12 = 0;
      }
    }

    v17 = *(v6 + 47);
    v18 = bswap32(*v6) >> 16;
    v19 = bswap32(v6[84]) >> 16;
    v20 = *(v6 + 43);
    v22[0] = 67111427;
    v22[1] = v10;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = bswap32(v14) >> 16;
    v27 = 1024;
    v28 = v18;
    v29 = 1024;
    v30 = v17;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 1045;
    v34 = 4;
    v35 = 2101;
    v36 = v6 + 80;
    v37 = 1024;
    v38 = v19;
    v39 = 1024;
    v40 = v20;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceNATPortMappingCreate(%X, %u, %u, %u) RESULT %{sensitive, mask.hash, network:in_addr}.4P:%u TTL %u", v22, 0x46u);
LABEL_27:
    if (*(v2 + 292))
    {
      free(reply);
    }

    else
    {
      v21 = *(v2 + 24);
      if (!v21)
      {
        v21 = v2;
      }

      *reply = 0;
      **(v21 + 104) = reply;
      *(v21 + 104) = reply;
    }

    return;
  }

  v15 = mDNSLogCategory_Default;

  LogMsgWithLevel(v15, OS_LOG_TYPE_DEFAULT, "port_mapping_create_request_callback called with unknown request_state object");
}

void enum_termination_callback(uint64_t a1)
{
  v1 = *(a1 + 120);
  if ((*v1 & 0x80) != 0)
  {
    if (mDNS_LoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumeration Cancel WAB Registration PID[%d](%s)", *(a1 + 184), *(a1 + 188), (a1 + 256));
    }

    uDNS_StopWABQueries(4);
  }

  else
  {
    if (mDNS_LoggingEnabled)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%3d: DNSServiceEnumeration Cancel WAB Browse PID[%d](%s)", *(a1 + 184), *(a1 + 188), (a1 + 256));
    }

    uDNS_StopWABQueries(3);
    mDNS_StopQuery(mDNSStorage, (v1 + 1400));
  }

  mDNS_StopQuery(mDNSStorage, (v1 + 8));

  mDNS_StopQuery(mDNSStorage, (v1 + 704));
}

void ___handle_regservice_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
    v5 = *(a1 + 32);
    if (*(v5 + 64) && (*(v5 + 27) & 1) != 0)
    {
      goto LABEL_19;
    }

    v6 = *(v5 + 56);
    if (!v6)
    {
      goto LABEL_19;
    }

    if (a3 == 1)
    {
      v7 = _handle_regservice_request_start(*(a1 + 40), v6);
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = -65570;
    }

    v8 = *(a1 + 40);
    v9 = *(v8 + 128);
    v10 = *(v9 + 16);
    if (v10)
    {
      free(v10);
      *(v9 + 16) = 0;
    }

    v13 = 0;
    if (GenerateNTDResponse(0, 0, v8, &v13, 0x41, 0, v7))
    {
      v11 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_18:
          v12 = *(v8 + 200);
          *buf = 67109376;
          v15 = v12;
          v16 = 1024;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceRegister _return_regservice_request_error: error(%d)", buf, 0xEu);
        }
      }

      else
      {
        v11 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      append_reply(v8, v13);
    }

LABEL_19:
    KQueueUnlock("_register_service_instance_with_trust");
  }
}

void ___handle_regservice_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ___handle_browse_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
    v5 = *(a1 + 32);
    if (*(v5 + 64) && (*(v5 + 27) & 1) != 0)
    {
      goto LABEL_16;
    }

    v6 = *(v5 + 56);
    if (!v6)
    {
      goto LABEL_16;
    }

    if (a3 == 1)
    {
      v7 = _handle_browse_request_start(*(a1 + 40), v6);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = -65570;
    }

    v8 = *(a1 + 40);
    v11 = 0;
    GenerateBrowseReply(0, 0, v8, &v11, 0, v7);
    v9 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v10 = *(v8 + 200);
        *buf = 67109376;
        v13 = v10;
        v14 = 1024;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse _return_browse_request_error: error (%d)", buf, 0xEu);
      }
    }

    else
    {
      v9 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    append_reply(v8, v11);
LABEL_16:
    KQueueUnlock("_handle_browse_request_with_trust");
  }
}

void ___handle_browse_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ___handle_queryrecord_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void ___handle_resolve_request_with_trust_block_invoke_2(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    pthread_mutex_lock((mDNSStorage[0] + 616));
    *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
    v5 = *(a1 + 32);
    if (*(v5 + 64) && (*(v5 + 27) & 1) != 0)
    {
      goto LABEL_16;
    }

    v6 = *(v5 + 56);
    if (!v6)
    {
      goto LABEL_16;
    }

    if (a3 == 1)
    {
      v7 = _handle_resolve_request_start(*(a1 + 40), v6);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = -65570;
    }

    v8 = *(a1 + 40);
    v9 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v10 = *(v8 + 200);
        v12[0] = 67109376;
        v12[1] = v10;
        v13 = 1024;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceResolve _return_resolve_request_error: error(%d)", v12, 0xEu);
      }
    }

    else
    {
      v9 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    reply = create_reply(0x43, 18, v8);
    *(reply + 11) = 0;
    *(reply + 12) = 0;
    *(reply + 52) = bswap32(v7);
    *(reply + 30) = 0;
    append_reply(v8, reply);
LABEL_16:
    KQueueUnlock("_handle_resolve_request_with_trust");
  }
}

void ___handle_resolve_request_with_trust_block_invoke(id a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void resolve_result_callback(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  bzero(__s, 0x3F1uLL);
  bzero(&v446, 0x3F0uLL);
  __src = 48;
  v8 = *(a2 + 176);
  v9 = (a2 + 376);
  v10 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v11 = *(a2 + 340);
  v441 = mDNSPlatformInterfaceIndexfromInterfaceID(a1, *(a3 + 3), 0);
  v12 = mDNS_DomainNameFNV1aHash((a2 + 376));
  v13 = *(v8 + 208);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  v440 = a2;
  if (!v13 || LODWORD(__tp.tv_sec) - v13 >= 300)
  {
    *(v8 + 208) = __tp.tv_sec;
    v29 = *(a3 + 7);
    if (v29)
    {
      v30 = v12;
      v31 = v8;
      validation_result = dnssec_obj_resource_record_member_get_validation_result(v29);
      v34 = a3 + 12;
      v33 = *(a3 + 6);
      v35 = v33 < 0x201;
      if (validation_result)
      {
        if (*(a2 + 340))
        {
          if (v33 >= 0x201)
          {
            v92 = malloc_type_malloc(v33, 0xFB8423B4uLL);
            if (!v92)
            {
              goto LABEL_627;
            }

            v20 = v92;
            v37 = *v34;
            v36 = v92;
            if (*v34)
            {
LABEL_16:
              __n_2 = 0;
              __n = 0;
              RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a3, v36, v37, &__n, &__n_2);
              if (!__n_2)
              {
                v39 = RDataBytesPointer;
                v432 = a3;
                if (__n >= 0x1FFuLL)
                {
                  v407 = __n + 2;
                  v158 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
                  if (!v158)
                  {
                    goto LABEL_627;
                  }

                  v420 = v158;
                  v399 = v158;
                }

                else
                {
                  v399 = word_1001789D0;
                  v407 = 512;
                  v420 = 0;
                }

                if (v11)
                {
                  v159 = mDNSLogCategory_Default;
                }

                else
                {
                  v159 = mDNSLogCategory_mDNS;
                }

                if (!mDNS_SensitiveLoggingEnableCount || v159 == mDNSLogCategory_State)
                {
                  if (!os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_440;
                  }

                  v175 = *(v31 + 200);
                  v176 = bswap32(*(v440 + 340)) >> 16;
                  v177 = a4 != 0;
                  v178 = v9;
                  v438 = v10;
                  while (1)
                  {
                    if (!v178 || (v179 = *v178, v179 > 0x3F))
                    {
LABEL_272:
                      v180 = 257;
                      goto LABEL_404;
                    }

                    if (!*v178)
                    {
                      break;
                    }

                    v178 += v179 + 1;
                    if (v178 - v9 >= 256)
                    {
                      goto LABEL_272;
                    }
                  }

                  v180 = (v178 - v9 + 1);
LABEL_404:
                  v251 = *(v432 + 2);
                  v252 = __n;
                  v253 = __n + 2;
                  if (v253 <= v407)
                  {
                    *v399 = __rev16(v251);
                    v255 = v39;
                    v414 = v175;
                    v394 = v253;
                    v256 = v180;
                    memcpy(v399 + 1, v255, v252);
                    v254 = v399;
                    v177 = a4 != 0;
                    v253 = v394;
                    v180 = v256;
                    v175 = v414;
                  }

                  else
                  {
                    v254 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v175;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v176;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v449 = v177;
                  *&v449[4] = 1024;
                  *&v449[6] = 0;
                  *&v449[10] = 1024;
                  *&v449[12] = v441;
                  *&v449[16] = 2160;
                  *&v449[18] = 1752392040;
                  *&v449[26] = 1040;
                  *&v449[28] = v180;
                  *&v449[32] = 2101;
                  *&v449[34] = v9;
                  *&v449[42] = 1024;
                  *&v449[44] = v30;
                  *&v449[48] = 1026;
                  *&v449[50] = validation_result;
                  *&v449[54] = 1024;
                  *&v449[56] = v251;
                  *&v449[60] = 2160;
                  *&v449[62] = 1752392040;
                  *&v449[70] = 1040;
                  *&v449[72] = v253;
                  *&v449[76] = 2101;
                  *&v449[78] = v254;
                  v257 = v159;
                }

                else
                {
                  if (v11)
                  {
                    v160 = mDNSLogCategory_Default_redacted;
                  }

                  else
                  {
                    v160 = mDNSLogCategory_mDNS;
                  }

                  if (!os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_440:
                    a3 = v432;
                    if (v420)
                    {
                      free(v420);
                    }

                    goto LABEL_442;
                  }

                  v161 = *(v31 + 200);
                  v162 = bswap32(*(v440 + 340)) >> 16;
                  v163 = v9;
                  v438 = v10;
                  while (1)
                  {
                    if (!v163 || (v164 = *v163, v164 > 0x3F))
                    {
LABEL_252:
                      v165 = 257;
                      goto LABEL_409;
                    }

                    if (!*v163)
                    {
                      break;
                    }

                    v163 += v164 + 1;
                    if (v163 - v9 >= 256)
                    {
                      goto LABEL_252;
                    }
                  }

                  v165 = (v163 - v9 + 1);
LABEL_409:
                  v258 = *(v432 + 2);
                  v259 = __n;
                  v260 = __n + 2;
                  if (v260 <= v407)
                  {
                    *v399 = __rev16(v258);
                    v262 = v39;
                    v392 = v161;
                    v395 = v260;
                    v415 = v160;
                    v263 = v162;
                    v264 = v258;
                    memcpy(v399 + 1, v262, v259);
                    v258 = v264;
                    v161 = v392;
                    v260 = v395;
                    v162 = v263;
                    v261 = v399;
                    v160 = v415;
                  }

                  else
                  {
                    v261 = 0;
                  }

                  LODWORD(__tp.tv_sec) = 67112451;
                  HIDWORD(__tp.tv_sec) = v161;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v162;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v449 = a4 != 0;
                  *&v449[4] = 1024;
                  *&v449[6] = 0;
                  *&v449[10] = 1024;
                  *&v449[12] = v441;
                  *&v449[16] = 2160;
                  *&v449[18] = 1752392040;
                  *&v449[26] = 1040;
                  *&v449[28] = v165;
                  *&v449[32] = 2101;
                  *&v449[34] = v9;
                  *&v449[42] = 1024;
                  *&v449[44] = v30;
                  *&v449[48] = 1026;
                  *&v449[50] = validation_result;
                  *&v449[54] = 1024;
                  *&v449[56] = v258;
                  *&v449[60] = 2160;
                  *&v449[62] = 1752392040;
                  *&v449[70] = 1040;
                  *&v449[72] = v260;
                  *&v449[76] = 2101;
                  *&v449[78] = v261;
                  v257 = v160;
                }

                _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x66u);
LABEL_439:
                v10 = v438;
                goto LABEL_440;
              }

              goto LABEL_442;
            }
          }

          else
          {
            v20 = 0;
            v36 = &word_1001787D0;
            v37 = 512;
            if (*(a3 + 6))
            {
              goto LABEL_16;
            }
          }

          if (v11)
          {
            v93 = mDNSLogCategory_Default;
          }

          else
          {
            v93 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v93 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_442;
            }

            v94 = *(v31 + 200);
            v95 = bswap32(*(v440 + 340)) >> 16;
            v96 = a4 != 0;
            v124 = v9;
            v98 = v441;
            while (1)
            {
              if (!v124 || (v125 = *v124, v125 > 0x3F))
              {
LABEL_184:
                v100 = 257;
                goto LABEL_382;
              }

              if (!*v124)
              {
                break;
              }

              v124 += v125 + 1;
              if (v124 - v9 >= 256)
              {
                goto LABEL_184;
              }
            }

            v100 = (v124 - v9 + 1);
          }

          else
          {
            if (v11)
            {
              v93 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v93 = mDNSLogCategory_mDNS;
            }

            if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_442;
            }

            v94 = *(v31 + 200);
            v95 = bswap32(*(v440 + 340)) >> 16;
            v96 = a4 != 0;
            v97 = v9;
            v98 = v441;
            while (1)
            {
              if (!v97 || (v99 = *v97, v99 > 0x3F))
              {
LABEL_98:
                v100 = 257;
                goto LABEL_382;
              }

              if (!*v97)
              {
                break;
              }

              v97 += v99 + 1;
              if (v97 - v9 >= 256)
              {
                goto LABEL_98;
              }
            }

            v100 = (v97 - v9 + 1);
          }

LABEL_382:
          v225 = *(a3 + 2);
          LODWORD(__tp.tv_sec) = 67111683;
          HIDWORD(__tp.tv_sec) = v94;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v95;
          HIWORD(__tp.tv_nsec) = 1024;
          *v449 = v96;
          *&v449[4] = 1024;
          *&v449[6] = 0;
          *&v449[10] = 1024;
          *&v449[12] = v98;
          *&v449[16] = 2160;
          *&v449[18] = 1752392040;
          *&v449[26] = 1040;
          *&v449[28] = v100;
          *&v449[32] = 2101;
          *&v449[34] = v9;
          *&v449[42] = 1024;
          *&v449[44] = v30;
          *&v449[48] = 1026;
          *&v449[50] = validation_result;
          *&v449[54] = 1024;
          *&v449[56] = v225;
          v226 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
          v227 = v93;
          v228 = 76;
LABEL_417:
          _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, v226, &__tp, v228);
          goto LABEL_442;
        }

        if (v33 >= 0x201)
        {
          v113 = malloc_type_malloc(v33, 0xFB8423B4uLL);
          if (!v113)
          {
            goto LABEL_627;
          }

          v20 = v113;
          v79 = *v34;
          v78 = v113;
          if (*v34)
          {
LABEL_74:
            __n_2 = 0;
            __n = 0;
            v80 = ResourceRecordGetRDataBytesPointer(a3, v78, v79, &__n, &__n_2);
            if (!__n_2)
            {
              v81 = v80;
              v432 = a3;
              v438 = v10;
              if (__n >= 0x1FFuLL)
              {
                v82 = __n + 2;
                v202 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
                if (!v202)
                {
                  goto LABEL_627;
                }

                v408 = v202;
                v420 = v202;
              }

              else
              {
                v408 = word_1001789D0;
                v420 = 0;
                v82 = 512;
              }

              if (v11)
              {
                v203 = mDNSLogCategory_Default;
              }

              else
              {
                v203 = mDNSLogCategory_mDNS;
              }

              if (!mDNS_SensitiveLoggingEnableCount || v203 == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_439;
                }

                v204 = *(v31 + 200);
                v205 = a4 != 0;
                v216 = v9;
                v388 = a4;
                while (1)
                {
                  if (!v216 || (v217 = *v216, v217 > 0x3F))
                  {
LABEL_362:
                    v208 = 257;
                    goto LABEL_431;
                  }

                  if (!*v216)
                  {
                    break;
                  }

                  v216 += v217 + 1;
                  if (v216 - v9 >= 256)
                  {
                    goto LABEL_362;
                  }
                }

                v208 = (v216 - v9 + 1);
LABEL_431:
                v278 = *(v432 + 2);
                v279 = __n;
                v280 = __n + 2;
                if (v280 <= v82)
                {
                  v281 = v408;
                  *v408 = __rev16(v278);
                  v282 = v81;
                  v283 = v204;
                  v396 = v208;
                  v404 = v280;
                  memcpy(v408 + 1, v282, v279);
                  v280 = v404;
                  v208 = v396;
                  v205 = a4 != 0;
                  v204 = v283;
                }

                else
                {
                  v281 = 0;
                }
              }

              else
              {
                if (v11)
                {
                  v203 = mDNSLogCategory_Default_redacted;
                }

                else
                {
                  v203 = mDNSLogCategory_mDNS;
                }

                if (!os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_439;
                }

                v204 = *(v31 + 200);
                v205 = a4 != 0;
                v206 = v9;
                v388 = a4;
                while (1)
                {
                  if (!v206 || (v207 = *v206, v207 > 0x3F))
                  {
LABEL_342:
                    v208 = 257;
                    goto LABEL_435;
                  }

                  if (!*v206)
                  {
                    break;
                  }

                  v206 += v207 + 1;
                  if (v206 - v9 >= 256)
                  {
                    goto LABEL_342;
                  }
                }

                v208 = (v206 - v9 + 1);
LABEL_435:
                v278 = *(v432 + 2);
                v284 = __n;
                v280 = __n + 2;
                if (v280 <= v82)
                {
                  v281 = v408;
                  *v408 = __rev16(v278);
                  v285 = v81;
                  v286 = v204;
                  v405 = v203;
                  v287 = v208;
                  v397 = v280;
                  memcpy(v408 + 1, v285, v284);
                  v280 = v397;
                  v208 = v287;
                  v203 = v405;
                  v205 = a4 != 0;
                  v204 = v286;
                }

                else
                {
                  v281 = 0;
                }
              }

              LODWORD(__tp.tv_sec) = 67112195;
              HIDWORD(__tp.tv_sec) = v204;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v205;
              HIWORD(__tp.tv_nsec) = 1024;
              *v449 = 0;
              *&v449[4] = 1024;
              *&v449[6] = v441;
              *&v449[10] = 2160;
              *&v449[12] = 1752392040;
              *&v449[20] = 1040;
              *&v449[22] = v208;
              *&v449[26] = 2101;
              *&v449[28] = v9;
              *&v449[36] = 1024;
              *&v449[38] = v30;
              *&v449[42] = 1026;
              *&v449[44] = validation_result;
              *&v449[48] = 1024;
              *&v449[50] = v278;
              *&v449[54] = 2160;
              *&v449[56] = 1752392040;
              *&v449[64] = 1040;
              *&v449[66] = v280;
              *&v449[70] = 2101;
              *&v449[72] = v281;
              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x60u);
              a4 = v388;
              goto LABEL_439;
            }

LABEL_442:
            v8 = v31;
            goto LABEL_443;
          }
        }

        else
        {
          v20 = 0;
          v78 = &word_1001787D0;
          v79 = 512;
          if (*(a3 + 6))
          {
            goto LABEL_74;
          }
        }

        if (v11)
        {
          v114 = mDNSLogCategory_Default;
        }

        else
        {
          v114 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v114 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_442;
          }

          v115 = *(v31 + 200);
          v116 = a4 != 0;
          v181 = v9;
          v118 = v441;
          while (1)
          {
            if (!v181 || (v182 = *v181, v182 > 0x3F))
            {
LABEL_282:
              v120 = 257;
              goto LABEL_416;
            }

            if (!*v181)
            {
              break;
            }

            v181 += v182 + 1;
            if (v181 - v9 >= 256)
            {
              goto LABEL_282;
            }
          }

          v120 = (v181 - v9 + 1);
        }

        else
        {
          if (v11)
          {
            v114 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v114 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_442;
          }

          v115 = *(v31 + 200);
          v116 = a4 != 0;
          v117 = v9;
          v118 = v441;
          while (1)
          {
            if (!v117 || (v119 = *v117, v119 > 0x3F))
            {
LABEL_156:
              v120 = 257;
              goto LABEL_416;
            }

            if (!*v117)
            {
              break;
            }

            v117 += v119 + 1;
            if (v117 - v9 >= 256)
            {
              goto LABEL_156;
            }
          }

          v120 = (v117 - v9 + 1);
        }

LABEL_416:
        v265 = *(a3 + 2);
        LODWORD(__tp.tv_sec) = 67111427;
        HIDWORD(__tp.tv_sec) = v115;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v116;
        HIWORD(__tp.tv_nsec) = 1024;
        *v449 = 0;
        *&v449[4] = 1024;
        *&v449[6] = v118;
        *&v449[10] = 2160;
        *&v449[12] = 1752392040;
        *&v449[20] = 1040;
        *&v449[22] = v120;
        *&v449[26] = 2101;
        *&v449[28] = v9;
        *&v449[36] = 1024;
        *&v449[38] = v30;
        *&v449[42] = 1026;
        *&v449[44] = validation_result;
        *&v449[48] = 1024;
        *&v449[50] = v265;
        v226 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
        v227 = v114;
        v228 = 70;
        goto LABEL_417;
      }

      v8 = v31;
      v12 = v30;
      if (!*(a2 + 340))
      {
LABEL_33:
        if (v35)
        {
          v20 = 0;
          v52 = &word_1001787D0;
          v53 = 512;
          if (v33)
          {
LABEL_35:
            __n_2 = 0;
            __n = 0;
            v54 = ResourceRecordGetRDataBytesPointer(a3, v52, v53, &__n, &__n_2);
            if (__n_2)
            {
              goto LABEL_443;
            }

            v55 = v54;
            v433 = a3;
            v437 = v10;
            if (__n >= 0x1FFuLL)
            {
              v56 = __n + 2;
              v185 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
              if (!v185)
              {
                goto LABEL_627;
              }

              v44 = v185;
              v423 = v185;
            }

            else
            {
              v44 = 0;
              v423 = word_1001789D0;
              v56 = 512;
            }

            if (v11)
            {
              v186 = mDNSLogCategory_Default;
            }

            else
            {
              v186 = mDNSLogCategory_mDNS;
            }

            if (!mDNS_SensitiveLoggingEnableCount || v186 == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_428;
              }

              v187 = *(v8 + 200);
              v188 = a4 != 0;
              v200 = v9;
              v430 = v12;
              v387 = a4;
              while (1)
              {
                if (!v200 || (v201 = *v200, v201 > 0x3F))
                {
LABEL_322:
                  v191 = 257;
                  goto LABEL_419;
                }

                if (!*v200)
                {
                  break;
                }

                v200 += v201 + 1;
                if (v200 - v9 >= 256)
                {
                  goto LABEL_322;
                }
              }

              v191 = (v200 - v9 + 1);
LABEL_419:
              v266 = *(v433 + 2);
              v267 = __n;
              v268 = __n + 2;
              if (v268 <= v56)
              {
                v269 = v423;
                *v423 = __rev16(v266);
                v270 = v55;
                v271 = v187;
                v272 = v266;
                v416 = v268;
                memcpy(v423 + 1, v270, v267);
                v268 = v416;
                v266 = v272;
                v188 = a4 != 0;
                v187 = v271;
              }

              else
              {
                v269 = 0;
              }

              goto LABEL_426;
            }

            if (v11)
            {
              v186 = mDNSLogCategory_Default_redacted;
            }

            else
            {
              v186 = mDNSLogCategory_mDNS;
            }

            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
            {
              v187 = *(v8 + 200);
              v188 = a4 != 0;
              v189 = v9;
              v430 = v12;
              v387 = a4;
              while (1)
              {
                if (!v189 || (v190 = *v189, v190 > 0x3F))
                {
LABEL_302:
                  v191 = 257;
                  goto LABEL_423;
                }

                if (!*v189)
                {
                  break;
                }

                v189 += v190 + 1;
                if (v189 - v9 >= 256)
                {
                  goto LABEL_302;
                }
              }

              v191 = (v189 - v9 + 1);
LABEL_423:
              v266 = *(v433 + 2);
              v273 = __n;
              v268 = __n + 2;
              if (v268 <= v56)
              {
                v269 = v423;
                *v423 = __rev16(v266);
                v274 = v55;
                v275 = v187;
                v417 = v186;
                v276 = v266;
                v277 = v268;
                memcpy(v423 + 1, v274, v273);
                v268 = v277;
                v266 = v276;
                v186 = v417;
                v188 = a4 != 0;
                v187 = v275;
              }

              else
              {
                v269 = 0;
              }

LABEL_426:
              LODWORD(__tp.tv_sec) = 67111939;
              HIDWORD(__tp.tv_sec) = v187;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v188;
              HIWORD(__tp.tv_nsec) = 1024;
              *v449 = 0;
              *&v449[4] = 1024;
              *&v449[6] = v441;
              *&v449[10] = 2160;
              *&v449[12] = 1752392040;
              *&v449[20] = 1040;
              *&v449[22] = v191;
              *&v449[26] = 2101;
              *&v449[28] = v9;
              *&v449[36] = 1024;
              *&v449[38] = v430;
              *&v449[42] = 1024;
              *&v449[44] = v266;
              *&v449[48] = 2160;
              *&v449[50] = 1752392040;
              *&v449[58] = 1040;
              *&v449[60] = v268;
              *&v449[64] = 2101;
              *&v449[66] = v269;
              v237 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              v247 = v186;
              v248 = 90;
              goto LABEL_427;
            }

LABEL_428:
            v10 = v437;
            a3 = v433;
            if (v44)
            {
              free(v44);
            }

            goto LABEL_443;
          }
        }

        else
        {
          v103 = malloc_type_malloc(v33, 0xFB8423B4uLL);
          if (!v103)
          {
            goto LABEL_627;
          }

          v20 = v103;
          v53 = *v34;
          v52 = v103;
          if (*v34)
          {
            goto LABEL_35;
          }
        }

        if (v11)
        {
          v104 = mDNSLogCategory_Default;
        }

        else
        {
          v104 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v104 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_443;
          }

          v105 = *(v8 + 200);
          v106 = a4 != 0;
          v154 = v9;
          v108 = v441;
          while (1)
          {
            if (!v154 || (v155 = *v154, v155 > 0x3F))
            {
LABEL_233:
              v110 = 257;
              goto LABEL_396;
            }

            if (!*v154)
            {
              break;
            }

            v154 += v155 + 1;
            if (v154 - v9 >= 256)
            {
              goto LABEL_233;
            }
          }

          v110 = (v154 - v9 + 1);
        }

        else
        {
          if (v11)
          {
            v104 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v104 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_443;
          }

          v105 = *(v8 + 200);
          v106 = a4 != 0;
          v107 = v9;
          v108 = v441;
          while (1)
          {
            if (!v107 || (v109 = *v107, v109 > 0x3F))
            {
LABEL_127:
              v110 = 257;
              goto LABEL_396;
            }

            if (!*v107)
            {
              break;
            }

            v107 += v109 + 1;
            if (v107 - v9 >= 256)
            {
              goto LABEL_127;
            }
          }

          v110 = (v107 - v9 + 1);
        }

LABEL_396:
        v249 = *(a3 + 2);
        LODWORD(__tp.tv_sec) = 67111171;
        HIDWORD(__tp.tv_sec) = v105;
        LOWORD(__tp.tv_nsec) = 1024;
        *(&__tp.tv_nsec + 2) = v106;
        HIWORD(__tp.tv_nsec) = 1024;
        *v449 = 0;
        *&v449[4] = 1024;
        *&v449[6] = v108;
        *&v449[10] = 2160;
        *&v449[12] = 1752392040;
        *&v449[20] = 1040;
        *&v449[22] = v110;
        *&v449[26] = 2101;
        *&v449[28] = v9;
        *&v449[36] = 1024;
        *&v449[38] = v12;
        *&v449[42] = 1024;
        *&v449[44] = v249;
        v68 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
        v129 = v104;
        v130 = 64;
        goto LABEL_397;
      }
    }

    else
    {
      v34 = a3 + 12;
      LODWORD(v33) = *(a3 + 6);
      v35 = v33 < 0x201;
      if (!*(a2 + 340))
      {
        goto LABEL_33;
      }
    }

    if (v35)
    {
      v20 = 0;
      v40 = &word_1001787D0;
      v41 = 512;
      if (v33)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v69 = malloc_type_malloc(v33, 0xFB8423B4uLL);
      if (!v69)
      {
        goto LABEL_627;
      }

      v20 = v69;
      v41 = *v34;
      v40 = v69;
      if (*v34)
      {
LABEL_22:
        __n_2 = 0;
        __n = 0;
        v42 = ResourceRecordGetRDataBytesPointer(a3, v40, v41, &__n, &__n_2);
        if (__n_2)
        {
          goto LABEL_443;
        }

        v43 = v42;
        v433 = a3;
        v437 = v10;
        if (__n >= 0x1FFuLL)
        {
          v45 = __n + 2;
          v140 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v140)
          {
            goto LABEL_627;
          }

          v44 = v140;
          v421 = v140;
        }

        else
        {
          v44 = 0;
          v421 = word_1001789D0;
          v45 = 512;
        }

        if (v11)
        {
          v141 = mDNSLogCategory_Default;
        }

        else
        {
          v141 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v141 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_428;
          }

          v148 = *(v8 + 200);
          v149 = bswap32(*(v440 + 340)) >> 16;
          v150 = a4 != 0;
          v151 = v9;
          v429 = v12;
          v387 = a4;
          while (1)
          {
            if (!v151 || (v152 = *v151, v152 > 0x3F))
            {
LABEL_226:
              v153 = 257;
              goto LABEL_384;
            }

            if (!*v151)
            {
              break;
            }

            v151 += v152 + 1;
            if (v151 - v9 >= 256)
            {
              goto LABEL_226;
            }
          }

          v153 = (v151 - v9 + 1);
LABEL_384:
          v229 = *(v433 + 2);
          v230 = __n;
          v231 = __n + 2;
          if (v231 <= v45)
          {
            v232 = v421;
            *v421 = __rev16(v229);
            v233 = v43;
            v234 = v148;
            v235 = v149;
            v402 = v150;
            v236 = v153;
            v412 = v229;
            memcpy(v421 + 1, v233, v230);
            v229 = v412;
            v153 = v236;
            v150 = v402;
            v149 = v235;
            v148 = v234;
          }

          else
          {
            v232 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v148;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v149;
          HIWORD(__tp.tv_nsec) = 1024;
          *v449 = v150;
          *&v449[4] = 1024;
          *&v449[6] = 0;
          *&v449[10] = 1024;
          *&v449[12] = v441;
          *&v449[16] = 2160;
          *&v449[18] = 1752392040;
          *&v449[26] = 1040;
          *&v449[28] = v153;
          *&v449[32] = 2101;
          *&v449[34] = v9;
          *&v449[42] = 1024;
          *&v449[44] = v429;
          *&v449[48] = 1024;
          *&v449[50] = v229;
          *&v449[54] = 2160;
          *&v449[56] = 1752392040;
          *&v449[64] = 1040;
          *&v449[66] = v231;
          *&v449[70] = 2101;
          *&v449[72] = v232;
          v237 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        else
        {
          if (v11)
          {
            v141 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v141 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_428;
          }

          v142 = *(v8 + 200);
          v143 = bswap32(*(v440 + 340)) >> 16;
          v144 = a4 != 0;
          v145 = v9;
          v428 = v12;
          v387 = a4;
          while (1)
          {
            if (!v145 || (v146 = *v145, v146 > 0x3F))
            {
LABEL_216:
              v147 = 257;
              goto LABEL_389;
            }

            if (!*v145)
            {
              break;
            }

            v145 += v146 + 1;
            if (v145 - v9 >= 256)
            {
              goto LABEL_216;
            }
          }

          v147 = (v145 - v9 + 1);
LABEL_389:
          v238 = *(v433 + 2);
          v239 = __n;
          v240 = __n + 2;
          if (v240 <= v45)
          {
            v241 = v421;
            *v421 = __rev16(v238);
            v242 = v43;
            v243 = v142;
            v244 = v143;
            v413 = v141;
            v245 = v144;
            v246 = v147;
            v403 = v238;
            memcpy(v421 + 1, v242, v239);
            v238 = v403;
            v147 = v246;
            v144 = v245;
            v141 = v413;
            v143 = v244;
            v142 = v243;
          }

          else
          {
            v241 = 0;
          }

          LODWORD(__tp.tv_sec) = 67112195;
          HIDWORD(__tp.tv_sec) = v142;
          LOWORD(__tp.tv_nsec) = 1024;
          *(&__tp.tv_nsec + 2) = v143;
          HIWORD(__tp.tv_nsec) = 1024;
          *v449 = v144;
          *&v449[4] = 1024;
          *&v449[6] = 0;
          *&v449[10] = 1024;
          *&v449[12] = v441;
          *&v449[16] = 2160;
          *&v449[18] = 1752392040;
          *&v449[26] = 1040;
          *&v449[28] = v147;
          *&v449[32] = 2101;
          *&v449[34] = v9;
          *&v449[42] = 1024;
          *&v449[44] = v428;
          *&v449[48] = 1024;
          *&v449[50] = v238;
          *&v449[54] = 2160;
          *&v449[56] = 1752392040;
          *&v449[64] = 1040;
          *&v449[66] = v240;
          *&v449[70] = 2101;
          *&v449[72] = v241;
          v237 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
        }

        v247 = v141;
        v248 = 96;
LABEL_427:
        _os_log_impl(&_mh_execute_header, v247, OS_LOG_TYPE_DEFAULT, v237, &__tp, v248);
        a4 = v387;
        goto LABEL_428;
      }
    }

    if (v11)
    {
      v70 = mDNSLogCategory_Default;
    }

    else
    {
      v70 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v70 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }

      v71 = *(v8 + 200);
      v72 = bswap32(*(v440 + 340)) >> 16;
      v73 = a4 != 0;
      v122 = v9;
      v75 = v441;
      while (1)
      {
        if (!v122 || (v123 = *v122, v123 > 0x3F))
        {
LABEL_177:
          v77 = 257;
          goto LABEL_370;
        }

        if (!*v122)
        {
          break;
        }

        v122 += v123 + 1;
        if (v122 - v9 >= 256)
        {
          goto LABEL_177;
        }
      }

      v77 = (v122 - v9 + 1);
    }

    else
    {
      if (v11)
      {
        v70 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v70 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }

      v71 = *(v8 + 200);
      v72 = bswap32(*(v440 + 340)) >> 16;
      v73 = a4 != 0;
      v74 = v9;
      v75 = v441;
      while (1)
      {
        if (!v74 || (v76 = *v74, v76 > 0x3F))
        {
LABEL_71:
          v77 = 257;
          goto LABEL_370;
        }

        if (!*v74)
        {
          break;
        }

        v74 += v76 + 1;
        if (v74 - v9 >= 256)
        {
          goto LABEL_71;
        }
      }

      v77 = (v74 - v9 + 1);
    }

LABEL_370:
    v221 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67111427;
    HIDWORD(__tp.tv_sec) = v71;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v72;
    HIWORD(__tp.tv_nsec) = 1024;
    *v449 = v73;
    *&v449[4] = 1024;
    *&v449[6] = 0;
    *&v449[10] = 1024;
    *&v449[12] = v75;
    *&v449[16] = 2160;
    *&v449[18] = 1752392040;
    *&v449[26] = 1040;
    *&v449[28] = v77;
    *&v449[32] = 2101;
    *&v449[34] = v9;
    *&v449[42] = 1024;
    *&v449[44] = v12;
    *&v449[48] = 1024;
    *&v449[50] = v221;
    v68 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>";
    v129 = v70;
    v130 = 70;
    goto LABEL_397;
  }

  v14 = *(a3 + 7);
  if (!v14)
  {
    v16 = *(a2 + 340);
    v18 = a3 + 12;
    LODWORD(v17) = *(a3 + 6);
    v19 = v17 < 0x201;
LABEL_26:
    if (v16)
    {
      if (v19)
      {
        v20 = 0;
        v46 = &word_1001787D0;
        v47 = 512;
        if (v17)
        {
LABEL_29:
          v48 = v12;
          __n_2 = 0;
          __n = 0;
          v24 = a3;
          v49 = ResourceRecordGetRDataBytesPointer(a3, v46, v47, &__n, &__n_2);
          if (__n_2)
          {
            goto LABEL_379;
          }

          v50 = v49;
          v436 = v10;
          if (__n >= 0x1FFuLL)
          {
            v51 = __n + 2;
            v131 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
            if (!v131)
            {
              goto LABEL_627;
            }

            v27 = v131;
            v422 = v131;
          }

          else
          {
            v27 = 0;
            v422 = word_1001789D0;
            v51 = 512;
          }

          if (v11)
          {
            v132 = mDNSLogCategory_Default;
          }

          else
          {
            v132 = mDNSLogCategory_mDNS;
          }

          if (!mDNS_SensitiveLoggingEnableCount || v132 == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_377;
            }

            v390 = v8;
            v133 = *(v8 + 200);
            v134 = bswap32(*(v440 + 340)) >> 16;
            v135 = a4 != 0;
            v136 = *(v24 + 2);
            v137 = __n;
            v138 = __n + 2;
            if (v138 > v51)
            {
              v139 = 0;
              goto LABEL_367;
            }

LABEL_366:
            v139 = v422;
            *v422 = __rev16(v136);
            v400 = v133;
            v409 = v136;
            memcpy(v422 + 1, v50, v137);
            v135 = a4 != 0;
            v136 = v409;
            v133 = v400;
            goto LABEL_367;
          }

          if (v11)
          {
            v132 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v132 = mDNSLogCategory_mDNS;
          }

          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v390 = v8;
            v133 = *(v8 + 200);
            v134 = bswap32(*(v440 + 340)) >> 16;
            v135 = a4 != 0;
            v136 = *(v24 + 2);
            v137 = __n;
            v138 = __n + 2;
            if (v138 > v51)
            {
              v139 = 0;
LABEL_367:
              LODWORD(__tp.tv_sec) = 67111427;
              HIDWORD(__tp.tv_sec) = v133;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = v134;
              HIWORD(__tp.tv_nsec) = 1024;
              *v449 = v135;
              *&v449[4] = 1024;
              *&v449[6] = 0;
              *&v449[10] = 1024;
              *&v449[12] = v441;
              *&v449[16] = 1024;
              *&v449[18] = v48;
              *&v449[22] = 1024;
              *&v449[24] = v136;
              *&v449[28] = 2160;
              *&v449[30] = 1752392040;
              *&v449[38] = 1040;
              *&v449[40] = v138;
              *&v449[44] = 2101;
              *&v449[46] = v139;
              v218 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
              v219 = v132;
              v220 = 70;
LABEL_375:
              _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, v218, &__tp, v220);
              goto LABEL_376;
            }

            goto LABEL_366;
          }

LABEL_377:
          v10 = v436;
          if (v27)
          {
            free(v27);
          }

          goto LABEL_379;
        }
      }

      else
      {
        v63 = malloc_type_malloc(v17, 0xFB8423B4uLL);
        if (!v63)
        {
          goto LABEL_627;
        }

        v20 = v63;
        v47 = *v18;
        v46 = v63;
        if (*v18)
        {
          goto LABEL_29;
        }
      }

      if (v11)
      {
        v64 = mDNSLogCategory_Default;
      }

      else
      {
        v64 = mDNSLogCategory_mDNS;
      }

      if (!mDNS_SensitiveLoggingEnableCount || v64 == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_443;
        }
      }

      else
      {
        if (v11)
        {
          v64 = mDNSLogCategory_Default_redacted;
        }

        else
        {
          v64 = mDNSLogCategory_mDNS;
        }

        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_443;
        }
      }

      v65 = *(v8 + 200);
      v66 = bswap32(*(v440 + 340)) >> 16;
      v67 = *(a3 + 2);
      LODWORD(__tp.tv_sec) = 67110656;
      HIDWORD(__tp.tv_sec) = v65;
      LOWORD(__tp.tv_nsec) = 1024;
      *(&__tp.tv_nsec + 2) = v66;
      HIWORD(__tp.tv_nsec) = 1024;
      *v449 = a4 != 0;
      *&v449[4] = 1024;
      *&v449[6] = 0;
      *&v449[10] = 1024;
      *&v449[12] = v441;
      *&v449[16] = 1024;
      *&v449[18] = v12;
      *&v449[22] = 1024;
      *&v449[24] = v67;
      v68 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
      goto LABEL_285;
    }

    if (v19)
    {
      v20 = 0;
      v57 = &word_1001787D0;
      v58 = 512;
      if (v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v111 = malloc_type_malloc(v17, 0xFB8423B4uLL);
      if (!v111)
      {
        goto LABEL_627;
      }

      v20 = v111;
      v58 = *v18;
      v57 = v111;
      if (*v18)
      {
LABEL_40:
        v59 = v12;
        __n_2 = 0;
        __n = 0;
        v24 = a3;
        v60 = ResourceRecordGetRDataBytesPointer(a3, v57, v58, &__n, &__n_2);
        if (__n_2)
        {
          goto LABEL_379;
        }

        v61 = v60;
        v436 = v10;
        if (__n >= 0x1FFuLL)
        {
          v62 = __n + 2;
          v192 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v192)
          {
            goto LABEL_627;
          }

          v27 = v192;
          v424 = v192;
        }

        else
        {
          v27 = 0;
          v424 = word_1001789D0;
          v62 = 512;
        }

        if (v11)
        {
          v193 = mDNSLogCategory_Default;
        }

        else
        {
          v193 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v193 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_377;
          }

          v390 = v8;
          v194 = *(v8 + 200);
          v195 = a4 != 0;
          v196 = *(v24 + 2);
          v197 = __n;
          v198 = __n + 2;
          if (v198 > v62)
          {
            v199 = 0;
            goto LABEL_374;
          }
        }

        else
        {
          if (v11)
          {
            v193 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v193 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_377;
          }

          v390 = v8;
          v194 = *(v8 + 200);
          v195 = a4 != 0;
          v196 = *(v24 + 2);
          v197 = __n;
          v198 = __n + 2;
          if (v198 > v62)
          {
            v199 = 0;
LABEL_374:
            LODWORD(__tp.tv_sec) = 67111171;
            HIDWORD(__tp.tv_sec) = v194;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v195;
            HIWORD(__tp.tv_nsec) = 1024;
            *v449 = 0;
            *&v449[4] = 1024;
            *&v449[6] = v441;
            *&v449[10] = 1024;
            *&v449[12] = v59;
            *&v449[16] = 1024;
            *&v449[18] = v196;
            *&v449[22] = 2160;
            *&v449[24] = 1752392040;
            *&v449[32] = 1040;
            *&v449[34] = v198;
            *&v449[38] = 2101;
            *&v449[40] = v199;
            v218 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            v219 = v193;
            v220 = 64;
            goto LABEL_375;
          }
        }

        v199 = v424;
        *v424 = __rev16(v196);
        v411 = v196;
        memcpy(v424 + 1, v61, v197);
        v196 = v411;
        v195 = a4 != 0;
        goto LABEL_374;
      }
    }

    if (v11)
    {
      v112 = mDNSLogCategory_Default;
    }

    else
    {
      v112 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v112 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    else
    {
      if (v11)
      {
        v112 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v112 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    v156 = *(v8 + 200);
    v157 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110400;
    HIDWORD(__tp.tv_sec) = v156;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = a4 != 0;
    HIWORD(__tp.tv_nsec) = 1024;
    *v449 = 0;
    *&v449[4] = 1024;
    *&v449[6] = v441;
    *&v449[10] = 1024;
    *&v449[12] = v12;
    *&v449[16] = 1024;
    *&v449[18] = v157;
    v68 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, type: %{mdns:rrtype}d, rdata: <none>";
    v129 = v112;
    v130 = 38;
    goto LABEL_397;
  }

  v15 = dnssec_obj_resource_record_member_get_validation_result(v14);
  v16 = *(a2 + 340);
  v18 = a3 + 12;
  v17 = *(a3 + 6);
  v19 = v17 < 0x201;
  if (!v15)
  {
    goto LABEL_26;
  }

  if (!*(a2 + 340))
  {
    if (v17 >= 0x201)
    {
      v121 = malloc_type_malloc(v17, 0xFB8423B4uLL);
      if (!v121)
      {
        goto LABEL_627;
      }

      v84 = v121;
      v20 = v121;
      v83 = *v18;
      if (*v18)
      {
LABEL_79:
        v85 = v10;
        __n_2 = 0;
        __n = 0;
        v86 = ResourceRecordGetRDataBytesPointer(a3, v84, v83, &__n, &__n_2);
        if (__n_2)
        {
LABEL_402:
          v10 = v85;
          goto LABEL_443;
        }

        v87 = v86;
        v386 = a4;
        v434 = a3;
        v427 = v12;
        if (__n >= 0x1FFuLL)
        {
          v90 = __n + 2;
          v209 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v209)
          {
            goto LABEL_627;
          }

          v91 = v209;
          v88 = v8;
          v89 = v209;
        }

        else
        {
          v88 = v8;
          v89 = 0;
          v90 = 512;
          v91 = word_1001789D0;
        }

        v425 = v89;
        if (v11)
        {
          v210 = mDNSLogCategory_Default;
        }

        else
        {
          v210 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v210 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_400;
          }

          v211 = *(v88 + 200);
          v212 = v386 != 0;
          v213 = *(v434 + 2);
          v214 = __n;
          v215 = __n + 2;
          if (v215 > v90)
          {
            v91 = 0;
            goto LABEL_399;
          }
        }

        else
        {
          if (v11)
          {
            v210 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v210 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
          {
LABEL_400:
            v8 = v88;
            a3 = v434;
            a4 = v386;
            if (v425)
            {
              free(v425);
            }

            goto LABEL_402;
          }

          v211 = *(v88 + 200);
          v212 = v386 != 0;
          v213 = *(v434 + 2);
          v214 = __n;
          v215 = __n + 2;
          if (v215 > v90)
          {
            v91 = 0;
LABEL_399:
            LODWORD(__tp.tv_sec) = 67111427;
            HIDWORD(__tp.tv_sec) = v211;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v212;
            HIWORD(__tp.tv_nsec) = 1024;
            *v449 = 0;
            *&v449[4] = 1024;
            *&v449[6] = v441;
            *&v449[10] = 1024;
            *&v449[12] = v427;
            *&v449[16] = 1026;
            *&v449[18] = v15;
            *&v449[22] = 1024;
            *&v449[24] = v213;
            *&v449[28] = 2160;
            *&v449[30] = 1752392040;
            *&v449[38] = 1040;
            *&v449[40] = v215;
            *&v449[44] = 2101;
            *&v449[46] = v91;
            _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_DEFAULT, "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", &__tp, 0x46u);
            goto LABEL_400;
          }
        }

        *v91 = __rev16(v213);
        v250 = v213;
        memcpy(v91 + 1, v87, v214);
        v212 = v386 != 0;
        v213 = v250;
        goto LABEL_399;
      }
    }

    else
    {
      v20 = 0;
      v83 = 512;
      v84 = &word_1001787D0;
      if (*(a3 + 6))
      {
        goto LABEL_79;
      }
    }

    if (v11)
    {
      v64 = mDNSLogCategory_Default;
    }

    else
    {
      v64 = mDNSLogCategory_mDNS;
    }

    if (!mDNS_SensitiveLoggingEnableCount || v64 == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    else
    {
      if (v11)
      {
        v64 = mDNSLogCategory_Default_redacted;
      }

      else
      {
        v64 = mDNSLogCategory_mDNS;
      }

      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_443;
      }
    }

    v183 = *(v8 + 200);
    v184 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110656;
    HIDWORD(__tp.tv_sec) = v183;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = a4 != 0;
    HIWORD(__tp.tv_nsec) = 1024;
    *v449 = 0;
    *&v449[4] = 1024;
    *&v449[6] = v441;
    *&v449[10] = 1024;
    *&v449[12] = v12;
    *&v449[16] = 1026;
    *&v449[18] = v15;
    *&v449[22] = 1024;
    *&v449[24] = v184;
    v68 = "[R%u->mDNS] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
LABEL_285:
    v129 = v64;
    v130 = 44;
    goto LABEL_397;
  }

  if (v17 >= 0x201)
  {
    v101 = malloc_type_malloc(v17, 0xFB8423B4uLL);
    if (!v101)
    {
      goto LABEL_627;
    }

    v20 = v101;
    v22 = *v18;
    v21 = v101;
    if (*v18)
    {
LABEL_8:
      v23 = v12;
      __n_2 = 0;
      __n = 0;
      v24 = a3;
      v25 = ResourceRecordGetRDataBytesPointer(a3, v21, v22, &__n, &__n_2);
      if (!__n_2)
      {
        v26 = v25;
        v390 = v8;
        v436 = v10;
        if (__n >= 0x1FFuLL)
        {
          v28 = __n + 2;
          v166 = malloc_type_malloc(__n + 2, 0xFB8423B4uLL);
          if (!v166)
          {
            goto LABEL_627;
          }

          v27 = v166;
          v419 = v166;
        }

        else
        {
          v27 = 0;
          v419 = word_1001789D0;
          v28 = 512;
        }

        if (v11)
        {
          v167 = mDNSLogCategory_Default;
        }

        else
        {
          v167 = mDNSLogCategory_mDNS;
        }

        if (!mDNS_SensitiveLoggingEnableCount || v167 == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
LABEL_376:
            v8 = v390;
            goto LABEL_377;
          }

          v168 = *(v390 + 200);
          v169 = bswap32(*(v440 + 340)) >> 16;
          v170 = a4 != 0;
          v171 = *(v24 + 2);
          v172 = __n;
          v173 = __n + 2;
          if (v173 > v28)
          {
            v174 = 0;
            goto LABEL_372;
          }
        }

        else
        {
          if (v11)
          {
            v167 = mDNSLogCategory_Default_redacted;
          }

          else
          {
            v167 = mDNSLogCategory_mDNS;
          }

          if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_376;
          }

          v168 = *(v390 + 200);
          v169 = bswap32(*(v440 + 340)) >> 16;
          v170 = a4 != 0;
          v171 = *(v24 + 2);
          v172 = __n;
          v173 = __n + 2;
          if (v173 > v28)
          {
            v174 = 0;
LABEL_372:
            LODWORD(__tp.tv_sec) = 67111683;
            HIDWORD(__tp.tv_sec) = v168;
            LOWORD(__tp.tv_nsec) = 1024;
            *(&__tp.tv_nsec + 2) = v169;
            HIWORD(__tp.tv_nsec) = 1024;
            *v449 = v170;
            *&v449[4] = 1024;
            *&v449[6] = 0;
            *&v449[10] = 1024;
            *&v449[12] = v441;
            *&v449[16] = 1024;
            *&v449[18] = v23;
            *&v449[22] = 1026;
            *&v449[24] = v15;
            *&v449[28] = 1024;
            *&v449[30] = v171;
            *&v449[34] = 2160;
            *&v449[36] = 1752392040;
            *&v449[44] = 1040;
            *&v449[46] = v173;
            *&v449[50] = 2101;
            *&v449[52] = v174;
            v218 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P";
            v219 = v167;
            v220 = 76;
            goto LABEL_375;
          }
        }

        v174 = v419;
        *v419 = __rev16(v171);
        v222 = v26;
        v401 = v171;
        v223 = v168;
        v410 = v173;
        v224 = v169;
        memcpy(v419 + 1, v222, v172);
        v170 = a4 != 0;
        v169 = v224;
        v173 = v410;
        v168 = v223;
        v171 = v401;
        goto LABEL_372;
      }

LABEL_379:
      a3 = v24;
      goto LABEL_443;
    }
  }

  else
  {
    v20 = 0;
    v21 = &word_1001787D0;
    v22 = 512;
    if (*(a3 + 6))
    {
      goto LABEL_8;
    }
  }

  if (v11)
  {
    v102 = mDNSLogCategory_Default;
  }

  else
  {
    v102 = mDNSLogCategory_mDNS;
  }

  if (!mDNS_SensitiveLoggingEnableCount || v102 == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_443;
    }

    goto LABEL_186;
  }

  if (v11)
  {
    v102 = mDNSLogCategory_Default_redacted;
  }

  else
  {
    v102 = mDNSLogCategory_mDNS;
  }

  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
LABEL_186:
    v126 = *(v8 + 200);
    v127 = bswap32(*(v440 + 340)) >> 16;
    v128 = *(a3 + 2);
    LODWORD(__tp.tv_sec) = 67110912;
    HIDWORD(__tp.tv_sec) = v126;
    LOWORD(__tp.tv_nsec) = 1024;
    *(&__tp.tv_nsec + 2) = v127;
    HIWORD(__tp.tv_nsec) = 1024;
    *v449 = a4 != 0;
    *&v449[4] = 1024;
    *&v449[6] = 0;
    *&v449[10] = 1024;
    *&v449[12] = v441;
    *&v449[16] = 1024;
    *&v449[18] = v12;
    *&v449[22] = 1026;
    *&v449[24] = v15;
    *&v449[28] = 1024;
    *&v449[30] = v128;
    v68 = "[R%u->Q%u] DNSServiceResolve result -- event: %{mdns:addrmv}d, expired: %{mdns:yesno}d, ifindex: %d, name hash: %x, dnssec: %{public, mdns:dnssec_result}u, type: %{mdns:rrtype}d, rdata: <none>";
    v129 = v102;
    v130 = 50;
LABEL_397:
    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, v68, &__tp, v130);
  }

LABEL_443:
  if (v20)
  {
    free(v20);
  }

  v288 = *(a3 + 2);
  if (v288 == 33 || v288 == 16)
  {
    v289 = *(v8 + 136);
    if (a4)
    {
      v290 = *a3;
      if (v288 == 33)
      {
        v291 = *(v289 + 1392);
        if (v291)
        {
          free(v291);
          *(v289 + 1392) = 0;
        }

        if (v290 == 240)
        {
          *(v289 + 1416) = 0;
          *(v289 + 1421) = 1;
LABEL_457:
          *(v289 + 1412) = 0;
          goto LABEL_493;
        }

        v295 = (*(a3 + 5) + 10);
        v296 = v295;
        while (1)
        {
          if (!v296 || (v297 = *v296, v297 > 0x3F))
          {
LABEL_470:
            LOWORD(v298) = 257;
            goto LABEL_471;
          }

          if (!*v296)
          {
            break;
          }

          v296 += v297 + 1;
          if (v296 - v295 > 255)
          {
            goto LABEL_470;
          }
        }

        v298 = (v296 - v295) + 1;
        if ((v298 & 0x10000) != 0)
        {
          goto LABEL_493;
        }

LABEL_471:
        v299 = malloc_type_calloc(1uLL, v298, 0x5833CE74uLL);
        if (!v299)
        {
          goto LABEL_627;
        }

        *(v289 + 1392) = v299;
        v300 = v295;
        do
        {
          if (!v300)
          {
            break;
          }

          v301 = *v300;
          if (v301 > 0x3F)
          {
            break;
          }

          if (!*v300)
          {
            v306 = v300 - v295 + 1;
            if (v306 <= 0x100u)
            {
              memcpy(v299, v295, v306);
              goto LABEL_489;
            }

            break;
          }

          v300 += v301 + 1;
        }

        while (v300 - v295 <= 255);
        *v299 = 0;
LABEL_489:
        *(v289 + 1416) = *(*(a3 + 5) + 8);
        *(v289 + 1421) = 0;
        v307 = *(a3 + 3);
        v308 = v307 + 5;
        if (v307 + 5) < 6 && ((0x2Du >> v308))
        {
          LODWORD(v307) = dword_10010DF58[v308];
        }

        *(v289 + 1412) = v307;
LABEL_493:
        v309 = *(v289 + 1421);
        if (*(v289 + 1421))
        {
          v310 = 1;
        }

        else
        {
          v310 = *(v289 + 1392) != 0;
        }

        if (*(v289 + 1422))
        {
          v311 = 1;
        }

        else
        {
          v311 = *(v289 + 1400) != 0;
        }

        if (!v310 || !v311)
        {
          return;
        }

        if (*(v289 + 1421))
        {
          v312 = -65554;
        }

        else
        {
          v312 = 0;
        }

        ConvertDomainNameToCString_withescape(*(a3 + 4), __s);
        if (*(v289 + 1421))
        {
          v313 = 0;
          v431 = 0;
          v418 = 0;
          LOBYTE(__n) = 0;
        }

        else
        {
          v314 = *(v289 + 1392);
          ConvertDomainNameToCString_withescape(v314, &__src);
          v313 = mDNS_DomainNameFNV1aHash(v314);
          v315 = *(v289 + 1421);
          LOBYTE(__n) = 0;
          if (!v315)
          {
            p_n = *(v289 + 1392);
            v431 = *(v289 + 1416);
            v418 = *(v289 + 1417);
            goto LABEL_508;
          }

          v431 = 0;
          v418 = 0;
        }

        p_n = &__n;
LABEL_508:
        v435 = a3;
        if (*(v289 + 1422))
        {
          v316 = 0;
          v406 = &__n;
        }

        else
        {
          v406 = *(v289 + 1400);
          v316 = *(v289 + 1418);
        }

        v439 = v10;
        v426 = *(v289 + 1412);
        v317 = strlen(__s);
        v442 = v316;
        v318 = v317 + v316 + strlen(&__src) + 18;
        v393 = v313;
        if (!*(v8 + 290))
        {
          v320 = 0;
          v325 = 0;
          v319 = 0;
          goto LABEL_547;
        }

        v319 = 0;
        v320 = 0;
        if (!a4 || (v321 = *(v8 + 56)) == 0)
        {
          v325 = 0;
          goto LABEL_547;
        }

        v389 = v318;
        if (*(v321 + 16) != &_mdns_signed_browse_result_kind)
        {
          v322 = mDNSLogCategory_mDNS;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
          {
            v323 = -65549;
            v324 = v440;
            if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
            {
LABEL_538:
              v341 = *(v8 + 200);
              v342 = bswap32(*(v440 + 340));
              LODWORD(__tp.tv_sec) = 67109376;
              HIDWORD(__tp.tv_sec) = v341;
              LOWORD(__tp.tv_nsec) = 1024;
              *(&__tp.tv_nsec + 2) = HIWORD(v342);
              _os_log_impl(&_mh_execute_header, v322, OS_LOG_TYPE_ERROR, "[R%u->Q%u] resolve_result_callback mdns_signed_resolve_result_downcast failed", &__tp, 0xEu);
            }
          }

          else
          {
            v323 = -65549;
            v322 = mDNSLogCategory_mDNS_redacted;
            v324 = v440;
            if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_538;
            }
          }

          v320 = 0;
          goto LABEL_540;
        }

        v391 = v8;
        bzero(&__tp, 0x3F1uLL);
        v326 = DomainNameToString(p_n, 0, &__tp, 0);
        if (v326)
        {
          v337 = v326;
          v320 = 0;
          goto LABEL_626;
        }

        v327 = *(v321 + 32);
        v328 = strlen(&__tp);
        if (v328 >> 16)
        {
          v320 = 0;
          v337 = -6743;
          goto LABEL_626;
        }

        v329 = v328;
        v330 = v328 + *(v327 + 56);
        v331 = malloc_type_calloc(1uLL, v330 + 62, 0xE7BC5112uLL);
        if (v331)
        {
          v332 = v331;
          uuid_copy(v331 + 32, (v327 + 32));
          v333 = _mdns_signed_result_compute_metadata_hash(v332 + 32, v426, v406, v442);
          *(v332 + 48) = 6;
          *(v332 + 52) = v333;
          v334 = *(v327 + 56);
          *(v332 + 56) = v334;
          *(v332 + 58) = v431 | (v418 << 8);
          *(v332 + 60) = v329;
          memcpy((v332 + 62), (v327 + 58), v334);
          memcpy((v332 + 62 + v334), &__tp, v329);
          v335 = _mdns_necp_sign_result(v332, v330 + 62);
          if (v335 || (v335 = _mdns_necp_validate_result(v332, v330 + 62), __n_2 = v335, v8 = v391, v335))
          {
            v337 = v335;
            v320 = 0;
          }

          else
          {
            v336 = _mdns_signed_resolve_result_create_no_copy(p_n, v332, v330 + 62, &__n_2);
            v320 = v336;
            v337 = __n_2;
            if (!__n_2)
            {
              v324 = v440;
              if (v336)
              {
                __tp.tv_sec = 0;
                data = mdns_signed_result_get_data(v336, &__tp);
                tv_sec = __tp.tv_sec;
                if (__tp.tv_sec >= 0x10000uLL)
                {
                  tv_sec = 0;
                }

                v319 = tv_sec;
                if (__tp.tv_sec >= 0x10000uLL)
                {
                  v340 = 0;
                }

                else
                {
                  v340 = __tp.tv_sec + 4;
                }

                v318 = v389 + v340;
                if (__tp.tv_sec >= 0x10000uLL)
                {
                  v325 = 0;
                }

                else
                {
                  v325 = data;
                }

LABEL_547:
                v346 = v318;
                reply = create_reply(0x43, v318, v8);
                *(reply + 11) = 0;
                *(reply + 12) = bswap32(v426);
                *(reply + 13) = bswap32(v312);
                v348 = strlen(__s) + 1;
                memcpy(reply + 56, __s, v348);
                v349 = &reply[v348 + 56];
                v350 = strlen(&__src) + 1;
                memcpy(v349, &__src, v350);
                v351 = &v349[v350];
                *v351 = v431;
                v351[1] = v418;
                v351[2] = BYTE1(v442);
                v352 = &v349[v350 + 4];
                v351[3] = v442;
                memcpy(v352, v406, v442);
                if (v325)
                {
                  v353 = &v352[v442];
                  if (&v352[v442])
                  {
                    if (v353 <= &v353[v346] && v346 >= v319 + 4)
                    {
                      *v353 = 1792;
                      v353[2] = BYTE1(v319);
                      v353[3] = v319;
                      if (v319)
                      {
                        memcpy(v353 + 4, v325, v319);
                      }
                    }
                  }

                  *(reply + 6) |= 2u;
                }

                if (v320)
                {
                  os_release(v320);
                }

                v354 = mDNSLogCategory_Default;
                if (mDNS_SensitiveLoggingEnableCount)
                {
                  v355 = mDNSLogCategory_Default == mDNSLogCategory_State;
                }

                else
                {
                  v355 = 1;
                }

                v356 = v355;
                if (v309)
                {
                  if (v356)
                  {
                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v357 = *(v8 + 200);
                    v358 = bswap32(*(v289 + 1036)) >> 16;
                    v359 = bswap32(*(v289 + 340)) >> 16;
                    v360 = *(v435 + 4);
                    v361 = v360;
                    while (1)
                    {
                      if (!v361 || (v362 = *v361, v362 > 0x3F))
                      {
LABEL_570:
                        v363 = 257;
                        goto LABEL_596;
                      }

                      if (!*v361)
                      {
                        break;
                      }

                      v361 += v362 + 1;
                      if (v361 - v360 >= 256)
                      {
                        goto LABEL_570;
                      }
                    }

                    v363 = (v361 - v360 + 1);
                  }

                  else
                  {
                    v354 = mDNSLogCategory_Default_redacted;
                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v357 = *(v8 + 200);
                    v358 = bswap32(*(v289 + 1036)) >> 16;
                    v359 = bswap32(*(v289 + 340)) >> 16;
                    v360 = *(v435 + 4);
                    v371 = v360;
                    while (1)
                    {
                      if (!v371 || (v372 = *v371, v372 > 0x3F))
                      {
LABEL_585:
                        v363 = 257;
                        goto LABEL_596;
                      }

                      if (!*v371)
                      {
                        break;
                      }

                      v371 += v372 + 1;
                      if (v371 - v360 >= 256)
                      {
                        goto LABEL_585;
                      }
                    }

                    v363 = (v371 - v360 + 1);
                  }

LABEL_596:
                  LODWORD(__tp.tv_sec) = 67110659;
                  HIDWORD(__tp.tv_sec) = v357;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v358;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v449 = v359;
                  *&v449[4] = 2160;
                  *&v449[6] = 1752392040;
                  *&v449[14] = 1040;
                  *&v449[16] = v363;
                  *&v449[20] = 2101;
                  *&v449[22] = v360;
                  *&v449[30] = 1029;
                  *&v449[32] = v439;
                  v375 = "[R%u->(Q%u, Q%u)] DNSServiceResolve NoSuchRecord -- instance: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%{sensitive}x)";
                  v376 = v354;
                  v377 = 52;
                }

                else
                {
                  if (v356)
                  {
                    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v364 = *(v8 + 200);
                    v365 = bswap32(*(v289 + 1036)) >> 16;
                    v366 = bswap32(*(v289 + 340)) >> 16;
                    v367 = *(v435 + 4);
                    v368 = v367;
                    while (1)
                    {
                      if (!v368 || (v369 = *v368, v369 > 0x3F))
                      {
LABEL_578:
                        v370 = 257;
                        goto LABEL_598;
                      }

                      if (!*v368)
                      {
                        break;
                      }

                      v368 += v369 + 1;
                      if (v368 - v367 >= 256)
                      {
                        goto LABEL_578;
                      }
                    }

                    v370 = (v368 - v367 + 1);
LABEL_598:
                    v378 = *(v289 + 1392);
                    v379 = v378;
                    while (1)
                    {
                      if (!v379 || (v380 = *v379, v380 > 0x3F))
                      {
LABEL_603:
                        v381 = 257;
                        goto LABEL_613;
                      }

                      if (!*v379)
                      {
                        break;
                      }

                      v379 += v380 + 1;
                      if (v379 - v378 >= 256)
                      {
                        goto LABEL_603;
                      }
                    }

                    v381 = (v379 - v378 + 1);
                  }

                  else
                  {
                    v354 = mDNSLogCategory_Default_redacted;
                    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_615;
                    }

                    v364 = *(v8 + 200);
                    v365 = bswap32(*(v289 + 1036)) >> 16;
                    v366 = bswap32(*(v289 + 340)) >> 16;
                    v367 = *(v435 + 4);
                    v373 = v367;
                    while (1)
                    {
                      if (!v373 || (v374 = *v373, v374 > 0x3F))
                      {
LABEL_592:
                        v370 = 257;
                        goto LABEL_605;
                      }

                      if (!*v373)
                      {
                        break;
                      }

                      v373 += v374 + 1;
                      if (v373 - v367 >= 256)
                      {
                        goto LABEL_592;
                      }
                    }

                    v370 = (v373 - v367 + 1);
LABEL_605:
                    v378 = *(v289 + 1392);
                    v382 = v378;
                    while (1)
                    {
                      if (!v382 || (v383 = *v382, v383 > 0x3F))
                      {
LABEL_610:
                        v381 = 257;
                        goto LABEL_613;
                      }

                      if (!*v382)
                      {
                        break;
                      }

                      v382 += v383 + 1;
                      if (v382 - v378 >= 256)
                      {
                        goto LABEL_610;
                      }
                    }

                    v381 = (v382 - v378 + 1);
                  }

LABEL_613:
                  v384 = *(v289 + 1422);
                  LODWORD(__tp.tv_sec) = 67112707;
                  HIDWORD(__tp.tv_sec) = v364;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = v365;
                  HIWORD(__tp.tv_nsec) = 1024;
                  *v449 = v366;
                  *&v449[4] = 2160;
                  *&v449[6] = 1752392040;
                  *&v449[14] = 1040;
                  *&v449[16] = v370;
                  *&v449[20] = 2101;
                  *&v449[22] = v367;
                  *&v449[30] = 1029;
                  *&v449[32] = v439;
                  *&v449[36] = 1024;
                  *&v449[38] = v426;
                  *&v449[42] = 2160;
                  *&v449[44] = 1752392040;
                  *&v449[52] = 1040;
                  *&v449[54] = v381;
                  *&v449[58] = 2101;
                  *&v449[60] = v378;
                  *&v449[68] = 1029;
                  *&v449[70] = v393;
                  *&v449[74] = 1024;
                  *&v449[76] = __rev16(v431 | (v418 << 8));
                  *&v449[80] = 1024;
                  *&v449[82] = v384;
                  v450 = 1024;
                  v451 = v442;
                  v375 = "[R%u->(Q%u, Q%u)] DNSServiceResolve RESULT -- instance: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%{sensitive}x), ifindex: %u, target host: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P(%{sensitive}x), port: %u, negative txt: %{mdns:yesno}d, txt rdlength: %u";
                  v376 = v354;
                  v377 = 108;
                }

                _os_log_impl(&_mh_execute_header, v376, OS_LOG_TYPE_DEFAULT, v375, &__tp, v377);
LABEL_615:
                if (*(v8 + 292))
                {
                  if (reply)
                  {
                    free(reply);
                  }
                }

                else
                {
                  v385 = *(v8 + 24);
                  if (!v385)
                  {
                    v385 = v8;
                  }

                  *reply = 0;
                  **(v385 + 104) = reply;
                  *(v385 + 104) = reply;
                }

                return;
              }

              v323 = 0;
LABEL_540:
              v343 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
                {
LABEL_545:
                  v344 = *(v8 + 200);
                  v345 = bswap32(*(v324 + 340));
                  LODWORD(__tp.tv_sec) = 67109632;
                  HIDWORD(__tp.tv_sec) = v344;
                  LOWORD(__tp.tv_nsec) = 1024;
                  *(&__tp.tv_nsec + 2) = HIWORD(v345);
                  HIWORD(__tp.tv_nsec) = 2048;
                  *v449 = v323;
                  _os_log_impl(&_mh_execute_header, v343, OS_LOG_TYPE_ERROR, "[R%u->Q%u] resolve_result_callback signed_resolve failed %ld", &__tp, 0x18u);
                }
              }

              else
              {
                v343 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_545;
                }
              }

              v325 = 0;
              v319 = 0;
              v318 = v389;
              goto LABEL_547;
            }
          }

          free(v332);
LABEL_626:
          v323 = v337;
          v8 = v391;
          v324 = v440;
          goto LABEL_540;
        }

LABEL_627:
        __break(1u);
        return;
      }

      v293 = *(v289 + 1400);
      if (v293)
      {
        free(v293);
        *(v289 + 1400) = 0;
      }

      if (v290 == 240)
      {
        *(v289 + 1418) = 0;
        *(v289 + 1422) = 1;
        goto LABEL_493;
      }

      v302 = *(a3 + 5);
      v303 = *(a3 + 6);
      if (v303 <= 1)
      {
        v304 = 1;
      }

      else
      {
        v304 = *(a3 + 6);
      }

      v305 = malloc_type_calloc(1uLL, v304, 0xDA56D1E6uLL);
      if (!v305)
      {
        goto LABEL_627;
      }

      *(v289 + 1400) = v305;
      memcpy(v305, (v302 + 4), v303);
      *(v289 + 1418) = v303;
    }

    else
    {
      if (v288 == 33)
      {
        v292 = *(v289 + 1392);
        if (v292)
        {
          free(v292);
          *(v289 + 1392) = 0;
        }

        *(v289 + 1416) = 0;
        *(v289 + 1421) = 0;
        goto LABEL_457;
      }

      v294 = *(v289 + 1400);
      if (v294)
      {
        free(v294);
        *(v289 + 1400) = 0;
      }

      *(v289 + 1418) = 0;
    }

    *(v289 + 1422) = 0;
    goto LABEL_493;
  }
}