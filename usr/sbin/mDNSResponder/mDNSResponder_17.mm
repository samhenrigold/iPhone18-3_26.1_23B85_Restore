void _mdns_dso_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    free(v5);
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    free(v6);
    *(a1 + 96) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v7);
    *(a1 + 72) = 0;
  }
}

char *_mdns_dso_session_copy_description(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 200);
  if (v2)
  {

    return v2();
  }

  else
  {
    result = strdup("<This is a DSO session object.>");
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

double _mdns_dso_session_init(uint64_t a1)
{
  result = 1.27561485e-307;
  *(a1 + 116) = 0x36EE8000003A98;
  *(a1 + 40) = atomic_fetch_add_explicit(&_mdns_dso_session_get_next_id_s_last_id, 1uLL, memory_order_relaxed) + 1;
  return result;
}

void *_mdns_dso_client_session_copy_description(uint64_t a1, int a2, char a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && (appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1), (*(v25 + 6) = appended) != 0))
    {
      v9 = 0;
    }

    else
    {
      mdns_string_builder_append_formatted(v7, "[DSO%llu", *(a1 + 40));
      if ((*(a1 + 124) & 1) == 0)
      {
        mdns_string_builder_append_formatted(v7, " inactive");
      }

      if (*(a1 + 214) - 1 > 8)
      {
        v10 = "invalid_session_state";
      }

      else
      {
        v10 = (&off_100152C58)[(*(a1 + 214) - 1)];
      }

      mdns_string_builder_append_formatted(v7, " %s", v10);
      if (CFArrayGetCount(*(a1 + 152)) < 1)
      {
        v12 = *(a1 + 136);
        if (v12)
        {
          mdns_string_builder_append_description_with_prefix(v7, " ", v12, a3);
          mdns_string_builder_append_formatted(v7, "@interface %u", *(a1 + 208));
        }
      }

      else
      {
        v23[0] = 0;
        v23[1] = v23;
        v23[2] = 0x2000000000;
        v23[3] = " ";
        v11 = *(a1 + 152);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 0x40000000;
        v21[2] = ___mdns_dso_client_session_copy_description_block_invoke;
        v21[3] = &unk_100152BB8;
        v21[5] = v23;
        v21[6] = v7;
        v21[4] = &v24;
        v22 = a3;
        mdns_cfarray_enumerate(v11, v21);
        _Block_object_dispose(v23, 8);
      }

      v13 = *(a1 + 176);
      if (v13)
      {
        if (*(a1 + 136))
        {
          v14 = "->";
        }

        else
        {
          v14 = " ";
        }

        mdns_string_builder_append_description_with_prefix(v7, v14, v13, a3);
      }

      v15 = *(a1 + 80);
      if (v15)
      {
        v16 = nw_connection_copy_description(v15);
        if (v16)
        {
          v17 = v16;
          mdns_string_builder_append_formatted(v7, ", %s", v16);
          free(v17);
        }
      }

      mdns_string_builder_append_formatted(v7, ", activity count: %zu", *(a1 + 104));
      if (*(a1 + 32))
      {
        v18 = mach_continuous_time() - *(a1 + 32);
        if (v18 >= 1)
        {
          v19 = mdns_ticks_to_milliseconds(v18);
          mdns_string_builder_append_formatted(v7, ", last activity %llums ago", v19);
        }
      }

      mdns_string_builder_append_formatted(v7, ", inactivity timeout: %ums, keepalive interval: %ums", *(a1 + 128), *(a1 + 132));
      mdns_string_builder_append_formatted(v7, ", keepalive msg id: %u", *(a1 + 212));
      if (*(a1 + 215) == 1)
      {
        mdns_string_builder_append_formatted(v7, ", reports connection error");
      }

      mdns_string_builder_append_formatted(v7, "]");
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v24, 8);
  return v9;
}

BOOL ___mdns_dso_client_session_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void _mdns_dso_client_session_invalidate(uint64_t a1)
{
  _mdns_dso_client_session_schedule_user_event(a1, 5, 0);
  v2 = *(a1 + 200);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 200) = 0;
  }
}

void _mdns_dso_client_session_schedule_user_event(uint64_t a1, char a2, int a3)
{
  if (*(a1 + 200))
  {
    os_retain(a1);
    v6 = _Block_copy(*(a1 + 200));
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___mdns_dso_client_session_schedule_user_event_block_invoke;
    block[3] = &unk_100152B50;
    v10 = a2;
    v9 = a3;
    block[4] = v6;
    block[5] = a1;
    dispatch_async(v7, block);
  }
}

void ___mdns_dso_client_session_schedule_user_event_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  os_release(*(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {

    _Block_release(v2);
  }
}

BOOL _mdns_dso_client_session_check_and_move_to_done_state(uint64_t a1)
{
  v1 = *(a1 + 214);
  if (v1 != 9)
  {
    *(a1 + 214) = 9;
  }

  return v1 != 9;
}

void _mdns_dso_client_session_close(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = *(a1 + 184);
  if (v12)
  {
    dispatch_source_cancel(*(a1 + 184));
    dispatch_release(v12);
    *(a1 + 184) = 0;
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    dispatch_source_cancel(*(a1 + 192));
    dispatch_release(v13);
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 176);
  if (!v14)
  {
LABEL_11:
    if (a5)
    {
      goto LABEL_12;
    }

LABEL_22:
    if (!a6)
    {
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    if (a4)
    {
      v15 = mach_continuous_time();
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
      }

      v14[5] = v15 + 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
      v14 = *(a1 + 176);
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      ++v14[4];
    }
  }

  os_release(v14);
  *(a1 + 176) = 0;
  if (!a5)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v16 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v21 = 134217984;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Restarting DSO session", &v21, 0xCu);
  }

  *(a1 + 40) = atomic_fetch_add_explicit(&_mdns_dso_session_get_next_id_s_last_id, 1uLL, memory_order_relaxed) + 1;
  *(a1 + 214) = 3;
  if (!_mdns_dso_client_session_connect_or_delay_reconnecting(a1))
  {
    v18 = a1;
    v19 = 1;
    v20 = 0;
LABEL_24:
    _mdns_dso_client_session_schedule_user_event(v18, v19, v20);
    return;
  }

  if (a6)
  {
LABEL_23:
    *(a1 + 214) = 8;
    v18 = a1;
    v19 = 4;
    v20 = a2;
    goto LABEL_24;
  }
}

uint64_t _mdns_dso_client_session_connect_or_delay_reconnecting(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 214) != 3)
  {
    v21 = 4294960587;
    goto LABEL_61;
  }

  v42 = *(a1 + 168);
  Count = CFArrayGetCount(*(v42 + 24));
  if (Count < 1)
  {
LABEL_27:
    v21 = 4294960569;
LABEL_43:
    v10 = 0;
    v20 = 0;
LABEL_44:
    v27 = *(v1 + 176);
    if (v27)
    {
      os_release(v27);
      *(v1 + 176) = 0;
    }

    v28 = v20 ^ 1;
    if (v21 != -6760)
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0 && v10)
    {
      v29 = *(v1 + 184);
      if (v29)
      {
        dispatch_source_cancel(*(v1 + 184));
        dispatch_release(v29);
        *(v1 + 184) = 0;
      }

      if (_mdns_dso_session_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
      }

      monotonic_timer = _mdns_dispatch_create_monotonic_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
      *(v1 + 184) = monotonic_timer;
      if (monotonic_timer)
      {
        *handler = _NSConcreteStackBlock;
        *&handler[8] = 0x40000000;
        *&handler[16] = ___mdns_dso_client_session_schedule_reconnecting_block_invoke;
        *&handler[24] = &__block_descriptor_tmp_19_6071;
        v46 = v1;
        dispatch_source_set_event_handler(monotonic_timer, handler);
        dispatch_activate(*(v1 + 184));
        v21 = 0;
      }

      else
      {
        v21 = 4294960567;
      }

      if (_mdns_dso_session_log_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
      }

      v31 = _mdns_dso_session_log_s_log;
      if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(v1 + 40);
        *handler = 134218498;
        *&handler[4] = v32;
        *&handler[12] = 1024;
        *&handler[14] = v10;
        *&handler[18] = 2112;
        *&handler[20] = v1;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[DSO%llu] -> Wait for reconnection -- delay: %ums, session: %@", handler, 0x1Cu);
      }

      if (!v21)
      {
        return v21;
      }
    }

LABEL_61:
    _mdns_dso_session_handle_failure(v1, v21, 1, 0);
    return v21;
  }

  v3 = Count;
  v41 = v1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *handler = 0;
  v9 = 0xFFFF;
  v10 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v42 + 24), v8);
    LODWORD(completion[0]) = 0;
    if (_mdns_dso_server_endpoint_is_usable_now(ValueAtIndex, handler, completion))
    {
      if ((v7 & 1) == 0)
      {
        v7 = 1;
      }

      priority = nw_endpoint_get_priority();
      weight = nw_endpoint_get_weight();
      if (v9 <= priority)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      if (v9 <= priority)
      {
        v15 = v4;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + weight;
      if (!weight)
      {
        ++v14;
      }

      if (v9 >= priority)
      {
        v5 = v14;
        v4 = v16;
        v9 = priority;
      }
    }

    else
    {
      v17 = completion[0];
      if (v10 < LODWORD(completion[0]))
      {
        v17 = v10;
      }

      v6 |= *handler == -6760;
      if (*handler == -6760)
      {
        v10 = v17;
      }
    }

    ++v8;
  }

  while (v3 != v8);
  if ((v7 & 1) == 0)
  {
    if (v6)
    {
      v20 = 1;
      v21 = 4294960536;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  v18 = arc4random() % (v4 + 1);
  if (v5)
  {
    v19 = arc4random() % v5 + 1;
  }

  else
  {
    v19 = 0;
  }

  v22 = 0;
  v23 = 0;
  if (v3 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v3;
  }

  while (1)
  {
    v25 = CFArrayGetValueAtIndex(*(v42 + 24), v22);
    if (!_mdns_dso_server_endpoint_is_usable_now(v25, 0, 0) || nw_endpoint_get_priority() != v9)
    {
      goto LABEL_41;
    }

    v26 = nw_endpoint_get_weight();
    if (!v18)
    {
      break;
    }

    if (v26)
    {
      v23 += v26;
      if (v23 >= v18)
      {
        goto LABEL_63;
      }
    }

LABEL_41:
    if (v24 == ++v22)
    {
LABEL_42:
      v21 = 4294960560;
      v1 = v41;
      goto LABEL_43;
    }
  }

  if (v26)
  {
    goto LABEL_41;
  }

  if (!v19)
  {
    goto LABEL_42;
  }

  if (--v19)
  {
    goto LABEL_41;
  }

LABEL_63:
  v1 = v41;
  *(v41 + 176) = v25;
  os_retain(v25);
  v43 = 0;
  v34 = (*(*(v1 + 16) + 64))(v1, &v43);
  v35 = v34;
  if (!v43)
  {
    *(v41 + 80) = v34;
    nw_retain(v34);
    os_retain(v41);
    nw_retain(v35);
    v36 = *(v41 + 80);
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    nw_connection_set_queue(v36, _mdns_dso_session_queue_s_queue);
    v37 = *(v41 + 80);
    *handler = _NSConcreteStackBlock;
    *&handler[8] = 0x40000000;
    *&handler[16] = ___mdns_dso_session_prepare_connection_with_nw_connection_block_invoke;
    *&handler[24] = &__block_descriptor_tmp_15_6076;
    v46 = v41;
    v47 = v35;
    nw_connection_set_state_changed_handler(v37, handler);
    nw_connection_start(*(v41 + 80));
    v38 = *(v41 + 80);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 0x40000000;
    completion[2] = ___mdns_dso_session_schedule_receive_block_invoke;
    completion[3] = &__block_descriptor_tmp_17_6077;
    completion[4] = v41;
    nw_connection_receive_message(v38, completion);
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v39 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(v41 + 40);
      *handler = 134218242;
      *&handler[4] = v40;
      *&handler[12] = 2112;
      *&handler[14] = v35;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start connection -- connection: %@", handler, 0x16u);
    }
  }

  if (v35)
  {
    nw_release(v35);
  }

  v21 = v43;
  if (v43)
  {
    goto LABEL_43;
  }

  return v21;
}

void _mdns_dso_session_handle_failure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 152);
  if (v9)
  {
    v9(a1, a2);
    v8 = *(a1 + 16);
  }

  if ((*(v8 + 168))(a1, a4))
  {
    _mdns_dso_session_close_internal(a1, a2, a3, 0, a4, 1);
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v10 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v14 = 134218752;
      v15 = v11;
      v16 = 2048;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      v12 = "[DSO%llu] DSO session failed, closing -- error: %{mdns:err}ld, forcibly: %{BOOL}d, restartable: %{BOOL}d";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0x22u);
    }
  }

  else
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v10 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = 134218752;
      v15 = v13;
      v16 = 2048;
      v17 = a2;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      v12 = "[DSO%llu] DSO session failed, waiting to restart -- error: %{mdns:err}ld, forcibly: %{BOOL}d, restartable: %{BOOL}d";
      goto LABEL_12;
    }
  }
}

uint64_t _mdns_dso_session_close_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _mdns_dso_session_stop_inactivity_timer(a1);
  *(a1 + 104) = 0;
  v12 = *(a1 + 80);
  if (v12)
  {
    if (a3)
    {
      nw_connection_force_cancel(v12);
    }

    else
    {
      nw_connection_cancel(v12);
    }

    v13 = *(a1 + 80);
    if (v13)
    {
      nw_release(v13);
      *(a1 + 80) = 0;
    }

    v14 = *(a1 + 88);
    if (v14)
    {
      free(v14);
      *(a1 + 88) = 0;
    }

    v15 = *(a1 + 96);
    if (v15)
    {
      free(v15);
      *(a1 + 96) = 0;
    }

    *(a1 + 112) = 0;
  }

  v16 = *(*(a1 + 16) + 176);

  return v16(a1, a2, a3, a4, a5, a6);
}

void _mdns_dso_session_stop_inactivity_timer(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 32) = 0;
}

void ___mdns_dso_session_prepare_connection_with_nw_connection_block_invoke(uint64_t a1, uint64_t a2, nw_error_t error)
{
  v3 = a2;
  if (*(*(a1 + 32) + 80) != *(a1 + 40))
  {
    goto LABEL_2;
  }

  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v6 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(*(a1 + 32) + 40);
    v29 = nw_connection_state_to_string();
    v30 = *(*(a1 + 32) + 80);
    *v34 = 134218754;
    *&v34[4] = v28;
    *&v34[12] = 2082;
    *&v34[14] = v29;
    v35 = 2112;
    v36 = v30;
    v37 = 2048;
    v38 = error_code;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[DSO%llu] DSO session connection state change -- state: %{public}s, connection: %@, error: %{mdns:err}ld", v34, 0x2Au);
  }

  v7 = 4294960587;
  if (v3 <= 2)
  {
    if (v3 >= 3)
    {
      goto LABEL_50;
    }

    return;
  }

  if (v3 == 5)
  {
LABEL_3:
    os_release(*(a1 + 32));
    nw_release(*(a1 + 40));
    return;
  }

  if (v3 == 4)
  {
    if (error_code != 54)
    {
      goto LABEL_49;
    }

    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v27 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      v32 = *(v31 + 40);
      v33 = *(v31 + 80);
      *v34 = 134218242;
      *&v34[4] = v32;
      *&v34[12] = 2112;
      *&v34[14] = v33;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[DSO%llu] DSO session is forcibly aborted by the other side -- %@", v34, 0x16u);
    }

    v7 = 54;
LABEL_50:
    _mdns_dso_session_handle_failure(*(a1 + 32), v7, 1, 1);
LABEL_2:
    if (v3 != 5)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v3 != 3)
  {
    goto LABEL_50;
  }

  v8 = nw_connection_copy_connected_local_endpoint();
  v9 = nw_connection_copy_connected_remote_endpoint();
  if (_mdns_dso_session_log_s_once != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v10 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 40);
      *v34 = 134218498;
      *&v34[4] = v11;
      *&v34[12] = 2112;
      *&v34[14] = v8;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start connection -> Connection ready -- %@ <---> %@", v34, 0x20u);
    }

    if (v8)
    {
      nw_release(v8);
    }

    if (v9)
    {
      nw_release(v9);
    }

    v9 = *(a1 + 32);
    v12 = *(v9 + 88);
    if (v12)
    {
      free(v12);
      *(v9 + 88) = 0;
    }

    v13 = nw_connection_copy_endpoint(*(v9 + 80));
    if (v13)
    {
      v8 = v13;
      hostname = nw_endpoint_get_hostname(v13);
      if (!hostname)
      {
        goto LABEL_51;
      }

      v15 = strdup(hostname);
      if (!v15)
      {
        goto LABEL_51;
      }

      *(v9 + 88) = v15;
      nw_release(v8);
    }

    *(v9 + 112) = 0;
    v16 = nw_connection_copy_current_path(*(v9 + 80));
    if (v16)
    {
      v8 = v16;
      *(v9 + 112) = nw_path_get_interface_index();
      nw_release(v8);
    }

    v17 = *(v9 + 96);
    if (v17)
    {
      free(v17);
      *(v9 + 96) = 0;
    }

    v18 = *(v9 + 112);
    if (!v18)
    {
      goto LABEL_38;
    }

    memset(v34, 0, 17);
    v19 = if_indextoname(v18, v34);
    if (!v19)
    {
      goto LABEL_38;
    }

    v20 = strdup(v19);
    if (v20)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  *(v9 + 96) = v20;
LABEL_38:
  v21 = nw_connection_copy_parameters(*(v9 + 80));
  v22 = nw_parameters_copy_default_protocol_stack(v21);
  v23 = nw_protocol_stack_copy_transport_protocol(v22);
  maximum_segment_size = nw_tcp_options_get_maximum_segment_size();
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v25 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_INFO))
  {
    v26 = *(v9 + 40);
    *v34 = 134218240;
    *&v34[4] = v26;
    *&v34[12] = 1024;
    *&v34[14] = maximum_segment_size;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[DSO%llu] mss is %u", v34, 0x12u);
  }

  nw_release(v23);
  nw_release(v22);
  nw_release(v21);
  (*(*(v9 + 16) + 80))(v9);
  error_code = (*(*(*(a1 + 32) + 16) + 88))();
LABEL_49:
  v7 = error_code;
  if (error_code)
  {
    goto LABEL_50;
  }
}

void ___mdns_dso_session_schedule_receive_block_invoke(uint64_t a1, NSObject *a2, nw_content_context_t context, uint64_t a4, NSObject *a5)
{
  if (!*(*(a1 + 32) + 80))
  {
    return;
  }

  v45 = 0;
  if (context)
  {
    is_final = nw_content_context_get_is_final(context);
    if (a5)
    {
LABEL_4:
      error_code = nw_error_get_error_code(a5);
      goto LABEL_7;
    }
  }

  else
  {
    is_final = 0;
    if (a5)
    {
      goto LABEL_4;
    }
  }

  error_code = 0;
LABEL_7:
  if (error_code)
  {
    v10 = 0;
  }

  else
  {
    v10 = is_final;
  }

  if (v10)
  {
    v11 = *(*(*(a1 + 32) + 16) + 160);
    if (v11)
    {
      v11();
    }

    v45 = 1;
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v12 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 32) + 40);
      *buf = 134217984;
      *&buf[4] = v13;
      v14 = "[DSO%llu] DSO session is gracefully closed by the other side.";
      v15 = v12;
      v16 = 12;
      goto LABEL_58;
    }
  }

  else if (error_code == 61 || error_code == 54)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v17 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v44 = *(*(a1 + 32) + 40);
      *buf = 134218240;
      *&buf[4] = v44;
      *&buf[12] = 2048;
      *&buf[14] = error_code;
      v14 = "[DSO%llu] DSO session is forcibly aborted by the other side -- error: %{mdns:err}ld";
      v15 = v17;
      v16 = 22;
LABEL_58:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      if (!a2)
      {
        goto LABEL_39;
      }

LABEL_23:
      if (dispatch_data_get_size(a2))
      {
        v18 = (*(*(*(a1 + 32) + 16) + 96))();
        v19 = *(a1 + 32);
        if (!v18)
        {
          error_code = 4294960587;
          goto LABEL_40;
        }

        v20 = mdns_message_create_with_dispatch_data(a2, 1);
        if (!v20)
        {
          v19 = *(a1 + 32);
          error_code = 4294960567;
          goto LABEL_40;
        }

        v21 = v20;
        v22 = *(v20 + 2);
        if (!v22)
        {
          goto LABEL_31;
        }

        while (v22 != &_mdns_dso_message_kind)
        {
          v22 = *v22;
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        if (!(*(*(v19 + 16) + 120))(v19, v20))
        {
          v46 = 0;
          v37 = v21[2];
          if (v37)
          {
            while (v37 != &_mdns_dso_message_kind)
            {
              v37 = *v37;
              if (!v37)
              {
                goto LABEL_51;
              }
            }

            error_code = (*(*(v19 + 16) + 128))(v19, v21, &v45, &v46);
            if ((v46 & 1) == 0)
            {
              if (_mdns_dso_session_log_s_once != -1)
              {
                dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
              }

              v38 = _mdns_dso_session_log_s_log;
              if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                v39 = *(v19 + 40);
                size = dispatch_data_get_size(a2);
                v41 = *(v19 + 88);
                v42 = *(v19 + 96);
                v43 = *(v19 + 112);
                *buf = 134219010;
                *&buf[4] = v39;
                *&buf[12] = 2048;
                *&buf[14] = size;
                *&buf[22] = 2082;
                v48 = v41;
                LOWORD(v49) = 2082;
                *(&v49 + 2) = v42;
                WORD5(v49) = 1024;
                HIDWORD(v49) = v43;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Received %zu-byte session DSO message from %{public}s over DSO session via %{public}s/%u", buf, 0x30u);
              }
            }
          }

          else
          {
LABEL_51:
            error_code = 4294960560;
          }
        }

        else
        {
LABEL_31:
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v23 = _mdns_dso_session_log_s_log;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v19 + 40);
            v25 = dispatch_data_get_size(a2);
            v26 = *(v19 + 88);
            v27 = *(v19 + 96);
            v28 = *(v19 + 112);
            *buf = 134219010;
            *&buf[4] = v24;
            *&buf[12] = 2048;
            *&buf[14] = v25;
            *&buf[22] = 2082;
            v48 = v26;
            LOWORD(v49) = 2082;
            *(&v49 + 2) = v27;
            WORD5(v49) = 1024;
            HIDWORD(v49) = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Received %zu-byte user DSO message from %{public}s over DSO session via %{public}s/%u", buf, 0x30u);
          }

          if (*(v19 + 64))
          {
            os_retain(v19);
            dispatch_retain(a2);
            v29 = _Block_copy(*(v19 + 64));
            v30 = *(v19 + 48);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = ___mdns_dso_session_schedule_user_receive_block_invoke;
            v48 = &unk_100152A48;
            *&v49 = v29;
            *(&v49 + 1) = v19;
            v50 = a2;
            dispatch_async(v30, buf);
          }

          error_code = 0;
        }

        os_release(v21);
      }

      goto LABEL_39;
    }
  }

  if (a2)
  {
    goto LABEL_23;
  }

LABEL_39:
  v19 = *(a1 + 32);
  if (error_code)
  {
LABEL_40:
    v31 = v19;
    v32 = error_code;
    v33 = 1;
    v34 = 1;
LABEL_43:
    _mdns_dso_session_handle_failure(v31, v32, v33, v34);
    return;
  }

  if (v45 == 1)
  {
    v31 = *(a1 + 32);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_43;
  }

  v35 = *(*(v19 + 16) + 136);
  if (v35)
  {
    v35(*(a1 + 32));
    v19 = *(a1 + 32);
  }

  v36 = *(v19 + 80);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = ___mdns_dso_session_schedule_receive_block_invoke;
  v48 = &__block_descriptor_tmp_17_6077;
  *&v49 = v19;
  nw_connection_receive_message(v36, buf);
}

void ___mdns_dso_session_schedule_user_receive_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 16) + 104))())
  {
    (*(*(a1 + 32) + 16))();
  }

  os_release(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    _Block_release(v3);
  }
}

uint64_t _mdns_dso_client_session_check_and_move_to_closing_state(uint64_t a1, int a2)
{
  v2 = *(a1 + 214);
  if ((v2 & 0xFE) == 8)
  {
    return 0;
  }

  if (a2)
  {
    if (v2 == 3)
    {
      return 0;
    }

    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  *(a1 + 214) = v4;
  return 1;
}

void _mdns_dso_client_session_handle_error(uint64_t a1, int a2)
{
  if ((a2 - 51) <= 0xE && ((1 << (a2 - 51)) & 0x6609) != 0 && *(a1 + 215) == 1)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v4 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 134218240;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Reporting connection error to the client -- error: %{mdns:err}ld", &v6, 0x16u);
    }

    _mdns_dso_client_session_schedule_user_event(a1, 2, a2);
  }
}

uint64_t _mdns_dso_client_session_schedule_keepalive_message(uint64_t a1)
{
  if (*(a1 + 214) != 7)
  {
    return 4294960587;
  }

  handler[7] = v1;
  handler[8] = v2;
  v4 = *(a1 + 192);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 192));
    dispatch_release(v4);
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 132);
  if (v5 == -1)
  {
    return 0;
  }

  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
  *(a1 + 192) = monotonic_timer;
  if (monotonic_timer)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mdns_dso_client_session_schedule_keepalive_message_block_invoke;
    handler[3] = &__block_descriptor_tmp_30_6095;
    handler[4] = a1;
    dispatch_source_set_event_handler(monotonic_timer, handler);
    dispatch_activate(*(a1 + 192));
    return 0;
  }

  return 4294960567;
}

void ___mdns_dso_client_session_schedule_keepalive_message_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 192));
    dispatch_release(v3);
    *(*(a1 + 32) + 192) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 214) == 7)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v4 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 40);
      v8 = 134217984;
      v9 = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[DSO%llu] Sending keepalive message", &v8, 0xCu);
    }

    keepalive_message = _mdns_dso_session_create_keepalive_message(*(a1 + 32), *(*(a1 + 32) + 212));
    if (keepalive_message)
    {
      v6 = keepalive_message;
      _mdns_dso_session_send_data_immediately(*(a1 + 32), keepalive_message[3], 1, 1);
      os_release(v6);
    }
  }
}

_BYTE *_mdns_dso_session_create_keepalive_message(uint64_t a1, __int16 a2)
{
  result = _os_object_alloc();
  if (result)
  {
    v5 = result;
    v6 = &_mdns_dso_keepalive_message_builder_kind;
    *(result + 2) = &_mdns_dso_keepalive_message_builder_kind;
    do
    {
      v7 = v6[2];
      if (v7)
      {
        v7(v5);
      }

      v6 = *v6;
    }

    while (v6);
    *(v5 + 28) = a2;
    *(v5 + 32) = *(a1 + 116);
    message = mdns_dso_message_builder_create_message(v5);
    os_release(v5);
    return message;
  }

  return result;
}

void _mdns_dso_session_send_data_immediately(uint64_t a1, dispatch_data_t data, char a3, char a4)
{
  v7 = *(a1 + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dso_session_send_data_immediately_block_invoke;
  v8[3] = &__block_descriptor_tmp_32_6097;
  v8[4] = a1;
  v8[5] = v7;
  v8[6] = dispatch_data_get_size(data);
  v9 = a4;
  v10 = a3;
  nw_connection_send(v7, data, _nw_content_context_default_message, 1, v8);
}

void ___mdns_dso_session_send_data_immediately_block_invoke(uint64_t a1, nw_error_t error)
{
  v2 = *(a1 + 32);
  if (v2[10] != *(a1 + 40))
  {
    return;
  }

  if (error)
  {
    error_code = nw_error_get_error_code(error);
    if (error_code)
    {
      v5 = error_code;
      if (_mdns_dso_session_log_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
      }

      v6 = _mdns_dso_session_log_s_log;
      if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = *(v19 + 40);
        v21 = *(a1 + 48);
        v22 = *(v19 + 88);
        v23 = *(v19 + 96);
        LODWORD(v19) = *(v19 + 112);
        v24 = 134219266;
        v25 = v20;
        v26 = 2048;
        v27 = v21;
        v28 = 2082;
        v29 = v22;
        v30 = 2082;
        v31 = v23;
        v32 = 1024;
        v33 = v19;
        v34 = 2048;
        v35 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[DSO%llu] Failed to send %zu-byte DSO message to %{public}s over DSO session via %{public}s/%u -- error: %{mdns:err}ld", &v24, 0x3Au);
      }

      _mdns_dso_session_handle_failure(*(a1 + 32), v5, 1, 1);
      return;
    }
  }

  else if ((*(v2[2] + 104))(*(a1 + 32)) && !v2[13])
  {
    _mdns_dso_session_schedule_inactivity_timer_ex(*(a1 + 32), 0);
  }

  if (*(a1 + 56))
  {
    return;
  }

  if (*(a1 + 57) == 1)
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v7 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 40);
      v10 = *(a1 + 48);
      v11 = *(v8 + 88);
      v12 = *(v8 + 96);
      LODWORD(v8) = *(v8 + 112);
      v24 = 134219010;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 2082;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 1024;
      v33 = v8;
      v13 = "[DSO%llu] Sent %zu-byte user DSO message to %{public}s over DSO session via %{public}s/%u";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v13, &v24, 0x30u);
    }
  }

  else
  {
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v7 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 40);
      v16 = *(a1 + 48);
      v17 = *(v14 + 88);
      v18 = *(v14 + 96);
      LODWORD(v14) = *(v14 + 112);
      v24 = 134219010;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2082;
      v29 = v17;
      v30 = 2082;
      v31 = v18;
      v32 = 1024;
      v33 = v14;
      v13 = "[DSO%llu] Sent %zu-byte session DSO message to %{public}s over DSO session via %{public}s/%u";
      goto LABEL_23;
    }
  }
}

uint64_t _mdns_dso_session_schedule_inactivity_timer_ex(void *a1, uint64_t a2)
{
  if (!(*(a1[2] + 104))() || a1[13])
  {
    return 4294960587;
  }

  _mdns_dso_session_stop_inactivity_timer(a1);
  result = (*(a1[2] + 112))(a1, a2);
  if (!result)
  {
    result = a1[9];
    if (result)
    {
      dispatch_activate(result);
      v5 = mach_continuous_time();
      result = 0;
      a1[4] = v5;
    }
  }

  return result;
}

uint64_t _mdns_dso_client_session_process_dso_message(uint64_t a1, void *a2, _BYTE *a3, char *a4)
{
  v6 = a2 + 2;
  v5 = a2[2];
  v7 = *(v5 + 56);
  if (!*(v5 + 56))
  {
    v15 = 0;
    result = 4294960554;
    goto LABEL_36;
  }

  v11 = *(_mdns_dso_message_get_header(a2[4], a2[5]) + 3) & 0xF;
  if (!mdns_dso_message_is_unidirectional(a2[4], a2[5]))
  {
    if (v7 != 1)
    {
      goto LABEL_25;
    }

    v17 = *(a1 + 214);
    if (v17 == 7)
    {
      if (v11)
      {
LABEL_24:
        v15 = 0;
LABEL_35:
        result = 0;
        goto LABEL_36;
      }

      result = _mdns_dso_client_session_accept_keepalive_message(a1, a2, a3);
      if (!result)
      {
        if (_mdns_dso_session_log_s_once != -1)
        {
          dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
        }

        v22 = _mdns_dso_session_log_s_log;
        v15 = 1;
        if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_INFO))
        {
          v23 = *(a1 + 40);
          v24 = 134217984;
          v25 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[DSO%llu] Keepalive message acked", &v24, 0xCu);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v17 != 6)
      {
        goto LABEL_25;
      }

      if (v11)
      {
        v15 = 0;
        result = 4294960543;
        goto LABEL_36;
      }

      result = _mdns_dso_client_session_accept_keepalive_message(a1, a2, 0);
      if (!result)
      {
        *(a1 + 214) = 7;
        v18 = *(a1 + 192);
        if (v18)
        {
          dispatch_source_cancel(*(a1 + 192));
          dispatch_release(v18);
          *(a1 + 192) = 0;
        }

        result = _mdns_dso_session_schedule_inactivity_timer_ex(a1, 0);
        if (!result)
        {
          v19 = *(a1 + 176);
          if (!v19)
          {
            goto LABEL_25;
          }

          *(v19 + 32) = 0;
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v20 = _mdns_dso_session_log_s_log;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 40);
            v24 = 134218242;
            v25 = v21;
            v26 = 2112;
            v27 = a1;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Preparing session -> Session ready -- session: %@", &v24, 0x16u);
          }

          _mdns_dso_client_session_schedule_user_event(a1, 3, 0);
          goto LABEL_24;
        }
      }
    }

    v15 = 0;
    goto LABEL_36;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      do
      {
        v6 = *v6;
      }

      while (v6 != &_mdns_dso_retry_delay_message_kind);
      v12 = bswap32(*(a2[4] + 16));
      v13 = *(a1 + 176);
      v14 = mach_continuous_time();
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
      }

      v15 = 0;
      *(v13 + 40) = mdns_mach_ticks_per_second_s_ticks_per_second * (v12 / 0x3E8uLL) + mdns_mach_ticks_per_second_s_ticks_per_second * (v12 % 0x3E8) / 0x3E8 + v14;
      *a3 = 1;
      goto LABEL_35;
    }

LABEL_25:
    v15 = 0;
    result = 4294960560;
    goto LABEL_36;
  }

  if (v11)
  {
    goto LABEL_24;
  }

  result = _mdns_dso_client_session_accept_keepalive_message(a1, a2, a3);
  v15 = 0;
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (a4)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t _mdns_dso_client_session_accept_keepalive_message(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2;
    while (v5 != &_mdns_dso_keepalive_message_kind)
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  v7 = *(v6 + 32);
  if (*(v6 + 40) - 16 >= __rev16(*(v7 + 14)))
  {
    v8 = (v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = bswap32(*v8);
  if (v9 <= 0x1388)
  {
    v10 = 5000;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 128) = v10;
  if (!(*(*(a1 + 16) + 104))(a1) || *(a1 + 104))
  {
    goto LABEL_14;
  }

  if (!*(a1 + 72))
  {
    return 4294960587;
  }

  v15 = mach_continuous_time() - *(a1 + 32);
  if (v15 < 0)
  {
    return 4294960587;
  }

  v16 = mdns_ticks_to_milliseconds(v15);
  v17 = *(a1 + 72);
  if (v17)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v17);
    *(a1 + 72) = 0;
  }

  if (v16 >= v10)
  {
    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    *a3 = 0;
  }

  result = _mdns_dso_session_schedule_inactivity_timer_ex(a1, v10 - v16);
  if (!result)
  {
LABEL_14:
    result = 0;
    v12 = *(v6 + 32);
    v13 = v12 + 16;
    if (*(v6 + 40) - 16 < __rev16(*(v12 + 14)))
    {
      v13 = 0;
    }

    v14 = bswap32(*(v13 + 4));
    if (v14 <= 0x2710)
    {
      v14 = 10000;
    }

    *(a1 + 132) = v14;
  }

  return result;
}

BOOL _mdns_dso_client_session_check_if_dso_message_belongs_to_user(uint64_t a1, void *a2)
{
  v4 = a2[4];
  v5 = a2[5];
  if (mdns_dso_message_is_unidirectional(v4, v5))
  {
    return *(a2[2] + 56) > 2u;
  }

  _mdns_dso_message_get_header(v4, v5);
  return *(a1 + 212) != bswap32(*v4) >> 16;
}

uint64_t _mdns_dso_client_session_set_up_inactivity_timer(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = *(a1 + 128);
  }

  if (v2 == -1)
  {
    return 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dso_client_session_set_up_inactivity_timer_ex_block_invoke;
  v8[3] = &__block_descriptor_tmp_28_6104;
  v8[4] = a1;
  v9 = v2;
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
  if (!monotonic_timer)
  {
    return 4294960567;
  }

  v5 = monotonic_timer;
  dispatch_source_set_event_handler(monotonic_timer, v8);
  v6 = *(a1 + 72);
  if (v6)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v6);
  }

  result = 0;
  *(a1 + 72) = v5;
  return result;
}

void ___mdns_dso_client_session_set_up_inactivity_timer_ex_block_invoke(uint64_t a1)
{
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v2 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = *(a1 + 40);
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Hit inactivity timeout, closing the idle session -- inactivity timeout: %ums", &v6, 0x12u);
  }

  _mdns_dso_session_stop_inactivity_timer(*(a1 + 32));
  v5 = *(a1 + 32);
  if ((*(*(v5 + 16) + 104))(v5))
  {
    if (!*(v5 + 104))
    {
      _mdns_dso_session_handle_failure(*(a1 + 32), 0, 0, 0);
    }
  }
}

uint64_t _mdns_dso_client_session_prepare_session(uint64_t a1)
{
  if (*(a1 + 214) != 5)
  {
    return 4294960587;
  }

  keepalive_message = _mdns_dso_session_create_keepalive_message(a1, *(a1 + 212));
  if (!keepalive_message)
  {
    return 4294960567;
  }

  v3 = keepalive_message;
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  monotonic_timer = _mdns_dispatch_create_monotonic_timer(0x7530u, 0xFFFFFFFFFFFFFFFFLL, 5u, _mdns_dso_session_queue_s_queue);
  if (monotonic_timer)
  {
    *(a1 + 192) = monotonic_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mdns_dso_client_session_prepare_session_block_invoke;
    handler[3] = &__block_descriptor_tmp_27_6106;
    handler[4] = a1;
    dispatch_source_set_event_handler(monotonic_timer, handler);
    if (_mdns_dso_session_log_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
    }

    v5 = _mdns_dso_session_log_s_log;
    if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 134217984;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Connection ready -> Preparing session", buf, 0xCu);
    }

    _mdns_dso_session_send_data_immediately(a1, v3[3], 0, 0);
    dispatch_activate(*(a1 + 192));
    v7 = 0;
    *(a1 + 214) = 6;
  }

  else
  {
    v7 = 4294960567;
  }

  os_release(v3);
  return v7;
}

void ___mdns_dso_client_session_prepare_session_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 192));
    dispatch_release(v3);
    *(*(a1 + 32) + 192) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 214) == 6)
  {

    _mdns_dso_session_handle_failure(v2, 4294960574, 1, 1);
  }
}

BOOL _mdns_dso_client_session_evaluate_trust(uint64_t a1, int a2, sec_trust_t trust, int *a4)
{
  error = 0;
  if (trust)
  {
    v6 = sec_trust_copy_ref(trust);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 160);
      if (v8)
      {
        SecTrustSetNetworkFetchAllowed(v6, 0);
        SecTrustSetAnchorCertificatesOnly(v7, 1u);
        SecTrustSetAnchorCertificates(v7, v8);
        v9 = SecTrustCopyExceptions(v7);
        if (v9)
        {
          SecTrustSetExceptions(v7, v9);
        }

        v10 = SecTrustEvaluateWithError(v7, &error);
        if (v10)
        {
          Code = 0;
        }

        else if (error)
        {
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v12 = _mdns_dso_session_log_s_log;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 40);
            *buf = 134218242;
            v17 = v14;
            v18 = 2112;
            v19 = error;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[DSO%llu] TLS certificate evaluation failed -- reason: %@", buf, 0x16u);
          }

          Code = CFErrorGetCode(error);
        }

        else
        {
          Code = -6754;
        }

        CFRelease(v7);
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        CFRelease(v6);
        Code = 0;
        v10 = 1;
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    else
    {
      v10 = 0;
      Code = -6729;
    }
  }

  else
  {
    v10 = 0;
    Code = -6705;
  }

  if (a4)
  {
    *a4 = Code;
  }

  return v10;
}

nw_connection_t _mdns_dso_client_session_prepare_connection(void *a1, int *a2)
{
  v4 = a1[2];
  *v18 = _NSConcreteStackBlock;
  *&v18[8] = 0x40000000;
  *&v18[16] = ___mdns_dso_session_create_tls_nw_parameters_block_invoke;
  v19 = &__block_descriptor_tmp_26_6109;
  v20 = a1;
  v21 = v4;
  secure_tcp = nw_parameters_create_secure_tcp(v18, _nw_parameters_configure_protocol_default_configuration);
  if (!secure_tcp)
  {
LABEL_20:
    v12 = 0;
    v16 = -6729;
    if (!a2)
    {
      return v12;
    }

    goto LABEL_17;
  }

  v6 = secure_tcp;
  nw_parameters_set_no_wake_from_sleep();
  v7 = nw_parameters_copy_default_protocol_stack(v6);
  if (!v7)
  {
    nw_release(v6);
    goto LABEL_20;
  }

  v8 = v7;
  if (_mdns_get_dns_over_bytestream_protocol_definition_s_once != -1)
  {
    dispatch_once(&_mdns_get_dns_over_bytestream_protocol_definition_s_once, &__block_literal_global_6312);
  }

  if (!_mdns_get_dns_over_bytestream_protocol_definition_s_framer_def)
  {
    options = 0;
    goto LABEL_23;
  }

  options = nw_framer_create_options(_mdns_get_dns_over_bytestream_protocol_definition_s_framer_def);
  if (!options)
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v10 = nw_protocol_stack_copy_transport_protocol(v8);
  nw_tcp_options_set_maximum_segment_size(v10, 0x1C2u);
  nw_protocol_stack_prepend_application_protocol(v8, options);
  v11 = a1[22];
  if (!v11)
  {
    v12 = 0;
    v16 = -6718;
    goto LABEL_14;
  }

  v12 = nw_connection_create(*(v11 + 24), v6);
  if (!v12)
  {
LABEL_24:
    v16 = -6729;
    goto LABEL_14;
  }

  maximum_segment_size = nw_tcp_options_get_maximum_segment_size();
  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v14 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_INFO))
  {
    v15 = a1[5];
    *v18 = 134218240;
    *&v18[4] = v15;
    *&v18[12] = 1024;
    *&v18[14] = maximum_segment_size;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[DSO%llu] mss is %u", v18, 0x12u);
  }

  nw_release(v10);
  v16 = 0;
LABEL_14:
  nw_release(v6);
  nw_release(v8);
  if (options)
  {
    nw_release(options);
  }

  if (a2)
  {
LABEL_17:
    *a2 = v16;
  }

  return v12;
}

void ___mdns_dso_session_create_tls_nw_parameters_block_invoke(uint64_t a1, nw_protocol_options_t options)
{
  v3 = nw_tls_copy_sec_protocol_options(options);
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = *(v4 + 48);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___mdns_dso_session_create_tls_nw_parameters_block_invoke_2;
    v7[3] = &__block_descriptor_tmp_24_6112;
    v7[4] = *(a1 + 40);
    v7[5] = v4;
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    v6 = _mdns_dso_session_queue_s_queue;
    v5 = v7;
  }

  sec_protocol_options_set_verify_block(v3, v5, v6);
  if (v3)
  {
    sec_release(v3);
  }
}

uint64_t ___mdns_dso_session_create_tls_nw_parameters_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 32) + 72);
  if (v5)
  {
    v6 = v5(*(a1 + 40), a2, a3, 0);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);

  return v7(a4, v6);
}

uint64_t _mdns_dso_client_session_check_configuration(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 152)) <= 0 && !*(a1 + 136) || !*(a1 + 200) || !*(a1 + 212))
  {
    return 4294960578;
  }

  if (*(a1 + 214) == 1)
  {
    return 0;
  }

  return 4294960587;
}

uint64_t _mdns_dso_client_session_activate(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 152)) < 1)
  {
    if (!*(a1 + 136))
    {
      return 4294960591;
    }

    srv = nw_endpoint_create_srv();
    if (!srv)
    {
      return 4294960567;
    }

    v10 = srv;
    v11 = nw_parameters_create();
    if (!v11)
    {
      nw_release(v10);
      return 4294960567;
    }

    v12 = v11;
    if (*(a1 + 208))
    {
      v13 = nw_interface_create_with_index();
      if (!v13)
      {
        goto LABEL_30;
      }

      nw_parameters_require_interface(v12, v13);
    }

    else
    {
      v13 = 0;
    }

    v15 = nw_resolver_create_with_endpoint();
    if (v15)
    {
      v16 = v15;
      nw_retain(v15);
      v22 = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = ___mdns_dso_client_session_start_srv_resolution_block_invoke;
      v25 = &__block_descriptor_tmp_20_6116;
      v26 = v16;
      nw_resolver_set_cancel_handler();
      if (_mdns_dso_session_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
      }

      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = ___mdns_dso_client_session_start_srv_resolution_block_invoke_2;
      v34 = &__block_descriptor_tmp_22_6117;
      v35 = a1;
      nw_resolver_set_update_handler();
      if (_mdns_dso_session_log_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
      }

      v17 = _mdns_dso_session_log_s_log;
      if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = *(a1 + 136);
        v20 = *(a1 + 208);
        *v27 = 134218498;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        v31 = 1024;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start -> Start SRV resolution -- service name: %@, interface index: %u", v27, 0x1Cu);
      }

      v5 = 0;
      *(a1 + 144) = v16;
      *(a1 + 214) = 2;
LABEL_31:
      nw_release(v10);
      nw_release(v12);
      if (v13)
      {
        v14 = v13;
LABEL_33:
        nw_release(v14);
        return v5;
      }

      return v5;
    }

LABEL_30:
    v5 = 4294960567;
    goto LABEL_31;
  }

  if (CFArrayGetCount(*(a1 + 152)) >= 1)
  {
    v2 = nw_array_create();
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + 152);
      v22 = _NSConcreteStackBlock;
      v23 = 0x40000000;
      v24 = ___mdns_dso_client_session_start_connection_with_server_addresses_block_invoke;
      v25 = &__block_descriptor_tmp_10_6114;
      v26 = v3;
      if (mdns_cfarray_enumerate(v4, &v22) && nw_array_get_count())
      {
        *(a1 + 214) = 3;
        v5 = _mdns_dso_client_session_add_nw_endpoints(a1, v3);
        if (!v5)
        {
          if (_mdns_dso_session_log_s_once != -1)
          {
            dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
          }

          v6 = _mdns_dso_session_log_s_log;
          v5 = 0;
          if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 40);
            v8 = *(a1 + 152);
            *buf = 134218242;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start -> Start connection directly -- addresses: %@", buf, 0x16u);
            v5 = 0;
          }
        }
      }

      else
      {
        v5 = 4294960539;
      }

      v14 = v3;
      goto LABEL_33;
    }

    return 4294960567;
  }

  return 4294960578;
}

nw_endpoint_t ___mdns_dso_client_session_start_connection_with_server_addresses_block_invoke(uint64_t a1, uint64_t a2)
{
  *&v5[24] = 0;
  *&v5[16] = 0;
  v2 = *(a2 + 25);
  if (v2 == 30)
  {
    *v5 = *(a2 + 24);
    *&v5[12] = *(a2 + 36);
  }

  else
  {
    if (v2 != 2)
    {
      return 0;
    }

    *v5 = *(a2 + 24);
  }

  if (!*&v5[2])
  {
    *&v5[2] = 21763;
  }

  result = nw_endpoint_create_address(v5);
  if (result)
  {
    v4 = result;
    nw_array_append();
    nw_release(v4);
    return 1;
  }

  return result;
}

uint64_t _mdns_dso_client_session_add_nw_endpoints(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v3 = _os_object_alloc();
  if (v3)
  {
    v4 = v3;
    v5 = &_mdns_dso_server_endpoint_manager_kind;
    *(v3 + 16) = &_mdns_dso_server_endpoint_manager_kind;
    do
    {
      v6 = v5[2];
      if (v6)
      {
        v6(v4);
      }

      v5 = *v5;
    }

    while (v5);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    v4[3] = Mutable;
    if (Mutable)
    {
      v8 = 0;
    }

    else
    {
      v8 = -6729;
    }

    if (!Mutable)
    {
      v4 = 0;
    }

    v15 = v8;
    v9 = *(v13 + 6);
    if (v9)
    {
      if (Mutable)
      {
        os_release(v4);
        v9 = *(v13 + 6);
      }

      goto LABEL_19;
    }
  }

  else
  {
    v15 = -6728;
    v9 = *(v13 + 6);
    if (v9)
    {
      goto LABEL_19;
    }

    v4 = 0;
  }

  block[5] = _NSConcreteStackBlock;
  block[6] = 0x40000000;
  block[7] = ___mdns_dso_client_session_add_nw_endpoints_block_invoke;
  block[8] = &unk_1001529C0;
  block[9] = &v12;
  block[10] = v4;
  nw_array_apply();
  *(a1 + 168) = v4;
  *(a1 + 214) = 3;
  os_retain(a1);
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___mdns_dso_client_session_add_nw_endpoints_block_invoke_2;
  block[3] = &__block_descriptor_tmp_13_6122;
  block[4] = a1;
  dispatch_async(_mdns_dso_session_queue_s_queue, block);
  v9 = 0;
  *(v13 + 6) = 0;
LABEL_19:
  _Block_object_dispose(&v12, 8);
  return v9;
}

void ___mdns_dso_client_session_start_srv_resolution_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2)
  {
    if (!a3)
    {
      v8 = 4294960569;
LABEL_16:
      _mdns_dso_session_handle_failure(*(a1 + 32), v8, 1, 0);
      return;
    }

    v5 = *(a1 + 32);
    if (*(v5 + 214) == 2)
    {
      srv_weighted_variant = nw_resolver_create_srv_weighted_variant();
      if (srv_weighted_variant)
      {
        v7 = srv_weighted_variant;
        v8 = _mdns_dso_client_session_add_nw_endpoints(v5, srv_weighted_variant);
        if (_mdns_dso_session_log_s_once != -1)
        {
          dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
        }

        v9 = _mdns_dso_session_log_s_log;
        if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v5 + 40);
          v12 = 134218242;
          v13 = v10;
          v14 = 2112;
          v15 = a3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DSO%llu] Start SRV resolution -> SRV resolution finished -- endpoints: %@", &v12, 0x16u);
        }

        nw_release(v7);
      }

      else
      {
        v8 = 4294960567;
      }
    }

    else
    {
      v8 = 4294960587;
    }

    nw_resolver_cancel();
    v11 = *(v5 + 144);
    if (v11)
    {
      nw_release(v11);
      *(v5 + 144) = 0;
    }

    if (v8)
    {
      goto LABEL_16;
    }
  }
}

BOOL ___mdns_dso_client_session_add_nw_endpoints_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = _os_object_alloc();
  if (v6)
  {
    v7 = v6;
    v8 = &_mdns_dso_server_endpoint_kind;
    *(v6 + 16) = &_mdns_dso_server_endpoint_kind;
    do
    {
      v9 = v8[2];
      if (v9)
      {
        v9(v7);
      }

      v8 = *v8;
    }

    while (v8);
    v7[3] = nw_retain(a3);
    CFArrayAppendValue(*(v5 + 24), v7);
    os_release(v7);
    v10 = 0;
  }

  else
  {
    v10 = -6728;
  }

  *(*(*(a1 + 32) + 8) + 24) = v10;
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void ___mdns_dso_client_session_add_nw_endpoints_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[214] == 3)
  {
    _mdns_dso_client_session_connect_or_delay_reconnecting(v2);
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

void _mdns_dso_client_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    os_release(v2);
    *(a1 + 136) = 0;
  }

  if (*(a1 + 144))
  {
    nw_resolver_cancel();
    v3 = *(a1 + 144);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 144) = 0;
    }
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 152) = 0;
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    os_release(v6);
    *(a1 + 168) = 0;
  }

  v7 = *(a1 + 176);
  if (v7)
  {
    os_release(v7);
    *(a1 + 176) = 0;
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 184));
    dispatch_release(v8);
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 192);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 192));
    dispatch_release(v9);
    *(a1 + 192) = 0;
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    _Block_release(v10);
    *(a1 + 200) = 0;
  }
}

int32x2_t _mdns_dso_client_session_init(int32x2_t *a1)
{
  result = vdup_n_s32(0x3A98u);
  a1[16] = result;
  a1[26].i8[6] = 1;
  return result;
}

void __mdns_dso_session_add_activity_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 16) + 104))())
  {
    v2 = *(a1 + 32);
    ++*(v2 + 104);
    _mdns_dso_session_stop_inactivity_timer(v2);
    v3 = *(a1 + 32);

    os_release(v3);
  }
}

void __mdns_dso_session_remove_activity_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 16) + 104))())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 104);
    if (v3)
    {
      *(v2 + 104) = v3 - 1;
      if ((*(*(v2 + 16) + 104))(v2))
      {
        if (!*(v2 + 104))
        {
          _mdns_dso_session_schedule_inactivity_timer_ex(*(a1 + 32), 0);
        }
      }
    }

    v4 = *(a1 + 32);

    os_release(v4);
  }
}

void mdns_dso_session_send(void *a1, NSObject *a2)
{
  if ((*(a1[2] + 104))())
  {
    os_retain(a1);
    dispatch_retain(a2);
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = __mdns_dso_session_send_block_invoke;
    v4[3] = &__block_descriptor_tmp_5_6132;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_async(_mdns_dso_session_queue_s_queue, v4);
  }
}

void __mdns_dso_session_send_block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 16) + 104))();
  v3 = *(a1 + 32);
  if (v2)
  {
    _mdns_dso_session_send_data_immediately(v3, *(a1 + 40), 1, 0);
    v3 = *(a1 + 32);
    v4 = *(v3[2] + 144);
    if (v4)
    {
      v5 = v4();
      v3 = *(a1 + 32);
      if (v5)
      {
        _mdns_dso_session_handle_failure(v3, v5, 1, 1);
        v3 = *(a1 + 32);
      }
    }
  }

  os_release(v3);
  v6 = *(a1 + 40);
  if (v6)
  {

    dispatch_release(v6);
  }
}

void mdns_dso_session_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_dso_session_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_dso_session_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_7_6134;
  block[4] = a1;
  dispatch_async(_mdns_dso_session_queue_s_queue, block);
}

void __mdns_dso_session_invalidate_block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 16) + 184))())
  {
    _mdns_dso_session_close_internal(*(a1 + 32), 0, 0, 1, 0, 0);
    v2 = *(a1 + 32);
    v3 = v2[7];
    if (v3)
    {
      _Block_release(v3);
      v2[7] = 0;
    }

    v4 = v2[8];
    if (v4)
    {
      _Block_release(v4);
      v2[8] = 0;
    }

    (*(v2[2] + 192))(v2);
  }

  v5 = *(*(a1 + 32) + 24);
  monotonic_time_ns = mdns_get_monotonic_time_ns();
  v7 = (monotonic_time_ns - v5) / 0xF4240;
  if (__ROR8__(0x790FB65668C26139 * v7, 6) <= 0x10C6F7A0B5EDuLL)
  {
    v8 = (monotonic_time_ns - v5) / 0xF4240;
  }

  else
  {
    v8 = v7 + 1;
  }

  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
  }

  v9 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 32) + 40);
    v11 = 134218496;
    v12 = v10;
    v13 = 2048;
    v14 = v8 / 1000;
    v15 = 2048;
    v16 = v8 % 1000;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DSO%llu] DSO session invalidated -- duration: %{mdns:time_duration}lld %lldms", &v11, 0x20u);
  }

  os_release(*(a1 + 32));
}

uint64_t dnssec_objs_sort(uint64_t result, unint64_t a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    v3 = result;
    v4 = 0;
    v5 = result;
    do
    {
      v6 = v4++;
      v7 = *(v3 + 8 * v4);
      result = ref_count_obj_compare(v7, *(v3 + 8 * v6), 0);
      v8 = v4;
      if (result == -1)
      {
        v9 = v5;
        v8 = v4;
        do
        {
          v9[1] = *v9;
          if (!--v8)
          {
            break;
          }

          v10 = *--v9;
          result = ref_count_obj_compare(v7, v10, 0);
        }

        while (result == -1);
      }

      *(v3 + 8 * v8) = v7;
      v5 += 8;
    }

    while (v6 != v2);
  }

  return result;
}

id _system_util_log()
{
  if (_system_util_log_s_once != -1)
  {
    dispatch_once(&_system_util_log_s_once, &__block_literal_global_28_6182);
  }

  v1 = _system_util_log_s_log;

  return v1;
}

void ___system_util_log_block_invoke(id a1)
{
  _system_util_log_s_log = os_log_create("com.apple.mDNSResponder", "system_util");

  _objc_release_x1();
}

uint64_t __util_device_media_access_unicast_addr_enumerate_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = a4;
  if (a2 == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 16;
  }

  v7 = [NSMutableData dataWithLength:v6 + 4];
  [v7 appendBytes:a3 length:v6];
  [v7 appendBytes:&v10 length:4];
  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v7];
    v8 = (*(*(a1 + 40) + 16))();
  }

  return v8;
}

id util_is_car_play(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSString stringWithUTF8String:a1];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v4 requestParameters];
    [v5 setQualityOfService:25];

    [v4 activate];
    v6 = [v4 interfaceName];
    v7 = [v6 isEqualToString:v3];

    if (v7)
    {
      v8 = [v4 currentKnownNetworkProfile];
      v9 = [v8 isCarPlay];
    }

    else
    {
      v9 = 0;
    }

    [v4 invalidate];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v9;
}

id util_is_managed_network(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSString stringWithUTF8String:a1];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v4 requestParameters];
    [v5 setQualityOfService:25];

    [v4 activate];
    v6 = [v4 interfaceName];
    v7 = [v6 isEqualToString:v3];

    if (v7)
    {
      v8 = [v4 currentKnownNetworkProfile];
      v9 = [v8 isBlueAtlasNetwork];
    }

    else
    {
      v9 = 0;
    }

    [v4 invalidate];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v9;
}

void __util_managed_network_change_handler_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (util_managed_network_change_handler_s_interface)
  {
    [util_managed_network_change_handler_s_interface stopMonitoringEventType:30];
  }

  else
  {
    v3 = objc_opt_new();
    v4 = util_managed_network_change_handler_s_interface;
    util_managed_network_change_handler_s_interface = v3;

    v5 = [util_managed_network_change_handler_s_interface requestParameters];
    [v5 setQualityOfService:25];

    [util_managed_network_change_handler_s_interface activate];
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = util_managed_network_change_handler_s_handler;
  util_managed_network_change_handler_s_handler = v6;

  if (util_managed_network_change_handler_s_handler)
  {
    objc_initWeak(&location, util_managed_network_change_handler_s_interface);
    v8 = util_managed_network_change_handler_s_interface;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __util_managed_network_change_handler_block_invoke_2;
    v16[3] = &unk_100152D18;
    objc_copyWeak(&v17, &location);
    [v8 setEventHandler:v16];
    v15 = 0;
    v9 = [util_managed_network_change_handler_s_interface startMonitoringEventType:30 error:&v15];
    v10 = v15;
    v11 = _system_util_log();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Registered for known network privacy risk changes", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to register for known network changes with error %@", buf, 0xCu);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [util_managed_network_change_handler_s_interface setEventHandler:0];
    [util_managed_network_change_handler_s_interface invalidate];
    v13 = util_managed_network_change_handler_s_interface;
    util_managed_network_change_handler_s_interface = 0;

    v14 = _system_util_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Un-registering for known network privacy risk changes", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000EEE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __util_managed_network_change_handler_block_invoke_2(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __util_managed_network_change_handler_block_invoke_3;
  block[3] = &unk_100152CF0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void __util_managed_network_change_handler_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 currentKnownNetworkProfile];
    v6 = [v5 isBlueAtlasNetwork];

    v7 = [v4 currentKnownNetworkProfile];
    WeakRetained = [v7 shortSSID];
  }

  else
  {
    v6 = 0;
  }

  if (util_managed_network_change_handler_s_handler)
  {
    v8 = util_managed_network_change_handler_s_last_blue_atlas_id == WeakRetained ? 0 : v6;
    if ((v8 & 1) != 0 || (v6 & 1) == 0 && (util_managed_network_change_handler_s_last_blue_atlas_id || !WeakRetained))
    {
      v9 = _system_util_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11[0] = 67109120;
        v11[1] = v6;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Updating privacy risk status %d", v11, 8u);
      }

      (*(util_managed_network_change_handler_s_handler + 16))();
    }
  }

  if (v6)
  {
    v10 = WeakRetained;
  }

  else
  {
    v10 = 0;
  }

  util_managed_network_change_handler_s_last_blue_atlas_id = v10;
  objc_autoreleasePoolPop(v2);
}

int *mdns_socket_forget(_DWORD *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        result = __error();
      }
    }

    *a1 = -1;
  }

  return result;
}

void _dnssec_obj_validation_manager_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    ref_count_obj_release(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    ref_count_obj_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    ref_count_obj_release(v4);
    a1[5] = 0;
  }

  _dnssec_obj_validation_manager_reset_validation_key_requestor(a1);
  _dnssec_obj_validation_manager_reset_insecure_validation(a1);
  v5 = a1[16];
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(a1[15] + 8 * i);
      if (v7)
      {
        ref_count_obj_release(v7);
        v5 = a1[16];
        *(a1[15] + 8 * i) = 0;
      }
    }
  }

  v8 = a1[15];
  if (v8)
  {
    free(v8);
    a1[15] = 0;
  }
}

void _dnssec_obj_validation_manager_reset_validation_key_requestor(uint64_t a1)
{
  *(a1 + 72) = 0;
  v2 = *(a1 + 56);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    v6 = *(a1 + 24);
    v7 = bswap32(*(v2 + 340)) >> 16;
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Canceling the existing validation key requestor", v10, 0xEu);
  }

LABEL_11:
  mDNS_StopQuery(mDNSStorage, *(a1 + 56));
  v8 = *(a1 + 56);
  if (v8)
  {
    free(v8);
    *(a1 + 56) = 0;
  }

LABEL_13:
  v9 = *(a1 + 64);
  if (v9)
  {
    ref_count_obj_release(v9);
    *(a1 + 64) = 0;
  }
}

void _dnssec_obj_validation_manager_reset_insecure_validation(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    v6 = *(a1 + 24);
    v7 = bswap32(*(v2 + 340)) >> 16;
    v8 = *(a1 + 112);
    v9 = *(a1 + 88) != 0;
    v11[0] = 67109888;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1026;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Canceling the existing insecure validation - state: %{public, mdns:dnssec_inval_state}u, validated: %{mdns:yesno}d", v11, 0x1Au);
  }

LABEL_11:
  mDNS_StopQuery(mDNSStorage, *(a1 + 80));
  v10 = *(a1 + 80);
  if (v10)
  {
    free(v10);
    *(a1 + 80) = 0;
  }

LABEL_13:
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  _dnssec_obj_validation_manager_stop_negative_ds_query(a1);
}

void _dnssec_obj_validation_manager_stop_negative_ds_query(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 24);
    v6 = bswap32(*(v2 + 340)) >> 16;
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = *(v7 + 24);
      v7 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  v3 = mDNSLogCategory_DNSSEC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 24);
    v6 = bswap32(*(v2 + 340)) >> 16;
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = *(v7 + 24);
      v7 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

LABEL_15:
    v12[0] = 67110147;
    v12[1] = v5;
    v13 = 1024;
    v14 = v6;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 1040;
    v18 = v8;
    v19 = 2101;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Q%u->SubQ%u] Stop DS denial look up question - DS denial lookup name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", v12, 0x28u);
  }

LABEL_16:
  mDNS_StopQuery(mDNSStorage, *(a1 + 96));
  v10 = *(a1 + 96);
  if (v10)
  {
    free(v10);
    *(a1 + 96) = 0;
  }

LABEL_18:
  v11 = *(a1 + 104);
  if (v11)
  {
    ref_count_obj_release(v11);
    *(a1 + 104) = 0;
  }
}

BOOL dnssec_obj_validation_manager_contains_possibly_unsigned_rrset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = a2;
    if (a2)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v2 = a1;
  if (a2)
  {
    return 0;
  }

LABEL_5:
  v3 = *(v2 + 40);
  if (v3 != 4 && v3 != 2)
  {
    return 0;
  }

  if (!*(v2 + 32))
  {
    v19 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v19 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v20 = 136447234;
    v21 = "dnssec_obj_rrset_get_rr_count(me) > 0";
    v22 = 2082;
    *v23 = "";
    *&v23[8] = 2082;
    *&v23[10] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_rrset.c";
    *&v23[18] = 1024;
    v24 = 361;
    v25 = 2048;
    v26 = 0;
    v16 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
    v17 = v19;
    v18 = 48;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v16, &v20, v18);
    return 0;
  }

  v5 = *(v2 + 24);
  if (**v5 != 240)
  {
    v8 = 0;
    do
    {
      while (1)
      {
        v9 = *(*v5 + 4);
        if (v9 != 43)
        {
          if (v9 == 46)
          {
            return 0;
          }

          if (v9 != 48)
          {
            break;
          }
        }

        v5 = *(v5 + 1);
        v8 = 1;
        if (!v5)
        {
          goto LABEL_23;
        }
      }

      v5 = *(v5 + 1);
    }

    while (v5);
    if ((v8 & 1) == 0)
    {
      return 1;
    }

LABEL_23:
    v10 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v11 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      v12 = *(v2 + 16);
      if (v12)
      {
        v13 = *(v12 + 24);
        v14 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      v15 = *(v2 + 16);
      if (v15)
      {
        v13 = *(v15 + 24);
        v14 = *(v15 + 16);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    v20 = 141558787;
    v21 = 1752392040;
    v22 = 1040;
    *v23 = v13;
    *&v23[4] = 2101;
    *&v23[6] = v14;
    *&v23[14] = 1024;
    *&v23[16] = dnssec_obj_rrset_get_rr_type(v2);
    v16 = "Received positive DNSKEY or DS RRSet without RRSIG, malformed - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d.";
    v17 = v10;
    v18 = 34;
    goto LABEL_39;
  }

  v6 = *(*v5 + 56);
  return !v6 || *(v6 + 32) || (*(v6 + 40) & 1) != 0 || *(v6 + 48) == 0;
}

_DWORD *_dnssec_obj_validation_manager_start_sub_query(uint64_t a1, __int16 a2, __int16 a3, int a4, uint64_t a5, uint64_t a6, int *a7)
{
  result = malloc_type_calloc(1uLL, 0x2B8uLL, 0xA61CBE18uLL);
  if (result)
  {
    v14 = result;
    result[53] = -1;
    *(result + 17) = *(*(a5 + 24) + 136);
    result[81] = a4;
    __memcpy_chk();
    *(v14 + 172) = a2;
    *(v14 + 171) = a3;
    *(v14 + 656) = (a4 & 0x200000) != 0;
    *(v14 + 635) = (a4 & 0x1000) != 0;
    v14[61] = getpid();
    *(v14 + 19) = a6;
    *(v14 + 22) = a5;
    started = mDNS_StartQuery(mDNSStorage, v14);
    if (a7)
    {
      if (started)
      {
        v16 = -6736;
      }

      else
      {
        v16 = 0;
      }

      *a7 = v16;
    }

    if (started)
    {
      free(v14);
      return 0;
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void dnssec_obj_validation_manager_start_insecure_validation(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0xFFFFE5C200000000;
  _dnssec_obj_validation_manager_reset_validation_key_requestor(a1);
  _dnssec_obj_validation_manager_reset_insecure_validation(a1);
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = *(a1 + 40);
  }

  v26 = 0;
  if (*(a1 + 80))
  {
    return;
  }

  if (*(a1 + 112) || !v4 || ((v5 = *(v4 + 40), v5 != 2) ? (v6 = v5 == 4) : (v6 = 1), !v6))
  {
    v17 = 0;
    v18 = -6709;
LABEL_27:
    v26 = v18;
    goto LABEL_28;
  }

  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_39;
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    goto LABEL_39;
  }

  v11 = -1;
  v12 = *(v7 + 16);
  do
  {
    v13 = v11;
    v14 = v12 + v9;
    v15 = *(v14 + 1);
    v12 = v14 + 1;
    v9 = v15;
    ++v11;
  }

  while (v15);
  if (*(v10 + 342) == 43 && v13 + 2 <= 1)
  {
LABEL_39:
    v17 = 0;
    v18 = -6736;
    goto LABEL_27;
  }

  v17 = dnssec_obj_domain_name_copy_parent_domain(v8, v11, &v26);
  v18 = v26;
  if (v26)
  {
    goto LABEL_28;
  }

  started = _dnssec_obj_validation_manager_start_negative_ds_query(a1, v17, a2);
  v26 = started;
  if (started)
  {
    v18 = started;
LABEL_28:
    _dnssec_obj_validation_manager_fail_insecure_validation(a1, v18);
    if (!v17)
    {
      return;
    }

    goto LABEL_37;
  }

  v20 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v20 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }
  }

  v21 = *(a1 + 24);
  v22 = bswap32(*(*(a1 + 96) + 340)) >> 16;
  v24 = *(v7 + 16);
  v23 = *(v7 + 24);
  *buf = 67110147;
  v28 = v21;
  v29 = 1024;
  v30 = v22;
  v31 = 2160;
  v32 = 1752392040;
  v33 = 1040;
  v34 = v23;
  v35 = 2101;
  v36 = v24;
  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Start insecure validation - unsigned domain: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x28u);
LABEL_32:
  *(a1 + 112) = 1;
  if (v17)
  {
    ++*v17;
  }

  v25 = *(a1 + 104);
  if (v25)
  {
    ref_count_obj_release(v25);
  }

  *(a1 + 104) = v17;
  v26 = 0;
  if (v17)
  {
LABEL_37:
    ref_count_obj_release(v17);
  }
}

uint64_t _dnssec_obj_validation_manager_start_negative_ds_query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      return -6709;
    }
  }

  if (*(a1 + 96))
  {
    return -6709;
  }

  rr_class = dnssec_obj_rrset_get_rr_class(v6);
  started = _dnssec_obj_validation_manager_start_sub_query(a2, rr_class, 43, 4096, a3, _query_record_with_insecure_validation_reply, &v16);
  *(a1 + 96) = started;
  if (!v16)
  {
    v9 = started;
    v10 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 24);
        v12 = bswap32(*(v9 + 170)) >> 16;
        if (a2)
        {
          v13 = *(a2 + 24);
          v14 = *(a2 + 16);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 24);
        v12 = bswap32(*(v9 + 170)) >> 16;
        if (a2)
        {
          v13 = *(a2 + 24);
          v14 = *(a2 + 16);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

LABEL_15:
        *buf = 67110147;
        v18 = v11;
        v19 = 1024;
        v20 = v12;
        v21 = 2160;
        v22 = 1752392040;
        v23 = 1040;
        v24 = v13;
        v25 = 2101;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Searching for DS denial - q_name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x28u);
      }
    }
  }

  return v16;
}

void _dnssec_obj_validation_manager_fail_insecure_validation(uint64_t a1, int a2)
{
  v4 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        v7 = *(v6 + 24);
        v6 = *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v9 = *(a1 + 96);
      if (v9)
      {
        LODWORD(v9) = bswap32(*(v9 + 340)) >> 16;
      }

      v10 = *(a1 + 24);
      v11 = *(a1 + 112);
      v12 = *(a1 + 80);
      if (v12)
      {
        LODWORD(v12) = bswap32(*(v12 + 340)) >> 16;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v4 = mDNSLogCategory_DNSSEC_redacted;
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        v7 = *(v6 + 24);
        v6 = *(v6 + 16);
      }

      else
      {
        v7 = 0;
      }

      v9 = *(a1 + 96);
      if (v9)
      {
        LODWORD(v9) = bswap32(*(v9 + 340)) >> 16;
      }

      v10 = *(a1 + 24);
      v11 = *(a1 + 112);
      v12 = *(a1 + 80);
      if (v12)
      {
        LODWORD(v12) = bswap32(*(v12 + 340)) >> 16;
      }

LABEL_23:
      v13[0] = 67110659;
      v13[1] = v10;
      v14 = 1026;
      v15 = v11;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 1040;
      v19 = v7;
      v20 = 2101;
      v21 = v6;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Q%u] Insecure validation failed - state: %{public, mdns:dnssec_inval_state}u, DS denial lookup name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, DS denial lookup q: Q%d, secure DS denial q: Q%d", v13, 0x34u);
    }
  }

  _dnssec_obj_validation_manager_reset_insecure_validation(a1);
  *(a1 + 112) = 3;
  *(a1 + 48) = 3;
  *(a1 + 52) = a2;
}

uint64_t _update_validated_cache_with_rrset(uint64_t a1, int a2)
{
  v111 = 0;
  v2 = *(a1 + 44);
  v110 = 0;
  v108 = dnssec_obj_rrset_copy_rrs(a1, &v110, &v111);
  if (v111)
  {
    goto LABEL_182;
  }

  v3 = v110;
  if (!v110)
  {
    goto LABEL_200;
  }

  cache_record = resource_record_get_cache_record(*(*v108 + 56));
  if (!cache_record)
  {
    v93 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
LABEL_199:
        *buf = 136447234;
        *v113 = "cr != NULL";
        *&v113[8] = 2082;
        *&v113[10] = "";
        *&v113[18] = 2082;
        *&v113[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_mdns_core.c";
        *&v113[28] = 1024;
        *&v113[30] = 314;
        *&v113[34] = 2048;
        *&v113[36] = 0;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      }
    }

    else
    {
      v93 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_199;
      }
    }

LABEL_200:
    v111 = -6736;
    goto LABEL_182;
  }

  v5 = *(cache_record + 96);
  if (!v5)
  {
    goto LABEL_200;
  }

  v106 = CacheGroupForName(mDNSStorage, *(v5 + 200), (v5 + 376));
  if (!v106)
  {
    goto LABEL_200;
  }

  v6 = *v108;
  v7 = resource_record_get_cache_record(*(*v108 + 56));
  if (v7)
  {
    if ((*(v7 + 80) + 1000 * a2) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v7 + 80) + 1000 * a2;
    }

    v9 = v106[2];
    if (v9)
    {
      while (1)
      {
        v10 = *(v6 + 48);
        if (v10)
        {
          v10 = *(v10 + 24);
        }

        v11 = *(v9 + 56);
        if (v11)
        {
          v11 = *(v11 + 24);
        }

        if (v10 == v11)
        {
          v12 = *(v9 + 64);
          if (v12)
          {
            if (*(v12 + 32) == 1 && identical_dnssec_validated_same_name_resource_record(v6, v9 + 8))
            {
              break;
            }
          }
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_27;
        }
      }

      if (*(v9 + 109))
      {
        v13 = dword_10016D258 + 939524096;
      }

      else
      {
        v13 = *(v9 + 80) + 1000 * *(v9 + 16);
      }

      if (v13 <= 1)
      {
        v13 = 1;
      }

      if ((v8 - v13) <= 999)
      {
        v111 = 0;
        goto LABEL_182;
      }
    }

    goto LABEL_27;
  }

  v94 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v94 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_27;
    }
  }

  *buf = 136447234;
  *v113 = "rr_cr != NULL";
  *&v113[8] = 2082;
  *&v113[10] = "";
  *&v113[18] = 2082;
  *&v113[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_validation_manager.c";
  *&v113[28] = 1024;
  *&v113[30] = 1759;
  *&v113[34] = 2048;
  *&v113[36] = 0;
  _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
LABEL_27:
  v14 = CacheGroupForName(mDNSStorage, *(v5 + 200), (v5 + 376));
  if (v14 && (v15 = v14[2]) != 0)
  {
    v103 = 0;
    do
    {
      v16 = *(v15 + 64);
      if (v16 && *(v16 + 32) == 1 && SameNameRecordAnswersQuestion((v15 + 8), 0, v5))
      {
        *(v15 + 80) = dword_10016D258 + ~(1000 * *(v15 + 16));
        *(v15 + 108) = 4;
        SetNextCacheCheckTimeForRecord(mDNSStorage, v15);
        ++v103;
      }

      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v103 = 0;
  }

  bzero(v129, 0x800uLL);
  if (v3 > 0x100)
  {
    v111 = -6751;
    v95 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_182;
      }
    }

    else
    {
      v95 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_182;
      }
    }

    v96 = bswap32(*(v5 + 340));
    *buf = 67109632;
    *v113 = HIWORD(v96);
    *&v113[4] = 2048;
    *&v113[6] = v3;
    *&v113[14] = 2048;
    *&v113[16] = 256;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_FAULT, "[Q%u] RRSet size too large, unable to process - rr_count: %zu, size limit: %zu", buf, 0x1Cu);
    goto LABEL_182;
  }

  v98 = v5;
  v99 = v5 + 376;
  v17 = 0;
  v102 = 0;
  v109 = 0;
  v18 = 0;
  if (v2 == 1)
  {
    v19 = 4;
  }

  else
  {
    v19 = 8;
  }

  v101 = v19 | 0x10;
  if (v3 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v3;
  }

  v105 = v20;
  v104 = v19;
  while (1)
  {
    v21 = v3;
    v22 = v108[v18];
    v23 = resource_record_get_cache_record(*(v22 + 7));
    if (!v23)
    {
      break;
    }

    v24 = v106[2];
    if (v24)
    {
      v25 = v23;
      while (1)
      {
        v26 = *(v22 + 6);
        if (v26)
        {
          v26 = *(v26 + 24);
        }

        v27 = *(v24 + 56);
        if (v27)
        {
          v27 = *(v27 + 24);
        }

        if (v26 == v27)
        {
          v28 = *(v24 + 64);
          if (v28)
          {
            if (*(v28 + 32) == 1 && identical_dnssec_validated_same_name_resource_record(v22, v24 + 8))
            {
              break;
            }
          }
        }

        v24 = *v24;
        if (!v24)
        {
          goto LABEL_68;
        }
      }

      v29 = *(v24 + 16);
      *(v24 + 80) = *(v25 + 80);
      *(v24 + 16) = a2;
      *(v24 + 108) = 0;
      SetNextCacheCheckTimeForRecord(mDNSStorage, v24);
      v30 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(v25 + 40);
          v100 = v29;
          if (v31)
          {
            v66 = *(v25 + 40);
            while (1)
            {
              if (!v66 || (v67 = *v66, v67 > 0x3F))
              {
LABEL_129:
                v34 = 257;
                goto LABEL_134;
              }

              if (!*v66)
              {
                break;
              }

              v66 += v67 + 1;
              if (&v66[-v31] >= 256)
              {
                goto LABEL_129;
              }
            }

            v34 = (v66 - v31 + 1);
          }

          else
          {
            v34 = 0;
          }

LABEL_134:
          v68 = *(v25 + 12);
          actual_ttl = resource_record_get_actual_ttl(mDNSStorage, v24 + 8);
          *buf = 68158978;
          *v113 = v34;
          *&v113[4] = 2098;
          *&v113[6] = v31;
          *&v113[14] = 1024;
          *&v113[16] = v68;
          *&v113[20] = 1024;
          *&v113[22] = v100;
          *&v113[26] = 1024;
          *&v113[28] = a2;
          *&v113[32] = 1024;
          *&v113[34] = actual_ttl;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Rescuing DNSSEC validated record - name: %{public, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d, old original ttl: %u, new original ttl: %u, new actual ttl: %u", buf, 0x2Au);
        }
      }

      else
      {
        v30 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(v25 + 40);
          v100 = v29;
          if (v31)
          {
            v32 = *(v25 + 40);
            while (1)
            {
              if (!v32 || (v33 = *v32, v33 > 0x3F))
              {
LABEL_67:
                v34 = 257;
                goto LABEL_134;
              }

              if (!*v32)
              {
                break;
              }

              v32 += v33 + 1;
              if (&v32[-v31] >= 256)
              {
                goto LABEL_67;
              }
            }

            v34 = (v32 - v31 + 1);
          }

          else
          {
            v34 = 0;
          }

          goto LABEL_134;
        }
      }

      if (*(v24 + 109))
      {
        v70 = dword_10016D258;
        v71 = dword_10016D258 + 939524096;
      }

      else
      {
        v71 = *(v24 + 80) + 1000 * *(v24 + 16);
        v70 = dword_10016D258;
      }

      v3 = v21;
      if (v71 - v70 > 0)
      {
LABEL_139:
        ++v102;
        --v103;
        goto LABEL_102;
      }

      v72 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_139;
        }
      }

      else
      {
        v72 = mDNSLogCategory_DNSSEC_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_139;
        }
      }

      *buf = 136447234;
      *v113 = "RRExpireTime(cr) - mDNSStorage.timenow > 0";
      *&v113[8] = 2082;
      *&v113[10] = "";
      *&v113[18] = 2082;
      *&v113[20] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_validation_manager.c";
      *&v113[28] = 1024;
      *&v113[30] = 1826;
      *&v113[34] = 2048;
      *&v113[36] = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
      goto LABEL_139;
    }

LABEL_68:
    if (*(v22 + 7))
    {
      v35 = -6705;
    }

    else
    {
      v35 = -6709;
    }

    if (*(v22 + 7))
    {
      v36 = (v2 - 3) >= 0xFFFFFFFE;
    }

    else
    {
      v36 = 0;
    }

    if (v36)
    {
      v37 = *(v22 + 4);
      v38 = CacheGroupForName(mDNSStorage, v37, *(v22 + 4));
      v39 = *(*(v22 + 7) + 16);
      if (v39)
      {
        v40 = v38;
        if (dword_10016D258 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = dword_10016D258;
        }

        v42 = *(&dword_10016D258 + &loc_100009410);
        v43 = v41;
        if (v42)
        {
          os_release(v42);
          v43 = dword_10016D258;
          if (dword_10016D258 <= 1)
          {
            v43 = 1;
          }
        }

        xmmword_1001766F0 = 0u;
        unk_100176700 = 0u;
        xmmword_1001766D0 = 0u;
        unk_1001766E0 = 0u;
        xmmword_1001766B0 = 0u;
        unk_1001766C0 = 0u;
        xmmword_100176690 = 0u;
        *&qword_1001766A0 = 0u;
        xmmword_100176670 = 0u;
        unk_100176680 = 0u;
        unk_100176650 = 0u;
        *&qword_100176660 = 0u;
        xmmword_100176630 = 0u;
        xmmword_100176640 = 0u;
        v44 = v39[1];
        xmmword_100176630 = *v39;
        v45 = v39[2];
        v46 = v39[3];
        v47 = v39[5];
        xmmword_100176670 = v39[4];
        unk_100176680 = v47;
        v48 = v39[8];
        v49 = v39[9];
        v50 = v39[7];
        xmmword_100176690 = v39[6];
        *&qword_1001766A0 = v50;
        unk_100176650 = v45;
        *&qword_100176660 = v46;
        xmmword_100176640 = v44;
        xmmword_1001766B0 = v48;
        unk_1001766C0 = v49;
        v51 = v39[10];
        v52 = v39[11];
        v53 = v39[13];
        xmmword_1001766F0 = v39[12];
        unk_100176700 = v53;
        xmmword_1001766D0 = v51;
        unk_1001766E0 = v52;
        *&xmmword_100176630 = 0;
        *(&xmmword_100176670 + 1) = 0;
        dword_100176684 = v43;
        *&xmmword_100176690 = 0;
        BYTE12(xmmword_100176690) = 0;
        qword_1001766A0 = 0;
        unk_1001766A8 = 0;
        LODWORD(xmmword_100176640) = a2;
        if (*(&v46 + 1))
        {
          os_retain(*(&v46 + 1));
        }

        v54 = v104;
        if (*v22 == 240)
        {
          v55 = *(v22 + 7);
          v54 = v104;
          if (v55)
          {
            v54 = v104;
            if (!*(v55 + 32))
            {
              v54 = v104;
              if ((*(v55 + 40) & 1) == 0)
              {
                v56 = *(v55 + 48);
                v54 = v104;
                if (v56)
                {
                  if (*(v56 + 107))
                  {
                    v54 = v101;
                  }

                  else
                  {
                    v54 = v104;
                  }
                }
              }
            }
          }
        }

        v57 = v37 % 0x1F3;
        NewCacheEntry = CreateNewCacheEntryEx(mDNSStorage, v37 % 0x1F3, v40, v41, 1, v39 + 132, v54);
        v24 = NewCacheEntry;
        if (NewCacheEntry)
        {
          v59 = *(NewCacheEntry + 84);
          v3 = v21;
          if (*(&mDNSStorage[533] + v57) - v59 >= 1)
          {
            *(&mDNSStorage[533] + v57) = v59;
          }

          v35 = 0;
          if (dword_10016D270 - v59 >= 1)
          {
            dword_10016D270 = v59;
          }

          goto LABEL_98;
        }

        v35 = -6728;
      }

      else
      {
        v24 = 0;
        v35 = -6709;
      }
    }

    else
    {
      v24 = 0;
    }

    v3 = v21;
LABEL_98:
    v111 = v35;
    if (qword_100176668)
    {
      os_release(qword_100176668);
      v35 = v111;
    }

    xmmword_1001766F0 = 0u;
    unk_100176700 = 0u;
    xmmword_1001766D0 = 0u;
    unk_1001766E0 = 0u;
    xmmword_1001766B0 = 0u;
    unk_1001766C0 = 0u;
    xmmword_100176690 = 0u;
    *&qword_1001766A0 = 0u;
    xmmword_100176670 = 0u;
    unk_100176680 = 0u;
    unk_100176650 = 0u;
    *&qword_100176660 = 0u;
    xmmword_100176630 = 0u;
    xmmword_100176640 = 0u;
    if (v35)
    {
      goto LABEL_180;
    }

    ++v109;
LABEL_102:
    v60 = *(v24 + 64);
    if (!v60)
    {
      goto LABEL_180;
    }

    *(v60 + 24) = v3;
    v129[v18] = v24 + 8;
    if (*(v24 + 109))
    {
      v61 = dword_10016D258 + 939524096;
    }

    else
    {
      v61 = *(v24 + 80) + 1000 * *(v24 + 16);
    }

    if (v61 <= 1)
    {
      v62 = 1;
    }

    else
    {
      v62 = v61;
    }

    if (v17)
    {
      v63 = v17 - v62;
      if (v17 != v62)
      {
        v64 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_117;
          }
        }

        else
        {
          v64 = mDNSLogCategory_DNSSEC_redacted;
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
          {
LABEL_117:
            *buf = 67109120;
            *v113 = v63 / 1000;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_FAULT, "DNSSEC validated records in the same RRSet have different expiration time - difference in second: %d", buf, 8u);
          }
        }

        if (v63 > 0)
        {
          v17 = v62;
        }
      }
    }

    else
    {
      v17 = v62;
    }

    ++v18;
    v65 = v105;
    if (v18 == v105)
    {
      if (v17 - dword_10016D258 >= 1)
      {
        v73 = (v17 - dword_10016D258) / 0x3E8u;
        if (v103 && !v109)
        {
          v74 = v129;
          do
          {
            v75 = *v74++;
            *(*(v75 + 56) + 36) = 1;
            --v65;
          }

          while (v65);
        }

        v76 = mDNSLogCategory_DNSSEC;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v77 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
        }

        else
        {
          v77 = 1;
        }

        if (v77)
        {
          v78 = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO);
          v79 = v2;
          v80 = v102;
          if (v78)
          {
            v81 = bswap32(*(v98 + 340)) >> 16;
            v82 = v99;
            while (1)
            {
              if (!v82 || (v83 = *v82, v83 > 0x3F))
              {
LABEL_165:
                v84 = 257;
                goto LABEL_175;
              }

              if (!*v82)
              {
                break;
              }

              v82 += v83 + 1;
              if (&v82[-v99] >= 256)
              {
                goto LABEL_165;
              }
            }

            v84 = (v82 - v99 + 1);
LABEL_175:
            v88 = *(v98 + 342);
            v89 = *(*v108 + 4);
            v90 = **v108 != 240;
            *buf = 67112451;
            *v113 = v81;
            *&v113[4] = 2160;
            *&v113[6] = 1752392040;
            *&v113[14] = 1040;
            *&v113[16] = v84;
            *&v113[20] = 2101;
            *&v113[22] = v99;
            *&v113[30] = 1024;
            *&v113[32] = v88;
            *&v113[36] = 1024;
            *&v113[38] = v89;
            *&v113[42] = 1024;
            v114 = a2;
            v115 = 1024;
            v116 = v73;
            v117 = 1024;
            v118 = v90;
            v119 = 1026;
            v120 = v79;
            v121 = 2048;
            v122 = v102;
            v123 = 2048;
            v124 = v109;
            v125 = 2048;
            v126 = v3;
            v127 = 2048;
            v128 = v103;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "[Q%u] Update cache for DNSSEC question - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, rr_type: %{mdns:rrtype}d, new original ttl: %u, actual ttl: %u, %{mdns:pos/neg}d, DNSSEC result: %{public, mdns:dnssec_result}u, rescued: %zu, added: %zu, total: %zu, purged: %zu.", buf, 0x6Eu);
          }
        }

        else
        {
          v76 = mDNSLogCategory_DNSSEC_redacted;
          v85 = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO);
          v79 = v2;
          v80 = v102;
          if (v85)
          {
            v81 = bswap32(*(v98 + 340)) >> 16;
            v86 = v99;
            while (1)
            {
              if (!v86 || (v87 = *v86, v87 > 0x3F))
              {
LABEL_172:
                v84 = 257;
                goto LABEL_175;
              }

              if (!*v86)
              {
                break;
              }

              v86 += v87 + 1;
              if (&v86[-v99] >= 256)
              {
                goto LABEL_172;
              }
            }

            v84 = (v86 - v99 + 1);
            goto LABEL_175;
          }
        }

        if (v80)
        {
          v91 = dword_10016D258;
          if (dword_10016D258 <= 1)
          {
            v91 = 1;
          }

          dword_10016D2B8 = v91;
        }

LABEL_180:
        if (!v17)
        {
          goto LABEL_182;
        }
      }

LABEL_181:
      *(a1 + 60) = 1;
      *(a1 + 52) = v17;
      goto LABEL_182;
    }
  }

  v111 = -6736;
  if (v17)
  {
    goto LABEL_181;
  }

LABEL_182:
  free(v108);
  return v111;
}

void dnssec_obj_validation_manager_remove_validated_cache(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v36 = 0;
    if (*(v2 + 60))
    {
      v35 = 0;
      v3 = dnssec_obj_rrset_copy_rrs(v2, &v35, &v36);
      v4 = v36;
      if (v36)
      {
        v34 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v34 = mDNSLogCategory_DNSSEC_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        *buf = 136447234;
        v38 = "err == 0";
        v39 = 2082;
        *v40 = "";
        *&v40[8] = 2082;
        *&v40[10] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_validation_manager.c";
        *&v40[18] = 1024;
        v41 = 1267;
        v42 = 2048;
        v43 = v4;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
        return;
      }

      v5 = v3;
      v6 = v35;
      if (v35)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = v5[i];
          mDNS_Lock_(mDNSStorage, "_purge_validated_record_from_cache", 1933);
          v9 = *(v8 + 56);
          if (!v9 || *(v9 + 32))
          {
            goto LABEL_38;
          }

          v10 = CacheGroupForName(mDNSStorage, *(v8 + 16), *(v8 + 32)) + 2;
          do
          {
            v10 = *v10;
            if (!v10)
            {
              goto LABEL_38;
            }
          }

          while (!identical_dnssec_validated_same_name_resource_record(v8, (v10 + 1)));
          expiration_time = resource_record_get_expiration_time(*(v8 + 56));
          if (expiration_time)
          {
            if (expiration_time - dword_10016D258 >= 4000)
            {
              v12 = mDNSLogCategory_DNSSEC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
                {
                  v13 = *(v8 + 32);
                  if (v13)
                  {
                    v17 = *(v8 + 32);
                    while (1)
                    {
                      if (!v17 || (v18 = *v17, v18 > 0x3F))
                      {
LABEL_30:
                        v16 = 257;
                        goto LABEL_35;
                      }

                      if (!*v17)
                      {
                        break;
                      }

                      v17 += v18 + 1;
                      if (&v17[-v13] >= 256)
                      {
                        goto LABEL_30;
                      }
                    }

                    v16 = (v17 - v13 + 1);
                  }

                  else
                  {
                    v16 = 0;
                  }

LABEL_35:
                  v19 = *(v8 + 4);
                  *buf = 141558787;
                  v38 = 1752392040;
                  v39 = 1040;
                  *v40 = v16;
                  *&v40[4] = 2101;
                  *&v40[6] = v13;
                  *&v40[14] = 1024;
                  *&v40[16] = v19;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Make validated RR expire soon - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr_type: %{mdns:rrtype}d", buf, 0x22u);
                }
              }

              else
              {
                v12 = mDNSLogCategory_DNSSEC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
                {
                  v13 = *(v8 + 32);
                  if (v13)
                  {
                    v14 = *(v8 + 32);
                    while (1)
                    {
                      if (!v14 || (v15 = *v14, v15 > 0x3F))
                      {
LABEL_22:
                        v16 = 257;
                        goto LABEL_35;
                      }

                      if (!*v14)
                      {
                        break;
                      }

                      v14 += v15 + 1;
                      if (&v14[-v13] >= 256)
                      {
                        goto LABEL_22;
                      }
                    }

                    v16 = (v14 - v13 + 1);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  goto LABEL_35;
                }
              }

              *(v10 + 20) = dword_10016D258 + 1000 * (3 - *(v10 + 4));
            }

            *(v10 + 108) = 4;
            goto LABEL_38;
          }

          v20 = mDNSLogCategory_DNSSEC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
            {
              v26 = *(v8 + 32);
              if (v26)
              {
                v27 = *(v8 + 32);
                while (1)
                {
                  if (!v27 || (v28 = *v27, v28 > 0x3F))
                  {
LABEL_57:
                    v29 = 257;
                    goto LABEL_61;
                  }

                  if (!*v27)
                  {
                    break;
                  }

                  v27 += v28 + 1;
                  if (&v27[-v26] >= 256)
                  {
                    goto LABEL_57;
                  }
                }

                v29 = (v27 - v26 + 1);
              }

              else
              {
                v29 = 0;
              }

LABEL_61:
              v30 = *(v8 + 4);
              *buf = 141558787;
              v38 = 1752392040;
              v39 = 1040;
              *v40 = v29;
              *&v40[4] = 2101;
              *&v40[6] = v26;
              *&v40[14] = 1024;
              *&v40[16] = v30;
              v31 = v20;
              goto LABEL_64;
            }
          }

          else
          {
            v21 = mDNSLogCategory_DNSSEC_redacted;
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
            {
              v22 = *(v8 + 32);
              if (v22)
              {
                v23 = *(v8 + 32);
                while (1)
                {
                  if (!v23 || (v24 = *v23, v24 > 0x3F))
                  {
LABEL_49:
                    v25 = 257;
                    goto LABEL_63;
                  }

                  if (!*v23)
                  {
                    break;
                  }

                  v23 += v24 + 1;
                  if (&v23[-v22] >= 256)
                  {
                    goto LABEL_49;
                  }
                }

                v25 = (v23 - v22 + 1);
              }

              else
              {
                v25 = 0;
              }

LABEL_63:
              v32 = *(v8 + 4);
              *buf = 141558787;
              v38 = 1752392040;
              v39 = 1040;
              *v40 = v25;
              *&v40[4] = 2101;
              *&v40[6] = v22;
              *&v40[14] = 1024;
              *&v40[16] = v32;
              v31 = v21;
LABEL_64:
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Invalid expiration time for the current DNSSEC validated record - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, rr_type: %{mdns:rrtype}d", buf, 0x22u);
            }
          }

LABEL_38:
          mDNS_Unlock_(mDNSStorage, "_purge_validated_record_from_cache", 1962);
        }
      }

      v33 = *(a1 + 32);
      *(v33 + 60) = 0;
      *(v33 + 52) = 0;
      free(v5);
    }
  }
}

uint64_t dnssd_svcb_service_name_is_empty(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 2;
  if (a1 == -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (a1 + a2 > v4)
    {
      v6 = (a1 + 2);
      while (*v6)
      {
        v6 += *v6 + 1;
        if (v6)
        {
          v7 = v6 >= a1 + a2;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          v3 = 0;
          v5 = 0;
          return v3 & v5;
        }
      }

      v8 = (v6 - v4 + 1);
      v5 = v8 < 0x101;
      v3 = v8 == 1;
    }
  }

  return v3 & v5;
}

uint64_t __dnssd_svcb_is_valid_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    if (a3)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else if ((a3 & 0x1FFFE) != 0)
    {
      if (((a3 >> 1) & 0xFFFE) != 0)
      {
        v3 = (a3 >> 1);
      }

      else
      {
        v3 = 1;
      }

      do
      {
        v4 = *(*(a1 + 32) + 8);
        if (*(v4 + 24))
        {
          break;
        }

        v5 = bswap32(*a2) >> 16;
        v6 = v5 - 1;
        v7 = v5 - 0x7FFF;
        if (v6 >= 7 && v7 >= 3)
        {
          *(v4 + 24) = 1;
        }

        ++a2;
        --v3;
      }

      while (v3);
    }
  }

  return 0;
}

_WORD *_dnssd_svcb_extract_values(_WORD *result, unint64_t a2, int a3, uint64_t a4)
{
  v4 = a2 - 2;
  if (a2 >= 2)
  {
    if (*result)
    {
      v5 = result + 1;
      if (result != -2 && (result + a2) > v5)
      {
        v8 = result + 1;
        while (*v8)
        {
          v8 += *v8 + 1;
          if (v8)
          {
            v9 = v8 >= result + a2;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            return result;
          }
        }

        v10 = (v8 - v5 + 1);
        if (v10 <= 0x100)
        {
          v11 = (v5 + v10);
          for (i = v4 - v10; i >= 4 && v11 != 0; v11 = (v15 + v14))
          {
            v14 = bswap32(v11[1]) >> 16;
            v9 = i - 4 >= v14;
            i = i - 4 - v14;
            if (!v9)
            {
              break;
            }

            v15 = v11 + 2;
            if (a3 == bswap32(*v11) >> 16)
            {
              result = (*(a4 + 16))(a4, v11 + 2, v14);
              if (!result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __dnssd_svcb_get_port_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3 == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = bswap32(*a2) >> 16;
  }

  return 0;
}

uint64_t __dnssd_svcb_copy_doh_uri_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    asprintf((*(*(a1 + 32) + 8) + 24), "%.*s", a3, a2);
  }

  return 0;
}

uint64_t __dnssd_svcb_copy_doh_path_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    asprintf((*(*(a1 + 32) + 8) + 24), "%.*s", a3, a2);
  }

  return 0;
}

void *__dnssd_svcb_copy_odoh_config_block_invoke(uint64_t a1, const void *a2, size_t size)
{
  if (!a2 || !size)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, size, 0x9A3689B8uLL);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = result;
    **(a1 + 40) = size;
    memcpy(*(*(*(a1 + 32) + 8) + 24), a2, size);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t __dnssd_svcb_access_alpn_values_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 && a3)
  {
    v6 = 0;
    do
    {
      v6 += 1 + *(a2 + v6);
      memset(v14, 0, 255);
      if (v6 > a3)
      {
        break;
      }

      __memcpy_chk();
      if (((*(*(a1 + 32) + 16))(*(a1 + 32), v14, v7, v8, v9, v10, v11, v12) & 1) == 0)
      {
        break;
      }
    }

    while (v6 < a3);
  }

  return 0;
}

void ___mdns_create_dns_over_bytestream_framer_block_invoke_3(id a1, const nw_framer *a2, const nw_protocol_metadata *a3, unint64_t a4, BOOL a5)
{
  if (a4 < 0x10000)
  {
    *output_buffer = bswap32(a4) >> 16;
    nw_framer_write_output(a2, output_buffer, 2uLL);
    nw_framer_write_output_no_copy(a2, a4);
  }

  else
  {

    nw_framer_mark_failed_with_error(a2, 40);
  }
}

unint64_t ___mdns_create_dns_over_bytestream_framer_block_invoke_6324(id a1, nw_framer *a2)
{
  do
  {
    *temp_buffer = 0;
    if (!nw_framer_parse_input(a2, 2uLL, 2uLL, temp_buffer, &__block_literal_global_9_6325))
    {
      break;
    }

    v3 = __rev16(*temp_buffer);
    v4 = nw_framer_message_create(a2);
    LODWORD(v3) = nw_framer_deliver_input_no_copy(a2, v3, v4, 1);
    nw_release(v4);
  }

  while (v3);
  return 2;
}

int ___mdns_create_dns_over_bytestream_framer_block_invoke_4(id a1, const nw_framer *a2)
{
  nw_framer_set_input_handler(a2, &__block_literal_global_5_6317);
  nw_framer_set_output_handler(a2, &__block_literal_global_13);
  return 1;
}

void *GetAddrInfoClientRequestStart(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  v8 = 4294901756;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v9 = *(a2 + 1);
  v31 = 0;
  if (!AppendDNSNameString(&v31, v9))
  {
    v15 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }
    }

    v16 = *a2;
    v17 = *(a2 + 1);
    *buf = 67109635;
    *&buf[4] = v16;
    *&buf[8] = 2160;
    *&buf[10] = 1752392040;
    *&buf[18] = 2085;
    *&buf[20] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[R%u] ERROR: bad hostname '%{sensitive, mask.hash}s'", buf, 0x1Cu);
LABEL_41:
    GetAddrInfoClientRequestStop(a1);
    return v8;
  }

  v10 = a2[6];
  if (v10 > 3)
  {
    goto LABEL_41;
  }

  if (v10)
  {
    v11 = a2[5];
  }

  else
  {
    v10 = 3;
    v11 = a2[5] | 0x8000;
  }

  *(a1 + 8) = v10;
  if ((v11 & 0x10000000) != 0)
  {
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "GetAddrInfoClientRequestStart: kDNSServiceFlagsServiceIndex is SET by the client");
    }

    v14 = 0;
    v13 = a2[4];
  }

  else
  {
    v25 = 0;
    RecordOpStart = InterfaceIndexToInterfaceID(a2[4], &v25);
    if (RecordOpStart)
    {
      goto LABEL_35;
    }

    v13 = -1;
    v14 = v25;
  }

  v18 = 0;
  *a1 = v14;
  v19 = *(a2 + 1);
  while (1)
  {
    v20 = *v19++;
    if (v20 == 46)
    {
      break;
    }

    if (v20 == 92)
    {
      ++v18;
    }

    else
    {
      if (!*(v19 - 1))
      {
        goto LABEL_27;
      }

LABEL_25:
      v18 = 0;
    }
  }

  if (*v19)
  {
    goto LABEL_25;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (AlwaysAppendSearchDomains || v31 && !*(&v31 + v31 + 1))
  {
    v21 = 1;
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  memset(buf, 0, sizeof(buf));
  v27 = 0u;
  v28 = 0u;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  *buf = *a2;
  *&buf[8] = &v31;
  *&buf[18] = 1;
  *&buf[24] = v14;
  *&v27 = __PAIR64__(v11, v13);
  BYTE8(v27) = v21;
  HIDWORD(v27) = a2[7];
  *&v28 = *(a2 + 4);
  DWORD2(v28) = a2[10];
  v22 = *(a2 + 7);
  *&v29 = *(a2 + 6);
  *(&v29 + 1) = v22;
  LODWORD(v30[0]) = a2[16];
  BYTE5(v30[0]) = *(a2 + 68);
  *(v30 + 8) = *(a2 + 18);
  BYTE12(v28) = *(a2 + 88);
  WORD4(v30[1]) = *(a2 + 89);
  v23 = *(a1 + 8);
  if ((v23 & 2) == 0)
  {
    goto LABEL_37;
  }

  result = malloc_type_calloc(1uLL, 0x320uLL, 0x99C08619uLL);
  if (result)
  {
    *(a1 + 24) = result;
    *&buf[16] = 28;
    RecordOpStart = QueryRecordOpStart(result, buf, a3, a4);
    if (RecordOpStart)
    {
LABEL_35:
      v8 = RecordOpStart;
      goto LABEL_41;
    }

    v23 = *(a1 + 8);
LABEL_37:
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    result = malloc_type_calloc(1uLL, 0x320uLL, 0x99C08619uLL);
    if (result)
    {
      *(a1 + 16) = result;
      *&buf[16] = 1;
      v8 = QueryRecordOpStart(result, buf, a3, a4);
      if (v8)
      {
        goto LABEL_41;
      }

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t InterfaceIndexToInterfaceID(unsigned int a1, uint64_t *a2)
{
  v4 = mDNSPlatformInterfaceIDfromInterfaceIndex(a1);
  v5 = v4;
  if (!a1 || v4)
  {
LABEL_9:
    v6 = 0;
    *a2 = v5;
    return v6;
  }

  if (InterfaceIndexToInterfaceID_getLoopbackIndexOnce != -1)
  {
    dispatch_once(&InterfaceIndexToInterfaceID_getLoopbackIndexOnce, &__block_literal_global_6370);
  }

  if (a1 <= 0xFFFFFFFB && InterfaceIndexToInterfaceID_loopbackIndex != a1)
  {
    v5 = a1;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Query pending for interface index %d", a1);
    }

    goto LABEL_9;
  }

  v6 = 4294901756;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: bad interfaceIndex %d", a1);
  }

  return v6;
}

uint64_t QueryRecordOpStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  v9 = v8;
  while (1)
  {
    if (!v9 || (v10 = *v9, v10 > 0x3F))
    {
LABEL_6:
      LOWORD(v11) = 257;
      goto LABEL_8;
    }

    if (!*v9)
    {
      break;
    }

    v9 += v10 + 1;
    if (v9 - v8 > 255)
    {
      goto LABEL_6;
    }
  }

  v11 = (v9 - v8) + 1;
  if ((v11 & 0x10000) != 0)
  {
    goto LABEL_119;
  }

LABEL_8:
  v12 = malloc_type_malloc(v11, 0xCBB660uLL);
  if (!v12)
  {
    goto LABEL_119;
  }

  *(a1 + 696) = v12;
  memcpy(v12, *(a2 + 8), v11);
  *(a1 + 704) = *(a2 + 24);
  *(a1 + 728) = *a2;
  *(a1 + 712) = a3;
  *(a1 + 720) = a4;
  *(a1 + 759) = *(a2 + 61);
  *(a1 + 764) = *(a2 + 81);
  v13 = *(a2 + 83);
  *(a1 + 766) = v13;
  v14 = *(a2 + 84);
  *(a1 + 767) = v14;
  *(a1 + 762) = *(a2 + 16);
  if (!v13 || v14)
  {
    v15 = *(a2 + 64);
    if (v15)
    {
      *(a1 + 768) = *v15;
    }
  }

  v16 = *(a2 + 88);
  if (v16)
  {
    os_retain(v16);
  }

  v17 = *(a1 + 784);
  if (v17)
  {
    os_release(v17);
  }

  *(a1 + 784) = *(a2 + 88);
  v18 = *(a2 + 96);
  if (v18)
  {
    os_retain(v18);
  }

  v19 = *(a1 + 792);
  if (v19)
  {
    os_release(v19);
  }

  v20 = *(a2 + 96);
  *(a1 + 792) = v20;
  v21 = *(a2 + 36);
  *(a1 + 324) = v21;
  if (*(a2 + 40))
  {
    v21 &= ~0x40000000u;
    *(a1 + 324) = v21;
  }

  v22 = EnableAllowExpired && (v21 & 0x80000000) != 0 && !*(a2 + 85);
  *(a1 + 647) = v22;
  *(a1 + 280) = *(a2 + 32);
  *(a1 + 654) = *(a2 + 60);
  *(a1 + 120) = *(a1 + 784);
  *(a1 + 128) = v20;
  *(a1 + 136) = *(a2 + 24);
  v23 = *(a2 + 8);
  v24 = v23;
  do
  {
    if (!v24)
    {
      break;
    }

    v25 = *v24;
    if (v25 > 0x3F)
    {
      break;
    }

    if (!*v24)
    {
      v26 = v24 - v23 + 1;
      if (v26 <= 0x100u)
      {
        memcpy((a1 + 376), v23, v26);
        goto LABEL_36;
      }

      break;
    }

    v24 += v25 + 1;
  }

  while (v24 - v23 <= 255);
  *(a1 + 376) = 0;
LABEL_36:
  *(a1 + 342) = *(a2 + 16);
  *(a1 + 632) = BYTE1(v21) & 1;
  v27 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v21), xmmword_10010D330)), 0x1000100010001);
  *(a1 + 634) = vuzp1_s8(v27, v27).u32[0];
  *(a1 + 640) = (v21 & 0x80000) != 0;
  *(a1 + 656) = _os_feature_enabled_impl() & (v21 >> 21);
  v28 = *(a2 + 40);
  *(a1 + 641) = v28;
  v29 = *(a2 + 16) == 1 && *(a2 + 105) != 0;
  *(a1 + 645) = v29;
  *(a1 + 648) = *(a2 + 80);
  *a1 = *(a2 + 72);
  *(a1 + 651) = *(a1 + 766);
  if (*(a1 + 765))
  {
    *(a1 + 643) = 1;
    if (!*(a1 + 136))
    {
      *(a1 + 642) = 1;
    }
  }

  *(a1 + 360) = *(a1 + 768);
  *(a1 + 644) = *(a2 + 85);
  *(a1 + 357) = 0;
  *(a1 + 690) = *(a2 + 104);
  *(a1 + 244) = *(a2 + 44);
  v30 = *(a2 + 48);
  if (v30)
  {
    *(a1 + 657) = *v30;
  }

  *(a1 + 248) = *(a2 + 56);
  *(a1 + 252) = *a2;
  *(a1 + 152) = QueryRecordOpCallback;
  *(a1 + 160) = QueryRecordOpResetHandler;
  *(a1 + 168) = QueryRecordOpEventHandler;
  if (v28)
  {
    v31 = *(a1 + 696);
    if (*v31)
    {
      if (!v31[*v31 + 1])
      {
        *(a1 + 136) = -2;
      }
    }
  }

  v32 = *(a1 + 342);
  if (v32 != 1 && v32 != 28)
  {
    if (v32 != 33)
    {
      goto LABEL_60;
    }

    v33 = (a1 + 376);
    v34 = *(a1 + 376) ? *(a1 + 376) + 1 : 0;
    if (!SameDomainLabelPointer(&v33[v34], "\x04_tcp"))
    {
      v35 = *v33 ? *v33 + 1 : 0;
      if (!SameDomainLabelPointer(&v33[v35], "\x04_udp"))
      {
        goto LABEL_60;
      }
    }
  }

  if (*(a1 + 634))
  {
    goto LABEL_60;
  }

  v49 = a1 + 376;
  v50 = *(a1 + 376);
  if (*(a1 + 376))
  {
    do
    {
      v51 = v49;
      v52 = v49 + v50;
      v53 = *(v52 + 1);
      v49 = v52 + 1;
      v50 = v53;
    }

    while (v53);
  }

  else
  {
    v51 = a1 + 376;
  }

  if (!SameDomainLabelPointer(v51, "\x05local"))
  {
LABEL_60:
    v36 = 0;
    goto LABEL_61;
  }

  v54 = malloc_type_calloc(1uLL, 0x2B8uLL, 0x31468F2uLL);
  if (!v54)
  {
LABEL_119:
    __break(1u);
  }

  *(a1 + 744) = v54;
  memcpy(v54, a1, 0x2B8uLL);
  v36 = 1;
LABEL_61:
  RecordOpStartQuestion = QueryRecordOpStartQuestion(a1, a1);
  if (!RecordOpStartQuestion)
  {
    if (callExternalHelpers(*(a1 + 136), (a1 + 376), *(a1 + 324)))
    {
      external_start_browsing_for_service(*(a1 + 136), (a1 + 376), *(a1 + 342), *(a1 + 324), *(a1 + 244));
    }

    if (!v36)
    {
      return 0;
    }

    v40 = *(a1 + 744);
    if (!v40)
    {
      v38 = 4294901754;
      goto LABEL_63;
    }

    v41 = (v40 + 376);
    v42 = *(v40 + 376);
    if (*(v40 + 376))
    {
      v43 = 0;
      v44 = v40 + 376;
      do
      {
        ++v43;
        v45 = v44 + v42;
        v46 = *(v45 + 1);
        v44 = v45 + 1;
        v42 = v46;
      }

      while (v46);
      if (v43 == 2 && !SameDomainNameBytes((v40 + 376), ActiveDirectoryPrimaryDomain) && !DomainNameIsInSearchList((v40 + 376), 0))
      {
        *(a1 + 752) = *(v40 + 342);
        *(a1 + 754) = *(v40 + 632);
        *(a1 + 755) = *(v40 + 635);
        *(a1 + 756) = *(v40 + 637);
        *(a1 + 757) = *(v40 + 641);
        v47 = "\x05local";
        do
        {
          if (!v47)
          {
            break;
          }

          v48 = *v47;
          if (v48 > 0x3F)
          {
            break;
          }

          if (!*v47)
          {
            v55 = v47 - "\x05local" + 1;
            if (v55 <= 0x100u)
            {
              memcpy((v40 + 376), "\x05local", v55);
              goto LABEL_94;
            }

            break;
          }

          v47 += v48 + 1;
        }

        while (v47 - "\x05local" <= 255);
        *v41 = 0;
LABEL_94:
        *(v40 + 342) = 6;
        *(v40 + 635) = 1;
        *(v40 + 637) = 0;
        *(v40 + 641) = 0;
      }
    }

    *(v40 + 638) = 1;
    *(v40 + 632) = 0;
    v56 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v57 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_117;
      }

      v58 = *(a1 + 728);
      v59 = (v40 + 376);
      while (1)
      {
        if (!v59 || (v60 = *v59, v60 > 0x3F))
        {
LABEL_106:
          v61 = 257;
          goto LABEL_116;
        }

        if (!*v59)
        {
          break;
        }

        v59 += v60 + 1;
        if (v59 - v41 >= 256)
        {
          goto LABEL_106;
        }
      }

      v61 = (v59 - v41 + 1);
    }

    else
    {
      v56 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_117:
        v38 = QueryRecordOpStartQuestion(a1, v40);
        if (!v38)
        {
          return v38;
        }

        goto LABEL_63;
      }

      v58 = *(a1 + 728);
      v63 = (v40 + 376);
      while (1)
      {
        if (!v63 || (v64 = *v63, v64 > 0x3F))
        {
LABEL_113:
          v61 = 257;
          goto LABEL_116;
        }

        if (!*v63)
        {
          break;
        }

        v63 += v64 + 1;
        if (v63 - v41 >= 256)
        {
          goto LABEL_113;
        }
      }

      v61 = (v63 - v41 + 1);
    }

LABEL_116:
    v65 = DNSTypeName(*(v40 + 342));
    v66[0] = 67110147;
    v66[1] = v58;
    v67 = 2160;
    v68 = 1752392040;
    v69 = 1040;
    v70 = v61;
    v71 = 2101;
    v72 = v40 + 376;
    v73 = 2082;
    v74 = v65;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[R%u] QueryRecordOpStart: starting parallel unicast query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{public}s", v66, 0x2Cu);
    goto LABEL_117;
  }

  v38 = RecordOpStartQuestion;
LABEL_63:
  QueryRecordOpStop(a1);
  return v38;
}

void GetAddrInfoClientRequestStop(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    QueryRecordOpStop(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    QueryRecordOpStop(v3);
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 16);
  if (v5 && !*(v5 + 758))
  {
    if (*(v5 + 637))
    {
      mDNSPlatformUpdateDNSStatus(*(a1 + 16));
    }

    v5 = 0;
  }

  if (v4 && !*(v4 + 758))
  {
    if (*(v4 + 637))
    {
      mDNSPlatformUpdateDNSStatus(v4);
    }

    v4 = 0;
  }

  mDNSPlatformTriggerDNSRetry(v5, v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    free(v6);
    *(a1 + 16) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    free(v7);
    *(a1 + 24) = 0;
  }
}

void QueryRecordOpStop(uint64_t a1)
{
  if (*(a1 + 176))
  {
    resolved_cache_delete(a1);
    mDNS_StopQuery(mDNSStorage, a1);
    *(a1 + 176) = 0;
    if (callExternalHelpers(*(a1 + 136), *(a1 + 696), *(a1 + 324)))
    {
      external_stop_browsing_for_service(*(a1 + 136), (a1 + 376), *(a1 + 342), *(a1 + 324), *(a1 + 244));
    }
  }

  v2 = *(a1 + 696);
  if (v2)
  {
    free(v2);
    *(a1 + 696) = 0;
  }

  v3 = *(a1 + 744);
  if (v3)
  {
    if (!v3[22] || (resolved_cache_delete(*(a1 + 744)), mDNS_StopQuery(mDNSStorage, v3), v3[22] = 0, (v3 = *(a1 + 744)) != 0))
    {
      free(v3);
    }

    *(a1 + 744) = 0;
  }

  v4 = *(a1 + 784);
  if (v4)
  {
    os_release(v4);
    *(a1 + 784) = 0;
  }

  v5 = *(a1 + 792);
  if (v5)
  {
    os_release(v5);
    *(a1 + 792) = 0;
  }
}

uint64_t QueryRecordOpStartQuestion(uint64_t a1, uint64_t a2)
{
  *(a2 + 176) = a1;
  started = mDNS_StartQuery(mDNSStorage, a2);
  if (started)
  {
    v5 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v6 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        *(a2 + 176) = 0;
        return started;
      }

      v7 = *(a1 + 728);
      v8 = a2 + 376;
      v9 = (a2 + 376);
      while (1)
      {
        if (!v9 || (v10 = *v9, v10 > 0x3F))
        {
LABEL_13:
          v11 = 257;
          goto LABEL_23;
        }

        if (!*v9)
        {
          break;
        }

        v9 += v10 + 1;
        if (&v9[-v8] >= 256)
        {
          goto LABEL_13;
        }
      }

      v11 = (v9 - v8 + 1);
    }

    else
    {
      v5 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 728);
      v13 = a2 + 376;
      v14 = (a2 + 376);
      while (1)
      {
        if (!v14 || (v15 = *v14, v15 > 0x3F))
        {
LABEL_20:
          v11 = 257;
          goto LABEL_23;
        }

        if (!*v14)
        {
          break;
        }

        v14 += v15 + 1;
        if (&v14[-v13] >= 256)
        {
          goto LABEL_20;
        }
      }

      v11 = (v14 - v13 + 1);
    }

LABEL_23:
    v16 = DNSTypeName(*(a2 + 342));
    v18[0] = 67110403;
    v18[1] = v7;
    v19 = 2160;
    v20 = 1752392040;
    v21 = 1040;
    v22 = v11;
    v23 = 2101;
    v24 = a2 + 376;
    v25 = 2082;
    v26 = v16;
    v27 = 1024;
    v28 = started;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[R%u] ERROR: QueryRecordOpStartQuestion mDNS_StartQuery for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P %{public}s failed with error %d", v18, 0x32u);
    goto LABEL_24;
  }

  return started;
}

uint64_t DomainNameIsInSearchList(_BYTE *a1, int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      ++v5;
      v7 = &v6[v4];
      v8 = v7[1];
      v6 = v7 + 1;
      v4 = v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v9 = SearchList;
  if (!SearchList)
  {
    return 0;
  }

  while (1)
  {
    if (!a2 || !SameDomainNameBytes((v9 + 8), "\x05local"))
    {
      v10 = *(v9 + 8);
      if (*(v9 + 8))
      {
        v11 = 0;
        v12 = v9 + 8;
        do
        {
          ++v11;
          v13 = v12 + v10;
          v14 = *(v13 + 1);
          v12 = v13 + 1;
          v10 = v14;
        }

        while (v14);
      }

      else
      {
        v11 = 0;
      }

      if (v5 >= v11)
      {
        v15 = a1;
        if (v5 - v11 >= 1)
        {
          v16 = v5 + 1 - v11;
          v15 = a1;
          do
          {
            if (!*v15)
            {
              break;
            }

            v15 += *v15 + 1;
            --v16;
          }

          while (v16 > 1);
        }

        if (SameDomainNameBytes((v9 + 8), v15))
        {
          break;
        }
      }
    }

    v9 = *v9;
    if (!v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t QueryRecordOpEventHandler(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    return result;
  }

  v2 = result;
  if (*(result + 647) != 1)
  {
    return result;
  }

  v3 = *(result + 176);
  if (!*(v3 + 760))
  {
    return result;
  }

  resolved_cache_delete(result);
  mDNS_StopQuery(mDNSStorage, v2);
  *(v2 + 176) = 0;
  v4 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v5 = *(v3 + 728);
    v6 = bswap32(*(v2 + 340)) >> 16;
    v11 = v2 + 376;
    v12 = (v2 + 376);
    while (1)
    {
      if (!v12 || (v13 = *v12, v13 > 0x3F))
      {
LABEL_19:
        v10 = 257;
        goto LABEL_21;
      }

      if (!*v12)
      {
        break;
      }

      v12 += v13 + 1;
      if (&v12[-v11] >= 256)
      {
        goto LABEL_19;
      }
    }

    v10 = (v12 - v11 + 1);
LABEL_21:
    v14 = *(v3 + 696);
    if (v14)
    {
      v15 = *(v3 + 696);
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_27:
          v17 = 257;
          goto LABEL_40;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (&v15[-v14] >= 256)
        {
          goto LABEL_27;
        }
      }

      v17 = (v15 - v14 + 1);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v4 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    v5 = *(v3 + 728);
    v6 = bswap32(*(v2 + 340)) >> 16;
    v7 = v2 + 376;
    v8 = (v2 + 376);
    while (1)
    {
      if (!v8 || (v9 = *v8, v9 > 0x3F))
      {
LABEL_12:
        v10 = 257;
        goto LABEL_30;
      }

      if (!*v8)
      {
        break;
      }

      v8 += v9 + 1;
      if (&v8[-v7] >= 256)
      {
        goto LABEL_12;
      }
    }

    v10 = (v8 - v7 + 1);
LABEL_30:
    v14 = *(v3 + 696);
    if (v14)
    {
      v18 = *(v3 + 696);
      while (1)
      {
        if (!v18 || (v19 = *v18, v19 > 0x3F))
        {
LABEL_36:
          v17 = 257;
          goto LABEL_40;
        }

        if (!*v18)
        {
          break;
        }

        v18 += v19 + 1;
        if (&v18[-v14] >= 256)
        {
          goto LABEL_36;
        }
      }

      v17 = (v18 - v14 + 1);
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_40:
  v20 = *(v2 + 342);
  v26[0] = 67111171;
  v26[1] = v5;
  v27 = 1024;
  v28 = v6;
  v29 = 2160;
  v30 = 1752392040;
  v31 = 1040;
  v32 = v10;
  v33 = 2101;
  v34 = v2 + 376;
  v35 = 2160;
  v36 = 1752392040;
  v37 = 1040;
  v38 = v17;
  v39 = 2101;
  v40 = v14;
  v41 = 1024;
  v42 = v20;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[R%u->Q%u] Restarting question that got expired CNAMEs -- current name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, original name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", v26, 0x48u);
LABEL_41:
  *(v3 + 760) = 0;
  v21 = *(v3 + 696);
  v22 = v21;
  do
  {
    if (!v22)
    {
      break;
    }

    v23 = *v22;
    if (v23 > 0x3F)
    {
      break;
    }

    if (!*v22)
    {
      v24 = v22 - v21 + 1;
      if (v24 <= 0x100u)
      {
        memcpy((v2 + 376), v21, v24);
        goto LABEL_50;
      }

      break;
    }

    v22 += v23 + 1;
  }

  while (v22 - v21 <= 255);
  *(v2 + 376) = 0;
LABEL_50:
  *(v2 + 647) = 2;
  *(v2 + 360) = *(v3 + 768);
  if (*(v2 + 641) && *(v3 + 732) >= 1)
  {
    *(v3 + 732) = *(v3 + 736);
    SearchDomain = NextSearchDomain(v3);
  }

  else
  {
    SearchDomain = 0;
  }

  return QueryRecordOpRestartUnicastQuestion(v3, v2, SearchDomain);
}

uint64_t *NextSearchDomain(uint64_t a1)
{
  v2 = *(a1 + 732);
  v3 = &SearchList;
  *(a1 + 736) = v2;
  if (v2 < 0)
  {
LABEL_43:
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain: count %d less than zero", v2);
  }

  else
  {
LABEL_2:
    v4 = *(a1 + 704);
    do
    {
      v3 = *v3;
      v5 = v2-- != 0;
    }

    while (v5 && v3);
    while (v3)
    {
      v7 = v3 + 1;
      v6 = *(v3 + 8);
      if (!*(v3 + 8))
      {
        goto LABEL_24;
      }

      v8 = -1;
      v9 = 1;
      v10 = v3 + 1;
      do
      {
        v11 = v8;
        v12 = v9;
        v13 = v10 + v6;
        v14 = v13[1];
        v10 = (v13 + 1);
        v6 = v14;
        ++v8;
        ++v9;
      }

      while (v14);
      if (v11 + 2 < 2)
      {
        goto LABEL_24;
      }

      v15 = (v3 + 1);
      if (v11)
      {
        v15 = (v3 + 1);
        do
        {
          if (!*v15)
          {
            break;
          }

          v15 += *v15 + 1;
          --v12;
        }

        while (v12 > 2);
      }

      if (SameDomainNameBytes(v15, "\ain-addr\x04arpa") || SameDomainNameBytes(v15, "\x03ip6\x04arpa"))
      {
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain: skipping search domain %##s, InterfaceID %p", v3 + 1, v3[34]);
        }

        ++*(a1 + 732);
      }

      else
      {
LABEL_24:
        ++*(a1 + 732);
        v16 = v3[34];
        if (v16 == v4)
        {
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain returning domain %##s, InterfaceID %p", v3 + 1, v16);
          }

          v17 = *(a1 + 696);
          v18 = v17;
          while (1)
          {
            if (!v18 || (v19 = *v18, v19 > 0x3F))
            {
LABEL_32:
              v20 = 256;
              goto LABEL_34;
            }

            if (!*v18)
            {
              break;
            }

            v18 += v19 + 1;
            if (v18 - v17 >= 256)
            {
              goto LABEL_32;
            }
          }

          v20 = (v18 - v17 + 1) - 1;
LABEL_34:
          v21 = v3 + 1;
          while (1)
          {
            if (!v21 || (v22 = *v21, v22 > 0x3F))
            {
LABEL_39:
              v23 = 257;
              goto LABEL_41;
            }

            if (!*v21)
            {
              break;
            }

            v21 += v22 + 1;
            if (v21 - v7 >= 256)
            {
              goto LABEL_39;
            }
          }

          v23 = (v21 - v7 + 1);
LABEL_41:
          if (v20 + v23 < 257)
          {
            return v7;
          }

          v2 = *(a1 + 732);
          v3 = &SearchList;
          if ((v2 & 0x80000000) == 0)
          {
            goto LABEL_2;
          }

          goto LABEL_43;
        }

        if (mDNS_LoggingEnabled)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "uDNS_GetNextSearchDomain skipping domain %##s, InterfaceID %p", v3 + 1, v16);
        }
      }

      v3 = *v3;
    }
  }

  v7 = 0;
  *(a1 + 732) = -1;
  return v7;
}

uint64_t QueryRecordOpRestartUnicastQuestion(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(a2 + 136) = *(a1 + 704);
  v6 = *(a1 + 696);
  v7 = v6;
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *v7;
    if (v8 > 0x3F)
    {
      break;
    }

    if (!*v7)
    {
      v9 = v7 - v6 + 1;
      if (v9 <= 0x100u)
      {
        memcpy((a2 + 376), v6, v9);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      break;
    }

    v7 += v8 + 1;
  }

  while (v7 - v6 <= 255);
  *(a2 + 376) = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_11:
  AppendDomainName((a2 + 376), a3);
LABEL_12:
  v10 = a2 + 376;
  v11 = *(a2 + 376);
  if (*(a2 + 376))
  {
    do
    {
      v12 = v10;
      v13 = v10 + v11;
      v14 = *(v13 + 1);
      v10 = v13 + 1;
      v11 = v14;
    }

    while (v14);
  }

  else
  {
    v12 = a2 + 376;
  }

  *(a2 + 638) = SameDomainLabelPointer(v12, "\x05local") != 0;

  return QueryRecordOpStartQuestion(a1, a2);
}

void *QueryRecordOpResetHandler(void *result)
{
  v1 = result;
  v2 = result[22];
  v3 = v2[87];
  v4 = v3;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = *v4;
    if (v5 > 0x3F)
    {
      break;
    }

    if (!*v4)
    {
      v6 = v4 - v3 + 1;
      if (v6 <= 0x100u)
      {
        result = memcpy(result + 47, v3, v6);
        goto LABEL_10;
      }

      break;
    }

    v4 += v5 + 1;
  }

  while (v4 - v3 <= 255);
  *(result + 376) = 0;
LABEL_10:
  if (*(v1 + 641) && (v7 = v2[87], *v7) && !v7[*v7 + 1])
  {
    v8 = &mDNSInterface_LocalOnly;
  }

  else
  {
    v8 = v2 + 88;
  }

  v1[17] = *v8;
  *(v2 + 732) = 0;
  return result;
}

void QueryRecordOpCallback(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = *(a2 + 176);
  v9 = *(v8 + 744);
  if (v9 == a2 && *(a2 + 342) == 6)
  {
    if (*(a3 + 2) != 6)
    {
      return;
    }

    resolved_cache_delete(*(v8 + 744));
    mDNS_StopQuery(mDNSStorage, v9);
    *(v9 + 176) = 0;
    *(v9 + 342) = *(v8 + 752);
    *(v9 + 632) = *(v8 + 754);
    *(v9 + 635) = *(v8 + 755);
    *(v9 + 637) = *(v8 + 756);
    v10 = *(v8 + 757);
    *(v9 + 641) = v10;
    if (*a3 == 240)
    {
      if (!v10)
      {
        return;
      }

      SearchDomain = NextSearchDomain(v8);
      if (!SearchDomain)
      {
        return;
      }

      v12 = SearchDomain;
      v13 = v8;
      v14 = v9;
    }

    else
    {
      v13 = v8;
      v14 = v9;
      v12 = 0;
    }

    goto LABEL_64;
  }

  if (a4 != 1 || *(a2 + 647) != 1)
  {
    if (a4 == 4)
    {
      v15 = 4294901742;
      v16 = mDNSLogCategory_Default;
      if (mDNS_SensitiveLoggingEnableCount)
      {
        v17 = mDNSLogCategory_Default == mDNSLogCategory_State;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_115;
        }

        v18 = *(v8 + 728);
        v19 = a2 + 376;
        v20 = (a2 + 376);
        while (1)
        {
          if (!v20 || (v21 = *v20, v21 > 0x3F))
          {
LABEL_28:
            v22 = 257;
            goto LABEL_114;
          }

          if (!*v20)
          {
            break;
          }

          v20 += v21 + 1;
          if (&v20[-v19] >= 256)
          {
            goto LABEL_28;
          }
        }

        v22 = (v20 - v19 + 1);
      }

      else
      {
        v16 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_115;
        }

        v18 = *(v8 + 728);
        v33 = a2 + 376;
        v34 = (a2 + 376);
        while (1)
        {
          if (!v34 || (v35 = *v34, v35 > 0x3F))
          {
LABEL_55:
            v22 = 257;
            goto LABEL_114;
          }

          if (!*v34)
          {
            break;
          }

          v34 += v35 + 1;
          if (&v34[-v33] >= 256)
          {
            goto LABEL_55;
          }
        }

        v22 = (v34 - v33 + 1);
      }

LABEL_114:
      v62 = DNSTypeName(*(a2 + 342));
      v84 = 67110147;
      v85 = v18;
      v86 = 2160;
      v87 = 1752392040;
      v88 = 1040;
      v89 = v22;
      v90 = 2101;
      v91 = a2 + 376;
      v92 = 2082;
      v93 = v62;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[R%u] QueryRecordOpCallback: Suppressed question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s)", &v84, 0x2Cu);
      goto LABEL_115;
    }

LABEL_29:
    if (*a3 != 240)
    {
      v15 = 0;
      goto LABEL_42;
    }

    if (*(a2 + 637))
    {
      mDNS_Lock_(a1, "GetTimeNow", 749);
      v23 = *(a1 + 64);
      mDNS_Unlock_(a1, "GetTimeNow", 751);
      if (v23 - *(a2 + 240) >= 0)
      {
        v24 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          v15 = 4294901728;
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_134;
          }

          v25 = *(v8 + 728);
          v36 = a2 + 376;
          v37 = (a2 + 376);
          while (1)
          {
            if (!v37 || (v38 = *v37, v38 > 0x3F))
            {
LABEL_62:
              v29 = 257;
              goto LABEL_133;
            }

            if (!*v37)
            {
              break;
            }

            v37 += v38 + 1;
            if (&v37[-v36] >= 256)
            {
              goto LABEL_62;
            }
          }

          v29 = (v37 - v36 + 1);
        }

        else
        {
          v24 = mDNSLogCategory_Default_redacted;
          v15 = 4294901728;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_134;
          }

          v25 = *(v8 + 728);
          v26 = a2 + 376;
          v27 = (a2 + 376);
          while (1)
          {
            if (!v27 || (v28 = *v27, v28 > 0x3F))
            {
LABEL_40:
              v29 = 257;
              goto LABEL_133;
            }

            if (!*v27)
            {
              break;
            }

            v27 += v28 + 1;
            if (&v27[-v26] >= 256)
            {
              goto LABEL_40;
            }
          }

          v29 = (v27 - v26 + 1);
        }

LABEL_133:
        v69 = DNSTypeName(*(a2 + 342));
        v70 = *(a2 + 136);
        v84 = 67110403;
        v85 = v25;
        v86 = 2160;
        v87 = 1752392040;
        v88 = 1040;
        v89 = v29;
        v90 = 2101;
        v91 = a2 + 376;
        v92 = 2082;
        v93 = v69;
        v94 = 2048;
        v95 = v70;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[R%u] QueryRecordOpCallback: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) timing out, InterfaceID %p", &v84, 0x36u);
LABEL_134:
        v30 = 1;
        if (a4)
        {
LABEL_135:
          if (&_NEHelperTrackerGetAppInfo && *(a2 + 340) && ((*(a3 + 3) + 5) > 3 || *(a3 + 3) == -4) && *a3 != 240)
          {
            v74 = *(a3 + 2);
            if (v74 == 28 || v74 == 1)
            {
              v75 = &s_head_0;
              while (1)
              {
                v75 = *v75;
                if (!v75)
                {
                  break;
                }

                if (v75[1] == a2)
                {
                  if (v74 == 1)
                  {
                    v76 = 4;
                  }

                  else
                  {
                    v76 = 16;
                  }

                  v77 = CFDataCreate(kCFAllocatorDefault, (*(a3 + 5) + 4), v76);
                  if (v77)
                  {
                    v78 = v77;
                    CFArrayAppendValue(v75[6], v77);
                    CFRelease(v78);
                  }

                  break;
                }
              }
            }
          }
        }

LABEL_139:
        v71 = *(v8 + 712);
        if (v71)
        {
          if (a4 == 1)
          {
            if (*(v8 + 760))
            {
              v72 = 1;
            }

            else
            {
              v72 = a3[2] == 2;
            }
          }

          else
          {
            v72 = 0;
          }

          v71(a1, a2, a3, v72, a4, v15, *(v8 + 720));
        }

        v73 = v30 ^ 1;
        if (*(a1 + 208) != a2)
        {
          v73 = 1;
        }

        if ((v73 & 1) == 0)
        {
          resolved_cache_delete(a2);
          mDNS_StopQuery(mDNSStorage, a2);
          *(a2 + 176) = 0;
        }

        return;
      }
    }

    if (*(a2 + 641))
    {
      if (a4)
      {
        if ((*(v8 + 732) & 0x80000000) == 0)
        {
          v31 = NextSearchDomain(v8);
          if (v31 || (v39 = *(v8 + 696), *v39) && !v39[*v39 + 1])
          {
            resolved_cache_delete(a2);
            mDNS_StopQuery(mDNSStorage, a2);
            *(a2 + 176) = 0;
            v13 = v8;
            v14 = a2;
            v12 = v31;
LABEL_64:

            QueryRecordOpRestartUnicastQuestion(v13, v14, v12);
            return;
          }
        }
      }
    }

    if (!*(v8 + 759) || *(a2 + 342) != 28 || (v40 = a3[1], v40 == 3))
    {
      if (*(v8 + 764))
      {
        if (!*(a2 + 643))
        {
          v48 = *(a2 + 80);
          if (v48)
          {
            if (*(v48 + 96) && nw_resolver_config_get_allow_failover())
            {
              QueryRecordOpStopQuestion(a2);
              v49 = *(v8 + 762);
              *(a2 + 342) = v49;
              *(a2 + 643) = 1;
              if (!*(a2 + 136))
              {
                *(a2 + 642) = 1;
              }

              v50 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
                {
                  v51 = *(v8 + 728);
                  v79 = a2 + 376;
                  v80 = (a2 + 376);
                  while (1)
                  {
                    if (!v80 || (v81 = *v80, v81 > 0x3F))
                    {
LABEL_168:
                      v55 = 257;
                      goto LABEL_178;
                    }

                    if (!*v80)
                    {
                      break;
                    }

                    v80 += v81 + 1;
                    if (&v80[-v79] >= 256)
                    {
                      goto LABEL_168;
                    }
                  }

                  v55 = (v80 - v79 + 1);
                  goto LABEL_178;
                }
              }

              else
              {
                v50 = mDNSLogCategory_Default_redacted;
                if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
                {
                  v51 = *(v8 + 728);
                  v52 = a2 + 376;
                  v53 = (a2 + 376);
                  while (1)
                  {
                    if (!v53 || (v54 = *v53, v54 > 0x3F))
                    {
LABEL_102:
                      v55 = 257;
                      goto LABEL_178;
                    }

                    if (!*v53)
                    {
                      break;
                    }

                    v53 += v54 + 1;
                    if (&v53[-v52] >= 256)
                    {
                      goto LABEL_102;
                    }
                  }

                  v55 = (v53 - v52 + 1);
LABEL_178:
                  v84 = 67110147;
                  v85 = v51;
                  v86 = 2160;
                  v87 = 1752392040;
                  v88 = 1040;
                  v89 = v55;
                  v90 = 2101;
                  v91 = a2 + 376;
                  v92 = 2082;
                  v93 = DNSTypeName(v49);
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "[R%u] Restarting question for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) due to DNS service failover", &v84, 0x2Cu);
                }
              }

              if (*(a2 + 641))
              {
                *(v8 + 732) = 0;
                v83 = NextSearchDomain(v8);
              }

              else
              {
                v83 = 0;
              }

              QueryRecordOpRestartUnicastQuestion(v8, a2, v83);
              return;
            }
          }
        }
      }

      v15 = 4294901742;
      if (*(a3 + 3) || !IsLocalDomain(*(a3 + 4)))
      {
        goto LABEL_42;
      }

      v41 = *(a2 + 342);
      if ((v41 != 28 && v41 != 1 || a3[1]) && !DomainNameIsInSearchList((a2 + 376), 1))
      {
        return;
      }

      v42 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v43 = *(v8 + 728);
        v66 = a2 + 376;
        v67 = (a2 + 376);
        while (1)
        {
          if (!v67 || (v68 = *v67, v68 > 0x3F))
          {
LABEL_130:
            v47 = 257;
            goto LABEL_175;
          }

          if (!*v67)
          {
            break;
          }

          v67 += v68 + 1;
          if (&v67[-v66] >= 256)
          {
            goto LABEL_130;
          }
        }

        v47 = (v67 - v66 + 1);
      }

      else
      {
        v42 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        v43 = *(v8 + 728);
        v44 = a2 + 376;
        v45 = (a2 + 376);
        while (1)
        {
          if (!v45 || (v46 = *v45, v46 > 0x3F))
          {
LABEL_88:
            v47 = 257;
            goto LABEL_175;
          }

          if (!*v45)
          {
            break;
          }

          v45 += v46 + 1;
          if (&v45[-v44] >= 256)
          {
            goto LABEL_88;
          }
        }

        v47 = (v45 - v44 + 1);
      }

LABEL_175:
      v82 = DNSTypeName(*(a2 + 342));
      v84 = 67110147;
      v85 = v43;
      v86 = 2160;
      v87 = 1752392040;
      v88 = 1040;
      v89 = v47;
      v90 = 2101;
      v91 = a2 + 376;
      v92 = 2082;
      v93 = v82;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[R%u] QueryRecordOpCallback: Question %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) answering local with negative unicast response", &v84, 0x2Cu);
LABEL_42:
      if (a4 == 1)
      {
        v30 = 0;
        *(v8 + 758) = 1;
        goto LABEL_135;
      }

LABEL_115:
      v30 = 0;
      if (a4)
      {
        goto LABEL_135;
      }

      goto LABEL_139;
    }

    v56 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
      {
        v57 = *(v8 + 728);
        v63 = a2 + 376;
        v64 = (a2 + 376);
        while (1)
        {
          if (!v64 || (v65 = *v64, v65 > 0x3F))
          {
LABEL_123:
            v61 = 257;
            goto LABEL_171;
          }

          if (!*v64)
          {
            break;
          }

          v64 += v65 + 1;
          if (&v64[-v63] >= 256)
          {
            goto LABEL_123;
          }
        }

        v61 = (v64 - v63 + 1);
        goto LABEL_171;
      }
    }

    else
    {
      v56 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
      {
        v57 = *(v8 + 728);
        v58 = a2 + 376;
        v59 = (a2 + 376);
        while (1)
        {
          if (!v59 || (v60 = *v59, v60 > 0x3F))
          {
LABEL_111:
            v61 = 257;
            goto LABEL_171;
          }

          if (!*v59)
          {
            break;
          }

          v59 += v60 + 1;
          if (&v59[-v58] >= 256)
          {
            goto LABEL_111;
          }
        }

        v61 = (v59 - v58 + 1);
LABEL_171:
        v84 = 67110147;
        v85 = v57;
        v86 = 2160;
        v87 = 1752392040;
        v88 = 1040;
        v89 = v61;
        v90 = 2101;
        v91 = a2 + 376;
        v92 = 1024;
        LODWORD(v93) = v40;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "[R%u] Restarting question for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P AAAA record as question for A record (RCODE %d)", &v84, 0x28u);
      }
    }

    resolved_cache_delete(a2);
    mDNS_StopQuery(mDNSStorage, a2);
    *(a2 + 176) = 0;
    *(a2 + 342) = 1;
    QueryRecordOpStartQuestion(v8, a2);
    return;
  }

  if (*(a3 + 2) != 5)
  {
    goto LABEL_29;
  }

  if (a3[2] == 2)
  {
    *(v8 + 760) = 1;
  }

  if (*(a2 + 635) || *(a2 + 342) == 5)
  {
    goto LABEL_29;
  }
}

void QueryRecordOpStopQuestion(uint64_t a1)
{
  resolved_cache_delete(a1);
  mDNS_StopQuery(mDNSStorage, a1);
  *(a1 + 176) = 0;
}

BOOL GetAddrInfoClientRequestIsMulticast(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = 1;
  if (!v1 || *(v1 + 340) || *(v1 + 212) <= 0)
  {
    v2 = *(a1 + 24);
    if (!v2 || *(v2 + 340) || *(v2 + 212) <= 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t QueryRecordClientRequestStart(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  memset(v31, 0, 256);
  if (*(a2 + 68))
  {
    RecordOpStart = 4294901741;
    if (!*(a2 + 9))
    {
      goto LABEL_9;
    }

    v9 = xpc_copy_entitlement_for_token();
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = v9;
    xpc_release(v9);
    if (v10 != &_xpc_BOOL_true)
    {
      goto LABEL_9;
    }

    v11 = *(a2 + 6);
    if (!v11)
    {
      RecordOpStart = 4294901756;
      goto LABEL_9;
    }

    Querier_RegisterPathResolver(v11);
  }

  v25 = 0;
  v12 = InterfaceIndexToInterfaceID(a2[4], &v25);
  if (v12)
  {
    RecordOpStart = v12;
LABEL_9:
    QueryRecordClientRequestStop(a1);
    return RecordOpStart;
  }

  v14 = *(a2 + 1);
  v31[0] = 0;
  if (!AppendDNSNameString(v31, v14))
  {
    v19 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      RecordOpStart = 4294901756;
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      RecordOpStart = 4294901756;
      v19 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    v21 = *a2;
    v22 = *(a2 + 1);
    *buf = 67109635;
    *&buf[4] = v21;
    *&buf[8] = 2160;
    *&buf[10] = 1752392040;
    *&buf[18] = 2085;
    *&buf[20] = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[R%u] ERROR: bad domain name '%{sensitive, mask.hash}s'", buf, 0x1Cu);
    goto LABEL_9;
  }

  v15 = *(a2 + 12);
  if (v15 != 28 && v15 != 1)
  {
    goto LABEL_34;
  }

  v16 = 0;
  v17 = *(a2 + 1);
  while (1)
  {
    v18 = *v17++;
    if (v18 == 46)
    {
      break;
    }

    if (v18 == 92)
    {
      ++v16;
    }

    else
    {
      if (!*(v17 - 1))
      {
        goto LABEL_28;
      }

LABEL_21:
      v16 = 0;
    }
  }

  if (*v17)
  {
    goto LABEL_21;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  if (AlwaysAppendSearchDomains || v31[0] && !v31[v31[0] + 1])
  {
    v20 = 1;
  }

  else
  {
LABEL_34:
    v20 = 0;
  }

  memset(buf, 0, sizeof(buf));
  memset(v30, 0, sizeof(v30));
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  *buf = *a2;
  *&buf[8] = v31;
  v23 = a2[5];
  LODWORD(v27) = -1;
  DWORD1(v27) = v23;
  *&buf[16] = v15;
  *&buf[18] = *(a2 + 13);
  *&buf[24] = v25;
  BYTE8(v27) = v20;
  HIDWORD(v27) = a2[7];
  *&v28 = *(a2 + 4);
  DWORD2(v28) = a2[10];
  v24 = *(a2 + 7);
  *&v29 = *(a2 + 6);
  *(&v29 + 1) = v24;
  LODWORD(v30[0]) = a2[16];
  WORD2(v30[0]) = *(a2 + 34);
  *(v30 + 8) = *(a2 + 18);
  WORD6(v28) = *(a2 + 44);
  BYTE8(v30[1]) = *(a2 + 90);
  RecordOpStart = QueryRecordOpStart(a1, buf, a3, a4);
  if (RecordOpStart)
  {
    goto LABEL_9;
  }

  return RecordOpStart;
}

void QueryRecordClientRequestStop(uint64_t a1)
{
  QueryRecordOpStop(a1);
  if (*(a1 + 758))
  {
    v2 = *(a1 + 342);
    if (v2 == 1)
    {
      v3 = a1;
    }

    else
    {
      v3 = 0;
    }

    if (v2 == 28)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    mDNSPlatformTriggerDNSRetry(v3, v4);
  }
}

char *DNSProxyGetStateHandler()
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  if (gProxyManager && CFArrayGetCount(*(gProxyManager + 24)))
  {
    v0 = (gProxyManager + 16);
    while (1)
    {
      v0 = *v0;
      if (!v0)
      {
        goto LABEL_9;
      }

      v1 = v0[3];
      if (v1)
      {
        v2 = v1();
        goto LABEL_10;
      }
    }
  }

  v2 = strdup("‹No DNS Proxies›");
  if (!v2)
  {
    __break(1u);
LABEL_9:
    v2 = 0;
  }

LABEL_10:
  KQueueUnlock("DNSProxyGetStateHandler");
  return v2;
}

uint64_t DNSProxyStopHandler(const void *a1)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  if (gProxyManager)
  {
    Count = CFArrayGetCount(*(gProxyManager + 24));
    v3 = gProxyManager;
    v4 = CFArrayGetCount(*(gProxyManager + 24));
    if (v4 < 1)
    {
LABEL_6:
      v7 = 4294960569;
    }

    else
    {
      v5 = v4;
      v6 = 0;
      while (CFArrayGetValueAtIndex(*(v3 + 24), v6) != a1)
      {
        if (v5 == ++v6)
        {
          goto LABEL_6;
        }
      }

      CFArrayRemoveValueAtIndex(*(v3 + 24), v6);
      if (Count)
      {
        if (!CFArrayGetCount(*(gProxyManager + 24)))
        {
          v8 = &dp_listener;
          v9 = 4;
          do
          {
            mdns_socket_forget(v8);
            v8 = (v8 + 4);
            --v9;
          }

          while (v9);
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformCloseDNSProxySkts: Closing DNS Proxy Listener Sockets");
          }
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 4294901754;
  }

  KQueueUnlock("DNSProxyStopHandler");
  return v7;
}

uint64_t DNSProxyStartHandler(const void *a1)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  v2 = gProxyManager;
  if (gProxyManager)
  {
    goto LABEL_16;
  }

  v3 = _os_object_alloc();
  if (!v3)
  {
    gProxyManager = 0;
    v8 = 4294960568;
    goto LABEL_18;
  }

  v4 = v3;
  v5 = &_mrcs_dns_proxy_manager_kind;
  *(v3 + 16) = &_mrcs_dns_proxy_manager_kind;
  do
  {
    v6 = v5[2];
    if (v6)
    {
      v6(v4);
    }

    v5 = *v5;
  }

  while (v5);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mrcs_cfarray_callbacks);
  v4[3] = Mutable;
  if (Mutable)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  if (Mutable)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4294960567;
  }

  if (!Mutable)
  {
    os_release(v4);
  }

  gProxyManager = v2;
  if (!v8)
  {
LABEL_16:
    Count = CFArrayGetCount(*(v2 + 24));
    v10 = gProxyManager;
    v11 = *(gProxyManager + 24);
    *&v23 = _NSConcreteStackBlock;
    *(&v23 + 1) = 0x40000000;
    v24 = ___mrcs_dns_proxy_manager_conflicts_with_proxy_block_invoke;
    v25 = &__block_descriptor_tmp_17_4133;
    v26 = a1;
    if (mdns_cfarray_enumerate(v11, &v23))
    {
      CFArrayAppendValue(*(v10 + 24), a1);
      v8 = 0;
      if (Count)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = 4294960537;
      if (Count)
      {
        goto LABEL_18;
      }
    }

    if (!CFArrayGetCount(*(gProxyManager + 24)))
    {
      goto LABEL_18;
    }

    v13 = socket(2, 2, 17);
    LODWORD(v23) = v13;
    v14 = socket(30, 2, 17);
    DWORD1(v23) = v14;
    v15 = socket(2, 1, 6);
    DWORD2(v23) = v15;
    v16 = socket(30, 1, 6);
    HIDWORD(v23) = v16;
    if ((v13 & 0x80000000) == 0 && (v14 & 0x80000000) == 0 && (v15 & 0x80000000) == 0)
    {
      v17 = v16;
      if ((v16 & 0x80000000) == 0)
      {
        BindDPSocket(v13, 2, 2);
        BindDPSocket(v14, 30, 2);
        BindDPSocket(v15, 2, 1);
        BindDPSocket(v17, 30, 1);
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInitDNSProxySkts: Opened Listener Sockets for DNS Proxy : %d, %d, %d, %d", v13, v14, v15, v17);
        }

        v18 = mDNSStorage[0];
        *(mDNSStorage[0] + 976) = ProxyUDPCallback;
        *(v18 + 984) = ProxyTCPCallback;
        *(v18 + 704) = 13568;
        *(v18 + 872) = mDNSStorage;
        *(v18 + 800) = 13568;
        *(v18 + 960) = mDNSStorage;
        *(v18 + 888) = 13568;
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: %d, %d, %d, %d", v13, v14, v15, v17);
        *(v18 + 792) = 1;
        if (SetupUDPProxySocket(v13, v18 + 704, 2))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! UDPv4 Socket");
        }

        if (SetupUDPProxySocket(v14, v18 + 704, 30))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! UDPv6 Socket");
        }

        if (SetupTCPProxySocket(v15, v18 + 800))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! TCPv4 Socket");
        }

        if (SetupTCPProxySocket(v17, v18 + 888))
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupDNSProxySkts: ERROR!! TCPv6 Socket");
        }

        dp_listener = v23;
        goto LABEL_18;
      }
    }

    v19 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_43;
      }

      *buf = 0;
    }

    else
    {
      v19 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_43;
      }

      *buf = 0;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "mDNSPlatformInitDNSProxySkts: Failed to create listening sockets", buf, 2u);
LABEL_43:
    v20 = &v23;
    v21 = 4;
    do
    {
      mdns_socket_forget(v20);
      v20 = (v20 + 4);
      --v21;
    }

    while (v21);
  }

LABEL_18:
  KQueueUnlock("DNSProxyStartHandler");
  return v8;
}

void ProxyTCPCallback(unsigned __int16 *a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, _DWORD *a9)
{
  v10 = a5;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPCallback: DNS Message from %#a:%d to %#a:%d length %d", *&a4, bswap32(a5) >> 16, *&a6, bswap32(a7) >> 16, a3 - a2);
  }

  if (a3 != a2 && gProxyManager && mrcs_dns_proxy_manager_get_proxy_by_input_interface(*(gProxyManager + 24), a8))
  {

    ProxyCallbackCommon(a1, a2, a3, a4, v10, a8, 1, a9);
  }

  else
  {
    v15 = &DNSProxyClients;
    v16 = &DNSProxyClients;
    while (1)
    {
      v17 = v16;
      v16 = v15;
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15[5] == a1)
      {
        *v17 = *v15;
        if (mDNS_LoggingEnabled == 1)
        {
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPCallback: free");
        }

        mDNSPlatformDisposeProxyContext(a1);
        v18 = *v16;

        FreeDNSProxyClient(v18);
        return;
      }
    }

    mDNSPlatformDisposeProxyContext(a1);
    v19 = mDNSLogCategory_Default;

    LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "ProxyTCPCallback: socket cannot be found");
  }
}

void FreeDNSProxyClient(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[132];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[133];
  if (v4)
  {
    os_release(v4);
  }

  free(a1);
}

void ProxyCallbackCommon(unsigned __int16 *a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4, unsigned int a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  if (!gProxyManager || (v10 = a7, (proxy_by_input_interface = mrcs_dns_proxy_manager_get_proxy_by_input_interface(*(gProxyManager + 24), a6)) == 0))
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Rejecting DNS Query coming from InterfaceID %p", a4);
    return;
  }

  if (((a3 - a2) & 0xFFFFFFFC) >= 0xCuLL)
  {
    v17 = __rev16(*(a2 + 2));
    *(a2 + 2) = v17;
    v18 = __rev16(*(a2 + 3));
    *(a2 + 3) = v18;
    v19 = __rev16(*(a2 + 4));
    *(a2 + 4) = v19;
    *(a2 + 5) = bswap32(*(a2 + 5)) >> 16;
    if ((a2[2] & 0xF8) != 0)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Not a query(%d) for pkt from %#a:%d", a2[2] & 0xF8, *&a4, bswap32(a5) >> 16);
      }

      v20 = 4;
      goto LABEL_25;
    }

    if (v17 != 1 || v18 || v19)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Malformed pkt from %#a:%d, Q:%d, An:%d, Au:%d");
      }
    }

    else
    {
      v21 = proxy_by_input_interface;
      bzero(v55, 0x2B8uLL);
      if (getQuestion(a2, a2 + 12, a3, a6, v55))
      {
        if (mDNS_LoggingEnabled)
        {
          v51 = mDNSLogCategory_Default;
          v22 = DNSTypeName(v56);
          LogMsgWithLevel(v51, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Question %##s (%s)", v58, v22);
        }

        OptRR = LocateOptRR(a2, a3, 0);
        v52 = OptRR;
        if (OptRR)
        {
          v24 = a3;
          v25 = OptRR;
          v26 = skipResourceRecord(a2, OptRR, v24);
          if (v26)
          {
            v27 = (v26 - v25);
            v50 = v27;
            if (mDNS_LoggingEnabled == 1)
            {
              v49 = mDNSLogCategory_Default;
              v28 = DNSTypeName(v56);
              LogMsgWithLevel(v49, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: EDNS0 opt length %u present in Question %##s (%s)", v27, v58, v28);
            }

LABEL_32:
            v30 = DNSProxyClients;
            if (DNSProxyClients)
            {
              v31 = *a2;
              while (!mDNSSameAddress((v30 + 8), a4) || *(v30 + 28) != a5 || *(v30 + 30) != v31 || *(v30 + 1032) != v56 || *(v30 + 680) != v57 || !SameDomainNameBytes((v30 + 80), v58))
              {
                v30 = *v30;
                if (!v30)
                {
                  goto LABEL_41;
                }
              }

              if (mDNS_LoggingEnabled)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "IsDuplicateClient: Found a duplicate client in the list");
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Found a duplicate for pkt from %#a:%d, ignoring this", v43, v44, v45, v46, v47);
                }
              }

              return;
            }

LABEL_41:
            v32 = malloc_type_calloc(1uLL, 0x430uLL, 0xA6D92F01uLL);
            if (v32)
            {
              v33 = v32;
              DNSProxyPrepareOmsg(0x1F4u, v32);
              *(v33 + 1064) = v21;
              os_retain(v21);
              v34 = a4[4];
              *(v33 + 8) = *a4;
              *(v33 + 24) = v34;
              *(v33 + 28) = a5;
              *(v33 + 30) = *a2;
              *(v33 + 32) = a6;
              *(v33 + 40) = a1;
              *(v33 + 48) = v10;
              *(v33 + 50) = *(a2 + 1);
              *(v33 + 72) = a8;
              v35 = v58;
              do
              {
                if (!v35)
                {
                  break;
                }

                v36 = *v35;
                if (v36 > 0x3F)
                {
                  break;
                }

                if (!*v35)
                {
                  v37 = v35 - v58 + 1;
                  if (v37 <= 0x100u)
                  {
                    memcpy((v33 + 80), v58, v37);
                    goto LABEL_51;
                  }

                  break;
                }

                v35 += v36 + 1;
              }

              while (v35 - v58 <= 255);
              *(v33 + 80) = 0;
LABEL_51:
              if (!v52)
              {
                goto LABEL_57;
              }

              if (v50 <= 0xA)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Invalid EDNS0 option for pkt from %#a:%d, ignoring this", *&a4, bswap32(a5) >> 16);
                }

                goto LABEL_57;
              }

              *(v33 + 68) = bswap32(*(v52 + 3)) >> 16;
              v38 = malloc_type_malloc(v50, 0x1A2F9D09uLL);
              if (v38)
              {
                *(v33 + 56) = v38;
                memcpy(v38, v52, v50);
                *(v33 + 64) = v50;
LABEL_57:
                mDNS_SetupQuestion(v33 + 336, *(*(v33 + 1064) + 64), v58, v56, v33);
                *(v33 + 973) = 1;
                *(v33 + 971) = 1;
                *(v33 + 989) = 1;
                *(v33 + 682) = 0;
                v39 = *(v33 + 1064);
                *(v33 + 584) = *(v39 + 72);
                v40 = *(v33 + 678);
                *(v33 + 1032) = v40;
                if (*(v39 + 76))
                {
                  if (v40 == 28)
                  {
                    if (*(v39 + 77) == 1)
                    {
                      *(v33 + 1036) = 1;
                      *(v33 + 678) = 1;
                    }
                  }

                  else if (v40 == 12)
                  {
                    v53 = 0uLL;
                    if (GetReverseIPv6Addr((v33 + 80), &v53))
                    {
                      if (nw_nat64_extract_v4())
                      {
                        memset(v54, 0, 30);
                        mDNS_snprintf(v54, 30, "%u.%u.%u.%u.in-addr.arpa.", 0, 0, 0, 0);
                        *(v33 + 712) = 0;
                        AppendDNSNameString((v33 + 712), v54);
                        *(v33 + 536) = DomainNameHashValue(v33 + 712);
                        *(v33 + 1036) = 2;
                      }
                    }
                  }
                }

                v41 = &DNSProxyClients;
                do
                {
                  v42 = v41;
                  v41 = *v41;
                }

                while (v41);
                *v42 = v33;
                mDNS_StartQuery(mDNSStorage, v33 + 336);
                return;
              }
            }

            __break(1u);
            return;
          }

          if (mDNS_LoggingEnabled == 1)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: EDNS0 cannot be parsed for pkt from %#a:%d, ignoring");
          }
        }

        else if (mDNS_LoggingEnabled == 1)
        {
          v29 = mDNSLogCategory_Default;
          v48 = DNSTypeName(v56);
          LogMsgWithLevel(v29, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: EDNS0 opt not present in Question %##s (%s), ptr %p", v58, v48, 0);
        }

        v50 = 0;
        goto LABEL_32;
      }

      if (mDNS_LoggingEnabled)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyCallbackCommon: Question cannot be parsed for pkt from %#a:%d");
      }
    }

    v20 = 1;
LABEL_25:
    SendError(a1, a2, a3, a4, a5, a6, v10, a8, v20);
  }
}

void SendError(unsigned __int16 *a1, uint64_t a2, int a3, unsigned int *a4, unsigned __int16 a5, uint64_t a6, int a7, _DWORD *a8, char a9)
{
  if (a3 - a2 >= 8940)
  {
    v15 = 8940;
  }

  else
  {
    v15 = a3 - a2;
  }

  v16 = *(a2 + 8);
  qword_100174338 = *a2;
  dword_100174340 = v16;
  BYTE2(qword_100174338) |= 0x80u;
  BYTE3(qword_100174338) = a9;
  memcpy(&unk_100174344, (a2 + 12), (v15 - 12));
  v17 = &qword_100174338 + v15;
  if (a7)
  {
    mDNSSendDNSMessage(mDNSStorage, (mDNSStorage + &loc_100007120), v17, a6, a1, 0, a4, a5, 0, 0);
  }

  else
  {
    mDNSSendDNSMessage(mDNSStorage, (mDNSStorage + &loc_100007120), v17, a6, 0, a1, a4, a5, 0, 0);
  }

  mDNSPlatformDisposeProxyContext(a8);
}

void DNSProxyPrepareOmsg(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 12;
  if (*(a2 + 1056))
  {
    v5 = malloc_type_calloc(1uLL, v4, 0xCDE2E1E3uLL);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 1056);
      v8 = *(a2 + 1040) - v7 - 12;
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "DNSProxyPrepareOmsg: Preserving offset %ld in size %d", *(a2 + 1040) - v7 - 12, *(a2 + 1048));
        v7 = *(a2 + 1056);
      }

      if (*(a2 + 1048) + 12 >= v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = *(a2 + 1048) + 12;
      }

      memcpy(v6, v7, v9);
      v10 = *(a2 + 1056);
      if (v10)
      {
        free(v10);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v11 = malloc_type_calloc(1uLL, v4, 0x73B485AuLL);
    if (v11)
    {
      v6 = v11;
      v8 = 0;
LABEL_12:
      *(a2 + 1056) = v6;
      *(a2 + 1048) = v3;
      *(a2 + 1040) = &v6[v8 + 12];
      return;
    }
  }

  __break(1u);
}

void ProxyClientCallback(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v4 = a2;
  v6 = *a3 == 240 || *(a3 + 2) == *(a2 + 342);
  v79 = v6;
  if (!a4)
  {
    return;
  }

  v7 = *(a2 + 176);
  if (mDNS_LoggingEnabled == 1)
  {
    v8 = mDNSLogCategory_Default;
    v9 = DNSTypeName(*(v7 + 1032));
    LogMsgWithLevel(v8, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: %##s (%s)", v7 + 80, v9);
  }

  v10 = *(v7 + 1036);
  if (*(*(v7 + 1064) + 76) == 1)
  {
    if (v10 != 4)
    {
      if (v10 != 2)
      {
        if (!v10 && *a3 == 240 && *(v4 + 342) == 28 && *(a3 + 2) == 28 && *(a3 + 3) == 1)
        {
          mDNS_StopQuery(a1, v4);
          *(v7 + 1036) = 1;
          *(v4 + 342) = 1;

          mDNS_StartQuery(a1, v4);
          return;
        }

        goto LABEL_19;
      }

      if (*a3 != 240 && *(v4 + 342) == 12 && *(a3 + 2) == 12 && *(a3 + 3) == 1)
      {
        *(v7 + 1036) = 3;
        goto LABEL_19;
      }

      *(v7 + 1036) = 4;
    }

LABEL_130:
    v63 = *(v7 + 1056);
    *v63 = *(v7 + 30);
    *(v63 + 2) = 896;
    *(v63 + 4) = 0;
    v44 = putQuestion(*(v7 + 1056), (*(v7 + 1056) + 12), *(v7 + 1056) + 12 + *(v7 + 1048), (v7 + 80), *(v7 + 1032), *(v7 + 680));
    if (v44)
    {
      v64 = 1;
    }

    else
    {
      v64 = mDNS_LoggingEnabled == 0;
    }

    if (!v64)
    {
      v65 = mDNSLogCategory_Default;
      v66 = DNSTypeName(*(v7 + 1032));
      LogMsgWithLevel(v65, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: putQuestion NULL for %##s (%s)", v7 + 80, v66);
      v44 = 0;
    }

    goto LABEL_140;
  }

  if (v10 == 4)
  {
    goto LABEL_130;
  }

LABEL_19:
  v77 = v4;
  __src = (v7 + 712);
  v11 = (v7 + 80);
  v12 = *(v7 + 1056);
  v81 = *(v7 + 1040);
  v83 = (v7 + 80);
  while (1)
  {
    v90 = *v12;
    v91 = *(v12 + 2);
    v92 = 0;
    mDNS_Lock_(mDNSStorage, "AddResourceRecord", 305);
    v84 = dword_10016D258;
    mDNS_Unlock_(mDNSStorage, "AddResourceRecord", 307);
    if (*(v7 + 48))
    {
      v13 = *(v7 + 1048);
    }

    else
    {
      v14 = *(v7 + 68);
      v13 = *(v7 + 1048);
      if ((v14 - 1) < v13)
      {
        goto LABEL_24;
      }
    }

    v14 = v13;
LABEL_24:
    v15 = *(v7 + 1056) + v14 + 12;
    if (mDNS_LoggingEnabled == 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Limit is %d", v15 - *(v7 + 1040));
    }

    v16 = CacheGroupForName(mDNSStorage, *(v7 + 536), __src);
    if (v16)
    {
      v80 = v12;
      v17 = v16[2];
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 12;
        v82 = v15;
        while (1)
        {
          v21 = (v17 + 8);
          if (SameNameRecordAnswersQuestion((v17 + 8), 0, v7 + 336))
          {
            v22 = *(v7 + 1056);
            if (*(v22 + 4))
            {
              if (!v19)
              {
                v19 = *(v7 + 1040);
              }
            }

            else
            {
              v23 = *(v17 + 110) & 0xFE | *(v7 + 50) & 1 | ((*(v7 + 51) & 0x10 | HIBYTE(*(v17 + 110)) & 0xFFFFFFEF) << 8);
              *v22 = *(v7 + 30);
              *(v22 + 2) = v23;
              *(v22 + 4) = 0;
              v24 = putQuestion(*(v7 + 1056), (*(v7 + 1056) + 12), v15, v83, *(v7 + 1032), *(v7 + 680));
              if (!v24)
              {
                if (mDNS_LoggingEnabled == 1)
                {
                  v45 = mDNSLogCategory_Default;
                  v46 = DNSTypeName(*(v7 + 1032));
                  v11 = (v7 + 80);
                  LogMsgWithLevel(v45, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: putQuestion NULL for %##s (%s)", v83, v46);
                  v29 = 0;
                  goto LABEL_89;
                }

                v29 = 0;
LABEL_91:
                v43 = 1;
                v11 = (v7 + 80);
                goto LABEL_92;
              }

              v19 = v24;
              v20 += v24 - *(v7 + 1040);
              *(v7 + 1040) = v24;
              if (*(v7 + 1036) == 3)
              {
                v106 = 0u;
                memset(v107, 0, sizeof(v107));
                v104 = 0u;
                v105 = 0u;
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                memset(v93, 0, sizeof(v93));
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                LOBYTE(v86) = -64;
                DWORD1(v86) = 65541;
                v25 = (v7 + 712);
                v88 = v83;
                do
                {
                  if (!v25)
                  {
                    break;
                  }

                  v26 = *v25;
                  if (v26 > 0x3F)
                  {
                    break;
                  }

                  if (!*v25)
                  {
                    v27 = v25 - __src + 1;
                    if (v27 <= 0x100u)
                    {
                      memcpy(v93 + 4, __src, v27);
                    }

                    break;
                  }

                  v25 += v26 + 1;
                }

                while (v25 - __src <= 255);
                LOWORD(v93[0]) = 264;
                *(&v88 + 1) = v93;
                v28 = PutResourceRecordTTLWithLimit(*(v7 + 1056), v19, (*(v7 + 1056) + 6), &v86, 0, v15);
                v29 = *(v7 + 1040);
                if (!v28)
                {
                  goto LABEL_91;
                }

                v19 = v28;
                v20 += v28 - v29;
                *(v7 + 1040) = v28;
              }
            }

            if (*v21 == 240)
            {
              v30 = 1;
            }

            else
            {
              v106 = 0u;
              memset(v107, 0, sizeof(v107));
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              v94 = 0u;
              v95 = 0u;
              memset(v93, 0, sizeof(v93));
              v88 = 0u;
              v89 = 0u;
              v31 = *(*(v7 + 1064) + 76);
              v32 = (v17 + 8);
              v86 = 0uLL;
              v87 = 0uLL;
              if (v31)
              {
                v32 = (v17 + 8);
                if (*(v7 + 1036) == 1)
                {
                  v32 = (v17 + 8);
                  if (*(v17 + 12) == 1)
                  {
                    v33 = *(v17 + 24);
                    v86 = *v21;
                    v87 = v33;
                    v34 = *(v17 + 56);
                    *&v88 = *(v17 + 40);
                    v89 = v34;
                    WORD2(v86) = 28;
                    WORD6(v86) = 16;
                    LOWORD(v93[0]) = 16;
                    *(&v88 + 1) = v93;
                    if (!nw_nat64_synthesize_v6())
                    {
                      goto LABEL_64;
                    }

                    *(v93 + 4) = 0uLL;
                    v32 = &v86;
                  }
                }
              }

              if (mDNS_LoggingEnabled == 1)
              {
                v35 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb(v32, (*(v32 + 5) + 4), word_1001789D0);
                v15 = v82;
                LogMsgWithLevel(v35, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Answering question with %s", word_1001789D0);
              }

              v36 = -274877907 * (v84 - *(v17 + 80));
              v37 = PutResourceRecordTTLWithLimit(*(v7 + 1056), v19, (*(v7 + 1056) + 6), v32, (v36 >> 38) + (v36 >> 63) + *(v17 + 16), v15);
              v29 = *(v7 + 1040);
              if (!v37)
              {
                goto LABEL_91;
              }

              v19 = v37;
              v20 += v37 - v29;
              *(v7 + 1040) = v37;
              v30 = *(v17 + 12) != 5;
            }

            if (*(v17 + 120))
            {
              v18 = *(v17 + 120);
              if (mDNS_LoggingEnabled == 1)
              {
                v38 = mDNSLogCategory_Default;
                GetRRDisplayString_rdb((v17 + 8), (*(v17 + 48) + 4), word_1001789D0);
                LogMsgWithLevel(v38, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: soa set for %s", word_1001789D0);
                v18 = *(v17 + 120);
              }
            }

            v39 = *(v17 + 12);
            if (*(v7 + 678) != v39 && v39 == 5 && mDNS_LoggingEnabled)
            {
              v40 = mDNSLogCategory_Default;
              GetRRDisplayString_rdb((v17 + 8), (*(v17 + 48) + 4), word_1001789D0);
              v15 = v82;
              LogMsgWithLevel(v40, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: cname set for %s", word_1001789D0);
            }

            if (!v30)
            {
LABEL_65:
              if (v18)
              {
                v11 = (v7 + 80);
                if (mDNS_LoggingEnabled == 1)
                {
                  v41 = mDNSLogCategory_Default;
                  GetRRDisplayString_rdb((v18 + 8), (*(v18 + 48) + 4), word_1001789D0);
                  v15 = v82;
                  LogMsgWithLevel(v41, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: SOA Answering question with %s", word_1001789D0);
                }

                v42 = PutResourceRecordTTLWithLimit(*(v7 + 1056), v19, (*(v7 + 1056) + 8), v18 + 8, *(v18 + 16), v15);
                v29 = *(v7 + 1040);
                if (v42)
                {
                  v19 = v42;
                  v20 += v42 - v29;
                  *(v7 + 1040) = v42;
                  goto LABEL_74;
                }

                goto LABEL_89;
              }

              v11 = (v7 + 80);
              if (!v19)
              {
                break;
              }

LABEL_74:
              if (v79 && *(v7 + 68))
              {
                v44 = v19 + 11;
                if ((v19 + 11) <= v15)
                {
                  ++*(*(v7 + 1056) + 10);
                  *v19 = 271122432;
                  *(v19 + 7) = 0;
                  if (mDNS_LoggingEnabled == 1)
                  {
                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddEDNS0 option added to response");
                  }
                }

                else
                {
                  if ((mDNS_LoggingEnabled & 1) == 0)
                  {
                    v29 = *(v7 + 1040);
                    goto LABEL_89;
                  }

                  v44 = 0;
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddEDNS0Option: not enough space");
                }

                v29 = *(v7 + 1040);
                if (!v44)
                {
LABEL_89:
                  v43 = 1;
                  goto LABEL_92;
                }

                v20 += v44 - v29;
                *(v7 + 1040) = v44;
              }

              else
              {
                v44 = v19;
              }

              v4 = v77;
              if (mDNS_LoggingEnabled == 1)
              {
                LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Added %d bytes to the packet", v20);
              }

              goto LABEL_139;
            }
          }

LABEL_64:
          v17 = *v17;
          if (!v17)
          {
            goto LABEL_65;
          }
        }
      }

      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: Did not find any valid ResourceRecords");
      }

      v29 = 0;
      v43 = 0;
LABEL_92:
      v12 = v80;
    }

    else
    {
      if (mDNS_LoggingEnabled == 1)
      {
        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddResourceRecord: CacheGroup not found for %##s", __src);
      }

      v29 = 0;
      v43 = 0;
    }

    if (*(v7 + 48))
    {
      v47 = 8940;
    }

    else
    {
      v48 = *(v7 + 68);
      if (*(v7 + 68))
      {
        v49 = v48 - 12 >= 0x22EC ? 8940 : (v48 - 12);
        v47 = v48 <= 0xC ? 500 : v49;
      }

      else
      {
        v47 = 500;
      }
    }

    if (*(v7 + 1048) >= v47)
    {
      break;
    }

    if (mDNS_LoggingEnabled == 1)
    {
      v50 = mDNSLogCategory_Default;
      v51 = DNSTypeName(*(v7 + 1032));
      LogMsgWithLevel(v50, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: Increase omsg buffer size to %d for %##s (%s)", v47, v11, v51);
    }

    v52 = v81 - v12 - 12;
    DNSProxyPrepareOmsg(v47, v7);
    v53 = *(v7 + 1056);
    *v53 = v90;
    *(v53 + 8) = v91;
    v12 = *(v7 + 1056);
    v81 = v12 + v52 + 12;
    *(v7 + 1040) = v81;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v54 = mDNSLogCategory_Default;
    v55 = DNSTypeName(*(v7 + 1032));
    LogMsgWithLevel(v54, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: AddResourceRecord NULL for %##s (%s)", v11, v55);
  }

  if (v29)
  {
    v56 = v43;
  }

  else
  {
    v56 = 0;
  }

  v4 = v77;
  if (v56 == 1)
  {
    if (*(v7 + 48))
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v57 = mDNSLogCategory_Default;
        v58 = DNSTypeName(*(v7 + 1032));
        LogMsgWithLevel(v57, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: ERROR!! Not enough space to return in TCP for %##s (%s)", v11, v58);
      }
    }

    else
    {
      *(*(v7 + 1056) + 2) |= 2u;
    }

    v44 = v29;
    goto LABEL_139;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: No response");
  }

  v59 = *(v7 + 682);
  if (!v59)
  {
    v59 = 640;
  }

  v60 = *(v7 + 1056);
  *v60 = *(v7 + 30);
  *(v60 + 2) = v59;
  *(v60 + 4) = 0;
  v44 = putQuestion(*(v7 + 1056), (*(v7 + 1056) + 12), *(v7 + 1056) + 12 + *(v7 + 1048), v11, *(v7 + 1032), *(v7 + 680));
  if (v44)
  {
LABEL_139:
    if (!v79)
    {
      if (mDNS_LoggingEnabled == 1)
      {
        v75 = mDNSLogCategory_Default;
        GetRRDisplayString_rdb(a3, (*(a3 + 5) + 4), (a1 + 47032));
        LogMsgWithLevel(v75, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: Received %s, not answering yet");
      }

      return;
    }

LABEL_140:
    v67 = *(v7 + 1056);
    v68 = *(v7 + 32);
    v69 = *(v7 + 40);
    v70 = *(v7 + 28);
    if (*(v7 + 48))
    {
      mDNSSendDNSMessage(a1, v67, v44, v68, v69, 0, (v7 + 8), v70, 0, 0);
    }

    else
    {
      mDNSSendDNSMessage(a1, v67, v44, v68, 0, v69, (v7 + 8), v70, 0, 0);
    }

    goto LABEL_143;
  }

  if (mDNS_LoggingEnabled == 1)
  {
    v61 = mDNSLogCategory_Default;
    v62 = DNSTypeName(*(v7 + 1032));
    LogMsgWithLevel(v61, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: putQuestion NULL for %##s (%s)", v11, v62);
  }

LABEL_143:
  mDNS_StopQuery(a1, v4);
  v71 = &DNSProxyClients;
  do
  {
    v72 = v71;
    v71 = *v71;
    if (v71)
    {
      v73 = v71 == v7;
    }

    else
    {
      v73 = 1;
    }
  }

  while (!v73);
  if (v71)
  {
    *v72 = *v7;
    mDNSPlatformDisposeProxyContext(*(v7 + 72));
    FreeDNSProxyClient(v7);
  }

  else
  {
    v74 = mDNSLogCategory_Default;
    v76 = DNSTypeName(*(v4 + 342));
    LogMsgWithLevel(v74, OS_LOG_TYPE_DEFAULT, "ProxyClientCallback: question %##s (%s) not found", v4 + 376, v76);
  }
}

void ProxyUDPCallback(unsigned __int16 *a1, unsigned __int8 *a2, unint64_t a3, unsigned int *a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, _DWORD *a9)
{
  v10 = a5;
  if (mDNS_LoggingEnabled == 1)
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyUDPCallback: DNS Message from %#a:%d to %#a:%d length %d", *&a4, bswap32(a5) >> 16, *&a6, bswap32(a7) >> 16, a3 - a2);
  }

  ProxyCallbackCommon(a1, a2, a3, a4, v10, a8, 0, a9);
}

void dnssec_query_record_result_reply(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *(a2 + 144);
  if (!v4 || (*(v4 + 24) & 1) == 0)
  {
    v63 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v64 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v63 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v83 = "dns_question_is_primary_dnssec_requestor(question)";
    *&v83[8] = 2082;
    *&v83[10] = "";
    *&v83[18] = 2082;
    *v84 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    *&v84[8] = 1024;
    *v85 = 145;
    *&v85[4] = 2048;
    v86 = 0;
    v59 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
    goto LABEL_122;
  }

  if (a4 > 1)
  {
    return;
  }

  if (!*(a3 + 7))
  {
    v63 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v63 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v83 = "answer->dnssec != NULL";
    *&v83[8] = 2082;
    *&v83[10] = "";
    *&v83[18] = 2082;
    *v84 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    *&v84[8] = 1024;
    *v85 = 155;
    *&v85[4] = 2048;
    v86 = 0;
    v59 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
    goto LABEL_122;
  }

  v8 = *(v4 + 16);
  v9 = *(v8 + 64);
  v10 = &unk_100162000;
  v11 = &unk_10016D000;
  v12 = &unk_100178000;
  if (*(v9 + 96) == a2)
  {
    v63 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v63 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v83 = "!_is_insecure_validation_question(dnssec_context, question)";
    *&v83[8] = 2082;
    *&v83[10] = "";
    *&v83[18] = 2082;
    *v84 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    *&v84[8] = 1024;
    *v85 = 156;
    *&v85[4] = 2048;
    v86 = 0;
    v59 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
    goto LABEL_122;
  }

  v13 = a1;
  v80 = *(v8 + 40);
  v81 = *(v8 + 36);
  v14 = *(a1 + 20000);
  v15 = *(v8 + 56);
  if (v15 != v14)
  {
    if (v14)
    {
      ++*v14;
    }

    if (v15)
    {
      ref_count_obj_release(v15);
      v9 = *(v8 + 64);
    }

    *(v8 + 56) = v14;
  }

  *(v9 + 24) = bswap32(*(*(v8 + 24) + 340)) >> 16;
  v16 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      v22 = *(a3 + 4);
      if (v22)
      {
        v23 = *(a3 + 4);
        while (1)
        {
          if (!v23 || (v24 = *v23, v24 > 0x3F))
          {
LABEL_29:
            v25 = 257;
            goto LABEL_33;
          }

          if (!*v23)
          {
            break;
          }

          v23 += v24 + 1;
          if (&v23[-v22] >= 256)
          {
            goto LABEL_29;
          }
        }

        v25 = (v23 - v22 + 1);
      }

      else
      {
        v25 = 0;
      }

LABEL_33:
      v26 = *(a3 + 7);
      v73 = *a3 != 240;
      log = v25;
      v77 = v26 && !*(v26 + 32) && (*(v26 + 40) & 1) == 0 && *(v26 + 48) != 0;
      v27 = bswap32(*(a2 + 340));
      v28 = *(a3 + 3);
      v29 = v28 + 5;
      v79 = v13;
      if (v28 + 5) < 6 && ((0x2Du >> v29))
      {
        LODWORD(v28) = dword_10010DFA0[v29];
      }

      v30 = HIWORD(v27);
      v31 = *(a2 + 342);
      v32 = *(a3 + 2);
      v69 = a3[2];
      v71 = *(a3 + 2);
      actual_ttl = resource_record_get_actual_ttl(v79, a3);
      v34 = *(a3 + 7);
      if (v34)
      {
        LODWORD(v34) = *(v34 + 32) == 1;
      }

      *buf = 67112451;
      *v83 = v30;
      *&v83[4] = 2160;
      *&v83[6] = 1752392040;
      *&v83[14] = 1040;
      *&v83[16] = log;
      *v84 = 2101;
      *&v84[2] = v22;
      *v85 = 1024;
      *&v85[2] = v31;
      LOWORD(v86) = 1024;
      *(&v86 + 2) = v32;
      HIWORD(v86) = 1024;
      v87 = v73;
      v88 = 1024;
      v89 = v77;
      v90 = 1024;
      v91 = a4;
      v92 = 1024;
      v93 = v28;
      v94 = 1024;
      v95 = v69;
      v96 = 1024;
      v97 = v71;
      v98 = 1024;
      v99 = actual_ttl;
      v100 = 1024;
      v101 = v34;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Q%u] DNSSEC record changes - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, rrtype: %{mdns:rrtype}d, %{mdns:pos/neg}d, contains denial: %{mdns:yesno}d, %{mdns:addrmv}d, interface index: %d, motality: %{mdns:mortality}d, original ttl: %u, actual ttl: %u, validated: %{mdns:yesno}d.", buf, 0x5Eu);
      v12 = &unk_100178000;
      v11 = &unk_10016D000;
      v10 = &unk_100162000;
      v13 = v79;
    }
  }

  else
  {
    v17 = mDNSLogCategory_DNSSEC_redacted;
    if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
    {
      v18 = *(a3 + 4);
      if (v18)
      {
        v19 = *(a3 + 4);
        while (1)
        {
          if (!v19 || (v20 = *v19, v20 > 0x3F))
          {
LABEL_21:
            v21 = 257;
            goto LABEL_44;
          }

          if (!*v19)
          {
            break;
          }

          v19 += v20 + 1;
          if (&v19[-v18] >= 256)
          {
            goto LABEL_21;
          }
        }

        v21 = (v19 - v18 + 1);
      }

      else
      {
        v21 = 0;
      }

LABEL_44:
      v35 = *(a3 + 7);
      v72 = *a3 != 240;
      v74 = v21;
      v78 = v35 && !*(v35 + 32) && (*(v35 + 40) & 1) == 0 && *(v35 + 48) != 0;
      loga = v17;
      v36 = bswap32(*(a2 + 340));
      v37 = *(a3 + 3);
      v38 = v37 + 5;
      if (v37 + 5) < 6 && ((0x2Du >> v38))
      {
        v39 = v13;
        LODWORD(v37) = dword_10010DFB8[v38];
      }

      else
      {
        v39 = v13;
      }

      v40 = HIWORD(v36);
      v41 = *(a2 + 342);
      v42 = *(a3 + 2);
      v68 = a3[2];
      v70 = *(a3 + 2);
      v43 = resource_record_get_actual_ttl(v39, a3);
      v44 = *(a3 + 7);
      if (v44)
      {
        LODWORD(v44) = *(v44 + 32) == 1;
      }

      *buf = 67112451;
      *v83 = v40;
      *&v83[4] = 2160;
      *&v83[6] = 1752392040;
      *&v83[14] = 1040;
      *&v83[16] = v74;
      *v84 = 2101;
      *&v84[2] = v18;
      *v85 = 1024;
      *&v85[2] = v41;
      LOWORD(v86) = 1024;
      *(&v86 + 2) = v42;
      HIWORD(v86) = 1024;
      v87 = v72;
      v88 = 1024;
      v89 = v78;
      v90 = 1024;
      v91 = a4;
      v92 = 1024;
      v93 = v37;
      v94 = 1024;
      v95 = v68;
      v96 = 1024;
      v97 = v70;
      v98 = 1024;
      v99 = v43;
      v100 = 1024;
      v101 = v44;
      _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_INFO, "[Q%u] DNSSEC record changes - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, rrtype: %{mdns:rrtype}d, %{mdns:pos/neg}d, contains denial: %{mdns:yesno}d, %{mdns:addrmv}d, interface index: %d, motality: %{mdns:mortality}d, original ttl: %u, actual ttl: %u, validated: %{mdns:yesno}d.", buf, 0x5Eu);
      v12 = &unk_100178000;
      v11 = &unk_10016D000;
      v10 = &unk_100162000;
      v13 = v39;
    }
  }

  v45 = *(a3 + 7);
  if (v45)
  {
    v46 = *(v45 + 32);
    if (v46)
    {
      if (v46 == 1 && ((v81 & 1) != 0 || *a3 != 240 && (*(a3 + 2) != 5 || *(a2 + 342) == 5)))
      {
        v80(v13, a2, a3, a4);
      }

      return;
    }

    v47 = *(v8 + 64);
    if (a4 != 1)
    {
      dnssec_obj_validation_manager_remove_validated_cache(*(v8 + 64));
      v50 = *(v8 + 64);
      if (*a3 == 240)
      {
        v51 = 40;
      }

      else
      {
        v51 = 32;
      }

      v52 = *(v50 + v51);
      if (!v52)
      {
        goto LABEL_124;
      }

      v53 = dnssec_obj_rrset_remove_rr(v52, a3);
      if (!v53)
      {
        v54 = *(v50 + v51);
        if (!v54[4] && v54)
        {
          ref_count_obj_release(v54);
          *(v50 + v51) = 0;
        }

        *(v50 + 48) = 0xFFFFE5C200000000;
        *(v50 + 140) = 0;
        *(v50 + 144) = 0;
        if (*(a3 + 2) == 46)
        {
          *(v50 + 72) = 1;
        }

        goto LABEL_95;
      }

      if (v53 == -6727)
      {
LABEL_124:
        v57 = v11[12];
        if (!v10[256] || v57 == v12[435])
        {
          if (!os_log_type_enabled(v11[12], OS_LOG_TYPE_DEBUG))
          {
            return;
          }
        }

        else
        {
          v57 = mDNSLogCategory_DNSSEC_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
          {
            return;
          }
        }

        v66 = bswap32(*(a2 + 340)) >> 16;
        *buf = 67109120;
        *v83 = v66;
        v59 = "[Q%u] Added record not found due to possible primary DNSSEC question change";
        goto LABEL_99;
      }

      v67 = v53;
      v63 = v11[12];
      if (!v10[256] || v63 == v12[435])
      {
        if (!os_log_type_enabled(v11[12], OS_LOG_TYPE_FAULT))
        {
          return;
        }
      }

      else
      {
        v63 = mDNSLogCategory_DNSSEC_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
        {
          return;
        }
      }

      *buf = 136447234;
      *v83 = "err == 0";
      *&v83[8] = 2082;
      *&v83[10] = "";
      *&v83[18] = 2082;
      *v84 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
      *&v84[8] = 1024;
      *v85 = 207;
      *&v85[4] = 2048;
      v86 = v67;
      v59 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
LABEL_122:
      v60 = v63;
      v61 = OS_LOG_TYPE_FAULT;
      v62 = 48;
      goto LABEL_100;
    }

    *buf = 0;
    v48 = 32;
    if (*a3 == 240)
    {
      v48 = 40;
    }

    v49 = *(v47 + v48);
    if (v49)
    {
      ++*v49;
    }

    else
    {
      v49 = dnssec_obj_rrset_create(*(v47 + 16), *(v47 + 136), buf);
      if (*buf)
      {
LABEL_89:
        ref_count_obj_release(v49);
        v56 = *buf;
        if (*buf == -6730)
        {
          v57 = v11[12];
          if (!v10[256] || v57 == v12[435])
          {
            if (!os_log_type_enabled(v11[12], OS_LOG_TYPE_DEBUG))
            {
              return;
            }
          }

          else
          {
            v57 = mDNSLogCategory_DNSSEC_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
            {
              return;
            }
          }

          v58 = bswap32(*(a2 + 340)) >> 16;
          *buf = 67109120;
          *v83 = v58;
          v59 = "[Q%u] Getting duplicate record add event due to possible primary DNSSEC question change";
LABEL_99:
          v60 = v57;
          v61 = OS_LOG_TYPE_DEBUG;
          v62 = 8;
LABEL_100:
          _os_log_impl(&_mh_execute_header, v60, v61, v59, buf, v62);
          return;
        }

        if (!*buf)
        {
LABEL_95:
          _dnssec_fetch_key_records(v8);
          _dnssec_make_validation_progress(*(v8 + 64));
          _dnssec_fetch_key_records(v8);
          return;
        }

        v63 = v11[12];
        if (!v10[256] || v63 == v12[435])
        {
          if (!os_log_type_enabled(v11[12], OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        else
        {
          v63 = mDNSLogCategory_DNSSEC_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
          {
            return;
          }
        }

        *buf = 136447234;
        *v83 = "err == 0";
        *&v83[8] = 2082;
        *&v83[10] = "";
        *&v83[18] = 2082;
        *v84 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
        *&v84[8] = 1024;
        *v85 = 193;
        *&v85[4] = 2048;
        v86 = v56;
        v59 = "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld";
        goto LABEL_122;
      }
    }

    *buf = dnssec_obj_rrset_add_rr(v49, a3);
    if (!*buf)
    {
      if (*a3 == 240)
      {
        v55 = (v47 + 40);
      }

      else
      {
        v55 = (v47 + 32);
      }

      if (!*v55)
      {
        *v55 = v49;
        ++*v49;
      }

      *(v47 + 48) = 0xFFFFE5C200000000;
      *(v47 + 140) = 0;
      *(v47 + 144) = 0;
      *buf = 0;
    }

    goto LABEL_89;
  }
}