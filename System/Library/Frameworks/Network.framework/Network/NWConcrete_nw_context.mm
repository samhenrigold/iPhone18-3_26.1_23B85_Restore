@interface NWConcrete_nw_context
- (NSString)description;
- (void)dealloc;
- (void)initWithIdentifier:(void *)identifier;
@end

@implementation NWConcrete_nw_context

- (void)dealloc
{
  v3 = *(self + 2);
  if (v3)
  {
    free(v3);
    *(self + 2) = 0;
  }

  nw_context_dealloc(self, 0);
  v4.receiver = self;
  v4.super_class = NWConcrete_nw_context;
  [(NWConcrete_nw_context *)&v4 dealloc];
}

- (NSString)description
{
  v3 = *(self + 33) - 1;
  if (v3 > 3)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1E6A2BAC8[v3];
  }

  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<nw_context %s (%s)>", *(self + 2), v4);

  return v5;
}

- (void)initWithIdentifier:(void *)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    return 0;
  }

  if (!a2)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v30 = "[NWConcrete_nw_context initWithIdentifier:]";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null _identifier", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v8, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null _identifier", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v30 = "[NWConcrete_nw_context initWithIdentifier:]";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null _identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (v20)
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null _identifier, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null _identifier, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_41:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  v26.receiver = identifier;
  v26.super_class = NWConcrete_nw_context;
  v3 = objc_msgSendSuper2(&v26, sel_init);
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v30 = "[NWConcrete_nw_context initWithIdentifier:]";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s [super init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        v21 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v22 = type;
        v23 = os_log_type_enabled(v13, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446466;
            v30 = "[NWConcrete_nw_context initWithIdentifier:]";
            v31 = 2082;
            v32 = v21;
            _os_log_impl(&dword_181A37000, v13, v22, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v21);
          goto LABEL_47;
        }

        if (v23)
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v30 = "[NWConcrete_nw_context initWithIdentifier:]";
          _os_log_impl(&dword_181A37000, v13, v25, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  v4 = strdup(a2);
  if (v4)
  {
LABEL_5:
    v3[2] = v4;
    *(v3 + 33) = 2;
    *(v3 + 23) = networkd_settings_get_int64_with_default(nw_setting_context_max_cache_entries, 200);
    *(v3 + 24) = networkd_settings_get_int64_with_default(nw_setting_context_target_cache_entries, 150);
    *(v3 + 25) = networkd_settings_get_int64_with_default(nw_setting_context_max_idle_cache_entries, 20);
    return v3;
  }

  v15 = __nwlog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  *buf = 136446210;
  v30 = "strict_strdup";
  v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s strdup() failed", buf, 12);

  result = __nwlog_should_abort(v17);
  if (!result)
  {
    free(v17);
    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

@end