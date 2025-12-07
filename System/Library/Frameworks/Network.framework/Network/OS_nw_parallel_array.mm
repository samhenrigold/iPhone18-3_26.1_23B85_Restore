@interface OS_nw_parallel_array
- (void)dealloc;
@end

@implementation OS_nw_parallel_array

- (void)dealloc
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    isa = self[2].super.super.isa;
    if (isa)
    {
      v4 = self[3].super.super.isa;
      v5 = self[2].super.super.isa;
      if (v4 != isa)
      {
        do
        {
          v7 = *(v4 - 1);
          v4 = (v4 - 8);
          v6 = v7;
          if (v7)
          {
            os_release(v6);
          }

          *v4 = 0;
        }

        while (v4 != isa);
        v5 = self[2].super.super.isa;
      }

      self[3].super.super.isa = isa;
      operator delete(v5);
    }

    v8 = self[5].super.super.isa;
    if (v8)
    {
      v9 = self[6].super.super.isa;
      v10 = self[5].super.super.isa;
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 1);
          v9 = (v9 - 8);
          v11 = v12;
          if (v12)
          {
            os_release(v11);
          }

          *v9 = 0;
        }

        while (v9 != v8);
        v10 = self[5].super.super.isa;
      }

      self[6].super.super.isa = v8;
      operator delete(v10);
    }

    goto LABEL_18;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_parallel_array_dispose";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null object", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v14, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v24 = "nw_parallel_array_dispose";
      v17 = "%{public}s called with null object";
      goto LABEL_32;
    }

    if (v21 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v24 = "nw_parallel_array_dispose";
      v17 = "%{public}s called with null object, backtrace limit exceeded";
      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v19 = os_log_type_enabled(v15, type);
    if (backtrace_string)
    {
      if (v19)
      {
        *buf = 136446466;
        v24 = "nw_parallel_array_dispose";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null object, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_33;
    }

    if (v19)
    {
      *buf = 136446210;
      v24 = "nw_parallel_array_dispose";
      v17 = "%{public}s called with null object, no backtrace";
LABEL_32:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    }
  }

LABEL_33:
  if (v14)
  {
    free(v14);
  }

LABEL_18:
  v20.receiver = self;
  v20.super_class = OS_nw_parallel_array;
  [(OS_nw_parallel_array *)&v20 dealloc];
}

@end