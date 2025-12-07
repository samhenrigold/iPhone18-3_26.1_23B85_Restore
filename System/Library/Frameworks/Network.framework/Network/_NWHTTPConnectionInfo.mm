@interface _NWHTTPConnectionInfo
+ (BOOL)isSubclassOfClass:(Class)class;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isValid;
- (void)sendPingWithReceiveHandler:(id)handler;
@end

@implementation _NWHTTPConnectionInfo

- (BOOL)isValid
{
  if (self)
  {
    self = self->_connectionMetadata;
  }

  return nw_http_connection_metadata_get_is_closed(self) ^ 1;
}

- (void)sendPingWithReceiveHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self)
  {
    connectionMetadata = self->_connectionMetadata;
  }

  else
  {
    connectionMetadata = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __52___NWHTTPConnectionInfo_sendPingWithReceiveHandler___block_invoke;
  v20[3] = &unk_1E6A33FB0;
  v20[4] = self;
  v21 = handlerCopy;
  v6 = handlerCopy;
  v7 = connectionMetadata;
  v8 = v20;
  if (!v7)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_send_ping";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v11, &type, &v22))
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
        *&buf[4] = "nw_http_connection_metadata_send_ping";
        v14 = "%{public}s called with null metadata";
LABEL_38:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v17 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connection_metadata_send_ping";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v11)
        {
          goto LABEL_10;
        }

LABEL_41:
        free(v11);
        goto LABEL_10;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_send_ping";
        v14 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_send_ping";
        v14 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_connection_definition_definition))
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_http_connection_metadata_send_ping_block_invoke;
    v25 = &unk_1E6A3AA50;
    v26 = v7;
    v27 = v8;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      (*&buf[16])(buf, handle);
    }

    goto LABEL_10;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_connection_metadata_send_ping";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s metadata must be http_connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v11, &type, &v22))
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
      *&buf[4] = "nw_http_connection_metadata_send_ping";
      v14 = "%{public}s metadata must be http_connection";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v22 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_connection_metadata_send_ping";
      v14 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v18 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type;
  v19 = os_log_type_enabled(v12, type);
  if (!v18)
  {
    if (v19)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_connection_metadata_send_ping";
      v14 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_connection_metadata_send_ping";
    *&buf[12] = 2082;
    *&buf[14] = v18;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v11)
  {
    goto LABEL_41;
  }

LABEL_10:
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = _NWHTTPConnectionInfo;
  if ([(_NWHTTPConnectionInfo *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____NWHTTPConnectionInfo;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

@end