@interface NWConcrete_nw_endpoint_fallback
- (BOOL)applyWithHandler:(id)handler toChildren:(id)children;
- (NWConcrete_nw_endpoint_fallback)init;
- (void)cancelWithHandler:(id)handler forced:(BOOL)forced;
- (void)dealloc;
- (void)startWithHandler:(id)handler;
- (void)updatePathWithHandler:(id)handler;
@end

@implementation NWConcrete_nw_endpoint_fallback

- (NWConcrete_nw_endpoint_fallback)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_endpoint_fallback;
  v2 = [(NWConcrete_nw_endpoint_fallback *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_endpoint_fallback init]";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s [super init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_endpoint_fallback init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_endpoint_fallback init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_endpoint_fallback init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_endpoint_fallback init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_endpoint_fallback;
  [(NWConcrete_nw_endpoint_fallback *)&v2 dealloc];
}

- (BOOL)applyWithHandler:(id)handler toChildren:(id)children
{
  v47 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  childrenCopy = children;
  if (!handlerCopy)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v13, &type, &v37))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_41;
      }

      if (v31)
      {
        *buf = 136446210;
        v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v14, v30, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
        _os_log_impl(&dword_181A37000, v14, v32, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  v8 = handlerCopy;
  v9 = v8[29];

  if (v9 != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (v9 > 5)
    {
      v12 = "unknown-mode";
    }

    else
    {
      v12 = off_1E6A31018[v9];
    }

    *buf = 136446722;
    v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
    v41 = 2082;
    v42 = v12;
    v43 = 2082;
    v44 = "fallback";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v13, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (v9 > 5)
          {
            v16 = "unknown-mode";
          }

          else
          {
            v16 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = v16;
          v43 = 2082;
          v44 = "fallback";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v37 == 1)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (v17)
        {
          if (v19)
          {
            if (v9 > 5)
            {
              v20 = "unknown-mode";
            }

            else
            {
              v20 = off_1E6A31018[v9];
            }

            *buf = 136446978;
            v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
            v41 = 2082;
            v42 = v20;
            v43 = 2082;
            v44 = "fallback";
            v45 = 2082;
            v46 = v17;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v17);
          if (!v13)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v19)
        {
          if (v9 > 5)
          {
            v23 = "unknown-mode";
          }

          else
          {
            v23 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = v23;
          v43 = 2082;
          v44 = "fallback";
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (v9 > 5)
          {
            v22 = "unknown-mode";
          }

          else
          {
            v22 = off_1E6A31018[v9];
          }

          *buf = 136446722;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          v41 = 2082;
          v42 = v22;
          v43 = 2082;
          v44 = "fallback";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (!childrenCopy)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null applyBlock", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v13, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          _os_log_impl(&dword_181A37000, v14, v28, "%{public}s called with null applyBlock", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v14, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
            v41 = 2082;
            v42 = v33;
            _os_log_impl(&dword_181A37000, v14, v34, "%{public}s called with null applyBlock, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          if (!v13)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if (v35)
        {
          *buf = 136446210;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          _os_log_impl(&dword_181A37000, v14, v34, "%{public}s called with null applyBlock, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v40 = "[NWConcrete_nw_endpoint_fallback applyWithHandler:toChildren:]";
          _os_log_impl(&dword_181A37000, v14, v36, "%{public}s called with null applyBlock, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_40;
    }

LABEL_41:
    if (!v13)
    {
LABEL_43:
      v10 = 1;
      goto LABEL_44;
    }

LABEL_42:
    free(v13);
    goto LABEL_43;
  }

  if ((!self->primary_child || childrenCopy[2](childrenCopy)) && (!self->fallback_child || childrenCopy[2](childrenCopy)))
  {
    goto LABEL_43;
  }

  v10 = 0;
LABEL_44:

  return v10;
}

- (void)updatePathWithHandler:(id)handler
{
  v141 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!handlerCopy)
  {
    v83 = __nwlog_obj();
    *buf = 136446210;
    v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v125 = 0;
    if (!__nwlog_fault(v26, &type, &v125))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v84 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v27, v84, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v125 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v86 = type;
      v87 = os_log_type_enabled(v27, type);
      if (backtrace_string)
      {
        if (v87)
        {
          *buf = 136446466;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v86, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_75;
      }

      if (v87)
      {
        *buf = 136446210;
        v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v27, v86, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v88 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        _os_log_impl(&dword_181A37000, v27, v88, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  v6 = handlerCopy;
  v7 = v6[29];

  if (v7 != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    if (v7 > 5)
    {
      v25 = "unknown-mode";
    }

    else
    {
      v25 = off_1E6A31018[v7];
    }

    *buf = 136446722;
    v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
    v129 = 2082;
    v130 = v25;
    v131 = 2082;
    v132 = "fallback";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v125 = 0;
    if (__nwlog_fault(v26, &type, &v125))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          if (v7 > 5)
          {
            v29 = "unknown-mode";
          }

          else
          {
            v29 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = v29;
          v131 = 2082;
          v132 = "fallback";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v125 == 1)
      {
        v30 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v31 = type;
        v32 = os_log_type_enabled(v27, type);
        if (v30)
        {
          if (v32)
          {
            if (v7 > 5)
            {
              v33 = "unknown-mode";
            }

            else
            {
              v33 = off_1E6A31018[v7];
            }

            *buf = 136446978;
            v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
            v129 = 2082;
            v130 = v33;
            v131 = 2082;
            v132 = "fallback";
            v133 = 2082;
            v134 = v30;
            _os_log_impl(&dword_181A37000, v27, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v30);
          if (!v26)
          {
            goto LABEL_103;
          }

LABEL_76:
          free(v26);
          goto LABEL_103;
        }

        if (v32)
        {
          if (v7 > 5)
          {
            v48 = "unknown-mode";
          }

          else
          {
            v48 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = v48;
          v131 = 2082;
          v132 = "fallback";
          _os_log_impl(&dword_181A37000, v27, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v34 = type;
        if (os_log_type_enabled(v27, type))
        {
          if (v7 > 5)
          {
            v35 = "unknown-mode";
          }

          else
          {
            v35 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = v35;
          v131 = 2082;
          v132 = "fallback";
          _os_log_impl(&dword_181A37000, v27, v34, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_74;
    }

LABEL_75:
    if (!v26)
    {
      goto LABEL_103;
    }

    goto LABEL_76;
  }

  if ((*(self + 108) & 0x20) == 0 && self->fallback_interface)
  {
    v8 = v6;
    os_unfair_lock_lock(v8 + 28);
    v9 = *(v8 + 8);
    os_unfair_lock_unlock(v8 + 28);

    v124 = v9;
    fallback_interface_index = nw_path_get_fallback_interface_index(v9);
    if (fallback_interface_index)
    {
      fallback_interface = self->fallback_interface;
      if (fallback_interface)
      {
        if (fallback_interface_index == _nw_interface_get_index(fallback_interface))
        {
          goto LABEL_84;
        }
      }
    }

    fallback_timer = self->fallback_timer;
    if (fallback_timer)
    {
      nw_queue_cancel_source(fallback_timer);
      self->fallback_timer = 0;
    }

    if (!self->result && self->fallback_child)
    {
      v36 = v8;
      v37 = *(v36 + 284);

      if ((v37 & 0x20) != 0)
      {
        if (nw_endpoint_handler_get_logging_disabled(v36))
        {
          goto LABEL_48;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v101 = gconnectionLogObj;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
        {
          loge = nw_endpoint_handler_get_id_string(v36);
          v102 = nw_endpoint_handler_dry_run_string(v36);
          v103 = nw_endpoint_handler_copy_endpoint(v36);
          logging_description = nw_endpoint_get_logging_description(v103);
          v105 = nw_endpoint_handler_state_string(v36);
          v106 = nw_endpoint_handler_mode_string(v36);
          v107 = nw_endpoint_handler_copy_current_path(v36);
          *buf = 136447746;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = loge;
          v131 = 2082;
          v132 = v102;
          v133 = 2082;
          v134 = logging_description;
          v135 = 2082;
          v136 = v105;
          v137 = 2082;
          v138 = v106;
          v139 = 2114;
          v140 = v107;
          v40 = v101;
          _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed, cancelling fallback attempt", buf, 0x48u);
        }

        else
        {
          v40 = v101;
        }
      }

      else
      {
        v38 = v36;
        v39 = *(v36 + 284);

        if ((v39 & 0x40) != 0)
        {
LABEL_48:
          nw_endpoint_handler_cancel(self->fallback_child, 0, 1);
          goto LABEL_84;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v40 = gconnectionLogObj;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          id_string = nw_endpoint_handler_get_id_string(v38);
          v42 = nw_endpoint_handler_dry_run_string(v38);
          loga = v40;
          v43 = nw_endpoint_handler_copy_endpoint(v38);
          v44 = nw_endpoint_get_logging_description(v43);
          v45 = nw_endpoint_handler_state_string(v38);
          v46 = nw_endpoint_handler_mode_string(v38);
          v47 = nw_endpoint_handler_copy_current_path(v38);
          *buf = 136447746;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = id_string;
          v131 = 2082;
          v132 = v42;
          v133 = 2082;
          v134 = v44;
          v135 = 2082;
          v136 = v45;
          v137 = 2082;
          v138 = v46;
          v139 = 2114;
          v140 = v47;
          v40 = loga;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed, cancelling fallback attempt", buf, 0x48u);
        }
      }

      goto LABEL_48;
    }

    v13 = v8;
    v14 = *(v13 + 284);

    if ((v14 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v13))
      {
        goto LABEL_84;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        logc = nw_endpoint_handler_get_id_string(v13);
        v89 = nw_endpoint_handler_dry_run_string(v13);
        v90 = nw_endpoint_handler_copy_endpoint(v13);
        v91 = nw_endpoint_get_logging_description(v90);
        v92 = nw_endpoint_handler_state_string(v13);
        v93 = nw_endpoint_handler_mode_string(v13);
        v94 = nw_endpoint_handler_copy_current_path(v13);
        *buf = 136447746;
        v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
        v129 = 2082;
        v130 = logc;
        v131 = 2082;
        v132 = v89;
        v133 = 2082;
        v134 = v91;
        v135 = 2082;
        v136 = v92;
        v137 = 2082;
        v138 = v93;
        v139 = 2114;
        v140 = v94;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed", buf, 0x48u);
      }

      goto LABEL_83;
    }

    v15 = v13;
    v16 = *(v13 + 284);

    if ((v16 & 0x40) != 0)
    {
LABEL_84:
      if (!nw_path_fallback_is_forced(v124) || (*(self + 108) & 8) != 0)
      {
        goto LABEL_102;
      }

      v60 = v8;
      v61 = (v60[71] & 0x20) == 0;

      if (v61)
      {
        v62 = v60;
        v63 = (v60[71] & 0x40) == 0;

        if (!v63)
        {
          goto LABEL_93;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v64 = gconnectionLogObj;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = nw_endpoint_handler_get_id_string(v62);
          v66 = nw_endpoint_handler_dry_run_string(v62);
          logb = v64;
          v116 = nw_endpoint_handler_copy_endpoint(v62);
          v67 = nw_endpoint_get_logging_description(v116);
          v68 = nw_endpoint_handler_state_string(v62);
          v69 = nw_endpoint_handler_mode_string(v62);
          v70 = nw_endpoint_handler_copy_current_path(v62);
          *buf = 136447746;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = v65;
          v131 = 2082;
          v132 = v66;
          v133 = 2082;
          v134 = v67;
          v135 = 2082;
          v136 = v68;
          v137 = 2082;
          v138 = v69;
          v139 = 2114;
          v140 = v70;
          v64 = logb;
          _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Immediate fallback requested", buf, 0x48u);
        }
      }

      else
      {
        if (nw_endpoint_handler_get_logging_disabled(v60))
        {
LABEL_93:
          *(self + 108) |= 8u;
          if (!self->result)
          {
            nw_endpoint_fallback_start_fallback_child(v60);
            nw_endpoint_handler_cancel(self->primary_child, 0, 1);
            goto LABEL_102;
          }

          v71 = v60;
          v72 = (v60[71] & 0x20) == 0;

          if (v72)
          {
            v73 = v71;
            v74 = (v60[71] & 0x40) == 0;

            if (!v74)
            {
LABEL_102:

              goto LABEL_103;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v75 = gconnectionLogObj;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v76 = nw_endpoint_handler_get_id_string(v73);
              v77 = nw_endpoint_handler_dry_run_string(v73);
              v78 = nw_endpoint_handler_copy_endpoint(v73);
              v79 = nw_endpoint_get_logging_description(v78);
              v80 = nw_endpoint_handler_state_string(v73);
              v81 = nw_endpoint_handler_mode_string(v73);
              v82 = nw_endpoint_handler_copy_current_path(v73);
              *buf = 136447746;
              v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
              v129 = 2082;
              v130 = v76;
              v131 = 2082;
              v132 = v77;
              v133 = 2082;
              v134 = v79;
              v135 = 2082;
              v136 = v80;
              v137 = 2082;
              v138 = v81;
              v139 = 2114;
              v140 = v82;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Ignoring immediate fallback request since race is complete", buf, 0x48u);
            }
          }

          else
          {
            if (nw_endpoint_handler_get_logging_disabled(v71))
            {
              goto LABEL_102;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v75 = gconnectionLogObj;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v108 = nw_endpoint_handler_get_id_string(v71);
              v109 = nw_endpoint_handler_dry_run_string(v71);
              v110 = nw_endpoint_handler_copy_endpoint(v71);
              v111 = nw_endpoint_get_logging_description(v110);
              v112 = nw_endpoint_handler_state_string(v71);
              v113 = nw_endpoint_handler_mode_string(v71);
              v114 = nw_endpoint_handler_copy_current_path(v71);
              *buf = 136447746;
              v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
              v129 = 2082;
              v130 = v108;
              v131 = 2082;
              v132 = v109;
              v133 = 2082;
              v134 = v111;
              v135 = 2082;
              v136 = v112;
              v137 = 2082;
              v138 = v113;
              v139 = 2114;
              v140 = v114;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Ignoring immediate fallback request since race is complete", buf, 0x48u);
            }
          }

          goto LABEL_102;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v95 = gconnectionLogObj;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
        {
          logd = nw_endpoint_handler_get_id_string(v60);
          v117 = nw_endpoint_handler_dry_run_string(v60);
          v96 = nw_endpoint_handler_copy_endpoint(v60);
          v97 = nw_endpoint_get_logging_description(v96);
          v98 = nw_endpoint_handler_state_string(v60);
          v99 = nw_endpoint_handler_mode_string(v60);
          v100 = nw_endpoint_handler_copy_current_path(v60);
          *buf = 136447746;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = logd;
          v131 = 2082;
          v132 = v117;
          v133 = 2082;
          v134 = v97;
          v135 = 2082;
          v136 = v98;
          v137 = 2082;
          v138 = v99;
          v139 = 2114;
          v140 = v100;
          v64 = v95;
          _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Immediate fallback requested", buf, 0x48u);
        }

        else
        {
          v64 = v95;
        }
      }

      goto LABEL_93;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
LABEL_83:

      goto LABEL_84;
    }

    v18 = v15;

    v19 = v18;
    v20 = *(v13 + 284);

    if (v20)
    {
      v21 = "dry-run ";
    }

    else
    {
      v21 = "";
    }

    v22 = nw_endpoint_handler_copy_endpoint(v19);
    v23 = v22;
    log = v21;
    if (v22)
    {
      v115 = _nw_endpoint_get_logging_description(v22);
    }

    else
    {
      v115 = "<NULL>";
    }

    v49 = v18 + 184;

    v50 = v19;
    v51 = v50;
    v52 = v50[30];
    if (v52 > 5)
    {
      v53 = "unknown-state";
    }

    else
    {
      v53 = off_1E6A31048[v52];
    }

    v54 = v51;
    v55 = v54;
    v56 = v6[29];
    if (v56 > 2)
    {
      switch(v56)
      {
        case 3:
          v57 = "proxy";
          goto LABEL_82;
        case 4:
          v57 = "fallback";
          goto LABEL_82;
        case 5:
          v57 = "transform";
          goto LABEL_82;
      }
    }

    else
    {
      switch(v56)
      {
        case 0:
          v57 = "path";
          goto LABEL_82;
        case 1:
          v57 = "resolver";
          goto LABEL_82;
        case 2:
          v57 = nw_endpoint_flow_mode_string(v54[33]);
LABEL_82:

          v58 = v55;
          os_unfair_lock_lock(v8 + 28);
          v59 = *(v8 + 8);
          os_unfair_lock_unlock(v8 + 28);

          *buf = 136447746;
          v128 = "[NWConcrete_nw_endpoint_fallback updatePathWithHandler:]";
          v129 = 2082;
          v130 = v49;
          v131 = 2082;
          v132 = log;
          v133 = 2082;
          v134 = v115;
          v135 = 2082;
          v136 = v53;
          v137 = 2082;
          v138 = v57;
          v139 = 2114;
          v140 = v59;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback advisory removed", buf, 0x48u);

          goto LABEL_83;
      }
    }

    v57 = "unknown-mode";
    goto LABEL_82;
  }

LABEL_103:
}

- (void)cancelWithHandler:(id)handler forced:(BOOL)forced
{
  forcedCopy = forced;
  v48 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!handlerCopy)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v21, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v22, v33, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v38 != 1)
      {
        v22 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v22, v37, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_45;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v36)
        {
          *buf = 136446210;
          v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
          _os_log_impl(&dword_181A37000, v22, v35, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_45;
      }

      if (v36)
      {
        *buf = 136446466;
        v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
        v42 = 2082;
        v43 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v35, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_46:
    if (!v21)
    {
      goto LABEL_48;
    }

LABEL_47:
    free(v21);
    goto LABEL_48;
  }

  v8 = handlerCopy;
  v9 = v8[29];

  if (v9 == 4)
  {
    fallback_timer = self->fallback_timer;
    if (fallback_timer)
    {
      nw_queue_cancel_source(fallback_timer);
      self->fallback_timer = 0;
    }

    post_transport_timer = self->post_transport_timer;
    if (post_transport_timer)
    {
      nw_queue_cancel_source(post_transport_timer);
      self->post_transport_timer = 0;
    }

    usage_cap_timer = self->usage_cap_timer;
    if (usage_cap_timer)
    {
      nw_queue_cancel_source(usage_cap_timer);
      self->usage_cap_timer = 0;
    }

    primary_child = self->primary_child;
    if (primary_child)
    {
      nw_endpoint_handler_cancel(primary_child, forcedCopy, 0);
    }

    fallback_child = self->fallback_child;
    if (fallback_child)
    {
      nw_endpoint_handler_cancel(fallback_child, forcedCopy, 0);
    }

    v15 = self->primary_child;
    self->primary_child = 0;

    v16 = self->fallback_child;
    self->fallback_child = 0;

    primary_interface = self->primary_interface;
    self->primary_interface = 0;

    fallback_interface = self->fallback_interface;
    self->fallback_interface = 0;

    goto LABEL_48;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  if (v9 > 5)
  {
    v20 = "unknown-mode";
  }

  else
  {
    v20 = off_1E6A31018[v9];
  }

  *buf = 136446722;
  v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
  v42 = 2082;
  v43 = v20;
  v44 = 2082;
  v45 = "fallback";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v21, &type, &v38))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      if (v9 > 5)
      {
        v24 = "unknown-mode";
      }

      else
      {
        v24 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
      v42 = 2082;
      v43 = v24;
      v44 = 2082;
      v45 = "fallback";
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_45:

    goto LABEL_46;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v29 = type;
    if (os_log_type_enabled(v22, type))
    {
      if (v9 > 5)
      {
        v30 = "unknown-mode";
      }

      else
      {
        v30 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
      v42 = 2082;
      v43 = v30;
      v44 = 2082;
      v45 = "fallback";
      _os_log_impl(&dword_181A37000, v22, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_45;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v22, type);
  if (!v25)
  {
    if (v27)
    {
      if (v9 > 5)
      {
        v31 = "unknown-mode";
      }

      else
      {
        v31 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
      v42 = 2082;
      v43 = v31;
      v44 = 2082;
      v45 = "fallback";
      _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_45;
  }

  if (v27)
  {
    if (v9 > 5)
    {
      v28 = "unknown-mode";
    }

    else
    {
      v28 = off_1E6A31018[v9];
    }

    *buf = 136446978;
    v41 = "[NWConcrete_nw_endpoint_fallback cancelWithHandler:forced:]";
    v42 = 2082;
    v43 = v28;
    v44 = 2082;
    v45 = "fallback";
    v46 = 2082;
    v47 = v25;
    _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v25);
  if (v21)
  {
    goto LABEL_47;
  }

LABEL_48:
}

- (void)startWithHandler:(id)handler
{
  v294 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (!handlerCopy)
  {
    v206 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
    v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s called with null handler", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v272[0]) = 0;
    if (__nwlog_fault(v207, type, v272))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v208 = __nwlog_obj();
        v209 = type[0];
        if (os_log_type_enabled(v208, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (LOBYTE(v272[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v208 = __nwlog_obj();
        v211 = type[0];
        v212 = os_log_type_enabled(v208, type[0]);
        if (backtrace_string)
        {
          if (v212)
          {
            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v208, v211, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_296;
        }

        if (v212)
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          _os_log_impl(&dword_181A37000, v208, v211, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v208 = __nwlog_obj();
        v213 = type[0];
        if (os_log_type_enabled(v208, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          _os_log_impl(&dword_181A37000, v208, v213, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_296:
    if (v207)
    {
      free(v207);
    }

    v5 = 0;
    goto LABEL_244;
  }

  v6 = handlerCopy;
  v7 = v6[29];

  if (v7 != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = v5;
    if (v7 > 5)
    {
      v22 = "unknown-mode";
    }

    else
    {
      v22 = off_1E6A31018[v7];
    }

    *buf = 136446722;
    *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
    *&buf[12] = 2082;
    *&buf[14] = v22;
    *&buf[22] = 2082;
    *&buf[24] = "fallback";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v272[0]) = 0;
    if (__nwlog_fault(v23, type, v272))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          if (v7 > 5)
          {
            v26 = "unknown-mode";
          }

          else
          {
            v26 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v26;
          *&buf[22] = 2082;
          *&buf[24] = "fallback";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (LOBYTE(v272[0]) == 1)
      {
        v27 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v28 = type[0];
        v29 = os_log_type_enabled(v24, type[0]);
        if (v27)
        {
          if (v29)
          {
            if (v7 > 5)
            {
              v30 = "unknown-mode";
            }

            else
            {
              v30 = off_1E6A31018[v7];
            }

            *buf = 136446978;
            *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
            *&buf[12] = 2082;
            *&buf[14] = v30;
            *&buf[22] = 2082;
            *&buf[24] = "fallback";
            *&buf[32] = 2082;
            *&buf[34] = v27;
            _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v27);
          if (!v23)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        if (v29)
        {
          if (v7 > 5)
          {
            v43 = "unknown-mode";
          }

          else
          {
            v43 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v43;
          *&buf[22] = 2082;
          *&buf[24] = "fallback";
          _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v31 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          if (v7 > 5)
          {
            v32 = "unknown-mode";
          }

          else
          {
            v32 = off_1E6A31018[v7];
          }

          *buf = 136446722;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          *&buf[22] = 2082;
          *&buf[24] = "fallback";
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v23)
    {
LABEL_106:
      v5 = v21;
      goto LABEL_244;
    }

LABEL_105:
    free(v23);
    goto LABEL_106;
  }

  v8 = v6;
  v9 = v8[30];

  if (v9 == 1)
  {
    v259 = v5;
    v260 = v8;
    v10 = v8;
    v11 = *(v10 + 284);
    v267 = v10;

    if ((v11 & 0x40) != 0)
    {
      goto LABEL_62;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_61:

LABEL_62:
      primary_child = self->primary_child;
      self->primary_child = 0;

      fallback_child = self->fallback_child;
      self->fallback_child = 0;

      primary_interface = self->primary_interface;
      self->primary_interface = 0;

      fallback_interface = self->fallback_interface;
      self->fallback_interface = 0;

      v261 = nw_endpoint_handler_copy_endpoint(v267);
      v50 = v267;
      os_unfair_lock_lock(v50 + 28);
      v269 = *(v50 + 8);
      os_unfair_lock_unlock(v50 + 28);

      if (nw_path_fallback_is_weak(v269))
      {
        v51 = 2;
      }

      else
      {
        v51 = 0;
      }

      *(self + 108) = *(self + 108) & 0xFD | v51;
      if (nw_path_fallback_should_not_use_timer(v269))
      {
        v52 = 4;
      }

      else
      {
        v52 = 0;
      }

      *(self + 108) = *(self + 108) & 0xFB | v52;
      if (nw_path_fallback_is_forced(v269))
      {
        v53 = 8;
      }

      else
      {
        v53 = 0;
      }

      *(self + 108) = *(self + 108) & 0xF7 | v53;
      v54 = self + 108;
      if (nw_path_fallback_is_preferred(v269))
      {
        v55 = 16;
      }

      else
      {
        v55 = 0;
      }

      *v54 = *(self + 108) & 0xEF | v55;
      v56 = v50;
      v262 = v56[4];
      v266 = v56;

      if ((*v54 & 2) != 0)
      {
        goto LABEL_115;
      }

      if (v262)
      {
        traffic_class = _nw_parameters_get_traffic_class(v262);
        if (traffic_class == 200 || traffic_class == 100)
        {
          *(self + 108) |= 2u;
          v58 = v56;
          v59 = (v267[71] & 0x20) == 0;

          if (v59)
          {
            v60 = v58;
            v61 = (v267[71] & 0x40) == 0;

            if (!v61)
            {
              goto LABEL_115;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v62 = gconnectionLogObj;
            if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              goto LABEL_114;
            }

            v63 = v60;

            v64 = v63;
            v65 = (v267[71] & 1) == 0;

            if (v65)
            {
              v66 = "";
            }

            else
            {
              v66 = "dry-run ";
            }

            v67 = nw_endpoint_handler_copy_endpoint(v64);
            v68 = v67;
            if (v67)
            {
              logging_description = _nw_endpoint_get_logging_description(v67);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v70 = v64;
            v71 = v70;
            v72 = v260[30];
            if (v72 > 5)
            {
              v73 = "unknown-state";
            }

            else
            {
              v73 = off_1E6A31048[v72];
            }

            v263 = v73;

            v74 = v71;
            v75 = v74;
            v76 = v6[29];
            if (v76 > 2)
            {
              switch(v76)
              {
                case 3:
                  v77 = "proxy";
                  break;
                case 4:
                  v77 = "fallback";
                  break;
                case 5:
                  v77 = "transform";
                  break;
                default:
LABEL_109:
                  v77 = "unknown-mode";
                  break;
              }
            }

            else
            {
              if (v76)
              {
                if (v76 == 1)
                {
                  v77 = "resolver";
                  goto LABEL_112;
                }

                if (v76 == 2)
                {
                  v255 = nw_endpoint_flow_mode_string(v74[33]);
LABEL_113:

                  v78 = v63;
                  v79 = v62;
                  v80 = v66;
                  v81 = logging_description;
                  v82 = v75;
                  os_unfair_lock_lock(v50 + 28);
                  v83 = *(v50 + 8);
                  os_unfair_lock_unlock(v50 + 28);

                  v84 = v80;
                  v62 = v79;
                  *buf = 136447746;
                  *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
                  *&buf[12] = 2082;
                  *&buf[14] = v78 + 23;
                  *&buf[22] = 2082;
                  *&buf[24] = v84;
                  *&buf[32] = 2082;
                  *&buf[34] = v81;
                  *&buf[42] = 2082;
                  *&buf[44] = v263;
                  *&buf[52] = 2082;
                  *&buf[54] = v255;
                  *&buf[62] = 2114;
                  *v292 = v83;
                  _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Overriding strong fallback to weak fallback for background traffic", buf, 0x48u);

LABEL_114:
                  goto LABEL_115;
                }

                goto LABEL_109;
              }

              v77 = "path";
            }

LABEL_112:
            v255 = v77;
            goto LABEL_113;
          }

          if ((nw_endpoint_handler_get_logging_disabled(v58) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v62 = gconnectionLogObj;
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v58);
              v265 = nw_endpoint_handler_dry_run_string(v58);
              v225 = nw_endpoint_handler_copy_endpoint(v58);
              v226 = nw_endpoint_get_logging_description(v225);
              v227 = nw_endpoint_handler_state_string(v58);
              v228 = nw_endpoint_handler_mode_string(v58);
              v229 = nw_endpoint_handler_copy_current_path(v58);
              *buf = 136447746;
              *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
              *&buf[12] = 2082;
              *&buf[14] = id_string;
              *&buf[22] = 2082;
              *&buf[24] = v265;
              *&buf[32] = 2082;
              *&buf[34] = v226;
              *&buf[42] = 2082;
              *&buf[44] = v227;
              *&buf[52] = 2082;
              *&buf[54] = v228;
              *&buf[62] = 2114;
              *v292 = v229;
              _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Overriding strong fallback to weak fallback for background traffic", buf, 0x48u);
            }

            goto LABEL_114;
          }
        }

LABEL_115:
        v85 = _nw_parameters_copy();
        v264 = _nw_parameters_copy();
        v86 = nw_path_copy_direct_interface(v269);
        v87 = self->primary_interface;
        self->primary_interface = v86;

        v88 = v269;
        v89 = v264;
        fallback_interface_index = nw_path_get_fallback_interface_index(v269);
        if (fallback_interface_index)
        {
          if (nw_context_copy_implicit_context::onceToken[0] != -1)
          {
            dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
          }

          v91 = nw_context_copy_implicit_context::implicit_context;
          v92 = nw_path_copy_interface_with_generation(v91, fallback_interface_index, 0);

          v93 = self->fallback_interface;
          self->fallback_interface = v92;

          v94 = self->fallback_interface;
          if (v94)
          {
            v88 = v269;
            v89 = v264;
            v95 = 8 * (_nw_interface_get_type(v94) == 2);
          }

          else
          {
            v95 = 0;
            v88 = v269;
            v89 = v264;
          }

          v96 = *(self + 109) & 0xF7 | v95;
          *(self + 109) = v96;
          if ((v96 & 8) == 0)
          {
            goto LABEL_125;
          }
        }

        else if ((*(self + 109) & 8) == 0)
        {
          goto LABEL_125;
        }

        if ((*(self + 108) & 0x18) == 0)
        {
          *buf = 0;
          *&buf[8] = 0;
          nw_parameters_get_e_proc_uuid(v262);
          nw_parameters_get_pid(v262);
          nw_parameters_get_effective_bundle_id(v262);
          self->fallback_disposition = _symptoms_daemon_fallback_initial_disposition();
LABEL_126:
          if ((nw_path_update_parameters_for_fallback(v88, v89) & 1) == 0)
          {
            nw_parameters_set_required_interface_type(v89, nw_interface_type_cellular);
            nw_parameters_set_only_primary_requires_type(v89, 1);
            *(self + 108) |= 0x22u;
          }

          nw_parameters_set_fallback_applied(v85);
          nw_parameters_set_fallback_applied(v89);
          nw_parameters_set_is_fallback(v89);
          if ((*(self + 108) & 0x10) != 0)
          {
            v97 = 4;
          }

          else if ((*(self + 108) & 4) != 0)
          {
            v97 = 1;
          }

          else if ((*(self + 108) & 2) != 0)
          {
            v97 = 2;
          }

          else
          {
            v97 = 3;
          }

          nw_parameters_set_fallback_mode(v89, v97);
          v272[0] = 0;
          v272[1] = 0;
          if (nw_path_get_client_id(v88, v272))
          {
            nw_parameters_set_parent_id_internal(v85, v272);
            nw_parameters_set_parent_id_internal(v89, v272);
          }

          if ((*(self + 108) & 8) == 0)
          {
            if ((*(self + 108) & 0x10) != 0)
            {
              inner = nw_endpoint_handler_create_inner(v261, v89, nw_endpoint_fallback_receive_report, v266, v266, 0, 0, 0);
              v89 = v85;
            }

            else
            {
              inner = nw_endpoint_handler_create_inner(v261, v85, nw_endpoint_fallback_receive_report, v266, v266, 0, 0, 0);
            }

            v110 = self->primary_child;
            self->primary_child = inner;

            v111 = nw_endpoint_handler_create_inner(v261, v89, nw_endpoint_fallback_receive_report, v266, v266, 0, 0, 0);
            v112 = self->fallback_child;
            self->fallback_child = v111;

            v251 = v266;
            v113 = nw_endpoint_handler_copy_fallback(v251);
            v114 = *(v113 + 9);
            if (v114)
            {
              nw_queue_cancel_source(v114);
              *(v113 + 9) = 0;
            }

            if ((*(v113 + 108) & 4) != 0)
            {
              goto LABEL_242;
            }

            v253 = v113;
            v257 = v251;
            v115 = nw_endpoint_handler_copy_fallback(v257);
            v250 = v115;
            if ((*(v115 + 108) & 0x10) != 0)
            {
              v116 = &nw_fallback_delay_max_limit_ms;
              v117 = &nw_setting_tcpconn_fallback_delay_cap_ms;
            }

            else
            {
              if ((*(v115 + 108) & 2) != 0)
              {
                if ((*(v115 + 108) & 0x20) != 0)
                {
                  int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_weak_fallback_delay, 200);
                  v182 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_delay_cap_ms, 500);
                  v119 = v182;
                  if (int64_with_default <= 0x7FFFFFFFFFFFFFFELL && 2 * int64_with_default < v182)
                  {
                    v119 = 2 * int64_with_default;
                  }
                }

                else
                {
                  v118 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_weak_fallback_delay, 0);
                  if ((v118 - 0x8637BD05AF6) >= 0xFFFFF79C842FA50BLL)
                  {
                    goto LABEL_160;
                  }

                  v133 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_wifi_advantage_per_rtt_ms, 175);
                  if (v133 <= 0)
                  {
                    v134 = 175;
                  }

                  else
                  {
                    v134 = v133;
                  }

                  v135 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_delay_cap_ms, 500);
                  *&v292[16] = 0u;
                  v293 = 0u;
                  if ((v135 - 1) >= 0x8637BD05AF5)
                  {
                    v136 = 500;
                  }

                  else
                  {
                    v136 = v135;
                  }

                  *v292 = 0uLL;
                  memset(buf, 0, sizeof(buf));
                  if (nw_endpoint_handler_fillout_route_stats(v257, buf))
                  {
                    v137 = (DWORD2(v293) + 2 * HIDWORD(v293)) >> 5;
                  }

                  else
                  {
                    v137 = 0;
                  }

                  v249 = v137;
                  if (nw_endpoint_handler_fillout_route_stats(*(v250 + 5), buf) && (v186 = DWORD2(v293) + 2 * HIDWORD(v293), v186 > 0x1F))
                  {
                    v195 = v186 >> 5;
                  }

                  else if (nw_endpoint_handler_get_logging_disabled(v257))
                  {
                    v195 = 200;
                  }

                  else
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v187 = gconnectionLogObj;
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                    {
                      v188 = nw_endpoint_handler_get_id_string(v257);
                      v189 = nw_endpoint_handler_dry_run_string(v257);
                      v246 = v85;
                      v190 = v188;
                      v244 = nw_endpoint_handler_copy_endpoint(v257);
                      v191 = nw_endpoint_get_logging_description(v244);
                      v192 = nw_endpoint_handler_state_string(v257);
                      v193 = nw_endpoint_handler_mode_string(v257);
                      v194 = nw_endpoint_handler_copy_current_path(v257);
                      *type = 136448002;
                      v274 = "nw_endpoint_fallback_get_timeout_nanos";
                      v275 = 2082;
                      v276 = v190;
                      v277 = 2082;
                      v278 = v189;
                      v279 = 2082;
                      v280 = v191;
                      v281 = 2082;
                      v282 = v192;
                      v283 = 2082;
                      v284 = v193;
                      v285 = 2114;
                      v286 = v194;
                      v287 = 2048;
                      v288 = 200;
                      _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No RTT information for fallback interface, will use a default value %llums", type, 0x52u);

                      v85 = v246;
                    }

                    v195 = 200;
                    v137 = v249;
                  }

                  v196 = v137 - v195;
                  if (v137 - v195 <= v134)
                  {
                    v196 = v134;
                  }

                  if (v137 <= v195)
                  {
                    v196 = v134;
                  }

                  v197 = 2 * v196;
                  if (2 * v196 >= v136)
                  {
                    v197 = v136;
                  }

                  if (v196 >= 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v119 = v136;
                  }

                  else
                  {
                    v119 = v197;
                  }

                  if ((nw_endpoint_handler_get_logging_disabled(v257) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v198 = gconnectionLogObj;
                    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
                    {
                      v245 = v119;
                      v199 = nw_endpoint_handler_get_id_string(v257);
                      v200 = nw_endpoint_handler_dry_run_string(v257);
                      v247 = v85;
                      v201 = nw_endpoint_handler_copy_endpoint(v257);
                      v202 = nw_endpoint_get_logging_description(v201);
                      v203 = nw_endpoint_handler_state_string(v257);
                      v204 = nw_endpoint_handler_mode_string(v257);
                      v205 = nw_endpoint_handler_copy_current_path(v257);
                      *type = 136448258;
                      v274 = "nw_endpoint_fallback_get_timeout_nanos";
                      v275 = 2082;
                      v276 = v199;
                      v277 = 2082;
                      v278 = v200;
                      v279 = 2082;
                      v280 = v202;
                      v281 = 2082;
                      v282 = v203;
                      v283 = 2082;
                      v284 = v204;
                      v285 = 2114;
                      v286 = v205;
                      v287 = 2048;
                      v288 = v249;
                      v289 = 2048;
                      v290 = v195;
                      _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Primary RTT: %llums, fallback RTT: %llums", type, 0x5Cu);

                      v119 = v245;
                      v85 = v247;
                    }
                  }
                }

LABEL_161:
                if ((nw_endpoint_handler_get_logging_disabled(v257) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v120 = gconnectionLogObj;
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
                  {
                    v121 = nw_endpoint_handler_get_id_string(v257);
                    v122 = nw_endpoint_handler_dry_run_string(v257);
                    v123 = nw_endpoint_handler_copy_endpoint(v257);
                    v124 = v123;
                    if (v123)
                    {
                      v248 = _nw_endpoint_get_logging_description(v123);
                    }

                    else
                    {
                      v248 = "<NULL>";
                    }

                    v138 = v85;
                    v139 = nw_endpoint_handler_state_string(v257);
                    v140 = v119;
                    v141 = nw_endpoint_handler_mode_string(v257);
                    v142 = nw_endpoint_handler_copy_current_path(v257);
                    v143 = v142;
                    v144 = *(v250 + 108);
                    v145 = ", weak";
                    *buf = 136448258;
                    *&buf[4] = "nw_endpoint_fallback_get_timeout_nanos";
                    *&buf[12] = 2082;
                    if ((v144 & 2) == 0)
                    {
                      v145 = ", strong";
                    }

                    *&buf[14] = v121;
                    *&buf[22] = 2082;
                    *&buf[24] = v122;
                    *&buf[32] = 2082;
                    *&buf[34] = v248;
                    *&buf[42] = 2082;
                    *&buf[44] = v139;
                    v85 = v138;
                    *&buf[52] = 2082;
                    *&buf[54] = v141;
                    v119 = v140;
                    *&buf[62] = 2114;
                    *v292 = v142;
                    *&v292[8] = 2048;
                    *&v292[10] = v140;
                    *&v292[18] = 2082;
                    *&v292[20] = v145;
                    _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting %llums fallback timer%{public}s", buf, 0x5Cu);
                  }
                }

                v253[3] = 1000000 * v119;
                minimize_logging = nw_endpoint_handler_get_minimize_logging(v257);
                logging_disabled = nw_endpoint_handler_get_logging_disabled(v257);
                if (minimize_logging)
                {
                  if (logging_disabled)
                  {
LABEL_205:
                    v159 = nw_endpoint_handler_copy_context(v257);
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = ___ZL32nw_endpoint_fallback_start_timerP30NWConcrete_nw_endpoint_handler_block_invoke;
                    *&buf[24] = &unk_1E6A3D868;
                    *&buf[32] = v257;
                    v253[9] = nw_queue_context_create_source(v159, 2, 3, 0, buf, 0);

                    if (v253[9])
                    {
                      v160 = mach_continuous_time();
                      if (v160 <= 1)
                      {
                        v161 = 1;
                      }

                      else
                      {
                        v161 = v160;
                      }

                      v253[12] = v161;
                      v162 = v253[9];
                      v163 = dispatch_time(0x8000000000000000, v253[3]);
                      nw_queue_set_timer_values(v162, v163, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                      nw_queue_activate_source(v253[9]);
LABEL_241:

                      v113 = v253;
LABEL_242:

                      goto LABEL_243;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v164 = gLogObj;
                    *type = 136446210;
                    v274 = "nw_endpoint_fallback_start_timer";
                    LODWORD(v243) = 12;
                    v165 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v164, 16, "%{public}s nw_queue_context_create_source(timer) failed", type, v243);

                    v271 = OS_LOG_TYPE_ERROR;
                    v270 = 0;
                    if (__nwlog_fault(v165, &v271, &v270))
                    {
                      if (v271 == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v166 = gLogObj;
                        v167 = v271;
                        if (os_log_type_enabled(v166, v271))
                        {
                          *type = 136446210;
                          v274 = "nw_endpoint_fallback_start_timer";
                          _os_log_impl(&dword_181A37000, v166, v167, "%{public}s nw_queue_context_create_source(timer) failed", type, 0xCu);
                        }
                      }

                      else if (v270 == 1)
                      {
                        v168 = __nw_create_backtrace_string();
                        if (v168)
                        {
                          v169 = v168;
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v170 = gLogObj;
                          v171 = v271;
                          if (os_log_type_enabled(v170, v271))
                          {
                            *type = 136446466;
                            v274 = "nw_endpoint_fallback_start_timer";
                            v275 = 2082;
                            v276 = v169;
                            _os_log_impl(&dword_181A37000, v170, v171, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", type, 0x16u);
                          }

                          free(v169);
                          goto LABEL_239;
                        }

                        v166 = __nwlog_obj();
                        v184 = v271;
                        if (os_log_type_enabled(v166, v271))
                        {
                          *type = 136446210;
                          v274 = "nw_endpoint_fallback_start_timer";
                          _os_log_impl(&dword_181A37000, v166, v184, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", type, 0xCu);
                        }
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v166 = gLogObj;
                        v183 = v271;
                        if (os_log_type_enabled(v166, v271))
                        {
                          *type = 136446210;
                          v274 = "nw_endpoint_fallback_start_timer";
                          _os_log_impl(&dword_181A37000, v166, v183, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", type, 0xCu);
                        }
                      }
                    }

LABEL_239:
                    if (v165)
                    {
                      free(v165);
                    }

                    goto LABEL_241;
                  }

                  v230 = v85;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v148 = gconnectionLogObj;
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
                  {
                    v231 = nw_endpoint_handler_get_id_string(v257);
                    v232 = nw_endpoint_handler_dry_run_string(v257);
                    v233 = nw_endpoint_handler_copy_endpoint(v257);
                    v234 = nw_endpoint_get_logging_description(v233);
                    v235 = nw_endpoint_handler_state_string(v257);
                    v236 = nw_endpoint_handler_mode_string(v257);
                    v237 = nw_endpoint_handler_copy_current_path(v257);
                    v238 = v253[3] / 0xF4240uLL;
                    *buf = 136448002;
                    *&buf[4] = "nw_endpoint_fallback_start_timer";
                    *&buf[12] = 2082;
                    *&buf[14] = v231;
                    *&buf[22] = 2082;
                    *&buf[24] = v232;
                    *&buf[32] = 2082;
                    *&buf[34] = v234;
                    *&buf[42] = 2082;
                    *&buf[44] = v235;
                    *&buf[52] = 2082;
                    *&buf[54] = v236;
                    *&buf[62] = 2114;
                    *v292 = v237;
                    *&v292[8] = 2048;
                    *&v292[10] = v238;
                    _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting fallback endpoint in %llums", buf, 0x52u);

                    v85 = v230;
                  }
                }

                else
                {
                  if (logging_disabled)
                  {
                    goto LABEL_205;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v148 = gconnectionLogObj;
                  if (os_log_type_enabled(v148, OS_LOG_TYPE_INFO))
                  {
                    v149 = nw_endpoint_handler_get_id_string(v257);
                    v150 = nw_endpoint_handler_dry_run_string(v257);
                    v151 = nw_endpoint_handler_copy_endpoint(v257);
                    v152 = v151;
                    if (v151)
                    {
                      v153 = _nw_endpoint_get_logging_description(v151);
                    }

                    else
                    {
                      v153 = "<NULL>";
                    }

                    v154 = v85;
                    v155 = nw_endpoint_handler_state_string(v257);
                    v156 = nw_endpoint_handler_mode_string(v257);
                    v157 = nw_endpoint_handler_copy_current_path(v257);
                    v158 = v253[3] / 0xF4240uLL;
                    *buf = 136448002;
                    *&buf[4] = "nw_endpoint_fallback_start_timer";
                    *&buf[12] = 2082;
                    *&buf[14] = v149;
                    *&buf[22] = 2082;
                    *&buf[24] = v150;
                    *&buf[32] = 2082;
                    *&buf[34] = v153;
                    *&buf[42] = 2082;
                    *&buf[44] = v155;
                    v85 = v154;
                    *&buf[52] = 2082;
                    *&buf[54] = v156;
                    *&buf[62] = 2114;
                    *v292 = v157;
                    *&v292[8] = 2048;
                    *&v292[10] = v158;
                    _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting fallback endpoint in %llums", buf, 0x52u);
                  }
                }

                goto LABEL_205;
              }

              v116 = &nw_default_strong_fallback_delay_ms;
              v117 = &nw_setting_tcpconn_strong_fallback_delay;
            }

            v118 = networkd_settings_get_int64_with_default(*v117, *v116);
LABEL_160:
            v119 = v118;
            goto LABEL_161;
          }

          v99 = v266;
          v100 = (v267[71] & 0x20) == 0;

          if (!v100)
          {
            if (nw_endpoint_handler_get_logging_disabled(v99))
            {
              goto LABEL_228;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v103 = gconnectionLogObj;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              v218 = nw_endpoint_handler_get_id_string(v99);
              v258 = nw_endpoint_handler_dry_run_string(v99);
              v219 = nw_endpoint_handler_copy_endpoint(v99);
              v220 = nw_endpoint_get_logging_description(v219);
              v221 = nw_endpoint_handler_state_string(v99);
              v222 = nw_endpoint_handler_mode_string(v99);
              v223 = nw_endpoint_handler_copy_current_path(v99);
              *buf = 136447746;
              *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
              *&buf[12] = 2082;
              *&buf[14] = v218;
              *&buf[22] = 2082;
              *&buf[24] = v258;
              *&buf[32] = 2082;
              *&buf[34] = v220;
              *&buf[42] = 2082;
              *&buf[44] = v221;
              *&buf[52] = 2082;
              *&buf[54] = v222;
              *&buf[62] = 2114;
              *v292 = v223;
              _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback advisory is forced", buf, 0x48u);
            }

            goto LABEL_227;
          }

          v101 = v99;
          v102 = (v267[71] & 0x40) == 0;

          if (!v102)
          {
LABEL_228:
            v179 = nw_endpoint_handler_create_inner(v261, v264, nw_endpoint_fallback_receive_report, v99, v99, 0, 0, 0);
            v180 = self->primary_child;
            self->primary_child = v179;

LABEL_243:
            v185 = v266;
            v260[30] = 2;

            *(v185 + 20) = 65541;
            nw_endpoint_handler_report(v185, 0, v185 + 40, 0);
            nw_endpoint_handler_start(self->primary_child);

            v5 = v259;
            goto LABEL_244;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v103 = gconnectionLogObj;
          if (!os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
LABEL_227:

            goto LABEL_228;
          }

          v104 = v101;

          v105 = v104;
          v106 = (v267[71] & 1) == 0;

          if (v106)
          {
            v107 = "";
          }

          else
          {
            v107 = "dry-run ";
          }

          v108 = nw_endpoint_handler_copy_endpoint(v105);
          v109 = v108;
          if (v108)
          {
            v256 = _nw_endpoint_get_logging_description(v108);
          }

          else
          {
            v256 = "<NULL>";
          }

          v125 = v105;
          v126 = v125;
          v127 = v260[30];
          if (v127 > 5)
          {
            v128 = "unknown-state";
          }

          else
          {
            v128 = off_1E6A31048[v127];
          }

          v254 = v128;

          v129 = v126;
          v130 = v129;
          v131 = v6[29];
          if (v131 > 2)
          {
            switch(v131)
            {
              case 3:
                v132 = "proxy";
                break;
              case 4:
                v132 = "fallback";
                break;
              case 5:
                v132 = "transform";
                break;
              default:
LABEL_222:
                v132 = "unknown-mode";
                break;
            }
          }

          else
          {
            if (v131)
            {
              if (v131 == 1)
              {
                v132 = "resolver";
                goto LABEL_225;
              }

              if (v131 == 2)
              {
                v252 = nw_endpoint_flow_mode_string(v129[33]);
LABEL_226:

                v172 = v104;
                v173 = v103;
                v174 = v107;
                v175 = v85;
                v176 = v130;
                os_unfair_lock_lock(v50 + 28);
                v177 = *(v50 + 8);
                os_unfair_lock_unlock(v50 + 28);

                v85 = v175;
                v178 = v174;
                v103 = v173;
                *buf = 136447746;
                *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
                *&buf[12] = 2082;
                *&buf[14] = v172 + 23;
                *&buf[22] = 2082;
                *&buf[24] = v178;
                *&buf[32] = 2082;
                *&buf[34] = v256;
                *&buf[42] = 2082;
                *&buf[44] = v254;
                *&buf[52] = 2082;
                *&buf[54] = v252;
                *&buf[62] = 2114;
                *v292 = v177;
                _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback advisory is forced", buf, 0x48u);

                goto LABEL_227;
              }

              goto LABEL_222;
            }

            v132 = "path";
          }

LABEL_225:
          v252 = v132;
          goto LABEL_226;
        }

LABEL_125:
        self->fallback_disposition = 1;
        goto LABEL_126;
      }

      v214 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_parameters_traffic_class_is_background";
      v215 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v214, 16, "%{public}s called with null parameters", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v272[0]) = 0;
      if (__nwlog_fault(v215, type, v272))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v216 = __nwlog_obj();
          v217 = type[0];
          if (os_log_type_enabled(v216, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_traffic_class_is_background";
            _os_log_impl(&dword_181A37000, v216, v217, "%{public}s called with null parameters", buf, 0xCu);
          }
        }

        else if (LOBYTE(v272[0]) == 1)
        {
          v239 = __nw_create_backtrace_string();
          v216 = __nwlog_obj();
          v240 = type[0];
          v241 = os_log_type_enabled(v216, type[0]);
          if (v239)
          {
            if (v241)
            {
              *buf = 136446466;
              *&buf[4] = "nw_parameters_traffic_class_is_background";
              *&buf[12] = 2082;
              *&buf[14] = v239;
              _os_log_impl(&dword_181A37000, v216, v240, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v239);
            goto LABEL_321;
          }

          if (v241)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_traffic_class_is_background";
            _os_log_impl(&dword_181A37000, v216, v240, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v216 = __nwlog_obj();
          v242 = type[0];
          if (os_log_type_enabled(v216, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_traffic_class_is_background";
            _os_log_impl(&dword_181A37000, v216, v242, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_321:
      if (v215)
      {
        free(v215);
      }

      goto LABEL_115;
    }

    v13 = v267;

    v14 = v13;
    v15 = *(v267 + 284);

    if (v15)
    {
      v16 = "dry-run ";
    }

    else
    {
      v16 = "";
    }

    v17 = nw_endpoint_handler_copy_endpoint(v14);
    v18 = v17;
    if (v17)
    {
      v19 = _nw_endpoint_get_logging_description(v17);
    }

    else
    {
      v19 = "<NULL>";
    }

    v268 = v6;
    v33 = v13 + 184;

    v34 = v14;
    v35 = v34;
    v36 = v260[30];
    if (v36 > 5)
    {
      v37 = "unknown-state";
    }

    else
    {
      v37 = off_1E6A31048[v36];
    }

    v38 = v35;
    v39 = v38;
    v40 = v268[29];
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = v16;
          v42 = "proxy";
          goto LABEL_60;
        case 4:
          v41 = v16;
          v42 = "fallback";
          goto LABEL_60;
        case 5:
          v41 = v16;
          v42 = "transform";
          goto LABEL_60;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v41 = v16;
          v42 = "path";
          goto LABEL_60;
        case 1:
          v41 = v16;
          v42 = "resolver";
          goto LABEL_60;
        case 2:
          v41 = v16;
          v42 = nw_endpoint_flow_mode_string(v38[33]);
LABEL_60:

          v44 = v39;
          os_unfair_lock_lock(v44 + 28);
          v45 = v44[8];
          os_unfair_lock_unlock(v44 + 28);

          *buf = 136447746;
          *&buf[4] = "[NWConcrete_nw_endpoint_fallback startWithHandler:]";
          *&buf[12] = 2082;
          *&buf[14] = v33;
          *&buf[22] = 2082;
          *&buf[24] = v41;
          *&buf[32] = 2082;
          *&buf[34] = v19;
          *&buf[42] = 2082;
          *&buf[44] = v37;
          *&buf[52] = 2082;
          *&buf[54] = v42;
          *&buf[62] = 2114;
          *v292 = v45;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          v6 = v268;
          goto LABEL_61;
      }
    }

    v41 = v16;
    v42 = "unknown-mode";
    goto LABEL_60;
  }

LABEL_244:
}

@end