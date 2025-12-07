uint64_t nw_endpoint_handler_get_minimize_logging(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[284] >> 5) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_handler_get_minimize_logging";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_minimize_logging";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_endpoint_handler_get_minimize_logging";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_minimize_logging";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_handler_get_minimize_logging";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 1;
  v1 = 0;
LABEL_3:

  return v2;
}

id nw_endpoint_handler_copy_current_path(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    v3 = *&v2[16]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 28);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_copy_current_path";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null handler", buf, 12);

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
        v16 = "nw_endpoint_handler_copy_current_path";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
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
          v16 = "nw_endpoint_handler_copy_current_path";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_current_path";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_current_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

void nw_endpoint_handler_start(void *a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_endpoint_handler_start";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v41, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v66 = "nw_endpoint_handler_start";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v63 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v52 = type;
        v53 = os_log_type_enabled(v42, type);
        if (backtrace_string)
        {
          if (v53)
          {
            *buf = 136446466;
            v66 = "nw_endpoint_handler_start";
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v42, v52, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_101;
        }

        if (v53)
        {
          *buf = 136446210;
          v66 = "nw_endpoint_handler_start";
          _os_log_impl(&dword_181A37000, v42, v52, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v66 = "nw_endpoint_handler_start";
          _os_log_impl(&dword_181A37000, v42, v61, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_101:
    if (v41)
    {
      free(v41);
    }

    goto LABEL_73;
  }

  v3 = nw_parameters_copy_context(v1[4]);
  nw_context_assert_queue(v3);

  if ((*(v2 + 284) & 0x20) == 0)
  {
    if ((*(v2 + 284) & 0x40) != 0)
    {
      goto LABEL_32;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    if (*(v2 + 284))
    {
      v5 = "dry-run ";
    }

    else
    {
      v5 = "";
    }

    v6 = nw_endpoint_handler_copy_endpoint(v2);
    v7 = v6;
    if (v6)
    {
      logging_description = _nw_endpoint_get_logging_description(v6);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v9 = *(v2 + 30);
    if (v9 > 5)
    {
      v10 = "unknown-state";
    }

    else
    {
      v10 = off_1E6A31048[v9];
    }

    v11 = v2;
    v12 = v11;
    v13 = *(v11 + 29);
    log = v4;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v14 = logging_description;
          v15 = v5;
          v16 = "proxy";
          goto LABEL_30;
        case 4:
          v14 = logging_description;
          v15 = v5;
          v16 = "fallback";
          goto LABEL_30;
        case 5:
          v14 = logging_description;
          v15 = v5;
          v16 = "transform";
          goto LABEL_30;
      }
    }

    else
    {
      switch(v13)
      {
        case 0:
          v14 = logging_description;
          v15 = v5;
          v16 = "path";
          goto LABEL_30;
        case 1:
          v14 = logging_description;
          v15 = v5;
          v16 = "resolver";
          goto LABEL_30;
        case 2:
          v14 = logging_description;
          v15 = v5;
          v16 = nw_endpoint_flow_mode_string(v11[33]);
LABEL_30:

          v17 = v12;
          os_unfair_lock_lock(v12 + 28);
          v18 = v17[8];
          os_unfair_lock_unlock(v12 + 28);

          *buf = 136447746;
          v66 = "nw_endpoint_handler_start";
          v67 = 2082;
          v68 = v2 + 23;
          v69 = 2082;
          v70 = v15;
          v71 = 2082;
          v72 = v14;
          v73 = 2082;
          v74 = v10;
          v75 = 2082;
          v76 = v16;
          v77 = 2114;
          v78 = v18;
          v4 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

LABEL_31:
          goto LABEL_32;
      }
    }

    v14 = logging_description;
    v15 = v5;
    v16 = "unknown-mode";
    goto LABEL_30;
  }

  if ((nw_endpoint_handler_get_logging_disabled(v2) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(v2);
      v45 = nw_endpoint_handler_dry_run_string(v2);
      v46 = nw_endpoint_handler_copy_endpoint(v2);
      v47 = nw_endpoint_get_logging_description(v46);
      v48 = nw_endpoint_handler_state_string(v2);
      v49 = nw_endpoint_handler_mode_string(v2);
      v50 = nw_endpoint_handler_copy_current_path(v2);
      *buf = 136447746;
      v66 = "nw_endpoint_handler_start";
      v67 = 2082;
      v68 = id_string;
      v69 = 2082;
      v70 = v45;
      v71 = 2082;
      v72 = v47;
      v73 = 2082;
      v74 = v48;
      v75 = 2082;
      v76 = v49;
      v77 = 2114;
      v78 = v50;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);
    }

    goto LABEL_31;
  }

LABEL_32:
  if (*(v2 + 29) == 2 && nw_endpoint_flow_should_not_use_path(v2[33]))
  {
    *(v2 + 30) = 1;
    v19 = mach_continuous_time();
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v2[16] = v20;
    v21 = v2[33];
    [v21 startWithHandler:v2];

    goto LABEL_73;
  }

  *(v2 + 20) = 65537;
  nw_endpoint_handler_report(v2, 0, v2 + 40, 0);
  if (*(v2 + 30))
  {
    if ((*(v2 + 284) & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v2))
      {
        goto LABEL_73;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v54 = nw_endpoint_handler_get_id_string(v2);
        v55 = nw_endpoint_handler_dry_run_string(v2);
        v56 = nw_endpoint_handler_copy_endpoint(v2);
        v57 = nw_endpoint_get_logging_description(v56);
        v58 = nw_endpoint_handler_state_string(v2);
        v59 = nw_endpoint_handler_mode_string(v2);
        v60 = nw_endpoint_handler_copy_current_path(v2);
        *buf = 136447746;
        v66 = "nw_endpoint_handler_start";
        v67 = 2082;
        v68 = v54;
        v69 = 2082;
        v70 = v55;
        v71 = 2082;
        v72 = v57;
        v73 = 2082;
        v74 = v58;
        v75 = 2082;
        v76 = v59;
        v77 = 2114;
        v78 = v60;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] state changed during initial report, not starting", buf, 0x48u);
      }

      goto LABEL_72;
    }

    if ((*(v2 + 284) & 0x40) != 0)
    {
      goto LABEL_73;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
LABEL_72:

      goto LABEL_73;
    }

    if (*(v2 + 284))
    {
      v23 = "dry-run ";
    }

    else
    {
      v23 = "";
    }

    v24 = nw_endpoint_handler_copy_endpoint(v2);
    v25 = v24;
    if (v24)
    {
      v26 = _nw_endpoint_get_logging_description(v24);
    }

    else
    {
      v26 = "<NULL>";
    }

    v32 = *(v2 + 30);
    if (v32 > 5)
    {
      v33 = "unknown-state";
    }

    else
    {
      v33 = off_1E6A31048[v32];
    }

    v34 = v2;
    v35 = v34;
    v36 = *(v2 + 29);
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          v37 = "proxy";
          goto LABEL_71;
        case 4:
          v37 = "fallback";
          goto LABEL_71;
        case 5:
          v37 = "transform";
          goto LABEL_71;
      }
    }

    else
    {
      switch(v36)
      {
        case 0:
          v37 = "path";
          goto LABEL_71;
        case 1:
          v37 = "resolver";
          goto LABEL_71;
        case 2:
          v37 = nw_endpoint_flow_mode_string(v34[33]);
LABEL_71:

          v38 = v35;
          os_unfair_lock_lock(v35 + 28);
          v39 = v38[8];
          os_unfair_lock_unlock(v35 + 28);

          *buf = 136447746;
          v66 = "nw_endpoint_handler_start";
          v67 = 2082;
          v68 = v2 + 23;
          v69 = 2082;
          v70 = v23;
          v71 = 2082;
          v72 = v26;
          v73 = 2082;
          v74 = v33;
          v75 = 2082;
          v76 = v37;
          v77 = 2114;
          v78 = v39;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] state changed during initial report, not starting", buf, 0x48u);

          goto LABEL_72;
      }
    }

    v37 = "unknown-mode";
    goto LABEL_71;
  }

  os_unfair_lock_lock(v2 + 28);
  v27 = v2[8];
  v2[8] = 0;

  os_unfair_lock_unlock(v2 + 28);
  v28 = v2[7];
  if (v28 && (*(v2 + 284) & 4) == 0)
  {
    nw_association_unregister(v28, v2);
    v29 = v2[7];
    v2[7] = 0;
  }

  *(v2 + 30) = 1;
  nw_endpoint_handler_initialize_association(v2);
  v30 = nw_association_copy_current_path(v2[7], v2[4]);
  os_unfair_lock_lock(v2 + 28);
  v31 = v2[8];
  v2[8] = v30;

  os_unfair_lock_unlock(v2 + 28);
  *(v2 + 284) &= ~4u;
  nw_endpoint_handler_path_change(v2);
LABEL_73:
}

id nw_endpoint_handler_copy_endpoint(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_endpoint_handler_copy_endpoint";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v9, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_endpoint_handler_copy_endpoint";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v13 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v19 = "nw_endpoint_handler_copy_endpoint";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v14)
        {
          *buf = 136446210;
          v19 = "nw_endpoint_handler_copy_endpoint";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v19 = "nw_endpoint_handler_copy_endpoint";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v9)
    {
      free(v9);
    }

    v6 = 0;
    goto LABEL_9;
  }

  os_unfair_lock_lock(v1 + 28);
  if (v2[29]._os_unfair_lock_opaque != 2)
  {
    os_unfair_lock_unlock(v2 + 28);
LABEL_8:
    v6 = *&v2[6]._os_unfair_lock_opaque;
    goto LABEL_9;
  }

  v3 = nw_endpoint_flow_copy_connected_path(*&v2[66]._os_unfair_lock_opaque);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = _nw_path_copy_effective_remote_endpoint(v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v2 + 28);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

const char *nw_endpoint_handler_state_string(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[30];
    if (v2 > 5)
    {
      v3 = "unknown-state";
    }

    else
    {
      v3 = off_1E6A31048[v2];
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_state_string";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null handler", buf, 12);

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
        v16 = "nw_endpoint_handler_state_string";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
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
          v16 = "nw_endpoint_handler_state_string";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_state_string";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_state_string";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = "null";
  v1 = 0;
LABEL_5:

  return v3;
}

void _nw_endpoint_enumerate_alternativesTm(uint64_t a1, void *aBlock, void (*a3)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  a3(a1, v5);

  _Block_release(v5);
}

void sub_181B37B14(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 >> 61;
  if ((v3 >> 61) > 2 && v5 > 4)
  {
    if (v5 == 5)
    {
      v9 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      ObjectType = swift_getObjectType();
      (*(v9 + 96))(&v12, ObjectType, v9);
      v11 = v14;
      *a1 = v12;
      *(a1 + 8) = v13;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v11 = -1;
    }

    *(a1 + 24) = v11;
  }

  else
  {
    swift_beginAccess();
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    sub_181F49A24(v6, v7, v8);
  }
}

uint64_t sub_181B37BFC(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[24];
  v8 = *v1;
  v7 = v1[1];
  v9 = v7 >> 61;
  if ((v7 >> 61) > 2 && v9 > 4)
  {
    if (v9 == 5)
    {
      v18 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      ObjectType = swift_getObjectType();
      LOBYTE(v24) = v2;
      HIBYTE(v24) = v3;
      v25 = v5;
      v26 = v4;
      v27 = v6;
      v13 = (*(v18 + 40))(&v24, ObjectType, v18);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    swift_beginAccess();
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    v12 = *(v8 + 40);
    v24 = *(v8 + 16);
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v20[0] = v2;
    v20[1] = v3;
    v21 = v5;
    v22 = v4;
    v23 = v6;
    v13 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v24, v20);
    v14 = v25;
    v15 = v26;
    v16 = v27;
    sub_181F49A24(v10, v11, v12);
    sub_181F48350(v14, v15, v16);
  }

  return v13 & 1;
}

void sub_181B37DA0(void *a1, NSObject *a2)
{
  swift_getObjectType();
  if (&__block_literal_global_7016 == a1 && a2 == 0)
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1ED411BA0);
    oslog = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, oslog, v10, "Cannot set an unknown alternative endpoint without a protocol", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    v14 = a2;
    if (a2)
    {
      swift_unknownObjectRetain_n();
      v6 = nw_protocol_copy_quic_connection_definition();
      is_equal = nw_protocol_definition_is_equal(a2, v6);
      swift_unknownObjectRelease();
      if (is_equal)
      {
        v8 = nw_protocol_copy_quic_definition();
        swift_unknownObjectRelease_n();
        v14 = v8;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v12 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_lock);
    os_unfair_lock_lock(v12 + 4);
    sub_181B403B4(v2, a1, &v14);
    os_unfair_lock_unlock(v12 + 4);

    swift_unknownObjectRelease();
  }
}

uint64_t QUICConnectionProtocol.QUICConnectionOptions.deepCopy()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v62[-v3];
  v5 = swift_allocObject();
  sub_181AACB6C();
  *(v5 + 112) = *(v1 + 112);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v5 + 16) = *(v1 + 16);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout);
  *(v5 + 24) = *(v1 + 24);
  *(v5 + 40) = *(v1 + 40);
  *(v5 + 56) = *(v1 + 56);
  *(v5 + 72) = *(v1 + 72);
  *(v5 + 88) = *(v1 + 88);
  *(v5 + 104) = *(v1 + 104);
  v6 = *(v1 + 128);
  v7 = *(v5 + 128);
  *(v5 + 128) = v6;
  v8 = v6;

  v9 = *(v1 + 136);
  v10 = *(v5 + 136);
  *(v5 + 136) = v9;
  v11 = v9;

  v12 = *(v1 + 144);
  v13 = *(v5 + 144);
  *(v5 + 144) = v12;
  v14 = v12;

  v15 = *(v1 + 152);
  v16 = *(v5 + 152);
  *(v5 + 152) = v15;
  v17 = v15;

  v18 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_quicState;
  swift_beginAccess();
  sub_181B385A8(v1 + v18, v4);
  v19 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_quicState;
  swift_beginAccess();
  sub_181B38538(v4, v5 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_tlsState;
  swift_beginAccess();
  sub_181B385A8(v1 + v20, v4);
  v21 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_tlsState;
  swift_beginAccess();
  sub_181B38538(v4, v5 + v21);
  swift_endAccess();
  v22 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock);
  v23 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock) = v22;
  _Block_copy(v22);
  _Block_release(v23);
  v24 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateQueue);
  v25 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateQueue);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateQueue) = v24;
  v26 = v24;

  v27 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock);
  v28 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock) = v27;
  _Block_copy(v27);
  _Block_release(v28);
  v29 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateQueue);
  v30 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateQueue);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateQueue) = v29;
  v31 = v29;

  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex);
  v32 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  v33 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  v34 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  if (v33)
  {
    if (v34)
    {
      goto LABEL_7;
    }

    v34 |= 1uLL;
  }

  else
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_7;
    }

    v34 &= ~1uLL;
  }

  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v34;
LABEL_7:
  if ((v33 & 2) != 0)
  {
    if ((v34 & 2) != 0)
    {
      goto LABEL_13;
    }

    v34 |= 2uLL;
  }

  else
  {
    if ((v34 & 2) == 0)
    {
      goto LABEL_13;
    }

    v34 &= ~2uLL;
  }

  *(v5 + v32) = v34;
LABEL_13:
  if ((v33 & 4) != 0)
  {
    if ((v34 & 4) != 0)
    {
      goto LABEL_19;
    }

    v35 = v34 | 4;
  }

  else
  {
    if ((v34 & 4) == 0)
    {
      goto LABEL_19;
    }

    v35 = v34 & 0xFFFFFFFFFFFFFFFBLL;
  }

  *(v5 + v32) = v35;
LABEL_19:
  v36 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock);
  v37 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock) = v36;
  _Block_copy(v36);
  _Block_release(v37);
  v38 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue);
  v39 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue) = v38;
  v40 = v38;

  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval);
  v41 = *(v1 + v32);
  v42 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  v43 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  if ((v41 & 0x8000) != 0)
  {
    if ((v43 & 0x8000) != 0)
    {
      goto LABEL_25;
    }

    v43 |= 0x8000uLL;
  }

  else
  {
    if ((v43 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    v43 &= ~0x8000uLL;
  }

  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v43;
LABEL_25:
  if ((v41 & 0x10000) != 0)
  {
    if ((v43 & 0x10000) != 0)
    {
      goto LABEL_31;
    }

    v43 |= 0x10000uLL;
  }

  else
  {
    if ((v43 & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    v43 &= ~0x10000uLL;
  }

  *(v5 + v42) = v43;
LABEL_31:
  if ((v41 & 8) != 0)
  {
    if ((v43 & 8) != 0)
    {
      goto LABEL_37;
    }

    v43 |= 8uLL;
  }

  else
  {
    if ((v43 & 8) == 0)
    {
      goto LABEL_37;
    }

    v43 &= ~8uLL;
  }

  *(v5 + v42) = v43;
LABEL_37:
  if ((v41 & 0x20) != 0)
  {
    if ((v43 & 0x20) != 0)
    {
      goto LABEL_43;
    }

    v43 |= 0x20uLL;
  }

  else
  {
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    v43 &= ~0x20uLL;
  }

  *(v5 + v42) = v43;
LABEL_43:
  if ((v41 & 0x40) != 0)
  {
    if ((v43 & 0x40) != 0)
    {
      goto LABEL_49;
    }

    v43 |= 0x40uLL;
  }

  else
  {
    if ((v43 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    v43 &= ~0x40uLL;
  }

  *(v5 + v42) = v43;
LABEL_49:
  if ((v41 & 0x80) != 0)
  {
    if ((v43 & 0x80) != 0)
    {
      goto LABEL_55;
    }

    v43 |= 0x80uLL;
  }

  else
  {
    if ((v43 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    v43 &= ~0x80uLL;
  }

  *(v5 + v42) = v43;
LABEL_55:
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize);
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount);
  if ((v41 & 0x10) != 0)
  {
    if ((v43 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    v44 = v43 | 0x10;
  }

  else
  {
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_61;
    }

    v44 = v43 & 0xFFFFFFFFFFFFFFEFLL;
  }

  *(v5 + v42) = v44;
LABEL_61:
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__ackDelaySize) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__ackDelaySize);
  v45 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
  swift_beginAccess();
  sub_181B385A8(v1 + v45, v4);
  v46 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
  swift_beginAccess();
  sub_181B38538(v4, v5 + v46);
  swift_endAccess();
  v47 = *(v1 + v32);
  v48 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  v49 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  if ((v47 & 0x100) != 0)
  {
    if ((v49 & 0x100) != 0)
    {
      goto LABEL_67;
    }

    v49 |= 0x100uLL;
  }

  else
  {
    if ((v49 & 0x100) == 0)
    {
      goto LABEL_67;
    }

    v49 &= ~0x100uLL;
  }

  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v49;
LABEL_67:
  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S);
  v51 = v49 & 0x800;
  v50 = v51 == 0;
  v52 = v49 & 0xFFFFFFFFFFFFFDFFLL | (((v47 >> 9) & 1) << 9);
  v53 = v52 | v51 ^ 0x800;
  if (!v50)
  {
    v52 &= 0xFFFFFFFFFFFFE7FFLL;
  }

  if ((v47 & 0x800) != 0)
  {
    v52 = v53;
  }

  v54 = v52 & 0x400;
  v55 = v52 & 0xFFFFFFFFFFFFEFFFLL | (((v47 >> 12) & 1) << 12);
  v56 = v55 | v54 ^ 0x400;
  if (v54)
  {
    v55 &= 0xFFFFFFFFFFFFBBFFLL;
  }

  if ((v47 & 0x400) != 0)
  {
    v55 = v56;
  }

  *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode) = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode);
  v57 = v55 & 0x20000;
  v50 = (v55 & 0x20000) == 0;
  v58 = v55 & 0xFFFFFFFFFFFFBFFFLL | (((v47 >> 14) & 1) << 14);
  v59 = v58 | v57 ^ 0x20000;
  if (!v50)
  {
    v58 &= ~0x20000uLL;
  }

  if ((v47 & 0x20000) != 0)
  {
    v58 = v59;
  }

  if ((v47 & 0x40000) != 0)
  {
    if ((v58 & 0x40000) == 0)
    {
      v60 = v58 | 0x40000;
      goto LABEL_84;
    }
  }

  else if ((v58 & 0x40000) != 0)
  {
    v60 = v58 & 0xFFFFFFFFFFFBFFFFLL;
LABEL_84:
    *(v5 + v48) = v60;
  }

  *(v5 + v48) = v47;
  return v5;
}

uint64_t sub_181B38538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_181B385A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0, &unk_182AF9540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __nw_connection_start_block_invoke_19(uint64_t a1)
{
  result = mach_continuous_time();
  if (result <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *(*(a1 + 32) + 72) = v3;
  *(*(a1 + 32) + 504) = 1;
  return result;
}

_BYTE *_nw_parameters_get_effective_bundle_id_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 328);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 320);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage + 16] & 1) == 0)
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
    v3 = *(v1 + 328);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

void nw_connection_set_state_on_nw_queue(NWConcrete_nw_connection *a1, unsigned int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_context_assert_queue(v3->context);
    state = v4->state;
    if (state != a2 && state != 5)
    {
      v4->state = a2;
      if (a2 == 4)
      {
        v7 = v4;
        nw_context_assert_queue(v4->context);
        data_transfer_reports = v7->data_transfer_reports;
        if (data_transfer_reports)
        {
          v9 = _nw_array_copy(data_transfer_reports);
          v10 = v9;
          if (v9)
          {
            _nw_array_apply(v9, &__block_literal_global_241);
          }
        }
      }

      v11 = v4;
      nw_context_assert_queue(v4->context);
      nw_connection_report_state_with_handler_on_nw_queue(v11, a2, v11[26], v11[25]);
    }

    goto LABEL_13;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_connection_set_state_on_nw_queue";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_set_state_on_nw_queue";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_connection_set_state_on_nw_queue";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_connection_set_state_on_nw_queue";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_connection_set_state_on_nw_queue";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v13)
  {
    free(v13);
  }

LABEL_13:
}

nw_protocol_definition_t nw_protocol_copy_quic_definition(void)
{
  if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
  }

  v1 = nw_protocol_copy_quic_stream_definition_quic_definition;

  return v1;
}

void __nw_connection_start_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!nw_parameters_get_logging_disabled(*(*(a1 + 32) + 16)))
  {
    v2 = _nw_parameters_copy_extended_description(*(*(a1 + 32) + 16));
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v3 = gconnectionLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 448);
      v6 = *(v4 + 8);
      v7 = v6;
      if (v6)
      {
        logging_description = _nw_endpoint_get_logging_description(v6);
      }

      else
      {
        logging_description = "<NULL>";
      }

      *buf = 67110146;
      *&buf[4] = v5;
      *&buf[8] = 1042;
      *&buf[10] = 16;
      *&buf[14] = 2098;
      *&buf[16] = v4 + 452;
      *&buf[24] = 2082;
      *&buf[26] = logging_description;
      *&buf[34] = 2082;
      *&buf[36] = v2;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "[C%u %{public,uuid_t}.16P %{public}s %{public}s] start", buf, 0x2Cu);
    }

    if (v2)
    {
      free(v2);
    }
  }

  v9 = *(a1 + 32);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __nw_connection_start_block_invoke_18;
  v49[3] = &unk_1E6A3D868;
  v50 = v9;
  os_unfair_lock_lock(v9 + 34);
  __nw_connection_start_block_invoke_18(v49);
  os_unfair_lock_unlock(v9 + 34);
  v10 = *(a1 + 32);
  if (*(v10 + 72))
  {
    v11 = *(v10 + 80);
    v12 = v10;
    nw_context_assert_queue(v12[3].isa);
    nw_connection_report_state_with_handler_on_nw_queue(v12, v11, v12[26].isa, v12[25].isa);
    goto LABEL_45;
  }

  if (*(v10 + 144))
  {
    if (*(v10 + 200))
    {
LABEL_17:
      objc_storeStrong((v10 + 48), v10);
      v13 = *(a1 + 32);
      v14 = *(v13 + 80);
      *(v13 + 192) = *(a1 + 40);
      v15 = *(a1 + 32);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __nw_connection_start_block_invoke_19;
      v47[3] = &unk_1E6A3D868;
      v48 = v15;
      os_unfair_lock_lock(v15 + 34);
      __nw_connection_start_block_invoke_19(v47);
      os_unfair_lock_unlock(v15 + 34);
      if (nw_parameters_get_attribution(*(*(a1 + 32) + 16)) != nw_parameters_attribution_developer || !ne_tracker_should_save_stacktrace())
      {
        goto LABEL_23;
      }

      v16 = *(*(a1 + 32) + 16);
      if (v16)
      {
        if ((_nw_parameters_get_skip_stack_trace_capture(v16) & 1) == 0)
        {
LABEL_21:
          *buf = 0;
          v17 = ne_tracker_copy_current_stacktrace();
          if (v17)
          {
            v18 = dispatch_data_create(v17, *buf, 0, *MEMORY[0x1E69E9648]);
            v19 = *(a1 + 32);
            v20 = *(v19 + 88);
            *(v19 + 88) = v18;
          }
        }

LABEL_23:
        int64_with_default = networkd_settings_get_int64_with_default(nw_setting_statistics_report_numerator, 1);
        v22 = networkd_settings_get_int64_with_default(nw_setting_statistics_report_denominator, 200000);
        if (arc4random_uniform(v22) < int64_with_default)
        {
          v23 = *(*(a1 + 32) + 16);
          if (v23 && !_nw_parameters_get_logging_disabled(v23))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              *&buf[4] = "nw_connection_start_block_invoke_2";
              *&buf[12] = 1024;
              *&buf[14] = v25;
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] selected for reporting", buf, 0x12u);
            }
          }

          *(*(a1 + 32) + 108) |= 4u;
        }

        if (v14 >= 1)
        {
          v26 = *(a1 + 32);
          v27 = v26[20];
          v28 = v26;
          nw_context_assert_queue(v28[3]);
          nw_connection_report_state_with_handler_on_nw_queue(v28, v27, v28[26], v28[25]);
        }

        nw_endpoint_handler_start(*(*(a1 + 32) + 144));
        v12 = v48;
        goto LABEL_45;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_parameters_get_skip_stack_trace_capture";
      v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null parameters", buf, 12);

      v40 = v14;
      type = OS_LOG_TYPE_ERROR;
      v51 = 0;
      if (__nwlog_fault(v39, &type, &v51))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v41 = __nwlog_obj();
          v42 = type;
          if (os_log_type_enabled(v41, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_get_skip_stack_trace_capture";
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null parameters", buf, 0xCu);
          }
        }

        else if (v51 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v41 = __nwlog_obj();
          v44 = type;
          v45 = os_log_type_enabled(v41, type);
          if (backtrace_string)
          {
            if (v45)
            {
              *buf = 136446466;
              *&buf[4] = "nw_parameters_get_skip_stack_trace_capture";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v45)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_get_skip_stack_trace_capture";
            _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v41 = __nwlog_obj();
          v46 = type;
          if (os_log_type_enabled(v41, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_get_skip_stack_trace_capture";
            _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v39)
      {
        free(v39);
      }

      v14 = v40;
      goto LABEL_21;
    }

    if (nw_context_is_inline(*(v10 + 24)))
    {
      v10 = *(a1 + 32);
      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    *buf = 136446210;
    *&buf[4] = "nw_connection_start_block_invoke";
    v35 = "%{public}s Cannot start nw_connection without first setting the queue.";
    v36 = v12;
    v37 = 12;
LABEL_44:
    _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
    goto LABEL_45;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v12 = gconnectionLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 32);
    v30 = *(v29 + 448);
    v32 = *(v29 + 8);
    v31 = *(v29 + 16);
    v33 = *(v29 + 80);
    if (v33 > 5)
    {
      v34 = "unknown";
    }

    else
    {
      v34 = off_1E6A2F020[v33];
    }

    *buf = 67109890;
    *&buf[4] = v30;
    *&buf[8] = 2112;
    *&buf[10] = v32;
    *&buf[18] = 2112;
    *&buf[20] = v31;
    *&buf[28] = 2082;
    *&buf[30] = v34;
    v35 = "[C%u %@ %@] cannot start after being torn down, in state %{public}s";
    v36 = v12;
    v37 = 38;
    goto LABEL_44;
  }

LABEL_45:
}

id nw_context_copy_registered_endpoint_internal(void *a1, void *a2, int a3)
{
  v147 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = v5;
      v9 = v8;
      v137 = v7;
      if ((*(v8 + 152) & 8) == 0)
      {
        dispatch_assert_queue_V2(*(v8 + 1));
      }

      if (a3)
      {
        v10 = nw_context_copy_globals_context(v9);
      }

      else
      {
        v10 = nw_context_copy_cache_context(v9);
      }

      v11 = v10;

      v12 = v7;
      v13 = _nw_endpoint_get_type(v12);

      v14 = 48;
      if (v13 == 2)
      {
        v14 = 40;
      }

      if (v13 == 1)
      {
        v14 = 32;
      }

      v15 = *(v11[3] + v14);
      if (v15)
      {
        v16 = v11;
        v17 = v16;
        if ((v16[152] & 7) != 0)
        {
          if (*(v11[3] + 56))
          {
            goto LABEL_27;
          }

          *v140 = MEMORY[0x1E69E9820];
          *&v140[8] = 3221225472;
          *&v140[16] = ___ZL28nw_context_start_purge_timerP21NWConcrete_nw_context_block_invoke;
          v141 = &unk_1E6A3D868;
          v18 = v16;
          v142[0] = v18;
          source = nw_queue_context_create_source(v18, 2, 3, 0, v140, 0);
          *(v11[3] + 56) = source;
          if (source)
          {
            v20 = v18[14];
            if (!v20)
            {
              v20 = 1000 * networkd_settings_get_int64_with_default(nw_setting_context_purge_delay, 30);
              source = *(v11[3] + 56);
            }

            v21 = 1000000 * v20;
            v22 = dispatch_time(0x8000000000000000, 1000000 * v20);
            nw_queue_set_timer_values(source, v22, v21, v21);
            nw_queue_activate_source(*(v11[3] + 56));
            goto LABEL_26;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          *buf = 136446210;
          v144 = "nw_context_start_purge_timer";
          v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s nw_queue_context_create_source failed", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v138 = 0;
          if (__nwlog_fault(v24, &type, &v138))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v25 = gLogObj;
              v26 = type;
              if (os_log_type_enabled(v25, type))
              {
                *buf = 136446210;
                v144 = "nw_context_start_purge_timer";
                _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_queue_context_create_source failed", buf, 0xCu);
              }
            }

            else if (v138 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              if (backtrace_string)
              {
                v56 = backtrace_string;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v57 = gLogObj;
                v58 = type;
                if (os_log_type_enabled(v57, type))
                {
                  *buf = 136446466;
                  v144 = "nw_context_start_purge_timer";
                  v145 = 2082;
                  v146 = v56;
                  _os_log_impl(&dword_181A37000, v57, v58, "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v56);
                if (!v24)
                {
                  goto LABEL_26;
                }

                goto LABEL_25;
              }

              v25 = __nwlog_obj();
              v78 = type;
              if (os_log_type_enabled(v25, type))
              {
                *buf = 136446210;
                v144 = "nw_context_start_purge_timer";
                _os_log_impl(&dword_181A37000, v25, v78, "%{public}s nw_queue_context_create_source failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v25 = gLogObj;
              v73 = type;
              if (os_log_type_enabled(v25, type))
              {
                *buf = 136446210;
                v144 = "nw_context_start_purge_timer";
                _os_log_impl(&dword_181A37000, v25, v73, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

          if (!v24)
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_25:
          free(v24);
          goto LABEL_26;
        }

        v122 = __nwlog_obj();
        *v140 = 136446210;
        *&v140[4] = "nw_context_start_purge_timer";
        v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v122, 16, "%{public}s called with null (context->is_implicit || nw_context_get_isolate_protocol_cache(context))", v140, 12);

        buf[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v123, buf, &type))
        {
          if (buf[0] == 17)
          {
            v124 = __nwlog_obj();
            v125 = buf[0];
            if (os_log_type_enabled(v124, buf[0]))
            {
              *v140 = 136446210;
              *&v140[4] = "nw_context_start_purge_timer";
              _os_log_impl(&dword_181A37000, v124, v125, "%{public}s called with null (context->is_implicit || nw_context_get_isolate_protocol_cache(context))", v140, 0xCu);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            v132 = __nw_create_backtrace_string();
            v124 = __nwlog_obj();
            v133 = buf[0];
            v134 = os_log_type_enabled(v124, buf[0]);
            if (v132)
            {
              if (v134)
              {
                *v140 = 136446466;
                *&v140[4] = "nw_context_start_purge_timer";
                *&v140[12] = 2082;
                *&v140[14] = v132;
                _os_log_impl(&dword_181A37000, v124, v133, "%{public}s called with null (context->is_implicit || nw_context_get_isolate_protocol_cache(context)), dumping backtrace:%{public}s", v140, 0x16u);
              }

              free(v132);
              goto LABEL_201;
            }

            if (v134)
            {
              *v140 = 136446210;
              *&v140[4] = "nw_context_start_purge_timer";
              _os_log_impl(&dword_181A37000, v124, v133, "%{public}s called with null (context->is_implicit || nw_context_get_isolate_protocol_cache(context)), no backtrace", v140, 0xCu);
            }
          }

          else
          {
            v124 = __nwlog_obj();
            v135 = buf[0];
            if (os_log_type_enabled(v124, buf[0]))
            {
              *v140 = 136446210;
              *&v140[4] = "nw_context_start_purge_timer";
              _os_log_impl(&dword_181A37000, v124, v135, "%{public}s called with null (context->is_implicit || nw_context_get_isolate_protocol_cache(context)), backtrace limit exceeded", v140, 0xCu);
            }
          }
        }

LABEL_201:
        if (v123)
        {
          free(v123);
        }

LABEL_27:

        node = nw_hash_table_get_node(v15, v12, 0);
        if (node)
        {
          v28 = node[2];
          v29 = nw_hash_table_get_node(v28, v12, 0);
          if (v29)
          {
            v30 = v29[2];

LABEL_125:
            v101 = v137;
            goto LABEL_126;
          }

          buf[0] = 0;
          v38 = v12;
          v39 = _nw_endpoint_copy(v38);

          nw_endpoint_set_context(v39, v17);
          nw_endpoint_set_is_registered(v39);
          v30 = v39;
          nw_hash_table_add_object(v28, v30, buf);
          if ((buf[0] & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v40 = gLogObj;
            v41 = v30;
            v42 = v41;
            if (v41)
            {
              logging_description = _nw_endpoint_get_logging_description(v41);
            }

            else
            {
              logging_description = "<NULL>";
            }

            *v140 = 136446722;
            *&v140[4] = "nw_context_copy_registered_endpoint_internal";
            *&v140[12] = 2114;
            *&v140[14] = v17;
            *&v140[22] = 2082;
            v141 = logging_description;
            LODWORD(v136) = 32;
            v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s %{public}@ failed to add endpoint %{public}s", v140, v136);

            type = OS_LOG_TYPE_ERROR;
            v138 = 0;
            if (__nwlog_fault(v63, &type, &v138))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v64 = gLogObj;
                v65 = type;
                if (os_log_type_enabled(v64, type))
                {
                  v66 = v42;
                  v67 = v66;
                  if (v42)
                  {
                    v68 = _nw_endpoint_get_logging_description(v66);
                  }

                  else
                  {
                    v68 = "<NULL>";
                  }

                  *v140 = 136446722;
                  *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                  *&v140[12] = 2114;
                  *&v140[14] = v17;
                  *&v140[22] = 2082;
                  v141 = v68;
                  _os_log_impl(&dword_181A37000, v64, v65, "%{public}s %{public}@ failed to add endpoint %{public}s", v140, 0x20u);
                }
              }

              else if (v138 == 1)
              {
                v69 = __nw_create_backtrace_string();
                v64 = __nwlog_obj();
                v70 = type;
                v71 = os_log_type_enabled(v64, type);
                if (v69)
                {
                  if (v71)
                  {
                    v72 = nw_endpoint_get_logging_description(v42);
                    *v140 = 136446978;
                    *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                    *&v140[12] = 2114;
                    *&v140[14] = v17;
                    *&v140[22] = 2082;
                    v141 = v72;
                    LOWORD(v142[0]) = 2082;
                    *(v142 + 2) = v69;
                    _os_log_impl(&dword_181A37000, v64, v70, "%{public}s %{public}@ failed to add endpoint %{public}s, dumping backtrace:%{public}s", v140, 0x2Au);
                  }

                  free(v69);
                  goto LABEL_85;
                }

                if (v71)
                {
                  v79 = nw_endpoint_get_logging_description(v42);
                  *v140 = 136446722;
                  *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                  *&v140[12] = 2114;
                  *&v140[14] = v17;
                  *&v140[22] = 2082;
                  v141 = v79;
                  _os_log_impl(&dword_181A37000, v64, v70, "%{public}s %{public}@ failed to add endpoint %{public}s, no backtrace", v140, 0x20u);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v64 = gLogObj;
                v74 = type;
                if (os_log_type_enabled(v64, type))
                {
                  v75 = nw_endpoint_get_logging_description(v42);
                  *v140 = 136446722;
                  *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                  *&v140[12] = 2114;
                  *&v140[14] = v17;
                  *&v140[22] = 2082;
                  v141 = v75;
                  _os_log_impl(&dword_181A37000, v64, v74, "%{public}s %{public}@ failed to add endpoint %{public}s, backtrace limit exceeded", v140, 0x20u);
                }
              }
            }

LABEL_85:
            if (v63)
            {
              free(v63);
            }
          }

LABEL_124:

          goto LABEL_125;
        }

        internal = nw_hash_table_create_internal(0x11u, 0, nw_context_object_get_key, nw_context_endpoint_key_hash, nw_context_endpoint_matches_key, nw_context_object_release, 0);
        v32 = v12;
        v33 = _nw_endpoint_copy(v32);

        nw_endpoint_set_context(v33, v17);
        nw_endpoint_set_is_registered(v33);
        buf[0] = 0;
        v30 = v33;
        nw_hash_table_add_object(internal, v30, buf);
        if (buf[0])
        {
LABEL_96:
          nw_hash_table_add_object(v15, internal, buf);
          if (buf[0])
          {
            goto LABEL_124;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v80 = gLogObj;
          v81 = v30;
          v82 = v81;
          if (v81)
          {
            v83 = _nw_endpoint_get_logging_description(v81);
          }

          else
          {
            v83 = "<NULL>";
          }

          *v140 = 136446722;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          *&v140[12] = 2114;
          *&v140[14] = v17;
          *&v140[22] = 2082;
          v141 = v83;
          LODWORD(v136) = 32;
          v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s %{public}@ failed to add hash table for endpoint %{public}s", v140, v136);

          type = OS_LOG_TYPE_ERROR;
          v138 = 0;
          if (__nwlog_fault(v84, &type, &v138))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v85 = gLogObj;
              v86 = type;
              if (os_log_type_enabled(v85, type))
              {
                v87 = v82;
                v88 = v87;
                if (v82)
                {
                  v89 = _nw_endpoint_get_logging_description(v87);
                }

                else
                {
                  v89 = "<NULL>";
                }

                *v140 = 136446722;
                *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                *&v140[12] = 2114;
                *&v140[14] = v17;
                *&v140[22] = 2082;
                v141 = v89;
                _os_log_impl(&dword_181A37000, v85, v86, "%{public}s %{public}@ failed to add hash table for endpoint %{public}s", v140, 0x20u);
              }
            }

            else if (v138 == 1)
            {
              v90 = __nw_create_backtrace_string();
              if (v90)
              {
                v91 = v90;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v92 = gLogObj;
                v93 = type;
                if (os_log_type_enabled(v92, type))
                {
                  v94 = nw_endpoint_get_logging_description(v82);
                  *v140 = 136446978;
                  *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                  *&v140[12] = 2114;
                  *&v140[14] = v17;
                  *&v140[22] = 2082;
                  v141 = v94;
                  LOWORD(v142[0]) = 2082;
                  *(v142 + 2) = v91;
                  _os_log_impl(&dword_181A37000, v92, v93, "%{public}s %{public}@ failed to add hash table for endpoint %{public}s, dumping backtrace:%{public}s", v140, 0x2Au);
                }

                free(v91);
                goto LABEL_122;
              }

              v85 = __nwlog_obj();
              v99 = type;
              if (os_log_type_enabled(v85, type))
              {
                v100 = nw_endpoint_get_logging_description(v82);
                *v140 = 136446722;
                *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                *&v140[12] = 2114;
                *&v140[14] = v17;
                *&v140[22] = 2082;
                v141 = v100;
                _os_log_impl(&dword_181A37000, v85, v99, "%{public}s %{public}@ failed to add hash table for endpoint %{public}s, no backtrace", v140, 0x20u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v85 = gLogObj;
              v95 = type;
              if (os_log_type_enabled(v85, type))
              {
                v96 = v82;
                v97 = v96;
                if (v82)
                {
                  v98 = _nw_endpoint_get_logging_description(v96);
                }

                else
                {
                  v98 = "<NULL>";
                }

                *v140 = 136446722;
                *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                *&v140[12] = 2114;
                *&v140[14] = v17;
                *&v140[22] = 2082;
                v141 = v98;
                _os_log_impl(&dword_181A37000, v85, v95, "%{public}s %{public}@ failed to add hash table for endpoint %{public}s, backtrace limit exceeded", v140, 0x20u);
              }
            }
          }

LABEL_122:
          if (v84)
          {
            free(v84);
          }

          goto LABEL_124;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = v30;
        v36 = v35;
        if (v35)
        {
          v37 = _nw_endpoint_get_logging_description(v35);
        }

        else
        {
          v37 = "<NULL>";
        }

        *v140 = 136446722;
        *&v140[4] = "nw_context_copy_registered_endpoint_internal";
        *&v140[12] = 2114;
        *&v140[14] = v17;
        *&v140[22] = 2082;
        v141 = v37;
        LODWORD(v136) = 32;
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s %{public}@ failed to add endpoint %{public}s", v140, v136);

        type = OS_LOG_TYPE_ERROR;
        v138 = 0;
        if (__nwlog_fault(v44, &type, &v138))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v46 = type;
            if (os_log_type_enabled(v45, type))
            {
              v47 = v36;
              v48 = v47;
              if (v36)
              {
                v49 = _nw_endpoint_get_logging_description(v47);
              }

              else
              {
                v49 = "<NULL>";
              }

              *v140 = 136446722;
              *&v140[4] = "nw_context_copy_registered_endpoint_internal";
              *&v140[12] = 2114;
              *&v140[14] = v17;
              *&v140[22] = 2082;
              v141 = v49;
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s %{public}@ failed to add endpoint %{public}s", v140, 0x20u);
            }
          }

          else if (v138 == 1)
          {
            v50 = __nw_create_backtrace_string();
            if (v50)
            {
              v51 = v50;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              v53 = type;
              if (os_log_type_enabled(v52, type))
              {
                v54 = nw_endpoint_get_logging_description(v36);
                *v140 = 136446978;
                *&v140[4] = "nw_context_copy_registered_endpoint_internal";
                *&v140[12] = 2114;
                *&v140[14] = v17;
                *&v140[22] = 2082;
                v141 = v54;
                LOWORD(v142[0]) = 2082;
                *(v142 + 2) = v51;
                _os_log_impl(&dword_181A37000, v52, v53, "%{public}s %{public}@ failed to add endpoint %{public}s, dumping backtrace:%{public}s", v140, 0x2Au);
              }

              free(v51);
              goto LABEL_94;
            }

            v45 = __nwlog_obj();
            v76 = type;
            if (os_log_type_enabled(v45, type))
            {
              v77 = nw_endpoint_get_logging_description(v36);
              *v140 = 136446722;
              *&v140[4] = "nw_context_copy_registered_endpoint_internal";
              *&v140[12] = 2114;
              *&v140[14] = v17;
              *&v140[22] = 2082;
              v141 = v77;
              _os_log_impl(&dword_181A37000, v45, v76, "%{public}s %{public}@ failed to add endpoint %{public}s, no backtrace", v140, 0x20u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v59 = type;
            if (os_log_type_enabled(v45, type))
            {
              v60 = v36;
              v61 = v60;
              if (v36)
              {
                v62 = _nw_endpoint_get_logging_description(v60);
              }

              else
              {
                v62 = "<NULL>";
              }

              *v140 = 136446722;
              *&v140[4] = "nw_context_copy_registered_endpoint_internal";
              *&v140[12] = 2114;
              *&v140[14] = v17;
              *&v140[22] = 2082;
              v141 = v62;
              _os_log_impl(&dword_181A37000, v45, v59, "%{public}s %{public}@ failed to add endpoint %{public}s, backtrace limit exceeded", v140, 0x20u);
            }
          }
        }

LABEL_94:
        if (v44)
        {
          free(v44);
        }

        goto LABEL_96;
      }

      v107 = v7;
      v112 = __nwlog_obj();
      *v140 = 136446210;
      *&v140[4] = "nw_context_copy_registered_endpoint_internal";
      v113 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s called with null hash_table", v140, 12);

      buf[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v113, buf, &type))
      {
        goto LABEL_194;
      }

      if (buf[0] == 17)
      {
        v114 = __nwlog_obj();
        v115 = buf[0];
        if (os_log_type_enabled(v114, buf[0]))
        {
          *v140 = 136446210;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          _os_log_impl(&dword_181A37000, v114, v115, "%{public}s called with null hash_table", v140, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v126 = __nw_create_backtrace_string();
        v114 = __nwlog_obj();
        v127 = buf[0];
        v128 = os_log_type_enabled(v114, buf[0]);
        if (v126)
        {
          if (v128)
          {
            *v140 = 136446466;
            *&v140[4] = "nw_context_copy_registered_endpoint_internal";
            *&v140[12] = 2082;
            *&v140[14] = v126;
            _os_log_impl(&dword_181A37000, v114, v127, "%{public}s called with null hash_table, dumping backtrace:%{public}s", v140, 0x16u);
          }

          free(v126);
          goto LABEL_194;
        }

        if (v128)
        {
          *v140 = 136446210;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          _os_log_impl(&dword_181A37000, v114, v127, "%{public}s called with null hash_table, no backtrace", v140, 0xCu);
        }
      }

      else
      {
        v114 = __nwlog_obj();
        v131 = buf[0];
        if (os_log_type_enabled(v114, buf[0]))
        {
          *v140 = 136446210;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          _os_log_impl(&dword_181A37000, v114, v131, "%{public}s called with null hash_table, backtrace limit exceeded", v140, 0xCu);
        }
      }

LABEL_194:
      if (v113)
      {
        free(v113);
      }

LABEL_197:
      v30 = 0;
      v101 = v107;
      goto LABEL_126;
    }

    v107 = 0;
    v108 = __nwlog_obj();
    *v140 = 136446210;
    *&v140[4] = "nw_context_copy_registered_endpoint_internal";
    v109 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s called with null endpoint", v140, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v109, buf, &type))
    {
      if (buf[0] == 17)
      {
        v110 = __nwlog_obj();
        v111 = buf[0];
        if (os_log_type_enabled(v110, buf[0]))
        {
          *v140 = 136446210;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null endpoint", v140, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v119 = __nw_create_backtrace_string();
        v110 = __nwlog_obj();
        v120 = buf[0];
        v121 = os_log_type_enabled(v110, buf[0]);
        if (v119)
        {
          if (v121)
          {
            *v140 = 136446466;
            *&v140[4] = "nw_context_copy_registered_endpoint_internal";
            *&v140[12] = 2082;
            *&v140[14] = v119;
            _os_log_impl(&dword_181A37000, v110, v120, "%{public}s called with null endpoint, dumping backtrace:%{public}s", v140, 0x16u);
          }

          free(v119);
          goto LABEL_188;
        }

        if (v121)
        {
          *v140 = 136446210;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          _os_log_impl(&dword_181A37000, v110, v120, "%{public}s called with null endpoint, no backtrace", v140, 0xCu);
        }
      }

      else
      {
        v110 = __nwlog_obj();
        v130 = buf[0];
        if (os_log_type_enabled(v110, buf[0]))
        {
          *v140 = 136446210;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          _os_log_impl(&dword_181A37000, v110, v130, "%{public}s called with null endpoint, backtrace limit exceeded", v140, 0xCu);
        }
      }
    }

LABEL_188:
    if (v109)
    {
      free(v109);
    }

    goto LABEL_197;
  }

  v101 = v6;
  v103 = __nwlog_obj();
  *v140 = 136446210;
  *&v140[4] = "nw_context_copy_registered_endpoint_internal";
  v104 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v103, 16, "%{public}s called with null context", v140, 12);

  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v104, buf, &type))
  {
    if (buf[0] == 17)
    {
      v105 = __nwlog_obj();
      v106 = buf[0];
      if (os_log_type_enabled(v105, buf[0]))
      {
        *v140 = 136446210;
        *&v140[4] = "nw_context_copy_registered_endpoint_internal";
        _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null context", v140, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v116 = __nw_create_backtrace_string();
      v105 = __nwlog_obj();
      v117 = buf[0];
      v118 = os_log_type_enabled(v105, buf[0]);
      if (v116)
      {
        if (v118)
        {
          *v140 = 136446466;
          *&v140[4] = "nw_context_copy_registered_endpoint_internal";
          *&v140[12] = 2082;
          *&v140[14] = v116;
          _os_log_impl(&dword_181A37000, v105, v117, "%{public}s called with null context, dumping backtrace:%{public}s", v140, 0x16u);
        }

        free(v116);
        goto LABEL_182;
      }

      if (v118)
      {
        *v140 = 136446210;
        *&v140[4] = "nw_context_copy_registered_endpoint_internal";
        _os_log_impl(&dword_181A37000, v105, v117, "%{public}s called with null context, no backtrace", v140, 0xCu);
      }
    }

    else
    {
      v105 = __nwlog_obj();
      v129 = buf[0];
      if (os_log_type_enabled(v105, buf[0]))
      {
        *v140 = 136446210;
        *&v140[4] = "nw_context_copy_registered_endpoint_internal";
        _os_log_impl(&dword_181A37000, v105, v129, "%{public}s called with null context, backtrace limit exceeded", v140, 0xCu);
      }
    }
  }

LABEL_182:
  if (v104)
  {
    free(v104);
  }

  v30 = 0;
LABEL_126:

  return v30;
}

uint64_t nw_endpoint_handler_get_next_top_id()
{
  v7 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(nw_endpoint_handler_get_next_top_id::s_last_top_level_id, 1u);
  result = add + 1;
  if (add == -1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446466;
      v4 = "nw_endpoint_handler_get_next_top_id";
      v5 = 1024;
      v6 = 0;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached %u endpoint top ids, wrapping", &v3, 0x12u);
    }

    return nw_endpoint_handler_get_next_top_id();
  }

  return result;
}

_BYTE *nw_parameters_get_effective_bundle_id(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_effective_bundle_id(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_effective_bundle_id";
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
        v12 = "nw_parameters_get_effective_bundle_id";
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
            v12 = "nw_parameters_get_effective_bundle_id";
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
        v12 = "nw_parameters_get_effective_bundle_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_effective_bundle_id";
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

uint64_t nw_endpoint_flow_should_not_use_path(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[34] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_flow_should_not_use_path";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null endpoint_flow", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_should_not_use_path";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint_flow", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_endpoint_flow_should_not_use_path";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_should_not_use_path";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_should_not_use_path";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void __nw_connection_set_queue_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x10) != 0)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      if (!_nw_parameters_get_logging_disabled(v3))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v4 = gconnectionLogObj;
        v5 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v28 = "nw_connection_set_queue_block_invoke";
        v29 = 1024;
        v30 = v5;
        v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s [C%u] Error in client: nw_connection_set_queue called after nw_connection_start", buf, 18);

        type = OS_LOG_TYPE_ERROR;
        v25 = 0;
        if (__nwlog_fault(v6, &type, &v25))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v7 = gconnectionLogObj;
            v8 = type;
            if (os_log_type_enabled(v7, type))
            {
              v9 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              v28 = "nw_connection_set_queue_block_invoke";
              v29 = 1024;
              v30 = v9;
              v10 = "%{public}s [C%u] Error in client: nw_connection_set_queue called after nw_connection_start";
LABEL_35:
              v22 = v7;
              v23 = v8;
LABEL_36:
              _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0x12u);
              goto LABEL_37;
            }

            goto LABEL_37;
          }

          if (v25 != 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v7 = gconnectionLogObj;
            v8 = type;
            if (os_log_type_enabled(v7, type))
            {
              v21 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              v28 = "nw_connection_set_queue_block_invoke";
              v29 = 1024;
              v30 = v21;
              v10 = "%{public}s [C%u] Error in client: nw_connection_set_queue called after nw_connection_start, backtrace limit exceeded";
              goto LABEL_35;
            }

LABEL_37:

            if (!v6)
            {
              goto LABEL_21;
            }

LABEL_20:
            free(v6);
            goto LABEL_21;
          }

          backtrace_string = __nw_create_backtrace_string();
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v7 = gconnectionLogObj;
          v12 = type;
          v13 = os_log_type_enabled(v7, type);
          if (!backtrace_string)
          {
            if (v13)
            {
              v24 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              v28 = "nw_connection_set_queue_block_invoke";
              v29 = 1024;
              v30 = v24;
              v10 = "%{public}s [C%u] Error in client: nw_connection_set_queue called after nw_connection_start, no backtrace";
              v22 = v7;
              v23 = v12;
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (v13)
          {
            v14 = *(*(a1 + 32) + 448);
            *buf = 136446722;
            v28 = "nw_connection_set_queue_block_invoke";
            v29 = 1024;
            v30 = v14;
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v12, "%{public}s [C%u] Error in client: nw_connection_set_queue called after nw_connection_start, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
        }

        if (!v6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (!nw_context_is_inline(*(*(a1 + 32) + 24)))
  {
    v19 = a1 + 32;
    v18 = *(a1 + 32);
    v20 = *(v19 + 8);
    v16 = *(v18 + 200);
    *(v18 + 200) = v20;
LABEL_29:

    return;
  }

  v15 = *(*(a1 + 32) + 16);
  if (v15 && !_nw_parameters_get_logging_disabled(v15))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v16 = gconnectionLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v28 = "nw_connection_set_queue_block_invoke";
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection client queue will be ignored for inline contexts", buf, 0x12u);
    }

    goto LABEL_29;
  }
}

void nw_connection_set_queue(nw_connection_t connection, dispatch_queue_t queue)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_set_queue";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_set_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_set_queue";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
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
        v26 = "nw_connection_set_queue";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_set_queue";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_set_queue_block_invoke;
    v20[3] = &unk_1E6A3D760;
    v21 = v3;
    v22 = v5;
    os_unfair_lock_lock(&v3[17]);
    __nw_connection_set_queue_block_invoke(v20);
    os_unfair_lock_unlock(&v3[17]);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_set_queue";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null queue", buf, 12);

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_set_queue";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null queue", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_set_queue";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_set_queue";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_set_queue";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_connection_set_state_changed_handler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 5)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 448);
        v9 = 136446466;
        v10 = "nw_connection_set_state_changed_handler_block_invoke";
        v11 = 1024;
        v12 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot set state changed handler after cancel", &v9, 0x12u);
      }
    }
  }

  else
  {
    v6 = _Block_copy(*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 208);
    *(v7 + 208) = v6;
  }
}

void nw_connection_start(nw_connection_t connection)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = connection;
  if (v1)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_247);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (_os_feature_enabled_impl() && !nw_parameters_get_logging_disabled(v1[2].isa))
    {
      v2 = _nw_parameters_copy_extended_description(v1[2].isa);
      backtrace_string = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        isa = v1[56].isa;
        v6 = v1[1].isa;
        v7 = v6;
        if (v6)
        {
          logging_description = _nw_endpoint_get_logging_description(v6);
        }

        else
        {
          logging_description = "<NULL>";
        }

        *buf = 67110402;
        *v24 = isa;
        *&v24[4] = 1042;
        *&v24[6] = 16;
        *v25 = 2098;
        *&v25[2] = v1 + 452;
        v26 = 2082;
        v27 = logging_description;
        v28 = 2082;
        v29 = v2;
        v30 = 2080;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "[C%u %{public,uuid_t}.16P %{public}s %{public}s] started by:\n%s", buf, 0x36u);
      }

      if (v2)
      {
        free(v2);
      }

      if (backtrace_string)
      {
        free(backtrace_string);
      }
    }

    v9 = qos_class_self();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_connection_start_block_invoke;
    v18[3] = &unk_1E6A3BD68;
    v19 = v1;
    v20 = v9;
    nw_connection_async_if_needed(v19, v18);

    goto LABEL_21;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *v24 = "nw_connection_start";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v11, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *v24 = "nw_connection_start";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          *v24 = "nw_connection_start";
          *&v24[8] = 2082;
          *v25 = v14;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446210;
        *v24 = "nw_connection_start";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *v24 = "nw_connection_start";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_38:
  if (v11)
  {
    free(v11);
  }

LABEL_21:
}

uint64_t __nw_proxy_options_set_authentication_challenge_handler_block_invoke(uint64_t a1, void **a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *a2;
  *a2 = v3;

  return 1;
}

void nw_parameters_add_proxy_options(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_add_proxy_options";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_add_proxy_options";
        v10 = "%{public}s called with null parameters";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_parameters_add_proxy_options";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_parameters_add_proxy_options";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_add_proxy_options";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_add_proxy_options(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_add_proxy_options";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null proxy_options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_add_proxy_options";
      v10 = "%{public}s called with null proxy_options";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_parameters_add_proxy_options";
      v10 = "%{public}s called with null proxy_options, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_parameters_add_proxy_options";
      v10 = "%{public}s called with null proxy_options, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_add_proxy_options";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null proxy_options, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

nw_connection_t nw_connection_create(nw_endpoint_t endpoint, nw_parameters_t parameters)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = endpoint;
  v4 = parameters;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_connection_create_with_id(v3, v4, 1, 0);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_connection_create";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_connection_create";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_connection_create";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v24 = "nw_connection_create";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_connection_create";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

uint64_t sub_181B3CD80(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8387A0, &qword_182AE4C28);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1820E5194(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8387A0, &qword_182AE4C28);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 25;
      }

      *(v9 + 16) = v11 >> 4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181EDDEE0(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8387A0, &qword_182AE4C28);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 25;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 4;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_181F4727C(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

void *sub_181B3CF2C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  v5 = result[2];
  v7 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (!v7)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *result);
      if (v6 < *result || (v6 -= *result, !v7))
      {
LABEL_9:
        v8 = (a2 + 16 * v6);
        *v8 = a3;
        v8[1] = a4;
        v7 = __OFADD__(v4, 1);
        v9 = v4 + 1;
        if (!v7)
        {
          result[1] = v9;
          return swift_unknownObjectRetain();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *result);
      v6 += *result;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

NWConcrete_nw_endpoint_handler *nw_endpoint_handler_create_inner(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unsigned __int8 *a7, int a8)
{
  v10 = a6;
  v102 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v87 = a4;
  v89 = a5;
  v90 = v16;
  v88 = v15;
  if (!v15)
  {
    v59 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_handler_create_inner";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null endpoint", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v60, type, &v94))
    {
      goto LABEL_111;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_110;
    }

    if (v94 != 1)
    {
      v61 = __nwlog_obj();
      v79 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v79, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_110;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v68 = type[0];
    v69 = os_log_type_enabled(v61, type[0]);
    if (!backtrace_string)
    {
      if (v69)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v68, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_110;
    }

    if (v69)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_endpoint_handler_create_inner";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      _os_log_impl(&dword_181A37000, v61, v68, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_76;
  }

  if (!v16)
  {
    v63 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_handler_create_inner";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s called with null parameters", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v60, type, &v94))
    {
      goto LABEL_111;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v64, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_110;
    }

    if (v94 != 1)
    {
      v61 = __nwlog_obj();
      v80 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v80, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_110;
    }

    backtrace_string = __nw_create_backtrace_string();
    v61 = __nwlog_obj();
    v70 = type[0];
    v71 = os_log_type_enabled(v61, type[0]);
    if (!backtrace_string)
    {
      if (v71)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v70, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_110;
    }

    if (v71)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_endpoint_handler_create_inner";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      _os_log_impl(&dword_181A37000, v61, v70, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_76:

    free(backtrace_string);
    if (!v60)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (!a3)
  {
    v65 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_handler_create_inner";
    v60 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null report_callback", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v60, type, &v94))
    {
      goto LABEL_111;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v66 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v66, "%{public}s called with null report_callback", buf, 0xCu);
      }
    }

    else if (v94 == 1)
    {
      v72 = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v73 = type[0];
      v74 = os_log_type_enabled(v61, type[0]);
      if (v72)
      {
        if (v74)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_endpoint_handler_create_inner";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v72;
          _os_log_impl(&dword_181A37000, v61, v73, "%{public}s called with null report_callback, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v72);
LABEL_111:
        if (!v60)
        {
LABEL_113:
          v35 = 0;
          goto LABEL_51;
        }

LABEL_112:
        free(v60);
        goto LABEL_113;
      }

      if (v74)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v73, "%{public}s called with null report_callback, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v61 = __nwlog_obj();
      v81 = type[0];
      if (os_log_type_enabled(v61, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v61, v81, "%{public}s called with null report_callback, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_110:

    goto LABEL_111;
  }

  v17 = v15;
  v18 = _nw_endpoint_get_type(v17);

  if (v18 == 1)
  {
    v19 = _nw_parameters_copy_local_endpoint(v16);
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = _nw_endpoint_get_type(v21);

      if (v22 == 1)
      {
        v23 = v17;
        address_family = _nw_endpoint_get_address_family(v23);

        v25 = v21;
        v26 = _nw_endpoint_get_address_family(v25);

        memset(buf, 0, sizeof(buf));
        v101 = 0;
        if (((address_family != v26) & nw_endpoint_fillout_v4v6_address(v25, buf)) == 1)
        {
          if (v26 != 2 || HIDWORD(buf[0]))
          {
            if (v26 == 30 && (vaddvq_s32(vbicq_s8(xmmword_182AE3CB0, vceqzq_s32(*&buf[1]))) & 0xF) == 0)
            {
              *type = 528;
              v96 = WORD1(buf[0]);
              v97 = 0;
              LODWORD(v98) = 0;
              address = _nw_endpoint_create_address(type);
              _nw_parameters_set_local_endpoint(v90, address);
            }
          }

          else
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *type = 7708;
            v96 = WORD1(buf[0]);
            v27 = _nw_endpoint_create_address(type);
            _nw_parameters_set_local_endpoint(v90, v27);
          }
        }
      }
    }
  }

  v29 = v17;
  v30 = _nw_endpoint_copy_public_keys(v29);

  if (v30)
  {
    v31 = v29;
    v32 = _nw_endpoint_copy(v31);

    nw_endpoint_set_public_keys(v32, 0);
    v33 = _nw_parameters_copy_default_protocol_stack();
    iterate_block[0] = MEMORY[0x1E69E9820];
    iterate_block[1] = 3221225472;
    iterate_block[2] = ___ZL32nw_endpoint_handler_create_innerPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS_PFbP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS_ESD_S5_jPhb_block_invoke;
    iterate_block[3] = &unk_1E6A30F28;
    v92 = v30;
    v93 = v90;
    nw_protocol_stack_iterate_application_protocols(v33, iterate_block);

    v29 = v32;
  }

  v34 = [[NWConcrete_nw_endpoint_handler alloc] initWithEndpoint:v29 parameters:v90 reportCallback:a3 context:v87 parent:v89 identifier:v10 connection_uuid:a7];
  v35 = v34;
  if (!v34)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_handler_create_inner";
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v47, type, &v94))
    {
      goto LABEL_48;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      v49 = type[0];
      if (os_log_type_enabled(v48, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v48, v49, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 0xCu);
      }
    }

    else
    {
      if (v94 == 1)
      {
        v53 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v54 = gLogObj;
        v55 = type[0];
        v56 = os_log_type_enabled(v54, type[0]);
        if (v53)
        {
          if (v56)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_endpoint_handler_create_inner";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v53;
            _os_log_impl(&dword_181A37000, v54, v55, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          if (!v47)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v56)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_endpoint_handler_create_inner";
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
        }

LABEL_48:
        if (!v47)
        {
          goto LABEL_50;
        }

LABEL_49:
        free(v47);
        goto LABEL_50;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      v57 = type[0];
      if (os_log_type_enabled(v48, type[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_endpoint_handler_create_inner";
        _os_log_impl(&dword_181A37000, v48, v57, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (a8)
  {
    *(v34 + 284) |= 1u;
  }

  if (!_nw_parameters_get_custom_protocols_only(v90))
  {
    if (v89 || (*(v35 + 284) & 1) != 0)
    {
      v35->mode = 0;
    }

    else
    {
      v35->mode = 2;
      v50 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
      *(v50 + 32) = *(v50 + 32) & 0xFC | 1;
      *v50->connection_uuid = *v35->connection_uuid;
      mode_handler = v35->mode_handler;
      v35->mode_handler = v50;
    }

    goto LABEL_35;
  }

  v35->mode = 2;
  parent_handler = v35->parent_handler;
  v37 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
  v38 = *(v37 + 32) & 0xFC;
  if (!parent_handler)
  {
    ++v38;
  }

  *(v37 + 32) = v38 | 2;
  *v37->connection_uuid = *v35->connection_uuid;
  v39 = v35->mode_handler;
  v35->mode_handler = v37;

  v40 = v35->mode_handler;
  v41 = v35;
  v42 = v40;
  v43 = v42;
  if (!v42)
  {
    v75 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_endpoint_flow_set_custom_protocols_only";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null endpoint_flow", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (__nwlog_fault(v76, type, &v94))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v78 = type[0];
        if (os_log_type_enabled(v77, type[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_endpoint_flow_set_custom_protocols_only";
          _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else
      {
        if (v94 == 1)
        {
          v82 = __nw_create_backtrace_string();
          v83 = __nwlog_obj();
          v84 = type[0];
          v85 = os_log_type_enabled(v83, type[0]);
          if (v82)
          {
            if (v85)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_endpoint_flow_set_custom_protocols_only";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v82;
              _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v82);
          }

          else
          {
            if (v85)
            {
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_endpoint_flow_set_custom_protocols_only";
              _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_120;
        }

        v77 = __nwlog_obj();
        v86 = type[0];
        if (os_log_type_enabled(v77, type[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_endpoint_flow_set_custom_protocols_only";
          _os_log_impl(&dword_181A37000, v77, v86, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_120:
    if (v76)
    {
      free(v76);
    }

    goto LABEL_25;
  }

  *(v42 + 34) |= 2u;
  v44 = nw_endpoint_handler_copy_endpoint(v41);
  v45 = *(v43 + 121);
  *(v43 + 121) = v44;

LABEL_25:
LABEL_35:
  v52 = v35;
LABEL_50:

LABEL_51:
  return v35;
}

void nw_endpoint_enumerate_alternatives(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_enumerate_alternatives";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null endpoint", buf, 12);

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
        v23 = "nw_endpoint_enumerate_alternatives";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
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
          v23 = "nw_endpoint_enumerate_alternatives";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_endpoint_enumerate_alternatives";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_enumerate_alternatives";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_enumerate_alternatives(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_enumerate_alternatives";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null enumerate_block", buf, 12);

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
      v23 = "nw_endpoint_enumerate_alternatives";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null enumerate_block", buf, 0xCu);
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
      v23 = "nw_endpoint_enumerate_alternatives";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_endpoint_enumerate_alternatives";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_enumerate_alternatives";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_connection_set_state_changed_handler(nw_connection_t connection, nw_connection_state_changed_handler_t handler)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = handler;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_state_changed_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    os_unfair_lock_lock(&v3[17]);
    __nw_connection_set_state_changed_handler_block_invoke(v13);
    os_unfair_lock_unlock(&v3[17]);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_state_changed_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_state_changed_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_connection_set_read_close_handler(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_read_close_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_read_close_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_read_close_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_read_close_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_read_close_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_read_close_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_connection_set_write_close_handler(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_write_close_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_write_close_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_write_close_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_write_close_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_write_close_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_write_close_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void __nw_connection_set_write_close_handler_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 144);
  v3 = v1;
  if (!v2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_set_write_close_handler";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v11, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_set_write_close_handler";
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v28 != 1)
      {
        v12 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_set_write_close_handler";
          _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v26)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_set_write_close_handler";
          _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v26)
      {
        *buf = 136446466;
        v31 = "nw_endpoint_handler_set_write_close_handler";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_36:
    if (!v11)
    {
      goto LABEL_38;
    }

LABEL_37:
    free(v11);
    goto LABEL_38;
  }

  v4 = v2;
  mode = v4->mode;

  if (mode == 2)
  {
    v6 = nw_endpoint_handler_copy_flow(v4);
    v7 = _Block_copy(v3);
    v8 = *(v6 + 107);
    *(v6 + 107) = v7;

    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (mode > 5)
  {
    v10 = "unknown-mode";
  }

  else
  {
    v10 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v31 = "nw_endpoint_handler_set_write_close_handler";
  v32 = 2082;
  v33 = v10;
  v34 = 2082;
  v35 = "flow";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v11, &type, &v28))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v12, type))
    {
      if (mode > 5)
      {
        v14 = "unknown-mode";
      }

      else
      {
        v14 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_endpoint_handler_set_write_close_handler";
      v32 = 2082;
      v33 = v14;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v28 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v12, type))
    {
      if (mode > 5)
      {
        v20 = "unknown-mode";
      }

      else
      {
        v20 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_endpoint_handler_set_write_close_handler";
      v32 = 2082;
      v33 = v20;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_35;
  }

  v15 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v16 = type;
  v17 = os_log_type_enabled(v12, type);
  if (!v15)
  {
    if (v17)
    {
      if (mode > 5)
      {
        v21 = "unknown-mode";
      }

      else
      {
        v21 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_endpoint_handler_set_write_close_handler";
      v32 = 2082;
      v33 = v21;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_35;
  }

  if (v17)
  {
    if (mode > 5)
    {
      v18 = "unknown-mode";
    }

    else
    {
      v18 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v31 = "nw_endpoint_handler_set_write_close_handler";
    v32 = 2082;
    v33 = v18;
    v34 = 2082;
    v35 = "flow";
    v36 = 2082;
    v37 = v15;
    _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v15);
  if (v11)
  {
    goto LABEL_37;
  }

LABEL_38:
}

void nw_connection_set_alternate_path_state_handler(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_alternate_path_state_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_alternate_path_state_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_alternate_path_state_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_alternate_path_state_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_alternate_path_state_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_alternate_path_state_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void __nw_connection_set_alternate_path_state_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;
}

void nw_connection_set_viability_changed_handler(nw_connection_t connection, nw_connection_BOOLean_event_handler_t handler)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = handler;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_viability_changed_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_viability_changed_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_viability_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_viability_changed_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_viability_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_viability_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void __nw_connection_set_viability_changed_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 232);
  *(v3 + 232) = v2;
}

void nw_endpoint_add_alternative(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_add_alternative";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v32 = "nw_endpoint_add_alternative";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_60:
        if (!v11)
        {
          goto LABEL_10;
        }

LABEL_61:
        free(v11);
        goto LABEL_10;
      }

      if (v20)
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_59:

    goto LABEL_60;
  }

  if (!v6)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_add_alternative";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null alternative_endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null alternative_endpoint", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null alternative_endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v23)
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null alternative_endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v23)
    {
      *buf = 136446466;
      v32 = "nw_endpoint_add_alternative";
      v33 = 2082;
      v34 = v21;
      _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null alternative_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_40;
  }

  if (v5 == v6)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_endpoint_add_alternative";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null (endpoint != alternative_endpoint)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v11, &type, &v29))
    {
      goto LABEL_60;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null (endpoint != alternative_endpoint)", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null (endpoint != alternative_endpoint), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v25)
      {
        *buf = 136446210;
        v32 = "nw_endpoint_add_alternative";
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null (endpoint != alternative_endpoint), no backtrace", buf, 0xCu);
      }

      goto LABEL_59;
    }

    if (v25)
    {
      *buf = 136446466;
      v32 = "nw_endpoint_add_alternative";
      v33 = 2082;
      v34 = v21;
      _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null (endpoint != alternative_endpoint), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_40:

    free(v21);
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

  if (v6 != &__block_literal_global_7016 || v7)
  {
    _nw_endpoint_add_alternative(v5, v6, v7);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v32 = "nw_endpoint_add_alternative";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Cannot set an unknown alternative endpoint without a protocol", buf, 0xCu);
    }
  }

LABEL_10:
}

uint64_t _nw_endpoint_add_alternative(void *a1, void *a2, NSObject *a3)
{
  v5 = a1;
  v6 = a2;
  swift_unknownObjectRetain();
  sub_181B37DA0(v6, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_181B403B4(uint64_t a1, id a2, NSObject **a3)
{
  v5 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  swift_beginAccess();
  v29 = v5;
  v6 = (*(&v5->isa + a1))[2];
  if (!v6)
  {
LABEL_30:
    v5 = *a3;
    swift_beginAccess();
    v8 = *(&v29->isa + a1);
    swift_unknownObjectRetain();
    a2 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(&v29->isa + a1) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v7 = v6 + 1;
  v8 = -v6;
  v9 = 16 * v6 + 32;
  while (1)
  {
    v10 = *(&v29->isa + a1);
    if (v7 - 2 >= *(v10 + 16))
    {
      break;
    }

    v11 = v10 + v9;
    v5 = *(v11 - 16);
    v12 = *(v11 - 8);
    v13 = *a3;
    if (&__block_literal_global_7016 != a2 && (v13 ? (v14 = v5 == &__block_literal_global_7016) : (v14 = 0), v14))
    {
      if (!v12)
      {
        goto LABEL_4;
      }

      swift_unknownObjectRetain();
      v27 = v5;
      if (nw_protocol_definition_is_equal(v12, v13))
      {
        v5 = v29;
        swift_beginAccess();
        v16 = *(&v29->isa + a1);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *(&v29->isa + a1) = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_182083534(v16);
          *(&v29->isa + a1) = v16;
        }

        v18 = *(v16 + 2);
        if (v7 - 2 >= v18)
        {
          goto LABEL_36;
        }

        v19 = v18 - 1;
        v5 = *&v16[v9 - 16];
        memmove(&v16[v9 - 16], &v16[v9], 16 * &v8[v18]);
        *(v16 + 2) = v19;
        *(&v29->isa + a1) = v16;
        swift_endAccess();
        swift_unknownObjectRelease();

LABEL_3:
        swift_unknownObjectRelease();
        goto LABEL_4;
      }

      v13 = *a3;
      if (!*a3)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (!v12)
      {
        if (v13)
        {
          goto LABEL_4;
        }

        v20 = v5;
        if (&__block_literal_global_7016 == a2)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      swift_unknownObjectRetain();
      v15 = v5;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

    if (!nw_protocol_definition_is_equal(v12, v13))
    {
      goto LABEL_3;
    }

    if (&__block_literal_global_7016 == a2)
    {
LABEL_24:
      if (v5 == &__block_literal_global_7016)
      {

        return swift_unknownObjectRelease();
      }
    }

LABEL_25:
    if (&__block_literal_global_7016 == a2)
    {
      goto LABEL_3;
    }

    v30[0] = 31;
    v21 = sub_181B0A11C(a2, v30);

    result = swift_unknownObjectRelease();
    if (v21)
    {
      return result;
    }

LABEL_4:
    --v7;
    ++v8;
    v9 -= 16;
    if (v7 <= 1)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  v8 = sub_181B406CC(0, *(v8 + 2) + 1, 1, v8);
  *(&v29->isa + a1) = v8;
LABEL_31:
  v25 = *(v8 + 2);
  v24 = *(v8 + 3);
  if (v25 >= v24 >> 1)
  {
    v8 = sub_181B406CC((v24 > 1), v25 + 1, 1, v8);
  }

  *(v8 + 2) = v25 + 1;
  v26 = &v8[16 * v25];
  *(v26 + 4) = a2;
  *(v26 + 5) = v5;
  *(&v29->isa + a1) = v8;
  return swift_endAccess();
}

char *sub_181B406CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838948, &qword_182AE6028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __nw_connection_create_with_id_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5 == &__block_literal_global_7016)
    {
      goto LABEL_31;
    }

    v13 = *(*(a1 + 32) + 16);
    if (!v13 || _nw_parameters_get_logging_disabled(v13))
    {
      goto LABEL_31;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v14 = *(*(a1 + 32) + 448);
    v15 = v5;
    v16 = v15;
    if (v15)
    {
      logging_description = _nw_endpoint_get_logging_description(v15);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v23 = 136446722;
    v24 = "nw_connection_create_with_id_block_invoke";
    v25 = 1024;
    v26 = v14;
    v27 = 2082;
    v28 = logging_description;
    v19 = "%{public}s [C%u] has alternative %{public}s";
LABEL_28:
    v20 = v8;
    v21 = 28;
    goto LABEL_29;
  }

  v7 = *(*(a1 + 32) + 16);
  if (v5 == &__block_literal_global_7016)
  {
    if (!v7 || _nw_parameters_get_logging_disabled(v7))
    {
      goto LABEL_31;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v18 = *(*(a1 + 32) + 448);
    v23 = 136446722;
    v24 = "nw_connection_create_with_id_block_invoke";
    v25 = 1024;
    v26 = v18;
    v27 = 2114;
    v28 = v6;
    v19 = "%{public}s [C%u] has alternative UNKNOWN for %{public}@";
    goto LABEL_28;
  }

  if (v7 && !_nw_parameters_get_logging_disabled(v7))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v9 = *(*(a1 + 32) + 448);
    v10 = v5;
    v11 = v10;
    if (v10)
    {
      v12 = _nw_endpoint_get_logging_description(v10);
    }

    else
    {
      v12 = "<NULL>";
    }

    v23 = 136446978;
    v24 = "nw_connection_create_with_id_block_invoke";
    v25 = 1024;
    v26 = v9;
    v27 = 2082;
    v28 = v12;
    v29 = 2114;
    v30 = v6;
    v19 = "%{public}s [C%u] has alternative %{public}s for %{public}@";
    v20 = v8;
    v21 = 38;
LABEL_29:
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, v19, &v23, v21);
LABEL_30:
  }

LABEL_31:

  return 1;
}

uint64_t sub_181B40B4C(uint64_t a1, uint64_t (*a2)(__n128))
{
  v55 = a2;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - v8;
  v9 = sub_182AD2738();
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v49 - v12;
  *(v2 + 48) = xmmword_182AE8E90;
  v56 = v13;
  v14 = *(v13 + 56);
  v53 = qword_1ED411A90;
  v61 = v15;
  v50 = v14;
  v51 = v13 + 56;
  (v14)(v2 + qword_1ED411A90, 1, 1);
  v59 = qword_1ED411A88;
  *(v2 + qword_1ED411A88) = 0;
  v16 = *(*v2 + 128);
  *(v2 + v16) = 0;
  v17 = *(*v2 + 136);
  *(v2 + v17) = 0;
  v18 = *(*v2 + 144);
  *(v2 + v18) = 0;
  v19 = v3 + *(*v3 + 152);
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v3 + *(*v3 + 160);
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v3 + *(*v3 + 168));
  *v21 = 0;
  v21[1] = 0;
  v57 = *(*v2 + 176);
  *(v2 + v57) = 0;
  v60 = *(*v2 + 184);
  *(v2 + v60) = 0;
  swift_beginAccess();
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  *(v2 + 16) = *(a1 + 16);
  *(v2 + 24) = v22;
  *(v2 + 32) = v23;
  *(v2 + 40) = v24;
  v25 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v25))
  {
    sub_181F49A24(v22, v23, v24);

    v27 = (v55)(v26);
  }

  else
  {
    sub_181F49A24(v22, v23, v24);
    v27 = 0;
  }

  swift_beginAccess();
  *(v3 + v16) = v27;

  v28 = *(*a1 + 136);
  swift_beginAccess();
  v29 = *(a1 + v28);
  swift_beginAccess();
  v30 = *(v3 + v17);
  *(v3 + v17) = v29;
  v31 = v29;

  v32 = *(*a1 + 144);
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  *(v3 + v18) = v33;

  v34 = qword_1ED411A90;
  swift_beginAccess();
  v35 = a1 + v34;
  v36 = v58;
  sub_181AB5D28(v35, v58, &qword_1EA838E00, &qword_182AFE8E0);
  v37 = v56;
  v38 = v61;
  if ((*(v56 + 48))(v36, 1, v61) == 1)
  {
    sub_181F49A88(v36, &qword_1EA838E00, &qword_182AFE8E0);
  }

  else
  {
    v39 = *(v37 + 32);
    v40 = v49;
    v39(v49, v36, v38);
    v41 = v52;
    sub_182AD2728();
    sub_182AD2718();
    (*(v37 + 8))(v40, v38);
    v42 = v54;
    v39(v54, v41, v38);
    v50(v42, 0, 1, v38);
    v43 = v53;
    swift_beginAccess();
    sub_181B2D2D8(v42, v3 + v43);
    swift_endAccess();
  }

  *(v3 + v59) = *(a1 + qword_1ED411A88);
  v44 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v57;
  swift_beginAccess();
  *(v3 + v45) = v44;
  v46 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v60;
  swift_beginAccess();
  *(v3 + v47) = v46;
  return v3;
}

BOOL nw_settings_get_quic_migration_enabled()
{
  v0 = nw_setting_enable_quic_migration;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 0;
  if (!v0 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (value && (v5 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v3 = xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v3;
}

uint64_t ___ZL34nw_endpoint_transform_add_childrenP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v143 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = __Block_byref_object_copy__82355;
  v130 = __Block_byref_object_dispose__82356;
  v131 = nw_protocol_transform_copy_endpoint(v4);
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v5 = nw_parameters_copy_url_endpoint(*(a1 + 32));
  if (!v5)
  {
    v5 = *(*(a1 + 40) + 56);
  }

  if ((nw_protocol_transform_supports_endpoint(v4, v5) & 1) == 0)
  {
    *(v123 + 24) = 1;
    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(*(a1 + 48)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v68 = gconnectionLogObj;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 48));
        v70 = nw_endpoint_handler_dry_run_string(*(a1 + 48));
        v71 = id_string;
        v106 = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
        logging_description = nw_endpoint_get_logging_description(v106);
        v73 = nw_endpoint_handler_state_string(*(a1 + 48));
        v74 = nw_endpoint_handler_mode_string(*(a1 + 48));
        v75 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
        *buf = 136447746;
        *&buf[4] = "nw_endpoint_transform_add_children_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v71;
        v133 = 2082;
        v134 = v70;
        v135 = 2082;
        v136 = logging_description;
        v137 = 2082;
        v138 = v73;
        v139 = 2082;
        v140 = v74;
        v141 = 2114;
        v142 = v75;
        _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping transform due to unsupported endpoint", buf, 0x48u);
      }
    }
  }

  if ((v123[3] & 1) == 0)
  {
    if (v127[5] || (v6 = *(*(a1 + 40) + 56), v116[0] = MEMORY[0x1E69E9820], v116[1] = 3221225472, v116[2] = ___ZL34nw_endpoint_transform_add_childrenP30NWConcrete_nw_endpoint_handler_block_invoke_97, v116[3] = &unk_1E6A3B378, v120 = &v126, v117 = v4, v121 = &v122, v118 = *(a1 + 48), v119 = *(a1 + 40), nw_endpoint_enumerate_alternatives(v6, v116), v119, v118, v117, (v123[3] & 1) == 0))
    {
      if (nw_protocol_transform_get_prohibit_direct(v4))
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }

      if (!v127[5])
      {
        objc_storeStrong(v127 + 5, *(*(a1 + 40) + 56));
      }

      v105 = _nw_parameters_copy();
      nw_protocol_transform_modify_parameters(v4, v105);
      if (nw_parameters_get_upper_transport_protocol(v105) != 253)
      {
        is_above_failure_threshold = 0;
        goto LABEL_39;
      }

      v7 = nw_endpoint_handler_copy_association(*(a1 + 48), 0);
      v104 = v7;
      if (!v7)
      {
        is_above_failure_threshold = 0;
        goto LABEL_30;
      }

      LOBYTE(v112) = 0;
      is_above_failure_threshold = nw_quic_is_above_failure_threshold(v7, &v112);
      if (!is_above_failure_threshold)
      {
LABEL_30:
        v22 = networkd_settings_get_BOOL(nw_setting_disable_quic_race);
        v23 = networkd_settings_get_BOOL(nw_setting_disable_quic);
        if (!v22 && !v23)
        {
          v24 = *(a1 + 56);
          has_custom_proxy_configs = nw_parameters_has_custom_proxy_configs(*(a1 + 32));
          if (!_nw_path_should_use_proxy(v24, has_custom_proxy_configs))
          {
LABEL_38:

LABEL_39:
            *buf = 0;
            *&buf[8] = 0;
            if (nw_path_get_client_id(*(a1 + 56), buf))
            {
              nw_parameters_set_parent_id_internal(v105, buf);
            }

            endpoint_without_alternatives = nw_endpoint_transform_create_endpoint_without_alternatives(*(a1 + 48), v127[5]);
            inner = nw_endpoint_handler_create_inner(endpoint_without_alternatives, v105, nw_endpoint_transform_receive_report, *(a1 + 48), *(a1 + 48), 0, 0, 0);
            v30 = a1 + 40;
            v29 = *(a1 + 40);
            if (*(v29 + 8))
            {
              if (!*(v29 + 24))
              {
                goto LABEL_52;
              }
            }

            else
            {
              v40 = _nw_array_create();
              v41 = *(*v30 + 8);
              *(*v30 + 8) = v40;

              if (!*(*v30 + 24))
              {
LABEL_52:
                v42 = xpc_array_create(0, 0);
                v43 = *(*v30 + 24);
                *(*v30 + 24) = v42;
              }
            }

            fallback_mode = nw_protocol_transform_get_fallback_mode(v4);
            if (is_above_failure_threshold)
            {
              if (!*(*(*(a1 + 72) + 8) + 40))
              {
                v45 = _nw_array_create();
                v46 = *(*(a1 + 72) + 8);
                v47 = *(v46 + 40);
                *(v46 + 40) = v45;
              }

              if (!*(*(*(a1 + 80) + 8) + 40))
              {
                v48 = xpc_array_create(0, 0);
                v49 = *(*(a1 + 80) + 8);
                v50 = *(v49 + 40);
                *(v49 + 40) = v48;
              }

              v51 = *(*(*(a1 + 72) + 8) + 40);
              if (v51 && inner)
              {
                _nw_array_append(v51, inner);
              }

              v30 = *(a1 + 80) + 8;
              v52 = 40;
            }

            else
            {
              v53 = *(*v30 + 8);
              v52 = 24;
              if (v53 && inner)
              {
                _nw_array_append(v53, inner);
                v52 = 24;
              }
            }

            xpc_array_set_int64(*(*v30 + v52), 0xFFFFFFFFFFFFFFFFLL, fallback_mode);

            goto LABEL_78;
          }

          v26 = nw_parameters_copy_custom_proxy_configs(*(a1 + 32));
          if (!v26)
          {
            v26 = nw_path_copy_proxy_configs(*(a1 + 56));
          }

          v112 = 0;
          v113 = &v112;
          v114 = 0x2020000000;
          v115 = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___ZL34nw_endpoint_transform_add_childrenP30NWConcrete_nw_endpoint_handler_block_invoke_99;
          aBlock[3] = &unk_1E6A3B3A0;
          v110 = &v126;
          v108 = v105;
          v109 = *(a1 + 56);
          v111 = &v112;
          if (v26)
          {
            _nw_array_apply(v26, aBlock);
            if (v113[3])
            {

              _Block_object_dispose(&v112, 8);
              goto LABEL_38;
            }
          }

          minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 48));
          logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 48));
          if (minimize_logging)
          {
            if (logging_disabled)
            {
              goto LABEL_73;
            }

            v97 = v26;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v87 = gconnectionLogObj;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              v88 = nw_endpoint_handler_get_id_string(*(a1 + 48));
              loge = nw_endpoint_handler_dry_run_string(*(a1 + 48));
              v89 = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
              v90 = nw_endpoint_get_logging_description(v89);
              v91 = nw_endpoint_handler_state_string(*(a1 + 48));
              v92 = nw_endpoint_handler_mode_string(*(a1 + 48));
              v93 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_transform_add_children_block_invoke_2";
              *&buf[12] = 2082;
              *&buf[14] = v88;
              v133 = 2082;
              v134 = loge;
              v135 = 2082;
              v136 = v90;
              v137 = 2082;
              v138 = v91;
              v139 = 2082;
              v140 = v92;
              v141 = 2114;
              v142 = v93;
              _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Non-QUIC proxies detected, denying QUIC attempt", buf, 0x48u);

              v26 = v97;
            }

            v56 = v87;
          }

          else
          {
            if (logging_disabled)
            {
LABEL_73:
              *(*(a1 + 40) + 94) = 1;

              _Block_object_dispose(&v112, 8);
LABEL_78:

              goto LABEL_79;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v56 = gconnectionLogObj;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = nw_endpoint_handler_get_id_string(*(a1 + 48));
              v58 = nw_endpoint_handler_dry_run_string(*(a1 + 48));
              v95 = v26;
              logb = v56;
              v59 = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
              v60 = nw_endpoint_get_logging_description(v59);
              v61 = nw_endpoint_handler_state_string(*(a1 + 48));
              v62 = nw_endpoint_handler_mode_string(*(a1 + 48));
              v63 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_transform_add_children_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = v57;
              v133 = 2082;
              v134 = v58;
              v135 = 2082;
              v136 = v60;
              v137 = 2082;
              v138 = v61;
              v139 = 2082;
              v140 = v62;
              v141 = 2114;
              v142 = v63;
              _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Non-QUIC proxies detected, denying QUIC attempt", buf, 0x48u);

              v26 = v95;
              v56 = logb;
            }
          }

          goto LABEL_73;
        }

        v31 = nw_endpoint_handler_get_minimize_logging(*(a1 + 48));
        v32 = nw_endpoint_handler_get_logging_disabled(*(a1 + 48));
        if (v31)
        {
          if (v32)
          {
            goto LABEL_77;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v33 = gconnectionLogObj;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v76 = nw_endpoint_handler_get_id_string(*(a1 + 48));
            logc = nw_endpoint_handler_dry_run_string(*(a1 + 48));
            v77 = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
            v78 = nw_endpoint_get_logging_description(v77);
            v79 = nw_endpoint_handler_state_string(*(a1 + 48));
            v80 = nw_endpoint_handler_mode_string(*(a1 + 48));
            v81 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_transform_add_children_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v76;
            v133 = 2082;
            v134 = logc;
            v135 = 2082;
            v136 = v78;
            v137 = 2082;
            v138 = v79;
            v139 = 2082;
            v140 = v80;
            v141 = 2114;
            v142 = v81;
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] QUIC disabled, denying race attempt", buf, 0x48u);
          }
        }

        else
        {
          if (v32)
          {
LABEL_77:
            *(*(a1 + 40) + 94) = 1;

            goto LABEL_78;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v33 = gconnectionLogObj;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = nw_endpoint_handler_get_id_string(*(a1 + 48));
            v35 = nw_endpoint_handler_dry_run_string(*(a1 + 48));
            loga = v33;
            v36 = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
            v37 = v36;
            if (v36)
            {
              v38 = _nw_endpoint_get_logging_description(v36);
              v39 = v34;
            }

            else
            {
              v39 = v34;
              v38 = "<NULL>";
            }

            v64 = nw_endpoint_handler_state_string(*(a1 + 48));
            v65 = nw_endpoint_handler_mode_string(*(a1 + 48));
            v66 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_transform_add_children_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v39;
            v133 = 2082;
            v134 = v35;
            v135 = 2082;
            v136 = v38;
            v137 = 2082;
            v138 = v64;
            v139 = 2082;
            v140 = v65;
            v141 = 2114;
            v142 = v66;
            _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] QUIC disabled, denying race attempt", buf, 0x48u);

            v33 = loga;
          }
        }

        goto LABEL_77;
      }

      v9 = nw_endpoint_handler_get_minimize_logging(*(a1 + 48));
      v10 = nw_endpoint_handler_get_logging_disabled(*(a1 + 48));
      if (v9)
      {
        if (v10)
        {
          goto LABEL_27;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v82 = nw_endpoint_handler_get_id_string(*(a1 + 48));
          v96 = nw_endpoint_handler_dry_run_string(*(a1 + 48));
          logd = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
          v83 = nw_endpoint_get_logging_description(logd);
          v84 = nw_endpoint_handler_state_string(*(a1 + 48));
          v85 = nw_endpoint_handler_mode_string(*(a1 + 48));
          v86 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_transform_add_children_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v82;
          v133 = 2082;
          v134 = v96;
          v135 = 2082;
          v136 = v83;
          v137 = 2082;
          v138 = v84;
          v139 = 2082;
          v140 = v85;
          v141 = 2114;
          v142 = v86;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] QUIC is beyond failure threshold, deferring", buf, 0x48u);
        }
      }

      else
      {
        if (v10)
        {
LABEL_27:
          v21 = 92;
          if (v112)
          {
            v21 = 93;
          }

          *(*(a1 + 40) + v21) = 1;
          goto LABEL_30;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = nw_endpoint_handler_get_id_string(*(a1 + 48));
          v13 = nw_endpoint_handler_dry_run_string(*(a1 + 48));
          v14 = nw_endpoint_handler_copy_endpoint(*(a1 + 48));
          v15 = v14;
          v94 = v13;
          log = v12;
          if (v14)
          {
            v16 = _nw_endpoint_get_logging_description(v14);
          }

          else
          {
            v16 = "<NULL>";
          }

          v17 = nw_endpoint_handler_state_string(*(a1 + 48));
          v18 = v11;
          v19 = nw_endpoint_handler_mode_string(*(a1 + 48));
          v20 = nw_endpoint_handler_copy_current_path(*(a1 + 48));
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_transform_add_children_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = log;
          v133 = 2082;
          v134 = v94;
          v135 = 2082;
          v136 = v16;
          v137 = 2082;
          v138 = v17;
          v139 = 2082;
          v140 = v19;
          v11 = v18;
          v141 = 2114;
          v142 = v20;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] QUIC is beyond failure threshold, deferring", buf, 0x48u);
        }
      }

      goto LABEL_27;
    }
  }

LABEL_79:

  _Block_object_dispose(&v122, 8);
  _Block_object_dispose(&v126, 8);

  return 1;
}

void sub_181B420A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

id nw_protocol_transform_copy_endpoint(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_transform_copy_endpoint(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_transform_copy_endpoint";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null transform", buf, 12);

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
        v12 = "nw_protocol_transform_copy_endpoint";
        v6 = "%{public}s called with null transform";
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
            v12 = "nw_protocol_transform_copy_endpoint";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null transform, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_transform_copy_endpoint";
        v6 = "%{public}s called with null transform, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_transform_copy_endpoint";
        v6 = "%{public}s called with null transform, backtrace limit exceeded";
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

void sub_181B424E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 360);
  if (!v4 || !*(v4 + 16))
  {
    v5 = *sub_182AD2388();
    v6 = *(a3 + 360);
    if (!v6)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v6 = swift_allocObject();
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(a3 + 360) = v6;
    }

    *(v6 + 16) = v5;
  }

  swift_getObjectType();
  sub_181B3C428();
  v9 = *(a3 + 360);
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *(v10 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v13 = v7;
  v14 = v8;
  swift_unknownObjectRetain();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v10 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B3CD80(isUniquelyReferenced_nonNull_native, v12, 0);
  }

  sub_181B3CF2C((v10 + 16), v10 + 40, v13, v14);
  swift_unknownObjectRelease();
  v16 = *(a3 + 360);
  if (!v16)
  {
    type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
    v16 = swift_allocObject();
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(a3 + 360) = v16;
  }

  *(v16 + 16) = v10;
}

id nw_connection_create_with_id(void *a1, void *a2, int a3, uint64_t a4)
{
  v4 = a4;
  *&v73[13] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  nw_allow_use_of_dispatch_internal(v8);
  if (!v7)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_connection_create_with_id";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (__nwlog_fault(v11, &type, &v68))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v56, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v68 != 1)
      {
        v12 = __nwlog_obj();
        v64 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v64, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_74;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v60 = type;
      v61 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v61)
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v60, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v61)
      {
        *buf = 136446466;
        v71 = "nw_connection_create_with_id";
        v72 = 2082;
        *v73 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v60, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_97;
    }

LABEL_75:
    if (!v11)
    {
LABEL_77:
      v37 = 0;
      goto LABEL_71;
    }

LABEL_76:
    free(v11);
    goto LABEL_77;
  }

  if (!v8)
  {
    v57 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_connection_create_with_id";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (__nwlog_fault(v11, &type, &v68))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v58, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_74:

        goto LABEL_75;
      }

      if (v68 != 1)
      {
        v12 = __nwlog_obj();
        v65 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v65, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_74;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v63)
      {
        *buf = 136446466;
        v71 = "nw_connection_create_with_id";
        v72 = 2082;
        *v73 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_97:

      free(backtrace_string);
      if (!v11)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (a3)
  {
    v9 = _nw_parameters_copy();
    if (!v9)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      *buf = 136446210;
      v71 = "nw_connection_create_with_id";
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s nw_parameters_copy failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v68 = 0;
      if (!__nwlog_fault(v11, &type, &v68))
      {
        goto LABEL_75;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s nw_parameters_copy failed", buf, 0xCu);
        }
      }

      else if (v68 == 1)
      {
        v47 = __nw_create_backtrace_string();
        if (v47)
        {
          v48 = v47;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v49 = gLogObj;
          v50 = type;
          if (os_log_type_enabled(v49, type))
          {
            *buf = 136446466;
            v71 = "nw_connection_create_with_id";
            v72 = 2082;
            *v73 = v48;
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s nw_parameters_copy failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          if (!v11)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        v12 = __nwlog_obj();
        v54 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v54, "%{public}s nw_parameters_copy failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v52 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v12, v52, "%{public}s nw_parameters_copy failed, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_74;
    }
  }

  else
  {
    v9 = v8;
  }

  v14 = [NWConcrete_nw_connection alloc];
  v15 = v7;
  v16 = _nw_endpoint_copy(v15);

  v17 = [(NWConcrete_nw_connection *)&v14->super.isa initWithEndpoint:v16 parameters:v9 identifier:v4];
  if (!v17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v38 = gLogObj;
    *buf = 136446210;
    v71 = "nw_connection_create_with_id";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (__nwlog_fault(v39, &type, &v68))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v40 = gLogObj;
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 0xCu);
        }
      }

      else if (v68 == 1)
      {
        v44 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v40 = gLogObj;
        v45 = type;
        v46 = os_log_type_enabled(v40, type);
        if (v44)
        {
          if (v46)
          {
            *buf = 136446466;
            v71 = "nw_connection_create_with_id";
            v72 = 2082;
            *v73 = v44;
            _os_log_impl(&dword_181A37000, v40, v45, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v44);
          if (!v39)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        if (v46)
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v40, v45, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v40 = gLogObj;
        v51 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v71 = "nw_connection_create_with_id";
          _os_log_impl(&dword_181A37000, v40, v51, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v39)
    {
      goto LABEL_69;
    }

LABEL_68:
    free(v39);
    goto LABEL_69;
  }

  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  nw_allow_use_of_dispatch_internal(v18);
  if (has_modifiers == 1)
  {
    os_unfair_lock_lock(&nw_protocol_modify_lock);
    v21 = g_modifier_list;
    if (g_modifier_list)
    {
      while (1)
      {
        v22 = v21[2];
        if (v22)
        {
          if (v22(v19, v20))
          {
            break;
          }
        }

        v21 = *v21;
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      os_unfair_lock_unlock(&nw_protocol_modify_lock);
      v23 = *(v17 + 16);
      if (v23 && !_nw_parameters_get_logging_disabled(v23))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(v17 + 448);
          *buf = 136446466;
          v71 = "nw_connection_create_with_id";
          v72 = 1024;
          *v73 = v25;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Connection parameters were modified", buf, 0x12u);
        }
      }
    }

    else
    {
LABEL_14:
      os_unfair_lock_unlock(&nw_protocol_modify_lock);
    }
  }

  inner = nw_endpoint_handler_create_inner(*(v17 + 8), *(v17 + 16), nw_connection_endpoint_report_on_nw_queue, v17, 0, *(v17 + 448), (v17 + 452), 0);
  v27 = *(v17 + 144);
  *(v17 + 144) = inner;

  v28 = *(v17 + 16);
  if (*(v17 + 144))
  {
    v29 = _nw_parameters_copy_immutable(v28);
    v30 = *(v17 + 16);
    *(v17 + 16) = v29;

    v31 = *(v17 + 16);
    if (v31 && !_nw_parameters_get_logging_disabled(v31))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v32 = gconnectionLogObj;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = *(v17 + 448);
        v34 = v15;
        logging_description = _nw_endpoint_get_logging_description(v34);

        *buf = 136446722;
        v71 = "nw_connection_create_with_id";
        v72 = 1024;
        *v73 = v33;
        v73[2] = 2082;
        *&v73[3] = logging_description;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s [C%u] create connection to %{public}s", buf, 0x1Cu);
      }
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __nw_connection_create_with_id_block_invoke;
    v66[3] = &unk_1E6A2EBE0;
    v36 = v17;
    v67 = v36;
    nw_endpoint_enumerate_alternatives(v15, v66);
    v37 = v36;

    goto LABEL_70;
  }

  if (v28 && !_nw_parameters_get_logging_disabled(v28))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = gconnectionLogObj;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = *(v17 + 448);
      *buf = 136446466;
      v71 = "nw_connection_create_with_id";
      v72 = 1024;
      *v73 = v43;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Failed to create parent endpoint handler", buf, 0x12u);
    }
  }

LABEL_69:
  v37 = 0;
LABEL_70:

LABEL_71:
  return v37;
}

void __nw_connection_set_read_close_handler_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 144);
  v3 = v1;
  if (!v2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_set_read_close_handler";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v11, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_set_read_close_handler";
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v28 != 1)
      {
        v12 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_set_read_close_handler";
          _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v26)
        {
          *buf = 136446210;
          v31 = "nw_endpoint_handler_set_read_close_handler";
          _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v26)
      {
        *buf = 136446466;
        v31 = "nw_endpoint_handler_set_read_close_handler";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_36:
    if (!v11)
    {
      goto LABEL_38;
    }

LABEL_37:
    free(v11);
    goto LABEL_38;
  }

  v4 = v2;
  mode = v4->mode;

  if (mode == 2)
  {
    v6 = nw_endpoint_handler_copy_flow(v4);
    v7 = _Block_copy(v3);
    v8 = *(v6 + 106);
    *(v6 + 106) = v7;

    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (mode > 5)
  {
    v10 = "unknown-mode";
  }

  else
  {
    v10 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v31 = "nw_endpoint_handler_set_read_close_handler";
  v32 = 2082;
  v33 = v10;
  v34 = 2082;
  v35 = "flow";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v11, &type, &v28))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v12, type))
    {
      if (mode > 5)
      {
        v14 = "unknown-mode";
      }

      else
      {
        v14 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_endpoint_handler_set_read_close_handler";
      v32 = 2082;
      v33 = v14;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v28 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v12, type))
    {
      if (mode > 5)
      {
        v20 = "unknown-mode";
      }

      else
      {
        v20 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_endpoint_handler_set_read_close_handler";
      v32 = 2082;
      v33 = v20;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_35;
  }

  v15 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v16 = type;
  v17 = os_log_type_enabled(v12, type);
  if (!v15)
  {
    if (v17)
    {
      if (mode > 5)
      {
        v21 = "unknown-mode";
      }

      else
      {
        v21 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v31 = "nw_endpoint_handler_set_read_close_handler";
      v32 = 2082;
      v33 = v21;
      v34 = 2082;
      v35 = "flow";
      _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_35;
  }

  if (v17)
  {
    if (mode > 5)
    {
      v18 = "unknown-mode";
    }

    else
    {
      v18 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v31 = "nw_endpoint_handler_set_read_close_handler";
    v32 = 2082;
    v33 = v18;
    v34 = 2082;
    v35 = "flow";
    v36 = 2082;
    v37 = v15;
    _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v15);
  if (v11)
  {
    goto LABEL_37;
  }

LABEL_38:
}

void nw_endpoint_handler_inherit_from_parent(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_handler *a2, unsigned int next_top_id, unsigned __int8 *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (v8)
  {
    objc_storeStrong(&v7->parent_handler, a2);
    v7->top_id = v8->top_id;
    *(v7 + 284) = *(v7 + 284) & 0xFE | *(v8 + 284) & 1;
    *v7->connection_uuid = *v8->connection_uuid;
    if (v8->id_chain[0])
    {
      if (v8->id_chain[1])
      {
        if (v8->id_chain[2])
        {
          if (v8->id_chain[3])
          {
            if (v8->id_chain[4])
            {
              if (v8->id_chain[5])
              {
                if (v8->id_chain[6])
                {
                  if (v8->id_chain[7])
                  {
                    if (v8->id_chain[8])
                    {
                      if (v8->id_chain[9])
                      {
                        if (v8->id_chain[10])
                        {
                          if (v8->id_chain[11])
                          {
                            if (v8->id_chain[12])
                            {
                              if (v8->id_chain[13])
                              {
                                if (v8->id_chain[14])
                                {
                                  if (v8->id_chain[15])
                                  {
                                    v9 = __nwlog_obj();
                                    *buf = 136446210;
                                    v23 = "nw_endpoint_handler_inherit_from_parent";
                                    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s reached maximum endpoint handler depth", buf, 12);

                                    type = OS_LOG_TYPE_ERROR;
                                    v20 = 0;
                                    if (__nwlog_fault(v10, &type, &v20))
                                    {
                                      if (type == OS_LOG_TYPE_FAULT)
                                      {
                                        v11 = __nwlog_obj();
                                        v12 = type;
                                        if (os_log_type_enabled(v11, type))
                                        {
                                          *buf = 136446210;
                                          v23 = "nw_endpoint_handler_inherit_from_parent";
                                          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s reached maximum endpoint handler depth", buf, 0xCu);
                                        }
                                      }

                                      else if (v20 == 1)
                                      {
                                        backtrace_string = __nw_create_backtrace_string();
                                        v11 = __nwlog_obj();
                                        v17 = type;
                                        v18 = os_log_type_enabled(v11, type);
                                        if (backtrace_string)
                                        {
                                          if (v18)
                                          {
                                            *buf = 136446466;
                                            v23 = "nw_endpoint_handler_inherit_from_parent";
                                            v24 = 2082;
                                            v25 = backtrace_string;
                                            _os_log_impl(&dword_181A37000, v11, v17, "%{public}s reached maximum endpoint handler depth, dumping backtrace:%{public}s", buf, 0x16u);
                                          }

                                          free(backtrace_string);
                                          goto LABEL_57;
                                        }

                                        if (v18)
                                        {
                                          *buf = 136446210;
                                          v23 = "nw_endpoint_handler_inherit_from_parent";
                                          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s reached maximum endpoint handler depth, no backtrace", buf, 0xCu);
                                        }
                                      }

                                      else
                                      {
                                        v11 = __nwlog_obj();
                                        v19 = type;
                                        if (os_log_type_enabled(v11, type))
                                        {
                                          *buf = 136446210;
                                          v23 = "nw_endpoint_handler_inherit_from_parent";
                                          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s reached maximum endpoint handler depth, backtrace limit exceeded", buf, 0xCu);
                                        }
                                      }
                                    }

LABEL_57:
                                    if (v10)
                                    {
                                      free(v10);
                                    }

                                    goto LABEL_45;
                                  }

                                  v13 = 15;
                                  v14 = 14;
                                }

                                else
                                {
                                  v13 = 14;
                                  v14 = 13;
                                }
                              }

                              else
                              {
                                v13 = 13;
                                v14 = 12;
                              }
                            }

                            else
                            {
                              v13 = 12;
                              v14 = 11;
                            }
                          }

                          else
                          {
                            v13 = 11;
                            v14 = 10;
                          }
                        }

                        else
                        {
                          v13 = 10;
                          v14 = 9;
                        }
                      }

                      else
                      {
                        v13 = 9;
                        v14 = 8;
                      }
                    }

                    else
                    {
                      v13 = 8;
                      v14 = 7;
                    }
                  }

                  else
                  {
                    v13 = 7;
                    v14 = 6;
                  }
                }

                else
                {
                  v13 = 6;
                  v14 = 5;
                }
              }

              else
              {
                v13 = 5;
                v14 = 4;
              }
            }

            else
            {
              v13 = 4;
              v14 = 3;
            }
          }

          else
          {
            v13 = 3;
            v14 = 2;
          }
        }

        else
        {
          v13 = 2;
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
        v13 = 1;
      }

      memcpy(v7->id_chain, v8->id_chain, v14);
    }

    else
    {
      v13 = 0;
    }

    next_id = nw_endpoint_handler_get_next_id(&v8->last_child_id);
    v7->id_chain[v13] = next_id;
    snprintf(v7->id_str, 0x4BuLL, "%s.%u", v8->id_str, next_id);
    goto LABEL_45;
  }

  if (!next_top_id)
  {
    next_top_id = nw_endpoint_handler_get_next_top_id();
  }

  v7->top_id = next_top_id;
  snprintf(v7->id_str, 0x4BuLL, "%u", next_top_id);
  if (a4)
  {
    *v7->connection_uuid = *a4;
  }

LABEL_45:
}

void sub_181B43F78(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  v5 = *&a1[OBJC_IVAR____TtC7Network8Endpoint_lock];
  v6 = a1;
  os_unfair_lock_lock(v5 + 4);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = *(v8 + 16);

  v10 = (v8 + 40);
  v11 = -v9;
  v12 = -1;
  do
  {
    if (v11 + v12 == -1)
    {
      break;
    }

    if (++v12 >= *(v8 + 16))
    {
      __break(1u);
    }

    v13 = v10 + 2;
    v14 = (*(a2 + 16))(a2, *(v10 - 1), *v10);
    v10 = v13;
  }

  while ((v14 & 1) != 0);

  os_unfair_lock_unlock((*&a1[v4] + 16));
}

void *_nw_endpoint_copy(void *a1)
{
  v1 = a1;
  v2 = sub_181B440D4();

  return v2;
}

void *sub_181B440D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v12, v11, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v21 = *(v11 + 2);
      v22 = *(v11 + 3);
      v23 = *(v11 + 8);
      v24 = *(v11 + 18);
      v29 = *v11;
      *&v30 = v21;
      *(&v30 + 1) = v22;
      LODWORD(v31[0]) = v23;
      WORD2(v31[0]) = v24;
      v25 = objc_allocWithZone(ObjectType);
      v15 = Endpoint.init(_:)(&v29);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v16 = *(v11 + 2);
      v17 = *(v11 + 3);
      v29 = *v11;
      *&v30 = v16;
      *(&v30 + 1) = v17;
      v18 = objc_allocWithZone(ObjectType);
      v15 = Endpoint.init(_:)(&v29);
    }

    else
    {
      sub_181AA91BC(v11, v8, type metadata accessor for URLEndpoint);
      sub_181ACC828(v8, v5, type metadata accessor for URLEndpoint);
      v27 = objc_allocWithZone(ObjectType);
      v15 = Endpoint.init(_:)(v5);
      sub_181A5513C(v8, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    *&v29 = *v11;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = objc_allocWithZone(ObjectType);
      v15 = Endpoint.init(_:)(&v29);
    }

    else
    {
      v26 = objc_allocWithZone(ObjectType);
      v15 = Endpoint.init(_:)(&v29);
    }
  }

  else
  {
    v19 = *(v11 + 1);
    v29 = *v11;
    v30 = v19;
    v31[0] = *(v11 + 2);
    *(v31 + 12) = *(v11 + 44);
    v20 = objc_allocWithZone(ObjectType);
    v15 = Endpoint.init(_:)(&v29);
  }

  sub_181B2B254(v1);
  return v15;
}

id nw_protocol_copy_quic_connection_definition()
{
  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v1 = nw_protocol_copy_quic_connection_definition_quic_definition;

  return v1;
}

uint64_t sub_181B44400@<X0>(uint64_t *a1@<X8>)
{
  result = ProtocolOptions.deepCopy()();
  *a1 = result;
  return result;
}

uint64_t ProtocolOptions.deepCopy()()
{
  v1 = swift_allocObject();
  ProtocolOptions.init(from:)(v0);
  return v1;
}

void *ProtocolOptions.init(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v60 - v8;
  v9 = sub_182AD2738();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v60 - v13;
  v14 = *(v4 + 88);
  v62 = *(v4 + 80);
  v63 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v60 - v17;
  v77 = sub_182AD39B8();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v60 - v18;
  *(v2 + 3) = xmmword_182AE8E90;
  v81 = v10;
  v19 = *(v10 + 56);
  v65 = v10 + 56;
  v66 = qword_1ED411A90;
  v83 = v9;
  v64 = v19;
  v19(v2 + qword_1ED411A90, 1, 1, v9);
  v80 = qword_1ED411A88;
  *(v2 + qword_1ED411A88) = 0;
  v20 = *(*v2 + 128);
  v21 = *(v16 + 56);
  v71 = v16 + 56;
  v72 = v20;
  v70 = v21;
  v21(v2 + v20, 1, 1, AssociatedTypeWitness);
  v73 = *(*v2 + 136);
  *(v2 + v73) = 0;
  v76 = *(*v2 + 144);
  *(v2 + v76) = 0;
  v22 = v2 + *(*v2 + 152);
  *v22 = 0;
  v22[8] = 1;
  v23 = v2 + *(*v2 + 160);
  *v23 = 0;
  v23[8] = 1;
  v24 = (v2 + *(*v2 + 168));
  *v24 = 0;
  v24[1] = 0;
  v78 = *(*v2 + 176);
  *(v2 + v78) = 0;
  v79 = *(*v2 + 184);
  *(v2 + v79) = 0;
  swift_beginAccess();
  v26 = *(a1 + 24);
  v25 = *(a1 + 32);
  v27 = *(a1 + 40);
  *(v2 + 8) = *(a1 + 16);
  v2[3] = v26;
  v2[4] = v25;
  *(v2 + 40) = v27;
  v28 = *(*a1 + 128);
  swift_beginAccess();
  v29 = v16;
  if ((*(v16 + 48))(a1 + v28, 1, AssociatedTypeWitness))
  {
    v30 = v74;
    v70(v74, 1, 1, AssociatedTypeWitness);
    sub_181F49A24(v26, v25, v27);
  }

  else
  {
    v60 = v16;
    v31 = v61;
    (*(v29 + 16))(v61, a1 + v28, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v63 = *(AssociatedConformanceWitness + 32);
    v33 = sub_181F49A24(v26, v25, v27);
    v34 = v74;
    v63(AssociatedTypeWitness, AssociatedConformanceWitness, v33);
    v35 = v31;
    v30 = v34;
    (*(v60 + 8))(v35, AssociatedTypeWitness);
    v70(v34, 0, 1, AssociatedTypeWitness);
  }

  v36 = v72;
  swift_beginAccess();
  (*(v75 + 40))(v2 + v36, v30, v77);
  swift_endAccess();
  v37 = *(*a1 + 136);
  swift_beginAccess();
  v38 = *(a1 + v37);
  v39 = v73;
  swift_beginAccess();
  v40 = *(v2 + v39);
  *(v2 + v39) = v38;
  v41 = v38;

  v42 = *(*a1 + 144);
  swift_beginAccess();
  v43 = *(a1 + v42);
  v44 = v76;
  swift_beginAccess();
  *(v2 + v44) = v43;

  v45 = qword_1ED411A90;
  swift_beginAccess();
  v46 = a1 + v45;
  v47 = v82;
  sub_181AACF84(v46, v82);
  v48 = v81;
  v49 = v83;
  if ((*(v81 + 48))(v47, 1, v83) == 1)
  {
    sub_181F49A88(v47, &qword_1EA838E00, &qword_182AFE8E0);
  }

  else
  {
    v50 = *(v48 + 32);
    v51 = v67;
    v50(v67, v47, v49);
    v52 = v68;
    sub_182AD2728();
    sub_182AD2718();
    (*(v48 + 8))(v51, v49);
    v53 = v69;
    v50(v69, v52, v49);
    v64(v53, 0, 1, v49);
    v54 = v66;
    swift_beginAccess();
    sub_181B2D2D8(v53, v2 + v54);
    swift_endAccess();
  }

  *(v2 + v80) = *(a1 + qword_1ED411A88);
  v55 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v55) = *(a1 + v55);
  v56 = v78;
  swift_beginAccess();
  *(v2 + v56) = v55;
  v57 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v57) = *(a1 + v57);
  v58 = v79;
  swift_beginAccess();
  *(v2 + v58) = v57;
  return v2;
}

uint64_t sub_181B44CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_181B5048C();
  *a1 = result;
  return result;
}

unint64_t sub_181B44D28()
{
  v90 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v83[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v83[-v3];
  v5 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v86 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v83[-v8];
  v9 = v0[3];
  v101 = v0[2];
  v102 = v9;
  v10 = v0[1];
  v99 = *v0;
  v100 = v10;
  v11 = v0[9];
  v12 = v0[11];
  v136 = v0[10];
  v137 = v12;
  v13 = v0[11];
  v138 = v0[12];
  v14 = v0[9];
  v134 = v0[8];
  v135 = v14;
  *(v133 + 12) = *(v0 + 264);
  v15 = *(v0 + 252);
  v16 = *(v0 + 220);
  v132 = *(v0 + 236);
  v133[0] = v15;
  v130 = v0[18];
  v131 = v16;
  v121 = v0[20];
  v124 = v0[22];
  v17 = *(v0 + 97);
  *&v105[24] = *(v0 + 14);
  *&v105[9] = v17;
  v19 = *(v0 + 8);
  v18 = *(v0 + 9);
  v141 = *(v0 + 80);
  *(&v104 + 1) = *(v0 + 81);
  HIDWORD(v104) = *(v0 + 21);
  v20 = *(v0 + 11);
  v140 = *(v0 + 96);
  v22 = *(v0 + 30);
  v21 = *(v0 + 31);
  v139 = *(v0 + 26);
  v23 = *(v0 + 216);
  v24 = *(v0 + 217);
  v25 = *(v0 + 219);
  v26 = *(v0 + 35);
  v28 = *(v0 + 38);
  v27 = *(v0 + 39);
  v29 = *(v0 + 42);
  v30 = *(v0 + 43);
  v31 = *(v0 + 46);
  v32 = *(v0 + 47);
  LOBYTE(v104) = v141;
  v33 = *(v0 + 48);
  *&v103 = v19;
  *(&v103 + 1) = v18;
  v87 = v18;
  v88 = v20;
  *v105 = v20;
  v105[8] = v140;
  *&v105[32] = v22;
  v92 = v21;
  *v106 = v21;
  *&v106[4] = v134;
  *&v106[20] = v11;
  v34 = v0[12];
  v110 = *(v0 + 26);
  v108 = v13;
  v109 = v34;
  v107 = v136;
  v111 = v23;
  v94 = v24;
  v112 = v24;
  v96 = v25;
  v113 = v25;
  v35 = *(v0 + 220);
  v36 = *(v0 + 236);
  v37 = *(v0 + 252);
  *&v116[12] = *(v0 + 264);
  *v116 = v37;
  v115 = v36;
  v114 = v35;
  v117 = v26;
  v118 = v0[18];
  v119 = v28;
  v120 = v27;
  v122 = v29;
  v123 = v30;
  v91 = v30;
  v38 = v31;
  v125 = v31;
  v126 = v32;
  v127 = v33;
  v128 = sub_181AC9A6C();
  v129 = v39;
  v95 = v26;
  v40 = *(v26 + 16);
  v93 = v23;
  if (v23)
  {
    sensitive_redacted = nw_context_get_sensitive_redacted(v40);
  }

  else
  {
    sensitive_redacted = nw_context_get_private_redacted(v40);
  }

  v84 = sensitive_redacted;
  v42 = v38;
  if (v27)
  {
    strcpy(&v99, ", bundle id: ");
    HIWORD(v99) = -4864;
    MEMORY[0x1865D9CA0](v28, v27);
    MEMORY[0x1865D9CA0](v99, *(&v99 + 1));
  }

  v43 = v96;
  if (!v32)
  {
LABEL_13:
    if (!v38)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v44 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v32 + v44, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_181AB7264(v4, type metadata accessor for Endpoint.EndpointType);
    goto LABEL_13;
  }

  v45 = v85;
  sub_181B2BEE4(v4, v85);
  if ((v43 & 0x20) == 0)
  {
    if (v84)
    {
      *&v99 = 0;
      *(&v99 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v99 = 0xD00000000000001ALL;
      *(&v99 + 1) = 0x8000000182BD4D50;
      sub_181B4B8F0();
      if (v46)
      {
        v47 = swift_slowAlloc();
        v48 = sub_182AD3048();

        __nwlog_create_hash_from_private_string((v48 + 32), v47);

        v49 = sub_182AD3158();
        v51 = v50;
        MEMORY[0x1865DF520](v47, -1, -1);
        v52 = v49;
      }

      else
      {
        v52 = 0x3E6C6C756E3CLL;
        v51 = 0xE600000000000000;
      }
    }

    else
    {
      v65 = sub_181B4B8F0();
      if (!v66)
      {
        goto LABEL_28;
      }

      v67 = v65;
      v51 = v66;
      *&v99 = 0;
      *(&v99 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v99 = 0xD000000000000015;
      *(&v99 + 1) = 0x8000000182BD4D30;
      v52 = v67;
    }

    MEMORY[0x1865D9CA0](v52, v51);

    MEMORY[0x1865D9CA0](v99, *(&v99 + 1));

LABEL_28:
    sub_181AB7264(v45, type metadata accessor for URLEndpoint);
    v43 = v96;
    if (!v42)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  sub_181AB7264(v45, type metadata accessor for URLEndpoint);
  if (!v42)
  {
LABEL_29:
    if (v141)
    {
      goto LABEL_30;
    }

    goto LABEL_100;
  }

LABEL_14:
  v53 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  v54 = v42 + v53;
  v55 = v89;
  sub_181ACC828(v54, v89, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v63 = type metadata accessor for Endpoint.EndpointType;
    v64 = v55;
    goto LABEL_99;
  }

  v56 = v86;
  sub_181B2BEE4(v55, v86);
  if ((v43 & 0x20) == 0)
  {
    if (v84)
    {
      strcpy(&v99, ", url hash: ");
      BYTE13(v99) = 0;
      HIWORD(v99) = -5120;
      sub_181B4B8F0();
      if (v57)
      {
        v58 = swift_slowAlloc();
        v59 = sub_182AD3048();

        __nwlog_create_hash_from_private_string((v59 + 32), v58);

        v60 = sub_182AD3158();
        v62 = v61;
        MEMORY[0x1865DF520](v58, -1, -1);
      }

      else
      {
        v60 = 0x3E6C6C756E3CLL;
        v62 = 0xE600000000000000;
      }

      v68 = v60;
      v69 = v62;
      goto LABEL_97;
    }

    v68 = sub_181B4B8F0();
    if (v69)
    {
      strcpy(&v99, ", url: ");
      *(&v99 + 1) = 0xE700000000000000;
LABEL_97:
      MEMORY[0x1865D9CA0](v68, v69);

      MEMORY[0x1865D9CA0](v99, *(&v99 + 1));
    }
  }

  v63 = type metadata accessor for URLEndpoint;
  v64 = v56;
LABEL_99:
  sub_181AB7264(v64, v63);
  if (v141)
  {
LABEL_30:
    if (v140)
    {
      goto LABEL_31;
    }

    goto LABEL_101;
  }

LABEL_100:
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v99 = 0xD000000000000015;
  *(&v99 + 1) = 0x8000000182BD4D10;
  v97 = v87;
  v81 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v81);

  MEMORY[0x1865D9CA0](v99, *(&v99 + 1));

  if (v140)
  {
LABEL_31:
    if ((v22 & 2) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_101:
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v99 = 0xD000000000000012;
  *(&v99 + 1) = 0x8000000182BD4CF0;
  v97 = v88;
  v82 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v82);

  MEMORY[0x1865D9CA0](v99, *(&v99 + 1));

  if ((v22 & 2) != 0)
  {
LABEL_32:
    MEMORY[0x1865D9CA0](0x6F2D74736166202CLL, 0xEB000000006E6570);
  }

LABEL_33:
  v70 = sub_181FB974C(7564404, 0xE300000000000000);
  v71 = v70 == 39;
  if (v70 == 39)
  {
    v72 = 7564404;
  }

  else
  {
    v72 = v70;
  }

  LOWORD(v99) = 3;
  if (v70 == 39)
  {
    v73 = 0xE300000000000000;
  }

  else
  {
    v73 = 0;
  }

  *(&v99 + 1) = v72;
  *&v100 = v73;
  BYTE8(v100) = v70 == 39;
  v74 = sub_181AC95F0(&v99);
  sub_181F48350(v72, v73, v71);
  if (v74)
  {
    MEMORY[0x1865D9CA0](0x736C74202CLL, 0xE500000000000000);
    v76 = v92;
    v75 = v93;
    if ((v92 & 2) != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v76 = v92;
    v75 = v93;
    if ((v92 & 2) != 0)
    {
LABEL_41:
      if ((v22 & 0x200) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  MEMORY[0x1865D9CA0](0x696E69666564202CLL, 0xEA00000000006574);
  if ((v22 & 0x200) == 0)
  {
LABEL_42:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_53;
  }

LABEL_52:
  MEMORY[0x1865D9CA0](0x726576726573202CLL, 0xE800000000000000);
  if ((v22 & 0x2000) == 0)
  {
LABEL_43:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_53:
  MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD4B20);
  if ((v22 & 0x4000) == 0)
  {
LABEL_44:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_55;
  }

LABEL_54:
  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD4B00);
  if ((v22 & 0x8000) == 0)
  {
LABEL_45:
    if ((v76 & 0x200) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_56;
  }

LABEL_55:
  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD4AE0);
  if ((v76 & 0x200) == 0)
  {
LABEL_46:
    if ((v22 & 0x20000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_57;
  }

LABEL_56:
  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4AC0);
  if ((v22 & 0x20000) == 0)
  {
LABEL_47:
    MEMORY[0x1865D9CA0](0xD000000000000023, 0x8000000182BD49A0);
    if ((v22 & 0x40000) != 0)
    {
      goto LABEL_48;
    }

LABEL_58:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_57:
  if ((v22 & 0x40000) == 0)
  {
    goto LABEL_58;
  }

LABEL_48:
  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD4A80);
  if ((v22 & 0x80000) != 0)
  {
LABEL_59:
    MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD4A60);
  }

LABEL_60:
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v99 = 0x626972747461202CLL;
  *(&v99 + 1) = 0xEF203A6E6F697475;
  if (v75)
  {
    if (v75 == 1)
    {
      v77 = 0xE400000000000000;
      v78 = 1919251317;
    }

    else
    {
      v77 = 0xE700000000000000;
      v78 = 0x65746973626577;
    }
  }

  else
  {
    v77 = 0xE900000000000072;
    v78 = 0x65706F6C65766564;
  }

  MEMORY[0x1865D9CA0](v78, v77);

  MEMORY[0x1865D9CA0](v99, *(&v99 + 1));

  if ((v22 & 0x100000) != 0)
  {
    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD4A40);
    if ((v22 & 0x20) == 0)
    {
LABEL_67:
      if ((v76 & 0x800) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_83;
    }
  }

  else if ((v22 & 0x20) == 0)
  {
    goto LABEL_67;
  }

  MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD4F60);
  if ((v76 & 0x800) == 0)
  {
LABEL_68:
    if ((v76 & 0x1000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_84;
  }

LABEL_83:
  MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD4F40);
  if ((v76 & 0x1000) == 0)
  {
LABEL_69:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_85;
  }

LABEL_84:
  MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BD4F20);
  if ((v22 & 0x200000) == 0)
  {
LABEL_70:
    if ((v76 & 0x2000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_86;
  }

LABEL_85:
  MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD4F00);
  if ((v76 & 0x2000) == 0)
  {
LABEL_71:
    if ((v76 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

LABEL_86:
  MEMORY[0x1865D9CA0](0x64756C636E69202CLL, 0xED0000656C622065);
  if ((v76 & 0x4000) == 0)
  {
LABEL_72:
    if ((v76 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_88;
  }

LABEL_87:
  MEMORY[0x1865D9CA0](0x6E6565726373202CLL, 0xEC00000066666F20);
  if ((v76 & 0x8000) == 0)
  {
LABEL_73:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_89;
  }

LABEL_88:
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD4A20);
  if ((v22 & 0x400000) == 0)
  {
LABEL_74:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_90;
  }

LABEL_89:
  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD49D0);
  if ((v22 & 0x100) == 0)
  {
LABEL_75:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_91;
  }

LABEL_90:
  MEMORY[0x1865D9CA0](0x206C61636F6C202CLL, 0xEC000000796C6E6FLL);
  if ((v22 & 0x800000) == 0)
  {
LABEL_76:
    if ((v76 & 0x20000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_92;
  }

LABEL_91:
  MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD4EE0);
  if ((v76 & 0x20000) == 0)
  {
LABEL_77:
    if ((v76 & 0x40000) == 0)
    {
      goto LABEL_78;
    }

LABEL_93:
    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BD4E90);
    if ((v76 & 0x80000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_92:
  MEMORY[0x1865D9CA0](0xD00000000000002DLL, 0x8000000182BD4EB0);
  if ((v76 & 0x40000) != 0)
  {
    goto LABEL_93;
  }

LABEL_78:
  if ((v76 & 0x80000) != 0)
  {
LABEL_79:
    MEMORY[0x1865D9CA0](0xD00000000000002BLL, 0x8000000182BD4E60);
  }

LABEL_80:
  v97 = 8236;
  v98 = 0xE200000000000000;
  v101 = v136;
  v102 = v137;
  v103 = v138;
  v104 = v139;
  v99 = v134;
  v100 = v135;
  v105[0] = v75;
  *&v105[1] = v94;
  v105[3] = v43;
  *&v106[12] = *(v133 + 12);
  *v106 = v133[0];
  *&v105[20] = v132;
  *&v105[4] = v131;
  *&v106[28] = v95;
  v107 = v130;
  v79 = sub_181B45AB4();
  MEMORY[0x1865D9CA0](v79);

  MEMORY[0x1865D9CA0](v97, v98);

  return v128;
}

uint64_t sub_181B45AB4()
{
  v1 = *v0;
  v363 = v0[1];
  v364 = v1;
  v2 = v0[2];
  v361 = v0[3];
  v362 = v2;
  v3 = v0[4];
  v359 = v0[5];
  v360 = v3;
  v391 = v0[6];
  v390 = v0[7];
  v389 = v0[8];
  v388 = v0[9];
  v387 = v0[10];
  v4 = v0[11];
  v385 = v0[12];
  v386 = v4;
  v5 = v0[13];
  v383 = v0[14];
  v384 = v5;
  v382 = v0[15];
  v6 = v0[16];
  v377 = v0[17];
  v378 = v6;
  v7 = v0[18];
  v375 = v0[19];
  v376 = v7;
  v8 = v0[20];
  v373 = v0[21];
  v374 = v8;
  v9 = v0[22];
  v371 = v0[23];
  v372 = v9;
  v10 = v0[24];
  v357 = v0[25];
  v358 = v10;
  v11 = v0[26];
  v355 = v0[27];
  v356 = v11;
  v447 = v0[48];
  v446[0] = *(v0 + 49);
  *(v446 + 3) = *(v0 + 13);
  v445 = v0[64];
  v443 = *(v0 + 65);
  v444 = v0[67];
  *&v406 = 0;
  *(&v406 + 1) = 0xE000000000000000;
  v397 = v0[28];
  v396 = v0[29];
  v395 = v0[30];
  v394 = v0[31];
  v12 = *(v0 + 4);
  v343 = *(v0 + 5);
  v344 = v12;
  v345 = *(v0 + 7);
  LODWORD(v12) = *(v0 + 17);
  v369 = *(v0 + 18);
  v370 = v12;
  v368 = *(v0 + 19);
  v393 = v0[80];
  LODWORD(v12) = v0[81];
  v392 = v0[82];
  v13 = v0[83];
  v353 = v12;
  v354 = v13;
  LODWORD(v12) = v0[84];
  v351 = v0[85];
  v352 = v12;
  v350 = v0[86];
  v401 = v0[87];
  v14 = *(v0 + 44);
  v381 = v0[90];
  v399 = v0[91];
  v15 = *(v0 + 46);
  v16 = *(v0 + 47);
  v18 = *(v0 + 12);
  v17 = *(v0 + 13);
  v19 = *(v0 + 14);
  v347 = *(v0 + 15);
  v348 = v17;
  v20 = *(v0 + 17);
  v379 = *(v0 + 16);
  v380 = v19;
  v346 = v20;
  v21 = *(v0 + 18);
  v22 = *(v0 + 19);
  v23 = *(v0 + 21);
  v365 = *(v0 + 20);
  v366 = v21;
  v349 = v23;
  sub_182AD3BA8();

  strcpy(&v406, "context: ");
  HIDWORD(v406) = -385875968;
  nw_context_get_identifier(*(v22 + 16));
  v24 = sub_182AD3158();
  MEMORY[0x1865D9CA0](v24);

  MEMORY[0x1865D9CA0](10272, 0xE200000000000000);
  v367 = v22;
  v25 = sub_181B48EB4();
  v398 = v18;
  v341 = v16;
  v342 = v14;
  v400 = v15;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = 0xE900000000000065;
      v27 = 0x76697469736E6573;
    }

    else
    {
      v26 = 0xE600000000000000;
      v27 = 0x746E656C6973;
    }
  }

  else if (v25)
  {
    v26 = 0xE700000000000000;
    v27 = 0x65746176697270;
  }

  else
  {
    v26 = 0xE600000000000000;
    v27 = 0x63696C627570;
  }

  MEMORY[0x1865D9CA0](v27, v26);

  v28 = MEMORY[0x1865D9CA0](0x3A636F7270202C29, 0xE900000000000020);
  MEMORY[0x1EEE9AC00](v28);
  v323 = v364;
  v324 = v363;
  v325 = v362;
  v326 = v361;
  v327 = v360;
  v328 = v359;
  v329 = v391;
  v330 = v390;
  v331 = v389;
  v332 = v388;
  v333 = v387;
  v334 = v386;
  v335 = v385;
  v336 = v384;
  v337 = v383;
  v338 = v382;
  v29 = 0;
  v30 = sub_182AD30D8();
  MEMORY[0x1865D9CA0](v30);

  v442 = v406;
  LOBYTE(v406) = v364;
  BYTE1(v406) = v363;
  BYTE2(v406) = v362;
  BYTE3(v406) = v361;
  BYTE4(v406) = v360;
  BYTE5(v406) = v359;
  BYTE6(v406) = v391;
  BYTE7(v406) = v390;
  BYTE8(v406) = v389;
  BYTE9(v406) = v388;
  BYTE10(v406) = v387;
  BYTE11(v406) = v386;
  BYTE12(v406) = v385;
  BYTE13(v406) = v384;
  BYTE14(v406) = v383;
  HIBYTE(v406) = v382;
  LOBYTE(v404) = v378;
  BYTE1(v404) = v377;
  BYTE2(v404) = v376;
  BYTE3(v404) = v375;
  BYTE4(v404) = v374;
  BYTE5(v404) = v373;
  BYTE6(v404) = v372;
  BYTE7(v404) = v371;
  v32 = v357;
  v31 = v358;
  BYTE8(v404) = v358;
  BYTE9(v404) = v357;
  v34 = v355;
  v33 = v356;
  BYTE10(v404) = v356;
  BYTE11(v404) = v355;
  v35 = v397;
  BYTE12(v404) = v397;
  v36 = v396;
  BYTE13(v404) = v396;
  v37 = v395;
  BYTE14(v404) = v395;
  v38 = v394;
  HIBYTE(v404) = v394;
  v39 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v406, &v404);
  if (!v39)
  {
    v340 = &v339;
    *&v406 = 0xD000000000000012;
    *(&v406 + 1) = 0x8000000182BE2AF0;
    MEMORY[0x1EEE9AC00](v39);
    v323 = v378;
    v324 = v377;
    v325 = v376;
    v326 = v375;
    v327 = v374;
    v328 = v373;
    v329 = v372;
    v330 = v371;
    v331 = v31;
    v332 = v32;
    v333 = v33;
    v334 = v34;
    v335 = v35;
    v336 = v36;
    v337 = v37;
    v338 = v38;
    v40 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v40);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

  v41 = v393;
  v42 = v353;
  if ((v447 & 1) == 0)
  {
    v47 = v343;
    v46 = v344;
    v48 = HIWORD(v343);
    strcpy(&v406, ", persona: ");
    HIDWORD(v406) = -352321536;
    v49 = HIBYTE(v343);
    MEMORY[0x1EEE9AC00](HIWORD(v344));
    v322[-16] = v46;
    v322[-15] = v50;
    v322[-14] = v51;
    v322[-13] = v52;
    v322[-12] = v53;
    v322[-11] = v54;
    v322[-10] = v55;
    v322[-9] = v56;
    v322[-8] = v47;
    v322[-7] = v57;
    v322[-6] = v58;
    v322[-5] = v59;
    v322[-4] = v60;
    v322[-3] = v61;
    v322[-2] = v48;
    v322[-1] = v49;
    v62 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v62);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

    v43 = v392;
    v44 = v368;
    v45 = v398;
    if (v445)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v43 = v392;
  v44 = v368;
  v45 = v398;
  if ((v445 & 1) == 0)
  {
LABEL_14:
    *&v406 = 0xD000000000000012;
    *(&v406 + 1) = 0x8000000182BE2FB0;
    *&v404 = v345;
    v63 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v63);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

    v44 = v368;
  }

LABEL_15:
  if (v44)
  {
    *&v406 = 0xD000000000000011;
    *(&v406 + 1) = 0x8000000182BD4940;
    LODWORD(v404) = v44;
    v64 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v64);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

  if (v370 != getpid())
  {
    strcpy(&v406, ", pid: ");
    *(&v406 + 1) = 0xE700000000000000;
    LODWORD(v404) = v370;
    v65 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v65);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

  if (v369 == getuid())
  {
    if (v41 == 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    strcpy(&v406, ", uid: ");
    *(&v406 + 1) = 0xE700000000000000;
    LODWORD(v404) = v369;
    v66 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v66);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

    if (v41 == 5)
    {
LABEL_21:
      if (v42 == 5)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }
  }

  *&v406 = 0xD00000000000001BLL;
  *(&v406 + 1) = 0x8000000182BE2F90;
  if (v41 <= 1)
  {
    if (v41)
    {
      v68 = 0xE400000000000000;
      v67 = 1768319351;
    }

    else
    {
      v68 = 0xE500000000000000;
      v67 = 0x726568746FLL;
    }
  }

  else if (v41 == 2)
  {
    v68 = 0xE800000000000000;
    v67 = 0x72616C756C6C6563;
  }

  else if (v41 == 3)
  {
    v67 = 0x7465206465726977;
    v68 = 0xEE0074656E726568;
  }

  else
  {
    v68 = 0xE800000000000000;
    v67 = 0x6B636162706F6F6CLL;
  }

  MEMORY[0x1865D9CA0](v67, v68);

  MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

  if (v42 != 5)
  {
LABEL_34:
    *&v406 = 0xD00000000000001ELL;
    *(&v406 + 1) = 0x8000000182BE2F70;
    if (v42 <= 1)
    {
      if (v42)
      {
        v70 = 0x8000000182BD71B0;
        v69 = 0xD000000000000013;
      }

      else
      {
        v70 = 0xE500000000000000;
        v69 = 0x726568746FLL;
      }
    }

    else if (v42 == 2)
    {
      v69 = 0x6477615F69666977;
      v70 = 0xE90000000000006CLL;
    }

    else if (v42 == 3)
    {
      v69 = 0x7365636F72706F63;
      v70 = 0xEB00000000726F73;
    }

    else
    {
      v69 = 0x6F696E61706D6F63;
      v70 = 0xE90000000000006ELL;
    }

    MEMORY[0x1865D9CA0](v69, v70);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

LABEL_44:
  v71 = v351;
  v72 = v350;
  if (v352 == 5)
  {
    if (v351 == 5)
    {
      goto LABEL_46;
    }
  }

  else
  {
    *&v406 = 0xD000000000000024;
    *(&v406 + 1) = 0x8000000182BE2F40;
    if (v352 <= 1)
    {
      if (v352)
      {
        v92 = 0xE400000000000000;
        v91 = 1768319351;
      }

      else
      {
        v92 = 0xE500000000000000;
        v91 = 0x726568746FLL;
      }
    }

    else if (v352 == 2)
    {
      v92 = 0xE800000000000000;
      v91 = 0x72616C756C6C6563;
    }

    else if (v352 == 3)
    {
      v91 = 0x7465206465726977;
      v92 = 0xEE0074656E726568;
    }

    else
    {
      v92 = 0xE800000000000000;
      v91 = 0x6B636162706F6F6CLL;
    }

    MEMORY[0x1865D9CA0](v91, v92);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

    if (v71 == 5)
    {
LABEL_46:
      if (!v381)
      {
        goto LABEL_47;
      }

      goto LABEL_488;
    }
  }

  *&v406 = 0xD000000000000027;
  *(&v406 + 1) = 0x8000000182BE2F10;
  if (v71 <= 1)
  {
    if (v71)
    {
      v319 = 0x8000000182BD71B0;
      v318 = 0xD000000000000013;
    }

    else
    {
      v319 = 0xE500000000000000;
      v318 = 0x726568746FLL;
    }
  }

  else if (v71 == 2)
  {
    v318 = 0x6477615F69666977;
    v319 = 0xE90000000000006CLL;
  }

  else if (v71 == 3)
  {
    v318 = 0x7365636F72706F63;
    v319 = 0xEB00000000726F73;
  }

  else
  {
    v318 = 0x6F696E61706D6F63;
    v319 = 0xE90000000000006ELL;
  }

  MEMORY[0x1865D9CA0](v318, v319);

  MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

  if (!v381)
  {
LABEL_47:
    if (!v43)
    {
      goto LABEL_55;
    }

    goto LABEL_48;
  }

LABEL_488:
  *&v406 = 0xD000000000000015;
  *(&v406 + 1) = 0x8000000182BD4960;
  if (v381 <= 2)
  {
    if (v381 == 1)
    {
      v320 = 0xE800000000000000;
      v321 = 0x7265766F646E6168;
    }

    else
    {
      v320 = 0xEB00000000657669;
      v321 = 0x7463617265746E69;
    }
  }

  else if (v381 == 3)
  {
    v320 = 0xE900000000000065;
    v321 = 0x7461676572676761;
  }

  else if (v381 == 4)
  {
    v320 = 0xEB00000000646573;
    v321 = 0x6142746567726174;
  }

  else
  {
    v320 = 0xEC0000007265766FLL;
    v321 = 0x646E614865727570;
  }

  MEMORY[0x1865D9CA0](v321, v320);

  MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

  if (v43)
  {
LABEL_48:
    *&v406 = 0xD000000000000018;
    *(&v406 + 1) = 0x8000000182BD4980;
    if (v43 == 2)
    {
      v73 = 0x64696F7661;
    }

    else
    {
      v73 = 0x726566657270;
    }

    if (v43 == 2)
    {
      v74 = 0xE500000000000000;
    }

    else
    {
      v74 = 0xE600000000000000;
    }

    MEMORY[0x1865D9CA0](v73, v74);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

LABEL_55:
  if (v354)
  {
    *&v406 = 0xD000000000000025;
    *(&v406 + 1) = 0x8000000182BE2B10;
    if (v354 == 2)
    {
      v75 = 0x70752069662D6977;
    }

    else
    {
      v75 = 0xD000000000000011;
    }

    if (v354 == 2)
    {
      v76 = 0xED00006564617267;
    }

    else
    {
      v76 = 0x8000000182BD4AA0;
    }

    MEMORY[0x1865D9CA0](v75, v76);

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

  if (v72)
  {
    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BE2EF0);
    if ((v72 & 2) == 0)
    {
LABEL_65:
      if ((v401 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_107;
    }
  }

  else if ((v72 & 2) == 0)
  {
    goto LABEL_65;
  }

  MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BE2ED0);
  if ((v401 & 1) == 0)
  {
LABEL_66:
    if ((v401 & 2) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_108;
  }

LABEL_107:
  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4CB0);
  if ((v401 & 2) == 0)
  {
LABEL_67:
    if ((v399 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_109;
  }

LABEL_108:
  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BE2EB0);
  if ((v399 & 1) == 0)
  {
LABEL_68:
    if ((v400 & 2) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_110;
  }

LABEL_109:
  MEMORY[0x1865D9CA0](0x6F7270206F6E202CLL, 0xEA00000000007978);
  if ((v400 & 2) == 0)
  {
LABEL_69:
    if ((v400 & 4) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_111;
  }

LABEL_110:
  MEMORY[0x1865D9CA0](0x776120657375202CLL, 0xEA00000000006C64);
  if ((v400 & 4) == 0)
  {
LABEL_70:
    if ((v400 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_112;
  }

LABEL_111:
  MEMORY[0x1865D9CA0](0x327020657375202CLL, 0xE900000000000070);
  if ((v400 & 8) == 0)
  {
LABEL_71:
    if ((v400 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_113;
  }

LABEL_112:
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BE2E90);
  if ((v400 & 0x10) == 0)
  {
LABEL_72:
    if ((v399 & 2) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_114;
  }

LABEL_113:
  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BE2E70);
  if ((v399 & 2) == 0)
  {
LABEL_73:
    if ((v72 & 4) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_115;
  }

LABEL_114:
  MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BE2E50);
  if ((v72 & 4) == 0)
  {
LABEL_74:
    if ((v401 & 4) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_116;
  }

LABEL_115:
  MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BE2E30);
  if ((v401 & 4) == 0)
  {
LABEL_75:
    if ((v399 & 4) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_117;
  }

LABEL_116:
  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BE2E10);
  if ((v399 & 4) == 0)
  {
LABEL_76:
    if ((v399 & 8) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_118;
  }

LABEL_117:
  MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD4C90);
  if ((v399 & 8) == 0)
  {
LABEL_77:
    if ((v72 & 8) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_119;
  }

LABEL_118:
  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4C70);
  if ((v72 & 8) == 0)
  {
LABEL_78:
    if ((v72 & 0x20) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_120;
  }

LABEL_119:
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD4C50);
  if ((v72 & 0x20) == 0)
  {
LABEL_79:
    if ((v399 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_120:
  MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD4C30);
  if ((v399 & 0x10) != 0)
  {
LABEL_80:
    MEMORY[0x1865D9CA0](0xD000000000000023, 0x8000000182BD4C00);
  }

LABEL_81:
  v77 = v400;
  v78 = v349;
  if ((v401 & 8) != 0)
  {
    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD4BE0);
    if ((v401 & 0x10) == 0)
    {
LABEL_83:
      if ((v401 & 0x20) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_124;
    }
  }

  else if ((v401 & 0x10) == 0)
  {
    goto LABEL_83;
  }

  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD4BC0);
  if ((v401 & 0x20) == 0)
  {
LABEL_84:
    if ((v77 & 0x40) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_125;
  }

LABEL_124:
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD4BA0);
  if ((v77 & 0x40) == 0)
  {
LABEL_85:
    if ((v77 & 0x80) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_126;
  }

LABEL_125:
  MEMORY[0x1865D9CA0](0x206E776F6E6B202CLL, 0xEF72656B63617274);
  if ((v77 & 0x80) == 0)
  {
LABEL_86:
    if ((v77 & 0x100) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_127;
  }

LABEL_126:
  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD4B80);
  if ((v77 & 0x100) == 0)
  {
LABEL_87:
    if ((v77 & 0x200) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_128;
  }

LABEL_127:
  MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD4B60);
  if ((v77 & 0x200) == 0)
  {
LABEL_88:
    if ((v77 & 0x400) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_129;
  }

LABEL_128:
  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BE2DF0);
  if ((v77 & 0x400) == 0)
  {
LABEL_89:
    if ((v77 & 0x800) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_130;
  }

LABEL_129:
  MEMORY[0x1865D9CA0](0x65732D626577202CLL, 0xEC00000068637261);
  if ((v77 & 0x800) == 0)
  {
LABEL_90:
    if ((v77 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_131;
  }

LABEL_130:
  MEMORY[0x1865D9CA0](0x657020657375202CLL, 0xED0000616E6F7372);
  if ((v77 & 0x1000) == 0)
  {
LABEL_91:
    if ((v77 & 0x2000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_132;
  }

LABEL_131:
  MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BE2DD0);
  if ((v77 & 0x2000) == 0)
  {
LABEL_92:
    if (!v380)
    {
      goto LABEL_93;
    }

    goto LABEL_133;
  }

LABEL_132:
  MEMORY[0x1865D9CA0](0xD000000000000020, 0x8000000182BE2DA0);
  if (!v380)
  {
LABEL_93:
    if (!v78)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_133:
  sensitive_redacted = nw_context_get_sensitive_redacted(*(v367 + 16));
  strcpy(&v406, ", account id: ");
  HIBYTE(v406) = -18;
  if (sensitive_redacted)
  {
    v94 = sub_181CFDB48(v348);
    MEMORY[0x1865D9CA0](v94);
  }

  else
  {
    MEMORY[0x1865D9CA0](v348, v380);
  }

  MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

  if (!v78)
  {
    goto LABEL_95;
  }

LABEL_94:
  *&v406 = 0xD000000000000011;
  *(&v406 + 1) = 0x8000000182BE2D80;
  v79 = v78;
  v80 = [v79 description];
  v81 = sub_182AD2F88();
  v83 = v82;

  MEMORY[0x1865D9CA0](v81, v83);
  v45 = v398;

  MEMORY[0x1865D9CA0](v406, *(&v406 + 1));

LABEL_95:
  if (v45)
  {
    v84 = v45[2];
    if (v84)
    {
      *&v406 = 0xD000000000000016;
      *(&v406 + 1) = 0x8000000182BE2D60;
      v85 = v84[5];
      v86 = v84[6];

      MEMORY[0x1865D9CA0](v85, v86);
      v45 = v398;

      MEMORY[0x1865D9CA0](40, 0xE100000000000000);
      *&v404 = v84[2];
      v87 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v87);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
    }
  }

  v88 = v393;
  if (v379)
  {
    v89 = nw_context_get_sensitive_redacted(*(v367 + 16));
    *&v406 = 0xD000000000000017;
    *(&v406 + 1) = 0x8000000182BE2D40;
    if (v89)
    {
      v90 = sub_181CFDB48(v347);
      MEMORY[0x1865D9CA0](v90);
    }

    else
    {
      MEMORY[0x1865D9CA0](v347, v379);
    }

    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
  }

  v95 = v366;
  if (v366)
  {
    *&v406 = 0xD000000000000015;
    *(&v406 + 1) = 0x8000000182BE2D20;
    MEMORY[0x1865D9CA0](v346, v366);
    MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
    v95 = v366;
  }

  if (!v45)
  {
    v114 = v377;
    v113 = v378;
    v116 = v375;
    v115 = v376;
    v118 = v373;
    v117 = v374;
    v120 = v371;
    v119 = v372;
    v121 = v357;
    v122 = v358;
    v124 = v355;
    v123 = v356;
    goto LABEL_433;
  }

  v96 = v45[3];
  v97 = v397;
  v98 = v396;
  v99 = v395;
  v100 = v394;
  if (!v96)
  {
    goto LABEL_247;
  }

  if (!v96[3])
  {
LABEL_170:
    if ((v400 & 0x1000) != 0)
    {

      v125.n128_f64[0] = MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BE2CE0);
      v126 = byte_1EEF96978;
      if ((sub_181F44098(byte_1EEF96978, v96, v125) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v128 = 0xE400000000000000;
        v129 = 0xE800000000000000;
        v130 = 0x72616C756C6C6563;
        v131 = 0x7465206465726977;
        v132 = 0xEE0074656E726568;
        if (v126 != 3)
        {
          v131 = 0x6B636162706F6F6CLL;
          v132 = 0xE800000000000000;
        }

        if (v126 != 2)
        {
          v130 = v131;
          v129 = v132;
        }

        v133 = 0x726568746FLL;
        if (v126)
        {
          v133 = 1768319351;
        }

        else
        {
          v128 = 0xE500000000000000;
        }

        if (v126 <= 1)
        {
          v134 = v133;
        }

        else
        {
          v134 = v130;
        }

        if (v126 <= 1)
        {
          v135 = v128;
        }

        else
        {
          v135 = v129;
        }

        MEMORY[0x1865D9CA0](v134, v135);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v136 = byte_1EEF96979;
      if ((sub_181F44098(byte_1EEF96979, v96, v127) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v138 = 0xE400000000000000;
        v139 = 0xE800000000000000;
        v140 = 0x72616C756C6C6563;
        v141 = 0x7465206465726977;
        v142 = 0xEE0074656E726568;
        if (v136 != 3)
        {
          v141 = 0x6B636162706F6F6CLL;
          v142 = 0xE800000000000000;
        }

        if (v136 != 2)
        {
          v140 = v141;
          v139 = v142;
        }

        v143 = 0x726568746FLL;
        if (v136)
        {
          v143 = 1768319351;
        }

        else
        {
          v138 = 0xE500000000000000;
        }

        if (v136 <= 1)
        {
          v144 = v143;
        }

        else
        {
          v144 = v140;
        }

        if (v136 <= 1)
        {
          v145 = v138;
        }

        else
        {
          v145 = v139;
        }

        MEMORY[0x1865D9CA0](v144, v145);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v146 = byte_1EEF9697A;
      if ((sub_181F44098(byte_1EEF9697A, v96, v137) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v148 = 0xE400000000000000;
        v149 = 0xE800000000000000;
        v150 = 0x72616C756C6C6563;
        v151 = 0x7465206465726977;
        v152 = 0xEE0074656E726568;
        if (v146 != 3)
        {
          v151 = 0x6B636162706F6F6CLL;
          v152 = 0xE800000000000000;
        }

        if (v146 != 2)
        {
          v150 = v151;
          v149 = v152;
        }

        v153 = 0x726568746FLL;
        if (v146)
        {
          v153 = 1768319351;
        }

        else
        {
          v148 = 0xE500000000000000;
        }

        if (v146 <= 1)
        {
          v154 = v153;
        }

        else
        {
          v154 = v150;
        }

        if (v146 <= 1)
        {
          v155 = v148;
        }

        else
        {
          v155 = v149;
        }

        MEMORY[0x1865D9CA0](v154, v155);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v156 = byte_1EEF9697B;
      if ((sub_181F44098(byte_1EEF9697B, v96, v147) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v158 = 0xE400000000000000;
        v159 = 0xE800000000000000;
        v160 = 0x72616C756C6C6563;
        v161 = 0x7465206465726977;
        v162 = 0xEE0074656E726568;
        if (v156 != 3)
        {
          v161 = 0x6B636162706F6F6CLL;
          v162 = 0xE800000000000000;
        }

        if (v156 != 2)
        {
          v160 = v161;
          v159 = v162;
        }

        v163 = 0x726568746FLL;
        if (v156)
        {
          v163 = 1768319351;
        }

        else
        {
          v158 = 0xE500000000000000;
        }

        if (v156 <= 1)
        {
          v164 = v163;
        }

        else
        {
          v164 = v160;
        }

        if (v156 <= 1)
        {
          v165 = v158;
        }

        else
        {
          v165 = v159;
        }

        MEMORY[0x1865D9CA0](v164, v165);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v166 = byte_1EEF9697C;
      if ((sub_181F44098(byte_1EEF9697C, v96, v157) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v167 = 0xE400000000000000;
        v168 = 0xE800000000000000;
        v169 = 0x72616C756C6C6563;
        v170 = 0x7465206465726977;
        v171 = 0xEE0074656E726568;
        if (v166 != 3)
        {
          v170 = 0x6B636162706F6F6CLL;
          v171 = 0xE800000000000000;
        }

        if (v166 != 2)
        {
          v169 = v170;
          v168 = v171;
        }

        v172 = 0x726568746FLL;
        if (v166)
        {
          v172 = 1768319351;
        }

        else
        {
          v167 = 0xE500000000000000;
        }

        if (v166 <= 1)
        {
          v173 = v172;
        }

        else
        {
          v173 = v169;
        }

        if (v166 <= 1)
        {
          v174 = v167;
        }

        else
        {
          v174 = v168;
        }

        MEMORY[0x1865D9CA0](v173, v174);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v97 = v397;
      v98 = v396;
      v99 = v395;
      v100 = v394;
    }

    goto LABEL_247;
  }

  v340 = 0;

  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BE2D00);
  v101 = v96[4];
  if (v96[2] >= v96[3] + v101)
  {
    v102 = v96[3] + v101;
  }

  else
  {
    v102 = v96[2];
  }

  *&v406 = v96;
  *(&v406 + 1) = v101;
  *&v407 = v102;

  v104 = v96;
  v339 = v96;
  while (1)
  {
    if (v101 != v102)
    {
      goto LABEL_146;
    }

    if ((sub_181AC81FC(v103) & 1) == 0)
    {
      break;
    }

    v101 = *(&v406 + 1);
    v104 = v406;
LABEL_146:
    v105 = v104 + v101++;
    *(&v406 + 1) = v101;
    v106 = v105[40];
    *&v404 = 32;
    *(&v404 + 1) = 0xE100000000000000;
    v107 = 0x7465206465726977;
    if (v106 != 3)
    {
      v107 = 0x6B636162706F6F6CLL;
    }

    v108 = 0xEE0074656E726568;
    if (v106 != 3)
    {
      v108 = 0xE800000000000000;
    }

    if (v106 == 2)
    {
      v107 = 0x72616C756C6C6563;
      v108 = 0xE800000000000000;
    }

    v109 = 0x726568746FLL;
    if (v106)
    {
      v109 = 1768319351;
      v110 = 0xE400000000000000;
    }

    else
    {
      v110 = 0xE500000000000000;
    }

    if (v106 <= 1)
    {
      v111 = v109;
    }

    else
    {
      v111 = v107;
    }

    if (v106 <= 1)
    {
      v112 = v110;
    }

    else
    {
      v112 = v108;
    }

    MEMORY[0x1865D9CA0](v111, v112);

    MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

    v102 = v407;
  }

  v45 = v398;
  v96 = v398[3];
  v29 = v340;
  LOBYTE(v43) = v392;
  v88 = v393;
  v97 = v397;
  v98 = v396;
  v99 = v395;
  v100 = v394;
  if (v96)
  {
    goto LABEL_170;
  }

LABEL_247:
  v175 = v45[4];
  if (!v175)
  {
    goto LABEL_344;
  }

  if (!v175[3])
  {
LABEL_272:
    if ((v400 & 0x2000) != 0)
    {

      v188.n128_f64[0] = MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BE2CA0);
      v189 = byte_1EEF969A0;
      if ((sub_181F44168(byte_1EEF969A0, v175, v188) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v191 = 0x7365636F72706F63;
        v192 = 0xEB00000000726F73;
        if (v189 != 3)
        {
          v191 = 0x6F696E61706D6F63;
          v192 = 0xE90000000000006ELL;
        }

        if (v189 == 2)
        {
          v191 = 0x6477615F69666977;
          v192 = 0xE90000000000006CLL;
        }

        v193 = 0xE500000000000000;
        v194 = 0x726568746FLL;
        if (v189)
        {
          v194 = 0xD000000000000013;
          v193 = 0x8000000182BD71B0;
        }

        if (v189 <= 1)
        {
          v195 = v194;
        }

        else
        {
          v195 = v191;
        }

        if (v189 <= 1)
        {
          v196 = v193;
        }

        else
        {
          v196 = v192;
        }

        MEMORY[0x1865D9CA0](v195, v196);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v197 = byte_1EEF969A1;
      if ((sub_181F44168(byte_1EEF969A1, v175, v190) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v199 = 0x7365636F72706F63;
        v200 = 0xEB00000000726F73;
        if (v197 != 3)
        {
          v199 = 0x6F696E61706D6F63;
          v200 = 0xE90000000000006ELL;
        }

        if (v197 == 2)
        {
          v199 = 0x6477615F69666977;
          v200 = 0xE90000000000006CLL;
        }

        v201 = 0xE500000000000000;
        v202 = 0x726568746FLL;
        if (v197)
        {
          v202 = 0xD000000000000013;
          v201 = 0x8000000182BD71B0;
        }

        if (v197 <= 1)
        {
          v203 = v202;
        }

        else
        {
          v203 = v199;
        }

        if (v197 <= 1)
        {
          v204 = v201;
        }

        else
        {
          v204 = v200;
        }

        MEMORY[0x1865D9CA0](v203, v204);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v205 = byte_1EEF969A2;
      if ((sub_181F44168(byte_1EEF969A2, v175, v198) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v207 = 0x7365636F72706F63;
        v208 = 0xEB00000000726F73;
        if (v205 != 3)
        {
          v207 = 0x6F696E61706D6F63;
          v208 = 0xE90000000000006ELL;
        }

        if (v205 == 2)
        {
          v207 = 0x6477615F69666977;
          v208 = 0xE90000000000006CLL;
        }

        v209 = 0xE500000000000000;
        v210 = 0x726568746FLL;
        if (v205)
        {
          v210 = 0xD000000000000013;
          v209 = 0x8000000182BD71B0;
        }

        if (v205 <= 1)
        {
          v211 = v210;
        }

        else
        {
          v211 = v207;
        }

        if (v205 <= 1)
        {
          v212 = v209;
        }

        else
        {
          v212 = v208;
        }

        MEMORY[0x1865D9CA0](v211, v212);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v213 = byte_1EEF969A3;
      if ((sub_181F44168(byte_1EEF969A3, v175, v206) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v215 = 0x7365636F72706F63;
        v216 = 0xEB00000000726F73;
        if (v213 != 3)
        {
          v215 = 0x6F696E61706D6F63;
          v216 = 0xE90000000000006ELL;
        }

        if (v213 == 2)
        {
          v215 = 0x6477615F69666977;
          v216 = 0xE90000000000006CLL;
        }

        v217 = 0xE500000000000000;
        v218 = 0x726568746FLL;
        if (v213)
        {
          v218 = 0xD000000000000013;
          v217 = 0x8000000182BD71B0;
        }

        if (v213 <= 1)
        {
          v219 = v218;
        }

        else
        {
          v219 = v215;
        }

        if (v213 <= 1)
        {
          v220 = v217;
        }

        else
        {
          v220 = v216;
        }

        MEMORY[0x1865D9CA0](v219, v220);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      v221 = byte_1EEF969A4;
      if ((sub_181F44168(byte_1EEF969A4, v175, v214) & 1) == 0)
      {
        *&v406 = 32;
        *(&v406 + 1) = 0xE100000000000000;
        v222 = 0x7365636F72706F63;
        v223 = 0xEB00000000726F73;
        if (v221 != 3)
        {
          v222 = 0x6F696E61706D6F63;
          v223 = 0xE90000000000006ELL;
        }

        if (v221 == 2)
        {
          v222 = 0x6477615F69666977;
          v223 = 0xE90000000000006CLL;
        }

        v224 = 0xE500000000000000;
        v225 = 0x726568746FLL;
        if (v221)
        {
          v225 = 0xD000000000000013;
          v224 = 0x8000000182BD71B0;
        }

        if (v221 <= 1)
        {
          v226 = v225;
        }

        else
        {
          v226 = v222;
        }

        if (v221 <= 1)
        {
          v227 = v224;
        }

        else
        {
          v227 = v223;
        }

        MEMORY[0x1865D9CA0](v226, v227);

        MEMORY[0x1865D9CA0](v406, *(&v406 + 1));
      }

      LOBYTE(v43) = v392;
      v97 = v397;
      v98 = v396;
      v99 = v395;
      v100 = v394;
    }

    goto LABEL_344;
  }

  v340 = v29;

  v176 = v175;
  MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BE2CC0);
  v177 = v175[4];
  if (v176[2] >= v176[3] + v177)
  {
    v178 = v175[3] + v177;
  }

  else
  {
    v178 = v175[2];
  }

  *&v406 = v175;
  *(&v406 + 1) = v177;
  *&v407 = v178;

  v339 = v175;
  while (2)
  {
    if (v177 != v178)
    {
LABEL_253:
      v180 = v176 + v177++;
      *(&v406 + 1) = v177;
      v181 = v180[40];
      *&v404 = 32;
      *(&v404 + 1) = 0xE100000000000000;
      v182 = 0xE90000000000006ELL;
      v183 = 0x7365636F72706F63;
      if (v181 == 3)
      {
        v182 = 0xEB00000000726F73;
      }

      else
      {
        v183 = 0x6F696E61706D6F63;
      }

      if (v181 == 2)
      {
        v183 = 0x6477615F69666977;
        v182 = 0xE90000000000006CLL;
      }

      v184 = 0x726568746FLL;
      if (v181)
      {
        v184 = 0xD000000000000013;
        v185 = 0x8000000182BD71B0;
      }

      else
      {
        v185 = 0xE500000000000000;
      }

      if (v181 <= 1)
      {
        v186 = v184;
      }

      else
      {
        v186 = v183;
      }

      if (v181 <= 1)
      {
        v187 = v185;
      }

      else
      {
        v187 = v182;
      }

      MEMORY[0x1865D9CA0](v186, v187);

      MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

      v178 = v407;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v179))
  {
    v177 = *(&v406 + 1);
    v176 = v406;
    goto LABEL_253;
  }

  v45 = v398;
  v175 = v398[4];
  v29 = v340;
  LOBYTE(v43) = v392;
  v88 = v393;
  v97 = v397;
  v98 = v396;
  v99 = v395;
  v100 = v394;
  if (v175)
  {
    goto LABEL_272;
  }

LABEL_344:
  v228 = v45[5];
  if (v228 && v228[3])
  {
    v340 = v29;

    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BE2C80);
    v229 = v228[4];
    if (v228[2] >= v228[3] + v229)
    {
      v230 = v228[3] + v229;
    }

    else
    {
      v230 = v228[2];
    }

    *&v406 = v228;
    *(&v406 + 1) = v229;
    *&v407 = v230;

    v232 = v228;
    v339 = v228;
    while (1)
    {
      if (v229 == v230)
      {
        if ((sub_181AC81FC(v231) & 1) == 0)
        {

          v45 = v398;
          v29 = v340;
          LOBYTE(v43) = v392;
          v88 = v393;
          v97 = v397;
          v98 = v396;
          v99 = v395;
          v100 = v394;
          break;
        }

        v229 = *(&v406 + 1);
        v232 = v406;
      }

      v233 = v232 + v229++;
      *(&v406 + 1) = v229;
      v234 = v233[40];
      *&v404 = 32;
      *(&v404 + 1) = 0xE100000000000000;
      v235 = 0xE90000000000006ELL;
      v236 = 0x7365636F72706F63;
      if (v234 == 3)
      {
        v235 = 0xEB00000000726F73;
      }

      else
      {
        v236 = 0x6F696E61706D6F63;
      }

      if (v234 == 2)
      {
        v236 = 0x6477615F69666977;
        v235 = 0xE90000000000006CLL;
      }

      v237 = 0x726568746FLL;
      if (v234)
      {
        v237 = 0xD000000000000013;
        v238 = 0x8000000182BD71B0;
      }

      else
      {
        v238 = 0xE500000000000000;
      }

      if (v234 <= 1)
      {
        v239 = v237;
      }

      else
      {
        v239 = v236;
      }

      if (v234 <= 1)
      {
        v240 = v238;
      }

      else
      {
        v240 = v235;
      }

      MEMORY[0x1865D9CA0](v239, v240);

      MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

      v230 = v407;
    }
  }

  v241 = v45[6];
  if (v241 && v241[3])
  {
    v340 = v29;

    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BE2C60);
    v242 = v241[4];
    if (v241[2] >= v241[3] + v242)
    {
      v243 = v241[3] + v242;
    }

    else
    {
      v243 = v241[2];
    }

    *&v406 = v241;
    *(&v406 + 1) = v242;
    *&v407 = v243;
    v339 = v241;

    while (1)
    {
      if (v242 == v243)
      {
        v251 = sub_181AC81FC(v244);
        v245 = v406;
        if ((v251 & 1) == 0)
        {

          v45 = v398;
          LOBYTE(v43) = v392;
          v88 = v393;
          v97 = v397;
          v98 = v396;
          v99 = v395;
          v100 = v394;
          break;
        }
      }

      else
      {
        v245 = v406;
      }

      v246 = *(&v406 + 1);
      v242 = ++*(&v406 + 1);
      v247 = *(v245 + 8 * v246 + 40);
      *&v404 = 32;
      *(&v404 + 1) = 0xE100000000000000;
      v248 = v247[5];
      v249 = v247[6];

      MEMORY[0x1865D9CA0](v248, v249);

      MEMORY[0x1865D9CA0](40, 0xE100000000000000);
      v402 = v247[2];
      v250 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v250);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

      v243 = v407;
    }
  }

  v252 = v45[7];
  if (v252 && v252[3])
  {

    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BE2C40);
    v253 = v252[4];
    if (v252[2] >= v252[3] + v253)
    {
      v254 = v252[3] + v253;
    }

    else
    {
      v254 = v252[2];
    }

    *&v404 = v252;
    *(&v404 + 1) = v253;
    v405 = v254;

    while (1)
    {
      if (v253 == v254)
      {
        v260 = sub_181AC81FC(v255);
        v256 = v404;
        if ((v260 & 1) == 0)
        {

          v45 = v398;
          LOBYTE(v43) = v392;
          v88 = v393;
          v97 = v397;
          v98 = v396;
          v99 = v395;
          v100 = v394;
          break;
        }
      }

      else
      {
        v256 = v404;
      }

      v257 = *(&v404 + 1);
      v253 = ++*(&v404 + 1);
      v258 = v256 + 32 * v257;
      v402 = 32;
      v403 = 0xE100000000000000;
      v406 = *(v258 + 40);
      v407 = *(v258 + 56);
      v259 = NetworkAgentType.description.getter();
      MEMORY[0x1865D9CA0](v259);

      MEMORY[0x1865D9CA0](v402, v403);

      v254 = v405;
    }
  }

  v261 = v45[8];
  if (v261 && v261[3])
  {

    MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BE2C20);
    v262 = v261[4];
    if (v261[2] >= v261[3] + v262)
    {
      v263 = v261[3] + v262;
    }

    else
    {
      v263 = v261[2];
    }

    *&v406 = v261;
    *(&v406 + 1) = v262;
    *&v407 = v263;

    while (1)
    {
      if (v262 == v263)
      {
        v264 = sub_181AC81FC(v265);
        if ((v264 & 1) == 0)
        {
          break;
        }
      }

      v262 = ++*(&v406 + 1);
      *&v404 = 32;
      *(&v404 + 1) = 0xE100000000000000;
      *&v266 = MEMORY[0x1EEE9AC00](v264);
      *&v322[-16] = v266;
      v267 = sub_182AD30D8();
      MEMORY[0x1865D9CA0](v267);

      MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

      v263 = v407;
    }

    v45 = v398;
    LOBYTE(v43) = v392;
    v88 = v393;
    v97 = v397;
    v98 = v396;
    v99 = v395;
    v100 = v394;
  }

  v268 = v45[9];
  if (v268 && v268[3])
  {

    MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BE2C00);
    v269 = v268[4];
    if (v268[2] >= v268[3] + v269)
    {
      v270 = v268[3] + v269;
    }

    else
    {
      v270 = v268[2];
    }

    *&v404 = v268;
    *(&v404 + 1) = v269;
    v405 = v270;

    while (1)
    {
      if (v269 == v270)
      {
        v276 = sub_181AC81FC(v271);
        v272 = v404;
        if ((v276 & 1) == 0)
        {

          v45 = v398;
          LOBYTE(v43) = v392;
          v88 = v393;
          v97 = v397;
          v98 = v396;
          v99 = v395;
          v100 = v394;
          break;
        }
      }

      else
      {
        v272 = v404;
      }

      v273 = *(&v404 + 1);
      v269 = ++*(&v404 + 1);
      v274 = v272 + 32 * v273;
      v402 = 32;
      v403 = 0xE100000000000000;
      v406 = *(v274 + 40);
      v407 = *(v274 + 56);
      v275 = NetworkAgentType.description.getter();
      MEMORY[0x1865D9CA0](v275);

      MEMORY[0x1865D9CA0](v402, v403);

      v270 = v405;
    }
  }

  v277 = v45[10];
  if (v277 && v277[3])
  {

    MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BE2BE0);
    v278 = v277[4];
    if (v277[2] >= v277[3] + v278)
    {
      v279 = v277[3] + v278;
    }

    else
    {
      v279 = v277[2];
    }

    *&v406 = v277;
    *(&v406 + 1) = v278;
    *&v407 = v279;

    while (1)
    {
      if (v278 == v279)
      {
        v280 = sub_181AC81FC(v281);
        if ((v280 & 1) == 0)
        {
          break;
        }
      }

      v278 = ++*(&v406 + 1);
      *&v404 = 32;
      *(&v404 + 1) = 0xE100000000000000;
      *&v282 = MEMORY[0x1EEE9AC00](v280);
      *&v322[-16] = v282;
      v283 = sub_182AD30D8();
      MEMORY[0x1865D9CA0](v283);

      MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

      v279 = v407;
    }

    v45 = v398;
    LOBYTE(v43) = v392;
    v88 = v393;
    v97 = v397;
    v98 = v396;
    v99 = v395;
    v100 = v394;
  }

  v284 = v45[11];
  if (!v284 || !v284[3])
  {
    v114 = v377;
    v113 = v378;
    v116 = v375;
    v115 = v376;
    v118 = v373;
    v117 = v374;
    v120 = v371;
    v119 = v372;
    v121 = v357;
    v122 = v358;
    v124 = v355;
    v123 = v356;
    v95 = v366;
    goto LABEL_435;
  }

  MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BE2BC0);
  v285 = v284[4];
  if (v284[2] >= v284[3] + v285)
  {
    v286 = v284[3] + v285;
  }

  else
  {
    v286 = v284[2];
  }

  *&v404 = v284;
  *(&v404 + 1) = v285;
  v405 = v286;

  while (2)
  {
    if (v285 != v286)
    {
      v288 = v404;
LABEL_429:
      v289 = *(&v404 + 1);
      v285 = ++*(&v404 + 1);
      v290 = v288 + 32 * v289;
      v402 = 32;
      v403 = 0xE100000000000000;
      v406 = *(v290 + 40);
      v407 = *(v290 + 56);
      v291 = NetworkAgentType.description.getter();
      MEMORY[0x1865D9CA0](v291);

      MEMORY[0x1865D9CA0](v402, v403);

      v286 = v405;
      continue;
    }

    break;
  }

  v292 = sub_181AC81FC(v287);
  v288 = v404;
  if (v292)
  {
    goto LABEL_429;
  }

  v45 = v398;
  v114 = v377;
  v113 = v378;
  v116 = v375;
  v115 = v376;
  v118 = v373;
  v117 = v374;
  v120 = v371;
  v119 = v372;
  v121 = v357;
  v122 = v358;
  v124 = v355;
  v123 = v356;
  LOBYTE(v43) = v392;
  v88 = v393;
  v95 = v366;
LABEL_433:
  v97 = v397;
  v98 = v396;
  v99 = v395;
  v100 = v394;
LABEL_435:
  LOBYTE(v406) = v364;
  BYTE1(v406) = v363;
  BYTE2(v406) = v362;
  BYTE3(v406) = v361;
  BYTE4(v406) = v360;
  BYTE5(v406) = v359;
  BYTE6(v406) = v391;
  BYTE7(v406) = v390;
  BYTE8(v406) = v389;
  BYTE9(v406) = v388;
  BYTE10(v406) = v387;
  BYTE11(v406) = v386;
  BYTE12(v406) = v385;
  BYTE13(v406) = v384;
  BYTE14(v406) = v383;
  HIBYTE(v406) = v382;
  LOBYTE(v407) = v113;
  BYTE1(v407) = v114;
  BYTE2(v407) = v115;
  BYTE3(v407) = v116;
  BYTE4(v407) = v117;
  BYTE5(v407) = v118;
  BYTE6(v407) = v119;
  BYTE7(v407) = v120;
  BYTE8(v407) = v122;
  BYTE9(v407) = v121;
  BYTE10(v407) = v123;
  BYTE11(v407) = v124;
  BYTE12(v407) = v97;
  BYTE13(v407) = v98;
  BYTE14(v407) = v99;
  HIBYTE(v407) = v100;
  v408 = v344;
  v409 = v343;
  v410 = v447;
  *v411 = v446[0];
  *&v411[3] = *(v446 + 3);
  v412 = v345;
  v413 = v445;
  v414 = v443;
  v415 = v444;
  v416 = v370;
  v417 = v369;
  v418 = v368;
  v419 = v88;
  v420 = v353;
  v421 = v43;
  v422 = v354;
  v423 = v352;
  v424 = v351;
  v425 = v350;
  v426 = v401;
  v427 = v342;
  v428 = v381;
  v429 = v399;
  v430 = v400;
  v431 = v341;
  v432 = v45;
  v433 = v348;
  v434 = v380;
  v435 = v347;
  v436 = v379;
  v437 = v346;
  v438 = v95;
  v439 = v367;
  v440 = v365;
  v441 = v349;
  sub_1822696A8();
  if (v293)
  {
    v294 = v293;
    if (v293[3])
    {
      MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BE2BA0);
      v295 = v294[4];
      if (v294[2] >= v294[3] + v295)
      {
        v296 = v294[3] + v295;
      }

      else
      {
        v296 = v294[2];
      }

      *&v406 = v294;
      *(&v406 + 1) = v295;
      *&v407 = v296;

      while (1)
      {
        if (v295 == v296)
        {
          v297 = sub_181AC81FC(v298);
          if ((v297 & 1) == 0)
          {
            break;
          }
        }

        v295 = ++*(&v406 + 1);
        *&v404 = 32;
        *(&v404 + 1) = 0xE100000000000000;
        *&v299 = MEMORY[0x1EEE9AC00](v297);
        *&v322[-16] = v299;
        v300 = sub_182AD30D8();
        MEMORY[0x1865D9CA0](v300);

        MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

        v296 = v407;
      }

      v45 = v398;
      goto LABEL_445;
    }

    if (!v45)
    {
      goto LABEL_468;
    }
  }

  else
  {
LABEL_445:
    if (!v45)
    {
      goto LABEL_468;
    }
  }

  v301 = v45[13];
  if (!v301 || !v301[3])
  {
    goto LABEL_457;
  }

  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BE2B80);
  v302 = v301[4];
  if (v301[2] >= v301[3] + v302)
  {
    v303 = v301[3] + v302;
  }

  else
  {
    v303 = v301[2];
  }

  *&v404 = v301;
  *(&v404 + 1) = v302;
  v405 = v303;

  while (2)
  {
    if (v302 != v303)
    {
      v305 = v404;
LABEL_453:
      v306 = *(&v404 + 1);
      v302 = ++*(&v404 + 1);
      v307 = v305 + 32 * v306;
      v402 = 32;
      v403 = 0xE100000000000000;
      v406 = *(v307 + 40);
      v407 = *(v307 + 56);
      v308 = NetworkAgentType.description.getter();
      MEMORY[0x1865D9CA0](v308);

      MEMORY[0x1865D9CA0](v402, v403);

      v303 = v405;
      continue;
    }

    break;
  }

  v309 = sub_181AC81FC(v304);
  v305 = v404;
  if (v309)
  {
    goto LABEL_453;
  }

  v45 = v398;
LABEL_457:
  v310 = v45[14];
  if (v310 && v310[3])
  {

    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BE2B60);
    v311 = v310[4];
    if (v310[2] >= v310[3] + v311)
    {
      v312 = v310[3] + v311;
    }

    else
    {
      v312 = v310[2];
    }

    *&v406 = v310;
    *(&v406 + 1) = v311;
    *&v407 = v312;

    while (1)
    {
      if (v311 == v312)
      {
        v313 = sub_181AC81FC(v314);
        if ((v313 & 1) == 0)
        {
          break;
        }
      }

      v311 = ++*(&v406 + 1);
      *&v404 = 32;
      *(&v404 + 1) = 0xE100000000000000;
      *&v315 = MEMORY[0x1EEE9AC00](v313);
      *&v322[-16] = v315;
      v316 = sub_182AD30D8();
      MEMORY[0x1865D9CA0](v316);

      MEMORY[0x1865D9CA0](v404, *(&v404 + 1));

      v312 = v407;
    }
  }

LABEL_468:
  if (v365 && *(v365 + 48) >= 2uLL)
  {
    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BE2B40);
  }

  return v442;
}