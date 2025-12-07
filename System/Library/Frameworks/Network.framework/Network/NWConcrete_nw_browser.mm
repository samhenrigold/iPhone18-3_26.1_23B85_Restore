@interface NWConcrete_nw_browser
- (NSString)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation NWConcrete_nw_browser

- (id)redactedDescription
{
  v2 = *MEMORY[0x1E695E480];
  description = nw_browser_get_description(self);
  v4 = CFStringCreateWithCString(v2, description, 0x8000100u);

  return v4;
}

- (NSString)description
{
  v2 = *MEMORY[0x1E695E480];
  description = nw_browser_get_description(self);
  v4 = CFStringCreateWithCString(v2, description, 0x8000100u);

  return v4;
}

- (void)dealloc
{
  v45 = *MEMORY[0x1E69E9840];
  if (!*(self + 6) || nw_parameters_get_logging_disabled(*(self + 5)))
  {
    goto LABEL_14;
  }

  if (__nwlog_browser_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
  }

  v3 = gbrowserLogObj;
  v4 = *(self + 48);
  *buf = 136446466;
  v40 = "[NWConcrete_nw_browser dealloc]";
  v41 = 1024;
  v42 = v4;
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s [B%u] over-release of nw_browser_t! Object should not be internally retained and deallocating", buf, 18);

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v5, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v6 = gbrowserLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        v8 = *(self + 48);
        *buf = 136446466;
        v40 = "[NWConcrete_nw_browser dealloc]";
        v41 = 1024;
        v42 = v8;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s [B%u] over-release of nw_browser_t! Object should not be internally retained and deallocating", buf, 0x12u);
      }
    }

    else if (v37 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (backtrace_string)
      {
        v18 = backtrace_string;
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v19 = gbrowserLogObj;
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          v21 = *(self + 48);
          *buf = 136446722;
          v40 = "[NWConcrete_nw_browser dealloc]";
          v41 = 1024;
          v42 = v21;
          v43 = 2082;
          v44 = v18;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [B%u] over-release of nw_browser_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v18);
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v6 = gbrowserLogObj;
      v31 = type;
      if (os_log_type_enabled(v6, type))
      {
        v32 = *(self + 48);
        *buf = 136446466;
        v40 = "[NWConcrete_nw_browser dealloc]";
        v41 = 1024;
        v42 = v32;
        _os_log_impl(&dword_181A37000, v6, v31, "%{public}s [B%u] over-release of nw_browser_t! Object should not be internally retained and deallocating, no backtrace", buf, 0x12u);
      }
    }

    else
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v6 = gbrowserLogObj;
      v27 = type;
      if (os_log_type_enabled(v6, type))
      {
        v28 = *(self + 48);
        *buf = 136446466;
        v40 = "[NWConcrete_nw_browser dealloc]";
        v41 = 1024;
        v42 = v28;
        _os_log_impl(&dword_181A37000, v6, v27, "%{public}s [B%u] over-release of nw_browser_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0x12u);
      }
    }
  }

  if (v5)
  {
LABEL_13:
    free(v5);
  }

LABEL_14:
  if (*(self + 15) && !nw_parameters_get_logging_disabled(*(self + 5)))
  {
    if (__nwlog_browser_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
    }

    v9 = gbrowserLogObj;
    v10 = *(self + 48);
    *buf = 136446466;
    v40 = "[NWConcrete_nw_browser dealloc]";
    v41 = 1024;
    v42 = v10;
    LODWORD(v35) = 18;
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s [B%u] over-release of nw_browser_t! Object should have deallocated the DNSServiceRef", buf, v35);

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v11, &type, &v37))
    {
LABEL_25:
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v12 = gbrowserLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        v14 = *(self + 48);
        *buf = 136446466;
        v40 = "[NWConcrete_nw_browser dealloc]";
        v41 = 1024;
        v42 = v14;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s [B%u] over-release of nw_browser_t! Object should have deallocated the DNSServiceRef", buf, 0x12u);
      }

LABEL_24:

      goto LABEL_25;
    }

    if (v37 != 1)
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v12 = gbrowserLogObj;
      v29 = type;
      if (os_log_type_enabled(v12, type))
      {
        v30 = *(self + 48);
        *buf = 136446466;
        v40 = "[NWConcrete_nw_browser dealloc]";
        v41 = 1024;
        v42 = v30;
        _os_log_impl(&dword_181A37000, v12, v29, "%{public}s [B%u] over-release of nw_browser_t! Object should have deallocated the DNSServiceRef, backtrace limit exceeded", buf, 0x12u);
      }

      goto LABEL_24;
    }

    v22 = __nw_create_backtrace_string();
    if (!v22)
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v12 = gbrowserLogObj;
      v33 = type;
      if (os_log_type_enabled(v12, type))
      {
        v34 = *(self + 48);
        *buf = 136446466;
        v40 = "[NWConcrete_nw_browser dealloc]";
        v41 = 1024;
        v42 = v34;
        _os_log_impl(&dword_181A37000, v12, v33, "%{public}s [B%u] over-release of nw_browser_t! Object should have deallocated the DNSServiceRef, no backtrace", buf, 0x12u);
      }

      goto LABEL_24;
    }

    v23 = v22;
    if (__nwlog_browser_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
    }

    v24 = gbrowserLogObj;
    v25 = type;
    if (os_log_type_enabled(v24, type))
    {
      v26 = *(self + 48);
      *buf = 136446722;
      v40 = "[NWConcrete_nw_browser dealloc]";
      v41 = 1024;
      v42 = v26;
      v43 = 2082;
      v44 = v23;
      _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [B%u] over-release of nw_browser_t! Object should have deallocated the DNSServiceRef, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(v23);
    if (v11)
    {
LABEL_26:
      free(v11);
    }
  }

LABEL_27:
  v15 = *(self + 22);
  if (v15)
  {
    free(v15);
    *(self + 22) = 0;
  }

  v16 = *(self + 23);
  if (v16)
  {
    free(v16);
    *(self + 23) = 0;
  }

  v36.receiver = self;
  v36.super_class = NWConcrete_nw_browser;
  [(NWConcrete_nw_browser *)&v36 dealloc];
}

@end