void nw_connection_report_symptom_internal_on_nw_queue(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, const unsigned __int8 *a6, uint64_t a7, int a8, int a9, int a10)
{
  v14 = a1;
  v72[2] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v65 = a7;
  v64 = a8;
  v62 = v15;
  if (!v15)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null endpoint", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v51 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v51, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      v25 = __nwlog_obj();
      v59 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v59, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v55 = type[0];
    v56 = os_log_type_enabled(v30, type[0]);
    if (backtrace_string)
    {
      if (v56)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v30, v55, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_83:
      if (!v24)
      {
        goto LABEL_85;
      }

LABEL_84:
      free(v24);
      goto LABEL_85;
    }

    if (v56)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      _os_log_impl(&dword_181A37000, v30, v55, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

LABEL_117:

    goto LABEL_83;
  }

  if (!v16)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null parameters", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v53, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      v25 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v60, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v29 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v57 = type[0];
    v58 = os_log_type_enabled(v30, type[0]);
    if (v29)
    {
      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        _os_log_impl(&dword_181A37000, v30, v57, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_35;
    }

    if (v58)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      _os_log_impl(&dword_181A37000, v30, v57, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_117;
  }

  v18 = _nw_parameters_copy_context();
  nw_context_assert_queue(v18);

  if (!v17 && (v14 - 421890) <= 9 && ((1 << (v14 - 2)) & 0x307) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = off_1E6A3BB48[v14 - 421890];
      *buf = 136446466;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      *&buf[12] = 2082;
      *&buf[14] = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s symptom reported when no path found", buf, 0x16u);
    }

    goto LABEL_85;
  }

  if (nw_connection_get_symptom_reporter_handle::once != -1)
  {
    dispatch_once(&nw_connection_get_symptom_reporter_handle::once, &__block_literal_global_83286);
  }

  if (!nw_connection_get_symptom_reporter_handle::symptom_reporter)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s nw_connection_get_symptom_reporter_handle failed", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v26 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_connection_get_symptom_reporter_handle failed", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v47 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v47, "%{public}s nw_connection_get_symptom_reporter_handle failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v29 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    v31 = type[0];
    v32 = os_log_type_enabled(v30, type[0]);
    if (v29)
    {
      if (v32)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_connection_get_symptom_reporter_handle failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_35;
    }

    if (v32)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_connection_get_symptom_reporter_handle failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_117;
  }

  v19 = symptom_new();
  if (!v19)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s symptom_new failed", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v72[0]) = 0;
    if (!__nwlog_fault(v24, type, v72))
    {
      goto LABEL_83;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v28 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s symptom_new failed", buf, 0xCu);
      }

LABEL_82:

      goto LABEL_83;
    }

    if (LOBYTE(v72[0]) != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v48 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v48, "%{public}s symptom_new failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v33 = __nw_create_backtrace_string();
    if (!v33)
    {
      v25 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
        _os_log_impl(&dword_181A37000, v25, v49, "%{public}s symptom_new failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    v29 = v33;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    v34 = type[0];
    if (os_log_type_enabled(v30, type[0]))
    {
      *buf = 136446466;
      *&buf[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      *&buf[12] = 2082;
      *&buf[14] = v29;
      _os_log_impl(&dword_181A37000, v30, v34, "%{public}s symptom_new failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v29);
    if (!v24)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  pid = getpid();
  v72[0] = 0;
  v72[1] = 0;
  if (_nw_parameters_has_delegated_proc_pid(v16, pid) || _nw_parameters_has_delegated_proc_uuid(v16))
  {
    pid = _nw_parameters_get_pid(v16);
    _nw_parameters_get_e_proc_uuid();
  }

  else
  {
    _nw_parameters_get_proc_uuid();
  }

  v70 = 0u;
  v71 = 0u;
  memset(buf, 0, sizeof(buf));
  if (proc_pidinfo(pid, 13, 1uLL, buf, 64) != 64)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *type = 136446466;
      *&type[4] = "nw_connection_report_symptom_internal_on_nw_queue";
      *&type[12] = 1024;
      *&type[14] = pid;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s Failed to convert from PID (%d) to process name", type, 0x12u);
    }

    v35 = 0;
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v35 = &buf[16];
  if (v17)
  {
LABEL_44:
    v37 = v17;
    if (_nw_path_network_is_satisfied(v37))
    {
      _nw_path_get_routed_interface_index(v37);
    }

    symptom_set_qualifier();
    *uu = 0;
    v68 = 0;
    v38 = v37;
    _nw_path_get_flow_registration_id(v38, uu);

    if (!uuid_is_null(uu))
    {
      memset(type, 0, 37);
      uuid_unparse(uu, type);
      strlen(type);
      symptom_set_additional_qualifier();
    }

    v39 = v38;
    v40 = _nw_path_copy_parameters(v39);

    if (v40)
    {
      v41 = _nw_parameters_copy_effective_proxy_config(v40);
      v42 = v41;
      if (v41)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x2020000000;
        type[24] = OS_LOG_TYPE_DEFAULT;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __nw_connection_report_symptom_internal_on_nw_queue_block_invoke;
        v63[3] = &unk_1E6A3B848;
        v63[4] = type;
        v63[5] = v19;
        nw_proxy_config_enumerate_endpoints(v41, v63);
        _Block_object_dispose(type, 8);
      }
    }
  }

LABEL_53:
  symptom_set_qualifier();
  symptom_set_additional_qualifier();
  if (v35 && strlen(v35))
  {
    symptom_set_additional_qualifier();
  }

  if (a9)
  {
    symptom_set_additional_qualifier();
  }

  if (a10)
  {
    symptom_set_additional_qualifier();
  }

  v43 = v62;
  description = _nw_endpoint_get_description(v43);

  if (description && strlen(description))
  {
    symptom_set_additional_qualifier();
  }

  if (v14 == 421899)
  {
    symptom_set_additional_qualifier();
    symptom_set_additional_qualifier();
  }

  else if (v14 == 421898)
  {
    symptom_set_qualifier();
    if (a6)
    {
      memset(type, 0, 37);
      uuid_unparse(a6, type);
      strlen(type);
      symptom_set_additional_qualifier();
    }
  }

  symptom_send();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v45 = gLogObj;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    v46 = off_1E6A3BB98[v14 - 421889];
    *type = 136446722;
    *&type[4] = "nw_connection_report_symptom_internal_on_nw_queue";
    *&type[12] = 2082;
    *&type[14] = v46;
    *&type[22] = 1024;
    *&type[24] = v14;
    _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s Symptom sent: %{public}s(%#x)", type, 0x1Cu);
  }

LABEL_85:
}

void sub_181E2F188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

unint64_t sub_181E2F230()
{
  result = qword_1EA836620;
  if (!qword_1EA836620)
  {
    sub_182AD2738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836620);
  }

  return result;
}

void __nw_listener_cancel_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 4 || (*(v2 + 310) & 1) != 0)
  {
    v8 = *(v2 + 16);
    if (v8 && !_nw_parameters_get_logging_disabled(v8))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v9 = glistenerLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v11 = 136446466;
        v12 = "nw_listener_cancel_block_invoke";
        v13 = 2082;
        v14 = id_string;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Listener is already cancelled, ignoring cancel", &v11, 0x16u);
      }
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = nw_listener_get_id_string(*(a1 + 32));
        v11 = 136446466;
        v12 = "nw_listener_cancel_block_invoke";
        v13 = 2082;
        v14 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cancel", &v11, 0x16u);
      }
    }

    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    *(v7 + 310) |= 1u;
    nw_listener_resume_all_inboxes_if_suspended_on_queue(*v6);
    nw_listener_teardown_on_queue(*v6);
    if (!*(*v6 + 76))
    {
      nw_listener_cancel_complete_on_queue(*v6);
    }
  }
}

void nw_listener_resume_all_inboxes_if_suspended_on_queue(NWConcrete_nw_listener *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(*(v1 + 3));
    v3 = *(v2 + 18);
    if (v3)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL52nw_listener_resume_all_inboxes_if_suspended_on_queueP22NWConcrete_nw_listener_block_invoke;
      aBlock[3] = &unk_1E6A3CCB8;
      v13 = v2;
      _nw_array_apply(v3, aBlock);
    }

    goto LABEL_4;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_listener_resume_all_inboxes_if_suspended_on_queue";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null listener", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_resume_all_inboxes_if_suspended_on_queue";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_listener_resume_all_inboxes_if_suspended_on_queue";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_listener_resume_all_inboxes_if_suspended_on_queue";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_resume_all_inboxes_if_suspended_on_queue";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

LABEL_4:
}

uint64_t ___ZL52nw_listener_resume_all_inboxes_if_suspended_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v9 = 136446722;
      v10 = "nw_listener_resume_all_inboxes_if_suspended_on_queue_block_invoke";
      v11 = 2082;
      v12 = id_string;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Resuming inbox %{public}@", &v9, 0x20u);
    }
  }

  nw_listener_resume_inbox(*(a1 + 32), v4);

  return 1;
}

void nw_listener_resume_inbox(NWConcrete_nw_listener *a1, nw_listener_inbox *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  [(nw_listener_inbox *)v4 resume];
  v5 = *(v3 + 2);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3;
      v8 = v7 + 42;

      v9 = 136446722;
      v10 = "nw_listener_resume_inbox";
      v11 = 2082;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Resumed for %{public}@", &v9, 0x20u);
    }
  }
}

void nw_listener_teardown_on_queue(NWConcrete_nw_listener *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_context_assert_queue(*(v1 + 3));
  v2 = v1;
  nw_context_assert_queue(*(v1 + 3));
  v3 = *(v2 + 18);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 18);
    *(v2 + 18) = 0;

    *v16 = MEMORY[0x1E69E9820];
    *&v16[8] = 3221225472;
    *&v16[16] = ___ZL39nw_listener_cancel_all_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke;
    v17 = &unk_1E6A3CCB8;
    v18 = v2;
    _nw_array_apply(v4, v16);
  }

  v6 = v2;
  nw_context_assert_queue(*(v1 + 3));
  v7 = *(v6 + 20);
  if (v7)
  {
    v8 = v7;
    v9 = *(v6 + 20);
    *(v6 + 20) = 0;

    *v16 = MEMORY[0x1E69E9820];
    *&v16[8] = 3221225472;
    *&v16[16] = ___ZL49nw_listener_cancel_all_proxy_connections_on_queueP22NWConcrete_nw_listener_block_invoke;
    v17 = &unk_1E6A3CCB8;
    v18 = v6;
    _nw_array_apply(v8, v16);
  }

  nw_listener_stop_advertising_on_queue(v6);
  v10 = *(v6 + 21);
  if (v10)
  {
    nw_path_evaluator_cancel(v10);
    v11 = *(v6 + 21);
    *(v6 + 21) = 0;
  }

  v12 = *(v6 + 19);
  *(v6 + 19) = 0;

  v13 = v6;
  nw_context_assert_queue(*(v1 + 3));
  if (*(v13 + 32))
  {
    v14 = *(v13 + 2);
    if (v14 && !_nw_parameters_get_logging_disabled(v14))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v15 = glistenerLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v16 = 136446466;
        *&v16[4] = "nw_listener_stop_advertise_timer_on_queue";
        *&v16[12] = 2082;
        *&v16[14] = v13 + 42;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Stopping AWDL advertise timeout timer", v16, 0x16u);
      }
    }

    nw_queue_cancel_source(*(v13 + 32));
    *(v13 + 32) = 0;
  }
}

uint64_t ___ZL39nw_listener_cancel_all_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v9 = 136446722;
      v10 = "nw_listener_cancel_all_inboxes_on_queue_block_invoke";
      v11 = 2082;
      v12 = id_string;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cancelling all inboxes: %{public}@", &v9, 0x20u);
    }
  }

  nw_listener_cancel_inbox_on_queue(*(a1 + 32), v4);

  return 1;
}

void nw_listener_cancel_inbox_on_queue(NWConcrete_nw_listener *a1, nw_listener_inbox *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  nw_context_assert_queue(*(v3 + 3));
  if ([(nw_listener_inbox *)v4 cancel])
  {
    ++*(v3 + 76);
    v5 = *(v3 + 2);
    if (v5)
    {
      if (!_nw_parameters_get_logging_disabled(v5))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v6 = glistenerLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = v3;
          v8 = v7 + 42;

          v9 = *(v3 + 76);
          v10 = 136446978;
          v11 = "nw_listener_cancel_inbox_on_queue";
          v12 = 2082;
          v13 = v8;
          v14 = 2114;
          v15 = v4;
          v16 = 1024;
          v17 = v9;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Adding deferral for %{public}@ -> %u", &v10, 0x26u);
        }
      }
    }
  }
}

void nw_listener_stop_advertising_on_queue(NWConcrete_nw_listener *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_context_assert_queue(*(v1 + 3));
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(v1 + 35);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [(_NWAdvertiser *)*(*(&v10 + 1) + 8 * v5++) stop];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL37nw_listener_stop_advertising_on_queueP22NWConcrete_nw_listener_block_invoke;
  aBlock[3] = &unk_1E6A3D868;
  v6 = v1;
  v9 = v6;
  v7 = _Block_copy(aBlock);
  os_unfair_lock_lock(v1 + 2);
  v7[2](v7);
  os_unfair_lock_unlock(v1 + 2);
}

void sub_181E30544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_181E309B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v35 - 256), 8);

  _Unwind_Resume(a1);
}

void ___ZL37nw_listener_stop_advertising_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  *(v1 + 280) = 0;
}

void sub_181E30E9C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = _NWAdvertiser;
  [(_Unwind_Exception *)&a14 dealloc:a3];
  _Unwind_Resume(a1);
}

void __41__nw_listener_inbox_protocol_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v4 = *(v2 + 88);
    if (v4)
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = "(null)";
    }

    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<protocol: %s>", v5);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v3 = *(*(a1 + 32) + 24);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v3);
}

uint64_t nw_protocol_http2_transport_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (handle[13] == a2)
      {
        handle[13] = 0;
        a2->protocol_handler = 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v18 = "nw_protocol_http2_transport_remove_listen_handler";
        v19 = 2082;
        v20 = handle + 205;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s removed protocol listen handler", buf, 0x16u);
      }

      return 1;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http2_transport_remove_listen_handler";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_transport_remove_listen_handler";
        v9 = "%{public}s called with null http2_transport";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_transport_remove_listen_handler";
        v9 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_transport_remove_listen_handler";
        v9 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http2_transport_remove_listen_handler";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_http2_transport_remove_listen_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_transport_remove_listen_handler";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_transport_remove_listen_handler";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http2_transport_remove_listen_handler";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v18 = "nw_protocol_http2_transport_remove_listen_handler";
    v9 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_36:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_listener_cancel_complete_on_queue(NWConcrete_nw_listener *a1)
{
  v1 = a1;
  *(v1 + 310) &= ~1u;
  nw_listener_set_state_on_queue(v1, 4, 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL36nw_listener_cancel_complete_on_queueP22NWConcrete_nw_listener_block_invoke;
  aBlock[3] = &unk_1E6A3D868;
  v2 = v1;
  v6 = v2;
  v3 = _Block_copy(aBlock);
  os_unfair_lock_lock(v1 + 2);
  v3[2](v3);
  os_unfair_lock_unlock(v1 + 2);

  v4 = *(v2 + 33);
  *(v2 + 33) = 0;
}

void ___ZL36nw_listener_cancel_complete_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  *(v10 + 120) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 176);
  *(v12 + 176) = 0;
}

void nw_protocol_http2_transport_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http2_transport_disconnect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v14, &type, &v40))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_transport_disconnect";
      v17 = "%{public}s called with null protocol";
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v29 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v43 = "nw_protocol_http2_transport_disconnect";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_78:
        if (!v14)
        {
          return;
        }

        goto LABEL_79;
      }

      if (!v29)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_transport_disconnect";
      v17 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_transport_disconnect";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_77;
  }

  handle = a1->handle;
  if (!handle)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http2_transport_disconnect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v14, &type, &v40))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v40 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v43 = "nw_protocol_http2_transport_disconnect";
        v17 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_77;
      }

      v30 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v31 = os_log_type_enabled(v15, type);
      if (!v30)
      {
        if (!v31)
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v43 = "nw_protocol_http2_transport_disconnect";
        v17 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_77;
      }

      if (v31)
      {
        *buf = 136446466;
        v43 = "nw_protocol_http2_transport_disconnect";
        v44 = 2082;
        v45 = v30;
        v32 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_51:
        _os_log_impl(&dword_181A37000, v15, v16, v32, buf, 0x16u);
      }

LABEL_52:
      free(v30);
      if (!v14)
      {
        return;
      }

LABEL_79:
      v38 = v14;
LABEL_87:
      free(v38);
      return;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v43 = "nw_protocol_http2_transport_disconnect";
    v17 = "%{public}s called with null http2_transport";
LABEL_77:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_78;
  }

  if (!a2)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_http2_transport_disconnect";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v14, &type, &v40))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_transport_disconnect";
      v17 = "%{public}s called with null other_protocol";
      goto LABEL_77;
    }

    if (v40 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_transport_disconnect";
      v17 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_77;
    }

    v30 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v33 = os_log_type_enabled(v15, type);
    if (!v30)
    {
      if (!v33)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v43 = "nw_protocol_http2_transport_disconnect";
      v17 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_77;
    }

    if (v33)
    {
      *buf = 136446466;
      v43 = "nw_protocol_http2_transport_disconnect";
      v44 = 2082;
      v45 = v30;
      v32 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if (gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v43 = "nw_protocol_http2_transport_disconnect";
      v44 = 2082;
      v45 = (handle + 205);
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v43 = "nw_protocol_http2_transport_disconnect";
    v44 = 2082;
    v45 = (handle + 205);
    v9 = "%{public}s %{public}s attempting to disconnect on protocol that doesn't have entry in table, ignoring";
    v10 = v8;
    v11 = 22;
LABEL_14:
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    return;
  }

  v5 = output_handler_context[4];
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446978;
    v43 = "nw_protocol_http2_transport_disconnect";
    v44 = 2082;
    v45 = (handle + 205);
    v46 = 2048;
    v47 = a2;
    v48 = 2048;
    v49 = output_handler_context;
    v9 = "%{public}s %{public}s protocol (%p) node (%p) has no stream pointer as extra";
    v10 = v12;
    v11 = 42;
    goto LABEL_14;
  }

  nw_http2_transport_stream_close(handle, v5);
  callbacks = a2->callbacks;
  if (callbacks)
  {
    disconnected = callbacks->disconnected;
    if (disconnected)
    {
      disconnected(a2, handle);
      return;
    }
  }

  v21 = __nwlog_obj();
  identifier = a2->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v43 = "nw_protocol_http2_transport_disconnect";
  v44 = 2082;
  v45 = identifier;
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s protocol %{public}s has invalid disconnected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v23, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_85;
      }

      v26 = a2->identifier;
      if (!v26)
      {
        v26 = "invalid";
      }

      *buf = 136446466;
      v43 = "nw_protocol_http2_transport_disconnect";
      v44 = 2082;
      v45 = v26;
      v27 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_84:
      _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x16u);
      goto LABEL_85;
    }

    if (v40 != 1)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_85;
      }

      v37 = a2->identifier;
      if (!v37)
      {
        v37 = "invalid";
      }

      *buf = 136446466;
      v43 = "nw_protocol_http2_transport_disconnect";
      v44 = 2082;
      v45 = v37;
      v27 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
      goto LABEL_84;
    }

    v34 = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type;
    v35 = os_log_type_enabled(v24, type);
    if (!v34)
    {
      v39 = "invalid";
      if (!v35)
      {
        goto LABEL_85;
      }

      if (a2->identifier)
      {
        v39 = a2->identifier;
      }

      *buf = 136446466;
      v43 = "nw_protocol_http2_transport_disconnect";
      v44 = 2082;
      v45 = v39;
      v27 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
      goto LABEL_84;
    }

    if (v35)
    {
      v36 = "invalid";
      if (a2->identifier)
      {
        v36 = a2->identifier;
      }

      *buf = 136446722;
      v43 = "nw_protocol_http2_transport_disconnect";
      v44 = 2082;
      v45 = v36;
      v46 = 2082;
      v47 = v34;
      _os_log_impl(&dword_181A37000, v24, v25, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v34);
  }

LABEL_85:
  if (v23)
  {
    v38 = v23;
    goto LABEL_87;
  }
}

void nw_http2_transport_stream_close(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v45 = a2;
    v46 = __nwlog_obj();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
    a2 = v45;
    if (v47)
    {
      v48 = "";
      if (a1)
      {
        v48 = (a1 + 205);
      }

      *buf = 136446466;
      v74 = "nw_http2_transport_stream_close";
      v75 = 2082;
      v76 = v48;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a2 = v45;
    }
  }

  if (!a1)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    v74 = "nw_http2_transport_stream_close";
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v50, &type, &v71))
    {
      goto LABEL_100;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      v74 = "nw_http2_transport_stream_close";
      v53 = "%{public}s called with null http2_transport";
      goto LABEL_99;
    }

    if (v71 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      v74 = "nw_http2_transport_stream_close";
      v53 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_99;
    }

    backtrace_string = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type;
    v61 = os_log_type_enabled(v51, type);
    if (!backtrace_string)
    {
      if (!v61)
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      v74 = "nw_http2_transport_stream_close";
      v53 = "%{public}s called with null http2_transport, no backtrace";
      goto LABEL_99;
    }

    if (v61)
    {
      *buf = 136446466;
      v74 = "nw_http2_transport_stream_close";
      v75 = 2082;
      v76 = backtrace_string;
      _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_100:
    if (!v50)
    {
      return;
    }

    goto LABEL_101;
  }

  if (!a2)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    v74 = "nw_http2_transport_stream_close";
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v50, &type, &v71))
    {
      goto LABEL_100;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      v74 = "nw_http2_transport_stream_close";
      v53 = "%{public}s called with null stream";
      goto LABEL_99;
    }

    if (v71 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_100;
      }

      *buf = 136446210;
      v74 = "nw_http2_transport_stream_close";
      v53 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_99;
    }

    v66 = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type;
    v67 = os_log_type_enabled(v51, type);
    if (v66)
    {
      if (v67)
      {
        *buf = 136446466;
        v74 = "nw_http2_transport_stream_close";
        v75 = 2082;
        v76 = v66;
        _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v66);
      if (!v50)
      {
        return;
      }

LABEL_101:
      free(v50);
      return;
    }

    if (v67)
    {
      *buf = 136446210;
      v74 = "nw_http2_transport_stream_close";
      v53 = "%{public}s called with null stream, no backtrace";
LABEL_99:
      _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      goto LABEL_100;
    }

    goto LABEL_100;
  }

  if ((*(a2 + 36) & 1) == 0 && gLogDatapath == 1)
  {
    v62 = a2;
    v63 = __nwlog_obj();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG);
    a2 = v62;
    if (v64)
    {
      v65 = *(v62 + 32);
      *buf = 136446722;
      v74 = "nw_http2_transport_stream_close";
      v75 = 2082;
      v76 = (a1 + 205);
      v77 = 1024;
      v78 = v65;
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s closing stream %d that is already closed", buf, 0x1Cu);
      a2 = v62;
    }
  }

  v3 = (a2 + 32);
  v4 = *(a2 + 36);
  if (*(a2 + 32) != -1)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      if (gLogDatapath == 1)
      {
        v5 = a2;
        v6 = __nwlog_obj();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        a2 = v5;
        if (v7)
        {
          *buf = 136446466;
          v74 = "nw_http2_transport_stream_close";
          v75 = 2082;
          v76 = (a1 + 205);
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s not sending RST_STREAM, since we are already closed from nghttp2's perspective", buf, 0x16u);
          a2 = v5;
        }
      }

LABEL_26:
      if (gLogDatapath == 1)
      {
        v55 = a2;
        v56 = __nwlog_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v57 = *(v55 + 32);
          *buf = 136446978;
          v74 = "nw_http2_transport_remove_from_id_table";
          v75 = 2082;
          v76 = (a1 + 205);
          v77 = 1024;
          v78 = v57;
          v79 = 2048;
          v80 = v55;
          _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
        }
      }

      v21 = *(a1 + 120);
      if (v21)
      {
        node = nw_hash_table_get_node(v21, v3, 4);
        if (node)
        {
          if (nw_hash_table_remove_node(*(a1 + 120), node))
          {
            if (gLogDatapath != 1)
            {
              goto LABEL_57;
            }

            v23 = __nwlog_obj();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_57;
            }

            v24 = *v3;
            *buf = 136446722;
            v74 = "nw_http2_transport_remove_from_id_table";
            v75 = 2082;
            v76 = (a1 + 205);
            v77 = 1024;
            v78 = v24;
            v25 = "%{public}s %{public}s removed stream %d from id based table";
            goto LABEL_56;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = *v3;
          *buf = 136446722;
          v74 = "nw_http2_transport_remove_from_id_table";
          v75 = 2082;
          v76 = (a1 + 205);
          v77 = 1024;
          v78 = v33;
          v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s failed to remove id node for stream %d from table", buf, 28);
          type = OS_LOG_TYPE_ERROR;
          v71 = 0;
          if (!__nwlog_fault(v34, &type, &v71))
          {
            goto LABEL_52;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            v36 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_52;
            }

            v37 = *v3;
            *buf = 136446722;
            v74 = "nw_http2_transport_remove_from_id_table";
            v75 = 2082;
            v76 = (a1 + 205);
            v77 = 1024;
            v78 = v37;
            v38 = "%{public}s %{public}s failed to remove id node for stream %d from table";
          }

          else if (v71 == 1)
          {
            v39 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            v36 = type;
            v40 = os_log_type_enabled(gLogObj, type);
            if (v39)
            {
              if (v40)
              {
                v41 = *v3;
                *buf = 136446978;
                v74 = "nw_http2_transport_remove_from_id_table";
                v75 = 2082;
                v76 = (a1 + 205);
                v77 = 1024;
                v78 = v41;
                v79 = 2082;
                v80 = v39;
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s %{public}s failed to remove id node for stream %d from table, dumping backtrace:%{public}s", buf, 0x26u);
              }

              free(v39);
              goto LABEL_52;
            }

            if (!v40)
            {
LABEL_52:
              if (v34)
              {
                free(v34);
              }

              goto LABEL_54;
            }

            v43 = *v3;
            *buf = 136446722;
            v74 = "nw_http2_transport_remove_from_id_table";
            v75 = 2082;
            v76 = (a1 + 205);
            v77 = 1024;
            v78 = v43;
            v38 = "%{public}s %{public}s failed to remove id node for stream %d from table, no backtrace";
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            v36 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_52;
            }

            v42 = *v3;
            *buf = 136446722;
            v74 = "nw_http2_transport_remove_from_id_table";
            v75 = 2082;
            v76 = (a1 + 205);
            v77 = 1024;
            v78 = v42;
            v38 = "%{public}s %{public}s failed to remove id node for stream %d from table, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v35, v36, v38, buf, 0x1Cu);
          goto LABEL_52;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v32 = *v3;
          *buf = 136446722;
          v74 = "nw_http2_transport_remove_from_id_table";
          v75 = 2082;
          v76 = (a1 + 205);
          v77 = 1024;
          v78 = v32;
          v28 = "%{public}s %{public}s stream %d is not present in id based table, will not remove";
          v29 = v31;
          v30 = OS_LOG_TYPE_INFO;
          goto LABEL_37;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v27 = *v3;
          *buf = 136446722;
          v74 = "nw_http2_transport_remove_from_id_table";
          v75 = 2082;
          v76 = (a1 + 205);
          v77 = 1024;
          v78 = v27;
          v28 = "%{public}s %{public}s id based table is NULL, cannot remove stream %d";
          v29 = v26;
          v30 = OS_LOG_TYPE_ERROR;
LABEL_37:
          _os_log_impl(&dword_181A37000, v29, v30, v28, buf, 0x1Cu);
        }
      }

LABEL_54:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
LABEL_57:
        if (gLogDatapath == 1)
        {
          v58 = __nwlog_obj();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v59 = *v3;
            *buf = 136446722;
            v74 = "nw_http2_transport_stream_close";
            v75 = 2082;
            v76 = (a1 + 205);
            v77 = 1024;
            v78 = v59;
            _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s removed stream %d from id based table", buf, 0x1Cu);
          }
        }

        *v3 = -1;
        return;
      }

      v44 = *v3;
      *buf = 136446722;
      v74 = "nw_http2_transport_stream_close";
      v75 = 2082;
      v76 = (a1 + 205);
      v77 = 1024;
      v78 = v44;
      v25 = "%{public}s %{public}s did not remove stream %d from id table";
LABEL_56:
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v25, buf, 0x1Cu);
      goto LABEL_57;
    }

    *(a2 + 36) = v4 & 0xFE;
    if (gLogDatapath == 1)
    {
      v68 = a2;
      v69 = __nwlog_obj();
      v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
      a2 = v68;
      if (v70)
      {
        *buf = 136446466;
        v74 = "nw_http2_transport_stream_send_rst_stream";
        v75 = 2082;
        v76 = (a1 + 205);
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
        a2 = v68;
      }
    }

    v9 = a2;
    if (*v3 == -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v19 = *v3;
      *buf = 136446722;
      v74 = "nw_http2_transport_stream_send_rst_stream";
      v75 = 2082;
      v76 = (a1 + 205);
      v77 = 1024;
      v78 = v19;
      v14 = "%{public}s %{public}s cannot send RST_STREAM for stream with invalid stream id %d";
      v15 = v18;
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v10 = nghttp2_submit_rst_stream();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (v10)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v12 = *v3;
          v13 = nghttp2_strerror();
          *buf = 136446978;
          v74 = "nw_http2_transport_stream_send_rst_stream";
          v75 = 2082;
          v76 = (a1 + 205);
          v77 = 1024;
          v78 = v12;
          v79 = 2082;
          v80 = v13;
          v14 = "%{public}s %{public}s Failed to submit RST_STREAM on stream %d: %{public}s";
          v15 = v11;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = 38;
LABEL_24:
          _os_log_impl(&dword_181A37000, v15, v16, v14, buf, v17);
        }

LABEL_25:
        nw_http2_transport_session_send(a1);
        a2 = v9;
        goto LABEL_26;
      }

      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      v20 = *v3;
      *buf = 136446722;
      v74 = "nw_http2_transport_stream_send_rst_stream";
      v75 = 2082;
      v76 = (a1 + 205);
      v77 = 1024;
      v78 = v20;
      v14 = "%{public}s %{public}s Submitted RST_STREAM on stream %d";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
    }

    v17 = 28;
    goto LABEL_24;
  }

  *(a2 + 36) = v4 & 0xFE;
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v74 = "nw_http2_transport_stream_close";
      v75 = 2082;
      v76 = (a1 + 205);
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream id is -1, skipping rst_stream and removal from id based table", buf, 0x16u);
    }
  }
}

uint64_t before_frame_send_callback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v23 = a3;
    v24 = a2;
    v25 = __nwlog_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    a2 = v24;
    a3 = v23;
    if (v26)
    {
      v27 = *(v24 + 2);
      v28 = *v24;
      *buf = 136446722;
      v37 = "before_frame_send_callback";
      v38 = 1024;
      *v39 = v27;
      *&v39[4] = 2048;
      *&v39[6] = v28;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s called for frame on stream %d, length (no header) %zu", buf, 0x1Cu);
      a2 = v24;
      a3 = v23;
    }
  }

  v3 = *(a2 + 2);
  if (v3)
  {
    if (*(a2 + 12) != 1 || *(a2 + 14) > 1u)
    {
      return 0;
    }

    if (a3)
    {
      v4 = a3;
      if (*(a3 + 120))
      {
        *type = 0;
        stream_from_id = nw_http2_transport_get_stream_from_id(a3, v3, type);
        if (stream_from_id)
        {
          if (*(stream_from_id + 36))
          {
            return 0;
          }

          v6 = stream_from_id;
          if (*type)
          {
            nw_http2_transport_stream_connected(v4, stream_from_id, *type);
            return 0;
          }

          v19 = __nwlog_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v37 = "before_frame_send_callback";
            v38 = 2082;
            *v39 = v4 + 205;
            *&v39[8] = 2048;
            *&v39[10] = v6;
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}s stream (%p) did not have protocol extra", buf, 0x20u);
          }
        }

        return 4294966775;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = v4 + 205;
      *buf = 136446466;
      v37 = "before_frame_send_callback";
      v38 = 2082;
      *v39 = v4 + 205;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s id based hash table has not yet been created, failing connection", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      v35 = 0;
      if (!__nwlog_fault(v9, type, &v35))
      {
        goto LABEL_33;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446466;
          v37 = "before_frame_send_callback";
          v38 = 2082;
          *v39 = v8;
          v12 = "%{public}s %{public}s id based hash table has not yet been created, failing connection";
LABEL_31:
          v20 = v10;
          v21 = v11;
          v22 = 22;
LABEL_32:
          _os_log_impl(&dword_181A37000, v20, v21, v12, buf, v22);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      if (v35 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446466;
          v37 = "before_frame_send_callback";
          v38 = 2082;
          *v39 = v8;
          v12 = "%{public}s %{public}s id based hash table has not yet been created, failing connection, backtrace limit exceeded";
          goto LABEL_31;
        }

LABEL_33:
        if (v9)
        {
          free(v9);
        }

        return 4294966394;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v14 = os_log_type_enabled(v10, type[0]);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v37 = "before_frame_send_callback";
          v38 = 2082;
          *v39 = v8;
          v12 = "%{public}s %{public}s id based hash table has not yet been created, failing connection, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (!v14)
      {
LABEL_23:
        free(backtrace_string);
        goto LABEL_33;
      }

      *buf = 136446722;
      v37 = "before_frame_send_callback";
      v38 = 2082;
      *v39 = v8;
      *&v39[8] = 2082;
      *&v39[10] = backtrace_string;
      v15 = "%{public}s %{public}s id based hash table has not yet been created, failing connection, dumping backtrace:%{public}s";
      v16 = v10;
      v17 = v11;
      v18 = 32;
LABEL_22:
      _os_log_impl(&dword_181A37000, v16, v17, v15, buf, v18);
      goto LABEL_23;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v37 = "before_frame_send_callback";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v9, type, &v35))
    {
      goto LABEL_33;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (!os_log_type_enabled(v31, type[0]))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v37 = "before_frame_send_callback";
      v12 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type[0];
      v33 = os_log_type_enabled(v31, type[0]);
      if (backtrace_string)
      {
        if (!v33)
        {
          goto LABEL_23;
        }

        *buf = 136446466;
        v37 = "before_frame_send_callback";
        v38 = 2082;
        *v39 = backtrace_string;
        v15 = "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s";
        v16 = v31;
        v17 = v32;
        v18 = 22;
        goto LABEL_22;
      }

      if (!v33)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v37 = "before_frame_send_callback";
      v12 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (!os_log_type_enabled(v31, type[0]))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v37 = "before_frame_send_callback";
      v12 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    v20 = v31;
    v21 = v32;
    v22 = 12;
    goto LABEL_32;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v29 = __nwlog_obj();
  result = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446210;
    v37 = "before_frame_send_callback";
    _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s ignoring frame on stream 0", buf, 0xCu);
    return 0;
  }

  return result;
}

uint64_t send_callback(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v36 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "send_callback";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v76) = 0;
    if (!__nwlog_fault(v26, type, &v76))
    {
      goto LABEL_79;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (!os_log_type_enabled(v37, type[0]))
      {
        goto LABEL_79;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_callback";
      v29 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v76 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type[0];
      v48 = os_log_type_enabled(v37, type[0]);
      if (backtrace_string)
      {
        if (v48)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "send_callback";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = backtrace_string;
          v32 = "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s";
          v33 = v37;
          v34 = v38;
          v35 = 22;
          goto LABEL_55;
        }

LABEL_56:
        free(backtrace_string);
        goto LABEL_79;
      }

      if (!v48)
      {
        goto LABEL_79;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_callback";
      v29 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type[0];
      if (!os_log_type_enabled(v37, type[0]))
      {
        goto LABEL_79;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "send_callback";
      v29 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    v54 = v37;
    v55 = v38;
    v56 = 12;
    goto LABEL_78;
  }

  v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (gLogDatapath == 1)
  {
    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a5 + 205;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (gLogDatapath == 1)
  {
    v40 = __nwlog_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "send_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a5 + 205;
      HIWORD(buf[2]) = 2048;
      v79 = a3;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s asked to write %lu bytes by nghttp2", buf, 0x20u);
    }
  }

  v74 = 0;
  v75 = &v74;
  v73[0] = 0;
  v73[1] = v73;
  v9 = *(a5 + 32);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = *(v10 + 88);
      if (v11)
      {
        if (!v11(*(a5 + 32), a5, 1, a3, 0xFFFFFFFFLL, &v74))
        {
          return -504;
        }

        v12 = v74;
        if (!v74)
        {
          return -504;
        }

        *type = 0;
        v70 = type;
        v71 = 0x2000000000;
        v72 = 0;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 0x40000000;
        v61 = ___ZL13send_callbackP15nghttp2_sessionPKhmiPv_block_invoke;
        v62 = &unk_1E6A322C8;
        v63 = type;
        v64 = a3;
        v65 = a2;
        v66 = a5;
        v67 = &v74;
        v68 = v73;
        do
        {
          if (!v12)
          {
            break;
          }

          v13 = *(v12 + 32);
          v14 = (v61)(v60);
          v12 = v13;
        }

        while ((v14 & 1) != 0);
        v15 = *(v9 + 24);
        if (v15)
        {
          v16 = *(v15 + 96);
          if (v16)
          {
            v16(v9, v73);
LABEL_15:
            v17 = v74;
            if (v74)
            {
              *(v74 + 40) = &v76;
              v76 = v17;
              v77 = v75;
              v74 = 0;
              v75 = &v74;
              buf[0] = MEMORY[0x1E69E9820];
              buf[1] = 0x40000000;
              buf[2] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              v79 = &__block_descriptor_tmp_21_49595;
              v80 = 0;
              do
              {
                v18 = v76;
                if (!v76)
                {
                  break;
                }

                v19 = *(v76 + 32);
                v20 = *(v76 + 40);
                v21 = (v19 + 40);
                if (!v19)
                {
                  v21 = &v77;
                }

                *v21 = v20;
                *v20 = v19;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
              }

              while (((buf[2])(buf) & 1) != 0);
            }

            if (BYTE1(v8[82].isa) == 1)
            {
              v49 = __nwlog_obj();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                v50 = *(v70 + 6);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "send_callback";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = a5 + 205;
                HIWORD(buf[2]) = 1024;
                LODWORD(v79) = v50;
                _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s wrote %u bytes", buf, 0x1Cu);
              }
            }

            v22 = *(v70 + 6);
            _Block_object_dispose(type, 8);
            return v22;
          }
        }

        v41 = __nwlog_obj();
        v42 = *(v9 + 16);
        if (!v42)
        {
          v42 = "invalid";
        }

        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v42;
        v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s protocol %{public}s has invalid finalize_output_frames callback", buf, 22);
        LOBYTE(v76) = 16;
        v59 = 0;
        if (__nwlog_fault(v43, &v76, &v59))
        {
          if (v76 == 17)
          {
            v44 = __nwlog_obj();
            v45 = v76;
            if (!os_log_type_enabled(v44, v76))
            {
              goto LABEL_87;
            }

            v46 = *(v9 + 16);
            if (!v46)
            {
              v46 = "invalid";
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "send_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v46;
            v47 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback";
            goto LABEL_86;
          }

          if (v59 != 1)
          {
            v44 = __nwlog_obj();
            v45 = v76;
            if (!os_log_type_enabled(v44, v76))
            {
              goto LABEL_87;
            }

            v57 = *(v9 + 16);
            if (!v57)
            {
              v57 = "invalid";
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "send_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v57;
            v47 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_86;
          }

          v51 = __nw_create_backtrace_string();
          v44 = __nwlog_obj();
          v45 = v76;
          v52 = os_log_type_enabled(v44, v76);
          if (v51)
          {
            if (v52)
            {
              v53 = *(v9 + 16);
              if (!v53)
              {
                v53 = "invalid";
              }

              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "send_callback";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v53;
              HIWORD(buf[2]) = 2082;
              v79 = v51;
              _os_log_impl(&dword_181A37000, v44, v45, "%{public}s protocol %{public}s has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v51);
            v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            goto LABEL_87;
          }

          v8 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          if (v52)
          {
            v58 = *(v9 + 16);
            if (!v58)
            {
              v58 = "invalid";
            }

            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "send_callback";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v58;
            v47 = "%{public}s protocol %{public}s has invalid finalize_output_frames callback, no backtrace";
LABEL_86:
            _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x16u);
          }
        }

LABEL_87:
        if (v43)
        {
          free(v43);
        }

        goto LABEL_15;
      }
    }
  }

  v24 = __nwlog_obj();
  v25 = a5 + 205;
  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "send_callback";
  WORD2(buf[1]) = 2082;
  *(&buf[1] + 6) = a5 + 205;
  v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s %{public}s output handler has no get_output_frames callback", buf, 22);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v76) = 0;
  if (!__nwlog_fault(v26, type, &v76))
  {
    goto LABEL_79;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v27 = __nwlog_obj();
    v28 = type[0];
    if (os_log_type_enabled(v27, type[0]))
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "send_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v25;
      v29 = "%{public}s %{public}s output handler has no get_output_frames callback";
LABEL_68:
      v54 = v27;
      v55 = v28;
      v56 = 22;
LABEL_78:
      _os_log_impl(&dword_181A37000, v54, v55, v29, buf, v56);
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  if (v76 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type[0];
    v31 = os_log_type_enabled(v27, type[0]);
    if (!backtrace_string)
    {
      if (v31)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "send_callback";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v25;
        v29 = "%{public}s %{public}s output handler has no get_output_frames callback, no backtrace";
        goto LABEL_68;
      }

      goto LABEL_79;
    }

    if (v31)
    {
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "send_callback";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v25;
      HIWORD(buf[2]) = 2082;
      v79 = backtrace_string;
      v32 = "%{public}s %{public}s output handler has no get_output_frames callback, dumping backtrace:%{public}s";
      v33 = v27;
      v34 = v28;
      v35 = 32;
LABEL_55:
      _os_log_impl(&dword_181A37000, v33, v34, v32, buf, v35);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  v27 = __nwlog_obj();
  v28 = type[0];
  if (os_log_type_enabled(v27, type[0]))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "send_callback";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v25;
    v29 = "%{public}s %{public}s output handler has no get_output_frames callback, backtrace limit exceeded";
    goto LABEL_68;
  }

LABEL_79:
  if (v26)
  {
    free(v26);
  }

  return -902;
}

uint64_t ___ZL13send_callbackP15nghttp2_sessionPKhmiPv_block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v20);
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 40) - v5;
  if (v6 >= v20)
  {
    v7 = v20;
  }

  else
  {
    v7 = v6;
  }

  memcpy(v4, (*(a1 + 48) + v5), v7);
  *(*(*(a1 + 32) + 8) + 24) += v7;
  nw_frame_claim(a2, v8, v7, 0);
  nw_frame_collapse(a2);
  nw_frame_unclaim(a2, v9, v7, 0);
  v10 = (*(a1 + 64) + 8);
  v11 = (a2 + 32);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v12)
  {
    v10 = (v12 + 40);
  }

  *v10 = v13;
  *v13 = v12;
  *v11 = 0;
  *(a2 + 40) = 0;
  v14 = *(a1 + 72);
  v15 = *(v14 + 8);
  *(a2 + 40) = v15;
  *v15 = a2;
  *(v14 + 8) = v11;
  if (gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 56);
      *buf = 136446722;
      v22 = "send_callback_block_invoke";
      if (v18)
      {
        v19 = (v18 + 205);
      }

      else
      {
        v19 = "";
      }

      v23 = 2082;
      v24 = v19;
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s copied %u bytes into output frame", buf, 0x1Cu);
    }
  }

  return 1;
}

uint64_t on_stream_close_callback(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v33 = a2;
    v34 = __nwlog_obj();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
    a2 = v33;
    if (v35)
    {
      *buf = 136446466;
      v45 = "on_stream_close_callback";
      v46 = 1024;
      LODWORD(v47) = v33;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s called for stream %d", buf, 0x12u);
      a2 = v33;
    }
  }

  if (!a4)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v45 = "on_stream_close_callback";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s nghttp2 user data is NULL, not http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v10, &type, &v42))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v45 = "on_stream_close_callback";
      v13 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v37, type);
      if (backtrace_string)
      {
        if (!v39)
        {
          goto LABEL_40;
        }

        *buf = 136446466;
        v45 = "on_stream_close_callback";
        v46 = 2082;
        v47 = backtrace_string;
        v26 = "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s";
        v27 = v37;
        v28 = v38;
        v29 = 22;
        goto LABEL_39;
      }

      if (!v39)
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v45 = "on_stream_close_callback";
      v13 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v45 = "on_stream_close_callback";
      v13 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    v30 = v37;
    v31 = v38;
    v32 = 12;
    goto LABEL_49;
  }

  stream_node_from_id = nw_http2_transport_get_stream_node_from_id(a4, a2);
  if (!stream_node_from_id)
  {
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v45 = "on_stream_close_callback";
      v46 = 2082;
      v47 = (a4 + 205);
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream that is not in id based table, ignoring", buf, 0x16u);
    }

    return 0;
  }

  v6 = stream_node_from_id;
  v7 = stream_node_from_id[2];
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = (a4 + 205);
    *buf = 136446722;
    v45 = "on_stream_close_callback";
    v46 = 2082;
    v47 = (a4 + 205);
    v48 = 2048;
    v49 = v6;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s no stream found in id hash node %p", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v10, &type, &v42))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_50;
      }

      *buf = 136446722;
      v45 = "on_stream_close_callback";
      v46 = 2082;
      v47 = v16;
      v48 = 2048;
      v49 = v6;
      v13 = "%{public}s %{public}s no stream found in id hash node %p";
    }

    else if (v42 == 1)
    {
      v22 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      v23 = os_log_type_enabled(gLogObj, type);
      if (v22)
      {
        if (v23)
        {
          *buf = 136446978;
          v45 = "on_stream_close_callback";
          v46 = 2082;
          v47 = v16;
          v48 = 2048;
          v49 = v6;
          v50 = 2082;
          v51 = v22;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s no stream found in id hash node %p, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v22);
        goto LABEL_50;
      }

      if (!v23)
      {
        goto LABEL_50;
      }

      *buf = 136446722;
      v45 = "on_stream_close_callback";
      v46 = 2082;
      v47 = v16;
      v48 = 2048;
      v49 = v6;
      v13 = "%{public}s %{public}s no stream found in id hash node %p, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_50;
      }

      *buf = 136446722;
      v45 = "on_stream_close_callback";
      v46 = 2082;
      v47 = v16;
      v48 = 2048;
      v49 = v6;
      v13 = "%{public}s %{public}s no stream found in id hash node %p, backtrace limit exceeded";
    }

    v30 = v17;
    v31 = v18;
    v32 = 32;
LABEL_49:
    _os_log_impl(&dword_181A37000, v30, v31, v13, buf, v32);
    goto LABEL_50;
  }

  v8 = stream_node_from_id[4];
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v20 = *(v7 + 32);
      *buf = 136446722;
      v45 = "on_stream_close_callback";
      v46 = 2082;
      v47 = (a4 + 205);
      v48 = 1024;
      LODWORD(v49) = v20;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s %{public}s closing stream %d that has no input handler", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  if (*(v8 + 24))
  {
LABEL_20:
    if (*(v7 + 36))
    {
      if (gLogDatapath)
      {
        v40 = __nwlog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v41 = *(v7 + 32);
          *buf = 136446722;
          v45 = "on_stream_close_callback";
          v46 = 2082;
          v47 = (a4 + 205);
          v48 = 1024;
          LODWORD(v49) = v41;
          _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s closing stream %d", buf, 0x1Cu);
        }
      }

      *(v7 + 36) &= ~1u;
      nw_http2_transport_stream_close(a4, v7);
    }

    else if (gLogDatapath)
    {
      v21 = __nwlog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v45 = "on_stream_close_callback";
        v46 = 2082;
        v47 = (a4 + 205);
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s not closing already closed stream", buf, 0x16u);
      }
    }

    nw_http2_transport_protocol_close(a4, v8);
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = (a4 + 205);
  *buf = 136446466;
  v45 = "on_stream_close_callback";
  v46 = 2082;
  v47 = (a4 + 205);
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s protocol has null callbacks", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (!__nwlog_fault(v10, &type, &v42))
  {
    goto LABEL_50;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (os_log_type_enabled(gLogObj, type))
    {
      *buf = 136446466;
      v45 = "on_stream_close_callback";
      v46 = 2082;
      v47 = v9;
      v13 = "%{public}s %{public}s protocol has null callbacks";
LABEL_48:
      v30 = v11;
      v31 = v12;
      v32 = 22;
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (v42 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    v25 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446466;
        v45 = "on_stream_close_callback";
        v46 = 2082;
        v47 = v9;
        v13 = "%{public}s %{public}s protocol has null callbacks, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    if (!v25)
    {
LABEL_40:
      free(backtrace_string);
      goto LABEL_50;
    }

    *buf = 136446722;
    v45 = "on_stream_close_callback";
    v46 = 2082;
    v47 = v9;
    v48 = 2082;
    v49 = backtrace_string;
    v26 = "%{public}s %{public}s protocol has null callbacks, dumping backtrace:%{public}s";
    v27 = v11;
    v28 = v12;
    v29 = 32;
LABEL_39:
    _os_log_impl(&dword_181A37000, v27, v28, v26, buf, v29);
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  v12 = type;
  if (os_log_type_enabled(gLogObj, type))
  {
    *buf = 136446466;
    v45 = "on_stream_close_callback";
    v46 = 2082;
    v47 = v9;
    v13 = "%{public}s %{public}s protocol has null callbacks, backtrace limit exceeded";
    goto LABEL_48;
  }

LABEL_50:
  if (v10)
  {
    free(v10);
  }

  return 4294966394;
}

void nw_http2_transport_protocol_close(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = "";
      if (a1)
      {
        v8 = (a1 + 205);
      }

      *buf = 136446466;
      v23 = "nw_http2_transport_protocol_close";
      v24 = 2082;
      v25 = v8;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http2_transport_protocol_close";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v10, &type, &v20))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v23 = "nw_http2_transport_protocol_close";
      v13 = "%{public}s called with null http2_transport";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v23 = "nw_http2_transport_protocol_close";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v10)
        {
          return;
        }

LABEL_46:
        free(v10);
        return;
      }

      if (!v17)
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v23 = "nw_http2_transport_protocol_close";
      v13 = "%{public}s called with null http2_transport, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v23 = "nw_http2_transport_protocol_close";
      v13 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    }

LABEL_44:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_45;
  }

  if (a2)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(v4 + 184);
      if (!v5 || (v5(a2, a1), (v4 = *(a2 + 24)) != 0))
      {
        v6 = *(v4 + 48);
        if (v6)
        {
          v6(a2, a1);
        }
      }
    }

    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v23 = "nw_http2_transport_protocol_close";
        v24 = 2082;
        v25 = (a1 + 205);
        v26 = 2048;
        v27 = a2;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sent input_finished and disconnected to protocol %p", buf, 0x20u);
      }
    }

    return;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http2_transport_protocol_close";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null input_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v10, &type, &v20))
  {
    goto LABEL_45;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_45;
    }

    *buf = 136446210;
    v23 = "nw_http2_transport_protocol_close";
    v13 = "%{public}s called with null input_protocol";
    goto LABEL_44;
  }

  if (v20 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_45;
    }

    *buf = 136446210;
    v23 = "nw_http2_transport_protocol_close";
    v13 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    goto LABEL_44;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v19 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_45;
    }

    *buf = 136446210;
    v23 = "nw_http2_transport_protocol_close";
    v13 = "%{public}s called with null input_protocol, no backtrace";
    goto LABEL_44;
  }

  if (v19)
  {
    *buf = 136446466;
    v23 = "nw_http2_transport_protocol_close";
    v24 = 2082;
    v25 = v18;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_46;
  }
}

uint64_t __33__nw_listener_inbox_socket_start__block_invoke_2(uint64_t a1)
{
  nw_fd_wrapper_close(*(a1 + 32));
  v2 = *(*(a1 + 40) + 8);

  return [v2 handleInboxCancelComplete:?];
}

void ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 448);
    v7 = *(v5 + 8);
    v8 = v7;
    if (v7)
    {
      logging_description = _nw_endpoint_get_logging_description(v7);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v10 = "";
    v11 = *(a1 + 40);
    v12[0] = 67109890;
    if (v11)
    {
      v10 = "forced ";
    }

    v12[1] = v6;
    v13 = 2082;
    v14 = logging_description;
    v15 = 2082;
    v16 = a2;
    v17 = 2082;
    v18 = v10;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "[C%u %{public}s %{public}s] is already cancelled, ignoring %{public}scancel", v12, 0x26u);
  }
}

BOOL nw_protocol_http2_transport_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v71 = 2048;
      v72 = a2;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s called with input_protocol %p", buf, 0x16u);
    }
  }

  if (!a1)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_protocol_http2_transport_remove_input_handler";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v20, &type, &v67))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (!os_log_type_enabled(v43, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null protocol";
      goto LABEL_128;
    }

    if (v67 != 1)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (!os_log_type_enabled(v43, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_128;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v44 = type;
    v54 = os_log_type_enabled(v43, type);
    if (!backtrace_string)
    {
      if (!v54)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_128;
    }

    if (!v54)
    {
      goto LABEL_104;
    }

    *buf = 136446466;
    v70 = "nw_protocol_http2_transport_remove_input_handler";
    v71 = 2082;
    v72 = backtrace_string;
    v55 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_103;
  }

  handle = a1->handle;
  if (!handle)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_protocol_http2_transport_remove_input_handler";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null http2_transport", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v20, &type, &v67))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (!os_log_type_enabled(v43, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null http2_transport";
      goto LABEL_128;
    }

    if (v67 != 1)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (!os_log_type_enabled(v43, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_128;
    }

    backtrace_string = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v44 = type;
    v56 = os_log_type_enabled(v43, type);
    if (!backtrace_string)
    {
      if (!v56)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null http2_transport, no backtrace";
      goto LABEL_128;
    }

    if (!v56)
    {
      goto LABEL_104;
    }

    *buf = 136446466;
    v70 = "nw_protocol_http2_transport_remove_input_handler";
    v71 = 2082;
    v72 = backtrace_string;
    v55 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_103:
    _os_log_impl(&dword_181A37000, v43, v44, v55, buf, 0x16u);
    goto LABEL_104;
  }

  if (!a2)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_protocol_http2_transport_remove_input_handler";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v20, &type, &v67))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (!os_log_type_enabled(v43, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null input_protocol";
      goto LABEL_128;
    }

    if (v67 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = type;
      v57 = os_log_type_enabled(v43, type);
      if (backtrace_string)
      {
        if (v57)
        {
          *buf = 136446466;
          v70 = "nw_protocol_http2_transport_remove_input_handler";
          v71 = 2082;
          v72 = backtrace_string;
          v55 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
          goto LABEL_103;
        }

LABEL_104:
        free(backtrace_string);
        goto LABEL_62;
      }

      if (!v57)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (!os_log_type_enabled(v43, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v70 = "nw_protocol_http2_transport_remove_input_handler";
      v23 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

LABEL_128:
    v36 = v43;
    v37 = v44;
    v38 = 12;
    goto LABEL_61;
  }

  if (!handle[14])
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_http2_transport_remove_input_handler";
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null table", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v48, &type, &v67))
    {
      goto LABEL_132;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (!os_log_type_enabled(v49, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v70 = "nw_http2_transport_remove_input_handler";
      v51 = "%{public}s called with null table";
    }

    else if (v67 == 1)
    {
      v58 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = type;
      v59 = os_log_type_enabled(v49, type);
      if (v58)
      {
        if (v59)
        {
          *buf = 136446466;
          v70 = "nw_http2_transport_remove_input_handler";
          v71 = 2082;
          v72 = v58;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v58);
        goto LABEL_132;
      }

      if (!v59)
      {
LABEL_132:
        if (v48)
        {
          free(v48);
        }

        goto LABEL_14;
      }

      *buf = 136446210;
      v70 = "nw_http2_transport_remove_input_handler";
      v51 = "%{public}s called with null table, no backtrace";
    }

    else
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (!os_log_type_enabled(v49, type))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      v70 = "nw_http2_transport_remove_input_handler";
      v51 = "%{public}s called with null table, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
    goto LABEL_132;
  }

  if (gLogDatapath == 1)
  {
    v52 = __nwlog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v70 = "nw_http2_transport_remove_input_handler";
      v71 = 2082;
      v72 = (handle + 205);
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  output_handler_context = a2->output_handler_context;
  if (output_handler_context)
  {
    v6 = output_handler_context[4];
    if (v6)
    {
      if ((*(v6 + 36) & 1) != 0 || *(v6 + 32) != -1)
      {
        nw_http2_transport_stream_close(handle, v6);
LABEL_21:
        if (!nw_http2_transport_remove_from_protocol_table(handle, a2))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v70 = "nw_http2_transport_remove_input_handler";
            v71 = 2082;
            v72 = (handle + 205);
            v73 = 2048;
            *v74 = a2;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s unable to remove protocol %p from protocol table", buf, 0x20u);
          }
        }

        if (a2->output_handler == a1)
        {
          nw_protocol_set_output_handler(a2, 0);
        }

        if (v6)
        {
          nw_http2_transport_release_frame_array(v6);
          nw_http2_transport_release_frame_array((v6 + 16));
          free(v6);
        }

        v16 = handle[14];
        if (v16)
        {
          v17 = *(v16 + 48);
          if (v17)
          {
            if (gLogDatapath)
            {
              v60 = __nwlog_obj();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                v70 = "nw_protocol_http2_transport_remove_input_handler";
                v71 = 2082;
                v72 = (handle + 205);
                v73 = 1024;
                *v74 = v17;
                _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s not destroying, still have %u input handlers", buf, 0x1Cu);
              }
            }

            if (a1->default_input_handler == a2)
            {
              v18 = handle[14];
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 0x40000000;
              v65[2] = ___ZL48nw_protocol_http2_transport_remove_input_handlerP11nw_protocolS0_b_block_invoke_31;
              v65[3] = &__block_descriptor_tmp_32_41296;
              v65[4] = a1;
              v65[5] = handle;
              nw_hash_table_apply(v18, v65);
            }

            return 1;
          }

          if (gLogDatapath)
          {
            v61 = __nwlog_obj();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v70 = "nw_protocol_http2_transport_remove_input_handler";
              v71 = 2082;
              v72 = (handle + 205);
              _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no more input handlers, scheduling destroy", buf, 0x16u);
            }
          }

          nw_protocol_set_input_handler(a1, 0);
          v24 = handle[9];
          if (v24)
          {
            nw_queue_cancel_source(v24);
          }

          v25 = nw_parameters_copy_context(handle[11]);
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 0x40000000;
          v66[2] = ___ZL48nw_protocol_http2_transport_remove_input_handlerP11nw_protocolS0_b_block_invoke;
          v66[3] = &__block_descriptor_tmp_30_41290;
          v66[4] = a1;
          handle[9] = nw_queue_context_create_source(v25, 2, 3, 0, v66, 0);
          if (v25)
          {
            os_release(v25);
          }

          v26 = nw_parameters_copy_protocol_value(handle[11], handle, "tunnelTeardownDelay");
          if (v26)
          {
            v27 = v26;
            handle[8] = xpc_uint64_get_value(v26);
            if (gLogDatapath == 1)
            {
              v62 = __nwlog_obj();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                v63 = handle[8];
                *buf = 136446722;
                v70 = "nw_protocol_http2_transport_remove_input_handler";
                v71 = 2082;
                v72 = (handle + 205);
                v73 = 2048;
                *v74 = v63;
                _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s destroy timeout set to %lld milliseconds via first stream parameters", buf, 0x20u);
              }
            }

            xpc_release(v27);
            goto LABEL_68;
          }

          v30 = nw_setting_http2_transport_teardown_delay;
          networkd_settings_init();
          if (sCachedSettings)
          {
            pthread_mutex_lock(&sSettingsMutex);
            if (sCachedSettings)
            {
              int64 = xpc_dictionary_get_int64(sCachedSettings, v30);
              pthread_mutex_unlock(&sSettingsMutex);
              v32 = handle + 8;
              if (int64)
              {
                *v32 = int64;
                if (gLogDatapath != 1)
                {
                  goto LABEL_68;
                }

                v33 = __nwlog_obj();
                if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_68;
                }

                v34 = handle[8];
                *buf = 136446722;
                v70 = "nw_protocol_http2_transport_remove_input_handler";
                v71 = 2082;
                v72 = (handle + 205);
                v73 = 2048;
                *v74 = v34;
                v35 = "%{public}s %{public}s destroy timeout set to %lld milliseconds via the defaults write";
LABEL_138:
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, v35, buf, 0x20u);
LABEL_68:
                v39 = handle[9];
                v40 = dispatch_time(0x8000000000000000, 1000000 * handle[8]);
                nw_queue_set_timer_values(v39, v40, 0xFFFFFFFFFFFFFFFFLL, 1000 * handle[8]);
                nw_queue_activate_source(handle[9]);
                return 1;
              }

LABEL_67:
              *v32 = 10000;
              if (gLogDatapath != 1)
              {
                goto LABEL_68;
              }

              v33 = __nwlog_obj();
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_68;
              }

              v64 = handle[8];
              *buf = 136446722;
              v70 = "nw_protocol_http2_transport_remove_input_handler";
              v71 = 2082;
              v72 = (handle + 205);
              v73 = 2048;
              *v74 = v64;
              v35 = "%{public}s %{public}s destroy timeout set to %lld milliseconds by default";
              goto LABEL_138;
            }

            pthread_mutex_unlock(&sSettingsMutex);
          }

          v32 = handle + 8;
          goto LABEL_67;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = (handle + 205);
        *buf = 136446722;
        v70 = "nw_protocol_http2_transport_remove_input_handler";
        v71 = 2082;
        v72 = (handle + 205);
        v73 = 2048;
        *v74 = a2;
        v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s http2_transport_streams_protocol NULL when removing input handler %p", buf, 32);
        type = OS_LOG_TYPE_ERROR;
        v67 = 0;
        if (!__nwlog_fault(v20, &type, &v67))
        {
          goto LABEL_62;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v70 = "nw_protocol_http2_transport_remove_input_handler";
            v71 = 2082;
            v72 = v19;
            v73 = 2048;
            *v74 = a2;
            v23 = "%{public}s %{public}s http2_transport_streams_protocol NULL when removing input handler %p";
LABEL_60:
            v36 = v21;
            v37 = v22;
            v38 = 32;
LABEL_61:
            _os_log_impl(&dword_181A37000, v36, v37, v23, buf, v38);
          }
        }

        else if (v67 == 1)
        {
          v28 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          v29 = os_log_type_enabled(gLogObj, type);
          if (v28)
          {
            if (v29)
            {
              *buf = 136446978;
              v70 = "nw_protocol_http2_transport_remove_input_handler";
              v71 = 2082;
              v72 = v19;
              v73 = 2048;
              *v74 = a2;
              *&v74[8] = 2082;
              *&v74[10] = v28;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s %{public}s http2_transport_streams_protocol NULL when removing input handler %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v28);
            goto LABEL_62;
          }

          if (v29)
          {
            *buf = 136446722;
            v70 = "nw_protocol_http2_transport_remove_input_handler";
            v71 = 2082;
            v72 = v19;
            v73 = 2048;
            *v74 = a2;
            v23 = "%{public}s %{public}s http2_transport_streams_protocol NULL when removing input handler %p, no backtrace";
            goto LABEL_60;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v70 = "nw_protocol_http2_transport_remove_input_handler";
            v71 = 2082;
            v72 = v19;
            v73 = 2048;
            *v74 = a2;
            v23 = "%{public}s %{public}s http2_transport_streams_protocol NULL when removing input handler %p, backtrace limit exceeded";
            goto LABEL_60;
          }
        }

LABEL_62:
        if (v20)
        {
          free(v20);
        }

        return 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 136446466;
      v70 = "nw_http2_transport_remove_input_handler";
      v71 = 2082;
      v72 = (handle + 205);
      v11 = "%{public}s %{public}s not closing already closed stream";
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 136446466;
      v70 = "nw_http2_transport_remove_input_handler";
      v71 = 2082;
      v72 = (handle + 205);
      v11 = "%{public}s %{public}s stream not found as extra";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_181A37000, v12, v13, v11, buf, 0x16u);
    goto LABEL_21;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v70 = "nw_http2_transport_remove_input_handler";
    v71 = 2082;
    v72 = (handle + 205);
    v73 = 2048;
    *v74 = a2;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s output handler context doesn't exist on protocol %p", buf, 0x20u);
  }

LABEL_14:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446978;
    v70 = "nw_protocol_http2_transport_remove_input_handler";
    v71 = 2082;
    v72 = (handle + 205);
    v73 = 1042;
    *v74 = 16;
    *&v74[4] = 2098;
    *&v74[6] = a2;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s http2_transport does not have input handler registered for %{public,uuid_t}.16P", buf, 0x26u);
    return 0;
  }

  return result;
}

BOOL nw_http2_transport_remove_from_protocol_table(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v16 = __nwlog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v21 = "nw_http2_transport_remove_from_protocol_table";
      v22 = 2082;
      v23 = a1 + 205;
      v24 = 2048;
      v25 = a2;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for input handler %p", buf, 0x20u);
    }
  }

  v4 = *(a1 + 112);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v21 = "nw_http2_transport_remove_from_protocol_table";
    v22 = 2082;
    v23 = a1 + 205;
    v24 = 2048;
    v25 = a2;
    v8 = "%{public}s %{public}s protocol based table is NULL, cannot remove protocol %p";
LABEL_11:
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x20u);
    return 0;
  }

  node = nw_hash_table_get_node(v4, a2, 16);
  if (!node)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v21 = "nw_http2_transport_remove_from_protocol_table";
    v22 = 2082;
    v23 = a1 + 205;
    v24 = 2048;
    v25 = a2;
    v8 = "%{public}s %{public}s protocol %p is not present in id based table, cannot remove";
    goto LABEL_11;
  }

  if ((nw_hash_table_remove_node(*(a1 + 112), node) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = a1 + 205;
    *buf = 136446722;
    v21 = "nw_http2_transport_remove_from_protocol_table";
    v22 = 2082;
    v23 = a1 + 205;
    v24 = 2048;
    v25 = a2;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s failed to remove protocol node for protocol %p from table", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v10, &type, &v18))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446722;
      v21 = "nw_http2_transport_remove_from_protocol_table";
      v22 = 2082;
      v23 = v9;
      v24 = 2048;
      v25 = a2;
      v13 = "%{public}s %{public}s failed to remove protocol node for protocol %p from table";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v15 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446978;
          v21 = "nw_http2_transport_remove_from_protocol_table";
          v22 = 2082;
          v23 = v9;
          v24 = 2048;
          v25 = a2;
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %{public}s failed to remove protocol node for protocol %p from table, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (!v15)
      {
LABEL_26:
        if (v10)
        {
          free(v10);
        }

        return 0;
      }

      *buf = 136446722;
      v21 = "nw_http2_transport_remove_from_protocol_table";
      v22 = 2082;
      v23 = v9;
      v24 = 2048;
      v25 = a2;
      v13 = "%{public}s %{public}s failed to remove protocol node for protocol %p from table, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446722;
      v21 = "nw_http2_transport_remove_from_protocol_table";
      v22 = 2082;
      v23 = v9;
      v24 = 2048;
      v25 = a2;
      v13 = "%{public}s %{public}s failed to remove protocol node for protocol %p from table, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x20u);
    goto LABEL_26;
  }

  *(a2 + 56) = 0;
  if (gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v21 = "nw_http2_transport_remove_from_protocol_table";
      v22 = 2082;
      v23 = a1 + 205;
      v24 = 2048;
      v25 = a2;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s removed protocol %p from protocol based table", buf, 0x20u);
    }
  }

  return 1;
}

void nw_http2_transport_release_frame_array(nw_frame_array_s *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446210;
      v9 = "nw_http2_transport_release_frame_array";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s called", &v8, 0xCu);
    }
  }

  while (1)
  {
    tqh_first = a1->tqh_first;
    if (!a1->tqh_first)
    {
      break;
    }

    v3 = *(tqh_first + 2);
    v4 = *(tqh_first + 3);
    p_tqh_last = (v3 + 24);
    if (!v3)
    {
      p_tqh_last = &a1->tqh_last;
    }

    *p_tqh_last = v4;
    *v4 = v3;
    *(tqh_first + 2) = 0;
    *(tqh_first + 3) = 0;
    buffer = nw_frame_get_buffer(tqh_first, 0);
    if (buffer)
    {
      free(buffer);
    }

    nw_frame_reset(tqh_first, 0, 0, 0, 0);
    os_release(tqh_first);
  }
}

uint64_t sub_181E370C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181E3720C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_182AD1DB8();
  swift_allocObject();
  result = sub_182AD1D48();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_182AD20C8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

id nw_interface_create_with_index(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 > 0)
  {

    return _nw_interface_create_with_index(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_create_with_index";
  v13 = 2082;
  v14 = "Invalid interface index";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_create_with_index";
        v13 = 2082;
        v14 = "Invalid interface index";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_create_with_index";
            v13 = 2082;
            v14 = "Invalid interface index";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_create_with_index";
        v13 = 2082;
        v14 = "Invalid interface index";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_create_with_index";
        v13 = 2082;
        v14 = "Invalid interface index";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t sub_181E375A4(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    result = sub_182AD30D8();
    if (v1)
    {
      return v3;
    }
  }

  else
  {
    if (qword_1EA837198 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843330);
    v5 = sub_182AD2678();
    v6 = sub_182AD38B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_181A37000, v5, v6, "Invalid index for interface: 0", v7, 2u);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    sub_1820CD11C();
    swift_allocError();
    *v8 = 5;
    return swift_willThrow();
  }

  return result;
}

size_t sub_181E37718(char *a1, int a2, unsigned int a3)
{
  v4 = if_indextoname(a3, a1);
  if (v4)
  {
    return strlen(v4);
  }

  v6 = MEMORY[0x1865D92E0]();
  if (qword_1EA837198 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843330);
  v8 = sub_182AD2678();
  v9 = sub_182AD38B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = a3;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6;
    _os_log_impl(&dword_181A37000, v8, v9, "if_indextoname failed for interface index %u: %d", v10, 0xEu);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  if ((sub_182AD2758() & 0x100000000) != 0)
  {
    v11 = 22;
  }

  else
  {
    v11 = sub_182AD2768();
  }

  sub_1820CD11C();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

__n128 sub_181E378A4@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a1;
  if (a1 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v3 = a2;
  v8 = sub_181E375A4(a1);
  v6 = v4;
  if (!v4)
  {
    if (v9)
    {
      sub_181C8E1E0(v5, v8, v9, &v30, v28);
      v24 = v29[0];
      *(a3 + 128) = v28[8];
      *(a3 + 144) = v24;
      *(a3 + 154) = *(v29 + 10);
      v25 = v28[5];
      *(a3 + 64) = v28[4];
      *(a3 + 80) = v25;
      v26 = v28[7];
      *(a3 + 96) = v28[6];
      *(a3 + 112) = v26;
      v27 = v28[1];
      *a3 = v28[0];
      *(a3 + 16) = v27;
      result = v28[3];
      *(a3 + 32) = v28[2];
      *(a3 + 48) = result;
      return result;
    }

    if (qword_1EA837198 != -1)
    {
      swift_once();
    }

    v19 = sub_182AD2698();
    __swift_project_value_buffer(v19, qword_1EA843330);
    v20 = sub_182AD2678();
    v21 = sub_182AD38B8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v5;
      _os_log_impl(&dword_181A37000, v20, v21, "Could not get name from index %ld", v22, 0xCu);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    sub_1820CD11C();
    v6 = swift_allocError();
    *v23 = 5;
    swift_willThrow();
  }

  if (qword_1EA837198 != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v10 = sub_182AD2698();
  __swift_project_value_buffer(v10, qword_1EA843330);
  v11 = v6;
  v12 = sub_182AD2678();
  v13 = sub_182AD38B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134218242;
    *(v14 + 4) = v5;
    *(v14 + 12) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&dword_181A37000, v12, v13, "interfaceGetNameFromIndex failed for interface index %ld: %@", v14, 0x16u);
    sub_1820CD170(v15);
    MEMORY[0x1865DF520](v15, -1, -1);
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  *v3 = 2;
  v30 = 2;
  sub_1820CD11C();
  swift_willThrowTypedImpl();

  return result;
}

id _nw_interface_create_with_index_0(unsigned int a1)
{
  sub_181E378A4(a1, &v14, v15);
  type metadata accessor for Interface.BackingClass();
  v1 = swift_allocObject();
  v2 = v16[0];
  v1[9] = v15[8];
  v1[10] = v2;
  *(v1 + 170) = *(v16 + 10);
  v3 = v15[5];
  v1[5] = v15[4];
  v1[6] = v3;
  v4 = v15[7];
  v1[7] = v15[6];
  v1[8] = v4;
  v5 = v15[1];
  v1[1] = v15[0];
  v1[2] = v5;
  v6 = v15[3];
  v1[3] = v15[2];
  v1[4] = v6;
  v7 = type metadata accessor for __NWInterface();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v10 = swift_slowAlloc();
  *&v8[v9] = v10;
  *&v8[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v8[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v1;
  *v10 = 0;
  v13.receiver = v8;
  v13.super_class = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

void _systemPowerNotificationsCallback(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v7 = gurlLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "Received power notification: %x", buf, 8u);
    }

    if (a3 == -536870272)
    {
      [(NWURLSession *)a1 teardownAllConnections];
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v10 = *(a1 + 160);
      *buf = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __62__NWURLSession_systemPowerChangedNotification_notificationID___block_invoke;
      v19 = &unk_1E6A3D8B8;
      v21 = &v12;
      v22 = a4;
      v20 = a1;
      source = nw_queue_context_create_source(v10, 2, 3, 0, buf, 0);
      v13[3] = source;

      nw_queue_set_timer_values(v13[3], 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
      nw_queue_activate_source(v13[3]);
      _Block_object_dispose(&v12, 8);
    }

    else if (a3 == -536870288)
    {
      v8 = IOAllowPowerChange(*(a1 + 36), a4);
      if (v8)
      {
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v9 = gurlLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "Failed to allow system sleep: %d", buf, 8u);
        }
      }
    }
  }
}

BOOL sub_181E38334(uint64_t a1)
{
  v2 = v1;
  v4 = sub_182AD2738();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0, &unk_182AE6F10);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = *(*v1 + 136);
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = *(*a1 + 136);
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    type metadata accessor for Endpoint(0);
    v20 = v19;
    v21 = v17;
    v22 = sub_182AD3978();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = *(*v2 + 176);
  swift_beginAccess();
  LODWORD(v23) = *(v2 + v23);
  v24 = *(*a1 + 176);
  swift_beginAccess();
  if (v23 != *(a1 + v24))
  {
    return 0;
  }

  v26 = qword_1ED411A90;
  swift_beginAccess();
  sub_181AACF84(v2 + v26, v15);
  v27 = qword_1ED411A90;
  swift_beginAccess();
  v28 = *(v7 + 48);
  sub_181AACF84(v15, v9);
  sub_181AACF84(a1 + v27, &v9[v28]);
  v29 = v47;
  v30 = *(v48 + 48);
  if (v30(v9, 1, v47) != 1)
  {
    sub_181AACF84(v9, v12);
    if (v30(&v9[v28], 1, v29) != 1)
    {
      v31 = v48;
      (*(v48 + 32))(v46, &v9[v28], v29);
      sub_181F675A4(&qword_1EA836620, 255, MEMORY[0x1E69E84D0], MEMORY[0x1E69E84D8]);
      v32 = sub_182AD2F48();
      v33 = *(v31 + 8);
      v33(v46, v29);
      sub_181F49A88(v15, &qword_1EA838E00, &qword_182AFE8E0);
      v33(v12, v29);
      sub_181F49A88(v9, &qword_1EA838E00, &qword_182AFE8E0);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_181F49A88(v15, &qword_1EA838E00, &qword_182AFE8E0);
    (*(v48 + 8))(v12, v29);
LABEL_14:
    sub_181F49A88(v9, &qword_1EA838AF0, &unk_182AE6F10);
    return 0;
  }

  sub_181F49A88(v15, &qword_1EA838E00, &qword_182AFE8E0);
  if (v30(&v9[v28], 1, v29) != 1)
  {
    goto LABEL_14;
  }

  sub_181F49A88(v9, &qword_1EA838E00, &qword_182AFE8E0);
LABEL_16:
  swift_beginAccess();
  v34 = *(v2 + 24);
  v35 = *(v2 + 32);
  v36 = *(v2 + 40);
  *v53 = *(v2 + 16);
  v54 = v34;
  v55 = v35;
  v56 = v36;
  swift_beginAccess();
  v37 = *(a1 + 24);
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  *v49 = *(a1 + 16);
  v50 = v37;
  v51 = v38;
  v52 = v39;
  LODWORD(v48) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v53, v49);
  v40 = v50;
  v47 = v51;
  LODWORD(v46) = v52;
  sub_181F49A24(v34, v35, v36);
  sub_181F49A24(v37, v38, v39);
  sub_181F48350(v40, v47, v46);
  sub_181F48350(v54, v55, v56);
  if (v48)
  {
    v41 = (v2 + *(*v2 + 128));
    swift_beginAccess();
    if (v41[1])
    {
      goto LABEL_18;
    }

    v43 = *v41;
    v44 = (a1 + *(*a1 + 128));
    swift_beginAccess();
    if ((v44[1] & 1) == 0)
    {
      return v43 == *v44;
    }

    if (v41[1] == 1)
    {
LABEL_18:
      v42 = a1 + *(*a1 + 128);
      swift_beginAccess();
      if (*(v42 + 1))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL nw_protocol_ipv6_process_input_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, __n128 a7, __n128 a8)
{
  v156 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null ipv6", buf, 12);
    v149 = OS_LOG_TYPE_ERROR;
    v148 = 0;
    if (!__nwlog_fault(v94, &v149, &v148))
    {
      goto LABEL_229;
    }

    if (v149 == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null ipv6";
      goto LABEL_228;
    }

    if (v148 != 1)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null ipv6, backtrace limit exceeded";
      goto LABEL_228;
    }

    backtrace_string = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = v149;
    v117 = os_log_type_enabled(v95, v149);
    if (!backtrace_string)
    {
      if (!v117)
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null ipv6, no backtrace";
      goto LABEL_228;
    }

    if (!v117)
    {
      goto LABEL_211;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v118 = "%{public}s called with null ipv6, dumping backtrace:%{public}s";
LABEL_210:
    _os_log_impl(&dword_181A37000, v95, v96, v118, buf, 0x16u);
    goto LABEL_211;
  }

  if (!a2)
  {
    v98 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s called with null frame", buf, 12);
    v149 = OS_LOG_TYPE_ERROR;
    v148 = 0;
    if (!__nwlog_fault(v94, &v149, &v148))
    {
      goto LABEL_229;
    }

    if (v149 == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null frame";
      goto LABEL_228;
    }

    if (v148 != 1)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_228;
    }

    backtrace_string = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = v149;
    v119 = os_log_type_enabled(v95, v149);
    if (!backtrace_string)
    {
      if (!v119)
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null frame, no backtrace";
      goto LABEL_228;
    }

    if (!v119)
    {
      goto LABEL_211;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v118 = "%{public}s called with null frame, dumping backtrace:%{public}s";
    goto LABEL_210;
  }

  if (!a5)
  {
    v99 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null count", buf, 12);
    v149 = OS_LOG_TYPE_ERROR;
    v148 = 0;
    if (!__nwlog_fault(v94, &v149, &v148))
    {
      goto LABEL_229;
    }

    if (v149 == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null count";
      goto LABEL_228;
    }

    if (v148 != 1)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null count, backtrace limit exceeded";
      goto LABEL_228;
    }

    backtrace_string = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = v149;
    v120 = os_log_type_enabled(v95, v149);
    if (!backtrace_string)
    {
      if (!v120)
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null count, no backtrace";
      goto LABEL_228;
    }

    if (!v120)
    {
      goto LABEL_211;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v118 = "%{public}s called with null count, dumping backtrace:%{public}s";
    goto LABEL_210;
  }

  if (!a6)
  {
    v100 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s called with null reassembly_count", buf, 12);
    v149 = OS_LOG_TYPE_ERROR;
    v148 = 0;
    if (!__nwlog_fault(v94, &v149, &v148))
    {
      goto LABEL_229;
    }

    if (v149 == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null reassembly_count";
      goto LABEL_228;
    }

    if (v148 != 1)
    {
      v95 = __nwlog_obj();
      v96 = v149;
      if (!os_log_type_enabled(v95, v149))
      {
        goto LABEL_229;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      v97 = "%{public}s called with null reassembly_count, backtrace limit exceeded";
      goto LABEL_228;
    }

    backtrace_string = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = v149;
    v121 = os_log_type_enabled(v95, v149);
    if (backtrace_string)
    {
      if (v121)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_ipv6_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v118 = "%{public}s called with null reassembly_count, dumping backtrace:%{public}s";
        goto LABEL_210;
      }

LABEL_211:
      free(backtrace_string);
      goto LABEL_229;
    }

    if (!v121)
    {
      goto LABEL_229;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_process_input_frame";
    v97 = "%{public}s called with null reassembly_count, no backtrace";
LABEL_228:
    _os_log_impl(&dword_181A37000, v95, v96, v97, buf, 0xCu);
LABEL_229:
    if (v94)
    {
      free(v94);
    }

    return 0;
  }

  if (!*(a2 + 112) || (*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && (v10 = a5, v11 = a3, v12 = a6, v13 = a4, v14 = g_channel_check_validity(a2, *(a2 + 88)), a4 = v13, a6 = v12, a3 = v11, a5 = v10, !v14))
  {
    v17 = 0;
    v18 = 0;
    if ((*(a2 + 204) & 0x80) != 0)
    {
LABEL_15:
      v17 = *(a2 + 196);
    }
  }

  else
  {
    v16 = *(a2 + 52);
    v15 = *(a2 + 56);
    if (v16)
    {
      v17 = v16 - (v15 + *(a2 + 60));
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(a2 + 112) + v15);
    if ((*(a2 + 204) & 0x80) != 0)
    {
      goto LABEL_15;
    }
  }

  if (v18)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      ++*v19;
    }

    if (v17 <= 0x27)
    {
      if ((*(a1 + 159) & 1) == 0)
      {
        v102 = __nwlog_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          *&buf[4] = "nw_protocol_ipv6_process_input_frame";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 160;
          *&buf[22] = 2080;
          v151 = " ";
          v152 = 2048;
          v153 = a1;
          v154 = 1024;
          LODWORD(v155) = v17;
          _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Received IPv6 packet with incorrect length %u", buf, 0x30u);
        }
      }

      v103 = *(a1 + 48);
      if (v103)
      {
        result = 0;
        ++*(v103 + 8);
        return result;
      }

      return 0;
    }

    if ((*v18 & 0xF0) != 0x60)
    {
      if ((*(a1 + 159) & 1) == 0)
      {
        v104 = __nwlog_obj();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ipv6_process_input_frame";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 160;
          *&buf[22] = 2080;
          v151 = " ";
          v152 = 2048;
          v153 = a1;
          _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Not an IPv6 packet", buf, 0x2Au);
        }
      }

      v105 = *(a1 + 48);
      if (v105)
      {
        result = 0;
        ++*(v105 + 48);
        return result;
      }

      return 0;
    }

    if (*(v18 + 1) != *(a1 + 72) || *(v18 + 2) != *(a1 + 80))
    {
      if (*(a1 + 159))
      {
        return 0;
      }

      v106 = __nwlog_obj();
      result = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 160;
      *&buf[22] = 2080;
      v151 = " ";
      v152 = 2048;
      v153 = a1;
      v107 = "%{public}s %{public}s%s%p Received remote address that did not match";
LABEL_180:
      _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_ERROR, v107, buf, 0x2Au);
      return 0;
    }

    if (*(v18 + 3) != *(a1 + 56) || *(v18 + 4) != *(a1 + 64))
    {
      if (*(a1 + 159))
      {
        return 0;
      }

      v106 = __nwlog_obj();
      result = os_log_type_enabled(v106, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 160;
      *&buf[22] = 2080;
      v151 = " ";
      v152 = 2048;
      v153 = a1;
      v107 = "%{public}s %{public}s%s%p Received local address that did not match";
      goto LABEL_180;
    }

    v22 = bswap32(*(v18 + 2)) >> 16;
    v23 = v22 + 40;
    if (v22 + 40 > v17)
    {
      if ((*(a1 + 159) & 1) == 0)
      {
        v108 = __nwlog_obj();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447490;
          *&buf[4] = "nw_protocol_ipv6_process_input_frame";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 160;
          *&buf[22] = 2080;
          v151 = " ";
          v152 = 2048;
          v153 = a1;
          v154 = 1024;
          LODWORD(v155) = v22;
          WORD2(v155) = 1024;
          *(&v155 + 6) = v17;
          _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Received IPv6 packet with incorrect length, expected %u received %u", buf, 0x36u);
        }
      }

      v109 = *(a1 + 48);
      if (v109)
      {
        result = 0;
        ++*(v109 + 16);
        return result;
      }

      return 0;
    }

    v139 = a4;
    v140 = a6;
    v136 = a3;
    if (v22 + 40 != v17 && (*(a1 + 159) & 1) == 0)
    {
      v110 = a5;
      v111 = __nwlog_obj();
      v112 = os_log_type_enabled(v111, OS_LOG_TYPE_INFO);
      a5 = v110;
      if (v112)
      {
        *buf = 136447490;
        *&buf[4] = "nw_protocol_ipv6_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        v151 = " ";
        v152 = 2048;
        v153 = a1;
        v154 = 1024;
        LODWORD(v155) = v22;
        WORD2(v155) = 1024;
        *(&v155 + 6) = (v17 - 40);
        _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Received length mismatch with IPv6 %u != %u", buf, 0x36u);
        a5 = v110;
      }
    }

    v24 = *v18;
    *(a2 + 186) = *(a2 + 186) & 0xFC | (*v18 >> 12) & 3;
    *(a2 + 184) = (bswap32(*v18) >> 22) & 0x3F;
    v25 = (v24 >> 12) & 3;
    if (v25 > 1)
    {
      if (v25 == 3)
      {
        v26 = 32;
      }

      else
      {
        v26 = 24;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_40;
      }

      v26 = 16;
    }

    ++*(a1 + v26);
LABEL_40:
    v27 = *(a1 + 159);
    if ((v27 & 4) != 0)
    {
      v113 = a5;
      v114 = mach_continuous_time();
      a5 = v113;
      *(a2 + 204) &= ~0x10u;
      *(a2 + 152) = v114;
      v27 = *(a1 + 159);
    }

    v138 = v17;
    v137 = a5;
    if ((v27 & 0x10) != 0)
    {
      *(a2 + 185) = *(v18 + 7);
      if ((*(a2 + 204) & 8) != 0)
      {
        goto LABEL_65;
      }
    }

    else if ((*(a2 + 204) & 8) != 0)
    {
      goto LABEL_65;
    }

    v28 = a2 + 120;
    v29 = *(a2 + 168);
    if (v29)
    {
      os_release(v29);
      *(a2 + 168) = 0;
    }

    v30 = *(a2 + 64);
    *(a2 + 186) |= 0x40u;
    if (v30)
    {
      if (v30 != v28)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446722;
        *&buf[4] = "__nw_frame_set_metadata";
        *&buf[12] = 2048;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        v151 = (a2 + 120);
        v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Existing metadata %p doesn't match expected %p", buf, 32);
        v149 = OS_LOG_TYPE_ERROR;
        v148 = 0;
        if (!__nwlog_fault(v31, &v149, &v148))
        {
          goto LABEL_63;
        }

        if (v149 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = v149;
          if (!os_log_type_enabled(gLogObj, v149))
          {
            goto LABEL_63;
          }

          *buf = 136446722;
          *&buf[4] = "__nw_frame_set_metadata";
          *&buf[12] = 2048;
          *&buf[14] = v30;
          *&buf[22] = 2048;
          v151 = (a2 + 120);
          v34 = "%{public}s Existing metadata %p doesn't match expected %p";
        }

        else if (v148 == 1)
        {
          v35 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = v149;
          v36 = os_log_type_enabled(gLogObj, v149);
          if (v35)
          {
            if (v36)
            {
              *buf = 136446978;
              *&buf[4] = "__nw_frame_set_metadata";
              *&buf[12] = 2048;
              *&buf[14] = v30;
              *&buf[22] = 2048;
              v151 = (a2 + 120);
              v152 = 2082;
              v153 = v35;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v35);
            goto LABEL_63;
          }

          if (!v36)
          {
LABEL_63:
            if (v31)
            {
              free(v31);
            }

            goto LABEL_65;
          }

          *buf = 136446722;
          *&buf[4] = "__nw_frame_set_metadata";
          *&buf[12] = 2048;
          *&buf[14] = v30;
          *&buf[22] = 2048;
          v151 = (a2 + 120);
          v34 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = v149;
          if (!os_log_type_enabled(gLogObj, v149))
          {
            goto LABEL_63;
          }

          *buf = 136446722;
          *&buf[4] = "__nw_frame_set_metadata";
          *&buf[12] = 2048;
          *&buf[14] = v30;
          *&buf[22] = 2048;
          v151 = (a2 + 120);
          v34 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x20u);
        goto LABEL_63;
      }
    }

    else
    {
      *(a2 + 64) = v28;
      *(a2 + 72) = v28;
      *(a2 + 120) = 0;
      *(a2 + 128) = a2 + 64;
    }

LABEL_65:
    v37 = *(v18 + 6);
    if (v37 == *(a1 + 156))
    {
      LOBYTE(v38) = 0;
      v39 = 0;
      LOWORD(v40) = 0;
      v41 = 40;
      goto LABEL_112;
    }

    v40 = 0;
    v39 = 0;
    v38 = 0;
    v41 = 40;
    a7.n128_u64[0] = 136447490;
    v42 = "%{public}s %{public}s%s%p Received IPv6 extension type %d length %u";
    a8.n128_u64[0] = 136447746;
    while (1)
    {
      if ((*(a2 + 204) & 0x80) != 0)
      {
        v129 = a7.n128_u32[0];
        if (*(a1 + 159))
        {
          goto LABEL_112;
        }

        v135 = v39;
        v52 = v38;
        v53 = v40;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv6_process_input_frame";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        v151 = " ";
        v152 = 2048;
        v153 = a1;
        v154 = 1024;
        LODWORD(v155) = v138;
        LODWORD(v122) = 48;
        v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s %{public}s%s%p Received IPv6 extension-headers on a super-packet of length %u", buf, v122);
        v149 = OS_LOG_TYPE_ERROR;
        v55 = v54;
        v148 = 0;
        if (__nwlog_fault(v54, &v149, &v148))
        {
          if (v149 != OS_LOG_TYPE_FAULT)
          {
            if (v148 == 1)
            {
              v59 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v60 = v149;
              v126 = gLogObj;
              v61 = os_log_type_enabled(gLogObj, v149);
              if (v59)
              {
                if (v61)
                {
                  *buf = v129;
                  *&buf[4] = "nw_protocol_ipv6_process_input_frame";
                  *&buf[12] = 2082;
                  *&buf[14] = a1 + 160;
                  *&buf[22] = 2080;
                  v151 = " ";
                  v152 = 2048;
                  v153 = a1;
                  v154 = 1024;
                  LODWORD(v155) = v138;
                  WORD2(v155) = 2082;
                  *(&v155 + 6) = v59;
                  _os_log_impl(&dword_181A37000, v126, v60, "%{public}s %{public}s%s%p Received IPv6 extension-headers on a super-packet of length %u, dumping backtrace:%{public}s", buf, 0x3Au);
                }

                free(v59);
                goto LABEL_104;
              }

              if (!v61)
              {
                goto LABEL_104;
              }

              *buf = 136447234;
              *&buf[4] = "nw_protocol_ipv6_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 160;
              *&buf[22] = 2080;
              v151 = " ";
              v152 = 2048;
              v153 = a1;
              v154 = 1024;
              LODWORD(v155) = v138;
              v58 = "%{public}s %{public}s%s%p Received IPv6 extension-headers on a super-packet of length %u, no backtrace";
              v62 = v126;
              v63 = v60;
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v56 = gLogObj;
              v57 = v149;
              if (!os_log_type_enabled(gLogObj, v149))
              {
                goto LABEL_104;
              }

              *buf = 136447234;
              *&buf[4] = "nw_protocol_ipv6_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 160;
              *&buf[22] = 2080;
              v151 = " ";
              v152 = 2048;
              v153 = a1;
              v154 = 1024;
              LODWORD(v155) = v138;
              v58 = "%{public}s %{public}s%s%p Received IPv6 extension-headers on a super-packet of length %u, backtrace limit exceeded";
LABEL_102:
              v62 = v56;
              v63 = v57;
            }

            _os_log_impl(&dword_181A37000, v62, v63, v58, buf, 0x30u);
            goto LABEL_104;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          v57 = v149;
          if (os_log_type_enabled(gLogObj, v149))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv6_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 160;
            *&buf[22] = 2080;
            v151 = " ";
            v152 = 2048;
            v153 = a1;
            v154 = 1024;
            LODWORD(v155) = v138;
            v58 = "%{public}s %{public}s%s%p Received IPv6 extension-headers on a super-packet of length %u";
            goto LABEL_102;
          }
        }

LABEL_104:
        if (v55)
        {
          free(v55);
        }

        LOWORD(v40) = v53;
        LOBYTE(v38) = v52;
        v39 = v135;
LABEL_112:
        if (v37 == *(a1 + 156))
        {
          v71 = v38;
          v72 = v40;
          v73 = v39;
          *v140 += nw_protocol_ipv6_process_reassembly(a1, v39, v139, 0, 0);
          if (v73)
          {
            v75 = (v136 + 8);
            v76 = *(a2 + 32);
            v77 = *(a2 + 40);
            v78 = (a2 + 32);
            if (v76)
            {
              v75 = (v76 + 40);
            }

            *v75 = v77;
            *v77 = v76;
            *v78 = 0;
            *(a2 + 40) = 0;
            if (v72)
            {
              v79 = v137;
              if (v71)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2000000000;
                LOBYTE(v151) = 0;
                v141[0] = MEMORY[0x1E69E9820];
                v141[1] = 0x40000000;
                v142 = ___ZL36nw_protocol_ipv6_process_input_frameP16nw_protocol_ipv6P8nw_frameP16nw_frame_array_sS4_PjS5__block_invoke;
                v143 = &unk_1E6A3D178;
                v147 = v72;
                v145 = a1;
                v146 = a2;
                v144 = buf;
                v80 = *(a1 + 88);
                do
                {
                  if (!v80)
                  {
                    break;
                  }

                  v81 = *(v80 + 32);
                  v82 = (v142)(v141);
                  v80 = v81;
                }

                while ((v82 & 1) != 0);
                if ((*(*&buf[8] + 24) & 1) == 0)
                {
                  *(a2 + 32) = 0;
                  v83 = *(a1 + 96);
                  *(a2 + 40) = v83;
                  *v83 = a2;
                  *(a1 + 96) = v78;
                }

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v85 = *(a1 + 96);
                *(a2 + 40) = v85;
                *v85 = a2;
                *(a1 + 96) = v78;
              }
            }

            else
            {
              nw_frame_array_prepend((a1 + 88), 1, a2);
              v79 = v137;
            }

            --*v79;
          }

          else
          {
            v84 = *(a1 + 48);
            if (v84)
            {
              ++*(v84 + 104);
            }

            nw_frame_claim(a2, v74, v41, v138 - v23);
            ++*(a1 + 8);
          }

          return 1;
        }

        v115 = *(a1 + 48);
        if (v115)
        {
          result = 0;
          ++*(v115 + 160);
          return result;
        }

        return 0;
      }

      if (v37 > 43)
      {
        if (v37 != 60)
        {
          if (v37 != 44)
          {
            goto LABEL_107;
          }

          if (v41 + 8 > v23)
          {
            v64 = v39;
            v65 = v38;
            v66 = v40;
            if ((*(a1 + 159) & 1) != 0 || (v92 = __nwlog_obj(), !os_log_type_enabled(v92, OS_LOG_TYPE_ERROR)))
            {
              v37 = 44;
            }

            else
            {
              *buf = 136447234;
              *&buf[4] = "nw_protocol_ipv6_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 160;
              *&buf[22] = 2080;
              v151 = " ";
              v152 = 2048;
              v153 = a1;
              v154 = 2048;
              *&v155 = v23;
              _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p IPv6 fragment header cannot fit in packet length %lu", buf, 0x34u);
              v37 = 44;
            }

            goto LABEL_111;
          }

          v43 = v18 + v41;
          v37 = *v43;
          v41 += 8;
          v39 = *(v43 + 1);
          v44 = *(v43 + 1);
          v40 = bswap32(v44 & 0xFFFFF8FF) >> 16;
          v38 = (v44 >> 8) & 1;
          if ((*(a1 + 159) & 1) == 0 && gLogDatapath == 1)
          {
            v127 = a7;
            v131 = a8;
            v45 = *(v43 + 1);
            v46 = v40;
            v133 = __nwlog_obj();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              *buf = v131.n128_u32[0];
              *&buf[4] = "nw_protocol_ipv6_process_input_frame";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 160;
              *&buf[22] = 2080;
              v151 = " ";
              v152 = 2048;
              v153 = a1;
              v154 = 1024;
              LODWORD(v155) = v46;
              WORD2(v155) = 1024;
              *(&v155 + 6) = (v44 & 0x100) >> 8;
              WORD5(v155) = 1024;
              HIDWORD(v155) = v45;
              _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Received IPv6 fragment offset %u more %u id %u", buf, 0x3Cu);
              a7 = v127;
              a8 = v131;
              v39 = v45;
              v40 = v46;
              v38 = (v44 >> 8) & 1;
            }

            else
            {
              v40 = v46;
              v38 = (v44 >> 8) & 1;
              v39 = v45;
              a7 = v127;
              a8 = v131;
            }

            v42 = "%{public}s %{public}s%s%p Received IPv6 extension type %d length %u";
          }

          goto LABEL_69;
        }
      }

      else if (v37 && v37 != 43)
      {
LABEL_107:
        v64 = v39;
        v65 = v38;
        v66 = v40;
        if ((*(a1 + 159) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v67 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv6_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 160;
            *&buf[22] = 2080;
            v151 = " ";
            v152 = 2048;
            v153 = a1;
            v154 = 1024;
            LODWORD(v155) = v37;
            v68 = "%{public}s %{public}s%s%p Don't know how to handle IPv6 next protocol %d";
            v69 = v67;
            v70 = 48;
            goto LABEL_110;
          }
        }

        goto LABEL_111;
      }

      if (v41 + 2 > v23)
      {
        v64 = v39;
        v65 = v38;
        v66 = v40;
        if ((*(a1 + 159) & 1) == 0)
        {
          v87 = __nwlog_obj();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv6_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 160;
            *&buf[22] = 2080;
            v151 = " ";
            v152 = 2048;
            v153 = a1;
            v154 = 2048;
            *&v155 = v23;
            v68 = "%{public}s %{public}s%s%p IPv6 extension header cannot fit in packet length %lu";
            v69 = v87;
            v70 = 52;
LABEL_110:
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, v68, buf, v70);
          }
        }

LABEL_111:
        LOWORD(v40) = v66;
        LOBYTE(v38) = v65;
        v39 = v64;
        goto LABEL_112;
      }

      v47 = v18 + v41;
      v48 = 8 * v47[1] + 8;
      v49 = v48 + v41;
      if (v48 + v41 > v23)
      {
        v130 = a7.n128_u32[0];
        v88 = v39;
        v89 = v38;
        v90 = v40;
        if ((*(a1 + 159) & 1) == 0)
        {
          v91 = __nwlog_obj();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = v130;
            *&buf[4] = "nw_protocol_ipv6_process_input_frame";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 160;
            *&buf[22] = 2080;
            v151 = " ";
            v152 = 2048;
            v153 = a1;
            v154 = 1024;
            LODWORD(v155) = v48;
            WORD2(v155) = 2048;
            *(&v155 + 6) = v23;
            _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p IPv6 extension header length %u cannot fit in packet length %lu", buf, 0x3Au);
          }
        }

        LOWORD(v40) = v90;
        LOBYTE(v38) = v89;
        v39 = v88;
        goto LABEL_112;
      }

      if ((*(a1 + 159) & 1) == 0 && gLogDatapath == 1)
      {
        v124 = v40;
        v125 = v38;
        v134 = v39;
        v128 = a7;
        v132 = a8;
        v50 = v42;
        log = __nwlog_obj();
        v51 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
        a7 = v128;
        a8 = v132;
        v42 = v50;
        v39 = v134;
        v40 = v124;
        v38 = v125;
        if (v51)
        {
          *buf = v128.n128_u32[0];
          *&buf[4] = "nw_protocol_ipv6_process_input_frame";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 160;
          *&buf[22] = 2080;
          v151 = " ";
          v152 = 2048;
          v153 = a1;
          v154 = 1024;
          LODWORD(v155) = v37;
          WORD2(v155) = 1024;
          *(&v155 + 6) = v48;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, v50, buf, 0x36u);
          a7 = v128;
          a8 = v132;
          v42 = v50;
          v39 = v134;
          v40 = v124;
          v38 = v125;
        }
      }

      v37 = *v47;
      v41 = v49;
LABEL_69:
      if (v37 == *(a1 + 156))
      {
        goto LABEL_112;
      }
    }
  }

  if ((*(a1 + 159) & 1) == 0)
  {
    v101 = __nwlog_obj();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_ipv6_process_input_frame";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 160;
      *&buf[22] = 2080;
      v151 = " ";
      v152 = 2048;
      v153 = a1;
      _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", buf, 0x2Au);
    }
  }

  result = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t nw_protocol_ipv6_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v243 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v150 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_get_input_frames";
    v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v150, 16, "%{public}s called with null protocol", buf, 12);
    LOBYTE(v229) = 16;
    v225[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v151, &v229, v225))
    {
      if (v229 == 17)
      {
        v152 = __nwlog_obj();
        v153 = v229;
        if (os_log_type_enabled(v152, v229))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_get_input_frames";
          v154 = "%{public}s called with null protocol";
LABEL_257:
          _os_log_impl(&dword_181A37000, v152, v153, v154, buf, 0xCu);
        }
      }

      else if (v225[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v152 = __nwlog_obj();
        v153 = v229;
        v156 = os_log_type_enabled(v152, v229);
        if (backtrace_string)
        {
          if (v156)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ipv6_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v152, v153, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_258;
        }

        if (v156)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_get_input_frames";
          v154 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_257;
        }
      }

      else
      {
        v152 = __nwlog_obj();
        v153 = v229;
        if (os_log_type_enabled(v152, v229))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_get_input_frames";
          v154 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_257;
        }
      }
    }

LABEL_258:
    if (v151)
    {
      free(v151);
    }

    return 0;
  }

  v6 = a1;
  handle = a1->handle;
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v9 = 1;
    goto LABEL_11;
  }

  v8 = *a1[1].flow_id;
  if (v8)
  {
LABEL_6:
    callbacks = v8[1].callbacks;
    v9 = 0;
    if (callbacks)
    {
      v8[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v9 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v11 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_get_input_frames";
      v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
      LOBYTE(v229) = 16;
      v225[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, &v229, v225))
      {
        goto LABEL_238;
      }

      if (v229 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = v229;
        if (!os_log_type_enabled(gLogObj, v229))
        {
          goto LABEL_238;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_get_input_frames";
        v15 = "%{public}s called with null ipv6";
      }

      else
      {
        if (v225[0] == OS_LOG_TYPE_INFO)
        {
          v143 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v144 = gLogObj;
          v145 = v229;
          v146 = os_log_type_enabled(gLogObj, v229);
          if (v143)
          {
            if (v146)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_ipv6_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v143;
              _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v143);
          }

          else if (v146)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ipv6_get_input_frames";
            v15 = "%{public}s called with null ipv6, no backtrace";
            v147 = v144;
            v148 = v145;
            goto LABEL_237;
          }

LABEL_238:
          if (v12)
          {
            free(v12);
          }

          v149 = 0;
          if ((v9 & 1) == 0)
          {
            goto LABEL_280;
          }

          return v149;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = v229;
        if (!os_log_type_enabled(gLogObj, v229))
        {
          goto LABEL_238;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_get_input_frames";
        v15 = "%{public}s called with null ipv6, backtrace limit exceeded";
      }

      v147 = v13;
      v148 = v14;
LABEL_237:
      _os_log_impl(&dword_181A37000, v147, v148, v15, buf, 0xCu);
      goto LABEL_238;
    }

    v11 = *a1[1].flow_id;
  }

  p_output_handler = &v11[1].output_handler;
  if (a3 >= 0xFFFFFFD8)
  {
    v17 = -1;
  }

  else
  {
    v17 = a3 + 40;
  }

  v18 = a4 + 40;
  if (a4 >= 0xFFFFFFD8)
  {
    v18 = -1;
  }

  v184 = v18;
  v185 = v17;
  v229 = 0;
  v230 = &v229;
  v231 = 0x2000000000;
  v232 = 0;
  v183 = v11 + 4;
  v187 = a6;
  v188 = v11;
  while (2)
  {
    output_handler = v6->output_handler;
    if (!output_handler)
    {
      v157 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_input_frames";
      LODWORD(v173) = 12;
      v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v157, 16, "%{public}s called with null protocol", buf, v173);
      v225[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v223[0]) = 0;
      if (__nwlog_fault(v158, v225, v223))
      {
        if (v225[0] == OS_LOG_TYPE_FAULT)
        {
          v159 = __nwlog_obj();
          v160 = v225[0];
          if (os_log_type_enabled(v159, v225[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v161 = "%{public}s called with null protocol";
LABEL_272:
            v165 = v159;
LABEL_273:
            _os_log_impl(&dword_181A37000, v165, v160, v161, buf, 0xCu);
          }
        }

        else if (LOBYTE(v223[0]) == 1)
        {
          v162 = __nw_create_backtrace_string();
          v163 = __nwlog_obj();
          v160 = v225[0];
          v164 = os_log_type_enabled(v163, v225[0]);
          if (v162)
          {
            if (v164)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v162;
              _os_log_impl(&dword_181A37000, v163, v160, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v162);
            goto LABEL_274;
          }

          if (v164)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v161 = "%{public}s called with null protocol, no backtrace";
            v165 = v163;
            goto LABEL_273;
          }
        }

        else
        {
          v159 = __nwlog_obj();
          v160 = v225[0];
          if (os_log_type_enabled(v159, v225[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v161 = "%{public}s called with null protocol, backtrace limit exceeded";
            goto LABEL_272;
          }
        }
      }

LABEL_274:
      if (v158)
      {
        free(v158);
      }

      *(v230 + 6) = 0;
      v11 = v188;
      goto LABEL_277;
    }

    v20 = output_handler->handle;
    v21 = v6->output_handler;
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v21 = *output_handler[1].flow_id) != 0)
    {
      v23 = v21[1].callbacks;
      v22 = 0;
      if (v23)
      {
        v21[1].callbacks = (&v23->add_input_handler + 1);
      }
    }

    else
    {
      v22 = 1;
    }

    v24 = v6->handle;
    v25 = v6;
    if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v25 = *v6[1].flow_id) != 0)
    {
      v114 = v25[1].callbacks;
      if (v114)
      {
        v26 = 0;
        v25[1].callbacks = (&v114->add_input_handler + 1);
        if (!a6)
        {
          goto LABEL_184;
        }
      }

      else
      {
        v26 = 0;
        if (!a6)
        {
LABEL_184:
          v115 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_input_frames";
          LODWORD(v173) = 12;
          v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s called with null return_array", buf, v173);
          v225[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v223[0]) = 0;
          v182 = v116;
          if (!__nwlog_fault(v116, v225, v223))
          {
            goto LABEL_222;
          }

          if (v225[0] == OS_LOG_TYPE_FAULT)
          {
            v117 = __nwlog_obj();
            v118 = v225[0];
            *typea = v117;
            if (!os_log_type_enabled(v117, v225[0]))
            {
              goto LABEL_222;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v119 = *typea;
            v120 = v118;
            v121 = "%{public}s called with null return_array";
            v122 = 12;
            goto LABEL_221;
          }

          if (LOBYTE(v223[0]) != 1)
          {
            v140 = __nwlog_obj();
            v141 = v225[0];
            *typef = v140;
            if (!os_log_type_enabled(v140, v225[0]))
            {
              goto LABEL_222;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v119 = *typef;
            v120 = v141;
            v121 = "%{public}s called with null return_array, backtrace limit exceeded";
            v122 = 12;
            goto LABEL_221;
          }

          v129 = __nw_create_backtrace_string();
          typed = __nwlog_obj();
          HIDWORD(v173) = v225[0];
          v136 = os_log_type_enabled(typed, v225[0]);
          if (v129)
          {
            if (v136)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v129;
              v132 = typed;
              v133 = BYTE4(v173);
              v134 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
              v135 = 22;
LABEL_208:
              _os_log_impl(&dword_181A37000, v132, v133, v134, buf, v135);
              goto LABEL_209;
            }

            goto LABEL_209;
          }

          if (v136)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v119 = typed;
            v120 = BYTE4(v173);
            v121 = "%{public}s called with null return_array, no backtrace";
            v122 = 12;
            goto LABEL_221;
          }

          goto LABEL_222;
        }
      }
    }

    else
    {
      v26 = 1;
      if (!a6)
      {
        goto LABEL_184;
      }
    }

    v27 = output_handler->callbacks;
    if (v27)
    {
      get_input_frames = v27->get_input_frames;
      if (get_input_frames)
      {
        v29 = get_input_frames(output_handler, v6, v185, v184, a5);
        if (v26)
        {
          goto LABEL_49;
        }

        goto LABEL_38;
      }
    }

    v123 = __nwlog_obj();
    name = output_handler->identifier->name;
    if (!name)
    {
      name = "invalid";
    }

    *buf = 136446722;
    *&buf[4] = "__nw_protocol_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = name;
    *&buf[22] = 2048;
    v236 = output_handler;
    LODWORD(v173) = 32;
    v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v123, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, v173);
    v225[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v223[0]) = 0;
    v182 = v125;
    if (__nwlog_fault(v125, v225, v223))
    {
      if (v225[0] == OS_LOG_TYPE_FAULT)
      {
        v126 = __nwlog_obj();
        v127 = v225[0];
        *typeb = v126;
        if (!os_log_type_enabled(v126, v225[0]))
        {
          goto LABEL_222;
        }

        v128 = output_handler->identifier->name;
        if (!v128)
        {
          v128 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v128;
        *&buf[22] = 2048;
        v236 = output_handler;
        v119 = *typeb;
        v120 = v127;
        v121 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
      }

      else if (LOBYTE(v223[0]) == 1)
      {
        v129 = __nw_create_backtrace_string();
        typec = __nwlog_obj();
        HIDWORD(v173) = v225[0];
        v130 = os_log_type_enabled(typec, v225[0]);
        if (v129)
        {
          if (v130)
          {
            v131 = output_handler->identifier->name;
            if (!v131)
            {
              v131 = "invalid";
            }

            *buf = 136446978;
            *&buf[4] = "__nw_protocol_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v131;
            *&buf[22] = 2048;
            v236 = output_handler;
            v237 = 2082;
            v238 = v129;
            v132 = typec;
            v133 = BYTE4(v173);
            v134 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s";
            v135 = 42;
            goto LABEL_208;
          }

LABEL_209:
          free(v129);
          goto LABEL_222;
        }

        if (!v130)
        {
          goto LABEL_222;
        }

        v142 = output_handler->identifier->name;
        if (!v142)
        {
          v142 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v142;
        *&buf[22] = 2048;
        v236 = output_handler;
        v119 = typec;
        v120 = BYTE4(v173);
        v121 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
      }

      else
      {
        v137 = __nwlog_obj();
        v138 = v225[0];
        *typee = v137;
        if (!os_log_type_enabled(v137, v225[0]))
        {
          goto LABEL_222;
        }

        v139 = output_handler->identifier->name;
        if (!v139)
        {
          v139 = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v139;
        *&buf[22] = 2048;
        v236 = output_handler;
        v119 = *typee;
        v120 = v138;
        v121 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
      }

      v122 = 32;
LABEL_221:
      _os_log_impl(&dword_181A37000, v119, v120, v121, buf, v122);
    }

LABEL_222:
    if (v182)
    {
      free(v182);
    }

    v29 = 0;
    if ((v26 & 1) == 0)
    {
LABEL_38:
      v30 = v6->handle;
      v31 = v6;
      if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *v6[1].flow_id) != 0)
      {
        v32 = v31[1].callbacks;
        if (v32)
        {
          v33 = (v32 - 1);
          v31[1].callbacks = v33;
          if (!v33)
          {
            v34 = v29;
            v35 = *v31[1].flow_id;
            if (v35)
            {
              *v31[1].flow_id = 0;
              v35[2](v35);
              _Block_release(v35);
            }

            if (v31[1].flow_id[8])
            {
              v36 = *v31[1].flow_id;
              if (v36)
              {
                _Block_release(v36);
              }
            }

            free(v31);
            v29 = v34;
            v11 = v188;
          }
        }
      }
    }

LABEL_49:
    if ((v22 & 1) == 0)
    {
      v37 = output_handler->handle;
      if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
      {
        v38 = output_handler[1].callbacks;
        if (v38)
        {
          v39 = (v38 - 1);
          output_handler[1].callbacks = v39;
          if (!v39)
          {
            v40 = v29;
            v41 = *output_handler[1].flow_id;
            if (v41)
            {
              *output_handler[1].flow_id = 0;
              v41[2](v41);
              _Block_release(v41);
            }

            if (output_handler[1].flow_id[8])
            {
              v42 = *output_handler[1].flow_id;
              if (v42)
              {
                _Block_release(v42);
              }
            }

            free(output_handler);
            v29 = v40;
            v11 = v188;
          }
        }
      }
    }

    *(v230 + 6) = v29;
    if (!v29)
    {
LABEL_277:
      if ((HIBYTE(v11[3].output_handler_context) & 1) == 0 && gLogDatapath == 1)
      {
        v172 = __nwlog_obj();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ipv6_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v183;
          *&buf[22] = 2080;
          v236 = " ";
          v237 = 2048;
          v238 = p_output_handler;
          _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p No IPv6 input frames", buf, 0x2Au);
        }
      }

      goto LABEL_279;
    }

    *v225 = 0;
    v226 = v225;
    v227 = 0x2000000000;
    v228 = 0;
    v223[0] = 0;
    v223[1] = v223;
    v223[2] = 0x2000000000;
    v224 = 0;
    v219[0] = 0;
    v219[1] = v219;
    v219[2] = 0x2000000000;
    v220 = 0;
    v221 = 0;
    v222 = &v221;
    v209[0] = MEMORY[0x1E69E9820];
    v209[1] = 0x40000000;
    v210 = ___ZL33nw_protocol_ipv6_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v211 = &unk_1E6A3D108;
    v212 = v223;
    v213 = v219;
    v216 = v187;
    v217 = p_output_handler;
    v218 = &v221;
    v214 = &v229;
    v215 = v225;
    tqh_first = v187->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v44 = *(tqh_first + 4);
      v45 = v210(v209);
      tqh_first = v44;
    }

    while ((v45 & 1) != 0);
    v208 = 0;
    do
    {
      v46 = nw_protocol_ipv6_process_reassembly(p_output_handler, 0, &v221, 0, &v208);
      *(v230 + 6) += v46;
      if (v208 != 1)
      {
        break;
      }

      v206 = 0;
      v207 = &v206;
      v202 = 0;
      v203 = &v202;
      v204 = 0x2000000000;
      v47 = v6->output_handler;
      if (!v47)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_input_frames";
        LODWORD(v173) = 12;
        v97 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null protocol", buf, v173);
        v234 = OS_LOG_TYPE_ERROR;
        v233 = 0;
        if (!__nwlog_fault(v97, &v234, &v233))
        {
          goto LABEL_171;
        }

        if (v234 == OS_LOG_TYPE_FAULT)
        {
          v98 = __nwlog_obj();
          v99 = v234;
          if (os_log_type_enabled(v98, v234))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_get_input_frames";
            v100 = v98;
            v101 = v99;
            v102 = "%{public}s called with null protocol";
            goto LABEL_170;
          }

          goto LABEL_171;
        }

        if (v233 == 1)
        {
          v103 = __nw_create_backtrace_string();
          v104 = __nwlog_obj();
          v105 = v234;
          v106 = os_log_type_enabled(v104, v234);
          if (v103)
          {
            if (v106)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_protocol_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = v103;
              _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v103);
            goto LABEL_171;
          }

          if (!v106)
          {
LABEL_171:
            if (v97)
            {
              free(v97);
            }

            v58 = 0;
            v11 = v188;
            goto LABEL_111;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_input_frames";
          v100 = v104;
          v101 = v105;
          v102 = "%{public}s called with null protocol, no backtrace";
        }

        else
        {
          v107 = __nwlog_obj();
          v108 = v234;
          if (!os_log_type_enabled(v107, v234))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_input_frames";
          v100 = v107;
          v101 = v108;
          v102 = "%{public}s called with null protocol, backtrace limit exceeded";
        }

LABEL_170:
        _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0xCu);
        goto LABEL_171;
      }

      v48 = v47->handle;
      v49 = v6->output_handler;
      if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v49 = *v47[1].flow_id) != 0)
      {
        v51 = v49[1].callbacks;
        v50 = 0;
        if (v51)
        {
          v49[1].callbacks = (&v51->add_input_handler + 1);
        }
      }

      else
      {
        v50 = 1;
      }

      v52 = v6->handle;
      v53 = v6;
      if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (v53 = *v6[1].flow_id) != 0)
      {
        v56 = v53[1].callbacks;
        if (v56)
        {
          v54 = 0;
          v53[1].callbacks = (&v56->add_input_handler + 1);
          v55 = v47->callbacks;
          if (!v55)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v54 = 0;
          v55 = v47->callbacks;
          if (!v55)
          {
            goto LABEL_125;
          }
        }
      }

      else
      {
        v54 = 1;
        v55 = v47->callbacks;
        if (!v55)
        {
          goto LABEL_125;
        }
      }

      v57 = v55->get_input_frames;
      if (v57)
      {
        v58 = v57(v47, v6, 1, 0xFFFFFFFFLL, 1, &v206);
        if (v54)
        {
          goto LABEL_96;
        }

LABEL_85:
        v59 = v6->handle;
        v60 = v6;
        if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v60 = *v6[1].flow_id) != 0)
        {
          v61 = v60[1].callbacks;
          if (v61)
          {
            v62 = (v61 - 1);
            v60[1].callbacks = v62;
            if (!v62)
            {
              v63 = *v60[1].flow_id;
              if (v63)
              {
                *v60[1].flow_id = 0;
                v63[2](v63);
                _Block_release(v63);
              }

              if (v60[1].flow_id[8])
              {
                v64 = *v60[1].flow_id;
                if (v64)
                {
                  _Block_release(v64);
                }
              }

              free(v60);
            }
          }
        }

        goto LABEL_96;
      }

LABEL_125:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = v47->identifier->name;
      if (!v78)
      {
        v78 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = v78;
      *&buf[22] = 2048;
      v236 = v47;
      LODWORD(v173) = 32;
      v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, v173);
      v234 = OS_LOG_TYPE_ERROR;
      v233 = 0;
      v181 = v79;
      if (__nwlog_fault(v79, &v234, &v233))
      {
        if (v234 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v80 = gLogObj;
          v81 = v234;
          if (!os_log_type_enabled(gLogObj, v234))
          {
            goto LABEL_153;
          }

          v82 = v47->identifier->name;
          if (!v82)
          {
            v82 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v82;
          *&buf[22] = 2048;
          v236 = v47;
          v83 = v80;
          v84 = v81;
          v85 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
LABEL_152:
          _os_log_impl(&dword_181A37000, v83, v84, v85, buf, 0x20u);
          goto LABEL_153;
        }

        if (v233 != 1)
        {
          v93 = __nwlog_obj();
          v94 = v234;
          if (!os_log_type_enabled(v93, v234))
          {
            goto LABEL_153;
          }

          v95 = v47->identifier->name;
          if (!v95)
          {
            v95 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v95;
          *&buf[22] = 2048;
          v236 = v47;
          v83 = v93;
          v84 = v94;
          v85 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
          goto LABEL_152;
        }

        v86 = __nw_create_backtrace_string();
        v87 = __nwlog_obj();
        type = v234;
        v88 = os_log_type_enabled(v87, v234);
        if (!v86)
        {
          if (!v88)
          {
            goto LABEL_153;
          }

          v96 = v47->identifier->name;
          if (!v96)
          {
            v96 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v96;
          *&buf[22] = 2048;
          v236 = v47;
          v83 = v87;
          v84 = type;
          v85 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
          goto LABEL_152;
        }

        if (v88)
        {
          v89 = v47->identifier->name;
          if (!v89)
          {
            v89 = "invalid";
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v89;
          *&buf[22] = 2048;
          v236 = v47;
          v237 = 2082;
          v238 = v86;
          _os_log_impl(&dword_181A37000, v87, type, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v86);
      }

LABEL_153:
      if (v181)
      {
        free(v181);
      }

      v58 = 0;
      if ((v54 & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_96:
      if (v50)
      {
        v11 = v188;
      }

      else
      {
        v65 = v47->handle;
        if (v65 == &nw_protocol_ref_counted_handle)
        {
          v11 = v188;
          v66 = v47[1].callbacks;
          if (!v66)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v11 = v188;
          if (v65 != &nw_protocol_ref_counted_additional_handle)
          {
            goto LABEL_111;
          }

          v47 = *v47[1].flow_id;
          if (!v47)
          {
            goto LABEL_111;
          }

          v66 = v47[1].callbacks;
          if (!v66)
          {
            goto LABEL_111;
          }
        }

        v67 = (v66 - 1);
        v47[1].callbacks = v67;
        if (!v67)
        {
          v68 = *v47[1].flow_id;
          if (v68)
          {
            *v47[1].flow_id = 0;
            v68[2](v68);
            _Block_release(v68);
          }

          if (v47[1].flow_id[8])
          {
            v69 = *v47[1].flow_id;
            if (v69)
            {
              _Block_release(v69);
            }
          }

          free(v47);
        }
      }

LABEL_111:
      v205 = v58;
      if (!*(v203 + 6))
      {
        goto LABEL_174;
      }

      if ((HIBYTE(v11[3].output_handler_context) & 1) == 0 && gLogDatapath == 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v90 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v91 = *(v203 + 6);
          v92 = "s";
          if (v91 == 1)
          {
            v92 = "";
          }

          *buf = 136447490;
          *&buf[4] = "nw_protocol_ipv6_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v183;
          *&buf[22] = 2080;
          v236 = " ";
          v237 = 2048;
          v238 = p_output_handler;
          v239 = 1024;
          v240 = v91;
          v241 = 2080;
          v242 = v92;
          _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Found %u IPv6 extra fragment%s", buf, 0x3Au);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      LOBYTE(v236) = 0;
      v193[0] = MEMORY[0x1E69E9820];
      v193[1] = 0x40000000;
      v194 = ___ZL33nw_protocol_ipv6_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_37;
      v195 = &unk_1E6A3D130;
      v199 = p_output_handler;
      v200 = &v206;
      v201 = &v221;
      v196 = &v202;
      v197 = v225;
      v198 = buf;
      v70 = v206;
      do
      {
        if (!v70)
        {
          break;
        }

        v71 = *(v70 + 32);
        v72 = v194(v193);
        v70 = v71;
      }

      while ((v72 & 1) != 0);
      v189[0] = MEMORY[0x1E69E9820];
      v189[1] = 0x40000000;
      v190 = ___ZL33nw_protocol_ipv6_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_2;
      v191 = &__block_descriptor_tmp_39_91296;
      v192 = p_output_handler;
      do
      {
        v73 = v206;
        if (!v206)
        {
          break;
        }

        v74 = *(v206 + 32);
        v75 = *(v206 + 40);
        v76 = (v74 + 40);
        if (!v74)
        {
          v76 = &v207;
        }

        *v76 = v75;
        *v75 = v74;
        *(v73 + 32) = 0;
        *(v73 + 40) = 0;
      }

      while (((v190)(v189) & 1) != 0);
      v77 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (v77 == 1)
      {
LABEL_174:
        _Block_object_dispose(&v202, 8);
        break;
      }

      _Block_object_dispose(&v202, 8);
    }

    while ((v208 & 1) != 0);
    if (v221)
    {
      tqh_last = v187->tqh_last;
      *tqh_last = v221;
      v110 = v222;
      *(v221 + 40) = tqh_last;
      v187->tqh_last = v110;
      v221 = 0;
      v222 = &v221;
    }

    *(v230 + 6) += *(v226 + 6);
    v111 = nw_protocol_ipv6_process_reassembly(p_output_handler, 0, v187, 1, 0);
    v112 = *(v230 + 6) + v111;
    *(v230 + 6) = v112;
    if (!v112)
    {
      if ((HIBYTE(v11[3].output_handler_context) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v113 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_ipv6_get_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v183;
          *&buf[22] = 2080;
          v236 = " ";
          v237 = 2048;
          v238 = p_output_handler;
          _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Dropped inbound packets, checking for more", buf, 0x2Au);
        }
      }

      _Block_object_dispose(v219, 8);
      _Block_object_dispose(v223, 8);
      _Block_object_dispose(v225, 8);
      a6 = v187;
      continue;
    }

    break;
  }

  _Block_object_dispose(v219, 8);
  _Block_object_dispose(v223, 8);
  _Block_object_dispose(v225, 8);
LABEL_279:
  v149 = *(v230 + 6);
  _Block_object_dispose(&v229, 8);
  if ((v9 & 1) == 0)
  {
LABEL_280:
    v166 = v6->handle;
    if (v166 == &nw_protocol_ref_counted_handle || v166 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
    {
      v167 = v6[1].callbacks;
      if (v167)
      {
        v168 = (v167 - 1);
        v6[1].callbacks = v168;
        if (!v168)
        {
          v169 = *v6[1].flow_id;
          if (v169)
          {
            *v6[1].flow_id = 0;
            v169[2](v169);
            _Block_release(v169);
          }

          if (v6[1].flow_id[8])
          {
            v170 = *v6[1].flow_id;
            if (v170)
            {
              _Block_release(v170);
            }
          }

          free(v6);
        }
      }
    }
  }

  return v149;
}

uint64_t ___ZL33nw_protocol_ipv6_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = *(a1[4] + 8);
  if (*(v6 + 24) != 1)
  {
    if (a2)
    {
      v7 = *(a2 + 204);
      goto LABEL_12;
    }

LABEL_48:
    v33 = __nwlog_obj();
    *buf = 136446210;
    v44 = "__nw_frame_is_single_ip_aggregate";
    LODWORD(v40) = 12;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null frame", buf, v40);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v34, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v44 = "__nw_frame_is_single_ip_aggregate";
          v37 = "%{public}s called with null frame";
LABEL_61:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
        }
      }

      else if (v41 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = type;
        v39 = os_log_type_enabled(v35, type);
        if (backtrace_string)
        {
          if (v39)
          {
            *buf = 136446466;
            v44 = "__nw_frame_is_single_ip_aggregate";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_62;
        }

        if (v39)
        {
          *buf = 136446210;
          v44 = "__nw_frame_is_single_ip_aggregate";
          v37 = "%{public}s called with null frame, no backtrace";
          goto LABEL_61;
        }
      }

      else
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v44 = "__nw_frame_is_single_ip_aggregate";
          v37 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_61;
        }
      }
    }

LABEL_62:
    if (v34)
    {
      free(v34);
    }

    LOBYTE(v16) = 0;
    v6 = *(a1[4] + 8);
    goto LABEL_13;
  }

  if (!a2)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v44 = "__nw_frame_is_packet_chain_member";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v27, &type, &v41))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v44 = "__nw_frame_is_packet_chain_member";
      v30 = "%{public}s called with null frame";
    }

    else if (v41 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v32 = os_log_type_enabled(v28, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446466;
          v44 = "__nw_frame_is_packet_chain_member";
          v45 = 2082;
          v46 = v31;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_46;
      }

      if (!v32)
      {
LABEL_46:
        if (v27)
        {
          free(v27);
        }

        goto LABEL_48;
      }

      *buf = 136446210;
      v44 = "__nw_frame_is_packet_chain_member";
      v30 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v44 = "__nw_frame_is_packet_chain_member";
      v30 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    goto LABEL_46;
  }

  v7 = *(a2 + 204);
  if ((v7 & 0x40) == 0)
  {
LABEL_12:
    v16 = (v7 >> 7) & 1;
LABEL_13:
    *(v6 + 24) = v16;
    *(*(a1[5] + 8) + 24) = nw_protocol_ipv6_process_input_frame(a1[9], a2, a1[8], a1[10], (*(a1[6] + 8) + 24), (*(a1[7] + 8) + 24), a3, a4);
    if (*(*(a1[5] + 8) + 24))
    {
      return 1;
    }

    --*(*(a1[6] + 8) + 24);
    goto LABEL_15;
  }

  if (*(*(a1[5] + 8) + 24))
  {
    return 1;
  }

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 - 1;
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = *(*(a1[6] + 8) + 24);
    *buf = 136446978;
    v44 = "nw_protocol_ipv6_get_input_frames_block_invoke";
    v45 = 2082;
    v46 = "count";
    v47 = 2048;
    v48 = 1;
    v49 = 2048;
    v50 = v10;
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v11, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v14 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v44 = "nw_protocol_ipv6_get_input_frames_block_invoke";
          v45 = 2082;
          v46 = "count";
          v47 = 2048;
          v48 = 1;
          v49 = 2048;
          v50 = v14;
          v15 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_28:
          _os_log_impl(&dword_181A37000, v12, v13, v15, buf, 0x2Au);
        }
      }

      else if (v41 == 1)
      {
        v21 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v22 = os_log_type_enabled(v12, type);
        if (v21)
        {
          if (v22)
          {
            v23 = *(*(a1[6] + 8) + 24);
            *buf = 136447234;
            v44 = "nw_protocol_ipv6_get_input_frames_block_invoke";
            v45 = 2082;
            v46 = "count";
            v47 = 2048;
            v48 = 1;
            v49 = 2048;
            v50 = v23;
            v51 = 2082;
            v52 = v21;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v21);
          goto LABEL_29;
        }

        if (v22)
        {
          v25 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v44 = "nw_protocol_ipv6_get_input_frames_block_invoke";
          v45 = 2082;
          v46 = "count";
          v47 = 2048;
          v48 = 1;
          v49 = 2048;
          v50 = v25;
          v15 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_28;
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          v24 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v44 = "nw_protocol_ipv6_get_input_frames_block_invoke";
          v45 = 2082;
          v46 = "count";
          v47 = 2048;
          v48 = 1;
          v49 = 2048;
          v50 = v24;
          v15 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

LABEL_15:
  v17 = (a1[8] + 8);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  if (v18)
  {
    v17 = (v18 + 40);
  }

  *v17 = v19;
  *v19 = v18;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_protocol_ipv6_process_reassembly(uint64_t a1, int a2, uint64_t a3, int a4, _BYTE *a5)
{
  v109 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 88);
  v8 = *(a1 + 88);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_90;
  }

  if (!a5 && *(a1 + 148) == a2 && a4 == 0)
  {
    v11 = 0;
LABEL_91:
    *(a1 + 148) = a2;
    return v11;
  }

  if (!a3)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_90;
    }

    goto LABEL_79;
  }

  v95 = 0;
  v96 = &v95;
  v97 = 0x2000000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 0x40000000;
  v86 = ___ZL43nw_protocol_ipv6_append_reassembled_packetsP16nw_protocol_ipv6P16nw_frame_array_sPb_block_invoke;
  v87 = &unk_1E6A3D1A0;
  v89 = &v95;
  v90 = a1;
  v88 = &v91;
  do
  {
    if (!v8)
    {
      break;
    }

    v13 = *(v8 + 32);
    v14 = v86(v85);
    v8 = v13;
  }

  while ((v14 & 1) != 0);
  if (*(v96 + 24) != 1)
  {
    if ((*(a1 + 159) & 1) == 0 && gLogDatapath == 1)
    {
      v63 = __nwlog_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(a1 + 148);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v107) = 2048;
        *(&v107 + 2) = a1;
        WORD5(v107) = 1024;
        HIDWORD(v107) = v64;
        _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Fragments for IPv6 Fragment ID %u incomplete", buf, 0x30u);
      }
    }

    v11 = 0;
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_78;
  }

  v15 = *(v92 + 12) + 40;
  v16 = nw_calloc_type<unsigned char>(v15);
  v17 = nw_frame_create(0, v16, v15, nw_protocol_ipv6_frame_input_finalizer, a1);
  if (!v17)
  {
    v30 = __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
    *&buf[12] = 1024;
    *&buf[14] = v15;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s nw_frame_create(%u) failed", buf, 18);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v82[0]) = 0;
    if (__nwlog_fault(v31, type, v82))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
          *&buf[12] = 1024;
          *&buf[14] = v15;
          v34 = "%{public}s nw_frame_create(%u) failed";
LABEL_54:
          _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x12u);
        }
      }

      else if (LOBYTE(v82[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type[0];
        v36 = os_log_type_enabled(v32, type[0]);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
            *&buf[12] = 1024;
            *&buf[14] = v15;
            *&buf[18] = 2082;
            *&buf[20] = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s nw_frame_create(%u) failed, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_55;
        }

        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
          *&buf[12] = 1024;
          *&buf[14] = v15;
          v34 = "%{public}s nw_frame_create(%u) failed, no backtrace";
          goto LABEL_54;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
          *&buf[12] = 1024;
          *&buf[14] = v15;
          v34 = "%{public}s nw_frame_create(%u) failed, backtrace limit exceeded";
          goto LABEL_54;
        }
      }
    }

LABEL_55:
    if (v31)
    {
      free(v31);
    }

    if (v16)
    {
      free(v16);
    }

    v11 = 0;
    goto LABEL_78;
  }

  v18 = v17;
  if ((*(a1 + 159) & 1) == 0 && gLogDatapath == 1)
  {
    v66 = __nwlog_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v67 = *(a1 + 148);
      *buf = 136447490;
      *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 160;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v107) = 2048;
      *(&v107 + 2) = a1;
      WORD5(v107) = 1024;
      HIDWORD(v107) = v67;
      *v108 = 1024;
      *&v108[2] = v15;
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Fragments for IPv6 Fragment ID %u are complete, aggregate length %u", buf, 0x36u);
    }
  }

  v19 = *v9;
  v84 = 0;
  v20 = nw_frame_unclaimed_bytes(v19, &v84);
  if (v20)
  {
    if (v84 > 0x27)
    {
      v22 = *(v20 + 32);
      v23 = *(v20 + 16);
      *v16 = *v20;
      v16[1] = v23;
      *(v16 + 4) = v22;
      *(v16 + 2) = bswap32(*(v92 + 12)) >> 16;
      if ((*(v18 + 204) & 8) == 0)
      {
        v24 = v18 + 120;
        v25 = *(v18 + 168);
        if (v25)
        {
          os_release(v25);
          *(v18 + 168) = 0;
        }

        v26 = *(v18 + 64);
        *(v18 + 186) |= 0x40u;
        if (v26)
        {
          if (v26 != v24)
          {
            v27 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "__nw_frame_set_metadata";
            *&buf[12] = 2048;
            *&buf[14] = v26;
            *&buf[22] = 2048;
            *&buf[24] = v18 + 120;
            v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s Existing metadata %p doesn't match expected %p", buf, 32);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v82[0]) = 0;
            v80 = v28;
            if (!__nwlog_fault(v28, type, v82))
            {
              goto LABEL_64;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v78 = __nwlog_obj();
              log = type[0];
              if (!os_log_type_enabled(v78, type[0]))
              {
                goto LABEL_64;
              }

              *buf = 136446722;
              *&buf[4] = "__nw_frame_set_metadata";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v18 + 120;
              v29 = "%{public}s Existing metadata %p doesn't match expected %p";
            }

            else
            {
              if (LOBYTE(v82[0]) == 1)
              {
                v79 = __nw_create_backtrace_string();
                loga = __nwlog_obj();
                v75 = type[0];
                v37 = os_log_type_enabled(loga, type[0]);
                v38 = v79;
                if (v79)
                {
                  if (v37)
                  {
                    *buf = 136446978;
                    *&buf[4] = "__nw_frame_set_metadata";
                    *&buf[12] = 2048;
                    *&buf[14] = v26;
                    *&buf[22] = 2048;
                    *&buf[24] = v18 + 120;
                    LOWORD(v107) = 2082;
                    *(&v107 + 2) = v79;
                    _os_log_impl(&dword_181A37000, loga, v75, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
                    v38 = v79;
                  }

                  free(v38);
                  goto LABEL_64;
                }

                if (!v37)
                {
LABEL_64:
                  if (v80)
                  {
                    free(v80);
                  }

                  goto LABEL_66;
                }

                *buf = 136446722;
                *&buf[4] = "__nw_frame_set_metadata";
                *&buf[12] = 2048;
                *&buf[14] = v26;
                *&buf[22] = 2048;
                *&buf[24] = v18 + 120;
                v29 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
                v39 = loga;
                v40 = v75;
LABEL_63:
                _os_log_impl(&dword_181A37000, v39, v40, v29, buf, 0x20u);
                goto LABEL_64;
              }

              v78 = __nwlog_obj();
              log = type[0];
              if (!os_log_type_enabled(v78, type[0]))
              {
                goto LABEL_64;
              }

              *buf = 136446722;
              *&buf[4] = "__nw_frame_set_metadata";
              *&buf[12] = 2048;
              *&buf[14] = v26;
              *&buf[22] = 2048;
              *&buf[24] = v18 + 120;
              v29 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
            }

            v39 = v78;
            v40 = log;
            goto LABEL_63;
          }
        }

        else
        {
          *(v18 + 64) = v24;
          *(v18 + 72) = v24;
          *(v18 + 120) = 0;
          *(v18 + 128) = v18 + 64;
        }
      }

LABEL_66:
      nw_frame_claim(v18, v21, 40, 0);
      v82[0] = 0;
      v82[1] = v82;
      v82[2] = 0x2000000000;
      v83 = 40;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL43nw_protocol_ipv6_append_reassembled_packetsP16nw_protocol_ipv6P16nw_frame_array_sPb_block_invoke_42;
      *&buf[24] = &unk_1E6A3D1C8;
      *&v107 = v82;
      *(&v107 + 1) = a1;
      *&v108[8] = v15;
      *v108 = v16;
      v41 = *(a1 + 88);
      do
      {
        if (!v41)
        {
          break;
        }

        v42 = *(v41 + 32);
        v43 = (*&buf[16])(buf);
        v41 = v42;
      }

      while ((v43 & 1) != 0);
      *(v18 + 16) = 0;
      v44 = *(a1 + 112);
      *(v18 + 24) = v44;
      *v44 = v18;
      *(a1 + 112) = v18 + 16;
      *(v18 + 32) = 0;
      v45 = *(a3 + 8);
      *(v18 + 40) = v45;
      *v45 = v18;
      *(a3 + 8) = v18 + 32;
      v46 = *(a1 + 88);
      if (v46)
      {
        *(v46 + 40) = &v104;
        v47 = *(a1 + 96);
        v104 = v46;
        v105 = v47;
        *(a1 + 88) = 0;
        *(a1 + 96) = v9;
        *type = MEMORY[0x1E69E9820];
        v100 = 0x40000000;
        v101 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke_91243;
        v102 = &__block_descriptor_tmp_29_91244;
        v103 = 1;
        do
        {
          v48 = v104;
          if (!v104)
          {
            break;
          }

          v49 = *(v104 + 32);
          v50 = *(v104 + 40);
          v51 = (v49 + 40);
          if (!v49)
          {
            v51 = &v105;
          }

          *v51 = v50;
          *v50 = v49;
          *(v48 + 32) = 0;
          *(v48 + 40) = 0;
        }

        while (((v101)(type) & 1) != 0);
      }

      if (a5)
      {
        *a5 = 0;
      }

      _Block_object_dispose(v82, 8);
      v11 = 1;
      goto LABEL_78;
    }

    if (*(a1 + 159))
    {
LABEL_123:
      os_release(v18);
      v11 = 0;
      goto LABEL_78;
    }

    v68 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 160;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    LOWORD(v107) = 2048;
    *(&v107 + 2) = a1;
    WORD5(v107) = 1024;
    HIDWORD(v107) = v84;
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s %{public}s%s%p Invalid first IPv6 reassembly frame (length %u)", buf, 48);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v82[0]) = 0;
    if (__nwlog_fault(v69, type, v82))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v70 = __nwlog_obj();
        v71 = type[0];
        if (!os_log_type_enabled(v70, type[0]))
        {
          goto LABEL_121;
        }

        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v107) = 2048;
        *(&v107 + 2) = a1;
        WORD5(v107) = 1024;
        HIDWORD(v107) = v84;
        v72 = "%{public}s %{public}s%s%p Invalid first IPv6 reassembly frame (length %u)";
        goto LABEL_120;
      }

      if (LOBYTE(v82[0]) != 1)
      {
        v70 = __nwlog_obj();
        v71 = type[0];
        if (!os_log_type_enabled(v70, type[0]))
        {
          goto LABEL_121;
        }

        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v107) = 2048;
        *(&v107 + 2) = a1;
        WORD5(v107) = 1024;
        HIDWORD(v107) = v84;
        v72 = "%{public}s %{public}s%s%p Invalid first IPv6 reassembly frame (length %u), backtrace limit exceeded";
        goto LABEL_120;
      }

      v73 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type[0];
      v74 = os_log_type_enabled(v70, type[0]);
      if (v73)
      {
        if (v74)
        {
          *buf = 136447490;
          *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 160;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          LOWORD(v107) = 2048;
          *(&v107 + 2) = a1;
          WORD5(v107) = 1024;
          HIDWORD(v107) = v84;
          *v108 = 2082;
          *&v108[2] = v73;
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s %{public}s%s%p Invalid first IPv6 reassembly frame (length %u), dumping backtrace:%{public}s", buf, 0x3Au);
        }

        free(v73);
        goto LABEL_121;
      }

      if (v74)
      {
        *buf = 136447234;
        *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v107) = 2048;
        *(&v107 + 2) = a1;
        WORD5(v107) = 1024;
        HIDWORD(v107) = v84;
        v72 = "%{public}s %{public}s%s%p Invalid first IPv6 reassembly frame (length %u), no backtrace";
LABEL_120:
        _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0x30u);
      }
    }

LABEL_121:
    if (v69)
    {
      free(v69);
    }

    goto LABEL_123;
  }

  if ((*(a1 + 159) & 1) == 0)
  {
    v65 = __nwlog_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_ipv6_append_reassembled_packets";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 160;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      LOWORD(v107) = 2048;
      *(&v107 + 2) = a1;
      _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", buf, 0x2Au);
    }
  }

  *(a1 + 48) = 0;
  v11 = 0;
LABEL_78:
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);
  if (!a4)
  {
    goto LABEL_90;
  }

LABEL_79:
  for (i = 0; ; ++i)
  {
    v57 = *v9;
    if (!*v9)
    {
      break;
    }

    v58 = v57[5];
    if (v58 == v9)
    {
      v53 = v57 + 4;
      v59 = v57[4];
      if (v59)
      {
        *(v59 + 40) = v58;
        *v57[5] = v59;
      }

      else
      {
        *(a1 + 96) = v58;
        *v58 = 0;
      }
    }

    else
    {
      v54 = v57[2];
      v55 = v57[3];
      v53 = v57 + 2;
      v56 = (v54 + 24);
      if (!v54)
      {
        v56 = (a1 + 96);
      }

      *v56 = v55;
      *v55 = v54;
    }

    *v53 = 0;
    v53[1] = 0;
    nw_frame_finalize(v57);
  }

  if (i)
  {
    if ((*(a1 + 159) & 1) == 0)
    {
      v61 = __nwlog_obj();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = *(a1 + 148);
        *buf = 136447490;
        *&buf[4] = "nw_protocol_ipv6_process_reassembly";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 160;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        LOWORD(v107) = 2048;
        *(&v107 + 2) = a1;
        WORD5(v107) = 1024;
        HIDWORD(v107) = v62;
        *v108 = 1024;
        *&v108[2] = i;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%p Failed to reassemble IPv6 Fragmentation ID %u, dropping %u frames", buf, 0x36u);
      }
    }
  }

LABEL_90:
  if (!a5)
  {
    goto LABEL_91;
  }

  return v11;
}

uint64_t nw_protocol_ipv6_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t count, unsigned int a4, int a5, nw_frame_array_s *a6)
{
  v125 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1;
    handle = a1->handle;
    v9 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v10 = 1;
      goto LABEL_11;
    }

    v9 = *a1[1].flow_id;
    if (v9)
    {
LABEL_6:
      callbacks = v9[1].callbacks;
      v10 = 0;
      if (callbacks)
      {
        v9[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v10 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v12 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v120 = "nw_protocol_ipv6_get_output_frames";
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v117 = 0;
        if (!__nwlog_fault(v13, &type, &v117))
        {
          goto LABEL_39;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v120 = "nw_protocol_ipv6_get_output_frames";
          v16 = "%{public}s called with null ipv6";
        }

        else
        {
          if (v117 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v29 = gLogObj;
            v30 = type;
            v31 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v31)
              {
                *buf = 136446466;
                v120 = "nw_protocol_ipv6_get_output_frames";
                v121 = 2082;
                *v122 = backtrace_string;
                _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
            }

            else if (v31)
            {
              *buf = 136446210;
              v120 = "nw_protocol_ipv6_get_output_frames";
              v16 = "%{public}s called with null ipv6, no backtrace";
              v33 = v29;
              v34 = v30;
              goto LABEL_38;
            }

LABEL_39:
            if (v13)
            {
              free(v13);
            }

            v35 = 0;
            if (v10)
            {
              return v35;
            }

LABEL_76:
            v54 = v7->handle;
            if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v7 = *v7[1].flow_id) != 0)
            {
              v55 = v7[1].callbacks;
              if (v55)
              {
                v56 = (v55 - 1);
                v7[1].callbacks = v56;
                if (!v56)
                {
                  v57 = *v7[1].flow_id;
                  if (v57)
                  {
                    *v7[1].flow_id = 0;
                    v57[2](v57);
                    _Block_release(v57);
                  }

                  if (v7[1].flow_id[8])
                  {
                    v58 = *v7[1].flow_id;
                    if (v58)
                    {
                      _Block_release(v58);
                    }
                  }

                  free(v7);
                }
              }
            }

            return v35;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v120 = "nw_protocol_ipv6_get_output_frames";
          v16 = "%{public}s called with null ipv6, backtrace limit exceeded";
        }

        v33 = v14;
        v34 = v15;
LABEL_38:
        _os_log_impl(&dword_181A37000, v33, v34, v16, buf, 0xCu);
        goto LABEL_39;
      }

      v12 = *a1[1].flow_id;
    }

    p_output_handler = &v12[1].output_handler;
    if (a5 && LODWORD(v12[3].output_handler_context) < count && (HIBYTE(v12[3].output_handler_context) & 8) == 0)
    {
      v19 = nw_calloc_type<unsigned char>(count);
      v20 = count;
      v21 = nw_frame_create(0, v19, count, nw_protocol_ipv6_frame_output_finalizer, &v12[1].output_handler);
      v22 = v21;
      if (v21)
      {
        *(v21 + 204) |= 1u;
        *(v21 + 16) = 0;
        flow_id = v12[3].output_handler->flow_id;
        *(v21 + 24) = flow_id;
        *flow_id = v21;
        v12[3].output_handler = (v21 + 16);
        goto LABEL_115;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v120 = "nw_protocol_ipv6_create_output_frame";
      v121 = 1024;
      *v122 = count;
      v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_frame_create(%u) failed", buf, 18);
      type = OS_LOG_TYPE_ERROR;
      v117 = 0;
      if (__nwlog_fault(v64, &type, &v117))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v120 = "nw_protocol_ipv6_create_output_frame";
            v121 = 1024;
            *v122 = v20;
            v67 = "%{public}s nw_frame_create(%u) failed";
LABEL_109:
            v71 = v65;
LABEL_110:
            _os_log_impl(&dword_181A37000, v71, v66, v67, buf, 0x12u);
          }
        }

        else if (v117 == 1)
        {
          v68 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v66 = type;
          log = v69;
          v70 = os_log_type_enabled(v69, type);
          if (v68)
          {
            if (v70)
            {
              *buf = 136446722;
              v120 = "nw_protocol_ipv6_create_output_frame";
              v121 = 1024;
              *v122 = v20;
              *&v122[4] = 2082;
              *&v122[6] = v68;
              _os_log_impl(&dword_181A37000, log, v66, "%{public}s nw_frame_create(%u) failed, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v68);
            goto LABEL_111;
          }

          if (v70)
          {
            *buf = 136446466;
            v120 = "nw_protocol_ipv6_create_output_frame";
            v121 = 1024;
            *v122 = v20;
            v67 = "%{public}s nw_frame_create(%u) failed, no backtrace";
            v71 = log;
            goto LABEL_110;
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v120 = "nw_protocol_ipv6_create_output_frame";
            v121 = 1024;
            *v122 = v20;
            v67 = "%{public}s nw_frame_create(%u) failed, backtrace limit exceeded";
            goto LABEL_109;
          }
        }
      }

LABEL_111:
      if (v64)
      {
        free(v64);
      }

      if (v19)
      {
        free(v19);
      }

LABEL_115:
      *(v22 + 32) = 0;
      tqh_last = a6->tqh_last;
      *(v22 + 40) = tqh_last;
      *tqh_last = v22;
      a6->tqh_last = (v22 + 32);
      v35 = 1;
      if (v10)
      {
        return v35;
      }

      goto LABEL_76;
    }

    output_handler = a1->output_handler;
    if (output_handler)
    {
      v25 = output_handler->handle;
      v26 = a1->output_handler;
      if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v26 = *output_handler[1].flow_id) != 0)
      {
        v32 = v26[1].callbacks;
        v27 = 0;
        if (v32)
        {
          v26[1].callbacks = (&v32->add_input_handler + 1);
        }
      }

      else
      {
        v27 = 1;
      }

      v36 = a1;
      if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v36 = *a1[1].flow_id) != 0)
      {
        v59 = v36[1].callbacks;
        if (v59)
        {
          v37 = 0;
          v36[1].callbacks = (&v59->add_input_handler + 1);
          if (!a6)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v37 = 0;
          if (!a6)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v37 = 1;
        if (!a6)
        {
LABEL_90:
          v60 = __nwlog_obj();
          *buf = 136446210;
          v120 = "__nw_protocol_get_output_frames";
          type = OS_LOG_TYPE_ERROR;
          v117 = 0;
          v111 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null return_array", buf, 12);
          if (!__nwlog_fault(v111, &type, &v117))
          {
            goto LABEL_172;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v61 = __nwlog_obj();
            v62 = type;
            if (!os_log_type_enabled(v61, type))
            {
              goto LABEL_172;
            }

            *buf = 136446210;
            v120 = "__nw_protocol_get_output_frames";
            v63 = "%{public}s called with null return_array";
LABEL_169:
            v104 = v61;
            v105 = v62;
LABEL_170:
            v106 = 12;
            goto LABEL_171;
          }

          if (v117 != 1)
          {
            v61 = __nwlog_obj();
            v62 = type;
            if (!os_log_type_enabled(v61, type))
            {
              goto LABEL_172;
            }

            *buf = 136446210;
            v120 = "__nw_protocol_get_output_frames";
            v63 = "%{public}s called with null return_array, backtrace limit exceeded";
            goto LABEL_169;
          }

          v91 = __nw_create_backtrace_string();
          v101 = __nwlog_obj();
          v109 = type;
          v102 = os_log_type_enabled(v101, type);
          if (v91)
          {
            if (v102)
            {
              *buf = 136446466;
              v120 = "__nw_protocol_get_output_frames";
              v121 = 2082;
              *v122 = v91;
              v95 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
              v96 = v101;
              v97 = v109;
              v98 = 22;
LABEL_157:
              _os_log_impl(&dword_181A37000, v96, v97, v95, buf, v98);
              goto LABEL_158;
            }

            goto LABEL_158;
          }

          if (v102)
          {
            *buf = 136446210;
            v120 = "__nw_protocol_get_output_frames";
            v63 = "%{public}s called with null return_array, no backtrace";
            v104 = v101;
            v105 = v109;
            goto LABEL_170;
          }

          goto LABEL_172;
        }
      }

      v38 = output_handler->callbacks;
      if (v38)
      {
        get_output_frames = v38->get_output_frames;
        if (get_output_frames)
        {
          v35 = get_output_frames(output_handler, a1);
          if (v37)
          {
LABEL_60:
            if ((v27 & 1) == 0)
            {
              v46 = output_handler->handle;
              if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
              {
                v47 = output_handler[1].callbacks;
                if (v47)
                {
                  v48 = (v47 - 1);
                  output_handler[1].callbacks = v48;
                  if (!v48)
                  {
                    v49 = *output_handler[1].flow_id;
                    if (v49)
                    {
                      *output_handler[1].flow_id = 0;
                      v49[2](v49);
                      _Block_release(v49);
                    }

                    if (output_handler[1].flow_id[8])
                    {
                      v50 = *output_handler[1].flow_id;
                      if (v50)
                      {
                        _Block_release(v50);
                      }
                    }

                    free(output_handler);
                  }
                }
              }
            }

            goto LABEL_72;
          }

LABEL_49:
          v40 = v7->handle;
          v41 = v7;
          if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v41 = *v7[1].flow_id) != 0)
          {
            v42 = v41[1].callbacks;
            if (v42)
            {
              v43 = (v42 - 1);
              v41[1].callbacks = v43;
              if (!v43)
              {
                v44 = *v41[1].flow_id;
                if (v44)
                {
                  *v41[1].flow_id = 0;
                  v44[2](v44);
                  _Block_release(v44);
                }

                if (v41[1].flow_id[8])
                {
                  v45 = *v41[1].flow_id;
                  if (v45)
                  {
                    _Block_release(v45);
                  }
                }

                free(v41);
              }
            }
          }

          goto LABEL_60;
        }
      }

      v79 = __nwlog_obj();
      name = output_handler->identifier->name;
      *buf = 136446722;
      v120 = "__nw_protocol_get_output_frames";
      if (!name)
      {
        name = "invalid";
      }

      v121 = 2082;
      *v122 = name;
      *&v122[8] = 2048;
      *&v122[10] = output_handler;
      type = OS_LOG_TYPE_ERROR;
      v117 = 0;
      v111 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback", buf, 32);
      if (!__nwlog_fault(v111, &type, &v117))
      {
        goto LABEL_172;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v81 = __nwlog_obj();
        v82 = type;
        if (!os_log_type_enabled(v81, type))
        {
          goto LABEL_172;
        }

        v83 = output_handler->identifier->name;
        if (!v83)
        {
          v83 = "invalid";
        }

        *buf = 136446722;
        v120 = "__nw_protocol_get_output_frames";
        v121 = 2082;
        *v122 = v83;
        *&v122[8] = 2048;
        *&v122[10] = output_handler;
        v63 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
      }

      else
      {
        if (v117 == 1)
        {
          v91 = __nw_create_backtrace_string();
          v92 = __nwlog_obj();
          v108 = type;
          v93 = os_log_type_enabled(v92, type);
          if (v91)
          {
            if (v93)
            {
              v94 = output_handler->identifier->name;
              if (!v94)
              {
                v94 = "invalid";
              }

              *buf = 136446978;
              v120 = "__nw_protocol_get_output_frames";
              v121 = 2082;
              *v122 = v94;
              *&v122[8] = 2048;
              *&v122[10] = output_handler;
              v123 = 2082;
              v124 = v91;
              v95 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s";
              v96 = v92;
              v97 = v108;
              v98 = 42;
              goto LABEL_157;
            }

LABEL_158:
            free(v91);
            goto LABEL_172;
          }

          if (!v93)
          {
LABEL_172:
            if (v111)
            {
              free(v111);
            }

            v35 = 0;
            if (v37)
            {
              goto LABEL_60;
            }

            goto LABEL_49;
          }

          v107 = output_handler->identifier->name;
          if (!v107)
          {
            v107 = "invalid";
          }

          *buf = 136446722;
          v120 = "__nw_protocol_get_output_frames";
          v121 = 2082;
          *v122 = v107;
          *&v122[8] = 2048;
          *&v122[10] = output_handler;
          v63 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
          v104 = v92;
          v105 = v108;
LABEL_164:
          v106 = 32;
LABEL_171:
          _os_log_impl(&dword_181A37000, v104, v105, v63, buf, v106);
          goto LABEL_172;
        }

        v81 = __nwlog_obj();
        v82 = type;
        if (!os_log_type_enabled(v81, type))
        {
          goto LABEL_172;
        }

        v103 = output_handler->identifier->name;
        if (!v103)
        {
          v103 = "invalid";
        }

        *buf = 136446722;
        v120 = "__nw_protocol_get_output_frames";
        v121 = 2082;
        *v122 = v103;
        *&v122[8] = 2048;
        *&v122[10] = output_handler;
        v63 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
      }

      v104 = v81;
      v105 = v82;
      goto LABEL_164;
    }

    v86 = __nwlog_obj();
    *buf = 136446210;
    v120 = "__nw_protocol_get_output_frames";
    v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v86, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v117 = 0;
    if (__nwlog_fault(v87, &type, &v117))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v88, type))
        {
          *buf = 136446210;
          v120 = "__nw_protocol_get_output_frames";
          v90 = "%{public}s called with null protocol";
LABEL_188:
          _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
        }
      }

      else if (v117 == 1)
      {
        v99 = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v89 = type;
        v100 = os_log_type_enabled(v88, type);
        if (v99)
        {
          if (v100)
          {
            *buf = 136446466;
            v120 = "__nw_protocol_get_output_frames";
            v121 = 2082;
            *v122 = v99;
            _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v99);
          goto LABEL_189;
        }

        if (v100)
        {
          *buf = 136446210;
          v120 = "__nw_protocol_get_output_frames";
          v90 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_188;
        }
      }

      else
      {
        v88 = __nwlog_obj();
        v89 = type;
        if (os_log_type_enabled(v88, type))
        {
          *buf = 136446210;
          v120 = "__nw_protocol_get_output_frames";
          v90 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_188;
        }
      }
    }

LABEL_189:
    if (v87)
    {
      free(v87);
    }

    v35 = 0;
LABEL_72:
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 0x40000000;
    v113 = ___ZL34nw_protocol_ipv6_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v114 = &__block_descriptor_tmp_44_91241;
    v115 = p_output_handler;
    v116 = v7;
    tqh_first = a6->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v52 = *(tqh_first + 4);
      v53 = v113(v112);
      tqh_first = v52;
    }

    while ((v53 & 1) != 0);
    if (v10)
    {
      return v35;
    }

    goto LABEL_76;
  }

  v74 = __nwlog_obj();
  *buf = 136446210;
  v120 = "nw_protocol_ipv6_get_output_frames";
  v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v117 = 0;
  if (__nwlog_fault(v75, &type, &v117))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v120 = "nw_protocol_ipv6_get_output_frames";
        v78 = "%{public}s called with null protocol";
LABEL_178:
        _os_log_impl(&dword_181A37000, v76, v77, v78, buf, 0xCu);
      }
    }

    else if (v117 == 1)
    {
      v84 = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v77 = type;
      v85 = os_log_type_enabled(v76, type);
      if (v84)
      {
        if (v85)
        {
          *buf = 136446466;
          v120 = "nw_protocol_ipv6_get_output_frames";
          v121 = 2082;
          *v122 = v84;
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v84);
        goto LABEL_179;
      }

      if (v85)
      {
        *buf = 136446210;
        v120 = "nw_protocol_ipv6_get_output_frames";
        v78 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_178;
      }
    }

    else
    {
      v76 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v76, type))
      {
        *buf = 136446210;
        v120 = "nw_protocol_ipv6_get_output_frames";
        v78 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_178;
      }
    }
  }

LABEL_179:
  if (v75)
  {
    free(v75);
  }

  return 0;
}

uint64_t ___ZL34nw_protocol_ipv6_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, _DWORD *a2)
{
  if ((*(*(a1 + 32) + 159) & 2) != 0)
  {
    v4 = nw_frame_unclaimed_length(a2);
    if (v4 >= 0x500)
    {
      v3 = v4 - 1280;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  nw_frame_claim(a2, a2, 40, v3);
  return 1;
}