char *_mdns_resolver_get_interface_log_string(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  if (!v1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      name = nw_interface_get_name(v4);
      v4 = *(a1 + 48);
      if (v4)
      {
        LODWORD(v4) = nw_interface_get_index(v4);
      }
    }

    else
    {
      name = "any";
    }

    v6 = "";
    if (name)
    {
      v6 = name;
    }

    asprintf(v2, "%s/%u", v6, v4);
    v1 = *v2;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return "???";
  }
}

BOOL _pqw_info_can_accept_qname(uint64_t *a1, unsigned __int8 *a2)
{
  if (*(a1 + 2) >= *(a1 + 3))
  {
    return 0;
  }

  v3 = a1;
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    if (DomainNameEqual(v3[1], a2))
    {
      return 0;
    }
  }

  return result;
}

void _mdns_resolver_start_pending_queriers(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 96);
    if (v2)
    {
LABEL_7:
      dispatch_source_merge_data(v2, 1uLL);
      return;
    }

    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    v3 = dispatch_source_create(MEMORY[0x29EDCA590], 0, 0, _mdns_resolver_queue_s_queue);
    *(a1 + 96) = v3;
    if (v3)
    {
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_resolver_start_pending_queriers_block_invoke;
      handler[3] = &__block_descriptor_tmp_121_1356;
      handler[4] = a1;
      dispatch_source_set_event_handler(v3, handler);
      dispatch_activate(*(a1 + 96));
      v2 = *(a1 + 96);
      goto LABEL_7;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v4 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v4, OS_LOG_TYPE_ERROR, "Failed to create pending querier starter GCD source", buf, 2u);
    }
  }
}

void ___mdns_resolver_start_pending_queriers_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v4 = *(v1 + 40);
  v2 = (v1 + 40);
  v3 = v4;
  if (v4)
  {
    do
    {
      *v2 = *(v3 + 64);
      *(v3 + 64) = 0;
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        v7 = *(v3 + 128);
        if (!v7)
        {
          v7 = "";
        }

        *buf = 136446210;
        v11 = v7;
        _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_INFO, "%{public}sStarting pending querier due to observed traffic activity", buf, 0xCu);
      }

      _mdns_resolver_start_querier(*(a1 + 32), v3);
      os_release(v3);
      v8 = *(a1 + 32);
      v9 = *(v8 + 40);
      v2 = (v8 + 40);
      v3 = v9;
    }

    while (v9);
  }
}

void _mdns_querier_session_receive(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = mdns_message_create_with_dispatch_data(a2);
  if (v5)
  {
    v6 = v5;
    v29 = 0;
    v7 = *(a1 + 89);
    if (*(a1 + 89))
    {
      v8 = 0;
    }

    else
    {
      v8 = &v29 + 1;
    }

    v9 = v7 | *(*(*(a3 + 72) + 16) + 161) ^ 1;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v29;
    }

    v28 = 0;
    is_response_acceptable = _mdns_querier_is_response_acceptable(a3, v5, v8, v10, &v28);
    if (*(a3 + 128))
    {
      v12 = *(a3 + 128);
    }

    else
    {
      v12 = "";
    }

    _mdns_resolver_log_receive(*(a3 + 72), a1, v6, is_response_acceptable, v12, *(a3 + 255));
    v13 = *(a1 + 32);
    if (is_response_acceptable)
    {
      v14 = *(a3 + 72);
      v15 = *(a1 + 56);
      v16 = (*(*(a3 + 16) + 96))(a3);
      _mdns_resolver_note_responsiveness(v14, v13, v7, v15, v16);
      if (v28 > 9u || ((1 << v28) & 0x209) == 0)
      {
        _mdns_querier_handle_bad_rcode(a3, v6, v28, v13);
        goto LABEL_45;
      }

      if ((v7 & 1) != 0 || HIBYTE(v29) != 1)
      {
        _mdns_querier_conclude_ex(a3, 1, 0, v6);
        goto LABEL_45;
      }

      *(a3 + 250) = HIBYTE(v29);
    }

    else
    {
      if ((v9 & 1) != 0 || v29 != 1)
      {
        v20 = *(a3 + 72);
        if (*(v20 + 128) && (v21 = *(a3 + 192)) != 0 && (is_query_response = _mdns_message_is_query_response_ex(*(v6 + 32), *(v6 + 40), v21, 0, 0, 1), v20 = *(a3 + 72), is_query_response))
        {
          if ((*(v13 + 100) - 1) >= 0x20)
          {
            v23 = 0;
          }

          else
          {
            v23 = 1 << (*(v13 + 100) - 1);
          }

          *(a3 + 200) |= v23;
          _mdns_resolver_note_responsiveness(v20, v13, v7, *(a1 + 56), *(*(a3 + 192) + 64));
        }

        else if (*(*(v20 + 16) + 144) == 1 && (*(v13 + 112) & 1) == 0)
        {
          v24 = (*(*(a3 + 16) + 96))(a3);
          v25 = _mdns_qtype_is_problematic;
          v26 = v24 == 1 || v24 == 28;
          if (v26 || (v25 = _mdns_qtype_is_address_type, (v24 & 0xFFFE) == 0x40))
          {
            v27 = v25;
            *buf = 0;
            if (_mdns_message_is_query_response_ex(*(v6 + 32), *(v6 + 40), *(a3 + 96), 0, buf, 0))
            {
              if ((v27)(*buf))
              {
                *(v13 + 112) = 1;
              }
            }
          }
        }

        goto LABEL_45;
      }

      *(a3 + 250) = 2;
      v17 = *(a3 + 72);
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
      }

      v18 = mdns_mach_ticks_per_second_s_ticks_per_second;
      *(v17 + 88) = mach_continuous_time() + 10 * v18;
      *(v17 + 134) = 1;
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v19 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v31 = 10;
        _os_log_impl(&dword_2990ED000, v19, OS_LOG_TYPE_INFO, "Got suspicious response, entering suspicious mode for %d seconds", buf, 8u);
      }
    }

    _mdns_resolver_deregister_querier(*(a3 + 72), a3);
    _mdns_resolver_register_querier_ex(*(a3 + 72), a3, 1);
LABEL_45:
    os_release(v6);
    return;
  }

  _mdns_querier_conclude_ex(a3, 5, -6729, 0);
}

uint64_t _mdns_querier_is_response_acceptable(uint64_t a1, uint64_t a2, BOOL *a3, _BYTE *a4, _WORD *a5)
{
  v7 = *(a2 + 40);
  if (v7 < 0xC)
  {
    result = 0;
LABEL_21:
    v16 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_18;
  }

  v17 = 0;
  v11 = *(a2 + 32);
  result = _mdns_message_is_query_response_ex(v11, v7, *(a1 + 96), &v17, 0, 0);
  if (!result)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 96);
  if (v17 == *(v13 + 68))
  {
    v14 = *(v11 + 3);
    if (a3)
    {
      v15 = (*(v11 + 2) & 2) != 0 && ((*(v13 + 70) & 4) != 0 || !__rev16(*(v11 + 6)) || !__rev16(*(v11 + 8)) && !__rev16(*(v11 + 10)));
      *a3 = v15;
    }

    if (a5)
    {
      *a5 = v14 & 0xF;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = 1;
  if (a4)
  {
LABEL_18:
    *a4 = v16 & (result ^ 1);
  }

  return result;
}

void _mdns_resolver_log_receive(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, int a6)
{
  v45 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = "";
  }

  v11 = *(a3 + 40);
  v12 = 148;
  if (*(a2 + 89))
  {
    v12 = 152;
  }

  v13 = *(*(a1 + 16) + v12);
  interface_log_string = _mdns_resolver_get_interface_log_string(a1);
  if (v11 < 0xC)
  {
    if (a6)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v21 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v22 = *(a2 + 32);
      v23 = *(a3 + 32);
      v31 = 136448259;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v22;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 1040;
      *v44 = v11;
      *&v44[4] = 2098;
      *&v44[6] = v23;
      *&v44[14] = 2117;
      *&v44[16] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v21 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v29 = *(a2 + 32);
      v30 = *(a3 + 32);
      v31 = 136448258;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v29;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 1040;
      *v44 = v11;
      *&v44[4] = 2098;
      *&v44[6] = v30;
      *&v44[14] = 2112;
      *&v44[16] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
    }

    v27 = v21;
    v28 = 80;
    goto LABEL_27;
  }

  v15 = *(a3 + 32);
  if (a6)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 32);
      v18 = bswap32(*v15);
      v19 = bswap64(*(v15 + 4));
      v31 = 136448259;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v17;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 2048;
      *v44 = v18;
      *&v44[8] = 2048;
      *&v44[10] = v19;
      *&v44[18] = 2117;
      *&v44[20] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %{sensitive}@";
LABEL_21:
      v27 = v16;
      v28 = 84;
LABEL_27:
      _os_log_impl(&dword_2990ED000, v27, OS_LOG_TYPE_DEFAULT, v20, &v31, v28);
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a2 + 32);
      v25 = bswap32(*v15);
      v26 = bswap64(*(v15 + 4));
      v31 = 136448258;
      v32 = v10;
      v33 = 1024;
      v34 = a4;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v24;
      v39 = 1024;
      v40 = v13;
      v41 = 2082;
      v42 = interface_log_string;
      v43 = 2048;
      *v44 = v25;
      *&v44[8] = 2048;
      *&v44[10] = v26;
      *&v44[18] = 2112;
      *&v44[20] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %@";
      goto LABEL_21;
    }
  }
}

void _mdns_resolver_note_responsiveness(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a4 - *(a2 + 80) >= 1)
  {
    *(a2 + 80) = a4;
  }

  if ((a5 & 0xFFFFFFFE) == 0x40 && (*(a2 + 107) & 1) == 0)
  {
    *(a2 + 107) = 1;
  }

  _mdns_resolver_unpenalize_server(a1, a2, 1);
  if (*(a2 + 109) == 1)
  {
    *(a2 + 109) = 0;
    if (*(a1 + 132) == 1 && nw_endpoint_get_type(*(a2 + 48)) == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(*(a2 + 48));
      _mdns_symptoms_report_dns_server_symptom(413698, address);
    }
  }

  if (!a3)
  {
    if (!*(a2 + 40))
    {
      v9 = *(a1 + 124);
      if (v9 / 0xA + v9 <= v9)
      {
        v10 = *(a1 + 124);
      }

      else
      {
        v10 = v9 / 0xA + v9;
      }

      oneshot_timer = _mdns_resolver_create_oneshot_timer(v10, 5u);
      *(a2 + 40) = oneshot_timer;
      if (oneshot_timer)
      {
        v12 = mach_continuous_time();
        v13 = *(a2 + 40);
        v21 = MEMORY[0x29EDCA5F8];
        *&v22 = 0x40000000;
        *(&v22 + 1) = ___mdns_resolver_schedule_fast_recovery_check_block_invoke;
        v23 = &__block_descriptor_tmp_120_1364;
        v24 = a2;
        v25 = a1;
        v26 = v12;
        dispatch_source_set_event_handler(v13, &v21);
        dispatch_activate(*(a2 + 40));
      }

      else
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v20 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21) = 0;
          _os_log_error_impl(&dword_2990ED000, v20, OS_LOG_TYPE_ERROR, "Failed to create fast recovery timer", &v21, 2u);
        }
      }
    }

    goto LABEL_39;
  }

  if (*(*(a1 + 16) + 158) != 1)
  {
    goto LABEL_39;
  }

  if (*(a2 + 110) == 1)
  {
    *(a2 + 96) = 0;
    *(a2 + 110) = 0;
  }

  else
  {
    v14 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(a2 + 110) = 0;
    if (v14 < 3)
    {
      goto LABEL_25;
    }
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v15 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 16) + 152);
    LODWORD(v21) = 67109378;
    HIDWORD(v21) = v16;
    LOWORD(v22) = 2112;
    *(&v22 + 2) = a2;
    _os_log_impl(&dword_2990ED000, v15, OS_LOG_TYPE_DEFAULT, "Cleared stream problems with %{mdns:protocol}d server %@", &v21, 0x12u);
  }

LABEL_25:
  if (*(a1 + 139) == 1)
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      while (*(v17 + 106) - 1 > 3 || (*(v17 + 110) & 1) != 0 || *(v17 + 96) >= 3u)
      {
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_39;
        }
      }

      *(a1 + 139) = 0;
      v18 = *(a1 + 104);
      if (v18)
      {
        dispatch_source_cancel(*(a1 + 104));
        dispatch_release(v18);
        *(a1 + 104) = 0;
      }

      v19 = *(a1 + 112);
      if (v19)
      {
        mdns_client_invalidate(v19);
        os_release(*(a1 + 112));
        *(a1 + 112) = 0;
      }

      _mdns_resolver_generate_connection_event(a1);
      os_retain(a1);
      if (_mdns_resolver_queue_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
      }

      v21 = MEMORY[0x29EDCA5F8];
      *&v22 = 0x40000000;
      *(&v22 + 1) = ___mdns_resolver_start_serverless_queries_async_block_invoke;
      v23 = &__block_descriptor_tmp_119_1362;
      v24 = a1;
      dispatch_async(_mdns_resolver_queue_s_queue, &v21);
    }
  }

LABEL_39:
  _mdns_resolver_start_pending_queriers(a1);
}

void _mdns_querier_handle_bad_rcode(uint64_t a1, void *object, int a3, uint64_t a4)
{
  if ((*(a4 + 100) - 1) >= 0x20)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << (*(a4 + 100) - 1);
  }

  *(a1 + 224) |= v8;
  v9 = *(a1 + 244);
  v10 = *(a1 + 144);
  if (v9 < 0)
  {
    if (v10)
    {
      os_release(v10);
      *(a1 + 144) = 0;
    }

    *(a1 + 244) = 0;
  }

  else if (v10 && (a3 == 5 || v9 != 5))
  {
    goto LABEL_15;
  }

  os_retain(object);
  v11 = *(a1 + 144);
  if (v11)
  {
    os_release(v11);
  }

  *(a1 + 144) = object;
  *(a1 + 244) = a3;
LABEL_15:
  if (a3 == 5)
  {
    _mdns_resolver_penalize_server_ex(*(a1 + 72), a4, 0, 0, 0);
  }

  if (_mdns_resolver_get_server(*(a1 + 72), *(a1 + 224)))
  {
    if (*(a1 + 80) == a4)
    {
      *(a1 + 80) = 0;
      *(a1 + 247) = 0;

      _mdns_querier_initiate_send(a1);
    }
  }

  else
  {
    v12 = *(a1 + 144);
    *(a1 + 144) = 0;
    _mdns_querier_conclude_ex(a1, 1, 0, v12);

    os_release(v12);
  }
}

uint64_t _mdns_message_is_query_response_ex(char *a1, unint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, char a6)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2 < 0xC)
  {
    return 0;
  }

  v10 = __rev16(*a1);
  if (!a4 && v10 != *(a3 + 68))
  {
    return 0;
  }

  if ((a1[2] & 0xF8) != 0x80)
  {
    return 0;
  }

  if (__rev16(*(a1 + 2)) != 1)
  {
    return 0;
  }

  v12 = 0;
  if (DNSMessageExtractQuestion(a1, a2, a1 + 12, v13, &v12 + 1, &v12, 0))
  {
    return 0;
  }

  if ((a6 & 1) == 0)
  {
    result = DomainNameEqual(v13, *(*(a3 + 56) + 24));
    if (!result)
    {
      return result;
    }
  }

  if (!a5 && HIWORD(v12) != *(a3 + 64) || v12 != *(a3 + 66))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = v10;
  }

  if (a5)
  {
    *a5 = HIWORD(v12);
  }

  return 1;
}

void _mdns_resolver_unpenalize_server(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a2 + 108) == 1)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = v5;
      v5 = *(v5 + 24);
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
    if (v5)
    {
      *(v6 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 108) = 0;
      if (a3)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v8 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v11 = 138412290;
        v12 = a2;
        v9 = "Unpenalizing responsive server %@";
      }

      else
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v8 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v11 = 138412290;
        v12 = a2;
        v9 = "Unpenalizing server %@";
      }

      _os_log_impl(&dword_2990ED000, v8, OS_LOG_TYPE_INFO, v9, &v11, 0xCu);
      do
      {
LABEL_19:
        v10 = v4;
        v4 = *(v4 + 24);
      }

      while (v4 && (*(v4 + 108) & 1) == 0 && *(v4 + 100) <= *(a2 + 100));
      *(a2 + 24) = v4;
      *(v10 + 24) = a2;
    }
  }
}

void ___mdns_resolver_start_serverless_queries_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 136) & 1) == 0)
  {
    v3 = v2;
    while (1)
    {
      v3 = *(v3 + 24);
      if (!v3)
      {
        break;
      }

      if (*(v3 + 106) - 1 <= 3)
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          do
          {
            if (!*(v4 + 80))
            {
              *(v4 + 247) = 0;
              if (*(v4 + 251))
              {
                v5 = 2000;
              }

              else
              {
                v5 = *(*(v4 + 72) + 124);
              }

              *(v4 + 204) = v5;
              _mdns_querier_initiate_send(v4);
            }

            v4 = *(v4 + 64);
          }

          while (v4);
          v2 = *(a1 + 32);
        }

        break;
      }
    }
  }

  os_release(v2);
}

void ___mdns_resolver_schedule_fast_recovery_check_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 40));
    dispatch_release(v3);
    *(a1[4] + 40) = 0;
    v2 = a1[4];
  }

  v4 = a1[5];
  v5 = a1[6];

  _mdns_resolver_handle_revived_server(v4, v2, 0, v5);
}

void _mdns_resolver_handle_revived_server(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 136) & 1) == 0 && *(a2 + 106) - 5 >= 0xFFFFFFFC)
  {
    v5 = (*(a2 + 100) - 1) >= 0x20 ? 0 : 1 << (*(a2 + 100) - 1);
    for (i = *(a1 + 32); i; i = *(i + 64))
    {
      if ((*(i + 224) & v5) == 0)
      {
        v8 = *(i + 80);
        if (*(i + 251))
        {
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if ((a3 & 1) == 0)
          {
            if ((*(a2 + 107) & 1) == 0 && ((*(*(i + 16) + 96))(i) & 0xFFFE) == 0x40)
            {
              continue;
            }

            v9 = *(i + 112);
            if (v9)
            {
              while (v9[4] != a2)
              {
                v9 = v9[3];
                if (!v9)
                {
                  goto LABEL_19;
                }
              }

              if (v9[8] - a4 > 0)
              {
                continue;
              }
            }
          }

LABEL_19:
          if (!v8 || v8 == a2 || (*(v8 + 109) & 1) != 0)
          {
LABEL_22:
            *(i + 212) &= ~v5;
            if (_mdns_resolver_log_s_once != -1)
            {
              dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
            }

            v10 = _mdns_resolver_log_s_log;
            if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
            {
              v11 = *(i + 128);
              if (!v11)
              {
                v11 = "";
              }

              *buf = 136446210;
              v15 = v11;
              _os_log_impl(&dword_2990ED000, v10, OS_LOG_TYPE_INFO, "%{public}sRestarting querier", buf, 0xCu);
            }

            *(i + 80) = 0;
            *(i + 247) = 0;
            if (*(i + 251))
            {
              v12 = 2000;
            }

            else
            {
              v12 = *(*(i + 72) + 124);
            }

            *(i + 204) = v12;
            _mdns_querier_initiate_send(i);
          }
        }
      }
    }
  }
}

void _mdns_querier_session_handle_event(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v32 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v8 = _mdns_resolver_log_s_log;
  if (v5)
  {
    v9 = a2 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v10))
  {
    v11 = *(a4 + 128);
    if (!v11)
    {
      v11 = "";
    }

    v26 = 136446722;
    v27 = v11;
    v28 = 1024;
    v29 = a2;
    v30 = 2048;
    v31 = v5;
    _os_log_impl(&dword_2990ED000, v8, v10, "%{public}sQuerier session event -- type: %{mdns:session_event}d, error: %{mdns:err}ld", &v26, 0x1Cu);
  }

  if ((a2 - 3) < 2)
  {
    v12 = *(a1 + 89);
    v13 = 112;
    if (*(a1 + 89))
    {
      v13 = 120;
    }

    v14 = (a4 + v13);
    do
    {
      v15 = v14;
      v16 = *v14;
      v14 = (*v14 + 24);
      if (v16)
      {
        v17 = v16 == a1;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
    if (!v16)
    {
      return;
    }

    *v15 = *(a1 + 24);
    *(a1 + 24) = 0;
    _mdns_session_invalidate(a1);
    os_release(a1);
    if (!v12)
    {
      return;
    }

    v18 = *(a1 + 32);
    if (a2 == 3)
    {
      if (v5)
      {
        v19 = *(a4 + 72);
        _mdns_resolver_generate_error_event(v19, v5);
      }

      else
      {
        if (*(a4 + 249) == 3)
        {
          goto LABEL_45;
        }

        v19 = *(a4 + 72);
      }

      if (*(a4 + 128))
      {
        v23 = *(a4 + 128);
      }

      else
      {
        v23 = "";
      }

      v24 = _mdns_resolver_handle_stream_error(v19, v18, v23);
      v25 = *(v19 + 140);
      _mdns_resolver_penalize_server_ex(v19, v18, 0, 0, 0);
      if (v25 == 1 && (v24 & 1) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_45:
    _mdns_querier_handle_stream_termination(a4, v18);
    return;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      _mdns_querier_send_query(a4, a1);
    }

    return;
  }

  if (*(a1 + 89) == 1)
  {
    v20 = *(a4 + 72);
    v21 = *(a4 + 128) ? *(a4 + 128) : "";
    v22 = _mdns_resolver_handle_stream_lateness(*(a4 + 72), *(a1 + 32), *(a1 + 56), v21);
    if (*(v20 + 140) == 1)
    {
      if (v22)
      {
LABEL_44:
        _mdns_querier_conclude_ex(a4, 6, 0, 0);
      }
    }
  }
}

void _mdns_resolver_generate_error_event(NSObject **a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "error_code", a2);
  _mdns_resolver_generate_event(a1, 3, v4);
  if (v4)
  {

    xpc_release(v4);
  }
}

uint64_t _mdns_resolver_handle_stream_error(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(*(a1 + 16) + 158) == 1)
  {
    v6 = mach_continuous_time();
    v7 = v6 - *(a2 + 88);
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
    }

    if (v7 >= mdns_mach_ticks_per_second_s_ticks_per_second)
    {
      v8 = *(a2 + 110);
      v9 = *(a2 + 96);
      *(a2 + 88) = v6;
      if (v9 == -1 || (*(a2 + 96) = v9 + 1, v9 > 1))
      {
        if ((((v9 > 2) | v8) ^ 1))
        {
          _mdns_resolver_log_server_problems(a1, a2, a3);
        }
      }
    }

    _mdns_resolver_check_for_problematic_servers(a1);
  }

  return *(a1 + 139);
}

void _mdns_querier_handle_stream_termination(int8x8_t *a1, uint64_t a2)
{
  v3 = *(a2 + 100) - 1;
  if (v3 < 0x20)
  {
    v4 = ~(1 << v3);
  }

  else
  {
    v4 = -1;
  }

  a1[27] = vand_s8(vdup_n_s32(v4), a1[27]);
  v5 = a1[10];
  if (*&v5 != a2)
  {
    if (*&v5 || *&a1[13])
    {
      return;
    }

    goto LABEL_14;
  }

  eligible_server = _mdns_querier_get_eligible_server(a1);
  if (eligible_server)
  {
    if (*(eligible_server + 108))
    {
      v7 = 0;
    }

    else
    {
      v7 = eligible_server;
    }
  }

  else
  {
    v7 = 0;
  }

  _mdns_querier_set_current_server(a1, v7);
  if (a1[10])
  {
LABEL_14:

    _mdns_querier_initiate_send(a1);
  }
}

uint64_t _mdns_resolver_handle_stream_lateness(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(*(a1 + 16) + 158) == 1 && a3 - *(a2 + 80) >= 1)
  {
    if (*(a2 + 110) == 1)
    {
      *(a2 + 110) = 1;
    }

    else
    {
      v5 = *(a2 + 96);
      *(a2 + 110) = 1;
      if (v5 <= 2)
      {
        _mdns_resolver_log_server_problems(a1, a2, a4);
      }
    }

    _mdns_resolver_check_for_problematic_servers(a1);
  }

  return *(a1 + 139);
}

void _mdns_resolver_log_server_problems(uint64_t a1, uint64_t a2, const char *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v7 = "";
    v8 = *(*(a1 + 16) + 152);
    if (a3)
    {
      v7 = a3;
    }

    v9 = *(a2 + 110);
    v10 = *(a2 + 96);
    v11 = 136447234;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    v15 = 2112;
    v16 = a2;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, "%{public}sHaving stream problems with %{mdns:protocol}d server %@ -- lateness: %{BOOL}d, error count: %u", &v11, 0x28u);
  }
}

uint64_t ___mdns_session_activate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (v3)
  {
    dispatch_source_cancel(*(result + 40));
    dispatch_release(v3);
    *(*(a1 + 32) + 40) = 0;
    result = *(a1 + 32);
  }

  if (*(result + 88) == 1)
  {
    v4 = **(result + 72);
    if (v4)
    {
      v5 = *(result + 48);

      return v4(result, 2, 0, v5);
    }
  }

  return result;
}

void _mdns_common_session_terminate_async(void *a1, int a2)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_common_session_terminate_async_block_invoke;
  v4[3] = &__block_descriptor_tmp_115_1380;
  v4[4] = a1;
  v5 = a2;
  dispatch_async(_mdns_resolver_queue_s_queue, v4);
}

void ___mdns_common_session_terminate_async_block_invoke(uint64_t a1)
{
  _mdns_common_session_finish(*(a1 + 32), 3, *(a1 + 40));
  v2 = *(a1 + 32);

  os_release(v2);
}

void _mdns_common_session_finish(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) != 3)
  {
    _mdns_session_invalidate_internal(a1);
    *(a1 + 88) = 3;
    v6 = **(a1 + 72);
    if (v6)
    {
      v7 = *(a1 + 48);

      v6(a1, a2, a3, v7);
    }
  }
}

void _mdns_resolver_session_receive(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = mdns_message_create_with_dispatch_data(a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(a3 + 32);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = 0;
  do
  {
    while (1)
    {
      v9 = v7;
      v7 = *(v7 + 64);
      v16 = 0;
      if (_mdns_querier_is_response_acceptable(v9, v6, 0, 0, &v16))
      {
        break;
      }

LABEL_15:
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if ((v8 & 1) == 0)
    {
      if (*(v9 + 128))
      {
        v10 = *(v9 + 128);
      }

      else
      {
        v10 = "";
      }

      _mdns_resolver_log_receive(a3, a1, v6, 1, v10, *(v9 + 255));
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 89);
    v13 = *(a1 + 56);
    v14 = (*(*(v9 + 16) + 96))(v9);
    _mdns_resolver_note_responsiveness(a3, v11, v12, v13, v14);
    if (v16 <= 9u && ((1 << v16) & 0x209) != 0)
    {
      v8 = 1;
      _mdns_querier_conclude_ex(v9, 1, 0, v6);
      goto LABEL_15;
    }

    _mdns_querier_handle_bad_rcode(v9, v6, v16, *(a1 + 32));
    v8 = 1;
  }

  while (v7);
LABEL_18:
  if ((v8 & 1) == 0)
  {
LABEL_19:
    _mdns_resolver_log_receive(a3, a1, v6, 0, 0, 0);
  }

  os_release(v6);
}

void _mdns_resolver_session_handle_event(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v8 = _mdns_resolver_log_s_log;
  if (a3)
  {
    v9 = a2 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v10))
  {
    v16[0] = 67109376;
    v16[1] = a2;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&dword_2990ED000, v8, v10, "Resolver session event -- type: %{mdns:session_event}d, error: %{mdns:err}ld", v16, 0x12u);
  }

  if ((a2 - 3) < 2)
  {
    v11 = a4;
    do
    {
      v11 = *(v11 + 24);
      if (!v11)
      {
        return;
      }

      v12 = *(v11 + 32);
    }

    while (v12 != a1);
    if (a1)
    {
      _mdns_session_invalidate(v12);
      os_release(*(v11 + 32));
      *(v11 + 32) = 0;
    }

    if (a2 == 3)
    {
      if (a3)
      {
        _mdns_resolver_generate_error_event(a4, a3);
LABEL_23:
        _mdns_resolver_handle_stream_error(a4, v11, 0);
        _mdns_resolver_penalize_server_ex(a4, v11, 0, 0, 0);
        goto LABEL_34;
      }

      if (!*(a1 + 84))
      {
        goto LABEL_23;
      }
    }

LABEL_34:
    for (i = *(a4 + 32); i; i = i[8])
    {
      if (i[31].i8[3] == 1)
      {
        _mdns_querier_handle_stream_termination(i, v11);
      }
    }

    return;
  }

  if (a2 == 1)
  {
    if ((*(*(a1 + 32) + 100) - 1) >= 0x20)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1 << (*(*(a1 + 32) + 100) - 1);
    }

    for (j = *(a4 + 32); j; j = *(j + 64))
    {
      if (*(j + 251) == 1 && (*(j + 216) & v13) != 0)
      {
        _mdns_querier_send_query(j, a1);
      }
    }
  }

  else if (a2 == 2)
  {
    _mdns_resolver_handle_stream_lateness(a4, *(a1 + 32), *(a1 + 56), 0);
  }
}

void _mdns_url_session_send(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = a3;
  v136 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v64 = *(a1 + 112);
    LODWORD(applier) = 138412290;
    *(&applier + 4) = v64;
    _os_log_debug_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEBUG, "Sending message on URL %@", &applier, 0xCu);
  }

  v7 = *(a1 + 184);
  if (!v7)
  {
    v106 = 0;
    v108 = 0;
    v9 = 0;
LABEL_49:
    os_retain(a1);
    v32 = *(*(a1 + 32) + 48);
    url = nw_endpoint_get_url(*(a1 + 112));
    size = *(v7 + 192);
    v116[0] = MEMORY[0x29EDCA5F8];
    v116[1] = 0x40000000;
    v116[2] = ___mdns_url_session_send_block_invoke_110;
    v116[3] = &__block_descriptor_tmp_112;
    v116[4] = a1;
    v117 = v9;
    v115 = v32;
    v113 = a2;
    v34 = v116;
    context = objc_autoreleasePoolPush();
    if (v9)
    {
      v35 = objc_alloc(MEMORY[0x29EDB84F8]);
      v36 = objc_alloc(MEMORY[0x29EDB8E70]);
      v37 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:url];
      v38 = [v36 initWithString:v37];
      v39 = [v35 initWithURL:v38];

      [v39 setHTTPMethod:@"POST"];
      [v39 setHTTPBody:v113];
      v40 = @"application/oblivious-dns-message";
    }

    else
    {
      v41 = [v113 base64EncodedStringWithOptions:0];
      v42 = [v41 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

      v43 = [v42 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

      v44 = [v43 stringByReplacingOccurrencesOfString:@"=" withString:&stru_2A1F31250];

      v45 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s?dns=%@", url, v44];
      v46 = objc_alloc(MEMORY[0x29EDB84F8]);
      v47 = v3;
      v48 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:v45];
      v39 = [v46 initWithURL:v48];

      v3 = v47;
      [v39 setHTTPMethod:@"GET"];

      v40 = @"application/dns-message";
    }

    v49 = v40;
    [v39 setValue:v49 forHTTPHeaderField:@"accept"];
    [v39 setValue:v49 forHTTPHeaderField:@"content-type"];
    v50 = nw_endpoint_copy_interface();
    v51 = v50;
    if (v50)
    {
      v52 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:nw_interface_get_name(v50)];
      [v39 setBoundInterfaceIdentifier:v52];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v132 = 0x3032000000;
    v133 = __Block_byref_object_copy__731;
    v134 = __Block_byref_object_dispose__732;
    v135 = 0;
    if (v3 == 1 || v3 == 28)
    {
      v53 = nw_activity_create();
      v54 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v53;

      if (*(*(&buf + 1) + 40))
      {
        nw_activity_activate();
      }
    }

    *&applier = MEMORY[0x29EDCA5F8];
    *(&applier + 1) = 3221225472;
    v123 = __http_task_create_dns_query_block_invoke;
    v124 = &unk_29EF097D8;
    p_buf = &buf;
    v55 = v39;
    v125 = v55;
    v56 = v34;
    v126 = v56;
    v57 = _http_task_create_data_task(v55, &applier);
    [v57 set_hostOverride:v115];
    if (v57 && *(*(&buf + 1) + 40))
    {
      [v57 set_nw_activity:?];
    }

    if (size)
    {
      v58 = [v57 _effectiveConfiguration];
      v59 = [objc_alloc(MEMORY[0x29EDB8518]) _initWithConfiguration:v58];
      v60 = *MEMORY[0x29EDB8520];
      v128 = size;
      v129 = v60;
      v61 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v128 count:1];
      v130 = v61;
      v62 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      [v59 set_socketStreamProperties:v62];

      [v57 _adoptEffectiveConfiguration:v59];
    }

    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(context);

    *(a1 + 144) = v57;
    if (v57)
    {
      v63 = objc_autoreleasePoolPush();
      [v57 resume];
      objc_autoreleasePoolPop(v63);
      options = v106;
      v14 = v108;
      if (!v106)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    os_release(a1);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    options = v106;
    v14 = v108;
    v102 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(applier) = 0;
      _os_log_error_impl(&dword_2990ED000, v102, OS_LOG_TYPE_ERROR, "Failed to create HTTP task", &applier, 2u);
    }

    goto LABEL_84;
  }

  v114 = v3;
  v8 = *(v7 + 168);
  v9 = v8 != 0;
  if (!v8)
  {
    options = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  length = xpc_data_get_length(*(v7 + 168));
  bytes_ptr = xpc_data_get_bytes_ptr(*(v7 + 168));
  if (nw_http_oblivious_config_is_valid())
  {
    *&applier = 0;
    if (nw_endpoint_get_port(*(a1 + 112)) == 443)
    {
      nw_endpoint_get_hostname(*(a1 + 112));
      nw_endpoint_get_url_path();
      asprintf(&applier, "/dns-query?targethost=%s&targetpath=%s");
    }

    else
    {
      nw_endpoint_get_hostname(*(a1 + 112));
      nw_endpoint_get_url_path();
      asprintf(&applier, "/dns-query?targethost=%s:%u&targetpath=%s");
    }

    options = nw_oblivious_http_create_options();
    if (applier)
    {
      free(applier);
      *&applier = 0;
    }

    if (options)
    {
      v14 = 0;
      v13 = 1;
      goto LABEL_28;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v70 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_83:
      options = 0;
      v14 = 0;
LABEL_84:
      v71 = -6700;
      goto LABEL_85;
    }

    LOWORD(buf) = 0;
    v72 = "Failed to create oblivious http options";
    p_applier = &buf;
LABEL_88:
    _os_log_error_impl(&dword_2990ED000, v70, OS_LOG_TYPE_ERROR, v72, p_applier, 2u);
    goto LABEL_83;
  }

  if (!a2 || !bytes_ptr)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v16 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    LOWORD(buf) = 0;
    v17 = "Parameters are NULL";
LABEL_105:
    v80 = v16;
    v81 = 2;
    goto LABEL_106;
  }

  if (length <= 1)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v15 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = length;
    _os_log_error_impl(&dword_2990ED000, v15, OS_LOG_TYPE_ERROR, "Config length is too short: %zu", &buf, 0xCu);
LABEL_76:
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

LABEL_78:
    v16 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_79:
      v69 = _mdns_resolver_log_s_once;
LABEL_80:
      if (v69 != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v70 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      LOWORD(applier) = 0;
      v72 = "Failed to create oblivious request";
      p_applier = &applier;
      goto LABEL_88;
    }

    LOWORD(buf) = 0;
    v17 = "Failed to parse supported config";
    goto LABEL_105;
  }

  v65 = bswap32(*bytes_ptr) >> 16;
  if (length - 2 == v65)
  {
    v66 = bytes_ptr + 1;
    while (!mdns_odoh_config_is_valid_inner(v66, v65))
    {
      if (v65 >= 4)
      {
        v67 = bswap32(v66[1]) >> 16;
        v66 = (v66 + v67);
        v68 = v65 > v67;
        v65 -= v67;
        if (v68)
        {
          continue;
        }
      }

      goto LABEL_76;
    }

    if (!v66)
    {
      goto LABEL_76;
    }
  }

  else if (!mdns_odoh_config_is_valid_inner(bytes_ptr, length))
  {
    goto LABEL_76;
  }

  cchpke_params_x25519_AESGCM128_HKDF_SHA256();
  v74 = cchpke_params_sizeof_kdf_hash();
  v75 = ccsha256_di();
  if (!v74)
  {
    goto LABEL_138;
  }

  LODWORD(length) = v75;
  v76 = malloc_type_calloc(1uLL, v74, 0xC4C2E807uLL);
  if (!v76)
  {
    goto LABEL_138;
  }

  v77 = v76;
  v78 = cchkdf_extract();
  if (v78)
  {
    LODWORD(length) = v78;
    free(v77);
    if (_mdns_crypto_log_s_once == -1)
    {
LABEL_94:
      v79 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = length;
      v17 = "Extract error: %d";
      v80 = v79;
      v81 = 8;
LABEL_106:
      _os_log_error_impl(&dword_2990ED000, v80, OS_LOG_TYPE_ERROR, v17, &buf, v81);
      goto LABEL_79;
    }

LABEL_139:
    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    goto LABEL_94;
  }

  v105 = dispatch_data_get_size(a2);
  v104 = arc4random_uniform(0x10u);
  sizea = v105 + v104 + 4;
  length = cchpke_params_sizeof_aead_tag();
  v82 = cchpke_params_sizeof_kem_enc();
  v83 = &length[v82 + sizea];
  if (&v83[v74] == -5)
  {
    goto LABEL_138;
  }

  v107 = sizea + length + v82;
  LODWORD(length) = 1;
  v103 = &v83[v74 + 5];
  v84 = malloc_type_calloc(1uLL, v103, 0x1F966E85uLL);
  if (!v84)
  {
    goto LABEL_138;
  }

  *v84 = 1;
  *(v84 + 1) = bswap32(v74) >> 16;
  v85 = v84;
  v86 = cchkdf_expand();
  free(v77);
  if (v86)
  {
    v87 = v85;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v88 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v86;
      _os_log_error_impl(&dword_2990ED000, v88, OS_LOG_TYPE_ERROR, "Expand error: %d", &buf, 8u);
    }

    v89 = v87;
    goto LABEL_122;
  }

  contexta = v85;
  length = &v85[v74 + 3];
  *length = bswap32(v107) >> 16;
  v90 = malloc_type_calloc(1uLL, 0x60uLL, 0x51C97C44uLL);
  if (!v90)
  {
    goto LABEL_138;
  }

  v91 = v90;
  LODWORD(v130) = 0;
  ccrng();
  v92 = cchpke_initiator_setup();
  if (v92)
  {
    v93 = v92;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v94 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v93;
      _os_log_error_impl(&dword_2990ED000, v94, OS_LOG_TYPE_ERROR, "Setup error: %d", &buf, 8u);
    }

LABEL_121:
    free(contexta);
    v89 = v91;
LABEL_122:
    free(v89);
    goto LABEL_79;
  }

  LODWORD(length) = v105 + v104 + 4;
  if (v105 + v104 == -4 || (v95 = malloc_type_calloc(1uLL, sizea, 0xB757762EuLL)) == 0)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v96 = v95;
  *v95 = bswap32(v105) >> 16;
  *(v95 + v105 + 2) = bswap32(v104) >> 16;
  *&applier = MEMORY[0x29EDCA5F8];
  *(&applier + 1) = 0x40000000;
  v123 = __mdns_encrypt_oblivious_request_block_invoke;
  v124 = &__block_descriptor_tmp_25;
  v125 = v95 + 1;
  dispatch_data_apply(a2, &applier);
  v97 = cchpke_initiator_encrypt();
  if (v97)
  {
    v98 = v97;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v99 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v98;
      _os_log_error_impl(&dword_2990ED000, v99, OS_LOG_TYPE_ERROR, "Encrypt error: %d", &buf, 8u);
    }

    free(v96);
    goto LABEL_121;
  }

  *(a1 + 152) = v91;
  *(a1 + 160) = 96;
  *(a1 + 168) = v96;
  *(a1 + 176) = sizea;
  v100 = dispatch_data_create(v85, v103, 0, *MEMORY[0x29EDCA558]);
  v69 = _mdns_resolver_log_s_once;
  if (!v100)
  {
    goto LABEL_80;
  }

  v14 = v100;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v101 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(applier) = 0;
    _os_log_debug_impl(&dword_2990ED000, v101, OS_LOG_TYPE_DEBUG, "Created oblivious request", &applier, 2u);
  }

  options = 0;
  v13 = 0;
  a2 = v14;
LABEL_28:
  if (!*(v7 + 176))
  {
    v106 = options;
    v108 = v14;
    v3 = v114;
    goto LABEL_49;
  }

  nw_parameters_clear_custom_proxy_configs();
  nw_parameters_add_custom_proxy_config();
  if (options)
  {
    v18 = nw_parameters_copy_default_protocol_stack(*(a1 + 120));
    nw_protocol_stack_clear_application_protocols(v18);
    nw_protocol_stack_append_application_protocol();
    if (v18)
    {
      nw_release(v18);
    }
  }

  v19 = nw_connection_create(*(a1 + 112), *(a1 + 120));
  *(a1 + 128) = v19;
  if (!v19)
  {
    v71 = -6729;
LABEL_85:
    _mdns_common_session_terminate_async(a1, v71);
    if (!options)
    {
      goto LABEL_66;
    }

LABEL_65:
    nw_release(options);
    goto LABEL_66;
  }

  os_retain(a1);
  v20 = *(a1 + 128);
  v21 = options;
  v22 = v14;
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  nw_connection_set_queue(v20, _mdns_resolver_queue_s_queue);
  v23 = *(a1 + 128);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___mdns_url_session_send_block_invoke;
  handler[3] = &__block_descriptor_tmp_97;
  handler[4] = a1;
  nw_connection_set_state_changed_handler(v23, handler);
  v25 = MEMORY[0x29C299270](v24);
  if (v8)
  {
    v26 = "Oblivious Message";
  }

  else
  {
    v26 = "HTTP Message";
  }

  nw_http_fields_set_value_by_name();
  nw_http_fields_set_value_by_name();
  v27 = dispatch_data_get_size(a2);
  snprintf(&applier, 0x80uLL, "%zu", v27);
  nw_http_fields_set_value_by_name();
  nw_endpoint_get_url(*(a1 + 112));
  v28 = nw_http_request_create_from_url();
  nw_http_request_set_header_fields();
  metadata_for_request = nw_http_create_metadata_for_request();
  if (v28)
  {
    nw_release(v28);
  }

  v30 = nw_content_context_create(v26);
  nw_content_context_set_metadata_for_protocol(v30, metadata_for_request);
  if (metadata_for_request)
  {
    nw_release(metadata_for_request);
  }

  v14 = v22;
  if (v25)
  {
    nw_release(v25);
  }

  nw_content_context_set_is_final(v30, 1);
  nw_connection_send(*(a1 + 128), a2, v30, 1, *MEMORY[0x29EDBB828]);
  options = v21;
  if (v30)
  {
    nw_release(v30);
  }

  nw_connection_start(*(a1 + 128));
  *(a1 + 136) = _mdns_create_and_start_connection_activity(*(a1 + 128), v114);
  v31 = *(a1 + 128);
  completion[0] = MEMORY[0x29EDCA5F8];
  completion[1] = 0x40000000;
  completion[2] = ___mdns_url_session_send_block_invoke_102;
  completion[3] = &__block_descriptor_tmp_109_1394;
  completion[4] = a1;
  v119 = v8 != 0;
  v120 = v13;
  nw_connection_receive_message(v31, completion);
  if (v21)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v14)
  {
    dispatch_release(v14);
  }
}

void ___mdns_url_session_send_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v16 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  if (*(v5 + 128))
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v7 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = nw_connection_state_to_string();
      v9 = *(*(a1 + 32) + 128);
      v10 = 136315650;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = a3;
      _os_log_debug_impl(&dword_2990ED000, v7, OS_LOG_TYPE_DEBUG, "Connection state changed to %s for connection %@ error %@", &v10, 0x20u);
    }

    switch(v3)
    {
      case 3:
        _mdns_url_session_handle_connection_no_longer_pending(*(a1 + 32));
        break;
      case 4:
        _mdns_common_session_finish(*(a1 + 32), 3, 4294960543);
        break;
      case 5:
        v5 = *(a1 + 32);
LABEL_10:
        _mdns_url_session_handle_connection_no_longer_pending(v5);
        os_release(*(a1 + 32));
        break;
    }
  }

  else if (a2 == 5)
  {
    goto LABEL_10;
  }
}

uint64_t _mdns_create_and_start_connection_activity(uint64_t a1, uint64_t a2)
{
  if (a2 != 1 && a2 != 28)
  {
    return 0;
  }

  v2 = nw_activity_create();
  if (v2)
  {
    nw_connection_start_activity();
  }

  return v2;
}

void ___mdns_url_session_send_block_invoke_102(uint64_t a1, uint64_t error_code, NSObject *a3, uint64_t a4, NSObject *a5)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!*(*(a1 + 32) + 128))
  {
    return;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v9 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v30) = 134217984;
    *(&v30 + 4) = error_code;
    _os_log_debug_impl(&dword_2990ED000, v9, OS_LOG_TYPE_DEBUG, "Received data %p", &v30, 0xCu);
  }

  *&v30 = 0;
  *(&v30 + 1) = &v30;
  v31 = 0x2000000000;
  v32 = 0;
  if (a3)
  {
    v10 = nw_protocol_copy_http_definition();
    a3 = nw_content_context_copy_protocol_metadata(a3, v10);
    if (v10)
    {
      nw_release(v10);
    }

    if (a3)
    {
      v11 = nw_http_metadata_copy_response();
      nw_release(a3);
      if (v11)
      {
        LODWORD(a3) = nw_http_response_get_status_code();
        v12 = nw_http_response_copy_header_fields();
        nw_http_fields_access_value_by_name();
        if (v12)
        {
          nw_release(v12);
        }

        nw_release(v11);
      }

      else
      {
        LODWORD(a3) = 0;
      }
    }
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v13 = _mdns_resolver_log_s_log;
  if (a3 != 200 || error_code == 0)
  {
    v15 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v15))
  {
    v16 = "";
    if (!error_code)
    {
      v16 = "out";
    }

    *buf = 67109378;
    LODWORD(v29[0]) = a3;
    WORD2(v29[0]) = 2082;
    *(v29 + 6) = v16;
    _os_log_impl(&dword_2990ED000, v13, v15, "Received HTTP status %u with%{public}s body", buf, 0x12u);
  }

  if (error_code)
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 41))
      {
        v17 = 0;
      }

      else
      {
        error_code = mdns_decrypt_oblivious_response(error_code, *(*(a1 + 32) + 152), *(*(a1 + 32) + 160), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v20 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29[0] = error_code;
          _os_log_debug_impl(&dword_2990ED000, v20, OS_LOG_TYPE_DEBUG, "Decrypted %@", buf, 0xCu);
        }

        v17 = error_code;
        if (!error_code)
        {
          v18 = 0;
          v24 = 0;
          error_code = 4294960520;
          goto LABEL_48;
        }
      }

      v21 = *(*(&v30 + 1) + 24);
      if (v21)
      {
        _mdns_https_resolver_set_client_address(*(*(a1 + 32) + 184), v21);
      }

      v22 = *(a1 + 32);
      v23 = *(v22 + 184);
      if ((*(v23 + 230) & 1) == 0)
      {
        *(v23 + 230) = 1;
        _mdns_resolver_generate_error_event(v23, 0);
        v22 = *(a1 + 32);
      }

      _mdns_common_session_invoke_receive(v22, error_code);
      if (v17)
      {
        dispatch_release(v17);
      }
    }

    else
    {
      v19 = *(*(&v30 + 1) + 24);
      if (v19)
      {
        _mdns_https_resolver_set_client_address(*(*(a1 + 32) + 184), v19);
      }

      _mdns_common_session_invoke_receive(*(a1 + 32), error_code);
    }

    error_code = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v24 = 1;
LABEL_48:
  v25 = *(*(&v30 + 1) + 24);
  if (v25)
  {
    nw_release(v25);
    *(*(&v30 + 1) + 24) = 0;
  }

  if (*(*(a1 + 32) + 136))
  {
    nw_connection_end_activity();
    nw_activity_complete_with_reason();
    v26 = *(*(a1 + 32) + 136);
    if (v26)
    {
      nw_release(v26);
      *(*(a1 + 32) + 136) = 0;
    }
  }

  if (v18)
  {
    v27 = v24 ^ 1;
    if (!a5)
    {
      v27 = 1;
    }

    if ((v27 & 1) == 0)
    {
      error_code = nw_error_get_error_code(a5);
    }
  }

  else
  {
    if (a3 == 401)
    {
      error_code = 4294960520;
    }

    else if (a3)
    {
      error_code = 4294960560;
    }

    else if (a5)
    {
      error_code = nw_error_get_error_code(a5);
    }

    else
    {
      error_code = 4294960543;
    }

    *(*(*(a1 + 32) + 184) + 230) = 0;
  }

  _mdns_common_session_finish(*(a1 + 32), 3, error_code);
  _Block_object_dispose(&v30, 8);
}

void ___mdns_url_session_send_block_invoke_110(uint64_t a1, NSObject *a2, int a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (*(v4 + 144))
  {
    v9 = *(a1 + 40);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v10 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = a2;
      _os_log_debug_impl(&dword_2990ED000, v10, OS_LOG_TYPE_DEBUG, "Received response %@", &v15, 0xCu);
      if (a2)
      {
LABEL_6:
        if (v9)
        {
          a2 = mdns_decrypt_oblivious_response(a2, *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176));
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v11 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
          {
            v15 = 138412290;
            v16 = a2;
            _os_log_debug_impl(&dword_2990ED000, v11, OS_LOG_TYPE_DEBUG, "Decrypted response %@", &v15, 0xCu);
          }

          v12 = a2;
          if (!a2)
          {
            if (a3 == 401)
            {
              a4 = 4294960520;
            }

            else
            {
              a4 = 4294960519;
            }

LABEL_29:
            _mdns_common_session_finish(*(a1 + 32), 3, a4);
            v4 = *(a1 + 32);
            goto LABEL_30;
          }
        }

        else
        {
          v12 = 0;
        }

        _mdns_common_session_invoke_receive(v4, a2);
        if (!a4)
        {
LABEL_27:
          if (v12)
          {
            dispatch_release(v12);
          }

          goto LABEL_29;
        }

LABEL_20:
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v13 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = a4;
          _os_log_error_impl(&dword_2990ED000, v13, OS_LOG_TYPE_ERROR, "Got error %@", &v15, 0xCu);
        }

        Code = CFErrorGetCode(a4);
        if (Code)
        {
          a4 = Code;
        }

        else
        {
          a4 = 4294960596;
        }

        goto LABEL_27;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v12 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_30:
  os_release(v4);
}

void _mdns_common_session_invoke_receive(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_release(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 84);
    if (v5 != -1)
    {
      *(a1 + 84) = v5 + 1;
    }

    v6 = *(*(a1 + 72) + 8);
    if (v6)
    {
      v7 = *(a1 + 48);

      v6(a1, a2, v7);
    }
  }
}

void ___mdns_url_session_send_block_invoke_104(uint64_t a1, char *hostname)
{
  v7 = *MEMORY[0x29EDCA608];
  *(*(*(a1 + 32) + 8) + 24) = nw_endpoint_create_host(hostname, "0");
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v3 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = 138412290;
    v6 = v4;
    _os_log_debug_impl(&dword_2990ED000, v3, OS_LOG_TYPE_DEBUG, "Received client address %@", &v5, 0xCu);
  }
}

const sockaddr *_mdns_https_resolver_set_client_address(uint64_t a1, nw_endpoint_t endpoint)
{
  *(a1 + 200) = 0;
  v2 = a1 + 200;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  result = nw_endpoint_get_address(endpoint);
  if (result)
  {
    sa_family = result->sa_family;
    if (sa_family == 30)
    {
      v5 = *result;
      *(v2 + 12) = *&result->sa_data[10];
    }

    else
    {
      if (sa_family != 2)
      {
        return result;
      }

      v5 = *result;
    }

    *v2 = v5;
  }

  return result;
}

void _mdns_url_session_handle_connection_no_longer_pending(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    v1 = --g_pending_odoh_connection_count;
    *(a1 + 192) = 0;
    v2 = g_pending_odoh_sessions;
    if (g_pending_odoh_sessions)
    {
      v3 = v1 > 9;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      g_pending_odoh_sessions = *(g_pending_odoh_sessions + 104);
      *(v2 + 104) = 0;
      _mdns_url_session_activate_for_odoh(v2);

      os_release(v2);
    }
  }
}

void _mdns_url_session_activate_for_odoh(_BYTE *object)
{
  v8 = *MEMORY[0x29EDCA608];
  object[192] = 1;
  ++g_pending_odoh_connection_count;
  v2 = &g_active_odoh_sessions;
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 104);
  }

  while (v4);
  *v3 = object;
  os_retain(object);
  *(object + 12) = mach_continuous_time();
  ++g_active_odoh_session_count;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v5 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = g_active_odoh_session_count;
    _os_log_debug_impl(&dword_2990ED000, v5, OS_LOG_TYPE_DEBUG, "Active ODoH session count increase: %zu", &v6, 0xCu);
  }

  _mdns_common_session_make_ready_async(object);
}

void _mdns_common_session_make_ready_async(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___mdns_common_session_make_ready_async_block_invoke;
  block[3] = &__block_descriptor_tmp_93_1410;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void ___mdns_common_session_make_ready_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88) == 1 && (*(v2 + 90) & 1) == 0)
  {
    *(v2 + 90) = 1;
    v3 = **(v2 + 72);
    if (v3)
    {
      v3(v2, 1, 0, *(v2 + 48));
      v2 = *(a1 + 32);
    }
  }

  os_release(v2);
}

void _mdns_url_session_invalidate(void *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[16];
  if (v2)
  {
    if (a1[17])
    {
      nw_connection_end_activity();
      nw_activity_complete_with_reason();
      v2 = a1[16];
    }

    nw_connection_cancel(v2);
    v3 = a1[16];
    if (v3)
    {
      nw_release(v3);
      a1[16] = 0;
    }
  }

  v4 = a1[17];
  if (v4)
  {
    nw_release(v4);
    a1[17] = 0;
  }

  v5 = a1[18];
  if (v5)
  {
    http_task_cancel(v5);
    a1[18] = 0;
  }

  _mdns_url_session_forget_crypto(a1);
  _mdns_url_session_handle_connection_no_longer_pending(a1);
  v6 = &g_active_odoh_sessions;
  do
  {
    v7 = v6;
    v8 = *v6;
    v6 = (*v6 + 104);
    if (v8)
    {
      v9 = v8 == a1;
    }

    else
    {
      v9 = 1;
    }
  }

  while (!v9);
  if (v8)
  {
    *v7 = a1[13];
    a1[13] = 0;
    os_release(a1);
    --g_active_odoh_session_count;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v10 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134217984;
      v19 = g_active_odoh_session_count;
      _os_log_debug_impl(&dword_2990ED000, v10, OS_LOG_TYPE_DEBUG, "Active ODoH session count decrease: %zu", &v18, 0xCu);
    }

    v11 = g_active_odoh_session_interrupt_timer;
    if (g_active_odoh_session_interrupt_timer)
    {
      dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
      dispatch_release(v11);
      g_active_odoh_session_interrupt_timer = 0;
    }

    if (g_pending_odoh_sessions)
    {
      _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session();
    }
  }

  else
  {
    v12 = &g_pending_odoh_sessions;
    do
    {
      v13 = v12;
      v14 = *v12;
      v12 = (*v12 + 104);
      if (v14)
      {
        v15 = v14 == a1;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
    if (v14)
    {
      *v13 = a1[13];
      a1[13] = 0;
      os_release(a1);
    }

    if (!g_pending_odoh_sessions)
    {
      v16 = g_active_odoh_session_interrupt_timer;
      if (g_active_odoh_session_interrupt_timer)
      {
        dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
        dispatch_release(v16);
        g_active_odoh_session_interrupt_timer = 0;
      }
    }
  }

  v17 = a1[23];
  if (v17)
  {
    os_release(v17);
    a1[23] = 0;
  }
}

void _mdns_url_session_forget_crypto(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    memset_s(v2, a1[20], 0, a1[20]);
    v3 = a1[19];
    if (v3)
    {
      free(v3);
      a1[19] = 0;
    }
  }

  a1[20] = 0;
  v4 = a1[21];
  if (v4)
  {
    memset_s(v4, a1[22], 0, a1[22]);
    v5 = a1[21];
    if (v5)
    {
      free(v5);
      a1[21] = 0;
    }
  }

  a1[22] = 0;
}

void _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session()
{
  v0 = g_active_odoh_sessions;
  if (g_active_odoh_sessions)
  {
    v1 = g_active_odoh_session_interrupt_timer == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = mach_continuous_time() - v0[12];
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
    }

    if (v2 / mdns_mach_ticks_per_second_s_ticks_per_second > 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = 10000 - (1000 * (v2 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second + 1000 * (v2 / mdns_mach_ticks_per_second_s_ticks_per_second));
    }

    g_active_odoh_session_interrupt_timer = _mdns_resolver_create_oneshot_timer(v3, 5u);
    if (g_active_odoh_session_interrupt_timer)
    {
      os_retain(v0);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke;
      handler[3] = &__block_descriptor_tmp_91_1412;
      handler[4] = v0;
      dispatch_source_set_event_handler(g_active_odoh_session_interrupt_timer, handler);
      v4[0] = MEMORY[0x29EDCA5F8];
      v4[1] = 0x40000000;
      v4[2] = ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke_2;
      v4[3] = &__block_descriptor_tmp_92;
      v4[4] = v0;
      dispatch_source_set_cancel_handler(g_active_odoh_session_interrupt_timer, v4);
      dispatch_activate(g_active_odoh_session_interrupt_timer);
    }
  }
}

void ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke(uint64_t a1)
{
  v2 = g_active_odoh_session_interrupt_timer;
  if (g_active_odoh_session_interrupt_timer)
  {
    dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
    dispatch_release(v2);
    g_active_odoh_session_interrupt_timer = 0;
  }

  v3 = *(a1 + 32);

  _mdns_common_session_finish(v3, 4, 0);
}

uint64_t _mdns_url_session_activate(void *a1)
{
  if (*(a1[23] + 176))
  {
    if (g_pending_odoh_connection_count >= 0xA)
    {
      v1 = &g_pending_odoh_sessions;
      do
      {
        v2 = v1;
        v3 = *v1;
        v1 = (*v1 + 104);
      }

      while (v3);
      *v2 = a1;
      os_retain(a1);
      _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session();
    }

    else
    {
      _mdns_url_session_activate_for_odoh(a1);
    }
  }

  else
  {
    _mdns_common_session_make_ready_async(a1);
  }

  return 0;
}

uint64_t _mdns_url_session_initialize(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = 0;
  if (*(a2[2] + 144) == 4)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 184) = v4;
  if (v4)
  {
    os_retain(v4);
    v5 = *(a2[2] + 112);
    if (v5)
    {
      v6 = v5(a2, &v14);
      result = v14;
      if (!v14)
      {
        v8 = nw_parameters_copy_url_endpoint();
        *(a1 + 112) = v8;
        if (v8)
        {
          v9 = MEMORY[0x29C2993D0](v6);
          *(a1 + 120) = v9;
          v10 = nw_parameters_copy_default_protocol_stack(v9);
          nw_protocol_stack_clear_application_protocols(v10);
          if (v10)
          {
            nw_release(v10);
          }

          nw_parameters_set_metadata();
          nw_parameters_set_fast_open_enabled(*(a1 + 120), 1);
          return v14;
        }

        else
        {
          return 4294960567;
        }
      }
    }

    else
    {
      return 4294960561;
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v11 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a2[2] + 144);
      if (v12 > 4)
      {
        v13 = "<INVALID RESOLVER TYPE>";
      }

      else
      {
        v13 = off_29EF0A2F8[v12];
      }

      *buf = 136446210;
      v16 = v13;
      _os_log_fault_impl(&dword_2990ED000, v11, OS_LOG_TYPE_FAULT, "Trying to initialize an mdns_url_session using a non-https resolver of type %{public}s", buf, 0xCu);
    }

    return 4294960540;
  }

  return result;
}

void _mdns_url_session_finalize(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    nw_release(v2);
    a1[14] = 0;
  }

  v3 = a1[15];
  if (v3)
  {
    nw_release(v3);
    a1[15] = 0;
  }

  _mdns_url_session_forget_crypto(a1);
  v4 = a1[23];
  if (v4)
  {
    os_release(v4);
    a1[23] = 0;
  }
}

void _mdns_udp_socket_session_send(uint64_t a1, dispatch_data_t data)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &v8);
  if (v3)
  {
    v4 = v3;
    if (sendto(*(a1 + 136), buffer_ptr, v8, 0, (a1 + 104), *(a1 + 132)) < 0)
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        *buf = 138412546;
        v11 = v7;
        v12 = 1024;
        v13 = v5;
        _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, "sending to %@ failed: %{darwin.errno}d", buf, 0x12u);
      }
    }

LABEL_11:
    dispatch_release(v4);
  }
}

void _mdns_udp_socket_session_invalidate(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 96));
    dispatch_release(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t _mdns_udp_socket_session_activate(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v3 = dispatch_source_create(MEMORY[0x29EDCA5B8], v2, 0, _mdns_resolver_queue_s_queue);
  *(a1 + 96) = v3;
  if (!v3)
  {
    return 4294960567;
  }

  os_retain(a1);
  dispatch_set_context(*(a1 + 96), a1);
  dispatch_source_set_event_handler_f(*(a1 + 96), _mdns_udp_socket_session_read_handler);
  dispatch_source_set_cancel_handler_f(*(a1 + 96), _mdns_udp_socket_session_cancel_handler);
  dispatch_activate(*(a1 + 96));
  return 0;
}

void _mdns_udp_socket_session_cancel_handler(_DWORD *object)
{
  v2 = object[34];
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    object[34] = -1;
  }

  os_release(object);
}

void _mdns_udp_socket_session_read_handler(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  *&v10.sa_len = 0;
  *&v10.sa_data[6] = 0;
  v12 = 0;
  v11 = 0;
  v9 = 28;
  v2 = recvfrom(*(a1 + 136), buffer, 0x200uLL, 0, &v10, &v9);
  if (v2 < 0)
  {
    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
        goto LABEL_4;
      }

      if (v3 == 35)
      {
        return;
      }
    }

    else
    {
      v3 = 4294960596;
    }

    _mdns_common_session_finish(a1, 3, v3);
    return;
  }

LABEL_4:
  if (*(a1 + 105) == 2)
  {
    if (*(a1 + 108) != *&v10.sa_data[2])
    {
      return;
    }

    v4 = *(a1 + 106);
    v5 = *v10.sa_data;
    goto LABEL_7;
  }

  v6 = *(a1 + 112) == *&v10.sa_data[6] && *(a1 + 120) == v11;
  if (!v6 || *(a1 + 106) != *v10.sa_data)
  {
    return;
  }

  if (*(a1 + 112) == 254 && (*(a1 + 113) & 0xC0) == 0x80)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      v5 = v12;
LABEL_7:
      if (v4 != v5)
      {
        return;
      }
    }
  }

  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v7 = dispatch_data_create(buffer, v2, _mdns_resolver_queue_s_queue, 0);
  if (v7)
  {
    v8 = v7;
    _mdns_common_session_invoke_receive(a1, v7);
    dispatch_release(v8);
  }
}

uint64_t _mdns_udp_socket_session_initialize(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5)
{
  v58 = *MEMORY[0x29EDCA608];
  address = nw_endpoint_get_address(*(*(a1 + 32) + 48));
  sa_family = address->sa_family;
  if (sa_family != 30 && sa_family != 2)
  {
    return 4294960540;
  }

  v12 = address;
  v54[0] = 0;
  v54[1] = 0;
  if (sa_family == 30)
  {
    if (*&address->sa_data[6] || *&address->sa_data[10])
    {
      goto LABEL_9;
    }

    v35 = *&address[1].sa_len;
    if (v35)
    {
      if (v35 == -65536)
      {
        v36 = *&address[1].sa_data[2];
LABEL_139:
        LOWORD(v54[0]) = 528;
        WORD1(v54[0]) = *address->sa_data;
        HIDWORD(v54[0]) = v36;
        v12 = v54;
        sa_family = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v36 = *&address[1].sa_data[2];
      if ((v36 | 0x1000000) != 0x1000000)
      {
        goto LABEL_139;
      }
    }

LABEL_9:
    sa_family = 30;
  }

LABEL_10:
  if (sa_family == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 30;
  }

  v14 = socket(v13, 2, 17);
  if (v14 < 0)
  {
    if (*__error())
    {
      v16 = *__error();
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 4294960596;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v33 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v53[0].val[0] = 134217984;
      *&v53[0].val[1] = v16;
      _os_log_error_impl(&dword_2990ED000, v33, OS_LOG_TYPE_ERROR, "Failed to create UDP socket: %{darwin.errno}ld", v53, 0xCu);
    }

    return v16;
  }

LABEL_16:
  v52 = 1;
  if (sa_family == 2)
  {
    if (!setsockopt(v14, 0xFFFF, 4226, &v52, 4u))
    {
      goto LABEL_43;
    }

    if (*__error())
    {
      v15 = *__error();
      if (!v15)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v15 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v34 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v53[0].val[0] = 67109120;
      v53[0].val[1] = v15;
      _os_log_error_impl(&dword_2990ED000, v34, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_RANDOMPORT failed %{darwin.errno}d", v53, 8u);
    }
  }

  else
  {
    v50 = a4;
    v51 = v12;
    v17 = a5;
    v18 = 0;
    *&v53[0].val[2] = 0;
    *&v53[0].val[4] = 0;
    v53[0].val[6] = 0;
    *v53[0].val = 7708;
    *&v53[0].val[2] = *MEMORY[0x29EDCA680];
    while (1)
    {
      v19 = arc4random() | 0xFFFFC000;
      HIWORD(v53[0].val[0]) = bswap32(v19) >> 16;
      if (!bind(v14, v53, 0x1Cu))
      {
        v20 = 0;
        goto LABEL_32;
      }

      if (!*__error())
      {
        break;
      }

      v20 = *__error();
      v21 = v18 + 1;
      if (v20 != 48 || v18++ >= 0x270F)
      {
        goto LABEL_33;
      }
    }

    v20 = -6700;
LABEL_32:
    v21 = v18 + 1;
LABEL_33:
    if (v20)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v23 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v56 = v20;
        *&v56[8] = 1024;
        v57 = v21;
        _os_log_error_impl(&dword_2990ED000, v23, OS_LOG_TYPE_ERROR, "Binding IPv6 socket to random port failed -- error: %{mdns:err}ld, tries: %d", buf, 0x12u);
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v24 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v56 = v19;
        *&v56[4] = 1024;
        *&v56[6] = v21;
        _os_log_debug_impl(&dword_2990ED000, v24, OS_LOG_TYPE_DEBUG, "Binding IPv6 socket to random port succeeded -- port: %u, tries: %d", buf, 0xEu);
      }
    }

    a5 = v17;
    a4 = v50;
    v12 = v51;
  }

LABEL_43:
  if (!setsockopt(v14, 0xFFFF, 4130, &v52, 4u))
  {
    goto LABEL_52;
  }

  if (*__error())
  {
    v25 = *__error();
    if (!v25)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v25 = -6700;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v26 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v53[0].val[0] = 67109120;
    v53[0].val[1] = v25;
    _os_log_error_impl(&dword_2990ED000, v26, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_NOSIGPIPE failed %{darwin.errno}d", v53, 8u);
  }

LABEL_52:
  if (setsockopt(v14, 0xFFFF, 0x10000, &v52, 4u))
  {
    if (*__error())
    {
      v27 = *__error();
      if (!v27)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v27 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v28 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v53[0].val[0] = 67109120;
      v53[0].val[1] = v27;
      _os_log_error_impl(&dword_2990ED000, v28, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", v53, 8u);
    }
  }

LABEL_61:
  v29 = fcntl(v14, 3, 0);
  if (fcntl(v14, 4, v29 | 4u) == -1 && *__error())
  {
    __error();
  }

  v30 = *(a2 + 48);
  if (v30)
  {
    *buf = nw_interface_get_index(v30);
    if (sa_family == 2)
    {
      if (!setsockopt(v14, 0, 25, buf, 4u))
      {
        goto LABEL_96;
      }

      if (*__error())
      {
        v31 = *__error();
        if (!v31)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v31 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v37 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v53[0].val[0] = 67109120;
        v53[0].val[1] = v31;
        v38 = "setsockopt() for IPPROTO_IP/IP_BOUND_IF failed %{darwin.errno}d";
        goto LABEL_141;
      }
    }

    else
    {
      if (!setsockopt(v14, 41, 125, buf, 4u))
      {
        goto LABEL_96;
      }

      if (*__error())
      {
        v32 = *__error();
        if (!v32)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v32 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v37 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v53[0].val[0] = 67109120;
        v53[0].val[1] = v32;
        v38 = "setsockopt() for IPPROTO_IPV6/IPV6_BOUND_IF failed %{darwin.errno}d";
LABEL_141:
        _os_log_error_impl(&dword_2990ED000, v37, OS_LOG_TYPE_ERROR, v38, v53, 8u);
        if (!a4)
        {
          goto LABEL_126;
        }

        goto LABEL_97;
      }
    }
  }

LABEL_96:
  if (!a4)
  {
    goto LABEL_126;
  }

LABEL_97:
  v39 = a4[4];
  if (v39 == 3)
  {
    v42 = *(*a4 + 40);
    *v53[0].val = *(*a4 + 24);
    *&v53[0].val[4] = v42;
    *buf = audit_token_to_pid(v53);
    if (!setsockopt(v14, 0xFFFF, 4359, buf, 4u))
    {
      goto LABEL_126;
    }

    if (*__error())
    {
      v43 = *__error();
      if (!v43)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v43 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v53[0].val[0] = 67109120;
    v53[0].val[1] = v43;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED failed %{darwin.errno}d";
    goto LABEL_144;
  }

  if (v39 == 2)
  {
    if (!setsockopt(v14, 0xFFFF, 4360, a4, 0x10u))
    {
      goto LABEL_126;
    }

    if (*__error())
    {
      v41 = *__error();
      if (!v41)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v41 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v53[0].val[0] = 67109120;
    v53[0].val[1] = v41;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED_UUID failed %{darwin.errno}d";
LABEL_144:
    _os_log_error_impl(&dword_2990ED000, v44, OS_LOG_TYPE_ERROR, v45, v53, 8u);
    goto LABEL_126;
  }

  if (v39 != 1 || !setsockopt(v14, 0xFFFF, 4359, a4, 4u))
  {
    goto LABEL_126;
  }

  if (!*__error())
  {
    v40 = -6700;
LABEL_123:
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v53[0].val[0] = 67109120;
    v53[0].val[1] = v40;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED failed %{darwin.errno}d";
    goto LABEL_144;
  }

  v40 = *__error();
  if (v40)
  {
    goto LABEL_123;
  }

LABEL_126:
  if (!a5)
  {
LABEL_133:
    if (sa_family == 2)
    {
      v48 = 16;
    }

    else
    {
      v48 = 28;
    }

    memcpy((a1 + 104), v12, v48);
    v16 = 0;
    *(a1 + 132) = v48;
    *(a1 + 136) = v14;
    return v16;
  }

  v46 = DomainNameToString(a5, 0, v53, 0);
  if (!v46)
  {
    if ((ne_session_set_socket_attributes() & 1) == 0)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v47 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v56 = v53;
        _os_log_error_impl(&dword_2990ED000, v47, OS_LOG_TYPE_ERROR, "ne_session_set_socket_attributes() failed for '%s'", buf, 0xCu);
      }
    }

    goto LABEL_133;
  }

  v16 = v46;
  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
  }

  return v16;
}

uint64_t _mdns_udp_socket_session_finalize(uint64_t a1)
{
  result = *(a1 + 136);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 136) = -1;
  }

  return result;
}

void _mdns_connection_session_send(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 96);
    *buf = 138412290;
    v13 = v10;
    _os_log_debug_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEBUG, "Sending message on connection %@", buf, 0xCu);
  }

  started = _mdns_create_and_start_connection_activity(*(a1 + 96), a3);
  v8 = *(a1 + 96);
  v9 = *MEMORY[0x29EDBB830];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___mdns_connection_session_send_block_invoke;
  v11[3] = &__block_descriptor_tmp_80_1438;
  v11[4] = started;
  v11[5] = a1;
  nw_connection_send(v8, a2, v9, 1, v11);
}

void ___mdns_connection_session_send_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(*(a1 + 40) + 96))
    {
      nw_connection_end_activity();
      v4 = *(a1 + 32);
    }

    nw_release(v4);
  }

  if (a2)
  {
    v5 = *(a1 + 40);
    if (*(v5 + 96))
    {

      _mdns_common_session_finish(v5, 3, 4294960543);
    }
  }
}

void _mdns_connection_session_invalidate(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    nw_connection_cancel(v2);
    v3 = *(a1 + 96);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _mdns_connection_session_activate(nw_connection_t *a1)
{
  os_retain(a1);
  v2 = a1[12];
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  nw_connection_set_queue(v2, _mdns_resolver_queue_s_queue);
  v3 = a1[12];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___mdns_connection_session_activate_block_invoke;
  v6[3] = &__block_descriptor_tmp_76_1440;
  v6[4] = a1;
  nw_connection_set_state_changed_handler(v3, v6);
  nw_connection_start(a1[12]);
  v4 = a1[12];
  completion[0] = MEMORY[0x29EDCA5F8];
  completion[1] = 0x40000000;
  completion[2] = ___mdns_connection_session_schedule_receive_block_invoke;
  completion[3] = &__block_descriptor_tmp_78;
  completion[4] = a1;
  nw_connection_receive_message(v4, completion);
  return 0;
}

void ___mdns_connection_session_activate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v14 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (v4[12])
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v5 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = nw_connection_state_to_string();
      v9 = *(*(a1 + 32) + 96);
      v10 = 136315394;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2990ED000, v5, OS_LOG_TYPE_DEBUG, "Connection state changed to %s for connection %@", &v10, 0x16u);
    }

    switch(v2)
    {
      case 3:
        v6 = *(a1 + 32);
        if (*(v6 + 88) == 1 && (*(v6 + 90) & 1) == 0)
        {
          *(v6 + 90) = 1;
          v7 = **(v6 + 72);
          if (v7)
          {
            v7(v6, 1, 0, *(v6 + 48));
          }
        }

        break;
      case 4:
        _mdns_common_session_finish(*(a1 + 32), 3, 4294960543);
        break;
      case 5:
        v4 = *(a1 + 32);
LABEL_10:
        os_release(v4);
        break;
    }
  }

  else if (a2 == 5)
  {
    goto LABEL_10;
  }
}

void ___mdns_connection_session_schedule_receive_block_invoke(uint64_t a1, uint64_t a2, nw_content_context_t context, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 96))
  {
    if (a2)
    {
      _mdns_common_session_invoke_receive(v6, a2);
    }

    if (context)
    {
      is_final = nw_content_context_get_is_final(context);
    }

    else
    {
      is_final = 0;
    }

    v10 = *(a1 + 32);
    if (a5 || is_final)
    {
      if (a5)
      {
        v12 = 4294960543;
      }

      else
      {
        v12 = 0;
      }

      _mdns_common_session_finish(v10, 3, v12);
    }

    else
    {
      v11 = *(v10 + 96);
      completion[0] = MEMORY[0x29EDCA5F8];
      completion[1] = 0x40000000;
      completion[2] = ___mdns_connection_session_schedule_receive_block_invoke;
      completion[3] = &__block_descriptor_tmp_78;
      completion[4] = v10;
      nw_connection_receive_message(v11, completion);
    }
  }
}

uint64_t _mdns_connection_session_initialize(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned __int8 *a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v8 = *(a2 + 16);
  if ((*(v8 + 158) & 1) != 0 || a3)
  {
    v13 = *(v8 + 112);
    if (v13)
    {
      v14 = v13(a2, &v32, a3);
      if (v32)
      {
        return v32;
      }

      v12 = v14;
      v11 = 1;
      goto LABEL_9;
    }

    return -6735;
  }

  v9 = *(v8 + 104);
  if (!v9)
  {
    return -6735;
  }

  v10 = v9(a2, &v32);
  v11 = v32;
  if (v32)
  {
    return v32;
  }

  v12 = v10;
LABEL_9:
  *(a1 + 104) = v11;
  if (!a4)
  {
    goto LABEL_23;
  }

  if ((LODWORD(a4[2].isa) - 1) > 2)
  {
    a4 = 0;
    goto LABEL_23;
  }

  v15 = MEMORY[0x29C2993D0](v12);
  if (!v15)
  {
    return -6729;
  }

  v12 = v15;
  isa = a4[2].isa;
  switch(isa)
  {
    case 3:
      v18 = *(a4->isa + 40);
      *buf = *(a4->isa + 24);
      *&buf[16] = v18;
      nw_parameters_set_source_application();
      break;
    case 2:
      nw_parameters_set_e_proc_uuid();
      break;
    case 1:
      nw_parameters_set_pid();
      break;
  }

  a4 = v12;
LABEL_23:
  v19 = *(a1 + 32);
  v20 = *(v19 + 48);
  if (a5)
  {
    address = nw_endpoint_get_address(*(v19 + 48));
    v22 = nw_endpoint_create_address(address);
    if (v22)
    {
      v23 = v22;
      v24 = DomainNameToString(a5, 0, buf, 0);
      if (v24)
      {
        v28 = v24;
      }

      else
      {
        nw_endpoint_get_port(v23);
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v26 = host_with_numeric_port;
          nw_endpoint_set_parent_endpoint();
          nw_release(v26);
          v20 = v23;
          goto LABEL_37;
        }

        v28 = -6729;
      }

      nw_release(v23);
      v27 = v28;
    }

    else
    {
      v27 = -6729;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v29 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      _os_log_error_impl(&dword_2990ED000, v29, OS_LOG_TYPE_ERROR, "Failed to create domain-attributed endpoint for %@: %{mdns:err}ld", buf, 0x16u);
    }
  }

  v23 = 0;
LABEL_37:
  v30 = nw_connection_create(v20, v12);
  *(a1 + 96) = v30;
  if (v30)
  {
    if (!a4)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v32 = -6729;
  if (a4)
  {
LABEL_39:
    nw_release(a4);
  }

LABEL_40:
  if (v23)
  {
    nw_release(v23);
  }

  return v32;
}

void ___mdns_querier_conclude_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), *(a1 + 40), 0, 0);
  v2 = *(a1 + 32);

  os_release(v2);
}

void _mdns_querier_set_query(uint64_t a1, void *a2, __int16 a3, __int16 a4)
{
  mdns_query_message_set_qname(*(a1 + 96), a2);
  v7 = *(a1 + 96);
  if ((*(v7 + 70) & 0x20) == 0)
  {
    *(v7 + 64) = a3;
    *(v7 + 66) = a4;
  }
}

uint64_t _mdns_querier_get_internal_queue()
{
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  return _mdns_resolver_queue_s_queue;
}

void _mdns_querier_finalize(void *a1)
{
  a1[10] = 0;
  v2 = a1[9];
  if (v2)
  {
    os_release(v2);
    a1[9] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    _Block_release(v3);
    a1[11] = 0;
  }

  v4 = a1[12];
  if (v4)
  {
    os_release(v4);
    a1[12] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    free(v5);
    a1[16] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    os_release(v6);
    a1[17] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    os_release(v7);
    a1[20] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    os_release(v8);
    a1[24] = 0;
  }

  _mdns_querier_clear_delegation(a1);
}

void _mdns_querier_clear_delegation(uint64_t a1)
{
  v2 = *(a1 + 184);
  switch(v2)
  {
    case 3:
      v3 = *(a1 + 168);
      if (v3)
      {
        os_release(v3);
        *(a1 + 168) = 0;
      }

      break;
    case 2:
      uuid_clear((a1 + 168));
      break;
    case 1:
      *(a1 + 168) = 0;
      break;
  }

  *(a1 + 184) = 0;
}

void *_mdns_querier_copy_description(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    goto LABEL_18;
  }

  if (mdns_string_builder_append_description(v7, *(a1[12] + 56), v3))
  {
    goto LABEL_18;
  }

  if (DNSRecordTypeValueToString(*(a1[12] + 64)) ? mdns_string_builder_append_formatted(v7, " %s") : mdns_string_builder_append_formatted(v7, " TYPE%u"))
  {
    goto LABEL_18;
  }

  v10 = *(a1[12] + 66);
  v11 = "ANY";
  if (v10 != 255)
  {
    v11 = 0;
  }

  if (v10 == 1)
  {
    v11 = "IN";
  }

  if (v11 ? mdns_string_builder_append_formatted(v7, " %s") : mdns_string_builder_append_formatted(v7, " CLASS%u"))
  {
LABEL_18:
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

void mdns_resolver_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_resolver_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_4_1461;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void __mdns_resolver_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 136) & 1) == 0)
  {
    *(v2 + 136) = 1;
    v3 = *(v2 + 104);
    if (v3)
    {
      dispatch_source_cancel(*(v2 + 104));
      dispatch_release(v3);
      *(v2 + 104) = 0;
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      mdns_client_invalidate(v4);
      os_release(*(v2 + 112));
      *(v2 + 112) = 0;
    }

    while (1)
    {
      v8 = *(v2 + 24);
      if (!v8)
      {
        break;
      }

      *(v2 + 24) = *(v8 + 24);
      if (*(v8 + 56))
      {
        nw_path_evaluator_cancel();
        v5 = *(v8 + 56);
        if (v5)
        {
          nw_release(v5);
          *(v8 + 56) = 0;
        }
      }

      v6 = *(v8 + 32);
      if (v6)
      {
        _mdns_session_invalidate(v6);
        os_release(*(v8 + 32));
        *(v8 + 32) = 0;
      }

      v7 = *(v8 + 40);
      if (v7)
      {
        dispatch_source_cancel(*(v8 + 40));
        dispatch_release(v7);
        *(v8 + 40) = 0;
      }
    }

    _mdns_resolver_invalidate_and_forget_queriers((v2 + 32));
    _mdns_resolver_invalidate_and_forget_queriers((v2 + 40));
    v9 = *(v2 + 96);
    if (v9)
    {
      dispatch_source_cancel(*(v2 + 96));
      dispatch_release(v9);
      *(v2 + 96) = 0;
    }

    if (*(v2 + 80))
    {
      os_retain(v2);
      v10 = *(v2 + 72);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___mdns_resolver_invalidate_internal_block_invoke;
      block[3] = &__block_descriptor_tmp_48_1462;
      block[4] = v2;
      dispatch_async(v10, block);
    }
  }

  os_release(*(a1 + 32));
}

void _mdns_resolver_invalidate_and_forget_queriers(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    do
    {
      v2 = v1[8];
      v1[8] = 0;
      _mdns_querier_conclude_ex(v1, 4, 0, 0);
      os_release(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void ___mdns_resolver_invalidate_internal_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 80) + 16))();
  v2 = *(a1 + 32);

  os_release(v2);
}

void __mdns_resolver_prepare_for_system_sleep_block_invoke()
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v0 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_2990ED000, v0, OS_LOG_TYPE_INFO, "Preparing for system sleep", v2, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  _http_task_shared_session_critical_region(&__block_literal_global_759);
  objc_autoreleasePoolPop(v1);
}

uint64_t mdns_querier_set_question(uint64_t result)
{
  if ((*(result + 61) & 1) == 0)
  {
    return (*(*(result + 16) + 56))();
  }

  return result;
}

uint64_t mdns_querier_set_dnssec_ok(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    v2 = *(result + 96);
    if ((*(v2 + 70) & 0x20) == 0)
    {
      if (a2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 0;
      }

      *(v2 + 70) = *(v2 + 70) & 0xDB | v3;
    }
  }

  return result;
}

uint64_t mdns_querier_set_checking_disabled(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    v2 = *(result + 96);
    if ((*(v2 + 70) & 0x20) == 0)
    {
      if (a2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }

      *(v2 + 70) = *(v2 + 70) & 0xDD | v3;
    }
  }

  return result;
}

void mdns_querier_set_delegator_pid(uint64_t a1, int a2)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    _mdns_querier_clear_delegation(a1);
    *(a1 + 184) = 1;
    *(a1 + 168) = a2;
  }
}

void mdns_querier_set_delegator_uuid(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 61) & 1) == 0)
  {
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, a2);
    _mdns_querier_clear_delegation(a1);
    *(a1 + 184) = 2;
    uuid_copy((a1 + 168), dst);
  }
}

uint64_t mdns_querier_set_user_id(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 232) = a2;
  }

  return result;
}

void mdns_querier_set_result_handler(uint64_t a1, void *aBlock)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a1 + 88) = v3;
  }
}

uint64_t mdns_querier_get_response_ptr(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_querier_get_response_length(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_querier_set_context(uint64_t result, uint64_t a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t mdns_querier_set_context_finalizer(uint64_t result, uint64_t a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t mdns_querier_set_start_time_leeway(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 236) = a2;
  }

  return result;
}

uint64_t mdns_querier_enable_sensitive_logging(uint64_t result, char a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 255) = a2;
  }

  return result;
}

uint64_t mdns_security_create_self_signed_certificate(uint64_t a1, uint64_t a2, void *a3, int a4, int *a5)
{
  keys[2] = *MEMORY[0x29EDCA608];
  valuePtr = a4;
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v7 || (v8 = v7, v9 = *MEMORY[0x29EDBBBF0], keys[0] = *MEMORY[0x29EDBBBF8], keys[1] = v9, values[0] = a3, values[1] = v7, v10 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), CFRelease(v8), !v10))
  {
    v16 = 0;
    v12 = -6729;
    goto LABEL_16;
  }

  keys[0] = 0;
  RandomKey = SecKeyCreateRandomKey(v10, keys);
  if (RandomKey)
  {
    v12 = 0;
  }

  else
  {
    if (!keys[0])
    {
      v18 = v10;
LABEL_20:
      CFRelease(v18);
      v16 = 0;
      v12 = -6700;
      goto LABEL_16;
    }

    Code = CFErrorGetCode(keys[0]);
    if (Code)
    {
      v12 = Code;
    }

    else
    {
      v12 = -6700;
    }
  }

  if (keys[0])
  {
    CFRelease(keys[0]);
  }

  CFRelease(v10);
  if (!RandomKey)
  {
    v16 = 0;
    goto LABEL_16;
  }

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    v18 = RandomKey;
    goto LABEL_20;
  }

  v15 = SelfSignedCertificate;
  v16 = SecIdentityCreate();
  if (!v16)
  {
    v12 = -6700;
  }

  CFRelease(RandomKey);
  CFRelease(v15);
LABEL_16:
  if (a5)
  {
    *a5 = v12;
  }

  return v16;
}

uint64_t mdns_security_set_per_user_certificate_trust_settings()
{
  if (!SecTrustStoreForDomain())
  {
    return 4294960596;
  }

  return MEMORY[0x2A1C5CBB8]();
}

uint64_t mdns_security_remove_per_user_certificate_trust_settings()
{
  if (!SecTrustStoreForDomain())
  {
    return 4294960596;
  }

  return MEMORY[0x2A1C5CBB0]();
}

os_log_t ___mdns_signed_result_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "signed_result");
  _mdns_signed_result_log_s_log = result;
  return result;
}

uint64_t _mdns_necp_validate_result(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&_mdns_necp_get_shared_fd_s_lock);
  if (_mdns_necp_get_shared_fd_s_fd < 0)
  {
    _mdns_necp_get_shared_fd_s_fd = necp_open();
    if (_mdns_necp_get_shared_fd_s_fd < 0)
    {
      if (*__error())
      {
        v2 = *__error();
        os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
        if (!v2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
        v2 = 4294960596;
      }

      if (_mdns_signed_result_log_s_once != -1)
      {
        dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_1523);
      }

      v3 = _mdns_signed_result_log_s_log;
      if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v6 = 134217984;
        v7 = v2;
        v4 = "Failed to create NECP file descriptor: %{mdns:err}ld";
        goto LABEL_23;
      }

      return v2;
    }
  }

  os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
LABEL_4:
  if (!necp_client_action())
  {
    return 0;
  }

  if (*__error())
  {
    v2 = *__error();
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 4294960596;
  }

  if (_mdns_signed_result_log_s_once != -1)
  {
    dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_1523);
  }

  v3 = _mdns_signed_result_log_s_log;
  if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    v7 = v2;
    v4 = "Failed to validate data: %{mdns:err}ld";
LABEL_23:
    _os_log_error_impl(&dword_2990ED000, v3, OS_LOG_TYPE_ERROR, v4, &v6, 0xCu);
  }

  return v2;
}

uint64_t _mdns_signed_browse_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_browse_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_browse_result_copy_description(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v12 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[4], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, service instance: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 58, *(v8 + 56), v3))
  {
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

uint64_t _mdns_string_builder_append_domain_name_string(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a3 > 0x3F0)
  {
    return mdns_string_builder_append_formatted(a1, "«TOO LONG: %zu chars»");
  }

  if (!a4)
  {
    return mdns_string_builder_append_formatted(a1, "%.*s");
  }

  __memcpy_chk();
  v7[a3] = 0;
  DNSMessagePrintObfuscatedString(v8, 64, v7);
  return mdns_string_builder_append_formatted(a1, "%s");
}

uint64_t _mdns_signed_result_compute_txt_rdata_24_bit_hash(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 16777619 * ((16777619 * (a1 ^ (a3 >> 8))) ^ a3);
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a2++;
      v3 = 16777619 * (v3 ^ v5);
      --v4;
    }

    while (v4);
  }

  return v3 & 0xFFFFFF ^ HIBYTE(v3);
}

unsigned __int8 *mdns_signed_browse_result_create_from_data(uint64_t a1, size_t a2, int *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3A)
  {
    v11 = 0;
    appended = -6743;
  }

  else if (*(a1 + 48) == 5)
  {
    v5 = *(a1 + 56);
    if (a2 - 58 < v5)
    {
      v11 = 0;
      appended = -6750;
    }

    else if (v5 > 0x3F0)
    {
      v11 = 0;
      appended = -6744;
    }

    else
    {
      __memcpy_chk();
      v17[v5] = 0;
      v16[0] = 0;
      appended = DomainNameAppendString(v16, v17, 0);
      if (appended || (appended = _mdns_necp_validate_result(a1, a2)) != 0)
      {
        v11 = 0;
      }

      else
      {
        result = malloc_type_malloc(a2, 0xFE29915uLL);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v9 = result;
        memcpy(result, a1, a2);
        v10 = _os_object_alloc();
        v11 = v10;
        if (v10)
        {
          v12 = &_mdns_signed_browse_result_kind;
          *(v10 + 16) = &_mdns_signed_browse_result_kind;
          do
          {
            v13 = v12[2];
            if (v13)
            {
              v13(v11);
            }

            v12 = *v12;
          }

          while (v12);
          DomainNameDupEx(v16, 0, (v11 + 24), 0);
          v14 = -2128831035;
          for (i = 32; i != 48; ++i)
          {
            v14 = 16777619 * (v14 ^ v9[i]);
          }

          appended = 0;
          *(v11 + 48) = v14;
          *(v11 + 32) = v9;
          *(v11 + 40) = a2;
        }

        else
        {
          free(v9);
          appended = -6728;
        }
      }
    }
  }

  else
  {
    v11 = 0;
    appended = -6756;
  }

  if (a3)
  {
    *a3 = appended;
  }

  return v11;
}

uint64_t mdns_signed_browse_result_contains(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }

  v3 = 0;
  v4 = *(*(a1 + 32) + 52);
  v5 = *(a1 + 48);
  v7 = bswap32(a3);
  do
  {
    LOWORD(v5) = 403 * (v5 ^ *(&v7 + v3++));
  }

  while (v3 != 4);
  if (HIBYTE(v4) != (v5 ^ BYTE1(v5)))
  {
    return 0;
  }

  else
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }
}

BOOL mdns_signed_browse_result_covers_txt_rdata(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    return 0;
  }

  v3 = *(*(a1 + 32) + 52) & 0xFFFFFF;
  return v3 == _mdns_signed_result_compute_txt_rdata_24_bit_hash(*(a1 + 48), a2, a3);
}

uint64_t _mdns_signed_resolve_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_resolve_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_resolve_result_copy_description(void *a1, int a2, int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v8 = a1[4];
    memset(out, 0, 37);
    uuid_unparse((v8 + 32), out);
    if (!mdns_string_builder_append_formatted(v7, "client ID: %s", out))
    {
      v14[0] = "service instance";
      v14[1] = v8 + 62;
      v15 = *(v8 + 56);
      v16 = 0;
      v17 = 0;
      v18[0] = "hostname";
      v18[1] = v8 + 62 + v15;
      v19 = *(v8 + 60);
      v11 = v14;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        if (mdns_string_builder_append_formatted(v7, ", %s: ", *v11) || _mdns_string_builder_append_domain_name_string(v7, v11[1], *(v11 + 8), a3))
        {
          break;
        }

        v12 = 0;
        v11 = v18;
        if ((v13 & 1) == 0)
        {
          if (mdns_string_builder_append_formatted(v7, ", port: %u", bswap32(*(v8 + 58)) >> 16))
          {
            break;
          }

          v9 = mdns_string_builder_copy_string(v7);
          goto LABEL_6;
        }
      }
    }
  }

  v9 = 0;
LABEL_6:
  os_release(v7);
  return v9;
}

unsigned __int8 *mdns_signed_resolve_result_create_from_data(uint64_t a1, size_t a2, int *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a2 - 62;
  if (a2 < 0x3E)
  {
    v15 = 0;
    appended = -6743;
  }

  else if (*(a1 + 48) == 6)
  {
    v6 = *(a1 + 56);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7 && (v9 = *(a1 + 60), v8 >= v9))
    {
      if (v9 > 0x3F0)
      {
        v15 = 0;
        appended = -6744;
      }

      else
      {
        __memcpy_chk();
        v21[v9] = 0;
        v20[0] = 0;
        appended = DomainNameAppendString(v20, v21, 0);
        if (appended || (appended = _mdns_necp_validate_result(a1, a2)) != 0)
        {
          v15 = 0;
        }

        else
        {
          result = malloc_type_malloc(a2, 0xFE29915uLL);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          memcpy(result, a1, a2);
          v14 = _os_object_alloc();
          v15 = v14;
          if (v14)
          {
            v16 = &_mdns_signed_resolve_result_kind;
            *(v14 + 16) = &_mdns_signed_resolve_result_kind;
            do
            {
              v17 = v16[2];
              if (v17)
              {
                v17(v15);
              }

              v16 = *v16;
            }

            while (v16);
            DomainNameDupEx(v20, 0, (v15 + 24), 0);
            v18 = -2128831035;
            for (i = 32; i != 48; ++i)
            {
              v18 = 16777619 * (v18 ^ v13[i]);
            }

            appended = 0;
            *(v15 + 48) = v18;
            *(v15 + 32) = v13;
            *(v15 + 40) = a2;
          }

          else
          {
            free(v13);
            appended = -6728;
          }
        }
      }
    }

    else
    {
      v15 = 0;
      appended = -6750;
    }
  }

  else
  {
    v15 = 0;
    appended = -6756;
  }

  if (a3)
  {
    *a3 = appended;
  }

  return v15;
}

BOOL mdns_signed_resolve_result_covers_txt_rdata(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    return 0;
  }

  v3 = *(*(a1 + 32) + 52) & 0xFFFFFF;
  return v3 == _mdns_signed_result_compute_txt_rdata_24_bit_hash(*(a1 + 48), a2, a3);
}

uint64_t _mdns_signed_hostname_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return *(a1 + 24);
}

void _mdns_signed_hostname_result_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
}

void *_mdns_signed_hostname_result_copy_description(void *a1, int a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[3], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, hostname: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 88, *(v8 + 84), a3) || mdns_string_builder_append_formatted(v7, ", address: ") || (v11[0] = *(v8 + 56), *(v11 + 12) = *(v8 + 68), mdns_string_builder_append_sockaddr_description(v7, v11, a3)))
  {
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

void *mdns_signed_hostname_result_create_from_data(_DWORD *a1, size_t a2, int *a3)
{
  if (a2 < 0x58)
  {
    v8 = 0;
    v6 = -6743;
  }

  else if (a1[12] == 4)
  {
    if (a2 - 88 < a1[21])
    {
      v8 = 0;
      v6 = -6750;
    }

    else
    {
      v6 = _mdns_necp_validate_result(a1, a2);
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v7 = _os_object_alloc();
        v8 = v7;
        if (v7)
        {
          v9 = &_mdns_signed_hostname_result_kind;
          *(v7 + 16) = &_mdns_signed_hostname_result_kind;
          do
          {
            v10 = v9[2];
            if (v10)
            {
              v10(v8);
            }

            v9 = *v9;
          }

          while (v9);
          result = malloc_type_malloc(a2, 0xFE29915uLL);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = result;
          memcpy(result, a1, a2);
          v6 = 0;
          *(v8 + 24) = v12;
          *(v8 + 32) = a2;
        }

        else
        {
          v6 = -6728;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v6 = -6756;
  }

  if (a3)
  {
    *a3 = v6;
  }

  return v8;
}

void _mdns_string_builder_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_string_builder_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1) || mdns_string_builder_append_formatted(v5, "capacity: %zu, string length: %zu", a1[4], a1[5]))
  {
    goto LABEL_4;
  }

  v7 = v5[3];
  if (v7)
  {
    v8 = v5[5];
    v9 = v8 + 1;
    if (v8 == -1)
    {
LABEL_4:
      v6 = 0;
LABEL_12:
      os_release(v5);
      return v6;
    }
  }

  else
  {
    v7 = "";
    v9 = 1;
  }

  result = malloc_type_malloc(v9, 0xFE29915uLL);
  if (result)
  {
    v6 = result;
    memcpy(result, v7, v9);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t mdns_string_builder_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_string_builder_kind;
    *(v0 + 16) = &_mdns_string_builder_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  return v1;
}

uint64_t mdns_string_builder_append_formatted(void *a1, char *__format, ...)
{
  va_start(va, __format);
  if (a1[3] || (result = _mdns_string_builder_grow_buffer(a1, a1[4]), !result))
  {
    for (i = 1; ; i = 0)
    {
      v6 = a1[4] - a1[5];
      v7 = vsnprintf((a1[3] + a1[5]), v6, __format, va);
      if ((v7 & 0x80000000) != 0)
      {
        *(a1[3] + a1[5]) = 0;
        return 4294960596;
      }

      v8 = v7;
      if (v6 > v7)
      {
        result = 0;
        a1[5] += v8;
        return result;
      }

      if ((i & 1) == 0)
      {
        break;
      }

      v9 = a1[5];
      v10 = v7 + 1;
      v11 = __CFADD__(v9, v10);
      v12 = v9 + v10;
      if (v11)
      {
        return 4294960567;
      }

      v13 = a1[4];
      if (v13 < 0)
      {
        return 4294960567;
      }

      if (v12 <= 2 * v13)
      {
        v14 = 2 * v13;
      }

      else
      {
        v14 = v12;
      }

      result = _mdns_string_builder_grow_buffer(a1, v14);
      if (result)
      {
        return result;
      }
    }

    return 4294960534;
  }

  return result;
}

uint64_t _mdns_string_builder_grow_buffer(void *a1, size_t a2)
{
  if (a1[3] && a1[4] >= a2)
  {
    return 0;
  }

  if (a2 <= 0x40)
  {
    v3 = 64;
  }

  else
  {
    v3 = a2;
  }

  v4 = malloc_good_size(v3);
  if (v4 < v3)
  {
    return 4294960534;
  }

  v5 = v4;
  result = malloc_type_calloc(v4, 1uLL, 0x4B3A0919uLL);
  if (result)
  {
    v7 = result;
    v8 = a1[3];
    if (v8)
    {
      memcpy(result, v8, a1[5] + 1);
      v9 = a1[3];
      if (v9)
      {
        free(v9);
      }
    }

    result = 0;
    a1[3] = v7;
    a1[4] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t mdns_string_builder_append_description(void *a1, uint64_t a2, char a3)
{
  v4 = (a2 + 16);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v4[3];
    if (v5)
    {
      v6 = v5(a2, 0, a3 & 1);
      if (v6)
      {
        v7 = v6;
        appended = mdns_string_builder_append_formatted(a1, "%s", v6);
        free(v7);
        return appended;
      }

      return 4294960567;
    }
  }

  return 4294960567;
}

uint64_t mdns_string_builder_append_description_with_prefix(void *a1, const char *a2, uint64_t a3, char a4)
{
  if (!a2 || (result = mdns_string_builder_append_formatted(a1, "%s", a2), !result))
  {

    return mdns_string_builder_append_description(a1, a3, a4);
  }

  return result;
}

uint64_t mdns_string_builder_append_sockaddr_description(void *a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 1);
  if (v6 != 30)
  {
    if (v6 != 2)
    {
      return mdns_string_builder_append_formatted(a1, "«UNHANDLED ADDRESS FAMILY: %d»");
    }

    if (a3)
    {
      if ((DNSMessagePrintObfuscatedIPv4Address(v10, 64, bswap32(*(a2 + 4))) & 0x80000000) != 0)
      {
        v10[0] = 0;
      }

      result = mdns_string_builder_append_formatted(a1, "<IPv4:%s>");
      goto LABEL_17;
    }

    if (inet_ntop(2, (a2 + 4), v10, 0x10u))
    {
LABEL_5:
      result = mdns_string_builder_append_formatted(a1, "%s");
LABEL_17:
      if (result)
      {
        return result;
      }

      if ((a3 & 2) == 0 && *(a2 + 2))
      {
        return mdns_string_builder_append_formatted(a1, ":%d");
      }

      return 0;
    }

    if (*__error())
    {
      result = *__error();
      if (result)
      {
        return result;
      }

      goto LABEL_5;
    }

    return 4294960596;
  }

  if ((a3 & 2) != 0 || !*(a2 + 2))
  {
    v8 = 1;
    if (a3)
    {
LABEL_10:
      if ((DNSMessagePrintObfuscatedIPv6Address(v10, 64, a2 + 8) & 0x80000000) != 0)
      {
        v10[0] = 0;
      }

      result = mdns_string_builder_append_formatted(a1, "<IPv6:%s>");
      goto LABEL_24;
    }
  }

  else
  {
    result = mdns_string_builder_append_formatted(a1, "[");
    if (result)
    {
      return result;
    }

    v8 = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  if (!inet_ntop(30, (a2 + 8), v10, 0x2Eu))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  result = mdns_string_builder_append_formatted(a1, "%s");
LABEL_24:
  if (!result)
  {
    v9 = *(a2 + 24);
    if (!v9 || (!if_indextoname(v9, v10) ? (result = mdns_string_builder_append_formatted(a1, "%%%u")) : (result = mdns_string_builder_append_formatted(a1, "%%%s")), !result))
    {
      if ((v8 & 1) == 0)
      {
        return mdns_string_builder_append_formatted(a1, "]:%d");
      }

      return 0;
    }
  }

  return result;
}

void *mdns_string_builder_copy_string(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 1;
    if (v2 == -1)
    {
      return 0;
    }
  }

  else
  {
    v1 = "";
    v3 = 1;
  }

  result = malloc_type_malloc(v3, 0xFE29915uLL);
  if (result)
  {

    return memcpy(result, v1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _mdns_symptoms_report_dns_server_symptom(uint64_t a1, uint64_t a2)
{
  if (_mdns_symptoms_get_reporter_s_once != -1)
  {
    dispatch_once(&_mdns_symptoms_get_reporter_s_once, &__block_literal_global_1577);
  }

  result = _mdns_symptoms_get_reporter_s_reporter;
  if (_mdns_symptoms_get_reporter_s_reporter)
  {
    v4 = *(a2 + 1);
    if (v4 == 2 || v4 == 30)
    {
      v5 = symptom_new();
      symptom_set_additional_qualifier();

      return MEMORY[0x2A1C69948](v5);
    }
  }

  return result;
}

void ___mdns_symptoms_get_reporter_block_invoke()
{
  if (MEMORY[0x2A1C7B3F8])
  {
    _mdns_symptoms_get_reporter_s_reporter = symptom_framework_init();
  }
}

os_log_t __mdns_system_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "system");
  mdns_system_log_s_log = result;
  return result;
}

uint64_t mdns_system_set_computer_name_with_utf8_cstring(char *cStr, const __CFString *a2, char a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = 134217984;
  v6 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  v15 = 0;
  locked_prefs = _mdns_system_create_locked_prefs(a2, a3 & 1, &v15);
  v14 = locked_prefs;
  if (!v15)
  {
    v9 = locked_prefs;
    if ((a3 & 2) != 0)
    {
      nameEncoding = 0;
      v10 = SCDynamicStoreCopyComputerName(0, &nameEncoding);
      v5 = v10 ? nameEncoding : 134217984;
      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (SCPreferencesSetComputerName(v9, v7, v5))
    {
      v15 = 0;
LABEL_13:
      v15 = _mdns_system_commit_and_apply_prefs(v9);
      goto LABEL_14;
    }

    if (SCError())
    {
      v15 = SCError();
      if (!v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = -6700;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v13 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      nameEncoding = 138412802;
      v17 = v7;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v15;
      _os_log_error_impl(&dword_2990ED000, v13, OS_LOG_TYPE_ERROR, "SCPreferencesSetComputerName failed -- name: '%@', encoding: 0x%lX, error: %{mdns:err}ld", &nameEncoding, 0x20u);
    }
  }

LABEL_14:
  _mdns_system_unlock_and_forget_prefs(&v14);
  v11 = v15;
  CFRelease(v7);
  return v11;
}

const __SCPreferences *_mdns_system_create_locked_prefs(CFStringRef name, Boolean a2, int *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = SCPreferencesCreateWithAuthorization(*MEMORY[0x29EDB8ED8], name, 0, *MEMORY[0x29EDBCC70]);
  if (v5)
  {
    goto LABEL_4;
  }

  if (!SCError())
  {
    v7 = -6700;
LABEL_14:
    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v10 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      v13 = v7;
      _os_log_error_impl(&dword_2990ED000, v10, OS_LOG_TYPE_ERROR, "SCPreferencesCreateWithAuthorization failed: %{mdns:err}ld", &v12, 0xCu);
    }

    v8 = 0;
    goto LABEL_25;
  }

  v6 = SCError();
  if (v6)
  {
    v7 = v6;
    goto LABEL_14;
  }

LABEL_4:
  if (SCPreferencesLock(v5, a2))
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (SCError())
  {
    v7 = SCError();
    if (!v7)
    {
LABEL_8:
      v8 = 0;
      if (!a3)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = -6700;
  }

  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
  }

  v11 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v12 = 134217984;
    v13 = v7;
    _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed: %{mdns:err}ld", &v12, 0xCu);
  }

  v8 = v5;
LABEL_25:
  v5 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = v7;
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t _mdns_system_commit_and_apply_prefs(const __SCPreferences *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!SCPreferencesCommitChanges(a1))
  {
    if (SCError())
    {
      v2 = SCError();
      if (!v2)
      {
        goto LABEL_4;
      }

      v3 = v2;
    }

    else
    {
      v3 = 4294960596;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v4 = mdns_system_log_s_log;
    if (!os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      return v3;
    }

    v7 = 134217984;
    v8 = v3;
    v5 = "SCPreferencesCommitChanges failed: %{mdns:err}ld";
LABEL_20:
    _os_log_error_impl(&dword_2990ED000, v4, OS_LOG_TYPE_ERROR, v5, &v7, 0xCu);
    return v3;
  }

LABEL_4:
  if (SCPreferencesApplyChanges(a1))
  {
    return 0;
  }

  if (SCError())
  {
    v3 = SCError();
    if (!v3)
    {
      return v3;
    }
  }

  else
  {
    v3 = 4294960596;
  }

  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
  }

  v4 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    v8 = v3;
    v5 = "SCPreferencesApplyChanges failed: %{mdns:err}ld";
    goto LABEL_20;
  }

  return v3;
}

void _mdns_system_unlock_and_forget_prefs(const __SCPreferences **a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    if (!SCPreferencesUnlock(v1))
    {
      if (!SCError())
      {
        v3 = -6700;
        goto LABEL_7;
      }

      v2 = SCError();
      if (v2)
      {
        v3 = v2;
LABEL_7:
        if (mdns_system_log_s_once != -1)
        {
          dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
        }

        v4 = mdns_system_log_s_log;
        if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v5 = 134217984;
          v6 = v3;
          _os_log_error_impl(&dword_2990ED000, v4, OS_LOG_TYPE_ERROR, "SCPreferencesUnlock failed: %{mdns:err}ld", &v5, 0xCu);
        }
      }
    }

    CFRelease(v1);
  }
}

uint64_t mdns_system_set_local_host_name_with_utf8_cstring(char *cStr, const __CFString *a2, Boolean a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  if (!v5)
  {
    return 4294960596;
  }

  v6 = v5;
  v13 = 0;
  locked_prefs = _mdns_system_create_locked_prefs(a2, a3, &v13);
  v12 = locked_prefs;
  if (!v13)
  {
    v8 = locked_prefs;
    if (SCPreferencesSetLocalHostName(locked_prefs, v6))
    {
      v13 = 0;
LABEL_7:
      v13 = _mdns_system_commit_and_apply_prefs(v8);
      goto LABEL_8;
    }

    if (SCError())
    {
      v13 = SCError();
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = -6700;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v11 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2048;
      v17 = v13;
      _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, "SCPreferencesSetLocalHostName failed -- name: '%@', error: %{mdns:err}ld", buf, 0x16u);
    }
  }

LABEL_8:
  _mdns_system_unlock_and_forget_prefs(&v12);
  v9 = v13;
  CFRelease(v6);
  return v9;
}

char *mdns_system_interface_index_to_name(unsigned int a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = if_indextoname(a1, v9);
  if (v2)
  {
    result = strdup(v2);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!*__error())
  {
LABEL_7:
    v4 = -6700;
    goto LABEL_8;
  }

  v4 = *__error();
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
  }

  v5 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109376;
    v6[1] = a1;
    v7 = 2048;
    v8 = v4;
    _os_log_error_impl(&dword_2990ED000, v5, OS_LOG_TYPE_ERROR, "if_indextoname() for %u failed: %{darwin.errno}ld", v6, 0x12u);
  }

  return 0;
}

uint64_t mdns_system_pid_to_uuid(int a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (proc_pidinfo(a1, 17, 1uLL, v4, 56) != 56)
  {
    return 4294960596;
  }

  if (a2)
  {
    uuid_copy(a2, v4);
  }

  return 0;
}

void mdns_system_remove_network_policy(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    [a1 removeAllPolicies];
    [a1 apply];
  }

  objc_autoreleasePoolPop(v2);
}

id mdns_system_add_net_agent_match_domains(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x29EDBB8C0]);
  v26 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:a1];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = a2;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_alloc(MEMORY[0x29EDBB880]);
          v12 = [MEMORY[0x29EDBB8A0] netAgentUUID:{v26, context}];
          v13 = [MEMORY[0x29EDBB890] domain:v10];
          v32 = v13;
          [MEMORY[0x29EDB8D80] arrayWithObjects:&v32 count:1];
          v15 = v14 = v4;
          v16 = [v11 initWithOrder:1 result:v12 conditions:v15];

          v4 = v14;
          [v14 addPolicy:v16];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  v17 = objc_alloc(MEMORY[0x29EDBB880]);
  v18 = [MEMORY[0x29EDBB8A0] netAgentUUID:v26];
  v19 = MEMORY[0x29EDBB890];
  v20 = [v26 UUIDString];
  v21 = [v19 domain:v20];
  v31 = v21;
  v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v31 count:1];
  v23 = [v17 initWithOrder:1 result:v18 conditions:v22];

  [v4 addPolicy:v23];
  [v4 setPriority:300];
  [v4 apply];

  objc_autoreleasePoolPop(context);
  return v4;
}

uint64_t mdns_tcpinfo_get_ipv4(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(&v10[2], 0, 20);
  memset(v9, 0, sizeof(v9));
  WORD2(v9[0]) = 528;
  WORD3(v9[0]) = __rev16(a2);
  DWORD2(v9[0]) = bswap32(a1);
  LOWORD(v10[0]) = 528;
  HIWORD(v10[0]) = __rev16(a4);
  v10[1] = bswap32(a3);
  info = _mdns_tcpinfo_get_info(v9, a5);
  if (_mdns_tcpinfo_log_s_once != -1)
  {
    dispatch_once(&_mdns_tcpinfo_log_s_once, &__block_literal_global_1623);
  }

  v6 = _mdns_tcpinfo_log_s_log;
  if (info)
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v7 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_tcpinfo_log_s_log, v7))
  {
    *buf = 67110144;
    v12 = DWORD2(v9[0]);
    v13 = 1024;
    v14 = bswap32(WORD3(v9[0])) >> 16;
    v15 = 1024;
    v16 = v10[1];
    v17 = 1024;
    v18 = bswap32(HIWORD(v10[0])) >> 16;
    v19 = 2048;
    v20 = info;
    _os_log_impl(&dword_2990ED000, v6, v7, "TCP info get -- local: %{network:in_addr}u:%d, remote: %{network:in_addr}u:%d, error: %{mdns:err}ld", buf, 0x24u);
  }

  return info;
}

uint64_t _mdns_tcpinfo_get_info(_BYTE *a1, void *a2)
{
  *a1 = 6;
  memset(__src, 0, 424);
  v4 = 424;
  if (sysctlbyname("net.inet.tcp.info", __src, &v4, a1, 0x3CuLL) == -1)
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  if (!result)
  {
    memcpy(a2, __src, 0x1A8uLL);
    return 0;
  }

  return result;
}

os_log_t ___mdns_tcpinfo_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "tcpinfo");
  _mdns_tcpinfo_log_s_log = result;
  return result;
}

uint64_t mdns_tcpinfo_get_ipv6(_OWORD *a1, unsigned int a2, _OWORD *a3, unsigned int a4, void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(v9, 0, 60);
  WORD2(v9[0]) = 7708;
  WORD3(v9[0]) = __rev16(a2);
  *(v9 + 12) = *a1;
  LOWORD(v9[2]) = 7708;
  WORD1(v9[2]) = __rev16(a4);
  *(&v9[2] + 8) = *a3;
  info = _mdns_tcpinfo_get_info(v9, a5);
  if (_mdns_tcpinfo_log_s_once != -1)
  {
    dispatch_once(&_mdns_tcpinfo_log_s_once, &__block_literal_global_1623);
  }

  v6 = _mdns_tcpinfo_log_s_log;
  if (info)
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v7 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_tcpinfo_log_s_log, v7))
  {
    *buf = 68159234;
    v11 = 16;
    v12 = 2096;
    v13 = v9 | 0xC;
    v14 = 1024;
    v15 = bswap32(WORD3(v9[0])) >> 16;
    v16 = 1040;
    v17 = 16;
    v18 = 2096;
    v19 = &v9[2] + 8;
    v20 = 1024;
    v21 = bswap32(WORD1(v9[2])) >> 16;
    v22 = 2048;
    v23 = info;
    _os_log_impl(&dword_2990ED000, v6, v7, "TCP info get -- local: %{network:in6_addr}.16P.%d, remote: %{network:in6_addr}.16P.%d, error: %{mdns:err}ld", buf, 0x38u);
  }

  return info;
}

uint64_t mdns_mach_ticks_per_second()
{
  if (mdns_mach_ticks_per_second_s_once != -1)
  {
    dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
  }

  return mdns_mach_ticks_per_second_s_ticks_per_second;
}

void __mdns_mach_ticks_per_second_block_invoke()
{
  v11 = *MEMORY[0x29EDCA608];
  v0 = 1000000000;
  info = 0;
  v1 = mach_timebase_info(&info);
  if (v1 || (info.numer ? (v2 = info.denom == 0) : (v2 = 1), v2))
  {
    if (_mdns_ticks_log_s_once != -1)
    {
      dispatch_once(&_mdns_ticks_log_s_once, &__block_literal_global_3);
    }

    v3 = _mdns_ticks_log_s_log;
    if (os_log_type_enabled(_mdns_ticks_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v6 = v1;
      v7 = 1024;
      numer = info.numer;
      v9 = 1024;
      denom = info.denom;
      _os_log_error_impl(&dword_2990ED000, v3, OS_LOG_TYPE_ERROR, "Unexpected results from mach_timebase_info: err %d numer %u denom %u", buf, 0x14u);
    }
  }

  else
  {
    v0 = 1000000000 * info.denom / info.numer;
  }

  mdns_mach_ticks_per_second_s_ticks_per_second = v0;
}

os_log_t ___mdns_ticks_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "ticks");
  _mdns_ticks_log_s_log = result;
  return result;
}

const __CFData *mdns_xpc_create_dictionary_from_plist_data(UInt8 *bytes, CFIndex length, int *a3)
{
  v4 = CFDataCreate(0, bytes, length);
  if (v4)
  {
    v5 = CFPropertyListCreateWithData(0, v4, 0, 0, 0);
    CFRelease(v4);
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 == CFDictionaryGetTypeID())
      {
        v4 = _CFXPCCreateXPCObjectFromCFObject();
        if (v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = -6700;
        }
      }

      else
      {
        v4 = 0;
        v7 = -6756;
      }
    }

    else
    {
      v4 = 0;
      v7 = -6717;
    }
  }

  else
  {
    v5 = 0;
    v7 = -6728;
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t mdns_tlv16_get_value(unsigned __int16 *a1, unint64_t a2, int a3, int64_t *a4, unsigned __int16 **a5, void *a6)
{
  if (a1 > a2)
  {
    return 4294960586;
  }

  do
  {
    if ((a2 - a1) < 1)
    {
      return 4294960569;
    }

    if (a2 - a1 < 4)
    {
      return 4294960546;
    }

    v6 = __rev16(a1[1]);
    v7 = a1 + 2;
    if ((a2 - (a1 + 2)) < v6)
    {
      return 4294960546;
    }

    v8 = bswap32(*a1);
    a1 = (v7 + v6);
  }

  while (a3 != HIWORD(v8));
  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v7;
  }

  v9 = 0;
  if (a6)
  {
    *a6 = a1;
  }

  return v9;
}

uint64_t mdns_tlv16_set(_BYTE *a1, uint64_t a2, __int16 a3, size_t __n, void *__src, void *a6)
{
  v7 = __n;
  if (a2 && a2 - a1 < __n + 4)
  {
    return 4294960533;
  }

  *a1 = HIBYTE(a3);
  a1[1] = a3;
  a1[2] = BYTE1(__n);
  a1[3] = __n;
  v8 = a1 + 4;
  if (__n)
  {
    memcpy(a1 + 4, __src, __n);
  }

  result = 0;
  if (a6)
  {
    *a6 = &v8[v7];
  }

  return result;
}