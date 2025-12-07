@interface NWConcrete_nw_connection
- (NSString)description;
- (id)redactedDescription;
- (uint64_t)initWithEndpoint:(void *)endpoint parameters:(int)parameters identifier:;
- (void)dealloc;
@end

@implementation NWConcrete_nw_connection

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_internal_reference)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v19 = "[NWConcrete_nw_connection dealloc]";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s over-release of nw_connection_t! Object should not be internally retained and deallocating", buf, 12);

    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &v17, &v16))
    {
      goto LABEL_7;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = v17;
      if (os_log_type_enabled(v5, v17))
      {
        *buf = 136446210;
        v19 = "[NWConcrete_nw_connection dealloc]";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s over-release of nw_connection_t! Object should not be internally retained and deallocating", buf, 0xCu);
      }

LABEL_6:

LABEL_7:
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v16 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v13 = v17;
      if (os_log_type_enabled(v5, v17))
      {
        *buf = 136446210;
        v19 = "[NWConcrete_nw_connection dealloc]";
        _os_log_impl(&dword_181A37000, v5, v13, "%{public}s over-release of nw_connection_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_6;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v11 = v17;
    v12 = os_log_type_enabled(v5, v17);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v19 = "[NWConcrete_nw_connection dealloc]";
        _os_log_impl(&dword_181A37000, v5, v11, "%{public}s over-release of nw_connection_t! Object should not be internally retained and deallocating, no backtrace", buf, 0xCu);
      }

      goto LABEL_6;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWConcrete_nw_connection dealloc]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v11, "%{public}s over-release of nw_connection_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v4)
    {
LABEL_8:
      free(v4);
    }
  }

LABEL_9:
  if (!nw_parameters_get_logging_disabled(self->parameters))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__NWConcrete_nw_connection_dealloc__block_invoke;
    v15[3] = &unk_1E6A33B10;
    v15[4] = self;
    nw_connection_access_parameters_description_locked(self, v15);
  }

  timestamps = self->timestamps;
  if (timestamps)
  {
    free(timestamps);
    self->timestamps = 0;
  }

  stats_report = self->stats_report;
  if (stats_report)
  {
    free(stats_report);
    self->stats_report = 0;
  }

  parameters_description = self->parameters_description;
  if (parameters_description)
  {
    free(parameters_description);
    self->parameters_description = 0;
  }

  nw_connection_cancel_update_handler(self);
  v14.receiver = self;
  v14.super_class = NWConcrete_nw_connection;
  [(NWConcrete_nw_connection *)&v14 dealloc];
}

- (id)redactedDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = nw_connection_copy_description_level(self, 2);
  if (v2)
  {
    v3 = v2;
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v2, 0x8000100u, *MEMORY[0x1E695E488]);
    if (!v2)
    {
      free(v3);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      *buf = 136446466;
      v16 = "[NWConcrete_nw_connection redactedDescription]";
      v17 = 2082;
      v18 = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s", buf, 22);

      type = OS_LOG_TYPE_ERROR;
      v13 = 0;
      if (__nwlog_fault(v5, &type, &v13))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          v7 = type;
          if (os_log_type_enabled(v6, type))
          {
            *buf = 136446466;
            v16 = "[NWConcrete_nw_connection redactedDescription]";
            v17 = 2082;
            v18 = 0;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s", buf, 0x16u);
          }
        }

        else if (v13 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          v10 = type;
          v11 = os_log_type_enabled(v6, type);
          if (backtrace_string)
          {
            if (v11)
            {
              *buf = 136446722;
              v16 = "[NWConcrete_nw_connection redactedDescription]";
              v17 = 2082;
              v18 = 0;
              v19 = 2082;
              v20 = backtrace_string;
              _os_log_impl(&dword_181A37000, v6, v10, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            if (!v5)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }

          if (v11)
          {
            *buf = 136446466;
            v16 = "[NWConcrete_nw_connection redactedDescription]";
            v17 = 2082;
            v18 = 0;
            _os_log_impl(&dword_181A37000, v6, v10, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v6, type))
          {
            *buf = 136446466;
            v16 = "[NWConcrete_nw_connection redactedDescription]";
            v17 = 2082;
            v18 = 0;
            _os_log_impl(&dword_181A37000, v6, v12, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

      if (!v5)
      {
LABEL_10:
        v2 = 0;
        goto LABEL_11;
      }

LABEL_9:
      free(v5);
      goto LABEL_10;
    }
  }

LABEL_11:

  return v2;
}

- (NSString)description
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = nw_connection_copy_description(&self->super);
  if (v2)
  {
    v3 = v2;
    v2 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v2, 0x8000100u, *MEMORY[0x1E695E488]);
    if (!v2)
    {
      free(v3);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      *buf = 136446466;
      v16 = "[NWConcrete_nw_connection description]";
      v17 = 2082;
      v18 = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s", buf, 22);

      type = OS_LOG_TYPE_ERROR;
      v13 = 0;
      if (__nwlog_fault(v5, &type, &v13))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          v7 = type;
          if (os_log_type_enabled(v6, type))
          {
            *buf = 136446466;
            v16 = "[NWConcrete_nw_connection description]";
            v17 = 2082;
            v18 = 0;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s", buf, 0x16u);
          }
        }

        else if (v13 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          v10 = type;
          v11 = os_log_type_enabled(v6, type);
          if (backtrace_string)
          {
            if (v11)
            {
              *buf = 136446722;
              v16 = "[NWConcrete_nw_connection description]";
              v17 = 2082;
              v18 = 0;
              v19 = 2082;
              v20 = backtrace_string;
              _os_log_impl(&dword_181A37000, v6, v10, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            if (!v5)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }

          if (v11)
          {
            *buf = 136446466;
            v16 = "[NWConcrete_nw_connection description]";
            v17 = 2082;
            v18 = 0;
            _os_log_impl(&dword_181A37000, v6, v10, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s, no backtrace", buf, 0x16u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          v12 = type;
          if (os_log_type_enabled(v6, type))
          {
            *buf = 136446466;
            v16 = "[NWConcrete_nw_connection description]";
            v17 = 2082;
            v18 = 0;
            _os_log_impl(&dword_181A37000, v6, v12, "%{public}s CFStringCreateWithCStringNoCopy failed for %{public}s, backtrace limit exceeded", buf, 0x16u);
          }
        }
      }

      if (!v5)
      {
LABEL_10:
        v2 = 0;
        goto LABEL_11;
      }

LABEL_9:
      free(v5);
      goto LABEL_10;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)initWithEndpoint:(void *)endpoint parameters:(int)parameters identifier:
{
  v78 = *MEMORY[0x1E69E9840];
  v8 = a2;
  endpointCopy = endpoint;
  if (!self)
  {
    goto LABEL_61;
  }

  v68.receiver = self;
  v68.super_class = NWConcrete_nw_connection;
  v10 = objc_msgSendSuper2(&v68, sel_init);
  if (!v10)
  {
    v57 = __nwlog_obj();
    *__str = 136446210;
    *&__str[4] = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s [super init] failed", __str, 12);

    buf[0] = 16;
    uu[0] = 0;
    if (__nwlog_fault(v58, buf, uu))
    {
      if (buf[0] == 17)
      {
        v59 = __nwlog_obj();
        v60 = buf[0];
        if (os_log_type_enabled(v59, buf[0]))
        {
          *__str = 136446210;
          *&__str[4] = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s [super init] failed", __str, 0xCu);
        }
      }

      else if (uu[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v62 = buf[0];
        v63 = os_log_type_enabled(v59, buf[0]);
        if (backtrace_string)
        {
          if (v63)
          {
            *__str = 136446466;
            *&__str[4] = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
            *&__str[12] = 2082;
            *&__str[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v59, v62, "%{public}s [super init] failed, dumping backtrace:%{public}s", __str, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_97;
        }

        if (v63)
        {
          *__str = 136446210;
          *&__str[4] = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          _os_log_impl(&dword_181A37000, v59, v62, "%{public}s [super init] failed, no backtrace", __str, 0xCu);
        }
      }

      else
      {
        v59 = __nwlog_obj();
        v64 = buf[0];
        if (os_log_type_enabled(v59, buf[0]))
        {
          *__str = 136446210;
          *&__str[4] = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          _os_log_impl(&dword_181A37000, v59, v64, "%{public}s [super init] failed, backtrace limit exceeded", __str, 0xCu);
        }
      }
    }

LABEL_97:
    if (v58)
    {
      free(v58);
    }

    self = 0;
    goto LABEL_61;
  }

  v11 = v10;
  *(v11 + 160) = 16;
  v12 = malloc_type_calloc(0x10uLL, 0x10uLL, 0x9CB388EAuLL);
  if (v12)
  {
    goto LABEL_9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *__str = 136446722;
  *&__str[4] = "nw_connection_initialize_timestamps";
  *&__str[12] = 2048;
  if (v14)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  *&__str[14] = 16;
  *&__str[22] = 2048;
  *&__str[24] = 16;
  v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s strict_calloc(%zu, %zu) failed", __str, 32);

  result = __nwlog_should_abort(v16);
  if ((result & 1) == 0)
  {
    free(v16);
    v12 = 0;
LABEL_9:
    v11[39] = v12;

    objc_storeStrong(v11 + 2, endpoint);
    if (nw_endpoint_get_type(v8) == nw_endpoint_type_url)
    {
      v18 = nw_endpoint_copy_host_port_endpoint_for_url(v8);
      v19 = v11[1];
      v11[1] = v18;

      nw_parameters_set_url_endpoint(v11[2], v8);
    }

    else
    {
      objc_storeStrong(v11 + 1, a2);
    }

    if ((nw_parameters_get_sensitive_redacted(v11[2]) & 1) == 0)
    {
      nw_endpoint_set_do_not_redact(v11[1]);
    }

    *(v11 + 112) = parameters;
    if (!parameters)
    {
      *(v11 + 112) = nw_endpoint_handler_get_next_top_id();
    }

    v20 = nw_parameters_copy_context(v11[2]);
    v21 = v11[3];
    v11[3] = v20;

    if (nw_context_is_inline(v11[3]))
    {
      v22 = 0;
    }

    else
    {
      v22 = nw_context_copy_workloop(v11[3]);
    }

    v23 = v11[5];
    v11[5] = v22;

    memset(__str, 0, 39);
    snprintf(__str, 0x27uLL, "com.apple.network.connection-%u", *(v11 + 112));
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create_with_target_V2(__str, v24, v11[5]);
    v26 = v11[4];
    v11[4] = v25;

    uuid_generate_random(v11 + 452);
    nw_parameters_get_pid(v11[2]);
    nw_parameters_get_effective_bundle_id(v11[2]);
    if (_symptoms_is_daemon_fallback_blacklisted())
    {
      nw_parameters_set_no_cellular_fallback(v11[2]);
    }

    v27 = v11;
    if (_os_feature_enabled_impl())
    {
      v28 = nw_parameters_copy_url_endpoint(v11[2]);
      v29 = v28;
      if (v28)
      {
        v30 = v28;
        hostname = _nw_endpoint_get_hostname(v30);

        v32 = v30;
        url_path = _nw_endpoint_get_url_path(v32);

        if (hostname)
        {
          if (url_path && !strcmp(hostname, "safebrowsing.googleapis.com") && (strstr(url_path, "fullHashes") || strstr(url_path, "threatListUpdates")))
          {
            v34 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_BOOL(v34, "HTTPSEnable", 1);
            xpc_dictionary_set_int64(v34, "HTTPSPort", 80);
            xpc_dictionary_set_string(v34, "HTTPSProxy", "safebrowsing-proxy.networking.apple");
            nw_parameters_set_proxy_configuration(v11[2], v34);
            v35 = v11[2];
            if (v35 && !_nw_parameters_get_logging_disabled(v35))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v36 = gconnectionLogObj;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = *(v11 + 112);
                *buf = 136446466;
                v70 = "nw_connection_apply_proxy_feature_flags";
                v71 = 1024;
                *v72 = v37;
                _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_INFO, "%{public}s [C%u] Applying proxy to Safe Browsing URL", buf, 0x12u);
              }
            }
          }
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      nw_parameters_disable_legacy_tls_versions(v11[2]);
    }

    *uu = 0;
    v76 = 0;
    nw_endpoint_get_agent_identifier(v27[1], uu);
    if (!uuid_is_null(uu))
    {
      v44 = v11[2];
      if (v44 && !_nw_parameters_get_logging_disabled(v44))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v45 = gconnectionLogObj;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = *(v11 + 112);
          *buf = 136446978;
          v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          v71 = 1024;
          *v72 = v46;
          *&v72[4] = 1040;
          *&v72[6] = 16;
          v73 = 2096;
          v74 = uu;
          _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, "%{public}s [C%u] Setting required netagent uuid %{uuid_t}.16P", buf, 0x22u);
        }
      }

      v47 = _nw_parameters_copy();
      v48 = v11[2];
      v11[2] = v47;

      nw_parameters_require_netagent_uuid(v11[2], uu);
      goto LABEL_60;
    }

    nw_endpoint_get_preferred_agent_identifier(v27[1]);
    if (uuid_is_null(uu))
    {
LABEL_60:
      *(v27 + 34) = 0;
      v27[33] = 0;
      v27[34] = v27 + 33;
      *(v27 + 126) = 0;
      self = v27;
LABEL_61:

      return self;
    }

    v38 = v11[2];
    if (v38 && !_nw_parameters_get_logging_disabled(v38))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = *(v11 + 112);
        *buf = 136446978;
        v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
        v71 = 1024;
        *v72 = v40;
        *&v72[4] = 1040;
        *&v72[6] = 16;
        v73 = 2096;
        v74 = uu;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s [C%u] Setting preferred netagent uuid %{uuid_t}.16P", buf, 0x22u);
      }
    }

    v41 = _nw_parameters_copy();
    v42 = v11[2];
    v11[2] = v41;

    v43 = nw_parameters_copy_preferred_netagent_uuids(v11[2]);
    if (v43 || (v43 = xpc_array_create(0, 0)) != 0)
    {
      xpc_array_set_uuid(v43, 0xFFFFFFFFFFFFFFFFLL, uu);
      nw_parameters_set_preferred_netagent_uuids(v11[2], v43);
LABEL_51:

      goto LABEL_60;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v49 = gLogObj;
    *buf = 136446210;
    v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
    LODWORD(v65) = 12;
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s xpc_array_create failed", buf, v65);

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (__nwlog_fault(v50, &type, &v66))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v51 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v51, type))
        {
          *buf = 136446210;
          v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s xpc_array_create failed", buf, 0xCu);
        }
      }

      else if (v66 == 1)
      {
        v53 = __nw_create_backtrace_string();
        v51 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v51, type);
        if (v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
            v71 = 2082;
            *v72 = v53;
            _os_log_impl(&dword_181A37000, v51, v54, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          goto LABEL_78;
        }

        if (v55)
        {
          *buf = 136446210;
          v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          _os_log_impl(&dword_181A37000, v51, v54, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v51 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v51, type))
        {
          *buf = 136446210;
          v70 = "[NWConcrete_nw_connection initWithEndpoint:parameters:identifier:]";
          _os_log_impl(&dword_181A37000, v51, v56, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v50)
    {
      free(v50);
    }

    v43 = 0;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}

@end