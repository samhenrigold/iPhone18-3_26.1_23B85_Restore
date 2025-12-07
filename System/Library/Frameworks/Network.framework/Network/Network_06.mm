id sub_181AC6084(void *a1)
{
  v1 = a1;
  sub_1821EE68C();

  v2 = sub_182AD2F58();

  return v2;
}

unint64_t sub_181AC60FC()
{
  word_1ED411D40 = 1;
  result = sub_181FB974C(28777, 0xE200000000000000);
  v1 = result;
  if (result == 39)
  {
    v1 = 28777;
    v2 = 0xE200000000000000;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411D48 = v1;
  unk_1ED411D50 = v2;
  byte_1ED411D58 = result == 39;
  return result;
}

void nw_path_monitor_set_queue(nw_path_monitor_t monitor, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = monitor;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_monitor_set_queue";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null monitor", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_monitor_set_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null monitor", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_path_monitor_set_queue";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_path_monitor_set_queue";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_monitor_set_queue";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    nw_path_evaluator_set_queue(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_monitor_set_queue";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null queue", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_monitor_set_queue";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null queue", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_monitor_set_queue";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_path_monitor_set_queue";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_monitor_set_queue";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_path_monitor_start(nw_path_monitor_t monitor)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = monitor;
  v2 = v1;
  if (v1)
  {
    nw_path_evaluator_start(v1);
    nw_path_evaluator_call_update_handler(v2);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_monitor_start";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null monitor", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_start";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null monitor", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_path_monitor_start";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_start";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_monitor_start";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_path_evaluator_call_update_handler(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    v3 = *&v2[12]._os_unfair_lock_opaque;
    if (v3 && (v4 = *&v2[16]._os_unfair_lock_opaque) != 0 && *&v2[14]._os_unfair_lock_opaque)
    {
      v5 = _Block_copy(v4);
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v6 = gpathLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v26 = "nw_path_evaluator_call_update_handler";
        v27 = 1042;
        *v28 = 16;
        *&v28[4] = 2098;
        *&v28[6] = v2 + 20;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P] scheduling update", buf, 0x1Cu);
      }

      v7 = *&v2[14]._os_unfair_lock_opaque;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __nw_path_evaluator_call_update_handler_block_invoke;
      block[3] = &unk_1E6A39AE8;
      v20 = v2;
      v22 = v5;
      v21 = v3;
      v8 = v5;
      dispatch_async(v7, block);
    }

    else
    {
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v8 = gpathLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = _Block_copy(*&v2[16]._os_unfair_lock_opaque);
        v10 = *&v2[14]._os_unfair_lock_opaque;
        *buf = 136447490;
        v26 = "nw_path_evaluator_call_update_handler";
        v27 = 1042;
        *v28 = 16;
        *&v28[4] = 2098;
        *&v28[6] = v2 + 20;
        v29 = 2048;
        v30 = v3;
        v31 = 2048;
        v32 = v9;
        v33 = 2048;
        v34 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [%{public,uuid_t}.16P] not delivering update, path=%p, update_block=%p, client_queue=%p", buf, 0x3Au);
      }
    }

    os_unfair_lock_unlock(v2 + 24);
    goto LABEL_15;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_path_evaluator_call_update_handler";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null evaluator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v12, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v26 = "nw_path_evaluator_call_update_handler";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null evaluator", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_path_evaluator_call_update_handler";
          v27 = 2082;
          *v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_path_evaluator_call_update_handler";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v26 = "nw_path_evaluator_call_update_handler";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v12)
  {
    free(v12);
  }

LABEL_15:
}

uint64_t __nw_path_evaluator_call_update_handler_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (__nwlog_path_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
  }

  v2 = gpathLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32) + 80;
    v5 = 136446722;
    v6 = "nw_path_evaluator_call_update_handler_block_invoke";
    v7 = 1042;
    v8 = 16;
    v9 = 2098;
    v10 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P] delivering update", &v5, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

char *nw_path_copy_netagent_dictionary(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_netagent_dictionary(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_netagent_dictionary";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_netagent_dictionary";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_path_copy_netagent_dictionary";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_netagent_dictionary";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_netagent_dictionary";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

id *nw_queue_context_create_source(void *a1, int a2, int a3, unsigned int a4, void *a5, void *a6)
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a5;
  v14 = a6;
  if (a2 == -1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_queue_context_create_source";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (fd != -1)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (!__nwlog_fault(v39, &type, &v60))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v63 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null (fd != -1)", buf, 0xCu);
      }

      goto LABEL_81;
    }

    if (v60 != 1)
    {
      v40 = __nwlog_obj();
      v53 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v63 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v40, v53, "%{public}s called with null (fd != -1), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v49 = type;
    v50 = os_log_type_enabled(v40, type);
    if (!backtrace_string)
    {
      if (v50)
      {
        *buf = 136446210;
        v63 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null (fd != -1), no backtrace", buf, 0xCu);
      }

      goto LABEL_81;
    }

    if (v50)
    {
      *buf = 136446466;
      v63 = "nw_queue_context_create_source";
      v64 = 2082;
      v65 = backtrace_string;
      _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null (fd != -1), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_69;
  }

  if (!v13)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_queue_context_create_source";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null block", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (!__nwlog_fault(v39, &type, &v60))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v63 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v40, v43, "%{public}s called with null block", buf, 0xCu);
      }

LABEL_81:

LABEL_82:
      if (v39)
      {
        free(v39);
      }

      goto LABEL_40;
    }

    if (v60 != 1)
    {
      v40 = __nwlog_obj();
      v54 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v63 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v40, v54, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v51 = type;
    v52 = os_log_type_enabled(v40, type);
    if (!backtrace_string)
    {
      if (v52)
      {
        *buf = 136446210;
        v63 = "nw_queue_context_create_source";
        _os_log_impl(&dword_181A37000, v40, v51, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }

      goto LABEL_81;
    }

    if (v52)
    {
      *buf = 136446466;
      v63 = "nw_queue_context_create_source";
      v64 = 2082;
      v65 = backtrace_string;
      _os_log_impl(&dword_181A37000, v40, v51, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_69:

    free(backtrace_string);
    goto LABEL_82;
  }

  if (a3 == 1)
  {
    v15 = MEMORY[0x1E69E96F8];
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v15 = MEMORY[0x1E69E9730];
    goto LABEL_11;
  }

  if ((a3 & 0xFFFFFFFB) == 3)
  {
    v15 = MEMORY[0x1E69E9710];
    goto LABEL_11;
  }

  if ((a3 - 4) >= 3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v63 = "nw_queue_context_create_source";
      v64 = 1024;
      LODWORD(v65) = a3;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s Bad source type %d", buf, 0x12u);
    }

LABEL_40:
    v16 = 0;
LABEL_48:

    return v16;
  }

  v15 = qword_1E6A39560[a3 - 4];
LABEL_11:
  v16 = malloc_type_calloc(1uLL, 0x38uLL, 0xFB81889AuLL);
  if (v16)
  {
    if (v12)
    {
LABEL_13:
      if (nw_context_is_inline(v12))
      {
        objc_storeStrong(v16 + 1, a1);
        v44 = _Block_copy(v13);
        v45 = v16[2];
        v16[2] = v44;

        v46 = _Block_copy(v14);
        v47 = v16[3];
        v16[3] = v46;

        *(v16 + 48) = a3 == 3;
        v16[4] = -1;
        v16[5] = -1;
        goto LABEL_48;
      }

      v17 = nw_context_copy_workloop(v12);
LABEL_21:
      v25 = v17;
      v26 = dispatch_source_create(v15, a2, a4, v17);
      v27 = *v16;
      *v16 = v26;

      if (*v16)
      {
        dispatch_source_set_event_handler(*v16, v13);
        v28 = *v16;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __nw_queue_context_create_source_block_invoke;
        handler[3] = &unk_1E6A3BAB0;
        v58 = v14;
        v59 = v16;
        dispatch_source_set_cancel_handler(v28, handler);

LABEL_47:
        goto LABEL_48;
      }

      free(v16);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v63 = "nw_queue_context_create_source";
      LODWORD(v55) = 12;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s dispatch_source_create failed", buf, v55);

      type = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (__nwlog_fault(v30, &type, &v60))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (os_log_type_enabled(v31, type))
          {
            *buf = 136446210;
            v63 = "nw_queue_context_create_source";
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s dispatch_source_create failed", buf, 0xCu);
          }
        }

        else if (v60 == 1)
        {
          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v34 = type;
          v35 = os_log_type_enabled(v31, type);
          if (v33)
          {
            if (v35)
            {
              *buf = 136446466;
              v63 = "nw_queue_context_create_source";
              v64 = 2082;
              v65 = v33;
              _os_log_impl(&dword_181A37000, v31, v34, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v33);
            if (!v30)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

          if (v35)
          {
            *buf = 136446210;
            v63 = "nw_queue_context_create_source";
            _os_log_impl(&dword_181A37000, v31, v34, "%{public}s dispatch_source_create failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v36 = type;
          if (os_log_type_enabled(v31, type))
          {
            *buf = 136446210;
            v63 = "nw_queue_context_create_source";
            _os_log_impl(&dword_181A37000, v31, v36, "%{public}s dispatch_source_create failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v30)
      {
LABEL_46:
        v16 = 0;
        goto LABEL_47;
      }

LABEL_45:
      free(v30);
      goto LABEL_46;
    }

LABEL_20:
    v17 = dispatch_workloop_copy_current();
    goto LABEL_21;
  }

  v56 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = gLogObj;
  *buf = 136446722;
  v63 = "nw_queue_context_create_source";
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v64 = 2048;
  v65 = 1;
  v66 = 2048;
  v67 = 56;
  v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  v14 = v20;
  v13 = v19;
  v12 = v18;
  result = __nwlog_should_abort(v23);
  if (!result)
  {
    free(v23);
    a4 = v56;
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

nw_parameters_attribution_t nw_parameters_get_attribution(nw_parameters_t parameters)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = parameters;
  v2 = v1;
  if (v1)
  {
    internal_attribution = _nw_parameters_get_internal_attribution(v1);
    if (internal_attribution <= 2)
    {
      v4 = (0x20201u >> (8 * (internal_attribution & 0x1F)));
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_get_attribution";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_get_attribution";
        v10 = "%{public}s called with null parameters";
LABEL_19:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_parameters_get_attribution";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_parameters_get_attribution";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_19;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_get_attribution";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_5:

  return v4;
}

uint64_t sub_181AC7EB8()
{
  ProtocolStack.transport.getter(&v5);
  v0 = v6;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v1 = v5;
  if (v6 >> 61 != 1)
  {
    sub_181A53008(v5, v6);
    return 0;
  }

  v2 = v5 + *(*v5 + 128);
  result = swift_beginAccess();
  if (*(v2 + 40) != 2)
  {
    v4 = (*(v2 + 40) >> 43) & 1;
    sub_181A53008(v1, v0);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_stack_copy_internet_protocol_as_ip_options(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_stack_copy_internet_protocol_as_ip_options(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null stack", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
        v7 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
        v7 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_protocol_stack_copy_internet_protocol_as_ip_options";
        v7 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t _nw_parameters_get_pid(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xD4);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 212);
  }

  return v3;
}

double sub_181AC8268(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_181AACFF4(a1, a2);
  }

  return result;
}

uint64_t nw_parameters_get_upper_transport_protocol(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack();
    v2 = nw_protocol_stack_copy_transport_protocol(v1);
    v3 = v2;
    if (v2)
    {
      if (_nw_protocol_options_is_udp(v2))
      {
        if (_nw_udp_options_get_use_quic_stats(v3))
        {
          v4 = -3;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_12;
      }

      if (!_nw_protocol_options_is_tcp())
      {
        v5 = v3;
        if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
        }

        v6 = nw_protocol_options_matches_definition(v5, nw_protocol_copy_custom_ip_definition_definition);

        if ((v6 & 1) == 0)
        {
          v8 = v5;
          if (_nw_protocol_options_is_quic_connection(v8))
          {

            v4 = -3;
            goto LABEL_12;
          }

          is_quic_stream = _nw_protocol_options_is_quic_stream(v8);

          if (is_quic_stream)
          {
            v4 = -3;
            goto LABEL_12;
          }
        }
      }
    }

    v4 = 0;
LABEL_12:

    return v4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_get_upper_transport_protocol";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_upper_transport_protocol";
        v14 = "%{public}s called with null parameters";
LABEL_31:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "nw_parameters_get_upper_transport_protocol";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_33;
        }

        if (!v16)
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v20 = "nw_parameters_get_upper_transport_protocol";
        v14 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_31;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_get_upper_transport_protocol";
        v14 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_31;
      }
    }

LABEL_32:
  }

LABEL_33:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

BOOL nw_parameters_get_logging_disabled(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_logging_disabled(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_logging_disabled";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_logging_disabled";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_logging_disabled";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_logging_disabled";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_logging_disabled";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_multipath(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_multipath(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_multipath";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_multipath";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_multipath";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_multipath";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_multipath";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL _nw_parameters_get_logging_disabled(void *a1)
{
  v1 = a1;
  v2 = sub_1821F7C78();

  return v2;
}

uint64_t nw_parameters_get_ip_protocol(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack();
    v2 = nw_protocol_stack_copy_transport_protocol(v1);
    if (v2)
    {
      if (_nw_protocol_options_is_tcp())
      {
        protocol = 6;
LABEL_15:

        return protocol;
      }

      if (_nw_protocol_options_is_udp(v2))
      {
        goto LABEL_6;
      }

      v4 = v2;
      if (_nw_protocol_options_is_quic_connection(v4))
      {

        protocol = 17;
        goto LABEL_15;
      }

      is_quic_stream = _nw_protocol_options_is_quic_stream(v4);

      if (is_quic_stream)
      {
LABEL_6:
        protocol = 17;
        goto LABEL_15;
      }

      v6 = v4;
      if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
      }

      v7 = nw_protocol_options_matches_definition(v6, nw_protocol_copy_custom_ip_definition_definition);

      if (v7)
      {
        protocol = nw_custom_ip_options_get_protocol(v6);
        goto LABEL_15;
      }
    }

    protocol = 0;
    goto LABEL_15;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_get_ip_protocol";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_get_ip_protocol";
        v13 = "%{public}s called with null parameters";
LABEL_30:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_parameters_get_ip_protocol";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (!v15)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v19 = "nw_parameters_get_ip_protocol";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_30;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_get_ip_protocol";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v10)
  {
    free(v10);
  }

  return 0;
}

uint64_t nw_parameters_copy_context(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_context();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_context";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_context";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_context";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_context";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_context";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t sub_181AC9084()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_182AD2388();
    v1 = *v2;
    *(v0 + 16) = *v2;
    swift_retain_n();
  }

  return v1;
}

nw_protocol_options_t nw_protocol_stack_copy_transport_protocol(nw_protocol_stack_t stack)
{
  v15 = *MEMORY[0x1E69E9840];
  if (stack)
  {

    return _nw_protocol_stack_copy_transport_protocol();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_stack_copy_transport_protocol";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null stack", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_transport_protocol";
        v6 = "%{public}s called with null stack";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_protocol_stack_copy_transport_protocol";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_transport_protocol";
        v6 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_stack_copy_transport_protocol";
        v6 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_copy_url_endpoint(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_url_endpoint(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_url_endpoint";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_url_endpoint";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_url_endpoint";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_url_endpoint";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_url_endpoint";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t sub_181AC95F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v44 = *(a1 + 2);
  v45 = a1[24];
  v4 = sub_181AC9084();
  v6 = v4;
  v7 = v4[4];
  v8 = v4[3] + v7;
  if (v4[2] < v8)
  {
    v8 = v4[2];
  }

  v50 = v4;
  v51 = v7;
  for (i = v8; ; v8 = i)
  {
    if (v7 != v8)
    {
      goto LABEL_11;
    }

    if ((sub_181AC81FC(v5) & 1) == 0)
    {
      break;
    }

    v6 = v50;
    v7 = v51;
LABEL_11:
    v10 = &v6[2 * v7++];
    v51 = v7;
    v11 = v10[5];
    v12 = v10[6];
    if (v12 >> 62)
    {
      if (v12 >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        LOBYTE(v46) = v1;
        BYTE1(v46) = v2;
        v47 = v3;
        v48 = v44;
        v49 = v45;
        v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v15 = v14(&v46, ObjectType, v12 & 0x3FFFFFFFFFFFFFFFLL);
        sub_181AAD084(v11, v12);
        if (v15)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v11 + 16) == v1 && *(v11 + 17) == v2)
      {
        v17 = *(v11 + 24);
        if (*(v11 + 40))
        {
          if (v45)
          {
            v18 = v17 == v3 && *(v11 + 32) == v44;
            if (v18 || (sub_182AD4268() & 1) != 0)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          v9 = v45;
          if (v3 != v17)
          {
            v9 = 1;
          }

          if ((v9 & 1) == 0)
          {
LABEL_54:

LABEL_55:
            v34 = 1;
            return v34 & 1;
          }
        }
      }
    }
  }

  v19 = sub_181A54748();
  v21 = v19;
  v22 = v19[4];
  v23 = v19[3] + v22;
  if (v19[2] < v23)
  {
    v23 = v19[2];
  }

  v50 = v19;
  v51 = v22;
  for (i = v23; ; v23 = i)
  {
    if (v22 != v23)
    {
      goto LABEL_38;
    }

    if ((sub_181AC81FC(v20) & 1) == 0)
    {
      break;
    }

    v21 = v50;
    v22 = v51;
LABEL_38:
    v25 = &v21[2 * v22++];
    v51 = v22;
    v26 = v25[5];
    v27 = v25[6];
    if (v27 >> 62)
    {
      if (v27 >> 62 == 1)
      {
        v28 = swift_getObjectType();
        LOBYTE(v46) = v1;
        BYTE1(v46) = v2;
        v47 = v3;
        v48 = v44;
        v49 = v45;
        v29 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v30 = v29(&v46, v28, v27 & 0x3FFFFFFFFFFFFFFFLL);
        sub_181AAD084(v26, v27);
        if (v30)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v26 + 16) == v1 && *(v26 + 17) == v2)
      {
        v32 = *(v26 + 24);
        if (*(v26 + 40))
        {
          if (v45)
          {
            v33 = v32 == v3 && *(v26 + 32) == v44;
            if (v33 || (sub_182AD4268() & 1) != 0)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          v24 = v45;
          if (v3 != v32)
          {
            v24 = 1;
          }

          if ((v24 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }
    }
  }

  ProtocolStack.transport.getter(&v46);
  v36 = v47;
  if ((~v47 & 0xF000000000000007) != 0)
  {
    v37 = v46;
    v50 = v46;
    v51 = v47;
    LOBYTE(v46) = v1;
    BYTE1(v46) = v2;
    v47 = v3;
    v48 = v44;
    v49 = v45;
    v38 = sub_181B37BFC(&v46);
    sub_181A53008(v37, v36);
    if (v38)
    {
      goto LABEL_55;
    }
  }

  v39 = v43[13];
  if ((~v39 & 0xF000000000000007) != 0)
  {
    v50 = v43[12];
    v51 = v39;
    LOBYTE(v46) = v1;
    BYTE1(v46) = v2;
    v47 = v3;
    v48 = v44;
    v49 = v45;
    if (sub_181B37BFC(&v46))
    {
      goto LABEL_55;
    }
  }

  swift_beginAccess();
  if ((~v43[7] & 0xF000000000000007) != 0)
  {
    LOBYTE(v46) = v1;
    BYTE1(v46) = v2;
    v47 = v3;
    v48 = v44;
    v49 = v45;
    if (sub_181ACC890(&v46))
    {
      goto LABEL_55;
    }
  }

  ProtocolStack.link.getter(&v46);
  v40 = v46;
  if (v46 >= 2)
  {
    v41 = v47;
    v42 = swift_getObjectType();
    LOBYTE(v46) = v1;
    BYTE1(v46) = v2;
    v47 = v3;
    v48 = v44;
    v49 = v45;
    v34 = (*(v41 + 40))(&v46, v42, v41);
    sub_181B03DAC(v40);
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

unint64_t sub_181AC9A6C()
{
  v0 = 0x636972656E6567;
  ProtocolStack.transport.getter(&v9);
  v1 = v9;
  v2 = v10;
  if ((~v10 & 0xF000000000000007) != 0)
  {
    sub_181AACFF4(v9, v10);
    sub_181A53008(v1, v2);
    v7 = v1;
    v8 = v2;
    sub_181B37B14(&v4);
    sub_181A53008(v1, v2);
    if (v6 != 255)
    {
      v0 = v5;
      if ((v6 & 1) == 0)
      {
        return sub_181FB86BC(v5);
      }
    }
  }

  else
  {
    sub_181A53008(v9, v10);
  }

  return v0;
}

uint64_t nw_context_get_private_redacted(void *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_5:
    if (nwlog_get_private_redacted::onceToken != -1)
    {
      v5 = v1;
      dispatch_once(&nwlog_get_private_redacted::onceToken, &__block_literal_global_80_47487);
      v1 = v5;
    }

    v3 = nwlog_get_private_redacted::privateRedacted;
    goto LABEL_13;
  }

  v2 = v1[33];
  if (v2 == 1)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2 != 3)
  {
    if (v2 != 2)
    {
      v3 = 1;
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (nwlog_get_sensitive_redacted::onceToken != -1)
  {
    v6 = v1;
    dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
    v1 = v6;
  }

  v3 = nwlog_get_sensitive_redacted::sensitiveRedacted;
LABEL_13:

  return v3 & 1;
}

uint64_t ProtocolStack.link.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = v3;
  v6 = v4;
  if (v3 == 2)
  {
    *(v1 + 64) = xmmword_182AE69F0;
    sub_181AC3890(2, v4);
    v6 = 0;
    v5 = 1;
  }

  *a1 = v5;
  a1[1] = v6;

  return sub_181ACAA08(v3);
}

uint64_t sub_181AC9C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v3 = sub_181AC9084();
  v5 = v3;
  v6 = v3[4];
  v7 = v3[3] + v6;
  if (v3[2] < v7)
  {
    v7 = v3[2];
  }

  v34 = v3;
  v35 = v6;
  v36 = v7;
  while (1)
  {
    if (v6 != v7)
    {
      goto LABEL_10;
    }

    if ((sub_181AC81FC(v4) & 1) == 0)
    {
      break;
    }

    v5 = v34;
    v6 = v35;
LABEL_10:
    v11 = v6 + 1;
    v35 = v6 + 1;
    v12 = &v5[2 * v6];
    v13 = v12[5];
    v14 = v12[6];
    if (!(v14 >> 62))
    {
      v8 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);
LABEL_5:
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      v29 = v32;
      v30 = v33;
      v10 = *(v8 + 344);
      sub_181B2C3E0(v13, v14);
      v10(sub_181AA9530, v28, MEMORY[0x1E69E7CA8] + 8, ObjectType, v8);
      sub_181AAD084(v13, v14);
      goto LABEL_6;
    }

    if (v14 >> 62 == 1)
    {
      v8 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      goto LABEL_5;
    }

LABEL_6:
    v7 = v36;
    v6 = v11;
  }

  v15 = sub_181A54748();
  v17 = v15;
  v18 = v15[4];
  v19 = v15[3] + v18;
  if (v15[2] < v19)
  {
    v19 = v15[2];
  }

  v34 = v15;
  v35 = v18;
  v36 = v19;
  while (2)
  {
    if (v18 != v19)
    {
LABEL_22:
      v23 = v18 + 1;
      v35 = v18 + 1;
      v24 = &v17[2 * v18];
      v25 = v24[5];
      v26 = v24[6];
      if (v26 >> 62)
      {
        if (v26 >> 62 != 1)
        {
          goto LABEL_18;
        }

        v20 = v26 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);
      }

      v21 = swift_getObjectType();
      MEMORY[0x1EEE9AC00](v21);
      v29 = v32;
      v30 = v33;
      v22 = *(v20 + 344);
      sub_181B2C3E0(v25, v26);
      v22(sub_181AA9530, v28, MEMORY[0x1E69E7CA8] + 8, v21, v20);
      sub_181AAD084(v25, v26);
LABEL_18:
      v19 = v36;
      v18 = v23;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v16))
  {
    v17 = v34;
    v18 = v35;
    goto LABEL_22;
  }
}

uint64_t nw_parameters_get_server_mode(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_server_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_server_mode";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_server_mode";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_server_mode";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_server_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_server_mode";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_only_primary_requires_type(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_only_primary_requires_type(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_only_primary_requires_type";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_only_primary_requires_type";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_only_primary_requires_type";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_only_primary_requires_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_only_primary_requires_type";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_queue_activate_source(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_queue_activate_source";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null source", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v5, &type, &v12))
    {
      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_queue_activate_source";
        v8 = "%{public}s called with null source";
LABEL_28:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v15 = "nw_queue_activate_source";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (!v10)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        v15 = "nw_queue_activate_source";
        v8 = "%{public}s called with null source, no backtrace";
        goto LABEL_28;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_queue_activate_source";
        v8 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_30:
    if (v5)
    {
      free(v5);
    }

    return;
  }

  if (*a1)
  {
    v1 = *a1;

    dispatch_activate(v1);
    return;
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v2 = a1;
    nw_queue_source_run_timer(a1);
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v2 = a1;
    nw_context_queue_source_block(*(a1 + 8), v3);
LABEL_12:
    *(v2 + 49) = 1;
    return;
  }

  if (gLogDatapath == 1)
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v15 = "nw_queue_activate_source";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Cancelled, not activating source", buf, 0xCu);
    }
  }
}

uint64_t nw_parameters_get_pid(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_pid(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_pid";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_pid";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_pid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_pid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_pid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t sub_181ACAA08(uint64_t result)
{
  if (result != 2)
  {
    return sub_181AB78DC(result);
  }

  return result;
}

uint64_t nw_parameters_get_require_companion(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_require_companion(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_require_companion";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_require_companion";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_require_companion";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_require_companion";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_require_companion";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_companion_preference(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_companion_preference();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_companion_preference";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_companion_preference";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_companion_preference";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_companion_preference";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_companion_preference";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_account_id(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_account_id(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_account_id";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_account_id";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_account_id";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_account_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_account_id";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_parameters_get_prohibit_expensive(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_prohibit_expensive(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_expensive";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_expensive";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_prohibit_expensive";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_expensive";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_expensive";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_use_awdl(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_awdl(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_awdl";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_awdl";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_use_awdl";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_use_awdl";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_awdl";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_attributed_bundle_identifier(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_attributed_bundle_identifier();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_attributed_bundle_identifier";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_attributed_bundle_identifier";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_attributed_bundle_identifier";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_attributed_bundle_identifier";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_attributed_bundle_identifier";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_local_address_preference(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack();
    v2 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v1, 0);
    if (v2)
    {
      local_address_preference = _nw_ip_options_get_local_address_preference();
    }

    else
    {
      local_address_preference = 0;
    }

    return local_address_preference;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_parameters_get_local_address_preference";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_get_local_address_preference";
        v9 = "%{public}s called with null parameters";
LABEL_20:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_parameters_get_local_address_preference";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v11)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v15 = "nw_parameters_get_local_address_preference";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_parameters_get_local_address_preference";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

nw_protocol_stack_t nw_parameters_copy_default_protocol_stack(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_copy_default_protocol_stack();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_default_protocol_stack";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_default_protocol_stack";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_default_protocol_stack";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_default_protocol_stack";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_default_protocol_stack";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_traffic_class(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_traffic_class(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_traffic_class";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_traffic_class";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_traffic_class";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_traffic_class";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_traffic_class";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_parameters_get_prohibit_constrained(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_prohibit_constrained(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_constrained";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_constrained";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_prohibit_constrained";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_constrained";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_use_p2p(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_p2p(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_p2p";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_p2p";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_use_p2p";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_use_p2p";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_p2p";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t sub_181ACC600(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838770, &qword_182AE4BF8);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_181D895D0(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838770, &qword_182AE4BF8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181AB76EC(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838770, &qword_182AE4BF8);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_181DE5C18(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

size_t sub_181ACC7AC(uuid_string_t out, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  *uu = a3;
  v7 = a4;
  if (!out)
  {
    __break(1u);
  }

  uuid_unparse_upper(uu, out);
  return strlen(out);
}

uint64_t sub_181ACC828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181ACC890(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[24];
  v8 = *v1;
  v7 = v1[1];
  if (!(v7 >> 62))
  {
    swift_beginAccess();
    v12 = *(v8 + 24);
    v13 = *(v8 + 32);
    v14 = *(v8 + 40);
    v23 = *(v8 + 16);
    v24 = v12;
    v25 = v13;
    v26 = v14;
    LOBYTE(v19) = v2;
    HIBYTE(v19) = v3;
    v20 = v5;
    v21 = v4;
    v22 = v6;
    v11 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v23, &v19);
    v15 = v24;
    v16 = v25;
    v17 = v26;
LABEL_8:
    sub_181F49A24(v12, v13, v14);
    sub_181F48350(v15, v16, v17);
    return v11 & 1;
  }

  if (v7 >> 62 != 1)
  {
    LOBYTE(v23) = *a1;
    HIBYTE(v23) = v3;
    v24 = v5;
    v25 = v4;
    v26 = v6;
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED411D48;
    v13 = unk_1ED411D50;
    v14 = byte_1ED411D58;
    v19 = word_1ED411D40;
    v20 = qword_1ED411D48;
    v21 = unk_1ED411D50;
    v22 = byte_1ED411D58;
    v11 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v23, &v19);
    v15 = v20;
    v16 = v21;
    v17 = v22;
    goto LABEL_8;
  }

  v9 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  ObjectType = swift_getObjectType();
  LOBYTE(v23) = v2;
  HIBYTE(v23) = v3;
  v24 = v5;
  v25 = v4;
  v26 = v6;
  v11 = (*(v9 + 40))(&v23, ObjectType, v9);
  return v11 & 1;
}

uint64_t nw_parameters_get_no_wake_from_sleep(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_no_wake_from_sleep(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_no_wake_from_sleep";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_wake_from_sleep";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_no_wake_from_sleep";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_no_wake_from_sleep";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_no_wake_from_sleep";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_parameters_get_use_aop2_offload(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_aop2_offload(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_aop2_offload";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_aop2_offload";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_use_aop2_offload";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_use_aop2_offload";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_aop2_offload";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t sub_181ACCF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t nw_context_get_globals_for_path(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = &__block_literal_global_291;
  if (!v1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_context_get_globals_for_path";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v12, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_context_get_globals_for_path";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v22 = "nw_context_get_globals_for_path";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_context_get_globals_for_path";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_context_get_globals_for_path";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_28:
    if (v12)
    {
      free(v12);
    }

    v5 = 0;
    goto LABEL_11;
  }

  v3 = nw_context_copy_globals_context(v1);

  os_unfair_lock_lock((*(v3 + 4) + 44));
  v4 = *(v3 + 4);
  v5 = *(v4 + 68);
  if (v5)
  {
LABEL_10:
    os_unfair_lock_unlock((v4 + 44));

LABEL_11:
    return v5;
  }

  v6 = malloc_type_calloc(1uLL, 0x98uLL, 0xEE8327E0uLL);
  if (v6)
  {
LABEL_9:
    *(*(v3 + 4) + 68) = v6;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 18) = 0;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    *(v6 + 124) = -1;
    v4 = *(v3 + 4);
    v5 = *(v4 + 68);
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v22 = "nw_context_get_globals_for_path";
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 152;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v6 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t nw_path_parse_necp_result(void *a1, uint64_t a2, NSObject *a3)
{
  v155 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (!v6)
  {
    v119 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v119, 16, "%{public}s called with null path", buf, 12);

    LOBYTE(v153) = 16;
    LOBYTE(uu) = 0;
    if (!__nwlog_fault(v120, &v153, &uu))
    {
      goto LABEL_383;
    }

    if (v153 == 17)
    {
      v121 = __nwlog_obj();
      v122 = v153;
      if (os_log_type_enabled(v121, v153))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v121, v122, "%{public}s called with null path", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (uu != 1)
    {
      v121 = __nwlog_obj();
      v137 = v153;
      if (os_log_type_enabled(v121, v153))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v121, v137, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    backtrace_string = __nw_create_backtrace_string();
    v121 = __nwlog_obj();
    v128 = v153;
    v129 = os_log_type_enabled(v121, v153);
    if (!backtrace_string)
    {
      if (v129)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v121, v128, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (v129)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v121, v128, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_351:

    free(backtrace_string);
    goto LABEL_383;
  }

  v151 = a2;
  if (!a2)
  {
    v123 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v123, 16, "%{public}s called with null result", buf, 12);

    LOBYTE(v153) = 16;
    LOBYTE(uu) = 0;
    if (!__nwlog_fault(v120, &v153, &uu))
    {
      goto LABEL_383;
    }

    if (v153 == 17)
    {
      v121 = __nwlog_obj();
      v124 = v153;
      if (os_log_type_enabled(v121, v153))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v121, v124, "%{public}s called with null result", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (uu != 1)
    {
      v121 = __nwlog_obj();
      v138 = v153;
      if (os_log_type_enabled(v121, v153))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v121, v138, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    backtrace_string = __nw_create_backtrace_string();
    v121 = __nwlog_obj();
    v130 = v153;
    v131 = os_log_type_enabled(v121, v153);
    if (!backtrace_string)
    {
      if (v131)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_result";
        _os_log_impl(&dword_181A37000, v121, v130, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (v131)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v121, v130, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_351;
  }

  if (!a3)
  {
    v125 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v125, 16, "%{public}s called with null result_length", buf, 12);

    LOBYTE(v153) = 16;
    LOBYTE(uu) = 0;
    if (__nwlog_fault(v120, &v153, &uu))
    {
      if (v153 == 17)
      {
        v121 = __nwlog_obj();
        v126 = v153;
        if (os_log_type_enabled(v121, v153))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          _os_log_impl(&dword_181A37000, v121, v126, "%{public}s called with null result_length", buf, 0xCu);
        }

LABEL_382:

        goto LABEL_383;
      }

      if (uu != 1)
      {
        v121 = __nwlog_obj();
        v139 = v153;
        if (os_log_type_enabled(v121, v153))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          _os_log_impl(&dword_181A37000, v121, v139, "%{public}s called with null result_length, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_382;
      }

      backtrace_string = __nw_create_backtrace_string();
      v121 = __nwlog_obj();
      v132 = v153;
      v133 = os_log_type_enabled(v121, v153);
      if (!backtrace_string)
      {
        if (v133)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          _os_log_impl(&dword_181A37000, v121, v132, "%{public}s called with null result_length, no backtrace", buf, 0xCu);
        }

        goto LABEL_382;
      }

      if (v133)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_result";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v121, v132, "%{public}s called with null result_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_351;
    }

LABEL_383:
    if (!v120)
    {
      goto LABEL_294;
    }

    v108 = v120;
    goto LABEL_293;
  }

  if (a3 <= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_parse_necp_result";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s NECP buffer too short %zu", buf, 22);

    LOBYTE(v153) = 16;
    LOBYTE(uu) = 0;
    if (__nwlog_fault(v8, &v153, &uu))
    {
      if (v153 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = v153;
        if (os_log_type_enabled(v9, v153))
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s NECP buffer too short %zu", buf, 0x16u);
        }
      }

      else if (uu == 1)
      {
        v22 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v23 = v153;
        v24 = os_log_type_enabled(v9, v153);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_parse_necp_result";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2082;
            *&buf[24] = v22;
            _os_log_impl(&dword_181A37000, v9, v23, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v22);
          if (!v8)
          {
            goto LABEL_294;
          }

LABEL_292:
          v108 = v8;
LABEL_293:
          free(v108);
          goto LABEL_294;
        }

        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v9, v23, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v25 = v153;
        if (os_log_type_enabled(v9, v153))
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v9, v25, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v8)
    {
LABEL_294:
      v109 = 0;
      goto LABEL_321;
    }

    goto LABEL_292;
  }

  __ptr = malloc_type_malloc(0xA0uLL, 0xC0FEDF99uLL);
  if (!__ptr)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_result";
    v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s strict allocator failed", buf, 12);

    result = __nwlog_should_abort(v18);
    if (result)
    {
LABEL_394:
      __break(1u);
      return result;
    }

    free(v18);
  }

  if (a3 == 5)
  {
    v20 = 0;
    v148 = 0;
    v149 = 0;
    v147 = 0;
    v21 = 0;
    goto LABEL_303;
  }

  v147 = 0;
  v149 = 0;
  v148 = 0;
  v20 = 0;
  v21 = 0;
  v145 = 0;
  v146 = 8;
  while (1)
  {
    v26 = *(&v21->isa + v151);
    v27 = *(&v21->isa + v151 + 1);
    if (v27)
    {
      if (v27 <= 0xFFFFFFF9 && a3 >= v27 + 5 && (a3 - v27 - 5) >= v21)
      {
        v37 = (&v21->isa + v151 + 5);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      *&buf[32] = 1024;
      *&buf[34] = v27;
      LODWORD(v144) = 38;
      v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v144);

      LOBYTE(v153) = 16;
      LOBYTE(uu) = 0;
      if (__nwlog_fault(v30, &v153, &uu))
      {
        if (v153 == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = v153;
          if (os_log_type_enabled(v31, v153))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v21;
            *&buf[22] = 2048;
            *&buf[24] = a3;
            *&buf[32] = 1024;
            *&buf[34] = v27;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
          }
        }

        else
        {
          if (uu == 1)
          {
            v3 = v20;
            v33 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v35 = v153;
            v36 = os_log_type_enabled(v34, v153);
            if (v33)
            {
              if (v36)
              {
                *buf = 136447234;
                *&buf[4] = "nw_necp_buffer_get_tlv_value";
                *&buf[12] = 2048;
                *&buf[14] = v21;
                *&buf[22] = 2048;
                *&buf[24] = a3;
                *&buf[32] = 1024;
                *&buf[34] = v27;
                *&buf[38] = 2082;
                *&buf[40] = v33;
                _os_log_impl(&dword_181A37000, v34, v35, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
              }

              v20 = v3;
              free(v33);
              if (!v30)
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v36)
              {
                *buf = 136446978;
                *&buf[4] = "nw_necp_buffer_get_tlv_value";
                *&buf[12] = 2048;
                *&buf[14] = v21;
                *&buf[22] = 2048;
                *&buf[24] = a3;
                *&buf[32] = 1024;
                *&buf[34] = v27;
                _os_log_impl(&dword_181A37000, v34, v35, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
              }

              v20 = v3;
              if (!v30)
              {
                goto LABEL_53;
              }
            }

LABEL_52:
            free(v30);
            goto LABEL_53;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v38 = v153;
          if (os_log_type_enabled(v31, v153))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v21;
            *&buf[22] = 2048;
            *&buf[24] = a3;
            *&buf[32] = 1024;
            *&buf[34] = v27;
            _os_log_impl(&dword_181A37000, v31, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (v30)
      {
        goto LABEL_52;
      }
    }

LABEL_53:
    v37 = 0;
LABEL_54:
    v21 = (v21 + v27 + 5);
    if (v21 > a3)
    {
      break;
    }

    if (v27)
    {
      v39 = v37 == 0;
    }

    else
    {
      v39 = 1;
    }

    if (!v39)
    {
      switch(v26)
      {
        case 1:
          v153 = 0uLL;
          if (v27 == 16)
          {
            goto LABEL_61;
          }

          if (v27 < 0x11)
          {
            break;
          }

          v81 = __nwlog_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 1;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_61:
          v153 = *v37;
          uu = 0uLL;
          _nw_path_get_client_id(v6, &uu);
          if (uuid_is_null(&uu))
          {
            _nw_path_set_client_id(v6, &v153);
          }

          else if (v153 != uu)
          {
            flow_result_from_tlv = __nwlog_obj();
            if (os_log_type_enabled(flow_result_from_tlv, OS_LOG_TYPE_INFO))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_result";
              *&buf[12] = 1042;
              *&buf[14] = 16;
              *&buf[18] = 2098;
              *&buf[20] = &v153;
              *&buf[28] = 1042;
              *&buf[30] = 16;
              *&buf[34] = 2098;
              *&buf[36] = &uu;
              _os_log_impl(&dword_181A37000, flow_result_from_tlv, OS_LOG_TYPE_INFO, "%{public}s Client ID from NECP (%{public,uuid_t}.16P) does not match path (%{public,uuid_t}.16P)", buf, 0x2Cu);
            }

LABEL_28:
          }

          break;
        case 2:
          if (v27 == 4)
          {
            goto LABEL_105;
          }

          if (v27 < 5)
          {
            v54 = 0;
          }

          else
          {
            v83 = __nwlog_obj();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 2;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_105:
            v54 = *v37;
          }

          _nw_path_set_necp_result_routing_result(v6, v54);
          break;
        case 3:
          if (v27 == 4)
          {
            goto LABEL_83;
          }

          if (v27 < 5)
          {
            v46 = 0;
          }

          else
          {
            v73 = __nwlog_obj();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 3;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_83:
            v46 = *v37;
          }

          _nw_path_set_necp_result_routing_result_parameter(v6, v46);
          break;
        case 4:
          if (v27 == 4)
          {
            goto LABEL_102;
          }

          if (v27 < 5)
          {
            v53 = 0;
          }

          else
          {
            v82 = __nwlog_obj();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 4;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_102:
            v53 = *v37;
          }

          _nw_path_set_necp_result_filter_control_unit(v6, v53);
          break;
        case 5:
          if (v27 == 4)
          {
            goto LABEL_86;
          }

          if (v27 >= 5)
          {
            v74 = __nwlog_obj();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 5;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_86:
            _nw_path_set_necp_result_routed_interface_index(v6, *v37);
          }

          break;
        case 6:
          v48 = v146;
          if (v147 < v146)
          {
            goto LABEL_97;
          }

          v49 = v146 + 8;
          if (v146 != -8)
          {
            goto LABEL_96;
          }

          v91 = __nwlog_obj();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v92 = 3;
          }

          else
          {
            v92 = 2;
          }

          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          LODWORD(v144) = 12;
          v93 = _os_log_send_and_compose_impl(v92, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s strict_reallocf called with size 0", buf, v144);

          result = __nwlog_should_abort(v93);
          if (result)
          {
            goto LABEL_394;
          }

          free(v93);
          v49 = 0;
LABEL_96:
          v48 = v49;
          v50 = 20 * v49;
          __ptr = reallocf(__ptr, v50);
          if (__ptr)
          {
            goto LABEL_97;
          }

          v94 = __nwlog_obj();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            v95 = 3;
          }

          else
          {
            v95 = 2;
          }

          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 2048;
          *&buf[14] = v50;
          LODWORD(v144) = 22;
          v96 = _os_log_send_and_compose_impl(v95, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s strict_reallocf(%zu) failed", buf, v144);

          result = __nwlog_should_abort(v96);
          if (result)
          {
            goto LABEL_394;
          }

          free(v96);
          __ptr = 0;
LABEL_97:
          v146 = v48;
          if (v27 == 20)
          {
            goto LABEL_98;
          }

          if (v27 >= 0x15)
          {
            v85 = __nwlog_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 6;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 20;
              _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_98:
            v51 = *v37;
            v52 = &__ptr[20 * v147];
            *(v52 + 4) = v37[4];
            *v52 = v51;
            ++v147;
          }

          break;
        case 7:
          if (v27 == 4)
          {
            goto LABEL_110;
          }

          if (v27 >= 5)
          {
            v86 = __nwlog_obj();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 7;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_110:
            v55 = *v37;
            if (*v37)
            {
              _nw_path_set_is_local(v6, 1);
            }

            if ((v55 & 2) != 0)
            {
              _nw_path_set_is_direct(v6, 1);
            }

            if ((v55 & 4) != 0)
            {
              _nw_path_set_has_ipv4(v6, 1);
            }

            if ((v55 & 8) != 0)
            {
              _nw_path_set_has_ipv6(v6, 1);
            }

            if ((v55 & 0x2000) != 0)
            {
              _nw_path_set_has_nat64_prefixes(v6, 1);
            }

            if ((v55 & 0x10000) != 0)
            {
              _nw_path_set_has_kernel_extension_filter(v6, 1);
            }

            if ((v55 & 0x20000) != 0)
            {
              _nw_path_set_has_custom_pf_rules(v6, 1);
            }

            if ((v55 & 0x40000) != 0)
            {
              _nw_path_set_has_application_level_firewall(v6, 1);
            }

            if ((v55 & 0x80000) != 0)
            {
              _nw_path_set_has_parental_controls(v6, 1);
            }

            if ((v55 & 0x20) != 0)
            {
              _nw_path_set_has_necp_satisfied(v6, 1);
            }

            if ((v55 & 0x100) != 0)
            {
              _nw_path_set_probe_connectivity(v6, 1);
            }

            if ((v55 & 0x800) != 0)
            {
              _nw_path_set_link_quality_abort(v6, 1);
            }

            if ((v55 & 0x8000) != 0)
            {
              _nw_path_set_specific_listener(v6, 1);
            }

            if ((v55 & 0x200000) != 0)
            {
              _nw_path_set_use_link_heuristics(v6, 1);
            }
          }

          break;
        case 8:
          if (v27 == 8)
          {
            goto LABEL_139;
          }

          if (v27 >= 9)
          {
            v87 = __nwlog_obj();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 8;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 8;
              _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_139:
            v56 = *v37;
            v57 = v37[1];
            necp_result_direct_interface_index = _nw_path_get_necp_result_direct_interface_index(v6);
            necp_result_delegate_interface_index = _nw_path_get_necp_result_delegate_interface_index(v6);
            if (necp_result_direct_interface_index)
            {
              if (!necp_result_delegate_interface_index)
              {
                _nw_path_set_necp_result_delegate_interface_index(v6, v57);
                _nw_path_set_necp_result_delegate_interface_generation(v6, v56);
              }
            }

            else
            {
              _nw_path_set_necp_result_direct_interface_index(v6, v57);
              _nw_path_set_necp_result_direct_interface_generation(v6, v56);
            }
          }

          break;
        case 9:
          if (v27 == 24)
          {
            goto LABEL_151;
          }

          if (v27 < 0x19)
          {
            break;
          }

          v90 = __nwlog_obj();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 9;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            *&buf[24] = 1024;
            *&buf[26] = 24;
            _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_151:
          if (v149 < v145)
          {
            goto LABEL_154;
          }

          v62 = v145 + 8;
          if (v145 != -8)
          {
            goto LABEL_153;
          }

          v97 = __nwlog_obj();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v98 = 3;
          }

          else
          {
            v98 = 2;
          }

          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_result";
          LODWORD(v144) = 12;
          v99 = _os_log_send_and_compose_impl(v98, 0, 0, 0, &dword_181A37000, v97, 16, "%{public}s strict_reallocf called with size 0", buf, v144);

          result = __nwlog_should_abort(v99);
          if (result)
          {
            goto LABEL_394;
          }

          free(v99);
LABEL_153:
          v145 += 8;
          v63 = 24 * v62;
          v148 = reallocf(v148, 24 * v62);
          if (!v148)
          {
            a3 = __nwlog_obj();
            if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
            {
              v143 = 3;
            }

            else
            {
              v143 = 2;
            }

            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_result";
            *&buf[12] = 2048;
            *&buf[14] = 24 * v62;
            LODWORD(v144) = 22;
            v6 = _os_log_send_and_compose_impl(v143, 0, 0, 0, &dword_181A37000, a3, 16, "%{public}s strict_reallocf(%zu) failed", buf, v144);

            should_abort = __nwlog_should_abort(v6);
            __break(1u);
LABEL_389:
            if (should_abort)
            {
              *buf = v151;
              *&buf[4] = v62;
              *&buf[12] = 2048;
              *&buf[14] = v21;
              *&buf[22] = 2048;
              *&buf[24] = a3;
              _os_log_impl(&dword_181A37000, v3, v63, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
            }

            goto LABEL_392;
          }

LABEL_154:
          v64 = *v37;
          v65 = &v148[24 * v149];
          *(v65 + 2) = *(v37 + 2);
          *v65 = v64;
          ++v149;
          break;
        case 10:
          if (v27 == 4)
          {
            goto LABEL_148;
          }

          if (v27 < 5)
          {
            v61 = 0;
          }

          else
          {
            v89 = __nwlog_obj();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 10;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_148:
            v61 = *v37;
          }

          _nw_path_set_effective_mtu(v6, v61);
          break;
        case 11:
          flow_result_from_tlv = nw_path_create_flow_result_from_tlv(v6, v37, v27);
          if (flow_result_from_tlv)
          {
            _nw_path_append_flow(v6, flow_result_from_tlv);
          }

          goto LABEL_28;
        case 15:
          if (v27 != 1)
          {
            v80 = __nwlog_obj();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 15;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_path_set_recommended_mss(v6, *v37);
          break;
        case 17:
          if (v27 == 4)
          {
            v47 = *v37;
LABEL_91:
            _nw_path_set_interface_time_delta(v6, v47);
            break;
          }

          if (v27 >= 5)
          {
            v76 = __nwlog_obj();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 17;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

            v77 = *v37;
            v78 = __nwlog_obj();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 17;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

            v47 = v77;
            goto LABEL_91;
          }

          break;
        case 18:
          if (v27 == 4)
          {
            goto LABEL_74;
          }

          if (v27 >= 5)
          {
            v71 = __nwlog_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 18;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_74:
            v42 = *v37 - 1;
            if (v42 <= 5)
            {
              nw_path_set_reason(v6, dword_182BD337C[v42], off_1E6A387D0[v42], v11, v12, v13, v14, v15);
            }
          }

          break;
        case 19:
          if (v27 == 4)
          {
            goto LABEL_143;
          }

          if (v27 < 5)
          {
            v60 = 0;
          }

          else
          {
            v88 = __nwlog_obj();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 19;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_143:
            v60 = *v37;
          }

          _nw_path_set_necp_result_flow_divert_aggregate_unit(v6, v60);
          break;
        case 156:
          if (v20)
          {
            nw_path_set_agent_identifier_on_endpoint(v20, 156, v27, v37);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v69 = gLogObj;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_result";
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
          }

          goto LABEL_173;
        case 158:
          if (v20)
          {
            *buf = 0;
            asprintf(buf, "%.*s", v27, v37);
            v67 = *buf;
            v20 = v20;
            _nw_endpoint_set_device_id(v20, v67);

            if (*buf)
            {
              free(*buf);
            }

            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v69 = gLogObj;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_result";
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
          }

          goto LABEL_173;
        case 159:
          if (v20)
          {
            v66 = [MEMORY[0x1E695DEF0] dataWithBytes:v37 length:v27];
            nw_endpoint_append_public_key(v20, v66);
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v69 = gLogObj;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_result";
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
            }

LABEL_173:

            v20 = 0;
          }

          break;
        case 210:
          if (v27 == 4)
          {
            goto LABEL_68;
          }

          if (v27 < 5)
          {
            v40 = 0;
          }

          else
          {
            v70 = __nwlog_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 210;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_68:
            v40 = *v37;
          }

          _nw_path_set_effective_traffic_class(v6, v40);
          break;
        case 211:
          if (v27 == 4)
          {
            goto LABEL_93;
          }

          if (v27 >= 5)
          {
            v79 = __nwlog_obj();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 211;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_93:
            _nw_path_set_is_traffic_mgmt_background(v6, *v37 != 0);
          }

          break;
        case 212:
          v68 = nw_path_copy_endpoint_from_tlv(212, v27, v37);

          v20 = v68;
          if (v20)
          {
            _nw_path_gateways_append(v6, v20);
          }

          goto LABEL_72;
        case 213:
          v41 = nw_path_copy_endpoint_from_tlv(213, v27, v37);

          v20 = v41;
          if (v20)
          {
            _nw_path_group_members_append(v6, v20);
          }

LABEL_72:

          break;
        case 214:
          if (v27 == 80)
          {
            goto LABEL_88;
          }

          if (v27 >= 0x51)
          {
            v75 = __nwlog_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 214;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 80;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_88:
            _nw_path_set_nat64_prefixes(v6, v37, 80);
          }

          break;
        case 215:
          if (v27 == 2)
          {
            goto LABEL_77;
          }

          if (v27 < 3)
          {
            v43 = 0;
            v44 = 0;
          }

          else
          {
            v72 = __nwlog_obj();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 215;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 2;
              _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_77:
            v43 = *v37;
            v44 = *(v37 + 1);
          }

          _nw_path_set_throughput_estimates(v6, v43, v44);
          break;
        case 218:
          if (v27 != 1)
          {
            v84 = __nwlog_obj();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 218;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_path_set_link_quality(v6, *v37);
          break;
        default:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          flow_result_from_tlv = gLogObj;
          if (os_log_type_enabled(flow_result_from_tlv, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_result";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, flow_result_from_tlv, OS_LOG_TYPE_ERROR, "%{public}s Received unknown client result TLV (type %d)", buf, 0x12u);
          }

          goto LABEL_28;
      }
    }

    if (v21 >= (&a3[-1].isa + 3))
    {
      goto LABEL_303;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v100 = gLogObj;
  *buf = 136446978;
  *&buf[4] = "nw_path_parse_necp_result";
  *&buf[12] = 1024;
  *&buf[14] = v27;
  *&buf[18] = 2048;
  *&buf[20] = v21;
  *&buf[28] = 2048;
  *&buf[30] = a3;
  LODWORD(v144) = 38;
  v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, v144);

  LOBYTE(v153) = 16;
  LOBYTE(uu) = 0;
  if (!__nwlog_fault(v101, &v153, &uu))
  {
    goto LABEL_301;
  }

  if (v153 == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v102 = gLogObj;
    v103 = v153;
    if (os_log_type_enabled(v102, v153))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      *&buf[18] = 2048;
      *&buf[20] = v21;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v102, v103, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
    }

    goto LABEL_300;
  }

  if (uu != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v102 = gLogObj;
    v110 = v153;
    if (os_log_type_enabled(v102, v153))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      *&buf[18] = 2048;
      *&buf[20] = v21;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v102, v110, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
    }

    goto LABEL_300;
  }

  v104 = __nw_create_backtrace_string();
  if (!v104)
  {
    v102 = __nwlog_obj();
    v111 = v153;
    if (os_log_type_enabled(v102, v153))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      *&buf[18] = 2048;
      *&buf[20] = v21;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v102, v111, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
    }

LABEL_300:

LABEL_301:
    if (!v101)
    {
      goto LABEL_303;
    }

    goto LABEL_302;
  }

  v105 = v104;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v106 = gLogObj;
  v107 = v153;
  if (os_log_type_enabled(v106, v153))
  {
    *buf = 136447234;
    *&buf[4] = "nw_path_parse_necp_result";
    *&buf[12] = 1024;
    *&buf[14] = v27;
    *&buf[18] = 2048;
    *&buf[20] = v21;
    *&buf[28] = 2048;
    *&buf[30] = a3;
    *&buf[38] = 2082;
    *&buf[40] = v105;
    _os_log_impl(&dword_181A37000, v106, v107, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
  }

  free(v105);
  if (v101)
  {
LABEL_302:
    free(v101);
  }

LABEL_303:
  if (v21 == a3)
  {
    goto LABEL_304;
  }

  v134 = __nwlog_obj();
  LODWORD(v151) = 136446722;
  *buf = 136446722;
  v62 = "nw_path_parse_necp_result";
  *&buf[4] = "nw_path_parse_necp_result";
  *&buf[12] = 2048;
  *&buf[14] = v21;
  *&buf[22] = 2048;
  *&buf[24] = a3;
  LODWORD(v144) = 32;
  v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v134, 16, "%{public}s cursor has unexpected value %zu != %zu", buf, v144);

  LOBYTE(v153) = 16;
  LOBYTE(uu) = 0;
  if (!__nwlog_fault(v37, &v153, &uu))
  {
    goto LABEL_392;
  }

  if (v153 == 17)
  {
    v135 = __nwlog_obj();
    v136 = v153;
    if (os_log_type_enabled(v135, v153))
    {
      *buf = 136446722;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_impl(&dword_181A37000, v135, v136, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
    }

LABEL_356:

    goto LABEL_392;
  }

  if (uu != 1)
  {
    v135 = __nwlog_obj();
    v142 = v153;
    if (os_log_type_enabled(v135, v153))
    {
      *buf = 136446722;
      *&buf[4] = "nw_path_parse_necp_result";
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_impl(&dword_181A37000, v135, v142, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_356;
  }

  v140 = __nw_create_backtrace_string();
  v3 = __nwlog_obj();
  v63 = v153;
  should_abort = os_log_type_enabled(v3, v153);
  if (!v140)
  {
    goto LABEL_389;
  }

  if (should_abort)
  {
    *buf = 136446978;
    *&buf[4] = "nw_path_parse_necp_result";
    *&buf[12] = 2048;
    *&buf[14] = v21;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    *&buf[32] = 2082;
    *&buf[34] = v140;
    _os_log_impl(&dword_181A37000, v3, v63, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v140);
LABEL_392:
  if (v37)
  {
    free(v37);
  }

LABEL_304:
  necp_result_routed_interface_index = _nw_path_get_necp_result_routed_interface_index(v6);
  v113 = _nw_path_get_necp_result_direct_interface_index(v6);
  if (necp_result_routed_interface_index)
  {
    v114 = v113;
    if (v113)
    {
      if (necp_result_routed_interface_index != v113)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v115 = gLogObj;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_parse_necp_result";
          *&buf[12] = 1024;
          *&buf[14] = necp_result_routed_interface_index;
          *&buf[18] = 1024;
          *&buf[20] = v114;
          _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s Mismatch in interface results from NECP (%u != %u)", buf, 0x18u);
        }

        _nw_path_set_necp_result_routed_interface_index(v6, v114);
      }
    }
  }

  if (v147)
  {
    v116 = v147;
    v117 = __ptr;
    do
    {
      v118 = *(v117 + 4);
      *buf = *v117;
      *&buf[16] = v118;
      _nw_path_add_necp_result_netagent(v6, &buf[4], *buf);
      v117 += 20;
      --v116;
    }

    while (v116);
LABEL_315:
    free(__ptr);
  }

  else if (__ptr)
  {
    goto LABEL_315;
  }

  if (v149)
  {
    _nw_path_set_necp_result_interface_options(v6, v148, v149);
  }

  if (v148)
  {
    free(v148);
  }

  v109 = 1;
LABEL_321:

  return v109;
}

void sub_181AD033C()
{
  v1 = v0;
  v57 = *MEMORY[0x1E69E9840];
  sub_181ADB0F8();
  sub_181A56FDC();
  sub_181AD9DB8();
  sub_181FD4B3C();
  sub_181AC3118();
  if ((*(v0 + 157) & 8) != 0 || (v2 = v0[11], v43 = v0[10], v44 = v2, v3 = v0[7], v39 = v0[6], v40 = v3, v4 = v0[9], v41 = v0[8], v42 = v4, v5 = v0[3], v35 = v0[2], v36 = v5, v6 = v0[5], v37 = v0[4], v38 = v6, v7 = v0[1], v33 = *v0, v34 = v7, v8 = *(v0 + 24), v9 = *(v0 + 25), *(v56 + 10) = *(v0 + 362), v10 = v0[22], v55 = v0[21], v56[0] = v10, v11 = v0[18], v51 = v0[17], v52 = v11, v12 = v0[20], v53 = v0[19], v54 = v12, v13 = v0[14], v47 = v0[13], v48 = v13, v14 = v0[16], v49 = v0[15], v50 = v14, v45 = v8, v46 = v9, (sub_181ADF260() | 2) != 2))
  {
LABEL_19:
    *(v1 + 377) = 1;
    goto LABEL_20;
  }

  if (!v9)
  {
    goto LABEL_36;
  }

  v15 = v9[4];
  if (v9[2] >= v9[3] + v15)
  {
    v16 = v9[3] + v15;
  }

  else
  {
    v16 = v9[2];
  }

  v30 = v9;
  v31 = v15;
  v32 = v16;
  swift_retain_n();
  v18 = v9;
  while (1)
  {
    if (v15 != v16)
    {
      goto LABEL_13;
    }

    if ((sub_181AC81FC(v17) & 1) == 0)
    {
      break;
    }

    v18 = v30;
    v15 = v31;
LABEL_13:
    v19 = &v18[26 * v15++];
    v31 = v15;
    if (v19[30])
    {
      goto LABEL_18;
    }

    if (v19[20])
    {
      v29 = v19[20];

      sub_181AC23B8(&v29, &v33);
      if (v33)
      {
        v20 = *(v33 + 80);
        sub_181AD1A40(v33, *(&v33 + 1), v34, *(&v34 + 1));
        if ((v20 & 3) == 1)
        {
          if ((~v20 & 0x50) == 0)
          {
            goto LABEL_18;
          }
        }

        else if ((v20 & 0x40) != 0)
        {
LABEL_18:

          goto LABEL_19;
        }
      }
    }

    v16 = v32;
  }

LABEL_36:
  *(v1 + 377) = 0;
LABEL_20:
  if (*(v1 + 72) == 4 && *(v1 + 73) == 0xFFFFFFF)
  {
    LOBYTE(v33) = 0;
    v21 = nw_context_copy_implicit_context();
    v22 = nw_path_create_bridged_flow_director(v21, &v33);
    swift_unknownObjectRelease();
    if (v22)
    {
      if (v33 == 1)
      {
        if (qword_1ED4106B8 != -1)
        {
          swift_once();
        }

        v23 = sub_182AD2698();
        __swift_project_value_buffer(v23, qword_1ED411DA8);
        v24 = sub_182AD2678();
        v25 = sub_182AD38B8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          v27 = "In-process flow divert director created due to path result";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1ED411DA8);
      v24 = sub_182AD2678();
      v25 = sub_182AD38B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "Failed to create in-process flow divert director due to path result";
LABEL_32:
        _os_log_impl(&dword_181A37000, v24, v25, v27, v26, 2u);
        MEMORY[0x1865DF520](v26, -1, -1);
      }

LABEL_33:
    }
  }
}

void _nw_path_set_necp_result_routing_result(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 72) = a2;
  }
}

void _nw_path_update_is_viableTm(char *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = swift_beginAccess();
    a2(v4);
    swift_endAccess();
  }
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *nw_dictionary_copy_value(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_dictionary_copy_value";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null dictionary", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v20 = "nw_dictionary_copy_value";
      v8 = "%{public}s called with null dictionary";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_dictionary_copy_value";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_49:
        if (!v5)
        {
          return 0;
        }

LABEL_50:
        free(v5);
        return 0;
      }

      if (!v12)
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v20 = "nw_dictionary_copy_value";
      v8 = "%{public}s called with null dictionary, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v20 = "nw_dictionary_copy_value";
      v8 = "%{public}s called with null dictionary, backtrace limit exceeded";
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_dictionary_copy_value";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null key", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_49;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v17 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_49;
        }

        *buf = 136446210;
        v20 = "nw_dictionary_copy_value";
        v8 = "%{public}s called with null key, backtrace limit exceeded";
        goto LABEL_48;
      }

      v13 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (!v13)
      {
        if (!v14)
        {
          goto LABEL_49;
        }

        *buf = 136446210;
        v20 = "nw_dictionary_copy_value";
        v8 = "%{public}s called with null key, no backtrace";
        goto LABEL_48;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "nw_dictionary_copy_value";
        v21 = 2082;
        v22 = v13;
        v15 = "%{public}s called with null key, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v6, v7, v15, buf, 0x16u);
      }

LABEL_34:
      free(v13);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_50;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v20 = "nw_dictionary_copy_value";
    v8 = "%{public}s called with null key";
LABEL_48:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_49;
  }

  if (!*(a1 + 16))
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_dictionary_copy_value";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null dictionary->xpc_object", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v20 = "nw_dictionary_copy_value";
      v8 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_48;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v20 = "nw_dictionary_copy_value";
      v8 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_48;
    }

    v13 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v16 = os_log_type_enabled(v6, type);
    if (!v13)
    {
      if (!v16)
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v20 = "nw_dictionary_copy_value";
      v8 = "%{public}s called with null dictionary->xpc_object, no backtrace";
      goto LABEL_48;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_dictionary_copy_value";
      v21 = 2082;
      v22 = v13;
      v15 = "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  pointer = xpc_dictionary_get_pointer();
  if (!pointer)
  {
    return 0;
  }

  return os_retain(pointer);
}

uint64_t nw_parameters_get_required_address_family(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_default_protocol_stack();
    v2 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v1, 0);
    if (!v2)
    {
      goto LABEL_6;
    }

    version = _nw_ip_options_get_version();
    if (version == 4)
    {
      v4 = 2;
      goto LABEL_8;
    }

    if (version == 6)
    {
      v4 = 30;
    }

    else
    {
LABEL_6:
      v4 = 0;
    }

LABEL_8:

    return v4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_get_required_address_family";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_get_required_address_family";
        v10 = "%{public}s called with null parameters";
LABEL_23:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_parameters_get_required_address_family";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v12)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v16 = "nw_parameters_get_required_address_family";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_23;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_get_required_address_family";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_path_watch_necp_changes(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
    globals_for_path = nw_context_get_globals_for_path(v1);
    os_unfair_lock_lock((globals_for_path + 116));
    v3 = nw_path_shared_necp_fd(v1);
    pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
    if (sNWIsBetweenForkAndExec == 1 && (sNWParentAllowedDispatch & 1) != 0)
    {
      goto LABEL_33;
    }

    if ((sNWDispatchAllowedNow & 1) == 0)
    {
      if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0 && (_dispatch_is_multithreaded() & 1) != 0 || (getpid(), sandbox_check() == 1))
      {
        sNWDispatchAllowedNow = 1;
      }

      else if (!sNWDispatchAllowedNow)
      {
LABEL_33:
        os_unfair_lock_unlock((globals_for_path + 116));
        goto LABEL_34;
      }
    }

    if (v3 == -1 || *(globals_for_path + 56))
    {
      goto LABEL_33;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZL26nw_path_watch_necp_changesPU24objcproto13OS_nw_context8NSObject_block_invoke;
    v21[3] = &unk_1E6A3D868;
    v22 = v1;
    source = nw_queue_context_create_source(v22, v3, 1, 0, v21, 0);
    *(globals_for_path + 56) = source;
    if (source)
    {
      nw_queue_activate_source(source);
LABEL_32:

      goto LABEL_33;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v26 = "nw_path_watch_necp_changes";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s nw_queue_context_create_source failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v6, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v26 = "nw_path_watch_necp_changes";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s nw_queue_context_create_source failed", buf, 0xCu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v10 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v26 = "nw_path_watch_necp_changes";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v11)
        {
          *buf = 136446210;
          v26 = "nw_path_watch_necp_changes";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s nw_queue_context_create_source failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v26 = "nw_path_watch_necp_changes";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_30:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_32;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_path_watch_necp_changes";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null context", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v14, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v26 = "nw_path_watch_necp_changes";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      v17 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v15, type);
      if (v17)
      {
        if (v19)
        {
          *buf = 136446466;
          v26 = "nw_path_watch_necp_changes";
          v27 = 2082;
          v28 = v17;
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v17);
        goto LABEL_51;
      }

      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_path_watch_necp_changes";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v26 = "nw_path_watch_necp_changes";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_51:
  if (v14)
  {
    free(v14);
  }

LABEL_34:
}

uint64_t sub_181AD1A40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

char *_nw_path_set_group_descriptor(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    *(v3 + 20) = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

char *_nw_path_set_advertise_descriptor(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    *(v3 + 22) = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

void _nw_path_set_custom_ethertype(char *a1, __int16 a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 68) = a2;
  }
}

id Endpoint.init(_:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v4 = 0;
  v4[2] = 1;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v5 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_associations] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v1[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_edges] = v7;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v8 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v1[v8] = sub_181A552E8(v7);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v10 = swift_allocObject();
  *&v1[v9] = v10;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v7;
  v1[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v1[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  *(v10 + 16) = 0;
  v11 = &v1[OBJC_IVAR____TtC7Network8Endpoint_type];
  v12 = a1[1];
  *v11 = *a1;
  v11[1] = v12;
  v11[2] = a1[2];
  *(v11 + 44) = *(a1 + 44);
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_181AD1DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 == 2)
  {
  }

  else if (a5 <= 1u)
  {
  }
}

id _nw_endpoint_create_address_0(unsigned __int8 *__src)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *__src;
  if (v1 > 0x80)
  {
    return 0;
  }

  memset(v4, 0, sizeof(v4));
  memcpy(v4, __src, v1);
  sub_181AD2530(v4, &v5);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v5 == 1)
  {
    return 0;
  }

  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v3 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  return Endpoint.init(_:)(&v5);
}

uint64_t nw_endpoint_fillout_v4v6_address(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_fillout_v4v6_address";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v24 != 1)
    {
      v12 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v18)
    {
      *buf = 136446466;
      v27 = "nw_endpoint_fillout_v4v6_address";
      v28 = 2082;
      v29 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v5 = v3;
  v6 = _nw_endpoint_get_type(v5);

  if (v6 != 1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_fillout_v4v6_address";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)", buf, 0xCu);
      }

LABEL_39:

LABEL_40:
      if (v11)
      {
        free(v11);
      }

      goto LABEL_42;
    }

    if (v24 != 1)
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_fillout_v4v6_address";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v20)
    {
      *buf = 136446466;
      v27 = "nw_endpoint_fillout_v4v6_address";
      v28 = 2082;
      v29 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_27:

    free(backtrace_string);
    goto LABEL_40;
  }

  address_family = _nw_endpoint_get_address_family(v5);
  if (address_family == 30)
  {
    v8 = _nw_endpoint_fillout_v6_address(v5, a2);
    goto LABEL_7;
  }

  if (address_family != 2)
  {
LABEL_42:
    v9 = 0;
    goto LABEL_43;
  }

  v8 = _nw_endpoint_fillout_v4_address(v5, a2);
LABEL_7:
  v9 = v8;
LABEL_43:

  return v9;
}

uint64_t sub_181AD2448(uint64_t a1)
{
  v3 = v1[1];
  if (v3)
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);

    sub_181E6550C(v9, v10);
    if (v8 != 1)
    {
      goto LABEL_9;
    }

    if (v4)
    {
      v11 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v11 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!(v11 | v9))
      {
        goto LABEL_7;
      }

LABEL_9:
      type metadata accessor for EndpointCommon.EndpointCommonBacking();
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v10;
      *(v12 + 32) = v5;
      *(v12 + 40) = v4;
      *(v12 + 48) = v6;
      *(v12 + 56) = v7;
      *(v12 + 64) = v8;
      goto LABEL_10;
    }

    if (v9)
    {
      goto LABEL_9;
    }
  }

LABEL_7:

  v12 = 0;
LABEL_10:

  *v1 = a1;
  v1[1] = v12;
  return result;
}

void sub_181AD2530(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = result[1];
  if (v3 > 0x1D)
  {
    if (v3 == 30)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v24 = *(result + 1);
      v25 = *(result + 2);
      v11 = *(result + 6);
      v26 = bswap32(*(result + 1)) >> 16;
      if (v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25 == 4294901760;
      }

      v30[0] = 1;
      if (v27)
      {
        v28 = HIDWORD(v25);
      }

      else
      {
        v28 = v24;
      }

      if (v27)
      {
        v14 = 0;
      }

      else
      {
        v14 = v25;
      }

      if (v27)
      {
        v15 = v26;
      }

      else
      {
        v15 = 0;
      }

      if (v27)
      {
        v16 = 0;
      }

      else
      {
        v16 = v26;
      }

      v18 = !v27;
      *&v13 = 0;
      *(&v13 + 1) = v28;
      v17 = 1;
      goto LABEL_31;
    }

    if (v3 == 40)
    {
      v6 = *(result + 2);
      v7 = *result | (*(result + 1) << 16) | (*(result + 1) << 32) | 0x2800;
      *v30 = 0uLL;
      *&v30[16] = v7;
      *&v30[24] = v6;
      *&v31 = 0;
      WORD4(v31) = 0;
      BYTE10(v31) = 3;
      goto LABEL_8;
    }

LABEL_9:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = *(result + 1);
      v5 = bswap32(*(result + 1)) >> 16;
      *v30 = 0uLL;
      *&v30[16] = v4;
      *&v30[24] = 0;
      *&v31 = v5;
      WORD4(v31) = 0;
      BYTE10(v31) = 0;
LABEL_8:
      sub_181AD2448(0);
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *v30;
      v13 = *&v30[8];
      v14 = *&v30[24];
      v15 = v31;
      v16 = WORD4(v31);
      v17 = 1;
      v18 = BYTE10(v31);
      goto LABEL_31;
    }

    goto LABEL_9;
  }

  v35 = *(result + 98);
  v19 = *(result + 50);
  v20 = *(result + 82);
  v33 = *(result + 66);
  v34 = v20;
  v21 = *(result + 18);
  *v30 = *(result + 2);
  *&v30[16] = v21;
  v31 = *(result + 34);
  v32 = v19;
  MEMORY[0x1EEE9AC00](result);
  v22 = sub_182AD30D8();
  sub_18217AB24(v22, v23, v30);
  v12 = *v30;
  if (*v30 == 1)
  {
    __break(1u);
    return;
  }

  v17 = BYTE4(v32);
  v11 = DWORD2(v32);
  v10 = v32;
  v9 = HIWORD(v31);
  v8 = WORD6(v31);
  v18 = BYTE10(v31);
  v16 = WORD4(v31);
  v14 = *&v30[24];
  v15 = v31;
  v13 = *&v30[8];
LABEL_31:
  v29 = v17 & 1;
  v30[0] = v29;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 42) = v18;
  *(a2 + 44) = v8;
  *(a2 + 46) = v9;
  *(a2 + 48) = v10;
  *(a2 + 52) = v29;
  *(a2 + 56) = v11;
}

uint64_t sub_181AD27C0(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v5], v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 20);
  v12 = v4[42];

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      sub_181AD1DE4(v9, v8, v10, v11, 2u);
      return 1;
    }

    if (v12 == 3)
    {
      sub_181AD1DE4(v9, v8, v10, v11, 3u);
      return 40;
    }

    sub_181AD1DE4(v9, v8, v10, v11, 4u);
    return 0;
  }

  if (v12)
  {
    sub_181AD1DE4(v9, v8, v10, v11, 1u);
    return 30;
  }

  else
  {
    sub_181AD1DE4(v9, v8, v10, v11, 0);
    return 2;
  }
}

uint64_t sub_181AD2958(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v8 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v7], v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_181A5513C(v6, type metadata accessor for Endpoint.EndpointType);
  }

  else
  {
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = *(v6 + 20);
    v13 = v6[42];
    if (!v13)
    {
      *a2 = 528;
      *(a2 + 2) = bswap32(v11) >> 16;
      *(a2 + 4) = v9;
      *(a2 + 8) = 0;

      sub_181AD1DE4(v9, v10, v11, v12, 0);
      return 1;
    }

    sub_181AD1DE4(v9, v10, v11, v12, v13);
  }

  return 0;
}

id nw_parameters_copy_prohibited_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_prohibited_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_prohibited_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_prohibited_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_required_netagent_uuids(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_required_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_required_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_required_netagent_domains(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_required_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_required_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_required_netagent_domains";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_required_netagent_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD35A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _nw_parameters_iterate_avoided_netagent_typesTm(char *a1, void *aBlock, uint64_t (*a3)(uint64_t))
{
  v5 = _Block_copy(aBlock);
  sub_18220DD88(a1, v5, a3);

  _Block_release(v5);
}

uint64_t sub_181AD3638(uint64_t a1)
{
  v2 = *(v1 + 215);
  v3 = *(v1 + 224);
  if (v3)
  {
    v4 = *(v3 + 72);
    v15 = v4;

    if ((v2 & 0x20) != 0)
    {
      if (v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    return v4;
  }

  if ((*(v1 + 215) & 0x20) == 0)
  {
    return 0;
  }

LABEL_7:
  v4 = *sub_182AD2388();
  v15 = v4;

LABEL_8:
  v5 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v7 = v6;
  result = sub_181AC49BC(0x6F696E61706D6F43, 0xE90000000000006ELL);
  v10 = *(v4 + 24);
  v11 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    v12 = result;
    v13 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v4 + 16) < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181E74708(isUniquelyReferenced_nonNull_native, v11, 0);
      v4 = v15;
    }

    sub_181E748B4((v4 + 16), v4 + 40, v5, v7, v12, v13);
    sub_181E4926C(v5, v7);
    sub_181E49280(v12, v13);
    return v15;
  }

  __break(1u);
  return result;
}

id nw_parameters_copy_required_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_required_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_required_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_required_netagent_types";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_required_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_required_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD3AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_preferred_netagent_uuids(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_preferred_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD3E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_preferred_netagent_domains(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_preferred_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD41A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_181AD41DC(uint64_t a1)
{
  v2 = *(v1 + 210);
  v3 = *(v1 + 211);
  v4 = *(v1 + 28);
  if (v4)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  v79 = v5;
  if (v2 != 1)
  {
    goto LABEL_11;
  }

  v6 = v1[11];
  v60 = v1[10];
  v61 = v6;
  v62 = v1[12];
  v7 = v1[7];
  v56 = v1[6];
  v57 = v7;
  v8 = v1[9];
  v58 = v1[8];
  v59 = v8;
  v9 = v1[3];
  v52 = v1[2];
  v53 = v9;
  v10 = v1[5];
  v54 = v1[4];
  v55 = v10;
  v11 = v1[1];
  v50 = *v1;
  v51 = v11;
  v12 = *(v1 + 344);
  v75 = *(v1 + 328);
  v76 = v12;
  v13 = *(v1 + 376);
  v77 = *(v1 + 360);
  v78 = v13;
  v14 = *(v1 + 280);
  v71 = *(v1 + 264);
  v72 = v14;
  v15 = *(v1 + 312);
  v73 = *(v1 + 296);
  v74 = v15;
  v16 = *(v1 + 248);
  v69 = *(v1 + 232);
  v63 = *(v1 + 104);
  v64 = 1;
  v65 = v3;
  v66 = *(v1 + 212);
  v67 = *(v1 + 55);
  v68 = v4;
  v70 = v16;
  v17 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v19 = v18;
  v20 = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v22 = v21;
  v49[0] = v17;
  v49[1] = v19;
  v49[2] = v20;
  v49[3] = v21;
  v24 = sub_181F44B74(v49, v23);
  sub_181E4926C(v17, v19);
  sub_181E49280(v20, v22);
  if (v24)
  {
    if (v24 != 2)
    {
      goto LABEL_11;
    }

    if (qword_1EA836648 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v25 = sub_182AD2698();
      __swift_project_value_buffer(v25, qword_1EA843148);
      v26 = sub_182AD2678();
      v27 = sub_182AD38B8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_181A37000, v26, v27, "Parameters companionPreference is prefer but companion is in avoided list", v28, 2u);
        MEMORY[0x1865DF520](v28, -1, -1);
      }

LABEL_11:
      if (v3 != 1)
      {
        break;
      }

LABEL_12:
      if (!v5)
      {
        v5 = *sub_182AD2388();
        v79 = v5;
      }

      v29 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
      v31 = v30;
      v32 = sub_181AC49BC(0xD00000000000001FLL, 0x8000000182BD4FA0);
      v34 = *(v5 + 24);
      v35 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        v36 = v32;
        v37 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (*(v5 + 16) < v35 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181E74708(isUniquelyReferenced_nonNull_native, v35, 0);
          v5 = v79;
        }

        sub_181E748B4((v5 + 16), v5 + 40, v29, v31, v36, v37);
        sub_181E4926C(v29, v31);
        sub_181E49280(v36, v37);
        return v79;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }

    return v5;
  }

  if (!v5)
  {
    v5 = *sub_182AD2388();
    v79 = v5;
  }

  v40 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v42 = v41;
  result = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v44 = *(v5 + 24);
  v45 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    v46 = result;
    v47 = v43;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v5 + 16) < v45 || (v48 & 1) == 0)
    {
      sub_181E74708(v48, v45, 0);
      v5 = v79;
    }

    sub_181E748B4((v5 + 16), v5 + 40, v40, v42, v46, v47);
    sub_181E4926C(v40, v42);
    sub_181E49280(v46, v47);
    v5 = v79;
    if (v3 == 1)
    {
      goto LABEL_12;
    }

    return v5;
  }

  __break(1u);
  return result;
}

id nw_parameters_copy_preferred_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_preferred_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_preferred_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_preferred_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD4934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_avoided_netagent_uuids(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_avoided_netagent_uuids_block_invoke;
    v13[3] = &unk_1E6A38768;
    v13[4] = buf;
    _nw_parameters_iterate_avoided_netagent_uuids(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_uuids";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD4CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_parameters_copy_avoided_netagent_domains(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_avoided_netagent_domains_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_avoided_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_domains";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD5014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_181AD5048()
{
  v1 = *(v0 + 210);
  v2 = *(v0 + 28);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  v65 = v3;
  if (v1 != 2)
  {
    return v3;
  }

  v4 = v0[11];
  v48 = v0[10];
  v49 = v4;
  v50 = v0[12];
  v5 = v0[7];
  v44 = v0[6];
  v45 = v5;
  v6 = v0[9];
  v46 = v0[8];
  v47 = v6;
  v7 = v0[3];
  v40 = v0[2];
  v41 = v7;
  v8 = v0[5];
  v42 = v0[4];
  v43 = v8;
  v9 = v0[1];
  v38 = *v0;
  v39 = v9;
  v10 = *(v0 + 344);
  v61 = *(v0 + 328);
  v62 = v10;
  v11 = *(v0 + 376);
  v63 = *(v0 + 360);
  v64 = v11;
  v12 = *(v0 + 280);
  v57 = *(v0 + 264);
  v58 = v12;
  v13 = *(v0 + 312);
  v59 = *(v0 + 296);
  v60 = v13;
  v14 = *(v0 + 248);
  v55 = *(v0 + 232);
  v51 = *(v0 + 104);
  v52 = 2;
  *v53 = *(v0 + 211);
  *&v53[5] = *(v0 + 27);
  v54 = v2;
  v56 = v14;
  v15 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v17 = v16;
  v18 = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v20 = v19;
  v37[0] = v15;
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = v19;
  v22 = sub_181F44B74(v37, v21);
  sub_181E4926C(v15, v17);
  sub_181E49280(v18, v20);
  if (v22)
  {
    if (v22 == 1)
    {
      if (qword_1EA836648 != -1)
      {
        swift_once();
      }

      v23 = sub_182AD2698();
      __swift_project_value_buffer(v23, qword_1EA843148);
      v24 = sub_182AD2678();
      v25 = sub_182AD38B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_181A37000, v24, v25, "Parameters companionPreference is avoid but companion is in preferred list", v26, 2u);
        MEMORY[0x1865DF520](v26, -1, -1);
      }
    }

    return v3;
  }

  if (!v3)
  {
    v3 = *sub_182AD2388();
    v65 = v3;
  }

  v27 = sub_181AC47A8(0xD000000000000016, 0x8000000182BD4F80);
  v29 = v28;
  result = sub_181AC49BC(0x6F696E61706D6F43, 0xEE0079786F72506ELL);
  v32 = *(v3 + 24);
  v33 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    v34 = result;
    v35 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v3 + 16) < v33 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181E74708(isUniquelyReferenced_nonNull_native, v33, 0);
      v3 = v65;
    }

    sub_181E748B4((v3 + 16), v3 + 40, v27, v29, v34, v35);
    sub_181E4926C(v27, v29);
    sub_181E49280(v34, v35);
    return v65;
  }

  __break(1u);
  return result;
}

id nw_parameters_copy_avoided_netagent_types(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_avoided_netagent_types_block_invoke;
    v13[3] = &unk_1E6A2E340;
    v13[4] = buf;
    _nw_parameters_iterate_avoided_netagent_types(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_avoided_netagent_types";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void sub_181AD56A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_parameters_copy_channel_demux_options(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_copy_channel_demux_options(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_channel_demux_options";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_channel_demux_options";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_copy_channel_demux_options";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_copy_channel_demux_options";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_channel_demux_options";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

_BYTE *sub_181AD5960(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 256);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 248);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage + 16] & 1) == 0)
      {
        v12 = *v7;
LABEL_21:
        os_unfair_lock_unlock((*&v2[v5] + 16));

        goto LABEL_22;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = sub_18224FE14(v4, v3);
        v15 = v14;

        v3 = v15;
        if ((v15 & 0x2000000000000000) == 0)
        {
LABEL_6:
          if ((v4 & 0x1000000000000000) != 0)
          {
            v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v9 = v4 & 0xFFFFFFFFFFFFLL;
            v10 = (v4 & 0xFFFFFFFFFFFFLL) + 1;
            if (!__OFADD__(v4 & 0xFFFFFFFFFFFFLL, 1))
            {
LABEL_8:
              v11 = swift_slowAlloc();
              v12 = v11;
              if (!v9)
              {
LABEL_11:
                v13 = &v12[v9];
LABEL_12:
                *v13 = 0;
                *v7 = v12;
                *(v7 + 1) = v10;
LABEL_20:
                v7[16] = 0;
                goto LABEL_21;
              }

              if (v10 >= v9)
              {
                memcpy(v11, v8, v9);
                goto LABEL_11;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v19 = sub_182AD3CF8();
            if (!v19)
            {
LABEL_28:
              v10 = 1;
              v13 = swift_slowAlloc();
              v12 = v13;
              goto LABEL_12;
            }

            v8 = v19;
            v9 = v20;
            v10 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v16 = HIBYTE(v3) & 0xF;
      __src[0] = v4;
      __src[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v17 = swift_slowAlloc();
      v12 = v17;
      if (v16)
      {
        memcpy(v17, __src, HIBYTE(v3) & 0xF);
      }

      v12[v16] = 0;
      *v7 = v12;
      *(v7 + 1) = v16 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 256);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

uint64_t nw_parameters_get_uid(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_uid(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_uid";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_uid";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_uid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_uid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_uid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}