void tcp_check_timer_state(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  (*(*(*(*(a1 + 80) + 224) + 8) + 32))();
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(*(a1 + 80) + 224));
    nw_context_assert_queue();
  }

  if ((*(*(a1 + 80) + 2376) & 1) == 0)
  {
    tcp_set_lotimer_index(a1);
    v2 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    v3 = *(a1 + 80);
    if (*(v3 + 232) == 3)
    {
      if ((*(a1 + 91) & 0x40) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    if (*(a1 + 72) == 8)
    {
LABEL_8:

      tcp_remove_timer(a1);
      return;
    }

    v4 = a1 + 48;
    v5 = *(a1 + 74);
    v6 = *(a1 + 68);
    if (v6 - *(v2 + 308) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 - *(v2 + 308);
    }

    v8 = *(a1 + 88);
    if ((v8 & 0x40000000) != 0)
    {
      v11 = *(v2 + 302);
    }

    else
    {
      ++*(*(v3 + 224) + 360);
      v9 = *(v2 + 248);
      *v4 = v9;
      if (v9)
      {
        *(v9 + 8) = v4;
      }

      *(v2 + 248) = v4;
      *(a1 + 56) = v2 + 248;
      *(a1 + 88) = v8 | 0x40000000;
      v10 = *(v2 + 272) + 1;
      *(v2 + 272) = v10;
      if (v10 > *(v2 + 276))
      {
        *(v2 + 276) = v10;
      }

      v11 = *(v2 + 302);
      if ((v11 & 2) == 0)
      {
        goto LABEL_49;
      }
    }

    if ((v11 & 3) == 2)
    {
      v12 = *(v2 + 264) - v6;
      if (v12 < 1)
      {
        return;
      }

      if (v5)
      {
        if (v12 < 0xB)
        {
          return;
        }
      }

      else if ((v5 & 2) != 0)
      {
        if (v12 < 0x65)
        {
          return;
        }
      }

      else if (v12 < 0x1F5)
      {
        return;
      }
    }

    if (*v4 && *(*v4 + 8) != v4)
    {
      v25 = v2;
      v13 = __nwlog_obj();
      *buf = 136446466;
      v27 = "tcp_sched_timers";
      v28 = 2048;
      v29 = a1 + 48;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v13, 16, "%{public}s Bad link elm %p next->prev != elm", buf, 22);
      if (__nwlog_fault())
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v27 = "tcp_sched_timers";
          v28 = 2048;
          v29 = a1 + 48;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s Bad link elm %p next->prev != elm, backtrace limit exceeded", buf, 0x16u);
        }
      }

      if (v14)
      {
        free(v14);
      }

      v2 = v25;
    }

    if (**(a1 + 56) != v4)
    {
      v16 = v2;
      v17 = __nwlog_obj();
      *buf = 136446466;
      v27 = "tcp_sched_timers";
      v28 = 2048;
      v29 = a1 + 48;
      LODWORD(v24) = 22;
      v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v17, 16, "%{public}s Bad link elm %p prev->next != elm", buf, v24);
      if (__nwlog_fault())
      {
        v19 = __nwlog_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v27 = "tcp_sched_timers";
          v28 = 2048;
          v29 = v4;
          _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s Bad link elm %p prev->next != elm, backtrace limit exceeded", buf, 0x16u);
        }
      }

      if (v18)
      {
        free(v18);
      }

      v2 = v16;
    }

    if ((*(v2 + 302) & 1) == 0)
    {
      if ((*(v2 + 302) & 2) != 0 && (*(v2 + 264) - *(v2 + 308) - v7) < 1)
      {
        return;
      }

LABEL_49:
      if (v5)
      {
        *(v2 + 284) = 1;
        *(v2 + 296) = 0;
        v20 = v7 >= 0xA;
        v21 = 10;
      }

      else
      {
        if ((v5 & 2) == 0)
        {
LABEL_64:
          tcp_sched_timerlist(v2, v7);
          return;
        }

        if (*(v2 + 284) >= 3u)
        {
          *(v2 + 284) = 2;
        }

        *(v2 + 296) = 0;
        v20 = v7 >= 0x64;
        v21 = 100;
      }

      if (v20)
      {
        v7 = v21;
      }

      goto LABEL_64;
    }

    *(v2 + 288) |= v5;
    v22 = *(v2 + 292);
    if (v22)
    {
      v23 = v7 < v22;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      *(v2 + 292) = v7;
    }
  }
}

void tcp_sched_timerlist(uint64_t a1, unsigned int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 280))
  {
    return;
  }

  v3 = tcp_timerlist_max_offset;
  if (a2 >= tcp_timerlist_max_offset)
  {
    v4 = tcp_timerlist_max_offset;
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a1 + 308);
  v6 = v5 + v4;
  if ((*(a1 + 302) & 2) == 0 || (v7 = *(a1 + 264), v6 < v7))
  {
    *(a1 + 264) = v6;
    if (!v6)
    {
      *(a1 + 264) = 1;
      ++v4;
    }

    goto LABEL_17;
  }

  if (v6 > v5 && v7 <= v5)
  {
    *(a1 + 264) = v6;
LABEL_17:
    *(a1 + 268) = v5;
    if (v4 == v3)
    {
      if (__nwlog_is_datapath_logging_enabled() && (v15 = v3, v16 = __nwlog_obj(), os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG)))
      {
        v17 = *(a1 + 284);
        v18 = *(a1 + 268);
        v19 = *(a1 + 264);
        v26 = 136447234;
        v27 = "tcp_sched_timerlist";
        v28 = 1024;
        v29 = v17;
        v30 = 1024;
        v31 = v18;
        v32 = 1024;
        v33 = v19;
        v34 = 1024;
        v35 = v15;
        _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_DEBUG, "%{public}s mode %d schedtime %u runtime %u offset %u, deadline set to forever", &v26, 0x24u);
        v14 = -1;
      }

      else
      {
        v14 = -1;
      }
    }

    else
    {
      v14 = 1000000 * v4;
      if (__nwlog_is_datapath_logging_enabled())
      {
        v20 = v4;
        v21 = __nwlog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(a1 + 284);
          v23 = *(a1 + 268);
          v24 = *(a1 + 264);
          v26 = 136447234;
          v27 = "tcp_sched_timerlist";
          v28 = 1024;
          v29 = v22;
          v30 = 1024;
          v31 = v23;
          v32 = 1024;
          v33 = v24;
          v34 = 1024;
          v35 = v20;
          v25 = v21;
          v4 = v20;
          _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_DEBUG, "%{public}s mode %d schedtime %u runtime %u offset %u", &v26, 0x24u);
        }

        else
        {
          v4 = v20;
        }
      }
    }

    nw_protocol_timer_run_inner(a1, v14, 1);
    if (v4 != tcp_timerlist_max_offset)
    {
      *(a1 + 302) |= 2u;
    }

    return;
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 284);
      v11 = *(a1 + 268);
      v12 = *(a1 + 264);
      v13 = *(a1 + 308);
      v26 = 136447746;
      v27 = "tcp_sched_timerlist";
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v6;
      v36 = 1024;
      v37 = v13;
      v38 = 1024;
      v39 = v4;
      _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_DEBUG, "%{public}s mode %d schedtime %u runtime %u new_runtime %u tcp_now %u offset %u, not pushing timer out", &v26, 0x30u);
    }
  }
}

uint64_t in_pcb_checkstate(uint64_t a1, uint64_t a2, int a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2 == 0xFFFF)
  {
    if (!a3)
    {
      (*(*(*(a1 + 224) + 8) + 16))();
      a3 = 0;
    }

    *(a1 + 232) = 3;
LABEL_21:
    v11 = *(a1 + 224);
    if ((*(v11 + 360) & 0x80000000) != 0)
    {
      if ((*(v11 + 776) & 2) != 0)
      {
        return 0xFFFFLL;
      }

      v20 = __nwlog_tcp_log();
      v21 = v11 + 556;
      v22 = *(a1 + 224);
      *buf = 136446978;
      v42 = "in_pcb_checkstate";
      v43 = 2082;
      v44 = v11 + 556;
      v45 = 2048;
      v46 = a1;
      v47 = 2048;
      v48 = v22;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v20, 16, "%{public}s %{public}s pcb=%p so=%p usecount is negative", buf, 42);
      if (__nwlog_fault())
      {
        v30 = __nwlog_tcp_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = *(a1 + 224);
          *buf = 136446978;
          v42 = "in_pcb_checkstate";
          v43 = 2082;
          v44 = v21;
          v45 = 2048;
          v46 = a1;
          v47 = 2048;
          v48 = v31;
          v32 = "%{public}s %{public}s pcb=%p so=%p usecount is negative, backtrace limit exceeded";
LABEL_63:
          v37 = v30;
          v38 = 42;
LABEL_64:
          _os_log_impl(&dword_1889BA000, v37, OS_LOG_TYPE_ERROR, v32, buf, v38);
        }
      }

LABEL_65:
      if (v23)
      {
        free(v23);
      }

      return 0xFFFFLL;
    }

    if (!a3)
    {
      (*(*(v11 + 8) + 24))(*(a1 + 224), 1, v3);
      v11 = *(a1 + 224);
    }

    v12 = nw_tcp_access_globals(v11);
    v13 = *(a1 + 16);
    *(v12 + 316) |= 2u;
    atomic_fetch_add((v13 + 44), 1u);
    if (*(v12 + 316))
    {
      if ((*(v12 + 316) & 8) != 0)
      {
        goto LABEL_40;
      }

      v14 = 8;
    }

    else
    {
      if ((*(v12 + 316) & 6) == 0)
      {
        goto LABEL_40;
      }

      v14 = 9;
    }

    *(v12 + 316) |= v14;
    nw_protocol_timer_run_inner(v12, 1000000000, 0);
LABEL_40:
    v5 = 0xFFFFLL;
    if (!*(a1 + 456))
    {
      v24 = *(a1 + 456);
      atomic_compare_exchange_strong_explicit((a1 + 456), &v24, 0xFFFFu, memory_order_relaxed, memory_order_relaxed);
    }

    return v5;
  }

  v5 = a2;
  if (a2 == 2)
  {
    if (!a3)
    {
      (*(*(*(a1 + 224) + 8) + 16))();
      a3 = 0;
    }

    do
    {
      v8 = *(a1 + 456);
      if (v8 == 0xFFFF)
      {
        if (!a3)
        {
          (*(*(*(a1 + 224) + 8) + 24))();
        }

        return 0xFFFFLL;
      }

      if (!*(a1 + 456))
      {
        v25 = *(a1 + 224);
        if (v25 && (*(v25 + 776) & 2) != 0)
        {
          return 0xFFFFLL;
        }

        v26 = __nwlog_tcp_log();
        *buf = 136446722;
        v42 = "in_pcb_checkstate";
        if (v25)
        {
          v27 = (v25 + 556);
        }

        else
        {
          v27 = &unk_188A285CF;
        }

        v43 = 2082;
        v44 = v27;
        v45 = 2048;
        v46 = a1;
        v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v26, 16, "%{public}s %{public}s pcb=%p release with zero count", buf, 32);
        if (__nwlog_fault())
        {
          v33 = __nwlog_tcp_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v42 = "in_pcb_checkstate";
            v43 = 2082;
            v44 = v27;
            v45 = 2048;
            v46 = a1;
            v32 = "%{public}s %{public}s pcb=%p release with zero count, backtrace limit exceeded";
            v37 = v33;
            v38 = 32;
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }

      v9 = *(a1 + 456);
      atomic_compare_exchange_strong_explicit((a1 + 456), &v9, v8 - 1, memory_order_relaxed, memory_order_relaxed);
    }

    while (v9 != v8);
    if (*(a1 + 232) == 3)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 224);
    if ((*(v10 + 360) & 0x80000000) == 0)
    {
      if (!a3)
      {
        (*(*(v10 + 8) + 24))(*(a1 + 224), 1, v3);
      }

      return 2;
    }

    if ((*(v10 + 776) & 2) != 0)
    {
      return 0xFFFFLL;
    }

    v34 = __nwlog_tcp_log();
    v35 = v10 + 556;
    v36 = *(a1 + 224);
    *buf = 136446978;
    v42 = "in_pcb_checkstate";
    v43 = 2082;
    v44 = v10 + 556;
    v45 = 2048;
    v46 = a1;
    v47 = 2048;
    v48 = v36;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v34, 16, "%{public}s %{public}s RELEASE pcb=%p so=%p usecount is negative", buf, 42);
    if (__nwlog_fault())
    {
      v30 = __nwlog_tcp_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 224);
        *buf = 136446978;
        v42 = "in_pcb_checkstate";
        v43 = 2082;
        v44 = v35;
        v45 = 2048;
        v46 = a1;
        v47 = 2048;
        v48 = v39;
        v32 = "%{public}s %{public}s RELEASE pcb=%p so=%p usecount is negative, backtrace limit exceeded";
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

  if (a2 == 1)
  {
    v5 = 0xFFFFLL;
    while (1)
    {
      v6 = *(a1 + 456);
      if (v6 == 0xFFFF)
      {
        break;
      }

      v7 = *(a1 + 456);
      atomic_compare_exchange_strong_explicit((a1 + 456), &v7, v6 + 1, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        return 1;
      }
    }
  }

  else
  {
    v15 = *(a1 + 224);
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v16 = __nwlog_tcp_log();
      v17 = *(a1 + 224);
      *buf = 136446978;
      v43 = 2082;
      v42 = "in_pcb_checkstate";
      if (v15)
      {
        v18 = (v15 + 556);
      }

      else
      {
        v18 = &unk_188A285CF;
      }

      v44 = v18;
      v45 = 2048;
      v46 = v17;
      v47 = 1024;
      LODWORD(v48) = v5;
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v16, 16, "%{public}s %{public}s so=%p not a valid state =%x", buf, 38);
      if (__nwlog_fault())
      {
        v28 = __nwlog_tcp_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 224);
          *buf = 136446978;
          v42 = "in_pcb_checkstate";
          v43 = 2082;
          v44 = v18;
          v45 = 2048;
          v46 = v29;
          v47 = 1024;
          LODWORD(v48) = v5;
          _os_log_impl(&dword_1889BA000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s so=%p not a valid state =%x, backtrace limit exceeded", buf, 0x26u);
        }
      }

      if (v19)
      {
        free(v19);
      }
    }
  }

  return v5;
}

void *tcp_rxtseg_insert(void *result, int a2, int a3)
{
  v3 = result[120];
  if (v3)
  {
    v4 = *v3 - a2 > 0;
    if (*v3 - a2 > 0)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_4;
    }

    do
    {
      v6 = v3;
      v3 = *(v3 + 16);
      if (!v3)
      {
        v7 = 0;
        goto LABEL_17;
      }
    }

    while (*v3 - a2 <= 0);
    v7 = v3;
LABEL_17:
    v12 = *(v6 + 4);
    if (*v6 - a2 <= 0 && ((v12 - a3) & 0x80000000) == 0)
    {
      ++*(v6 + 8);
      return result;
    }

    if (v12 - a2 < 1)
    {
      if (!v3)
      {
LABEL_34:
        v4 = 0;
        v5 = 0;
        goto LABEL_11;
      }

      goto LABEL_31;
    }

    if (*v6 == a2 && a3 - v12 >= 1)
    {
      a2 = v12 + 1;
      ++*(v6 + 8);
      if (!v3)
      {
        goto LABEL_34;
      }

LABEL_31:
      v5 = 0;
      goto LABEL_32;
    }

    *(v6 + 4) = a2 - 1;
    v5 = *(v6 + 8);
    if (v3)
    {
LABEL_32:
      v3 = v7;
LABEL_4:
      if (*v3 - a3 < 0)
      {
        if (*(v3 + 4) - a3 <= 0)
        {
          a3 = *v3 - 1;
          ++*(v3 + 8);
        }

        else
        {
          *v3 = a3 + 1;
          v5 = *(v3 + 8);
        }
      }

      goto LABEL_11;
    }

    v4 = 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(result + 242) = *(result + 23);
    v4 = 1;
  }

LABEL_11:
  if (a2 - a3 < 0)
  {
    v8 = result;
    v9 = a3;
    v10 = a2;
    v11 = nw_tcp_access_globals(*(result[10] + 224));
    result = malloc_type_malloc(**(v11 + 56), 0x6223832DuLL);
    if (result)
    {
      result[2] = 0;
      *(result + 10) = 0;
      *result = v10;
      *(result + 1) = v9;
      *(result + 4) = v5 + 1;
      if (v4)
      {
        result[2] = v8[120];
        v8[120] = result;
      }

      else
      {
        result[2] = *(v6 + 16);
        *(v6 + 16) = result;
      }
    }
  }

  return result;
}

uint64_t __nw_protocol_tcp_callbacks_block_invoke()
{
  nw_protocol_tcp_callbacks_callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler();
  nw_protocol_callbacks_set_replace_input_handler();
  nw_protocol_callbacks_set_remove_input_handler();
  nw_protocol_callbacks_set_input_available();
  nw_protocol_callbacks_set_input_flush();
  nw_protocol_callbacks_set_output_available();
  nw_protocol_callbacks_set_get_input_frames();
  nw_protocol_callbacks_set_get_output_frames();
  nw_protocol_callbacks_set_finalize_output_frames();
  nw_protocol_callbacks_set_link_state();
  nw_protocol_callbacks_set_disconnect();
  nw_protocol_callbacks_set_connect();
  nw_protocol_callbacks_set_connected();
  nw_protocol_callbacks_set_reset();
  nw_protocol_callbacks_set_disconnected();
  nw_protocol_callbacks_set_waiting_for_output();
  nw_protocol_callbacks_set_output_finished();
  nw_protocol_callbacks_set_updated_path();
  nw_protocol_callbacks_set_copy_info();
  nw_protocol_callbacks_set_register_notification();
  nw_protocol_callbacks_set_unregister_notification();
  nw_protocol_callbacks_set_get_message_properties();
  nw_protocol_callbacks_set_error();
  v0 = nw_protocol_tcp_callbacks_callbacks;

  return MEMORY[0x1EEDD40D8](v0, nw_protocol_tcp_notify);
}

uint64_t __nw_protocol_tcp_initialize_globals_block_invoke()
{
  tcp_input_batch_size = networkd_settings_get_int64_with_default();
  tcp_batch_ack_max = networkd_settings_get_int64_with_default();
  tcp_perf_measurement = networkd_settings_get_BOOL();
  g_use_slab_allocator = networkd_settings_get_int64_with_default() == 0;
  tcp_timerlist_max_offset = networkd_settings_get_int64_with_default();
  result = _os_feature_enabled_impl();
  if (result)
  {
    g_tcp_use_malloc_memory = 1;
  }

  return result;
}

void nw_tcp_init_globals(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = __nwlog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446978;
    v48 = "nw_tcp_init_globals";
    v49 = 2048;
    v50 = a1;
    v51 = 2048;
    v52 = a2;
    v53 = 2080;
    identifier = nw_context_get_identifier();
    _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_INFO, "%{public}s globals: %p nw_context: %p identifier: %s", buf, 0x2Au);
  }

  v5 = malloc_type_calloc(1uLL, 0x48uLL, 0xFC3A02ACuLL);
  if (!v5)
  {
    v6 = __nwlog_obj();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v48 = "nw_tcp_init_globals";
    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v49 = 2048;
    v50 = 1;
    v51 = 2048;
    v52 = 72;
    v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    if (__nwlog_should_abort())
    {
      goto LABEL_73;
    }

    free(v9);
    v5 = 0;
  }

  *(a1 + 72) = v5;
  sysctls = nw_path_get_sysctls_region();
  if (user_tcp_init_all_onceToken == -1)
  {
    v10 = *(a1 + 316);
    if ((v10 & 0x40) != 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    dispatch_once(&user_tcp_init_all_onceToken, &__block_literal_global_798);
    v10 = *(a1 + 316);
    if ((v10 & 0x40) != 0)
    {
      goto LABEL_64;
    }
  }

  v44 = 0;
  v45 = 0;
  *(a1 + 316) = v10 | 0x40;
  microuptime(&v44);
  *(a1 + 308) = v45 / 1000 + 1000 * v44;
  *(a1 + 240) = nw_retain(a2);
  arc4random_buf(buf, 0x10uLL);
  if (CCCryptorCreate(0, 0, 2u, buf, 0x10uLL, 0, (a1 + 80)))
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v55 = 136446210;
      v56 = "aes_encrypt_key128";
      _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, "%{public}s CCCryptorCreate", v55, 0xCu);
    }
  }

  v12 = *(a1 + 72);
  v12[2] = tcp_gc;
  v12[3] = tcp_itimer;
  v12[4] = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 312) = 128;
  *(a1 + 104) = 0;
  *(a1 + 120) = a1 + 112;
  v13 = (a1 + 112);
  do
  {
    v13 = *v13;
    if (!v13)
    {
      *v12 = 0;
      v12[1] = a1 + 112;
      *(a1 + 112) = v12;
      *(a1 + 120) = v12;
      goto LABEL_34;
    }
  }

  while (v13 != v12);
  v14 = __nwlog_obj();
  *buf = 136446466;
  v48 = "in_pcbinfo_attach";
  v49 = 2048;
  v50 = v12;
  LODWORD(v43) = 22;
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v14, 16, "%{public}s ipi %p already in the list", buf, v43);
  v55[0] = 16;
  v46 = 0;
  if (__nwlog_fault())
  {
    if (v55[0] == 17)
    {
      v16 = __nwlog_obj();
      v17 = v55[0];
      if (!os_log_type_enabled(v16, v55[0]))
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v48 = "in_pcbinfo_attach";
      v49 = 2048;
      v50 = v12;
      v18 = "%{public}s ipi %p already in the list";
      goto LABEL_31;
    }

    if (v46 != 1)
    {
      v16 = __nwlog_obj();
      v17 = v55[0];
      if (!os_log_type_enabled(v16, v55[0]))
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v48 = "in_pcbinfo_attach";
      v49 = 2048;
      v50 = v12;
      v18 = "%{public}s ipi %p already in the list, backtrace limit exceeded";
      goto LABEL_31;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = v55[0];
    v20 = os_log_type_enabled(v16, v55[0]);
    if (backtrace_string)
    {
      if (v20)
      {
        *buf = 136446722;
        v48 = "in_pcbinfo_attach";
        v49 = 2048;
        v50 = v12;
        v51 = 2082;
        v52 = backtrace_string;
        _os_log_impl(&dword_1889BA000, v16, v17, "%{public}s ipi %p already in the list, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_32;
    }

    if (v20)
    {
      *buf = 136446466;
      v48 = "in_pcbinfo_attach";
      v49 = 2048;
      v50 = v12;
      v18 = "%{public}s ipi %p already in the list, no backtrace";
LABEL_31:
      _os_log_impl(&dword_1889BA000, v16, v17, v18, buf, 0x16u);
    }
  }

LABEL_32:
  if (v15)
  {
    free(v15);
  }

LABEL_34:
  v21 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v21)
  {
    *v21 = 32;
  }

  *(a1 + 40) = v21;
  v22 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (!v22)
  {
    *(a1 + 48) = 0;
    v30 = __nwlog_obj();
    *buf = 136446210;
    v48 = "tcp_init";
    LODWORD(v43) = 12;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v30, 16, "%{public}s failed allocating tcp_reass_zone", buf, v43);
    v55[0] = 16;
    v46 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_62;
    }

    if (v55[0] == 17)
    {
      v32 = __nwlog_obj();
      v33 = v55[0];
      if (!os_log_type_enabled(v32, v55[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v48 = "tcp_init";
      v34 = "%{public}s failed allocating tcp_reass_zone";
    }

    else if (v46 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = v55[0];
      v36 = os_log_type_enabled(v32, v55[0]);
      if (v35)
      {
        if (v36)
        {
          *buf = 136446466;
          v48 = "tcp_init";
          v49 = 2082;
          v50 = v35;
          _os_log_impl(&dword_1889BA000, v32, v33, "%{public}s failed allocating tcp_reass_zone, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        goto LABEL_62;
      }

      if (!v36)
      {
LABEL_62:
        if (v31)
        {
          free(v31);
        }

        goto LABEL_64;
      }

      *buf = 136446210;
      v48 = "tcp_init";
      v34 = "%{public}s failed allocating tcp_reass_zone, no backtrace";
    }

    else
    {
      v32 = __nwlog_obj();
      v33 = v55[0];
      if (!os_log_type_enabled(v32, v55[0]))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v48 = "tcp_init";
      v34 = "%{public}s failed allocating tcp_reass_zone, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v32, v33, v34, buf, 0xCu);
    goto LABEL_62;
  }

  *v22 = 48;
  *(a1 + 48) = v22;
  v23 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v23)
  {
    *v23 = 24;
  }

  *(a1 + 56) = v23;
  v24 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v24)
  {
    *v24 = 88;
  }

  *(a1 + 128) = 0;
  *(a1 + 64) = v24;
  *(a1 + 136) = a1 + 128;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  v25 = malloc_type_calloc(1uLL, 0x24uLL, 0xFB652762uLL);
  if (!v25)
  {
    v26 = __nwlog_obj();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v48 = "tcp_init";
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v49 = 2048;
    v50 = 1;
    v51 = 2048;
    v52 = 36;
    LODWORD(v43) = 32;
    v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_1889BA000, v26, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v43);
    if (__nwlog_should_abort())
    {
      goto LABEL_73;
    }

    free(v29);
    v25 = 0;
  }

  *(a1 + 324) = v25;
LABEL_64:
  tcp_cc_algo_none = 0u;
  unk_1ED4BF880 = 0u;
  xmmword_1ED4BF890 = 0u;
  unk_1ED4BF8A0 = 0u;
  xmmword_1ED4BF8B0 = 0u;
  unk_1ED4BF8C0 = 0u;
  xmmword_1ED4BF8D0 = 0u;
  unk_1ED4BF8E0 = 0u;
  tcp_cc_algo_list[0] = &tcp_cc_algo_none;
  *algn_1ED4BF988 = tcp_cc_newreno;
  qword_1ED4BF990 = tcp_cc_ledbat;
  unk_1ED4BF998 = tcp_cc_cubic;
  qword_1ED4BF9A0 = tcp_cc_prague;
  v37 = malloc_type_calloc(0x64uLL, 8uLL, 0x89C7F32EuLL);
  if (v37)
  {
LABEL_70:
    *(a1 + 32) = v37;
    *(a1 + 304) = arc4random();
    nw_protocol_tcp_timer_init(a1, a2, 1);
    nw_protocol_tcp_timer_init(a1, a2, 0);
    *(a1 + 144) = 0;
    v42 = (a1 + 144);
    v42[1] = v42;
    v42[2] = 0;
    v42[3] = v42 + 2;
    v42[4] = 0;
    v42[5] = v42 + 4;
    v42[6] = 0;
    v42[7] = v42 + 6;
    v42[8] = 0;
    v42[9] = v42 + 8;
    v42[10] = 0;
    v42[11] = v42 + 10;
    return;
  }

  v38 = __nwlog_obj();
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v48 = "tcp_heuristics_cache_init";
  if (v39)
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

  v49 = 2048;
  v50 = 100;
  v51 = 2048;
  v52 = 8;
  LODWORD(v43) = 32;
  v41 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_1889BA000, v38, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v43);
  if (!__nwlog_should_abort())
  {
    free(v41);
    v37 = 0;
    goto LABEL_70;
  }

LABEL_73:
  __break(1u);
}

void __user_tcp_init_all_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  int64_with_default = networkd_settings_get_int64_with_default();
  v1 = int64_with_default;
  if (!int64_with_default)
  {
    v2 = 0;
    goto LABEL_6;
  }

  if (int64_with_default > 0 || os_variant_has_internal_diagnostics())
  {
    v2 = 1;
LABEL_6:
    g_tcp_nw_assert_context = v2;
  }

  v3 = __nwlog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "user_tcp_init_all_block_invoke";
    v5 = 136446722;
    if (g_tcp_nw_assert_context)
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }

    v7 = 2080;
    v8 = v4;
    v9 = 2048;
    v10 = v1;
    _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s g_tcp_nw_assert_context is %s value %lld", &v5, 0x20u);
  }
}

void nw_protocol_tcp_timer_init(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 88;
  }

  else
  {
    v4 = 96;
  }

  source = nw_queue_context_create_source();
  *(a1 + v4) = source;
  if (source)
  {
    if ((networkd_settings_get_BOOL() & 1) == 0)
    {
      nw_queue_source_set_qos_class_fallback();
    }

    nw_queue_activate_source();
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_timer_init";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s nw_queue_context_create_source failed", buf, 12);
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_timer_init";
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t nw_proto_tcp_bind(uint64_t a1, const void *a2, int a3, void *__dst, size_t __n)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (a1 && (*(a1 + 776) & 2) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = __nwlog_tcp_log();
    if (a1)
    {
      v8 = (a1 + 556);
    }

    else
    {
      v8 = &unk_188A285CF;
    }

    *buf = 136446466;
    v15 = "nw_proto_tcp_bind";
    v16 = 2082;
    v17 = v8;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s %{public}s nam is NULL", buf, 22);
    if (!__nwlog_fault())
    {
      goto LABEL_23;
    }

    v12 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136446466;
    v15 = "nw_proto_tcp_bind";
    v16 = 2082;
    v17 = v8;
    v13 = "%{public}s %{public}s nam is NULL, backtrace limit exceeded";
    goto LABEL_22;
  }

  if (__dst)
  {
    memcpy(__dst, a2, __n);
    return 0;
  }

  if (!a1 || (*(a1 + 776) & 2) == 0)
  {
    v10 = __nwlog_tcp_log();
    if (a1)
    {
      v11 = (a1 + 556);
    }

    else
    {
      v11 = &unk_188A285CF;
    }

    *buf = 136446466;
    v15 = "nw_proto_tcp_bind";
    v16 = 2082;
    v17 = v11;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v10, 16, "%{public}s %{public}s outaddr is NULL", buf, 22);
    if (!__nwlog_fault())
    {
      goto LABEL_23;
    }

    v12 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136446466;
    v15 = "nw_proto_tcp_bind";
    v16 = 2082;
    v17 = v11;
    v13 = "%{public}s %{public}s outaddr is NULL, backtrace limit exceeded";
LABEL_22:
    _os_log_impl(&dword_1889BA000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
LABEL_23:
    if (v9)
    {
      free(v9);
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL nw_protocol_tcp_register_notification(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5)
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_register_notification";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v37, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_72;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v21 = "%{public}s called with null protocol";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v21 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_104;
  }

  v9 = nw_protocol_downcast();
  if (!v9)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_register_notification";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v40, 16, "%{public}s called with null tcp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_72;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v21 = "%{public}s called with null tcp";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v21 = "%{public}s called with null tcp, backtrace limit exceeded";
    }

LABEL_104:
    v34 = v38;
    v35 = v39;
    v36 = 12;
    goto LABEL_71;
  }

  v10 = v9;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        v13 = *(v9 + 5436) | 0x100;
        goto LABEL_17;
      }

      if (a4)
      {
        if (a5)
        {
          *type = *a4;
          *buf = 0x600000001;
          *&buf[8] = 519;
          *&buf[16] = type;
          v45[0] = 4;
          (*(*(v9 + 8) + 16))(v9, 1, v5);
          if ((~*(v10 + 376) & 0x30) != 0 || (*(v10 + 365) & 0x20) != 0)
          {
            v22 = tcp_ctloutput(v10, buf);
          }

          else
          {
            v22 = 22;
          }

          (*(*(v10 + 8) + 24))(v10, 1, v5);
          if (v22)
          {
            v27 = __nwlog_obj();
            v28 = v10 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 556;
            *&buf[22] = 1024;
            LODWORD(v45[0]) = v22;
            v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v27, 16, "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d", buf, 28);
            type[0] = OS_LOG_TYPE_ERROR;
            if (!__nwlog_fault())
            {
              goto LABEL_72;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v25 = __nwlog_obj();
              v26 = type[0];
              if (!os_log_type_enabled(v25, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v28;
              *&buf[22] = 1024;
              LODWORD(v45[0]) = v22;
              v21 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d";
            }

            else
            {
              v25 = __nwlog_obj();
              v26 = type[0];
              if (!os_log_type_enabled(v25, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v28;
              *&buf[22] = 1024;
              LODWORD(v45[0]) = v22;
              v21 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d, backtrace limit exceeded";
            }

            goto LABEL_69;
          }

          v13 = *(v10 + 5436) | 0x80;
LABEL_17:
          *(v10 + 5436) = v13;
          return 1;
        }

        v31 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v31, 16, "%{public}s register notification for %{public}s called with zero length", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type[0];
          if (!os_log_type_enabled(v18, type[0]))
          {
            goto LABEL_72;
          }

          goto LABEL_48;
        }

        v18 = __nwlog_obj();
        v19 = type[0];
        if (!os_log_type_enabled(v18, type[0]))
        {
          goto LABEL_72;
        }

LABEL_66:
        v33 = nw_protocol_notification_type_to_string();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = v33;
        v21 = "%{public}s register notification for %{public}s called with zero length, backtrace limit exceeded";
        goto LABEL_70;
      }

      v42 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v42, 16, "%{public}s called with null val", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v21 = "%{public}s called with null val";
            goto LABEL_104;
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v39 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v21 = "%{public}s called with null val, backtrace limit exceeded";
            goto LABEL_104;
          }
        }
      }
    }

    else
    {
      if (!a3)
      {
        v16 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v16, 16, "%{public}s invalid registration notification: %{public}s", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type[0];
          if (!os_log_type_enabled(v18, type[0]))
          {
            goto LABEL_72;
          }

          v20 = nw_protocol_notification_type_to_string();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_register_notification";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          v21 = "%{public}s invalid registration notification: %{public}s";
        }

        else
        {
          v18 = __nwlog_obj();
          v19 = type[0];
          if (!os_log_type_enabled(v18, type[0]))
          {
            goto LABEL_72;
          }

          v32 = nw_protocol_notification_type_to_string();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_register_notification";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          v21 = "%{public}s invalid registration notification: %{public}s, backtrace limit exceeded";
        }

        goto LABEL_70;
      }

      if (a3 != 1)
      {
        return 0;
      }

      if (a4)
      {
        if (a5)
        {
          *type = *a4;
          *buf = 0x600000001;
          *&buf[8] = 517;
          *&buf[16] = type;
          v45[0] = 4;
          (*(*(v9 + 8) + 16))(v9, 1, v5);
          if ((~*(v10 + 376) & 0x30) != 0 || (*(v10 + 365) & 0x20) != 0)
          {
            v12 = tcp_ctloutput(v10, buf);
          }

          else
          {
            v12 = 22;
          }

          (*(*(v10 + 8) + 24))(v10, 1, v5);
          if (v12)
          {
            v23 = __nwlog_obj();
            v24 = v10 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 556;
            *&buf[22] = 1024;
            LODWORD(v45[0]) = v12;
            v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v23, 16, "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d", buf, 28);
            type[0] = OS_LOG_TYPE_ERROR;
            if (!__nwlog_fault())
            {
              goto LABEL_72;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v25 = __nwlog_obj();
              v26 = type[0];
              if (!os_log_type_enabled(v25, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              *&buf[22] = 1024;
              LODWORD(v45[0]) = v12;
              v21 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d";
            }

            else
            {
              v25 = __nwlog_obj();
              v26 = type[0];
              if (!os_log_type_enabled(v25, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              *&buf[22] = 1024;
              LODWORD(v45[0]) = v12;
              v21 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d, backtrace limit exceeded";
            }

LABEL_69:
            v34 = v25;
            v35 = v26;
            v36 = 28;
LABEL_71:
            _os_log_impl(&dword_1889BA000, v34, v35, v21, buf, v36);
            goto LABEL_72;
          }

          v13 = *(v10 + 5436) | 0x40;
          goto LABEL_17;
        }

        v29 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v29, 16, "%{public}s register notification for %{public}s called with zero length", buf, 22);
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type[0];
          if (!os_log_type_enabled(v18, type[0]))
          {
            goto LABEL_72;
          }

LABEL_48:
          v30 = nw_protocol_notification_type_to_string();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_register_notification";
          *&buf[12] = 2082;
          *&buf[14] = v30;
          v21 = "%{public}s register notification for %{public}s called with zero length";
LABEL_70:
          v34 = v18;
          v35 = v19;
          v36 = 22;
          goto LABEL_71;
        }

        v18 = __nwlog_obj();
        v19 = type[0];
        if (!os_log_type_enabled(v18, type[0]))
        {
          goto LABEL_72;
        }

        goto LABEL_66;
      }

      v41 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v41, 16, "%{public}s called with null val", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v21 = "%{public}s called with null val";
            goto LABEL_104;
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v39 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v21 = "%{public}s called with null val, backtrace limit exceeded";
            goto LABEL_104;
          }
        }
      }
    }

LABEL_72:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  if (a3 <= 6)
  {
    return (a3 - 4) < 2;
  }

  if (a3 != 14)
  {
    return 0;
  }

  *(v9 + 5436) |= 0x400000u;
  if ((*(v9 + 776) & 2) != 0)
  {
    return 1;
  }

  v14 = __nwlog_tcp_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  result = 1;
  if (v15)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_register_notification";
    *&buf[12] = 2082;
    *&buf[14] = v10 + 556;
    _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s segmentation_offload_notification enabled", buf, 0x16u);
    return 1;
  }

  return result;
}

uint64_t nw_protocol_tcp_apply_parameters(uint64_t a1)
{
  v183 = *MEMORY[0x1E69E9840];
  nw_protocol_upcast();
  nw_protocol_get_input_handler();
  parameters = nw_protocol_get_parameters();
  if (!parameters)
  {
    v94 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v94, 16, "%{public}s called with null parameters", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_417;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v96 = __nwlog_obj();
        v97 = type[0];
        if (!os_log_type_enabled(v96, type[0]))
        {
          goto LABEL_417;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        v98 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_416;
      }

      backtrace_string = __nw_create_backtrace_string();
      v96 = __nwlog_obj();
      v97 = type[0];
      v101 = os_log_type_enabled(v96, type[0]);
      if (!backtrace_string)
      {
        if (!v101)
        {
          goto LABEL_417;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        v98 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_416;
      }

      if (v101)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v102 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_252:
        _os_log_impl(&dword_1889BA000, v96, v97, v102, buf, 0x16u);
      }

LABEL_253:
      free(backtrace_string);
      goto LABEL_417;
    }

    v96 = __nwlog_obj();
    v97 = type[0];
    if (!os_log_type_enabled(v96, type[0]))
    {
      goto LABEL_417;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v98 = "%{public}s called with null parameters";
LABEL_416:
    _os_log_impl(&dword_1889BA000, v96, v97, v98, buf, 0xCu);
LABEL_417:
    if (v95)
    {
      free(v95);
    }

    return 0;
  }

  if (!*(a1 + 5336))
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v99, 16, "%{public}s called with null path", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_417;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v96 = __nwlog_obj();
      v97 = type[0];
      if (!os_log_type_enabled(v96, type[0]))
      {
        goto LABEL_417;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      v98 = "%{public}s called with null path";
      goto LABEL_416;
    }

    if (v180[0] != OS_LOG_TYPE_INFO)
    {
      v96 = __nwlog_obj();
      v97 = type[0];
      if (!os_log_type_enabled(v96, type[0]))
      {
        goto LABEL_417;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      v98 = "%{public}s called with null path, backtrace limit exceeded";
      goto LABEL_416;
    }

    backtrace_string = __nw_create_backtrace_string();
    v96 = __nwlog_obj();
    v97 = type[0];
    v103 = os_log_type_enabled(v96, type[0]);
    if (backtrace_string)
    {
      if (v103)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v102 = "%{public}s called with null path, dumping backtrace:%{public}s";
        goto LABEL_252;
      }

      goto LABEL_253;
    }

    if (!v103)
    {
      goto LABEL_417;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v98 = "%{public}s called with null path, no backtrace";
    goto LABEL_416;
  }

  v4 = parameters;
  v5 = nw_parameters_copy_protocol_options_legacy();
  if (nw_parameters_get_discretionary())
  {
    *(a1 + 5436) |= 0x200u;
  }

  if (MEMORY[0x18CFDD170](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 1;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v6 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v6 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v6)
    {
      v7 = __nwlog_obj();
      v8 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v6;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d", buf, 28);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v8;
          *&buf[22] = 1024;
          *&buf[24] = v6;
          v12 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d";
LABEL_185:
          v76 = v10;
          v77 = v11;
LABEL_186:
          _os_log_impl(&dword_1889BA000, v76, v77, v12, buf, 0x1Cu);
          goto LABEL_187;
        }

        goto LABEL_187;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v8;
          *&buf[22] = 1024;
          *&buf[24] = v6;
          v12 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v21 = os_log_type_enabled(v10, type[0]);
      if (!v20)
      {
        if (v21)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v8;
          *&buf[22] = 1024;
          *&buf[24] = v6;
          v12 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v21)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v8;
        *&buf[22] = 1024;
        *&buf[24] = v6;
        *&buf[28] = 2082;
        *&buf[30] = v20;
        v22 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_144:
        _os_log_impl(&dword_1889BA000, v10, v11, v22, buf, 0x26u);
        goto LABEL_145;
      }

      goto LABEL_145;
    }
  }

  if (MEMORY[0x18CFDD1A0](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 4;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v13 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v13 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v13)
    {
      v14 = __nwlog_obj();
      v15 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v13;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v14, 16, "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d", buf, 28);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v13;
          v12 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d";
          goto LABEL_185;
        }

LABEL_187:
        if (v9)
        {
          free(v9);
        }

        if (v5)
        {
          nw_release(v5);
        }

        return 0;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v13;
          v12 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v27 = os_log_type_enabled(v10, type[0]);
      if (!v20)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v13;
          v12 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v27)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v15;
        *&buf[22] = 1024;
        *&buf[24] = v13;
        *&buf[28] = 2082;
        *&buf[30] = v20;
        v22 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

LABEL_145:
      free(v20);
      goto LABEL_187;
    }
  }

  if (MEMORY[0x18CFDD1D0](v5))
  {
    *type = 0x4000;
    *buf = 0x600000001;
    *&buf[8] = 513;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v16 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v16 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v16)
    {
      v17 = __nwlog_obj();
      v18 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v16;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v17, 16, "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d", buf, 28);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          v12 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          v12 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v30 = os_log_type_enabled(v10, type[0]);
      if (!v20)
      {
        if (v30)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          v12 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v30)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v18;
        *&buf[22] = 1024;
        *&buf[24] = v16;
        *&buf[28] = 2082;
        *&buf[30] = v20;
        v22 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  if (MEMORY[0x18CFDD0D0](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 521;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v19 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v19 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v19)
    {
      v23 = __nwlog_obj();
      v24 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v19;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v23, 16, "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d", buf, 28);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v24;
          *&buf[22] = 1024;
          *&buf[24] = v19;
          v12 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v24;
          *&buf[22] = 1024;
          *&buf[24] = v19;
          v12 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v31 = os_log_type_enabled(v10, type[0]);
      if (!v20)
      {
        if (v31)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v24;
          *&buf[22] = 1024;
          *&buf[24] = v19;
          v12 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v31)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v24;
        *&buf[22] = 1024;
        *&buf[24] = v19;
        *&buf[28] = 2082;
        *&buf[30] = v20;
        v22 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  ecn_mode = nw_parameters_get_ecn_mode();
  if (!ecn_mode)
  {
    goto LABEL_103;
  }

  if (ecn_mode == 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  *(a1 + 5432) = v26;
  *type = v26;
  *buf = 0x600000001;
  *&buf[8] = 528;
  *&buf[16] = type;
  *&buf[24] = 4;
  (*(*(a1 + 8) + 16))(a1, 1, v1);
  if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
  {
    (*(*(a1 + 8) + 24))(a1, 1, v1);
    goto LABEL_62;
  }

  v28 = tcp_ctloutput(a1, buf);
  (*(*(a1 + 8) + 24))(a1, 1, v1);
  if (v28)
  {
    if (v28 == 22)
    {
LABEL_62:
      v29 = __nwlog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = 22;
        _os_log_impl(&dword_1889BA000, v29, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_103;
    }

    v32 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    *&buf[12] = 1024;
    *&buf[14] = v28;
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v32, 16, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (!os_log_type_enabled(v34, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v28;
        v36 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d";
LABEL_99:
        v40 = v34;
LABEL_100:
        _os_log_impl(&dword_1889BA000, v40, v35, v36, buf, 0x12u);
        goto LABEL_101;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (!os_log_type_enabled(v34, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v28;
        v36 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_99;
      }

      v37 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v35 = type[0];
      log = v38;
      v39 = os_log_type_enabled(v38, type[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v28;
          *&buf[18] = 2082;
          *&buf[20] = v37;
          _os_log_impl(&dword_1889BA000, log, v35, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v37);
        goto LABEL_101;
      }

      if (v39)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v28;
        v36 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, no backtrace";
        v40 = log;
        goto LABEL_100;
      }
    }

LABEL_101:
    if (v33)
    {
      free(v33);
    }
  }

LABEL_103:
  v41 = MEMORY[0x18CFDD110](v5);
  if (v41 != 2)
  {
    *type = v41 == 1;
    *buf = 0x600000001;
    *&buf[8] = 539;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v42 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v42 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v42)
    {
      v43 = __nwlog_obj();
      v44 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v42;
      LODWORD(v174) = 28;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v43, 16, "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d", buf, v174);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v44;
          *&buf[22] = 1024;
          *&buf[24] = v42;
          v12 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v44;
          *&buf[22] = 1024;
          *&buf[24] = v42;
          v12 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v20 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v59 = os_log_type_enabled(v10, type[0]);
      if (!v20)
      {
        if (v59)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v44;
          *&buf[22] = 1024;
          *&buf[24] = v42;
          v12 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v59)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v44;
        *&buf[22] = 1024;
        *&buf[24] = v42;
        *&buf[28] = 2082;
        *&buf[30] = v20;
        v22 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  if (nw_parameters_get_fast_open_enabled(v4) || MEMORY[0x18CFDD0F0](v5) && (nw_protocol_upcast(), nw_protocol_get_input_handler(), (nw_protocol_input_handler_is_connection_flow() & 1) == 0))
  {
    *(a1 + 368) |= 0x30u;
    if (MEMORY[0x18CFDD180](v5))
    {
      *(a1 + 368) |= 0x10000u;
    }

    *(a1 + 5436) |= 0x8020u;
  }

  if (MEMORY[0x18CFDD120](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 536;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v45 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v45 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v45)
    {
      v46 = __nwlog_obj();
      v47 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v45;
      LODWORD(v174) = 28;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v46, 16, "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d", buf, v174);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          *&buf[22] = 1024;
          *&buf[24] = v45;
          v12 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          *&buf[22] = 1024;
          *&buf[24] = v45;
          v12 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v60 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v69 = os_log_type_enabled(v10, type[0]);
      if (!v60)
      {
        if (v69)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          *&buf[22] = 1024;
          *&buf[24] = v45;
          v12 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v69)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v47;
        *&buf[22] = 1024;
        *&buf[24] = v45;
        *&buf[28] = 2082;
        *&buf[30] = v60;
        v62 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d, dumping backtrace:%{public}s";
        v63 = v10;
        v64 = v11;
        goto LABEL_161;
      }

LABEL_162:
      free(v60);
      goto LABEL_187;
    }
  }

  effective_traffic_class = nw_path_get_effective_traffic_class();
  v49 = tcp_set_traffic_class(a1, effective_traffic_class);
  if (v49)
  {
    v50 = v49;
    v51 = __nwlog_obj();
    v52 = a1 + 556;
    *buf = 136446722;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    *&buf[22] = 1024;
    *&buf[24] = v50;
    LODWORD(v174) = 28;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v51, 16, "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d", buf, v174);
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_187;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = type[0];
      if (!os_log_type_enabled(v53, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v52;
      *&buf[22] = 1024;
      *&buf[24] = v50;
      v12 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d";
LABEL_262:
      v76 = v53;
      v77 = v54;
      goto LABEL_186;
    }

    if (v180[0] != OS_LOG_TYPE_INFO)
    {
      v53 = __nwlog_obj();
      v54 = type[0];
      if (!os_log_type_enabled(v53, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v52;
      *&buf[22] = 1024;
      *&buf[24] = v50;
      v12 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_262;
    }

    v60 = __nw_create_backtrace_string();
    v53 = __nwlog_obj();
    v54 = type[0];
    v61 = os_log_type_enabled(v53, type[0]);
    if (!v60)
    {
      if (!v61)
      {
        goto LABEL_187;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v52;
      *&buf[22] = 1024;
      *&buf[24] = v50;
      v12 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d, no backtrace";
      goto LABEL_262;
    }

    if (!v61)
    {
      goto LABEL_162;
    }

    *buf = 136446978;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    *&buf[12] = 2082;
    *&buf[14] = v52;
    *&buf[22] = 1024;
    *&buf[24] = v50;
    *&buf[28] = 2082;
    *&buf[30] = v60;
    v62 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d, dumping backtrace:%{public}s";
    goto LABEL_150;
  }

  if (MEMORY[0x18CFDD0E0](v5))
  {
    v55 = tcp_set_background_management(a1);
    if (v55)
    {
      v56 = v55;
      v57 = __nwlog_obj();
      v58 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v56;
      LODWORD(v174) = 28;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v57, 16, "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d", buf, v174);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 1024;
        *&buf[24] = v56;
        v12 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d";
        goto LABEL_262;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 1024;
        *&buf[24] = v56;
        v12 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_262;
      }

      v60 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = type[0];
      v70 = os_log_type_enabled(v53, type[0]);
      if (!v60)
      {
        if (!v70)
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 1024;
        *&buf[24] = v56;
        v12 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d, no backtrace";
        goto LABEL_262;
      }

      if (!v70)
      {
        goto LABEL_162;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v58;
      *&buf[22] = 1024;
      *&buf[24] = v56;
      *&buf[28] = 2082;
      *&buf[30] = v60;
      v62 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_150:
      v63 = v53;
      v64 = v54;
LABEL_161:
      _os_log_impl(&dword_1889BA000, v63, v64, v62, buf, 0x26u);
      goto LABEL_162;
    }
  }

  if (MEMORY[0x18CFDD100](v5))
  {
    v65 = tcp_set_keepalive(a1, 1);
    if (v65)
    {
      v66 = v65;
      v67 = __nwlog_obj();
      v68 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v66;
      LODWORD(v174) = 28;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v67, 16, "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d", buf, v174);
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v68;
        *&buf[22] = 1024;
        *&buf[24] = v66;
        v12 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d";
        goto LABEL_262;
      }

      if (v180[0] != OS_LOG_TYPE_INFO)
      {
        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v68;
        *&buf[22] = 1024;
        *&buf[24] = v66;
        v12 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_262;
      }

      v60 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = type[0];
      v79 = os_log_type_enabled(v53, type[0]);
      if (!v60)
      {
        if (!v79)
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v68;
        *&buf[22] = 1024;
        *&buf[24] = v66;
        v12 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, no backtrace";
        goto LABEL_262;
      }

      if (!v79)
      {
        goto LABEL_162;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v68;
      *&buf[22] = 1024;
      *&buf[24] = v66;
      *&buf[28] = 2082;
      *&buf[30] = v60;
      v62 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_150;
    }

    v71 = MEMORY[0x18CFDD140](v5);
    if (v71)
    {
      v72 = tcp_set_keepalive_idle_time(a1, v71);
      if (v72)
      {
        v73 = v72;
        v74 = __nwlog_obj();
        v75 = a1 + 556;
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v73;
        LODWORD(v174) = 28;
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v74, 16, "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d", buf, v174);
        type[0] = OS_LOG_TYPE_ERROR;
        v180[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_187;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v53 = __nwlog_obj();
          v54 = type[0];
          if (!os_log_type_enabled(v53, type[0]))
          {
            goto LABEL_187;
          }

          goto LABEL_182;
        }

        if (v180[0] == OS_LOG_TYPE_INFO)
        {
          v60 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v54 = type[0];
          v90 = os_log_type_enabled(v53, type[0]);
          if (v60)
          {
            if (!v90)
            {
              goto LABEL_162;
            }

            goto LABEL_218;
          }

          if (!v90)
          {
            goto LABEL_187;
          }

          goto LABEL_261;
        }

        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_187;
        }

        goto LABEL_239;
      }
    }

    v80 = MEMORY[0x18CFDD150](v5);
    if (v80)
    {
      v81 = tcp_set_keepalive_interval(a1, v80);
      if (v81)
      {
        v73 = v81;
        v82 = __nwlog_obj();
        v75 = a1 + 556;
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v73;
        LODWORD(v174) = 28;
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v82, 16, "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d", buf, v174);
        type[0] = OS_LOG_TYPE_ERROR;
        v180[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_187;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v53 = __nwlog_obj();
          v54 = type[0];
          if (!os_log_type_enabled(v53, type[0]))
          {
            goto LABEL_187;
          }

LABEL_182:
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v75;
          *&buf[22] = 1024;
          *&buf[24] = v73;
          v12 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d";
          goto LABEL_262;
        }

        if (v180[0] == OS_LOG_TYPE_INFO)
        {
          v60 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v54 = type[0];
          v91 = os_log_type_enabled(v53, type[0]);
          if (v60)
          {
            if (!v91)
            {
              goto LABEL_162;
            }

LABEL_218:
            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_apply_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v75;
            *&buf[22] = 1024;
            *&buf[24] = v73;
            *&buf[28] = 2082;
            *&buf[30] = v60;
            v62 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, dumping backtrace:%{public}s";
            goto LABEL_150;
          }

          if (!v91)
          {
            goto LABEL_187;
          }

LABEL_261:
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v75;
          *&buf[22] = 1024;
          *&buf[24] = v73;
          v12 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, no backtrace";
          goto LABEL_262;
        }

        v53 = __nwlog_obj();
        v54 = type[0];
        if (!os_log_type_enabled(v53, type[0]))
        {
          goto LABEL_187;
        }

LABEL_239:
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v75;
        *&buf[22] = 1024;
        *&buf[24] = v73;
        v12 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_262;
      }
    }

    *type = MEMORY[0x18CFDD130](v5);
    v83 = tcp_setsockopt(a1, 6, 258, type);
    if (v83)
    {
      v84 = v83;
      v85 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v84;
      LODWORD(v174) = 28;
      v86 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v85, 16, "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d", buf, v174);
      v180[0] = OS_LOG_TYPE_ERROR;
      v179[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_266;
      }

      if (v180[0] == OS_LOG_TYPE_FAULT)
      {
        v87 = __nwlog_obj();
        v88 = v180[0];
        if (!os_log_type_enabled(v87, v180[0]))
        {
          goto LABEL_266;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v84;
        v89 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d";
      }

      else if (v179[0] == OS_LOG_TYPE_INFO)
      {
        v92 = __nw_create_backtrace_string();
        v87 = __nwlog_obj();
        v88 = v180[0];
        v93 = os_log_type_enabled(v87, v180[0]);
        if (v92)
        {
          if (v93)
          {
            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_apply_parameters";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 556;
            *&buf[22] = 1024;
            *&buf[24] = v84;
            *&buf[28] = 2082;
            *&buf[30] = v92;
            _os_log_impl(&dword_1889BA000, v87, v180[0], "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v92);
          goto LABEL_266;
        }

        if (!v93)
        {
LABEL_266:
          if (v86)
          {
            free(v86);
          }

          goto LABEL_268;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v84;
        v89 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, no backtrace";
      }

      else
      {
        v87 = __nwlog_obj();
        v88 = v180[0];
        if (!os_log_type_enabled(v87, v180[0]))
        {
          goto LABEL_266;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v84;
        v89 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v87, v88, v89, buf, 0x1Cu);
      goto LABEL_266;
    }
  }

LABEL_268:
  *type = 1;
  if (!MEMORY[0x18CFDD0C0](v5))
  {
    goto LABEL_286;
  }

  v104 = tcp_setsockopt(a1, 6, 259, type);
  if (!v104)
  {
    goto LABEL_286;
  }

  v105 = v104;
  v106 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v105;
  LODWORD(v174) = 28;
  v107 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v106, 16, "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d", buf, v174);
  v180[0] = OS_LOG_TYPE_ERROR;
  v179[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v180[0] == OS_LOG_TYPE_FAULT)
    {
      v108 = __nwlog_obj();
      v109 = v180[0];
      if (!os_log_type_enabled(v108, v180[0]))
      {
        goto LABEL_284;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v105;
      v110 = "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d";
      goto LABEL_283;
    }

    if (v179[0] != OS_LOG_TYPE_INFO)
    {
      v108 = __nwlog_obj();
      v109 = v180[0];
      if (!os_log_type_enabled(v108, v180[0]))
      {
        goto LABEL_284;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v105;
      v110 = "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_283;
    }

    v111 = __nw_create_backtrace_string();
    v108 = __nwlog_obj();
    v109 = v180[0];
    v112 = os_log_type_enabled(v108, v180[0]);
    if (v111)
    {
      if (v112)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v105;
        *&buf[28] = 2082;
        *&buf[30] = v111;
        _os_log_impl(&dword_1889BA000, v108, v180[0], "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v111);
      goto LABEL_284;
    }

    if (v112)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v105;
      v110 = "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, no backtrace";
LABEL_283:
      _os_log_impl(&dword_1889BA000, v108, v109, v110, buf, 0x1Cu);
    }
  }

LABEL_284:
  if (v107)
  {
    free(v107);
  }

LABEL_286:
  if (!MEMORY[0x18CFDD190](v5))
  {
    goto LABEL_304;
  }

  v113 = tcp_setsockopt(a1, 6, 8, type);
  if (!v113)
  {
    goto LABEL_304;
  }

  v114 = v113;
  v115 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v114;
  LODWORD(v174) = 28;
  v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v115, 16, "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d", buf, v174);
  v180[0] = OS_LOG_TYPE_ERROR;
  v179[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v180[0] == OS_LOG_TYPE_FAULT)
    {
      v117 = __nwlog_obj();
      v118 = v180[0];
      if (!os_log_type_enabled(v117, v180[0]))
      {
        goto LABEL_302;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v114;
      v119 = "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d";
      goto LABEL_301;
    }

    if (v179[0] != OS_LOG_TYPE_INFO)
    {
      v117 = __nwlog_obj();
      v118 = v180[0];
      if (!os_log_type_enabled(v117, v180[0]))
      {
        goto LABEL_302;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v114;
      v119 = "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_301;
    }

    v120 = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v118 = v180[0];
    v121 = os_log_type_enabled(v117, v180[0]);
    if (v120)
    {
      if (v121)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v114;
        *&buf[28] = 2082;
        *&buf[30] = v120;
        _os_log_impl(&dword_1889BA000, v117, v180[0], "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v120);
      goto LABEL_302;
    }

    if (v121)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v114;
      v119 = "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d, no backtrace";
LABEL_301:
      _os_log_impl(&dword_1889BA000, v117, v118, v119, buf, 0x1Cu);
    }
  }

LABEL_302:
  if (v116)
  {
    free(v116);
  }

LABEL_304:
  if (!MEMORY[0x18CFDD1B0](v5))
  {
    goto LABEL_322;
  }

  v122 = tcp_setsockopt(a1, 6, 520, type);
  if (!v122)
  {
    goto LABEL_322;
  }

  v123 = v122;
  v124 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v123;
  LODWORD(v174) = 28;
  v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v124, 16, "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d", buf, v174);
  v180[0] = OS_LOG_TYPE_ERROR;
  v179[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v180[0] == OS_LOG_TYPE_FAULT)
    {
      v126 = __nwlog_obj();
      v127 = v180[0];
      if (!os_log_type_enabled(v126, v180[0]))
      {
        goto LABEL_320;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v123;
      v128 = "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d";
      goto LABEL_319;
    }

    if (v179[0] != OS_LOG_TYPE_INFO)
    {
      v126 = __nwlog_obj();
      v127 = v180[0];
      if (!os_log_type_enabled(v126, v180[0]))
      {
        goto LABEL_320;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v123;
      v128 = "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_319;
    }

    v129 = __nw_create_backtrace_string();
    v126 = __nwlog_obj();
    v127 = v180[0];
    v130 = os_log_type_enabled(v126, v180[0]);
    if (v129)
    {
      if (v130)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v123;
        *&buf[28] = 2082;
        *&buf[30] = v129;
        _os_log_impl(&dword_1889BA000, v126, v180[0], "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v129);
      goto LABEL_320;
    }

    if (v130)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v123;
      v128 = "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, no backtrace";
LABEL_319:
      _os_log_impl(&dword_1889BA000, v126, v127, v128, buf, 0x1Cu);
    }
  }

LABEL_320:
  if (v125)
  {
    free(v125);
  }

LABEL_322:
  *v180 = MEMORY[0x18CFDD160](v5);
  if (!*v180)
  {
    goto LABEL_340;
  }

  v131 = tcp_setsockopt(a1, 6, 2, v180);
  if (!v131)
  {
    goto LABEL_340;
  }

  v132 = v131;
  v133 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v132;
  LODWORD(v174) = 28;
  v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v133, 16, "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d", buf, v174);
  v179[0] = OS_LOG_TYPE_ERROR;
  v178[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v179[0] == OS_LOG_TYPE_FAULT)
    {
      v135 = __nwlog_obj();
      v136 = v179[0];
      if (!os_log_type_enabled(v135, v179[0]))
      {
        goto LABEL_338;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v132;
      v137 = "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d";
      goto LABEL_337;
    }

    if (v178[0] != OS_LOG_TYPE_INFO)
    {
      v135 = __nwlog_obj();
      v136 = v179[0];
      if (!os_log_type_enabled(v135, v179[0]))
      {
        goto LABEL_338;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v132;
      v137 = "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_337;
    }

    v138 = __nw_create_backtrace_string();
    v135 = __nwlog_obj();
    v136 = v179[0];
    v139 = os_log_type_enabled(v135, v179[0]);
    if (v138)
    {
      if (v139)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v132;
        *&buf[28] = 2082;
        *&buf[30] = v138;
        _os_log_impl(&dword_1889BA000, v135, v179[0], "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v138);
      goto LABEL_338;
    }

    if (v139)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v132;
      v137 = "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, no backtrace";
LABEL_337:
      _os_log_impl(&dword_1889BA000, v135, v136, v137, buf, 0x1Cu);
    }
  }

LABEL_338:
  if (v134)
  {
    free(v134);
  }

LABEL_340:
  *v179 = MEMORY[0x18CFDD1E0](v5);
  if (!*v179)
  {
    goto LABEL_358;
  }

  v140 = tcp_setsockopt(a1, 6, 128, v179);
  if (!v140)
  {
    goto LABEL_358;
  }

  v141 = v140;
  v142 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v141;
  LODWORD(v174) = 28;
  v143 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v142, 16, "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d", buf, v174);
  v178[0] = OS_LOG_TYPE_ERROR;
  v176[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v178[0] == OS_LOG_TYPE_FAULT)
    {
      v144 = __nwlog_obj();
      v145 = v178[0];
      if (!os_log_type_enabled(v144, v178[0]))
      {
        goto LABEL_356;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v141;
      v146 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d";
      goto LABEL_355;
    }

    if (v176[0] != OS_LOG_TYPE_INFO)
    {
      v144 = __nwlog_obj();
      v145 = v178[0];
      if (!os_log_type_enabled(v144, v178[0]))
      {
        goto LABEL_356;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v141;
      v146 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_355;
    }

    v147 = __nw_create_backtrace_string();
    v144 = __nwlog_obj();
    v145 = v178[0];
    v148 = os_log_type_enabled(v144, v178[0]);
    if (v147)
    {
      if (v148)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v141;
        *&buf[28] = 2082;
        *&buf[30] = v147;
        _os_log_impl(&dword_1889BA000, v144, v178[0], "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v147);
      goto LABEL_356;
    }

    if (v148)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v141;
      v146 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, no backtrace";
LABEL_355:
      _os_log_impl(&dword_1889BA000, v144, v145, v146, buf, 0x1Cu);
    }
  }

LABEL_356:
  if (v143)
  {
    free(v143);
  }

LABEL_358:
  if (!MEMORY[0x18CFDD1F0](v5))
  {
    goto LABEL_376;
  }

  v149 = tcp_setsockopt(a1, 6, 256, type);
  if (!v149)
  {
    goto LABEL_376;
  }

  v150 = v149;
  v151 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v150;
  LODWORD(v174) = 28;
  v152 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v151, 16, "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d", buf, v174);
  v178[0] = OS_LOG_TYPE_ERROR;
  v176[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v178[0] == OS_LOG_TYPE_FAULT)
    {
      v153 = __nwlog_obj();
      v154 = v178[0];
      if (!os_log_type_enabled(v153, v178[0]))
      {
        goto LABEL_374;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v150;
      v155 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d";
      goto LABEL_373;
    }

    if (v176[0] != OS_LOG_TYPE_INFO)
    {
      v153 = __nwlog_obj();
      v154 = v178[0];
      if (!os_log_type_enabled(v153, v178[0]))
      {
        goto LABEL_374;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v150;
      v155 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_373;
    }

    v156 = __nw_create_backtrace_string();
    v153 = __nwlog_obj();
    v154 = v178[0];
    v157 = os_log_type_enabled(v153, v178[0]);
    if (v156)
    {
      if (v157)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v150;
        *&buf[28] = 2082;
        *&buf[30] = v156;
        _os_log_impl(&dword_1889BA000, v153, v178[0], "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v156);
      goto LABEL_374;
    }

    if (v157)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v150;
      v155 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, no backtrace";
LABEL_373:
      _os_log_impl(&dword_1889BA000, v153, v154, v155, buf, 0x1Cu);
    }
  }

LABEL_374:
  if (v152)
  {
    free(v152);
  }

LABEL_376:
  *v178 = MEMORY[0x18CFDD0B0](v5);
  if (!*v178)
  {
    goto LABEL_394;
  }

  v158 = tcp_setsockopt(a1, 6, 32, v178);
  if (!v158)
  {
    goto LABEL_394;
  }

  v159 = v158;
  v160 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v159;
  LODWORD(v174) = 28;
  v161 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v160, 16, "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d", buf, v174);
  v176[0] = OS_LOG_TYPE_ERROR;
  v177 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v176[0] == OS_LOG_TYPE_FAULT)
    {
      v162 = __nwlog_obj();
      v163 = v176[0];
      if (!os_log_type_enabled(v162, v176[0]))
      {
        goto LABEL_392;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v159;
      v164 = "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d";
      goto LABEL_391;
    }

    if (v177 != OS_LOG_TYPE_INFO)
    {
      v162 = __nwlog_obj();
      v163 = v176[0];
      if (!os_log_type_enabled(v162, v176[0]))
      {
        goto LABEL_392;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v159;
      v164 = "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_391;
    }

    v165 = __nw_create_backtrace_string();
    v162 = __nwlog_obj();
    v163 = v176[0];
    v166 = os_log_type_enabled(v162, v176[0]);
    if (v165)
    {
      if (v166)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v159;
        *&buf[28] = 2082;
        *&buf[30] = v165;
        _os_log_impl(&dword_1889BA000, v162, v176[0], "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v165);
      goto LABEL_392;
    }

    if (v166)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v159;
      v164 = "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_391:
      _os_log_impl(&dword_1889BA000, v162, v163, v164, buf, 0x1Cu);
    }
  }

LABEL_392:
  if (v161)
  {
    free(v161);
  }

LABEL_394:
  *v176 = MEMORY[0x18CFDD1C0](v5);
  if (*v176)
  {
    v167 = tcp_setsockopt(a1, 6, 64, v176);
    if (v167)
    {
      v168 = v167;
      v169 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v168;
      LODWORD(v174) = 28;
      v170 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v169, 16, "%{public}s %{public}s tcp_setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d", buf, v174);
      v177 = OS_LOG_TYPE_ERROR;
      if (!__nwlog_fault())
      {
        goto LABEL_403;
      }

      if (v177 == OS_LOG_TYPE_FAULT)
      {
        v171 = __nwlog_obj();
        v172 = v177;
        if (!os_log_type_enabled(v171, v177))
        {
          goto LABEL_403;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v168;
        v173 = "%{public}s %{public}s tcp_setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d";
      }

      else
      {
        v171 = __nwlog_obj();
        v172 = v177;
        if (!os_log_type_enabled(v171, v177))
        {
          goto LABEL_403;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v168;
        v173 = "%{public}s %{public}s tcp_setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v171, v172, v173, buf, 0x1Cu);
LABEL_403:
      if (v170)
      {
        free(v170);
      }
    }
  }

  if (nw_parameters_is_fallback())
  {
    *(a1 + 5436) |= 0x400u;
  }

  if (nw_parameters_get_server_mode())
  {
    *(a1 + 5436) |= 0x200000u;
    *(a1 + 372) |= 2u;
  }

  if (v5)
  {
    nw_release(v5);
  }

  return 1;
}

uint64_t tcp_ctloutput(uint64_t a1, uint64_t a2)
{
  v127 = *MEMORY[0x1E69E9840];
  __src = 0;
  v2 = *a1;
  if (!*a1)
  {
    return 54;
  }

  v3 = *(a2 + 4);
  if (v3 != 6)
  {
    if (v3 != 0xFFFF || ((v4 = *(a2 + 8), v4 != 4355) ? (v5 = v4 == 4357) : (v5 = 1), !v5))
    {
      v17 = **(*(a1 + 8) + 8);
      v18 = __nwlog_obj();
      if (v17 == 30)
      {
        *buf = 136446210;
        *&buf[4] = "ip6_ctloutput";
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v18, 16, "%{public}s currently unsupported", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_92;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (!os_log_type_enabled(v20, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip6_ctloutput";
          v22 = "%{public}s currently unsupported";
        }

        else if (v100 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v21 = type;
          v31 = os_log_type_enabled(v20, type);
          if (backtrace_string)
          {
            if (v31)
            {
              *buf = 136446466;
              *&buf[4] = "ip6_ctloutput";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_1889BA000, v20, type, "%{public}s currently unsupported, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
LABEL_92:
            if (v19)
            {
LABEL_93:
              free(v19);
            }

            return 0;
          }

          if (!v31)
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip6_ctloutput";
          v22 = "%{public}s currently unsupported, no backtrace";
        }

        else
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (!os_log_type_enabled(v20, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip6_ctloutput";
          v22 = "%{public}s currently unsupported, backtrace limit exceeded";
        }
      }

      else
      {
        *buf = 136446210;
        *&buf[4] = "ip_ctloutput";
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v18, 16, "%{public}s currently unsupported", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_92;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (!os_log_type_enabled(v20, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip_ctloutput";
          v22 = "%{public}s currently unsupported";
        }

        else if (v100 == 1)
        {
          v32 = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v21 = type;
          v33 = os_log_type_enabled(v20, type);
          if (v32)
          {
            if (v33)
            {
              *buf = 136446466;
              *&buf[4] = "ip_ctloutput";
              *&buf[12] = 2082;
              *&buf[14] = v32;
              _os_log_impl(&dword_1889BA000, v20, type, "%{public}s currently unsupported, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v32);
            if (!v19)
            {
              return 0;
            }

            goto LABEL_93;
          }

          if (!v33)
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip_ctloutput";
          v22 = "%{public}s currently unsupported, no backtrace";
        }

        else
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (!os_log_type_enabled(v20, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip_ctloutput";
          v22 = "%{public}s currently unsupported, backtrace limit exceeded";
        }
      }

      _os_log_impl(&dword_1889BA000, v20, v21, v22, buf, 0xCu);
      goto LABEL_92;
    }
  }

  v6 = *(v2 + 240);
  if (!v6)
  {
    return 54;
  }

  v9 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v10 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v9 + 308) < v10)
  {
    *v9 = *buf;
    *(v9 + 308) = v10;
  }

  v11 = a2;
  if (!*a2)
  {
    v23 = *(a2 + 8);
    result = 42;
    if (v23 > 261)
    {
      switch(v23)
      {
        case 512:
          v126 = 0;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0u;
          memset(buf, 0, sizeof(buf));
          v24 = v6;
          v25 = a2;
          tcp_fill_info(v24, *a1, a1, buf);
          v26 = *(a2 + 16);
          v27 = *(a2 + 24);
          v28 = v27 >= 0x1A8;
          v29 = 424;
          goto LABEL_262;
        case 513:
          if ((*(a1 + 366) & 8) == 0)
          {
            goto LABEL_248;
          }

          v51 = *(v6 + 332);
          goto LABEL_294;
        case 514:
          v51 = *(v6 + 748) & 8;
          goto LABEL_294;
        case 515:
          if ((*(v6 + 748) & 8) == 0)
          {
            return 22;
          }

          v88 = *(v6 + 776);
          if (!v88)
          {
            return 22;
          }

          *buf = *(v88 + 12);
          v26 = *(a2 + 16);
          if (*(a2 + 24) >= 8uLL)
          {
            v89 = 8;
          }

          else
          {
            v89 = *(a2 + 24);
          }

          *(a2 + 24) = v89;
          p_src = buf;
          goto LABEL_299;
        case 516:
        case 518:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 537:
        case 538:
          return result;
        case 517:
          v51 = *(v6 + 273);
          goto LABEL_294;
        case 519:
          v51 = *(v6 + 274);
          goto LABEL_294;
        case 520:
          v51 = (*(v6 + 748) >> 11) & 1;
          goto LABEL_294;
        case 521:
          if ((*(v6 + 750) & 2) != 0)
          {
            goto LABEL_249;
          }

          goto LABEL_248;
        case 528:
          v91 = *(v6 + 336);
          if ((v91 & 0x400) != 0)
          {
            goto LABEL_249;
          }

          if ((v91 & 0x800) == 0)
          {
            goto LABEL_248;
          }

          v51 = 2;
          goto LABEL_294;
        case 529:
          v51 = (*(v2 + 2376) >> 6) & 1;
          goto LABEL_294;
        case 530:
          if (*(a2 + 24) != 48)
          {
            return 22;
          }

          memset(&buf[8], 0, 40);
          v86 = *(v6 + 1040);
          if (v86)
          {
            LOBYTE(v87) = 0;
            do
            {
              if (*(v6 + 92) - *v86 < 0)
              {
                break;
              }

              LOBYTE(v87) = v87 + 1;
              v86 = *(v86 + 8);
            }

            while (v86);
            v87 = v87;
          }

          else
          {
            v87 = 0;
          }

          if (v87 >= 0xA)
          {
            v96 = 10;
          }

          else
          {
            v96 = v87;
          }

          *buf = *(v6 + 736) - v87;
          *&buf[4] = v96;
          if (v87)
          {
            tcp_get_notify_ack_ids(v6, buf);
            v11 = a2;
            v97 = *(a2 + 24);
          }

          else
          {
            v97 = 48;
          }

          if (v97 >= 0x30)
          {
            v89 = 48;
          }

          else
          {
            v89 = v97;
          }

          *(v11 + 24) = v89;
          v26 = *(v11 + 16);
          p_src = buf;
          goto LABEL_299;
        case 536:
          v51 = HIBYTE(*(v6 + 748)) & 1;
          goto LABEL_294;
        case 539:
          v51 = (*(v6 + 748) >> 27) & 1;
          goto LABEL_294;
        default:
          if (v23 == 262)
          {
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            memset(buf, 0, sizeof(buf));
            v92 = v6;
            v25 = a2;
            tcp_connection_fill_info(v92, *a1, a1, buf);
            v26 = *(a2 + 16);
            v27 = *(a2 + 24);
            v28 = v27 >= 0x70;
            v29 = 112;
LABEL_262:
            if (v28)
            {
              v89 = v29;
            }

            else
            {
              v89 = v27;
            }

            *(v25 + 24) = v89;
            p_src = buf;
            goto LABEL_299;
          }

          if (v23 != 4357)
          {
            return result;
          }

          v51 = (*(a1 + 368) >> 13) & 1;
          break;
      }

      goto LABEL_294;
    }

    if (v23 > 127)
    {
      if (v23 > 257)
      {
        if (v23 > 259)
        {
          if (v23 == 260)
          {
            v51 = (*(v6 + 336) >> 10) & 1;
          }

          else
          {
            if (*(v6 + 12) != 1 || (*(sysctls + 156) & 1) == 0)
            {
              return 45;
            }

            v51 = (*(v6 + 748) >> 22) & 1;
          }
        }

        else if (v23 == 258)
        {
          v51 = *(v6 + 680);
          if (!v51)
          {
            v51 = *(sysctls + 196);
          }
        }

        else
        {
          if ((*(v6 + 749) & 2) == 0)
          {
LABEL_248:
            __src = 0;
            goto LABEL_295;
          }

LABEL_249:
          v51 = 1;
        }

        goto LABEL_294;
      }

      if (v23 != 128)
      {
        if (v23 != 256)
        {
          if (v23 != 257)
          {
            return result;
          }

          v35 = *(v6 + 676);
          if (!v35)
          {
            v36 = *(sysctls + 192);
            goto LABEL_280;
          }

          goto LABEL_132;
        }

        v51 = *(v6 + 748) & 1;
LABEL_294:
        __src = v51;
LABEL_295:
        v26 = *(a2 + 16);
        if (*(a2 + 24) >= 4uLL)
        {
          v89 = 4;
        }

        else
        {
          v89 = *(a2 + 24);
        }

        *(a2 + 24) = v89;
        p_src = &__src;
LABEL_299:
        memcpy(v26, p_src, v89);
        return 0;
      }

      v65 = *(v6 + 252);
    }

    else
    {
      if (v23 <= 7)
      {
        switch(v23)
        {
          case 1:
            v51 = *(v6 + 88) & 4;
            break;
          case 2:
            v51 = *(v6 + 200);
            break;
          case 4:
            v51 = *(v6 + 88) & 0x1000;
            break;
          default:
            return result;
        }

        goto LABEL_294;
      }

      if (v23 <= 31)
      {
        if (v23 != 8)
        {
          if (v23 != 16)
          {
            return result;
          }

          v35 = *(v6 + 668);
          if (!v35)
          {
            v36 = *(sysctls + 188);
LABEL_280:
            v51 = v36 / 1000;
            goto LABEL_294;
          }

LABEL_132:
          v52 = 274877907 * v35;
LABEL_260:
          __src = v52 >> 38;
          goto LABEL_295;
        }

        v51 = *(v6 + 88) & 8;
        goto LABEL_294;
      }

      if (v23 == 32)
      {
        v65 = *(v6 + 672);
      }

      else
      {
        if (v23 != 64)
        {
          return result;
        }

        v65 = *(v6 + 324);
      }
    }

    v52 = 274877907 * v65;
    goto LABEL_260;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  v12 = *(a2 + 8);
  result = 42;
  if (v12 > 512)
  {
    if (v12 <= 527)
    {
      if (v12 > 516)
      {
        if (v12 <= 519)
        {
          if (v12 == 517)
          {
            v66 = **(a2 + 16);
            if (v66 <= 0xA)
            {
              if (v66)
              {
                result = 0;
                *(v6 + 273) = v66;
                return result;
              }

              *(v6 + 273) = 0;
              tcp_keepalive_reset(v6);
              return 0;
            }
          }

          else
          {
            if (v12 != 519)
            {
              return result;
            }

            v34 = **(a2 + 16);
            if (v34 <= 0xA)
            {
              result = 0;
              *(v6 + 274) = v34;
              return result;
            }
          }

          return 22;
        }

        if (v12 != 520)
        {
          if (v12 != 521)
          {
            return result;
          }

          v54 = **(a2 + 16);
          if (v54 <= 1)
          {
            v55 = *(v6 + 748);
            if (!v54)
            {
              result = 0;
              *(v6 + 748) = v55 & 0xFFFDFFFF;
              return result;
            }

            *(v6 + 748) = v55 | 0x20000;
            if ((*(v6 + 91) & 0x20) != 0 && *(v6 + 690))
            {
              tcp_pmtud_revert_segment_size(v6);
            }

            return 0;
          }

          return 22;
        }

        goto LABEL_161;
      }

      if (v12 == 513)
      {
        v81 = **(a2 + 16);
        if (v81 < 0)
        {
          return 22;
        }

        v82 = *(a1 + 364);
        result = 0;
        if (v81)
        {
          *(a1 + 364) = v82 | 0x80000;
          *(v6 + 332) = v81;
        }

        else
        {
          *(a1 + 364) = v82 & 0xFFF7FFFF;
          *(v6 + 332) = 0;
        }

        return result;
      }

      if (v12 == 514)
      {
        result = 0;
        if (**(a2 + 16))
        {
          *(v6 + 784) = 0u;
          *(v6 + 800) = 0u;
          *(v6 + 776) = v6 + 784;
          *(v6 + 796) = 6;
          *(v6 + 804) = 6 * *(v6 + 200);
          *(v6 + 748) |= 8u;
          *(v6 + 816) = 0;
        }

        else
        {
          *(v6 + 748) &= 0xFFFFFFF3;
        }

        return result;
      }

      if (v12 != 515)
      {
        return result;
      }

      if ((*(v6 + 748) & 8) == 0)
      {
        return 22;
      }

      v42 = *(v6 + 776);
      if (!v42)
      {
        return 22;
      }

      v43 = **(a2 + 16);
      v44 = HIDWORD(v43);
      if (v43)
      {
        if (!v44)
        {
          goto LABEL_107;
        }
      }

      else
      {
        LODWORD(v43) = v42[3];
        if (!v44)
        {
LABEL_107:
          LODWORD(v44) = v42[4];
          if (v43 > v44)
          {
            return 22;
          }

LABEL_322:
          result = 0;
          v42[3] = v43;
          v42[4] = v44;
          v98 = *(v6 + 200);
          v42[5] = v98 * v43;
          v42[6] = v98 * v44;
          return result;
        }
      }

      if (v43 > v44)
      {
        return 22;
      }

      goto LABEL_322;
    }

    if (v12 <= 535)
    {
      if (v12 != 528)
      {
        if (v12 != 529)
        {
          if (v12 != 530)
          {
            return result;
          }

          v50 = **(a2 + 16);
          if (v50 >= 1)
          {
            if (*(v6 + 736) > 9u)
            {
              return 59;
            }

            v94 = *(a1 + 384);
            if (!v94)
            {
              return 55;
            }

            v95 = *(v6 + 1040);
            if (!v95)
            {
LABEL_286:
              tcp_add_notify_ack_marker(v6, v50);
              return 0;
            }

            while (*(v95 + 4) != v50 && *v95 != *(v6 + 92) + v94)
            {
              v95 = *(v95 + 8);
              if (!v95)
              {
                goto LABEL_286;
              }
            }
          }

          return 22;
        }

        v78 = **(a2 + 16);
        if (v78 < 0)
        {
          return 22;
        }

        v79 = *(v2 + 2376);
        result = 0;
        if (v78)
        {
          v80 = v79 | 0x40;
        }

        else
        {
          v80 = v79 & 0xFFFFFFBF;
        }

        *(v2 + 2376) = v80;
        return result;
      }

      v84 = **(a2 + 16);
      if (v84 == 2)
      {
        result = 0;
        v73 = *(v6 + 336) & 0xFFFFF3FF;
LABEL_290:
        v85 = v73 | 0x800;
        goto LABEL_291;
      }

      if (v84 != 1)
      {
        if (v84)
        {
          return 22;
        }

        result = 0;
        v85 = *(v6 + 336) & 0xFFFFF3FF;
LABEL_291:
        *(v6 + 336) = v85;
        return result;
      }

      result = 0;
      v73 = *(v6 + 336) & 0xFFFFF3FF;
LABEL_288:
      v85 = v73 | 0x400;
      goto LABEL_291;
    }

    if (v12 <= 4354)
    {
      if (v12 != 536)
      {
        if (v12 != 539)
        {
          return result;
        }

        v40 = **(a2 + 16);
        if (v40 <= 1)
        {
          if (v40 == 1)
          {
            v41 = 0x8000000;
          }

          else
          {
            v41 = 0x10000000;
          }

          *(v6 + 748) = *(v6 + 748) & 0xE7FFFFFF | v41;
          tcp_set_foreground_cc(a1);
          return 0;
        }

        return 22;
      }

      v69 = **(a2 + 16);
      if (v69 > 1 || *(v6 + 12))
      {
        return 22;
      }

      v70 = *(v6 + 748);
      result = 0;
      if (v69)
      {
        v71 = v70 | 0x1000000;
      }

      else
      {
        v71 = v70 & 0xFEFFFFFF;
      }

      *(v6 + 748) = v71;
      return result;
    }

    if (v12 == 4355)
    {
      inp_flush(42);
      return 0;
    }

    if (v12 != 4357)
    {
      return result;
    }

    v59 = a1;
    v60 = *(a1 + 368);
    if (**(a2 + 16))
    {
      *(a1 + 368) = v60 | 0x2000;
      if (!*(a1 + 24))
      {
        goto LABEL_277;
      }

      all_stats = nw_protocol_tcp_get_all_stats();
      v59 = a1;
      if (!all_stats)
      {
        goto LABEL_277;
      }

      v62 = *(all_stats + 128) | 1;
    }

    else
    {
      *(a1 + 368) = v60 & 0xFFFFDFFF;
      if (!*(a1 + 24))
      {
        goto LABEL_277;
      }

      all_stats = nw_protocol_tcp_get_all_stats();
      v59 = a1;
      if (!all_stats)
      {
        goto LABEL_277;
      }

      v62 = *(all_stats + 128) & 0xFFFFFFFE;
    }

    *(all_stats + 128) = v62;
LABEL_277:
    set_tcp_stream_priority(v59);
    return 0;
  }

  if (v12 > 127)
  {
    if (v12 > 257)
    {
      if (v12 <= 259)
      {
        if (v12 != 258)
        {
          v37 = **(a2 + 16);
          if (v37 > 1)
          {
            return 22;
          }

          v38 = *(v6 + 748);
          result = 0;
          if (v37)
          {
            v39 = v38 | 0x200;
          }

          else
          {
            v39 = v38 & 0xFFFFFDFF;
          }

          *(v6 + 748) = v39;
          return result;
        }

        v46 = **(a2 + 16);
        if (v46 < 0)
        {
          return 22;
        }

        *(v6 + 680) = v46;
        if (*(v6 + 12) != 9)
        {
          return 0;
        }

        v67 = v46;
        if (!v46)
        {
          v67 = *(sysctls + 196);
        }

        v47 = *(v6 + 676);
        v68 = v47;
        if (!v47)
        {
          v68 = *(sysctls + 192);
        }

        if (!(v68 * v67))
        {
          return 0;
        }

        if (!v46)
        {
          v46 = *(sysctls + 196);
        }

        if (!v47)
        {
          v47 = *(sysctls + 192);
        }

LABEL_330:
        *(v6 + 44) = *(nw_tcp_access_globals(*(*(v6 + 80) + 224)) + 308) + v46 * v47 - *(v6 + 64);
        goto LABEL_331;
      }

      if (v12 != 260)
      {
        if (v12 != 261)
        {
          return result;
        }

        if (*(sysctls + 156))
        {
          v56 = **(a2 + 16);
          if (v56 > 1 || *(v6 + 12) != 1)
          {
            return 22;
          }

          v57 = *(v6 + 748);
          result = 0;
          if (v56)
          {
            v58 = v57 | 0x400000;
          }

          else
          {
            v58 = v57 & 0xFFBFFFFF;
          }

          *(v6 + 748) = v58;
          return result;
        }

        return 45;
      }

      v73 = *(v6 + 336) & 0xFFFFF3FF;
      result = 0;
      if (!**(a2 + 16))
      {
        goto LABEL_290;
      }

      goto LABEL_288;
    }

    if (v12 == 128)
    {
      v83 = **(a2 + 16);
      if ((v83 & 0x80000000) == 0)
      {
        result = 0;
        *(v6 + 252) = 1000 * v83;
        return result;
      }

      return 22;
    }

    if (v12 != 256)
    {
      if (v12 != 257)
      {
        return result;
      }

      v45 = **(a2 + 16);
      if (v45 > 0x418937)
      {
        return 22;
      }

      v46 = 1000 * v45;
      *(v6 + 676) = 1000 * v45;
      if (*(v6 + 12) != 9)
      {
        return 0;
      }

      v47 = *(v6 + 680);
      v48 = v47;
      if (v47)
      {
        v49 = 1000 * v45;
        if (v45)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v48 = *(sysctls + 196);
        v49 = 1000 * v45;
        if (v45)
        {
LABEL_116:
          if (!(v49 * v48))
          {
            return 0;
          }

LABEL_326:
          if (!v47)
          {
            v47 = *(sysctls + 196);
          }

          if (!v45)
          {
            v46 = *(sysctls + 192);
          }

          goto LABEL_330;
        }
      }

      if (!(*(sysctls + 192) * v48))
      {
        return 0;
      }

      goto LABEL_326;
    }

LABEL_161:
    v63 = (v12 == 520) << 11;
    if (v12 == 256)
    {
      v63 = 1;
    }

    result = 0;
    if (**(a2 + 16))
    {
      v64 = *(v6 + 748) | v63;
    }

    else
    {
      v64 = *(v6 + 748) & ~v63;
    }

    *(v6 + 748) = v64;
    return result;
  }

  if (v12 <= 7)
  {
    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v74 = **(a2 + 16);
        if (v74 >= 1 && v74 <= *(v6 + 200) && v74 + 40 >= *(sysctls + 160))
        {
          result = 0;
          *(v6 + 200) = v74;
          return result;
        }

        if ((*(a1 + 776) & 2) == 0)
        {
          v75 = __nwlog_tcp_log();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = *(v6 + 200);
            v77 = *(sysctls + 160);
            *buf = 136447234;
            *&buf[4] = "tcp_ctloutput";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 556;
            *&buf[22] = 1024;
            *&buf[24] = v74;
            *&buf[28] = 1024;
            *&buf[30] = v76;
            *&buf[34] = 1024;
            *&buf[36] = v77;
            _os_log_impl(&dword_1889BA000, v75, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s EINVAL: optval %d t_maxseg %u tcp_minmss %d", buf, 0x28u);
            return 22;
          }
        }

        return 22;
      }

      if (v12 != 4)
      {
        return result;
      }
    }
  }

  else
  {
    if (v12 > 31)
    {
      if (v12 == 32)
      {
        v72 = **(a2 + 16);
        if (v72 <= 0x418937)
        {
          v15 = 1000 * v72;
          *(v6 + 672) = 1000 * v72;
          if ((*(v6 + 12) - 1) > 2)
          {
            return 0;
          }

          if (!v72)
          {
            v15 = *(sysctls + 184);
          }

          v16 = *(*(v6 + 80) + 224);
          goto LABEL_198;
        }
      }

      else
      {
        if (v12 != 64)
        {
          return result;
        }

        v53 = **(a2 + 16);
        if ((v53 & 0x80000000) == 0)
        {
          result = 0;
          *(v6 + 324) = 1000 * v53;
          return result;
        }
      }

      return 22;
    }

    if (v12 != 8)
    {
      if (v12 != 16)
      {
        return result;
      }

      v14 = **(a2 + 16);
      if (v14 <= 0x418937)
      {
        v15 = 1000 * v14;
        *(v6 + 668) = 1000 * v14;
        v16 = *(*(v6 + 80) + 224);
        if (!v14 || (*(v16 + 372) & 8) == 0)
        {
          v15 = *(sysctls + 188);
        }

LABEL_198:
        *(v6 + 40) = *(nw_tcp_access_globals(v16) + 308) + v15 - *(v6 + 64);
LABEL_331:
        tcp_check_timer_state(v6);
        return 0;
      }

      return 22;
    }
  }

  if (v12 == 1)
  {
    v12 = 4;
  }

  else if (v12 == 4)
  {
    v12 = 4096;
  }

  result = 0;
  if (**(a2 + 16))
  {
    v93 = *(v6 + 88) | v12;
  }

  else
  {
    v93 = *(v6 + 88) & ~v12;
  }

  *(v6 + 88) = v93;
  return result;
}

uint64_t tcp_set_traffic_class(uint64_t a1, int a2)
{
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
  {
    v5 = 22;
    goto LABEL_23;
  }

  if (a2 > 9999)
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v5 = 22;
  if (a2 > 499)
  {
    if (a2 <= 699)
    {
      if (a2 != 500 && a2 != 600)
      {
        goto LABEL_23;
      }
    }

    else if (a2 != 700 && a2 != 900 && a2 != 800)
    {
      goto LABEL_23;
    }

LABEL_21:
    *(a1 + 552) = a2;
    set_tcp_stream_priority(a1);
    goto LABEL_22;
  }

  if (a2 > 199)
  {
    if (a2 != 200 && a2 != 300 && a2 != 400)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!a2 || a2 == 100)
  {
    goto LABEL_21;
  }

LABEL_23:
  (*(*(a1 + 8) + 24))(a1, 1, v2);
  return v5;
}

uint64_t tcp_usr_bind(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1 || *(v2 + 232) == 3)
  {
    return 22;
  }

  v4 = nw_tcp_access_globals(*(v2 + 224));
  v7 = 0;
  v8 = 0;
  microuptime(&v7);
  v5 = v8 / 1000 + 1000 * v7;
  if (*(v4 + 308) < v5)
  {
    *v4 = v7;
    *(v4 + 308) = v5;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 2 || (*(a2 + 4) & 0xF0) == 0xE0))
  {
    return 47;
  }

  if (*(v2 + 2370))
  {
    return 22;
  }

  if (*(v2 + 492))
  {
    return 22;
  }

  v7 = 0;
  v8 = 0;
  if (*a2 != 16)
  {
    return 22;
  }

  result = (*(*(v2 + 2280) + 8))(*(v2 + 224), a2, 16, &v7, 16);
  if (!result)
  {
    if (HIDWORD(v7))
    {
      *(v2 + 492) = HIDWORD(v7);
    }

    result = 0;
    *(v2 + 2370) = WORD1(v7);
  }

  return result;
}

uint64_t nw_protocol_tcp_connect(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_connect";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v4, 16, "%{public}s called with null protocol", buf, 12);
    if (!__nwlog_fault())
    {
      goto LABEL_24;
    }

    v8 = __nwlog_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136446210;
    v11 = "nw_protocol_tcp_connect";
    v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_23;
  }

  v1 = nw_protocol_downcast();
  if (v1)
  {
    v2 = v1;
    if ((*(v1 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v7 = __nwlog_tcp_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v11 = "nw_protocol_tcp_connect";
          v12 = 2082;
          v13 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got connect event", buf, 0x16u);
        }
      }
    }

    if (*MEMORY[0x1E6977EF0] != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
    }

    if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (*(v2 + 5352) == 2)
    {
      nw_protocol_get_input_handler();
      nw_protocol_connected_quiet();
      return 1;
    }

    else
    {
      nw_protocol_get_output_handler();
      return nw_protocol_connect_quiet();
    }
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_tcp_connect";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v6, 16, "%{public}s called with null tcp", buf, 12);
  if (__nwlog_fault())
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v11 = "nw_protocol_tcp_connect";
      v9 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_23:
      _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void nw_protocol_tcp_connected(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_connected";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v33, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v41 = "nw_protocol_tcp_connected";
        v38 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_102:
        _os_log_impl(&dword_1889BA000, v37, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
      }
    }

LABEL_103:
    if (v34)
    {
      free(v34);
    }

    return;
  }

  v2 = nw_protocol_downcast();
  if (!v2)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_connected";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v35, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v41 = "nw_protocol_tcp_connected";
        v38 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_102;
      }
    }

    goto LABEL_103;
  }

  v3 = v2;
  if ((*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v36 = __nwlog_tcp_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v41 = "nw_protocol_tcp_connected";
        v42 = 2082;
        v43 = v3 + 556;
        _os_log_impl(&dword_1889BA000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got a connected event from the lower layer", buf, 0x16u);
      }
    }
  }

  if ((*(v3 + 5352) - 1) >= 2)
  {
    if ((*(v3 + 776) & 2) != 0)
    {
      return;
    }

    if (!__nwlog_is_datapath_logging_enabled())
    {
      return;
    }

    v14 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 136446466;
    v41 = "nw_protocol_tcp_connected";
    v42 = 2082;
    v43 = v3 + 556;
    v15 = "%{public}s %{public}s skipping";
LABEL_25:
    v16 = v14;
    v17 = OS_LOG_TYPE_DEBUG;
LABEL_38:
    _os_log_impl(&dword_1889BA000, v16, v17, v15, buf, 0x16u);
    return;
  }

  if (*(v3 + 5344))
  {
    nw_protocol_get_identifier();
    stats_region = nw_path_flow_registration_get_stats_region();
    *(v3 + 4264) = stats_region;
    if (stats_region)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!*(v3 + 4264))
  {
LABEL_8:
    *(v3 + 4264) = &tcpstat;
  }

LABEL_9:
  *(v3 + 4272) = nw_path_flow_registration_get_advisory_region();
  remote_endpoint = nw_protocol_get_remote_endpoint();
  if (!remote_endpoint)
  {
    if ((*(v3 + 776) & 2) == 0)
    {
      v18 = __nwlog_tcp_log();
      v19 = v3 + 556;
      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v18, 16, "%{public}s %{public}s get_remote_endpoint failed", buf, 22);
      if (__nwlog_fault())
      {
        v24 = __nwlog_tcp_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_connected";
          v42 = 2082;
          v43 = v19;
          v25 = "%{public}s %{public}s get_remote_endpoint failed, backtrace limit exceeded";
LABEL_49:
          _os_log_impl(&dword_1889BA000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x16u);
        }
      }

LABEL_50:
      if (v20)
      {
        free(v20);
      }
    }

LABEL_52:
    nw_protocol_get_input_handler();
    nw_protocol_error();
    return;
  }

  address = nw_endpoint_get_address(remote_endpoint);
  if (!address)
  {
    if ((*(v3 + 776) & 2) == 0)
    {
      v21 = __nwlog_tcp_log();
      v22 = v3 + 556;
      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v21, 16, "%{public}s %{public}s nw_endpoint_get_address failed", buf, 22);
      if (__nwlog_fault())
      {
        v24 = __nwlog_tcp_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_connected";
          v42 = 2082;
          v43 = v22;
          v25 = "%{public}s %{public}s nw_endpoint_get_address failed, backtrace limit exceeded";
          goto LABEL_49;
        }
      }

      goto LABEL_50;
    }

    goto LABEL_52;
  }

  if ((*(v3 + 5438) & 0x20) == 0)
  {
    v7 = address;
    microuptime(v3 + 5376);
    v8 = *(v3 + 376);
    if ((v8 & 4) != 0)
    {
LABEL_76:
      if ((*(v3 + 776) & 2) != 0)
      {
        return;
      }

      if (!__nwlog_is_datapath_logging_enabled())
      {
        return;
      }

      v14 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v15 = "%{public}s %{public}s is already connecting";
      goto LABEL_25;
    }

    v9 = *(v3 + 364);
    if ((*(v3 + 372) & 2) != 0)
    {
      if ((v9 & 8) == 0)
      {
LABEL_46:
        v11 = 102;
        goto LABEL_47;
      }
    }

    else if ((v9 & 8) == 0)
    {
      if ((v8 & 2) != 0)
      {
        goto LABEL_68;
      }

      v10 = (*(*(*(v3 + 8) + 40) + 24))(v3, v7);
      if (v10)
      {
        v11 = v10;
        *(v3 + 376) &= ~4u;
        v12 = (v10 - 6);
        if (v12 > 0x3B)
        {
LABEL_80:
          if (v10 == 1)
          {
LABEL_19:
            v13 = __nwlog_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v41 = "nw_protocol_tcp_connected";
              v42 = 1024;
              LODWORD(v43) = v11;
              _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s tcp_trigger_connect failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_52;
          }

LABEL_47:
          v26 = __nwlog_obj();
          *buf = 136446466;
          v41 = "nw_protocol_tcp_connected";
          v42 = 1024;
          LODWORD(v43) = v11;
          v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v26, 16, "%{public}s tcp_trigger_connect failed %{darwin.errno}d", buf, 18);
          if (__nwlog_fault())
          {
            v28 = __nwlog_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v41 = "nw_protocol_tcp_connected";
              v42 = 1024;
              LODWORD(v43) = v11;
              _os_log_impl(&dword_1889BA000, v28, OS_LOG_TYPE_ERROR, "%{public}s tcp_trigger_connect failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }

          if (v27)
          {
            free(v27);
          }

          goto LABEL_52;
        }

        if (((1 << (v10 - 6)) & 0xCC0380000000081) != 0)
        {
          goto LABEL_19;
        }

        if (v12 != 31)
        {
          if (v12 == 50)
          {
LABEL_68:
            *(v3 + 5352) = 2;
            nw_protocol_tcp_input_available(a1);
            if (*MEMORY[0x1E6977EF0] != -1)
            {
              dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
            }

            if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
            {
              kdebug_trace();
            }

            nw_protocol_get_input_handler();
            nw_protocol_connected();
            if ((*(v3 + 776) & 2) == 0)
            {
              v23 = __nwlog_tcp_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 136446466;
                v41 = "nw_protocol_tcp_connected";
                v42 = 2082;
                v43 = v3 + 556;
                v15 = "%{public}s %{public}s is already connected";
                goto LABEL_37;
              }
            }

            return;
          }

          goto LABEL_80;
        }

        goto LABEL_76;
      }

      if ((*(v3 + 5436) & 0x20) == 0)
      {
        nw_protocol_tcp_input_available(a1);
        return;
      }

      if (tcp_perf_measurement == 1)
      {
        if ((*(v3 + 776) & 2) != 0)
        {
          goto LABEL_86;
        }

        if (!__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_86;
        }

        v29 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_86;
        }

        *buf = 136446466;
        v41 = "nw_protocol_tcp_connected";
        v42 = 2082;
        v43 = v3 + 556;
        v30 = v29;
        v31 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if ((*(v3 + 776) & 2) != 0)
        {
          goto LABEL_86;
        }

        v32 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_86;
        }

        *buf = 136446466;
        v41 = "nw_protocol_tcp_connected";
        v42 = 2082;
        v43 = v3 + 556;
        v30 = v32;
        v31 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1889BA000, v30, v31, "%{public}s %{public}s tfo preconnect", buf, 0x16u);
LABEL_86:
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
      }

      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      nw_protocol_get_input_handler();
      nw_protocol_connected();
      return;
    }

    if ((*(v3 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
    {
      v39 = __nwlog_tcp_log();
      v11 = 102;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v41 = "tcp_trigger_connect";
        v42 = 2082;
        v43 = v3 + 556;
        v44 = 1024;
        LODWORD(v45) = 102;
        _os_log_impl(&dword_1889BA000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct flow error (%d)", buf, 0x1Cu);
      }

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if ((*(v3 + 776) & 2) == 0)
  {
    v23 = __nwlog_tcp_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v15 = "%{public}s %{public}s is accepting an inbound connection";
LABEL_37:
      v16 = v23;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_38;
    }
  }
}

uint64_t tcp_usr_connect(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
    return 22;
  }

  if (*(v2 + 232) == 3)
  {
    v3 = *(a1 + 189);
    if (*(a1 + 189))
    {
      *(a1 + 189) = 0;
      v5 = __nwlog_obj();
      v6 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "tcp_usr_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v18 = 1024;
      v19 = v3;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v5, 16, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d", buf, 28);
      if (__nwlog_fault())
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "tcp_usr_connect";
          *&buf[12] = 2082;
          *&buf[14] = v6;
          v18 = 1024;
          v19 = v3;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

      if (v7)
      {
        free(v7);
      }

      return v3;
    }

    return 22;
  }

  v9 = *(v2 + 240);
  if ((a1[46] & 0x10) != 0 && (*(sysctls + 156) & 2) != 0)
  {
    *(v9 + 748) |= 0x400000u;
  }

  v11 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v12 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v11 + 308) < v12)
  {
    *v11 = *buf;
    *(v11 + 308) = v12;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 2 || (*(a2 + 4) & 0xF0) == 0xE0))
  {
    return 47;
  }

  v3 = tcp_connect(v9, a2);
  if (v3)
  {
    return v3;
  }

  v13 = *(*a1 + 240);
  (*(*(*(v13 + 80) + 2280) + 64))(a1[3]);
  if ((a1[46] & 0x20) != 0)
  {
    tcp_mss(v13, 0xFFFFFFFF, 0);
    v3 = 0;
    v16 = *(v13 + 200);
    *(v13 + 144) = v16;
    *(v13 + 260) = v16;
    return v3;
  }

  return tcp_output(v13);
}

uint64_t tcp_connect(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *(v3 + 224);
  v5 = *(v3 + 2370);
  if (!*(v3 + 2370))
  {
    if (*(v3 + 492))
    {
LABEL_22:
      v17 = 22;
LABEL_41:
      tcp_drop(a1, v17);
      return v17;
    }

    v18 = a2;
    *v31 = 0;
    *&v31[8] = 0;
    v17 = (*(*(v3 + 2280) + 8))(v4, 0, 16, v31, 16);
    if (v17)
    {
      goto LABEL_41;
    }

    a2 = v18;
    if (*&v31[4])
    {
      *(v3 + 492) = *&v31[4];
    }

    v5 = *&v31[2];
    *(v3 + 2370) = *&v31[2];
  }

  if (*a2 != 16)
  {
    v17 = 22;
    if (!v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(a2 + 1) != 2)
  {
    v17 = 47;
    if (!v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v6 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    v17 = 49;
    if (!v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v7 = *(a2 + 4);
  if (v7 == -1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136446210;
      *&v31[4] = "in_pcbladdr";
      _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s INADDR_BROADCAST destination not supported", v31, 0xCu);
    }

    v17 = 61;
    if (!v4)
    {
      goto LABEL_37;
    }

LABEL_36:
    if ((*(v4 + 776) & 2) != 0)
    {
      goto LABEL_41;
    }

LABEL_37:
    v20 = __nwlog_tcp_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = &unk_188A285CF;
      if (v4)
      {
        v21 = (v4 + 556);
      }

      *v31 = 136446466;
      *&v31[4] = "tcp_connect";
      *&v31[12] = 2082;
      *&v31[14] = v21;
      _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ipv4 pcb local address lookup failed", v31, 0x16u);
    }

    goto LABEL_41;
  }

  if (*(v3 + 492) == v7 && v5 == v6)
  {
    goto LABEL_22;
  }

  *(v3 + 476) = v7;
  *(v3 + 2368) = v6;
  if (!*(v3 + 460))
  {
    v9 = inp_calc_flowhash_flow_hash++;
    *(v3 + 460) = v9;
  }

  v10 = *(a1 + 270);
  if (*(sysctls + 180) > v10)
  {
    LOBYTE(v10) = *(sysctls + 180);
  }

  v11 = (sysctls + 72);
  if ((*(v4 + 497) & 2) != 0)
  {
    v11 = (v4 + 468);
  }

  v12 = *v11;
  v13 = v10;
  v14 = 0x10000 << v10;
  if (v13 <= 0xD && v14 < v12)
  {
    do
    {
      v16 = v13 + 1;
      if (v13 > 0xC)
      {
        break;
      }

      v23 = 0x20000 << v13++;
    }

    while (v23 < v12);
  }

  else
  {
    v16 = v13;
  }

  if (v16 >= 0xE)
  {
    v24 = 14;
  }

  else
  {
    v24 = v16;
  }

  *(a1 + 270) = v24;
  *(v4 + 376) = *(v4 + 376) & 0xFFF1 | 4;
  v25 = *(a1 + 1064);
  if (v25)
  {
    ++*(v25 + 376);
  }

  *(a1 + 12) = 2;
  if (*(v4 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 136) = 2;
    }
  }

  v27 = *(a1 + 672);
  if (!v27)
  {
    v27 = *(sysctls + 184);
  }

  *(a1 + 40) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v27 - *(a1 + 64);
  v28 = tcp_new_isn(a1);
  *(a1 + 112) = v28;
  *(a1 + 156) = v28;
  *(a1 + 96) = v28;
  *(a1 + 100) = v28;
  *(a1 + 92) = v28;
  if (!*(v4 + 24))
  {
    return 0;
  }

  v29 = nw_protocol_tcp_get_all_stats();
  if (v29)
  {
    *(v29 + 108) = *(a1 + 96) - *(a1 + 92);
  }

  if (!*(v4 + 24))
  {
    return 0;
  }

  v30 = nw_protocol_tcp_get_all_stats();
  v17 = 0;
  if (v30)
  {
    ++*(v30 + 60);
  }

  return v17;
}

uint64_t tcp_new_isn(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v1 = *(a1 + 12);
  if (v1 == 10 || v1 == 1)
  {

    return arc4random();
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
    microuptime(v12);
    if (tcp_new_isn_isn_last_reseed)
    {
      v5 = v12[0];
    }

    else
    {
      arc4random_buf(__buf, 0x40uLL);
      v5 = v12[0];
      tcp_new_isn_isn_last_reseed = v12[0];
    }

    CC_SHA256_Init(&v11);
    CC_SHA256_Update(&v11, __buf, 0x40u);
    v6 = a1;
    CC_SHA256_Update(&v11, (*(a1 + 80) + 2368), 2u);
    CC_SHA256_Update(&v11, (*(a1 + 80) + 2370), 2u);
    v7 = *(a1 + 80);
    v8 = 464;
    if ((*(v7 + 2380) & 2) != 0)
    {
      v9 = 16;
    }

    else
    {
      v8 = 476;
      v9 = 4;
    }

    if ((*(v7 + 2380) & 2) != 0)
    {
      v10 = 480;
    }

    else
    {
      v10 = 492;
    }

    CC_SHA256_Update(&v11, (v7 + v8), v9);
    CC_SHA256_Update(&v11, (*(v6 + 80) + v10), v9);
    CC_SHA256_Final(md, &v11);
    return (*md + 1048 * v5);
  }
}

uint64_t nw_proto_tcp_ecn_enabled(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1 && *(v1 + 5336) && *(v1 + 5344))
    {

      return MEMORY[0x1EEDD3E38]();
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_proto_tcp_ecn_enabled";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v2, 16, "%{public}s called with null so", buf, 12);
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_proto_tcp_ecn_enabled";
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s called with null so, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v3)
    {
      free(v3);
    }

    return 0;
  }
}

void nw_proto_tcp_notify_segmentation_offload(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((v1[5438] & 0x40) != 0)
      {
        if (*v1)
        {
          if ((*(*v1 + 2380) & 2) != 0)
          {
            tso_max_segment_size_v6 = nw_path_get_tso_max_segment_size_v6();
          }

          else
          {
            tso_max_segment_size_v6 = nw_path_get_tso_max_segment_size_v4();
          }

          v5 = tso_max_segment_size_v6 != 0;
        }

        else
        {
          v5 = 0;
        }

        if ((v2[776] & 2) == 0)
        {
          v6 = __nwlog_tcp_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            v13 = "nw_proto_tcp_notify_segmentation_offload";
            v14 = 2082;
            v15 = v2 + 556;
            v16 = 1024;
            v17 = v5;
            _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s notifying segmentation offload value %d", buf, 0x1Cu);
          }
        }

        nw_protocol_get_output_handler();
        nw_protocol_notify_quiet();
      }

      else if ((v1[776] & 2) == 0)
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v13 = "nw_proto_tcp_notify_segmentation_offload";
          v14 = 2082;
          v15 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s segmentation offload notification not enabled", buf, 0x16u);
        }
      }

      return;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_proto_tcp_notify_segmentation_offload";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s called with null tcp", buf, 12);
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_proto_tcp_notify_segmentation_offload";
        v11 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_26;
      }
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_proto_tcp_notify_segmentation_offload";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v7, 16, "%{public}s called with null protocol", buf, 12);
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_proto_tcp_notify_segmentation_offload";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_26:
        _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
      }
    }
  }

  if (v8)
  {
    free(v8);
  }
}

uint64_t tcp_rtlookup(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 496);
  if (v4)
  {
    if ((*(v4 + 1624) & 0x2000001) == 1)
    {
LABEL_11:
      v6 = *(a1 + 240);
      v7 = sysctls;
      if (*(sysctls + 80) && ((v8 = *(v4 + 1632)) == 0 || (*(v4 + 1624) & 1) != 0 && (*(v8 + 73) & 1) == 0))
      {
        v9 = *(v6 + 88) | 0x4000000;
      }

      else
      {
        v9 = *(v6 + 88) & 0xFBFFFFFF;
      }

      *(v6 + 88) = v9;
      v13 = *(v4 + 216);
      if (!v13)
      {
LABEL_53:
        if (*(v4 + 1628))
        {
          *(v6 + 88) |= 0x20000u;
        }

        return v4;
      }

      *(v6 + 88) = v9 & 0xEFFFFFFF;
      v14 = *(v6 + 80);
      v15 = *(v13 + 1192);
      if ((*(v14 + 2380) & 2) != 0)
      {
        if ((v15 & 0x400000) == 0)
        {
          goto LABEL_34;
        }

        v16 = 1208;
      }

      else
      {
        if ((v15 & 0x200000) == 0)
        {
          goto LABEL_34;
        }

        v16 = 1204;
      }

      *(v6 + 88) = v9 | 0x10000000;
      v17 = *(v13 + v16);
      if (v17 >= 0xFFFF)
      {
        v18 = 0xFFFF;
      }

      else
      {
        v18 = *(v13 + v16);
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0xFFFF;
      }

      *(v6 + 684) = v19;
LABEL_34:
      v20 = *(v6 + 336);
      if ((v20 & 0x400) != 0 || (v20 & 0x800) == 0 && *(v7 + 92) == 1) && (v21 = (*(*(v14 + 2280) + 16))(*(v14 + 224)), v20 = *(v6 + 336), (v21))
      {
        *(v6 + 336) = v20 | 0x1000;
        if (*(v6 + 2096))
        {
          if (*(v6 + 348) == 1)
          {
            *(v6 + 348) = 2;
          }

          if (*(v6 + 352) == 1)
          {
            *(v6 + 352) = 2;
          }
        }
      }

      else
      {
        *(v6 + 336) = v20 & 0xFFFFEFFF;
      }

      if (*(v6 + 12) > 3)
      {
        goto LABEL_50;
      }

      if (tcp_developer_l4s == 2)
      {
        goto LABEL_48;
      }

      v22 = *(v4 + 216);
      if (v22)
      {
        v23 = *(v22 + 1246);
        if (v23 == 2)
        {
LABEL_48:
          LOBYTE(v24) = 0;
LABEL_49:
          *(v6 + 2096) = *(v6 + 2096) & 0xFE | v24;
LABEL_50:
          os_unfair_lock_lock((v6 + 1872));
          if (!*(a1 + 448))
          {
            *(a1 + 448) = *(v4 + 216);
          }

          os_unfair_lock_unlock((v6 + 1872));
          goto LABEL_53;
        }

        LOBYTE(v24) = 1;
        if (tcp_developer_l4s == 1 || v23 == 1)
        {
          goto LABEL_49;
        }
      }

      else if (tcp_developer_l4s == 1)
      {
        LOBYTE(v24) = 1;
        goto LABEL_49;
      }

      v24 = *(sysctls + 312);
      if (v24 != 1)
      {
        v24 = (*(v6 + 751) >> 3) & 1;
      }

      goto LABEL_49;
    }

    if (*(v4 + 1640) == 1)
    {
      v5 = *(v4 + 1632);
      if (v5)
      {
        free(v5);
        v4 = *(a1 + 496);
        *(v4 + 1632) = 0;
      }

      *(v4 + 1640) = 0;
    }
  }

  *(a1 + 2152) = 528;
  *(a1 + 2156) = *(a1 + 476);
  if ((*(a1 + 2373) & 0x40) != 0)
  {
    a2 = *(*(a1 + 440) + 1220);
  }

  bzero((a1 + 504), 0x670uLL);
  *(a1 + 704) = *(a1 + 2152);
  *(a1 + 720) = a1 + 728;
  *(a1 + 1912) = 0u;
  *(a1 + 1948) = 1;
  *(a1 + 1952) = 6;
  *(a1 + 2104) = a1 + 2112;
  *(a1 + 2113) = 2;
  *(a1 + 2128) = 1;
  *(a1 + 496) = a1 + 504;
  if (((**(a1 + 2280))(a1 + 496, a1 + 504, a2) & 0x80000000) != 0)
  {
    *(a1 + 496) = 0;
  }

  else
  {
    v4 = *(a1 + 496);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v10 = *(a1 + 240);
  v11 = *(v10 + 88);
  v4 = 0;
  if (*(sysctls + 80))
  {
    v12 = v11 | 0x4000000;
  }

  else
  {
    v12 = v11 & 0xFBFFFFFF;
  }

  *(v10 + 88) = v12;
  return v4;
}

uint64_t nw_proto_tcp_route_init(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1792);
  v3 = *(a1 + 1800);
  v4 = *v3;
  v5 = *(*v3 + 240);
  if (!a2)
  {
    v62 = __nwlog_obj();
    *&__n[1] = 136446210;
    *&__n[5] = "nw_proto_tcp_route_init";
    v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v62, 16, "%{public}s called with null rt", &__n[1], 12);
    __src[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_139;
    }

    if (__src[0] == OS_LOG_TYPE_FAULT)
    {
      v64 = __nwlog_obj();
      v65 = __src[0];
      if (!os_log_type_enabled(v64, __src[0]))
      {
        goto LABEL_139;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v66 = "%{public}s called with null rt";
    }

    else
    {
      v64 = __nwlog_obj();
      v65 = __src[0];
      if (!os_log_type_enabled(v64, __src[0]))
      {
        goto LABEL_139;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v66 = "%{public}s called with null rt, backtrace limit exceeded";
    }

    goto LABEL_138;
  }

  if (!*(a2 + 216))
  {
    v67 = __nwlog_obj();
    *&__n[1] = 136446210;
    *&__n[5] = "nw_proto_tcp_route_init";
    v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v67, 16, "%{public}s called with null rt->rt_ifp", &__n[1], 12);
    __src[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_139;
    }

    if (__src[0] == OS_LOG_TYPE_FAULT)
    {
      v64 = __nwlog_obj();
      v65 = __src[0];
      if (!os_log_type_enabled(v64, __src[0]))
      {
        goto LABEL_139;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v66 = "%{public}s called with null rt->rt_ifp";
    }

    else
    {
      v64 = __nwlog_obj();
      v65 = __src[0];
      if (!os_log_type_enabled(v64, __src[0]))
      {
        goto LABEL_139;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v66 = "%{public}s called with null rt->rt_ifp, backtrace limit exceeded";
    }

LABEL_138:
    _os_log_impl(&dword_1889BA000, v64, v65, v66, &__n[1], 0xCu);
LABEL_139:
    if (v63)
    {
      free(v63);
    }

    return 0xFFFFFFFFLL;
  }

  v7 = *(v4 + 492);
  nw_protocol_upcast();
  if (!nw_protocol_get_input_handler())
  {
    if ((v3[776] & 2) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *&__n[1] = 136446466;
    *&__n[5] = "nw_proto_tcp_route_init";
    v74 = 2082;
    v75 = (v3 + 556);
    v15 = "%{public}s %{public}s no input handler";
    goto LABEL_22;
  }

  if (!*(v2 + 5336))
  {
    if ((v3[776] & 2) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *&__n[1] = 136446466;
    *&__n[5] = "nw_proto_tcp_route_init";
    v74 = 2082;
    v75 = (v3 + 556);
    v15 = "%{public}s %{public}s no path from input_handler received";
LABEL_22:
    _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, v15, &__n[1], 0x16u);
    return 0xFFFFFFFFLL;
  }

  mtu = nw_path_get_mtu();
  if (!mtu)
  {
    if ((v3[776] & 2) == 0)
    {
      v14 = __nwlog_tcp_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *&__n[1] = 136446466;
        *&__n[5] = "nw_proto_tcp_route_init";
        v74 = 2082;
        v75 = (v3 + 556);
        v15 = "%{public}s %{public}s no mtu received";
        goto LABEL_22;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v9 = mtu;
  *(*(a2 + 216) + 1188) = mtu;
  tso_max_segment_size_v4 = nw_path_get_tso_max_segment_size_v4();
  v11 = *(a2 + 216);
  *(v11 + 1204) = tso_max_segment_size_v4;
  if (tso_max_segment_size_v4)
  {
    *(v11 + 1192) |= 0x200000u;
  }

  tso_max_segment_size_v6 = nw_path_get_tso_max_segment_size_v6();
  v13 = *(a2 + 216);
  *(v13 + 1208) = tso_max_segment_size_v6;
  if (tso_max_segment_size_v6)
  {
    *(v13 + 1192) |= 0x400000u;
  }

  *(*(a2 + 216) + 1192) |= nw_path_get_csum_flags();
  if ((*(v4 + 2380) & 2) != 0)
  {
    if (!nw_path_get_ipv6_network_signature())
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (nw_path_get_ipv4_network_signature())
  {
LABEL_24:
    memcpy((*(a2 + 216) + 1226), __src, 0x14uLL);
    *(*(a2 + 216) + 1225) = 20;
  }

LABEL_25:
  interface_index = nw_path_get_interface_index();
  *(*(a2 + 216) + 1220) = interface_index;
  v17 = *(v4 + 240);
  heuristics = tcp_get_heuristics(*(v17 + 80), 1);
  if (heuristics)
  {
    v19 = heuristics;
    v20 = *(heuristics + 37);
    *(heuristics + 37) = v20 + 1;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v21 = *(*(v17 + 80) + 224);
    if (v21)
    {
      if ((*(v21 + 776) & 2) != 0)
      {
        goto LABEL_36;
      }
    }

    HIDWORD(v70) = v9;
    v22 = __nwlog_tcp_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v24 = (v21 + 556);
    v25 = *(v19 + 37);
    *&__n[1] = 136446722;
    *&__n[5] = "tcp_get_route_heuristics";
    if (!v21)
    {
      v24 = &unk_188A285CF;
    }

    v74 = 2082;
    v75 = v24;
    v76 = 1024;
    *v77 = v25;
    LODWORD(v70) = 28;
    v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1889BA000, v22, 16, "%{public}s %{public}s tcp cache refcnt %d", &__n[1], v70);
    result = __nwlog_should_abort();
    if (!result)
    {
      free(v26);
      v9 = v71;
LABEL_36:
      v27 = v19 + 17;
      v28 = (a2 + 1632);
      *(a2 + 1632) = v19 + 68;
      goto LABEL_47;
    }

LABEL_147:
    __break(1u);
    return result;
  }

  v29 = *(*(v17 + 80) + 224);
  if (!v29 || (*(v29 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v68 = __nwlog_tcp_log();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        v69 = &unk_188A285CF;
        if (v29)
        {
          v69 = (v29 + 556);
        }

        *&__n[1] = 136446466;
        *&__n[5] = "tcp_get_route_heuristics";
        v74 = 2082;
        v75 = v69;
        _os_log_impl(&dword_1889BA000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s tcp get heuristics failed", &__n[1], 0x16u);
      }
    }
  }

  *(a2 + 1632) = 0;
  v27 = malloc_type_calloc(1uLL, 0x4CuLL, 0x40772693uLL);
  if (!v27)
  {
    v30 = __nwlog_obj();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    *&__n[1] = 136446722;
    *&__n[5] = "nw_proto_tcp_route_init";
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v74 = 2048;
    v75 = 1;
    v76 = 2048;
    *v77 = 76;
    v33 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_1889BA000, v30, 16, "%{public}s strict_calloc(%zu, %zu) failed", &__n[1], 32);
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_147;
    }

    free(v33);
    v27 = 0;
  }

  v28 = (a2 + 1632);
  *(a2 + 1632) = v27;
  *(a2 + 1640) = 1;
LABEL_47:
  *(v5 + 1880) = 1;
  if (*(sysctls + 248))
  {
    if (v27[16])
    {
      *(v5 + 1880) = 2;
    }

    else
    {
      *&__n[1] = 0;
      nw_path_get_rtt_values();
      v27 = *v28;
    }
  }

  if (!v27[12])
  {
    v27[12] = v9;
  }

  *(a2 + 1472) = 528;
  *(a2 + 1476) = v7;
  *(a2 + 1480) = 0;
  v34 = *(a2 + 216);
  v35 = *(v34 + 1192);
  if ((v35 & 0x400020) == 0 && (*(v4 + 2380) & 2) != 0 || (v35 & 0x200002) == 0 && (*(v4 + 2380)) && (partial_checksum_offload = nw_path_flow_registration_get_partial_checksum_offload(), v34 = *(a2 + 216), v35 = *(v34 + 1192), partial_checksum_offload))
  {
    v37 = v35 | 0x1000;
  }

  else
  {
    v37 = v35 & 0xFFFFEFFF;
  }

  *(v34 + 1192) = v37;
  if ((nw_path_is_local() & 1) != 0 || nw_path_is_direct())
  {
    *(a2 + 1628) = 1;
  }

  v38 = nw_path_copy_direct_interface();
  if (!v38)
  {
    goto LABEL_85;
  }

  v39 = v38;
  type = nw_interface_get_type(v38);
  if (type <= nw_interface_type_wifi)
  {
    if (type)
    {
      if (type == nw_interface_type_wifi)
      {
        v42 = *(a2 + 216);
        *(v42 + 1224) = 6;
        *(v42 + 1212) = 0x300000002;
      }
    }

    else
    {
      *(*(a2 + 216) + 1224) = 1;
    }

    goto LABEL_76;
  }

  if (type == nw_interface_type_loopback)
  {
    v43 = *(a2 + 216);
    v44 = 24;
  }

  else
  {
    if (type != nw_interface_type_wired)
    {
      if (type == nw_interface_type_cellular)
      {
        v41 = *(a2 + 216);
        *(v41 + 1224) = -1;
        *(v41 + 1212) = 15;
      }

      goto LABEL_76;
    }

    v43 = *(a2 + 216);
    v44 = 6;
  }

  *(v43 + 1224) = v44;
  *(v43 + 1212) = 2;
LABEL_76:
  if (nw_interface_get_subtype() == 1002)
  {
    *(*(a2 + 216) + 1196) |= 0x100000u;
  }

  if (nw_interface_supports_tx_start())
  {
    *(*(a2 + 216) + 1196) |= 0x80u;
  }

  if ((nw_interface_supports_ack_priority() & 1) == 0)
  {
    *(*(a2 + 216) + 1196) |= 0x200000u;
  }

  if (nw_interface_supports_carrier_aggregation())
  {
    *(*(a2 + 216) + 1196) |= 0x8000000u;
  }

  *(*(a2 + 216) + 1246) = nw_interface_get_l4s_mode();
  nw_release(v39);
LABEL_85:
  v45 = nw_path_copy_delegate_interface();
  if (v45)
  {
    v46 = v45;
    v47 = nw_interface_get_type(v45);
    if (v47 <= nw_interface_type_wifi)
    {
      if (v47)
      {
        if (v47 == nw_interface_type_wifi)
        {
          v48 = *(a2 + 216);
          *(v48 + 1168) = 0x200000006;
          *(v48 + 1176) = 3;
        }
      }

      else
      {
        *(*(a2 + 216) + 1168) = 1;
      }
    }

    else
    {
      switch(v47)
      {
        case nw_interface_type_loopback:
          *(*(a2 + 216) + 1168) = 0x200000018;
          break;
        case nw_interface_type_wired:
          *(*(a2 + 216) + 1168) = 0x200000006;
          break;
        case nw_interface_type_cellular:
          *(*(a2 + 216) + 1168) = 0xF000000FFLL;
          break;
      }
    }

    nw_release(v46);
  }

  v49 = *(a2 + 216);
  if (v49 && (*(v49 + 1224) == 255 || *(v49 + 1168) == 255))
  {
    recommended_mss = nw_path_get_recommended_mss();
    v51 = *(a2 + 216);
    *(v51 + 8) |= 0x8000u;
    *(v51 + 72) = recommended_mss;
  }

  if (nw_path_should_probe_connectivity())
  {
    if ((v3[776] & 2) == 0)
    {
      v52 = __nwlog_tcp_log();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *&__n[1] = 136446466;
        *&__n[5] = "nw_proto_tcp_route_init";
        v74 = 2082;
        v75 = (v3 + 556);
        _os_log_impl(&dword_1889BA000, v52, OS_LOG_TYPE_INFO, "%{public}s %{public}s probe connectivity enabled", &__n[1], 0x16u);
      }
    }

    *(v2 + 5436) |= 0x10u;
    *(*(a2 + 216) + 1196) |= 8u;
    if (*(*(v4 + 224) + 24))
    {
      all_stats = nw_protocol_tcp_get_all_stats();
      if (all_stats)
      {
        *(all_stats + 96) |= 1u;
      }
    }
  }

  v54 = nw_path_use_link_heuristics();
  if (((v54 ^ ((*(v2 + 5438) & 0x80) == 0)) & 1) == 0)
  {
    v55 = v54;
    if ((v3[776] & 2) == 0)
    {
      v56 = __nwlog_tcp_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = "disabled";
        *&__n[5] = "nw_proto_tcp_route_init";
        *&__n[1] = 136446722;
        if (v55)
        {
          v57 = "enabled";
        }

        v74 = 2082;
        v75 = (v3 + 556);
        v76 = 2080;
        *v77 = v57;
        _os_log_impl(&dword_1889BA000, v56, OS_LOG_TYPE_INFO, "%{public}s %{public}s link heuristics %s", &__n[1], 0x20u);
      }
    }

    if (v55)
    {
      v58 = 0x800000;
    }

    else
    {
      v58 = 0;
    }

    *(v2 + 5436) = *(v2 + 5436) & 0xFF7FFFFF | v58;
    *(*(a2 + 216) + 1200) = *(*(a2 + 216) + 1200) & 0xFF7FFFFF | v58;
  }

  if ((v3[776] & 2) != 0)
  {
    return 0;
  }

  result = __nwlog_is_datapath_logging_enabled();
  if (result)
  {
    v59 = __nwlog_tcp_log();
    result = os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v60 = *(*(a2 + 1632) + 48);
      v61 = *(*(a2 + 216) + 1192);
      *&__n[1] = 136447234;
      *&__n[5] = "nw_proto_tcp_route_init";
      v74 = 2082;
      v75 = (v3 + 556);
      v76 = 1024;
      *v77 = v60;
      *&v77[4] = 1024;
      *&v77[6] = interface_index;
      v78 = 1024;
      v79 = v61;
      _os_log_impl(&dword_1889BA000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got mtu %d, ifindex %d, offloads %#x", &__n[1], 0x28u);
      return 0;
    }
  }

  return result;
}

uint64_t *tcp_get_heuristics(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  result = nw_tcp_access_globals(*(a1 + 224));
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (!result[4])
  {
    return 0;
  }

  v34 = 0u;
  memset(v35, 0, 28);
  v33 = 0u;
  v6 = *(*(a1 + 496) + 216);
  DWORD1(v35[1]) = *(v6 + 1220);
  if ((*(a1 + 2380) & 2) != 0)
  {
    v8 = *(v6 + 1225) - 1;
    BYTE8(v35[1]) = 30;
    if (v8 >= 0x13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(v6 + 1225) - 1;
  BYTE8(v35[1]) = 2;
  if (v7 <= 0x12)
  {
LABEL_7:
    __memcpy_chk();
  }

LABEL_8:
  __memcpy_chk();
  __memcpy_chk();
  v9 = (*MEMORY[0x1E6977F28])(&v33, 60, *(v5 + 304)) % 0x64;
  v10 = *(v5 + 32);
  result = *(v10 + 8 * v9);
  if (!result)
  {
    if (a2)
    {
LABEL_47:
      v11 = malloc_type_calloc(1uLL, 0x98uLL, 0x59C15F70uLL);
      if (!v11)
      {
        v21 = __nwlog_obj();
        v27 = 136446722;
        v28 = "tcp_get_heuristics";
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v29 = 2048;
        v30 = 1;
        v31 = 2048;
        v32 = 152;
        v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1889BA000, v21, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v27, 32);
        result = __nwlog_should_abort();
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v23);
        v11 = 0;
      }

      *v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v11;
      goto LABEL_54;
    }

    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    if (result[1] == v33 && result[2] == *(&v33 + 1) && result[3] == v34 && result[4] == *(&v34 + 1) && result[5] == *&v35[0] && result[6] == *(&v35[0] + 1) && result[7] == *&v35[1] && *(result + 16) == DWORD2(v35[1]))
    {
      if (!*(result + 37) && (*(v5 + 308) - *(result + 36)) >= 0xE10)
      {
        *(result + 8) = 0u;
        *(result + 116) = 0u;
        *(result + 100) = 0u;
        *(result + 84) = 0u;
        *(result + 68) = 0u;
      }

      goto LABEL_55;
    }

    if (!*(result + 37) && *(v5 + 308) - *(result + 36) > v12)
    {
      v12 = *(v5 + 308) - *(result + 36);
      v11 = result;
    }

    result = *result;
    ++v13;
  }

  while (result);
  if (!a2)
  {
    return 0;
  }

  if (v13 < 9)
  {
    goto LABEL_47;
  }

  if (!v11)
  {
    return 0;
  }

  *(v11 + 8) = 0u;
  *(v11 + 116) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 68) = 0u;
LABEL_54:
  v24 = v33;
  v25 = v34;
  v26 = v35[0];
  *(v11 + 52) = *(v35 + 12);
  *(v11 + 5) = v26;
  *(v11 + 3) = v25;
  *(v11 + 1) = v24;
  result = v11;
LABEL_55:
  *(result + 36) = *(v5 + 308);
  return result;
}

uint64_t nw_protocol_tcp_finalize_output_frames(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v31 = v4;
      *type = 0;
      v26 = type;
      v27 = 0x2000000000;
      v28 = 1;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v20 = __nw_protocol_tcp_finalize_output_frames_block_invoke;
      v21 = &unk_1E70E9080;
      v22 = type;
      v23 = buf;
      v24 = a1;
      do
      {
        v6 = *a2;
        if (!*a2)
        {
          break;
        }

        nw_frame_array_remove();
      }

      while ((v20(v19, v6) & 1) != 0);
      nw_protocol_tcp_update_metadata(a1);
      *(v5 + 5436) &= ~0x20u;
      v7 = *(v26 + 24);
      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);
      return v7 & 1;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v14, 16, "%{public}s called with null tcp", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_35;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v13 = "%{public}s called with null tcp";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v29 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v13 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type[0];
    v18 = os_log_type_enabled(v11, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v13 = "%{public}s called with null tcp, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v18)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v17 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v9, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault())
  {
    goto LABEL_35;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v29 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v13 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type[0];
    v16 = os_log_type_enabled(v11, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v13 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v16)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_1889BA000, v11, v12, v17, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v11 = __nwlog_obj();
  v12 = type[0];
  if (os_log_type_enabled(v11, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
    v13 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_1889BA000, v11, v12, v13, buf, 0xCu);
  }

LABEL_35:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t nw_protocol_tcp_get_output_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v119 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v96 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v96, 16, "%{public}s called with null protocol", buf, 12);
    v111[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_107;
    }

    if (v111[0] == OS_LOG_TYPE_FAULT)
    {
      v97 = __nwlog_obj();
      v98 = v111[0];
      if (!os_log_type_enabled(v97, v111[0]))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      v42 = "%{public}s called with null protocol";
      goto LABEL_202;
    }

    if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = v111[0];
      v100 = os_log_type_enabled(v97, v111[0]);
      if (backtrace_string)
      {
        if (!v100)
        {
          goto LABEL_51;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v45 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_189;
      }

      if (!v100)
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      v42 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v97 = __nwlog_obj();
      v98 = v111[0];
      if (!os_log_type_enabled(v97, v111[0]))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      v42 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_202:
    v68 = v97;
    v69 = v98;
    v70 = 12;
    goto LABEL_106;
  }

  v11 = nw_protocol_downcast();
  if (!v11)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v99, 16, "%{public}s called with null tcp", buf, 12);
    v111[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_107;
    }

    if (v111[0] == OS_LOG_TYPE_FAULT)
    {
      v97 = __nwlog_obj();
      v98 = v111[0];
      if (!os_log_type_enabled(v97, v111[0]))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      v42 = "%{public}s called with null tcp";
      goto LABEL_202;
    }

    if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v97 = __nwlog_obj();
      v98 = v111[0];
      v101 = os_log_type_enabled(v97, v111[0]);
      if (backtrace_string)
      {
        if (!v101)
        {
          goto LABEL_51;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v45 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
LABEL_189:
        v46 = v97;
        v47 = v98;
        v48 = 22;
        goto LABEL_50;
      }

      if (!v101)
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      v42 = "%{public}s called with null tcp, no backtrace";
    }

    else
    {
      v97 = __nwlog_obj();
      v98 = v111[0];
      if (!os_log_type_enabled(v97, v111[0]))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      v42 = "%{public}s called with null tcp, backtrace limit exceeded";
    }

    goto LABEL_202;
  }

  v12 = v11;
  if (*(v11 + 5352) == 2)
  {
    if (a5)
    {
      v13 = *(v11 + 5436);
      if ((v13 & 0xC00) == 0x400)
      {
        all_stats = nw_protocol_tcp_get_all_stats();
        if (all_stats)
        {
          *(all_stats + 124) |= 0x400u;
        }

        v13 = *(v12 + 5436) | 0x800;
        *(v12 + 5436) = v13;
      }

LABEL_15:
      *v111 = 0;
      if ((*(v12 + 364) & 8) != 0)
      {
        if ((*(v12 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
        {
          v102 = __nwlog_tcp_log();
          v22 = 32;
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "sosendcheck";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 556;
            *&buf[22] = 1024;
            *&buf[24] = 32;
            _os_log_impl(&dword_1889BA000, v102, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct flow error (%d)", buf, 0x1Cu);
          }

          goto LABEL_28;
        }
      }

      else
      {
        v21 = *(v12 + 376);
        if ((v21 & 0x10) == 0)
        {
          v22 = *(v12 + 378);
          if (*(v12 + 378))
          {
            *(v12 + 378) = 0;
            v23 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "sosendcheck";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 556;
            *&buf[22] = 1024;
            *&buf[24] = v22;
            v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v23, 16, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d", buf, 28);
            type = OS_LOG_TYPE_ERROR;
            v112 = 0;
            if (!__nwlog_fault())
            {
              goto LABEL_122;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v25 = __nwlog_obj();
              v26 = type;
              if (!os_log_type_enabled(v25, type))
              {
                goto LABEL_122;
              }

              *buf = 136446722;
              *&buf[4] = "sosendcheck";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              *&buf[22] = 1024;
              *&buf[24] = v22;
              v27 = "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d";
            }

            else if (v112 == 1)
            {
              v59 = __nw_create_backtrace_string();
              v25 = __nwlog_obj();
              v26 = type;
              v60 = os_log_type_enabled(v25, type);
              if (v59)
              {
                if (v60)
                {
                  *buf = 136446978;
                  *&buf[4] = "sosendcheck";
                  *&buf[12] = 2082;
                  *&buf[14] = v12 + 556;
                  *&buf[22] = 1024;
                  *&buf[24] = v22;
                  *&buf[28] = 2082;
                  *&buf[30] = v59;
                  _os_log_impl(&dword_1889BA000, v25, type, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                }

                free(v59);
                goto LABEL_122;
              }

              if (!v60)
              {
LABEL_122:
                if (v24)
                {
                  free(v24);
                }

                goto LABEL_28;
              }

              *buf = 136446722;
              *&buf[4] = "sosendcheck";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              *&buf[22] = 1024;
              *&buf[24] = v22;
              v27 = "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, no backtrace";
            }

            else
            {
              v25 = __nwlog_obj();
              v26 = type;
              if (!os_log_type_enabled(v25, type))
              {
                goto LABEL_122;
              }

              *buf = 136446722;
              *&buf[4] = "sosendcheck";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              *&buf[22] = 1024;
              *&buf[24] = v22;
              v27 = "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, backtrace limit exceeded";
            }

            _os_log_impl(&dword_1889BA000, v25, v26, v27, buf, 0x1Cu);
            goto LABEL_122;
          }

          if ((v21 & 2) == 0 && a4 && (*(v12 + 376) & 0x400) == 0 && (*(v12 + 368) & 0x20) == 0)
          {
            v22 = 57;
            goto LABEL_28;
          }

          v49 = *(v12 + 384);
          v50 = *(v12 + 388) - v49;
          v51 = *(v12 + 460);
          v52 = v51 - v49;
          if (v52 >= v50)
          {
            v52 = v50;
          }

          if (!v51)
          {
            v52 = v50;
          }

          v53 = v52 & ~(v52 >> 31);
          if (v53 >= a4 || v53 >= *(v12 + 392))
          {
            v54 = **(*(v12 + 8) + 8);
            v55 = v54 == 30 || v54 == 2;
            if (!v55 || (v21 & 2) == 0 || (*(*v12 + 2375) & 0x50) == 0)
            {
LABEL_73:
              if (v53 >= a4)
              {
                v56 = a4;
              }

              else
              {
                v56 = v53;
              }

              if (a3 > v56 && v56 < *(v12 + 392))
              {
                StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v57 = *(StatusReg + 8);
                v58 = 35;
LABEL_118:
                *v57 = v58;
LABEL_29:
                v30 = **(StatusReg + 8);
                if (v30 != 35)
                {
                  if (v30 == 32)
                  {
                    v31 = __nwlog_obj();
                    result = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
                    if (!result)
                    {
                      return result;
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_protocol_tcp_get_output_frames";
                    *&buf[12] = 1024;
                    *&buf[14] = 32;
                    v17 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d";
                    v18 = v31;
                    v19 = OS_LOG_TYPE_ERROR;
                    v20 = 18;
                    goto LABEL_33;
                  }

                  v38 = __nwlog_obj();
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_tcp_get_output_frames";
                  *&buf[12] = 1024;
                  *&buf[14] = v30;
                  LODWORD(v109) = 18;
                  v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v38, 16, "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d", buf, v109);
                  type = OS_LOG_TYPE_ERROR;
                  v112 = 0;
                  if (__nwlog_fault())
                  {
                    if (type == OS_LOG_TYPE_FAULT)
                    {
                      v40 = __nwlog_obj();
                      v41 = type;
                      if (!os_log_type_enabled(v40, type))
                      {
                        goto LABEL_107;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_tcp_get_output_frames";
                      *&buf[12] = 1024;
                      *&buf[14] = v30;
                      v42 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d";
LABEL_105:
                      v68 = v40;
                      v69 = v41;
                      v70 = 18;
LABEL_106:
                      _os_log_impl(&dword_1889BA000, v68, v69, v42, buf, v70);
                      goto LABEL_107;
                    }

                    if (v112 != 1)
                    {
                      v40 = __nwlog_obj();
                      v41 = type;
                      if (!os_log_type_enabled(v40, type))
                      {
                        goto LABEL_107;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_tcp_get_output_frames";
                      *&buf[12] = 1024;
                      *&buf[14] = v30;
                      v42 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_105;
                    }

                    backtrace_string = __nw_create_backtrace_string();
                    v40 = __nwlog_obj();
                    v41 = type;
                    v44 = os_log_type_enabled(v40, type);
                    if (!backtrace_string)
                    {
                      if (!v44)
                      {
                        goto LABEL_107;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_tcp_get_output_frames";
                      *&buf[12] = 1024;
                      *&buf[14] = v30;
                      v42 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d, no backtrace";
                      goto LABEL_105;
                    }

                    if (!v44)
                    {
LABEL_51:
                      free(backtrace_string);
                      goto LABEL_107;
                    }

                    *buf = 136446722;
                    *&buf[4] = "nw_protocol_tcp_get_output_frames";
                    *&buf[12] = 1024;
                    *&buf[14] = v30;
                    *&buf[18] = 2082;
                    *&buf[20] = backtrace_string;
                    v45 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d, dumping backtrace:%{public}s";
                    v46 = v40;
                    v47 = v41;
                    v48 = 28;
LABEL_50:
                    _os_log_impl(&dword_1889BA000, v46, v47, v45, buf, v48);
                    goto LABEL_51;
                  }

LABEL_107:
                  if (v39)
                  {
                    free(v39);
                  }

                  return 0;
                }

                if ((*(v12 + 776) & 2) != 0)
                {
                  return 0;
                }

                result = __nwlog_is_datapath_logging_enabled();
                if (result)
                {
                  v32 = __nwlog_tcp_log();
                  result = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
                  if (result)
                  {
                    v33 = *(v12 + 392);
                    v34 = *(v12 + 384);
                    v35 = *(v12 + 388) - v34;
                    v36 = *(v12 + 460);
                    v37 = v36 - v34;
                    if (v37 >= v35)
                    {
                      v37 = v35;
                    }

                    if (v36)
                    {
                      v35 = v37;
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_tcp_get_output_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v12 + 556;
                    *&buf[22] = 1024;
                    *&buf[24] = v33;
                    *&buf[28] = 1024;
                    *&buf[30] = v35 & ~(v35 >> 31);
                    v17 = "%{public}s %{public}s tcp_get_southbound_frame failed, socket is full minimum %u sbspace %u";
                    v18 = v32;
                    v19 = OS_LOG_TYPE_DEBUG;
                    v20 = 34;
                    goto LABEL_33;
                  }
                }

                return result;
              }

              *buf = 0;
              *&buf[8] = buf;
              if (!nw_protocol_tcp_get_frames(v12, v56, buf, a5, v111, (v13 & 0x1000) != 0))
              {
                StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v57 = *(StatusReg + 8);
                v58 = 55;
                goto LABEL_118;
              }

              if (*buf)
              {
                v61 = *(a6 + 8);
                *v61 = *buf;
                v62 = *&buf[8];
                *(*buf + 40) = v61;
                *(a6 + 8) = v62;
              }

              v63 = nw_protocol_downcast();
              if (!v63)
              {
                v103 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v103, 16, "%{public}s called with null tcp", buf, 12);
                type = OS_LOG_TYPE_ERROR;
                v112 = 0;
                if (!__nwlog_fault())
                {
                  goto LABEL_162;
                }

                if (type == OS_LOG_TYPE_FAULT)
                {
                  v104 = __nwlog_obj();
                  v105 = type;
                  if (!os_log_type_enabled(v104, type))
                  {
                    goto LABEL_162;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                  v83 = "%{public}s called with null tcp";
                }

                else if (v112 == 1)
                {
                  v107 = __nw_create_backtrace_string();
                  v104 = __nwlog_obj();
                  v105 = type;
                  v108 = os_log_type_enabled(v104, type);
                  if (v107)
                  {
                    if (v108)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                      *&buf[12] = 2082;
                      *&buf[14] = v107;
                      _os_log_impl(&dword_1889BA000, v104, v105, "%{public}s called with null tcp, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v107);
                    goto LABEL_162;
                  }

                  if (!v108)
                  {
                    goto LABEL_162;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                  v83 = "%{public}s called with null tcp, no backtrace";
                }

                else
                {
                  v104 = __nwlog_obj();
                  v105 = type;
                  if (!os_log_type_enabled(v104, type))
                  {
                    goto LABEL_162;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                  v83 = "%{public}s called with null tcp, backtrace limit exceeded";
                }

                v93 = v104;
                v94 = v105;
                v95 = 12;
                goto LABEL_161;
              }

              v64 = v63;
              if (a3 - v56 <= 1)
              {
                v65 = 1;
              }

              else
              {
                v65 = a3 - v56;
              }

              if (a3 <= v56)
              {
                v66 = 2048;
              }

              else
              {
                v66 = v65;
              }

              if (*(v63 + 392) == v66)
              {
                goto LABEL_164;
              }

              (*(*(v63 + 8) + 16))(v63, 1, v6);
              if ((~*(v64 + 376) & 0x30) != 0)
              {
                if (v66 < 1)
                {
                  v67 = 1;
                  goto LABEL_138;
                }
              }

              else
              {
                v67 = 1;
                if ((*(v64 + 365) & 0x20) == 0 || v66 < 1)
                {
                  goto LABEL_138;
                }
              }

              v67 = 0;
              v78 = *(v64 + 388) / 3u;
              if (v66 <= *(v64 + 388) / 3)
              {
                v78 = v66;
              }

              if (v78 <= 1)
              {
                v78 = 1;
              }

              *(v64 + 392) = v78;
LABEL_138:
              (*(*(v64 + 8) + 24))(v64, 1, v6);
              if (!v67)
              {
                if ((*(v64 + 776) & 2) == 0)
                {
                  if (__nwlog_is_datapath_logging_enabled())
                  {
                    v84 = __nwlog_tcp_log();
                    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                    {
                      v85 = *(v64 + 392);
                      v86 = *(v64 + 384);
                      v87 = *(v64 + 388) - v86;
                      v88 = *(v64 + 460);
                      v89 = v88 - v86;
                      if (v89 >= v87)
                      {
                        v89 = v87;
                      }

                      if (v88)
                      {
                        v87 = v89;
                      }

                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                      *&buf[12] = 2082;
                      *&buf[14] = v64 + 556;
                      *&buf[22] = 1024;
                      *&buf[24] = v85;
                      *&buf[28] = 1024;
                      *&buf[30] = v87 & ~(v87 >> 31);
                      _os_log_impl(&dword_1889BA000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_snd.sb_lowat %u sbspace %u", buf, 0x22u);
                    }
                  }
                }

                goto LABEL_164;
              }

              v79 = __nwlog_obj();
              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
              *&buf[12] = 1024;
              *&buf[14] = v66;
              *&buf[18] = 1024;
              *&buf[20] = v67;
              v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v79, 16, "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d", buf, 24);
              type = OS_LOG_TYPE_ERROR;
              v112 = 0;
              if (__nwlog_fault())
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v81 = __nwlog_obj();
                  v82 = type;
                  if (!os_log_type_enabled(v81, type))
                  {
                    goto LABEL_162;
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                  *&buf[12] = 1024;
                  *&buf[14] = v66;
                  *&buf[18] = 1024;
                  *&buf[20] = v67;
                  v83 = "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d";
LABEL_159:
                  v93 = v81;
LABEL_160:
                  v94 = v82;
                  v95 = 24;
LABEL_161:
                  _os_log_impl(&dword_1889BA000, v93, v94, v83, buf, v95);
                  goto LABEL_162;
                }

                if (v112 != 1)
                {
                  v81 = __nwlog_obj();
                  v82 = type;
                  if (!os_log_type_enabled(v81, type))
                  {
                    goto LABEL_162;
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                  *&buf[12] = 1024;
                  *&buf[14] = v66;
                  *&buf[18] = 1024;
                  *&buf[20] = v67;
                  v83 = "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_159;
                }

                v90 = __nw_create_backtrace_string();
                v91 = __nwlog_obj();
                v82 = type;
                log = v91;
                v92 = os_log_type_enabled(v91, type);
                if (v90)
                {
                  if (v92)
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                    *&buf[12] = 1024;
                    *&buf[14] = v66;
                    *&buf[18] = 1024;
                    *&buf[20] = v67;
                    *&buf[24] = 2082;
                    *&buf[26] = v90;
                    _os_log_impl(&dword_1889BA000, log, v82, "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
                  }

                  free(v90);
                  if (!v80)
                  {
                    goto LABEL_164;
                  }

LABEL_163:
                  free(v80);
LABEL_164:
                  if ((*(v12 + 776) & 2) == 0)
                  {
                    if (__nwlog_is_datapath_logging_enabled())
                    {
                      v106 = __nwlog_tcp_log();
                      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136447746;
                        *&buf[4] = "nw_protocol_tcp_get_output_frames";
                        *&buf[12] = 2082;
                        *&buf[14] = v12 + 556;
                        *&buf[22] = 1024;
                        *&buf[24] = a3;
                        *&buf[28] = 1024;
                        *&buf[30] = a4;
                        *&buf[34] = 1024;
                        *&buf[36] = a5;
                        v115 = 1024;
                        v116 = v56;
                        v117 = 2048;
                        v118 = v12;
                        _os_log_impl(&dword_1889BA000, v106, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s asked for min %u max %u bytes, max %u frames and got 1 frame of %u bytes on %p", buf, 0x38u);
                      }
                    }
                  }

                  return *v111;
                }

                if (v92)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
                  *&buf[12] = 1024;
                  *&buf[14] = v66;
                  *&buf[18] = 1024;
                  *&buf[20] = v67;
                  v83 = "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d, no backtrace";
                  v93 = log;
                  goto LABEL_160;
                }
              }

LABEL_162:
              if (!v80)
              {
                goto LABEL_164;
              }

              goto LABEL_163;
            }
          }

          if ((*(v12 + 368) & 0x20) != 0)
          {
            if (v52 < 1)
            {
              goto LABEL_180;
            }

            if (v53 < *(v12 + 392))
            {
              goto LABEL_73;
            }
          }

          if ((*(v12 + 376) & 0x100) == 0 && (*(v12 + 776) & 2) == 0)
          {
            v71 = __nwlog_tcp_log();
            *buf = 136446466;
            *&buf[4] = "sosendcheck";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 556;
            v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v71, 16, "%{public}s %{public}s NBIO not set", buf, 22);
            type = OS_LOG_TYPE_ERROR;
            v112 = 0;
            if (!__nwlog_fault())
            {
              goto LABEL_178;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v73 = __nwlog_tcp_log();
              v74 = type;
              if (!os_log_type_enabled(v73, type))
              {
                goto LABEL_178;
              }

              *buf = 136446466;
              *&buf[4] = "sosendcheck";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              v75 = "%{public}s %{public}s NBIO not set";
            }

            else if (v112 == 1)
            {
              v76 = __nw_create_backtrace_string();
              v73 = __nwlog_tcp_log();
              v74 = type;
              v77 = os_log_type_enabled(v73, type);
              if (v76)
              {
                if (v77)
                {
                  *buf = 136446722;
                  *&buf[4] = "sosendcheck";
                  *&buf[12] = 2082;
                  *&buf[14] = v12 + 556;
                  *&buf[22] = 2082;
                  *&buf[24] = v76;
                  _os_log_impl(&dword_1889BA000, v73, type, "%{public}s %{public}s NBIO not set, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v76);
                goto LABEL_178;
              }

              if (!v77)
              {
LABEL_178:
                if (v72)
                {
                  free(v72);
                }

                goto LABEL_180;
              }

              *buf = 136446466;
              *&buf[4] = "sosendcheck";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              v75 = "%{public}s %{public}s NBIO not set, no backtrace";
            }

            else
            {
              v73 = __nwlog_tcp_log();
              v74 = type;
              if (!os_log_type_enabled(v73, type))
              {
                goto LABEL_178;
              }

              *buf = 136446466;
              *&buf[4] = "sosendcheck";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              v75 = "%{public}s %{public}s NBIO not set, backtrace limit exceeded";
            }

            _os_log_impl(&dword_1889BA000, v73, v74, v75, buf, 0x16u);
            goto LABEL_178;
          }

LABEL_180:
          v22 = 35;
          goto LABEL_28;
        }
      }

      v22 = 32;
LABEL_28:
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      **(StatusReg + 8) = v22;
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v13 = *(v11 + 5436);
  if ((v13 & 0x20) != 0)
  {
    if (a5)
    {
      goto LABEL_15;
    }

LABEL_22:
    if ((*(v11 + 776) & 2) == 0)
    {
      v28 = __nwlog_tcp_log();
      result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      v17 = "%{public}s %{public}s cannot specify 0 as maximum_frame_count on a streaming socket";
      v18 = v28;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
      goto LABEL_33;
    }

    return 0;
  }

  if ((*(v11 + 776) & 2) != 0)
  {
    return 0;
  }

  result = __nwlog_is_datapath_logging_enabled();
  if (result)
  {
    v16 = __nwlog_tcp_log();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      v17 = "%{public}s %{public}s skipping";
      v18 = v16;
      v19 = OS_LOG_TYPE_DEBUG;
      v20 = 22;
LABEL_33:
      _os_log_impl(&dword_1889BA000, v18, v19, v17, buf, v20);
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_tcp_get_frames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char a6)
{
  v6 = a5;
  v8 = a2;
  v235 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = nw_tcp_access_globals(a1);
        v10 = v9;
        if (v6)
        {
          *v6 = 0;
        }

        v11 = v9[22];
        if (v11)
        {
          v12 = (v11 + 16);
          v13 = *(v11 + 16);
          v14 = *(v11 + 24);
          v15 = (v13 + 24);
          if (!v13)
          {
            v15 = v9 + 23;
          }

          *v15 = v14;
          *v14 = v13;
          *(v11 + 24) = 0;
          *v12 = 0;
          v16 = v9[25];
          *(v11 + 24) = v16;
          *v16 = v11;
          v9[25] = v12;
          --v9[2];
          v17 = *(v11 + 204);
          if ((v17 & 2) != 0)
          {
            goto LABEL_10;
          }

          v177 = __nwlog_obj();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
          {
            v178 = 3;
          }

          else
          {
            v178 = 2;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v179 = _os_log_send_and_compose_impl(v178, 0, 0, 0, &dword_1889BA000, v177, 16, "%{public}s uTCP external frame not marked", buf, 12);
          result = __nwlog_should_abort();
          if (!result)
          {
            free(v179);
            v17 = *(v11 + 204);
LABEL_10:
            v18 = *(v11 + 64);
            *(v11 + 80) = nw_frame_tcp_finalize;
            *(v11 + 88) = v10;
            *(v11 + 104) = 0;
            *(v11 + 112) = 0;
            *(v11 + 196) = 0;
            *(v11 + 48) = v8;
            *(v11 + 52) = v8;
            *(v11 + 56) = 0;
            *(v11 + 192) = 0;
            *(v11 + 200) = 0;
            *(v11 + 204) = v17 & 0xFFC7;
            if (v18)
            {
              do
              {
                v19 = *v18;
                v20 = v18[6];
                v21 = *v18;
                if (v20)
                {
                  nw_release(v20);
                  v18[6] = 0;
                  v21 = *v18;
                }

                v22 = v18[1];
                v23 = v21 + 1;
                if (!v21)
                {
                  v23 = (v11 + 72);
                }

                *v23 = v22;
                *v22 = v21;
                if (v18 != (v11 + 120))
                {
                  free(v18);
                }

                v18 = v19;
              }

              while (v19);
            }

            *(v11 + 64) = 0;
            *(v11 + 72) = v11 + 64;
            v40 = *(v11 + 168);
            if (v40)
            {
              nw_release(v40);
            }

            *(v11 + 184) = 0;
            *(v11 + 168) = 0u;
            *(v11 + 152) = 0u;
            *(v11 + 136) = 0u;
            *(v11 + 120) = 0u;
            *(v11 + 204) &= 0x413Fu;
            *(v11 + 206) &= ~1u;
            *(v11 + 203) = 0;
            *(v11 + 32) = 0;
            v41 = v11 + 32;
            *(v11 + 198) = 0;
            goto LABEL_71;
          }

LABEL_340:
          __break(1u);
          return result;
        }

        external = nw_frame_create_external();
        if (external)
        {
          if ((*(external + 204) & 4) != 0)
          {
            v52 = (external + 208);
          }

          else
          {
            v52 = 0;
          }

          *v52 |= 2u;
          *(external + 16) = 0;
          v53 = v10[25];
          *(external + 24) = v53;
          *v53 = external;
          v10[25] = external + 16;
          *(external + 32) = 0;
          v41 = external + 32;
          v54 = *(a3 + 8);
          *(external + 40) = v54;
          *v54 = external;
          goto LABEL_72;
        }

        v56 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v56, 16, "%{public}s nw_frame_create_external failed", buf, 12);
        v226[0] = 16;
        LOBYTE(v215) = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_102;
        }

        if (v226[0] == 17)
        {
          v58 = __nwlog_obj();
          v59 = v226[0];
          if (os_log_type_enabled(v58, v226[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_get_external_frame";
            v60 = "%{public}s nw_frame_create_external failed";
LABEL_101:
            _os_log_impl(&dword_1889BA000, v58, v59, v60, buf, 0xCu);
            goto LABEL_102;
          }

          goto LABEL_102;
        }

        if (v215 != 1)
        {
          v58 = __nwlog_obj();
          v59 = v226[0];
          if (os_log_type_enabled(v58, v226[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_get_external_frame";
            v60 = "%{public}s nw_frame_create_external failed, backtrace limit exceeded";
            goto LABEL_101;
          }

LABEL_102:
          if (v57)
          {
            free(v57);
          }

          return 0;
        }

        backtrace_string = __nw_create_backtrace_string();
        v58 = __nwlog_obj();
        v59 = v226[0];
        v67 = os_log_type_enabled(v58, v226[0]);
        if (!backtrace_string)
        {
          if (v67)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_get_external_frame";
            v60 = "%{public}s nw_frame_create_external failed, no backtrace";
            goto LABEL_101;
          }

          goto LABEL_102;
        }

        if (!v67)
        {
LABEL_82:
          free(backtrace_string);
          goto LABEL_102;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v68 = "%{public}s nw_frame_create_external failed, dumping backtrace:%{public}s";
      }

      else
      {
        v176 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v176, 16, "%{public}s called with null (max_frame_count > 0)", buf, 12);
        v226[0] = 16;
        LOBYTE(v215) = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_102;
        }

        if (v226[0] == 17)
        {
          v58 = __nwlog_obj();
          v59 = v226[0];
          if (!os_log_type_enabled(v58, v226[0]))
          {
            goto LABEL_102;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v60 = "%{public}s called with null (max_frame_count > 0)";
          goto LABEL_101;
        }

        if (v215 != 1)
        {
          v58 = __nwlog_obj();
          v59 = v226[0];
          if (!os_log_type_enabled(v58, v226[0]))
          {
            goto LABEL_102;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v60 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
          goto LABEL_101;
        }

        backtrace_string = __nw_create_backtrace_string();
        v58 = __nwlog_obj();
        v59 = v226[0];
        v183 = os_log_type_enabled(v58, v226[0]);
        if (!backtrace_string)
        {
          if (!v183)
          {
            goto LABEL_102;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v60 = "%{public}s called with null (max_frame_count > 0), no backtrace";
          goto LABEL_101;
        }

        if (!v183)
        {
          goto LABEL_82;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v68 = "%{public}s called with null (max_frame_count > 0), dumping backtrace:%{public}s";
      }
    }

    else
    {
      v175 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_external_frame";
      v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v175, 16, "%{public}s called with null ret_frame_array", buf, 12);
      v226[0] = 16;
      LOBYTE(v215) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_102;
      }

      if (v226[0] == 17)
      {
        v58 = __nwlog_obj();
        v59 = v226[0];
        if (!os_log_type_enabled(v58, v226[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v60 = "%{public}s called with null ret_frame_array";
        goto LABEL_101;
      }

      if (v215 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v226[0];
        if (!os_log_type_enabled(v58, v226[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v60 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
        goto LABEL_101;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v226[0];
      v182 = os_log_type_enabled(v58, v226[0]);
      if (!backtrace_string)
      {
        if (!v182)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v60 = "%{public}s called with null ret_frame_array, no backtrace";
        goto LABEL_101;
      }

      if (!v182)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_external_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v68 = "%{public}s called with null ret_frame_array, dumping backtrace:%{public}s";
    }

LABEL_81:
    _os_log_impl(&dword_1889BA000, v58, v59, v68, buf, 0x16u);
    goto LABEL_82;
  }

  if (g_tcp_use_malloc_memory == 1)
  {
    if (!a3)
    {
      v180 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v180, 16, "%{public}s called with null ret_frame_array", buf, 12);
      v226[0] = 16;
      LOBYTE(v215) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_102;
      }

      if (v226[0] == 17)
      {
        v58 = __nwlog_obj();
        v59 = v226[0];
        if (!os_log_type_enabled(v58, v226[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null ret_frame_array";
        goto LABEL_101;
      }

      if (v215 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v226[0];
        if (!os_log_type_enabled(v58, v226[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
        goto LABEL_101;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v226[0];
      v191 = os_log_type_enabled(v58, v226[0]);
      if (!backtrace_string)
      {
        if (!v191)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null ret_frame_array, no backtrace";
        goto LABEL_101;
      }

      if (!v191)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v68 = "%{public}s called with null ret_frame_array, dumping backtrace:%{public}s";
      goto LABEL_81;
    }

    if (!a4)
    {
      v181 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v181, 16, "%{public}s called with null (max_frame_count > 0)", buf, 12);
      v226[0] = 16;
      LOBYTE(v215) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_102;
      }

      if (v226[0] == 17)
      {
        v58 = __nwlog_obj();
        v59 = v226[0];
        if (!os_log_type_enabled(v58, v226[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null (max_frame_count > 0)";
        goto LABEL_101;
      }

      if (v215 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v226[0];
        if (!os_log_type_enabled(v58, v226[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
        goto LABEL_101;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v226[0];
      v192 = os_log_type_enabled(v58, v226[0]);
      if (!backtrace_string)
      {
        if (!v192)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null (max_frame_count > 0), no backtrace";
        goto LABEL_101;
      }

      if (!v192)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v68 = "%{public}s called with null (max_frame_count > 0), dumping backtrace:%{public}s";
      goto LABEL_81;
    }

    v24 = nw_tcp_access_globals(a1);
    if (v6)
    {
      *v6 = 0;
    }

    global = nw_mem_buffer_manager_get_global();
    result = nw_mem_buffer_allocate_sized_typed();
    if (!result)
    {
      return result;
    }

    v27 = result;
    v11 = v24[26];
    if (v11)
    {
      v28 = (v11 + 16);
      v29 = *(v11 + 16);
      v30 = *(v11 + 24);
      v31 = (v29 + 24);
      if (!v29)
      {
        v31 = v24 + 27;
      }

      *v31 = v30;
      *v30 = v29;
      *(v11 + 24) = 0;
      *v28 = 0;
      v32 = v24[29];
      *(v11 + 24) = v32;
      *v32 = v11;
      v24[29] = v28;
      v33 = v24[3];
      if (v33 <= 0)
      {
        v193 = __nwlog_obj();
        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          v194 = 3;
        }

        else
        {
          v194 = 2;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v195 = _os_log_send_and_compose_impl(v194, 0, 0, 0, &dword_1889BA000, v193, 16, "%{public}s Assert globals->free_slab_frame_count > 0 failed", buf, 12);
        result = __nwlog_should_abort();
        if (result)
        {
          goto LABEL_340;
        }

        free(v195);
        v33 = v24[3];
      }

      v24[3] = v33 - 1;
      v34 = *(v11 + 64);
      *(v11 + 80) = nw_frame_tcp_finalize;
      *(v11 + 88) = v24;
      *(v11 + 104) = 0;
      *(v11 + 112) = v27;
      *(v11 + 196) = 0;
      *(v11 + 48) = v8;
      *(v11 + 52) = v8;
      *(v11 + 56) = 0;
      *(v11 + 192) = 0;
      *(v11 + 200) = 0;
      *(v11 + 204) &= 0xFFC7u;
      if (v34)
      {
        do
        {
          v35 = *v34;
          v36 = v34[6];
          v37 = *v34;
          if (v36)
          {
            nw_release(v36);
            v34[6] = 0;
            v37 = *v34;
          }

          v38 = v34[1];
          v39 = v37 + 1;
          if (!v37)
          {
            v39 = (v11 + 72);
          }

          *v39 = v38;
          *v38 = v37;
          if (v34 != (v11 + 120))
          {
            free(v34);
          }

          v34 = v35;
        }

        while (v35);
      }

      *(v11 + 64) = 0;
      *(v11 + 72) = v11 + 64;
      v55 = *(v11 + 168);
      if (v55)
      {
        nw_release(v55);
      }

      *(v11 + 184) = 0;
      *(v11 + 168) = 0u;
      *(v11 + 152) = 0u;
      *(v11 + 136) = 0u;
      *(v11 + 120) = 0u;
      *(v11 + 204) &= 0x413Fu;
      *(v11 + 206) &= ~1u;
      *(v11 + 203) = 0;
      *(v11 + 198) = 0;
      *(v11 + 104) = global;
LABEL_70:
      *(v11 + 32) = 0;
      v41 = v11 + 32;
LABEL_71:
      v64 = *(a3 + 8);
      *(v11 + 40) = v64;
      *v64 = v11;
LABEL_72:
      *(a3 + 8) = v41;
      result = 1;
      if (v6)
      {
        *v6 = 1;
      }

      return result;
    }

    v61 = nw_frame_create();
    if (v61)
    {
      v11 = v61;
      if ((*(v61 + 204) & 4) != 0)
      {
        v62 = (v61 + 208);
      }

      else
      {
        v62 = 0;
      }

      *v62 |= 1u;
      *(v61 + 104) = global;
      *(v61 + 16) = 0;
      v63 = v24[29];
      *(v61 + 24) = v63;
      *v63 = v61;
      v24[29] = v61 + 16;
      goto LABEL_70;
    }

    v69 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
    v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v69, 16, "%{public}s nw_frame_create failed", buf, 12);
    v226[0] = 16;
    LOBYTE(v215) = 0;
    if (__nwlog_fault())
    {
      if (v226[0] == 17)
      {
        v71 = __nwlog_obj();
        v72 = v226[0];
        if (os_log_type_enabled(v71, v226[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
          v73 = "%{public}s nw_frame_create failed";
LABEL_207:
          _os_log_impl(&dword_1889BA000, v71, v72, v73, buf, 0xCu);
        }
      }

      else if (v215 == 1)
      {
        v76 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v72 = v226[0];
        v77 = os_log_type_enabled(v71, v226[0]);
        if (v76)
        {
          if (v77)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
            *&buf[12] = 2082;
            *&buf[14] = v76;
            _os_log_impl(&dword_1889BA000, v71, v72, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v76);
          goto LABEL_208;
        }

        if (v77)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
          v73 = "%{public}s nw_frame_create failed, no backtrace";
          goto LABEL_207;
        }
      }

      else
      {
        v71 = __nwlog_obj();
        v72 = v226[0];
        if (os_log_type_enabled(v71, v226[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
          v73 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
          goto LABEL_207;
        }
      }
    }

LABEL_208:
    if (v70)
    {
      free(v70);
    }

    nw_mem_buffer_free();
    return 0;
  }

  if (g_use_slab_allocator != 1)
  {

    return nw_protocol_tcp_get_malloc_frame(a1, a2, a3, a4, a5);
  }

  v215 = 0;
  v216 = &v215;
  v217 = 0x2800000000;
  v218 = 0;
  v219 = 0;
  v214 = 0;
  v210 = a2;
  if (!a3)
  {
    v184 = a4;
    v185 = __nwlog_obj();
    *v226 = 136446210;
    v227 = "nw_protocol_tcp_get_slab_frame";
    v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v185, 16, "%{public}s called with null ret_frame_array", v226, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v220 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_328;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v187 = __nwlog_obj();
      v188 = type[0];
      if (!os_log_type_enabled(v187, type[0]))
      {
        goto LABEL_328;
      }

      *v226 = 136446210;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v189 = "%{public}s called with null ret_frame_array";
    }

    else
    {
      if (v220 != 1)
      {
        v187 = __nwlog_obj();
        v188 = type[0];
        if (!os_log_type_enabled(v187, type[0]))
        {
          goto LABEL_328;
        }

        *v226 = 136446210;
        v227 = "nw_protocol_tcp_get_slab_frame";
        v189 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
        goto LABEL_327;
      }

      v196 = __nw_create_backtrace_string();
      v187 = __nwlog_obj();
      v188 = type[0];
      v197 = os_log_type_enabled(v187, type[0]);
      if (v196)
      {
        if (v197)
        {
          *v226 = 136446466;
          v227 = "nw_protocol_tcp_get_slab_frame";
          v228 = 2082;
          *v229 = v196;
          _os_log_impl(&dword_1889BA000, v187, type[0], "%{public}s called with null ret_frame_array, dumping backtrace:%{public}s", v226, 0x16u);
        }

        free(v196);
        if (!v186)
        {
          goto LABEL_330;
        }

        goto LABEL_329;
      }

      if (!v197)
      {
        goto LABEL_328;
      }

      *v226 = 136446210;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v189 = "%{public}s called with null ret_frame_array, no backtrace";
    }

LABEL_327:
    _os_log_impl(&dword_1889BA000, v187, v188, v189, v226, 0xCu);
    goto LABEL_328;
  }

  if (!a4)
  {
    v184 = 0;
    v190 = __nwlog_obj();
    *v226 = 136446210;
    v227 = "nw_protocol_tcp_get_slab_frame";
    v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v190, 16, "%{public}s called with null (max_frame_count > 0)", v226, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v220 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_328;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v187 = __nwlog_obj();
      v188 = type[0];
      if (!os_log_type_enabled(v187, type[0]))
      {
        goto LABEL_328;
      }

      *v226 = 136446210;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v189 = "%{public}s called with null (max_frame_count > 0)";
      goto LABEL_327;
    }

    if (v220 != 1)
    {
      v187 = __nwlog_obj();
      v188 = type[0];
      if (!os_log_type_enabled(v187, type[0]))
      {
        goto LABEL_328;
      }

      *v226 = 136446210;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v189 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
      goto LABEL_327;
    }

    v198 = __nw_create_backtrace_string();
    v187 = __nwlog_obj();
    v188 = type[0];
    v199 = os_log_type_enabled(v187, type[0]);
    if (!v198)
    {
      if (!v199)
      {
        goto LABEL_328;
      }

      *v226 = 136446210;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v189 = "%{public}s called with null (max_frame_count > 0), no backtrace";
      goto LABEL_327;
    }

    if (v199)
    {
      *v226 = 136446466;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v228 = 2082;
      *v229 = v198;
      _os_log_impl(&dword_1889BA000, v187, type[0], "%{public}s called with null (max_frame_count > 0), dumping backtrace:%{public}s", v226, 0x16u);
    }

    free(v198);
LABEL_328:
    if (!v186)
    {
LABEL_330:
      LODWORD(a4) = v184;
LABEL_331:
      v42 = a4;
      _Block_object_dispose(&v215, 8);
      v145 = a3;
LABEL_332:
      v174 = v210;
      return nw_protocol_tcp_get_malloc_frame(a1, v174, v145, v42, v6);
    }

LABEL_329:
    free(v186);
    goto LABEL_330;
  }

  if (a2 < 1)
  {
    goto LABEL_331;
  }

  v42 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  nw_tcp_access_context(a1);
  v44 = nw_tcp_access_globals(a1);
  v45 = v216;
  v216[3] = 0;
  v45[4] = (v45 + 3);
  v46 = nw_context_2k_buffer_length();
  frame_count = nw_protocol_tcp_get_frame_count(v210, v46, &v214);
  if (frame_count > v42 || (v48 = frame_count, frame_count - 3 < 0xFFFFFFFE))
  {
    v65 = nw_context_8k_buffer_length();
    if (nw_protocol_tcp_get_frame_count(v210, v65, &v214) == 1)
    {
      v49 = nw_context_8k_buffer_manager();
      v48 = 1;
      v50 = nw_context_8k_buffer_length();
    }

    else
    {
      v74 = nw_context_16k_buffer_length();
      v75 = nw_protocol_tcp_get_frame_count(v210, v74, &v214);
      if (v75 > v42 || (v48 = v75, v75 - 3 < 0xFFFFFFFE))
      {
        v78 = nw_context_64k_buffer_length();
        if (nw_protocol_tcp_get_frame_count(v210, v78, &v214) == 1)
        {
          v49 = nw_context_64k_buffer_manager();
          v48 = 1;
          v50 = nw_context_64k_buffer_length();
        }

        else
        {
          v79 = nw_context_128k_buffer_length();
          v48 = nw_protocol_tcp_get_frame_count(v210, v79, &v214);
          v49 = nw_context_128k_buffer_manager();
          v50 = nw_context_128k_buffer_length();
        }
      }

      else
      {
        v49 = nw_context_16k_buffer_manager();
        v50 = nw_context_16k_buffer_length();
      }
    }
  }

  else
  {
    v49 = nw_context_2k_buffer_manager();
    v50 = nw_context_2k_buffer_length();
  }

  v80 = v50;
  LODWORD(a4) = v42;
  if (!v49)
  {
    goto LABEL_331;
  }

  if (v48 > v42)
  {
    *type = 0;
    if (nw_protocol_tcp_get_malloc_frame(a1, v210, (v216 + 3), 1, type))
    {
      v81 = v216;
      v82 = v216 + 3;
      v83 = v216[3];
      if (v83)
      {
        v84 = *(a3 + 8);
        *v84 = v83;
        *(v81[3] + 40) = v84;
        *(a3 + 8) = v81[4];
        v81[3] = 0;
        v81[4] = v82;
      }

      if (v6)
      {
        *v6 = *type;
      }

      goto LABEL_225;
    }

    v144 = __nwlog_obj();
    v145 = a3;
    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      *v226 = 136446722;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v228 = 1024;
      *v229 = v48;
      *&v229[4] = 1024;
      *&v229[6] = v42;
      _os_log_impl(&dword_1889BA000, v144, OS_LOG_TYPE_ERROR, "%{public}s requested frame count %u larger than max frame count %u", v226, 0x18u);
    }

    _Block_object_dispose(&v215, 8);
    goto LABEL_332;
  }

  v207 = v42;
  v85 = 0;
  v212 = v49;
  v211 = v50;
  while (1)
  {
    v88 = nw_mem_buffer_allocate();
    if (!v88)
    {
      break;
    }

    v89 = v88;
    v90 = v44[26];
    if (v90)
    {
      v91 = (v90 + 16);
      v92 = *(v90 + 16);
      v93 = *(v90 + 24);
      v94 = (v92 + 24);
      if (!v92)
      {
        v94 = v44 + 27;
      }

      *v94 = v93;
      *v93 = v92;
      *(v90 + 24) = 0;
      *v91 = 0;
      v95 = v44[29];
      *(v90 + 24) = v95;
      *v95 = v90;
      v44[29] = v91;
      v96 = v44[3];
      if (v96 <= 0)
      {
        v141 = __nwlog_obj();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          v142 = 3;
        }

        else
        {
          v142 = 2;
        }

        *v226 = 136446210;
        v227 = "nw_protocol_tcp_get_slab_frame";
        LODWORD(v206) = 12;
        v143 = _os_log_send_and_compose_impl(v142, 0, 0, 0, &dword_1889BA000, v141, 16, "%{public}s Assert globals->free_slab_frame_count > 0 failed", v226, v206);
        result = __nwlog_should_abort();
        if (result)
        {
          goto LABEL_340;
        }

        free(v143);
        v96 = v44[3];
      }

      v44[3] = v96 - 1;
      v97 = *(v90 + 64);
      *(v90 + 80) = nw_frame_tcp_finalize;
      *(v90 + 88) = v44;
      *(v90 + 104) = 0;
      *(v90 + 112) = v89;
      *(v90 + 196) = 0;
      *(v90 + 48) = v80;
      *(v90 + 52) = v80;
      *(v90 + 56) = 0;
      *(v90 + 192) = 0;
      *(v90 + 200) = 0;
      *(v90 + 204) &= 0xFFC7u;
      if (v97)
      {
        do
        {
          v98 = *v97;
          v99 = v97[6];
          v100 = *v97;
          if (v99)
          {
            nw_release(v99);
            v97[6] = 0;
            v100 = *v97;
          }

          v101 = v97[1];
          v102 = v100 + 1;
          if (!v100)
          {
            v102 = (v90 + 72);
          }

          *v102 = v101;
          *v101 = v100;
          if (v97 != (v90 + 120))
          {
            free(v97);
          }

          v97 = v98;
        }

        while (v98);
      }

      *(v90 + 64) = 0;
      *(v90 + 72) = v90 + 64;
      v103 = *(v90 + 168);
      if (v103)
      {
        nw_release(v103);
      }

      *(v90 + 184) = 0;
      *(v90 + 168) = 0u;
      *(v90 + 152) = 0u;
      *(v90 + 136) = 0u;
      *(v90 + 120) = 0u;
      *(v90 + 204) &= 0x413Fu;
      *(v90 + 206) &= ~1u;
      *(v90 + 203) = 0;
      *(v90 + 198) = 0;
      v49 = v212;
      *(v90 + 104) = v212;
      v80 = v211;
    }

    else
    {
      v104 = nw_frame_create();
      if (!v104)
      {
        v151 = v44;
        v152 = __nwlog_obj();
        *v226 = 136446210;
        v227 = "nw_protocol_tcp_get_slab_frame";
        LODWORD(v206) = 12;
        v153 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v152, 16, "%{public}s nw_frame_create failed", v226, v206);
        type[0] = OS_LOG_TYPE_ERROR;
        v220 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_216;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v154 = __nwlog_obj();
          v155 = type[0];
          if (os_log_type_enabled(v154, type[0]))
          {
            *v226 = 136446210;
            v227 = "nw_protocol_tcp_get_slab_frame";
            v156 = "%{public}s nw_frame_create failed";
            goto LABEL_215;
          }

          goto LABEL_216;
        }

        if (v220 == 1)
        {
          v157 = v6;
          v158 = __nw_create_backtrace_string();
          v154 = __nwlog_obj();
          v155 = type[0];
          v159 = os_log_type_enabled(v154, type[0]);
          if (v158)
          {
            if (v159)
            {
              *v226 = 136446466;
              v227 = "nw_protocol_tcp_get_slab_frame";
              v228 = 2082;
              *v229 = v158;
              _os_log_impl(&dword_1889BA000, v154, type[0], "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", v226, 0x16u);
            }

            free(v158);
            v6 = v157;
            goto LABEL_216;
          }

          v6 = v157;
          if (!v159)
          {
LABEL_216:
            if (v153)
            {
              free(v153);
            }

            nw_mem_buffer_free();
            v44 = v151;
            goto LABEL_219;
          }

          *v226 = 136446210;
          v227 = "nw_protocol_tcp_get_slab_frame";
          v156 = "%{public}s nw_frame_create failed, no backtrace";
        }

        else
        {
          v154 = __nwlog_obj();
          v155 = type[0];
          if (!os_log_type_enabled(v154, type[0]))
          {
            goto LABEL_216;
          }

          *v226 = 136446210;
          v227 = "nw_protocol_tcp_get_slab_frame";
          v156 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
        }

LABEL_215:
        _os_log_impl(&dword_1889BA000, v154, v155, v156, v226, 0xCu);
        goto LABEL_216;
      }

      v90 = v104;
      if ((*(v104 + 204) & 4) != 0)
      {
        v105 = (v104 + 208);
      }

      else
      {
        v105 = 0;
      }

      *v105 |= 1u;
      *(v104 + 104) = v49;
      *(v104 + 16) = 0;
      v106 = v44[29];
      *(v104 + 24) = v106;
      *v106 = v104;
      v44[29] = v104 + 16;
    }

    v107 = v80;
    if (v48 == 1)
    {
      v108 = v214;
      v107 = v80;
      if (v214)
      {
        if ((*(v90 + 204) & 0x80) != 0)
        {
          *(v90 + 196) -= v214;
        }

        v109 = *(v90 + 52);
        v110 = *(v90 + 56) + v108;
        v111 = *(v90 + 60);
        if (v110 <= v109 - v111)
        {
          *(v90 + 56) = v110;
          if (v109)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v112 = __nwlog_obj();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v113 = *(v90 + 52);
            *v226 = 136446978;
            v227 = "__nw_frame_claim_internal";
            v228 = 1024;
            *v229 = v110;
            *&v229[4] = 1024;
            *&v229[6] = v113;
            LOWORD(v230) = 1024;
            *(&v230 + 2) = v111;
            _os_log_impl(&dword_1889BA000, v112, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", v226, 0x1Eu);
          }

          v109 = *(v90 + 52);
          if (!v109)
          {
            goto LABEL_174;
          }

LABEL_149:
          v115 = *(v90 + 56);
          v114 = *(v90 + 60);
          v116 = (v109 - (v114 + v115));
          if (v109 != v114 + v115)
          {
            if (v114)
            {
              v117 = *(v90 + 112);
              if (v117)
              {
                memmove((v117 + v115), (v117 + v115 + v116), v114);
                v109 = *(v90 + 52);
              }
            }

            *(v90 + 52) = v109 - v116;
            if ((*(v90 + 204) & 0x80) != 0)
            {
              v118 = *(v90 + 196);
              v119 = v118 >= v116;
              v120 = v118 - v116;
              *(v90 + 196) = v120;
              if (!v119 || v120 >= 0x10000)
              {
                v121 = __nwlog_obj();
                v122 = *(v90 + 196);
                *v226 = 136446978;
                v227 = "__nw_frame_collapse";
                v228 = 2082;
                *v229 = "frame->aggregate_buffer_length";
                *&v229[8] = 2048;
                v230 = v116;
                v231 = 2048;
                v232 = v122;
                LODWORD(v206) = 42;
                v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_1889BA000, v121, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", v226, v206);
                type[0] = OS_LOG_TYPE_ERROR;
                v220 = 0;
                if (!__nwlog_fault())
                {
                  goto LABEL_171;
                }

                if (type[0] != OS_LOG_TYPE_FAULT)
                {
                  if (v220 == 1)
                  {
                    v129 = __nw_create_backtrace_string();
                    v130 = __nwlog_obj();
                    v131 = os_log_type_enabled(v130, type[0]);
                    if (v129)
                    {
                      if (v131)
                      {
                        v132 = *(v90 + 196);
                        *v226 = 136447234;
                        v227 = "__nw_frame_collapse";
                        v228 = 2082;
                        *v229 = "frame->aggregate_buffer_length";
                        *&v229[8] = 2048;
                        v230 = v116;
                        v231 = 2048;
                        v232 = v132;
                        v233 = 2082;
                        v234 = v129;
                        _os_log_impl(&dword_1889BA000, v130, type[0], "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", v226, 0x34u);
                      }

                      free(v129);
                      goto LABEL_171;
                    }

                    if (!v131)
                    {
                      goto LABEL_171;
                    }

                    v135 = *(v90 + 196);
                    *v226 = 136446978;
                    v227 = "__nw_frame_collapse";
                    v228 = 2082;
                    *v229 = "frame->aggregate_buffer_length";
                    *&v229[8] = 2048;
                    v230 = v116;
                    v231 = 2048;
                    v232 = v135;
                    v126 = v130;
                    v127 = type[0];
                    v128 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                  }

                  else
                  {
                    v133 = __nwlog_obj();
                    if (!os_log_type_enabled(v133, type[0]))
                    {
                      goto LABEL_171;
                    }

                    v134 = *(v90 + 196);
                    *v226 = 136446978;
                    v227 = "__nw_frame_collapse";
                    v228 = 2082;
                    *v229 = "frame->aggregate_buffer_length";
                    *&v229[8] = 2048;
                    v230 = v116;
                    v231 = 2048;
                    v232 = v134;
                    v126 = v133;
                    v127 = type[0];
                    v128 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                  }

LABEL_170:
                  _os_log_impl(&dword_1889BA000, v126, v127, v128, v226, 0x2Au);
                  goto LABEL_171;
                }

                v124 = __nwlog_obj();
                if (os_log_type_enabled(v124, type[0]))
                {
                  v125 = *(v90 + 196);
                  *v226 = 136446978;
                  v227 = "__nw_frame_collapse";
                  v228 = 2082;
                  *v229 = "frame->aggregate_buffer_length";
                  *&v229[8] = 2048;
                  v230 = v116;
                  v231 = 2048;
                  v232 = v125;
                  v126 = v124;
                  v127 = type[0];
                  v128 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
                  goto LABEL_170;
                }

LABEL_171:
                if (v123)
                {
                  free(v123);
                }

                *(v90 + 196) = 0;
              }
            }
          }
        }

LABEL_174:
        v136 = v214;
        if ((*(v90 + 204) & 0x80) != 0)
        {
          *(v90 + 196) += v214;
        }

        v137 = *(v90 + 56);
        v119 = v137 >= v136;
        v138 = v137 - v136;
        if (v119)
        {
          *(v90 + 56) = v138;
        }

        else
        {
          v139 = __nwlog_obj();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            v140 = *(v90 + 56);
            *v226 = 136446722;
            v227 = "__nw_frame_unclaim_internal";
            v228 = 1024;
            *v229 = v136;
            *&v229[4] = 1024;
            *&v229[6] = v140;
            _os_log_impl(&dword_1889BA000, v139, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", v226, 0x18u);
          }
        }

        v107 = v214;
        v49 = v212;
        v80 = v211;
      }
    }

    if (v6)
    {
      ++*v6;
    }

    v85 += v107;
    *(v90 + 32) = 0;
    v86 = v216;
    v87 = v216[4];
    *(v90 + 40) = v87;
    *v87 = v90;
    v86[4] = v90 + 32;
    if (!--v48)
    {
      v147 = v216;
      v148 = v216 + 3;
      v149 = v216[3];
      if (v149)
      {
        v150 = *(a3 + 8);
        *v150 = v149;
        *(v147[3] + 40) = v150;
        *(a3 + 8) = v147[4];
        v147[3] = 0;
        v147[4] = v148;
      }

      goto LABEL_225;
    }
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v146 = __nwlog_obj();
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
    {
      *v226 = 136446466;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v228 = 1024;
      *v229 = v80;
      _os_log_impl(&dword_1889BA000, v146, OS_LOG_TYPE_DEBUG, "%{public}s failed to allocate slab buffer of size %u", v226, 0x12u);
    }
  }

LABEL_219:
  v160 = v210 - v85;
  v161 = a1;
  if (v210 == v85)
  {
    v200 = __nwlog_obj();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      v201 = 3;
    }

    else
    {
      v201 = 2;
    }

    *v226 = 136446210;
    v227 = "nw_protocol_tcp_get_slab_frame";
    LODWORD(v206) = 12;
    v202 = _os_log_send_and_compose_impl(v201, 0, 0, 0, &dword_1889BA000, v200, 16, "%{public}s Assert pending_bytes > 0 failed", v226, v206);
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_340;
    }

    free(v202);
    v161 = a1;
  }

  *type = 0;
  malloc_frame = nw_protocol_tcp_get_malloc_frame(v161, v160, (v216 + 3), 1, type);
  v163 = malloc_frame;
  v145 = a3;
  v42 = v207;
  if (!malloc_frame)
  {
    v170 = __nwlog_obj();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
    {
      *v226 = 136446466;
      v227 = "nw_protocol_tcp_get_slab_frame";
      v228 = 1024;
      *v229 = v160;
      _os_log_impl(&dword_1889BA000, v170, OS_LOG_TYPE_ERROR, "%{public}s tcp get malloc failed for %u bytes", v226, 0x12u);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_protocol_tcp_get_slab_frame_block_invoke;
    v222 = &unk_1E70E8E98;
    v223 = &v215;
    v224 = v212;
    v225 = v44;
    v171 = v216[3];
    do
    {
      if (!v171)
      {
        break;
      }

      v172 = *(v171 + 32);
      v173 = (*&buf[16])(buf);
      v171 = v172;
    }

    while ((v173 & 1) != 0);
    v167 = v210;
    if (v216[3])
    {
      v203 = __nwlog_obj();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
      {
        v204 = 3;
      }

      else
      {
        v204 = 2;
      }

      *v226 = 136446210;
      v227 = "nw_protocol_tcp_get_slab_frame";
      LODWORD(v206) = 12;
      v205 = _os_log_send_and_compose_impl(v204, 0, 0, 0, &dword_1889BA000, v203, 16, "%{public}s returned frame array in slab is not empty", v226, v206);
      result = __nwlog_should_abort();
      if (result)
      {
        goto LABEL_340;
      }

      free(v205);
      v145 = a3;
      v167 = v210;
      v42 = v207;
      if (v6)
      {
LABEL_233:
        v169 = 0;
LABEL_234:
        *v6 = v169;
      }
    }

    else if (v6)
    {
      goto LABEL_233;
    }

    _Block_object_dispose(&v215, 8);
    v174 = v167;
    if ((v163 & 1) == 0)
    {
      return nw_protocol_tcp_get_malloc_frame(a1, v174, v145, v42, v6);
    }

    return 1;
  }

  v164 = v216;
  v165 = v216 + 3;
  v166 = v216[3];
  v167 = v210;
  if (v166)
  {
    v168 = *(a3 + 8);
    *v168 = v166;
    *(v164[3] + 40) = v168;
    *(a3 + 8) = v164[4];
    v164[3] = 0;
    v164[4] = v165;
  }

  if (v6)
  {
    v169 = *v6 + *type;
    goto LABEL_234;
  }

LABEL_225:
  _Block_object_dispose(&v215, 8);
  return 1;
}