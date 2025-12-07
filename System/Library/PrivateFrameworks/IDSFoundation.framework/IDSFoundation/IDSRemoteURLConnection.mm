@interface IDSRemoteURLConnection
- (BOOL)_connect;
- (BOOL)_disconnect;
- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlock:(id)block;
- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlockWithTimingData:(id)data;
- (void)_disconnected;
- (void)cancel;
- (void)dealloc;
- (void)load;
@end

@implementation IDSRemoteURLConnection

- (void)_disconnected
{
  if (self->_connection)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEBUG, "Clearing out _connection, we're disconnected", v19, 2u);
    }

    v4 = os_log_shim_legacy_logging_enabled();
    if (v4)
    {
      sub_1A7C66C58(v4, v5, @"Clearing out _connection, we're disconnected", v6, v7, v8, v9, v10, *v19);
      sub_1A7C66CCC(v11, v12, @"Clearing out _connection, we're disconnected", v13, v14, v15, v16, v17, *v19);
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }

  self->_loading = 0;
}

- (BOOL)_disconnect
{
  self->_loading = 0;
  if (self->_connection)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEBUG, "Forcing a disconnect, terminating connection", &v20, 2u);
    }

    v4 = os_log_shim_legacy_logging_enabled();
    if (v4)
    {
      sub_1A7C66C58(v4, v5, @"Forcing a disconnect, terminating connection", v6, v7, v8, v9, v10, v20);
      sub_1A7C66CCC(v11, v12, @"Forcing a disconnect, terminating connection", v13, v14, v15, v16, v17, v20);
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
    self->_connection = 0;
  }

  return 1;
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to URLLoading agent", buf, 2u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7C66C58(v5, v6, @"Connecting to URLLoading agent", v7, v8, v9, v10, v11, v22);
    sub_1A7C66CCC(v12, v13, @"Connecting to URLLoading agent", v14, v15, v16, v17, v18, v23);
    if (_IMWillLog())
    {
      _IMAlwaysLog();
    }
  }

  [@"com.apple.idsremoteurlconnectionagent.embedded.auth" UTF8String];
  v19 = im_primary_queue();
  v20 = IMXPCCreateConnectionForServiceWithQueue();
  connection = self->_connection;
  self->_connection = v20;

  IMXPCConfigureConnection();
  return self->_connection != 0;
}

- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C6715C;
  v10[3] = &unk_1E77E24F0;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = [(IDSRemoteURLConnection *)self initWithURLRequest:request completionBlockWithTimingData:v10];

  return v8;
}

- (IDSRemoteURLConnection)initWithURLRequest:(id)request completionBlockWithTimingData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = IDSRemoteURLConnection;
  v9 = [(IDSRemoteURLConnection *)&v28 init];
  if (v9)
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = requestCopy;
      v31 = 2048;
      v32 = v9;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Init with URL request: %@  (%p)", buf, 0x16u);
    }

    v11 = os_log_shim_legacy_logging_enabled();
    if (v11)
    {
      sub_1A7C66C58(v11, v12, @"Init with URL request: %@  (%p)", v13, v14, v15, v16, v17, requestCopy);
      sub_1A7C66CCC(v18, v19, @"Init with URL request: %@  (%p)", v20, v21, v22, v23, v24, requestCopy);
      if (_IMWillLog())
      {
        _IMAlwaysLog();
      }
    }

    objc_storeStrong(&v9->_request, request);
    v25 = [dataCopy copy];
    block = v9->_block;
    v9->_block = v25;
  }

  return v9;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412546;
    v23 = request;
    v24 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Released URL request: %@  (%p)", buf, 0x16u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7C66C58(v5, v6, @"Released URL request: %@  (%p)", v7, v8, v9, v10, v11, self->_request);
    selfCopy3 = self;
    sub_1A7C66CCC(v12, v13, @"Released URL request: %@  (%p)", v14, v15, v16, v17, v18, self->_request);
    if (_IMWillLog())
    {
      v19 = self->_request;
      selfCopy3 = self;
      _IMAlwaysLog();
    }
  }

  [(IDSRemoteURLConnection *)self _disconnect:v19];
  v21.receiver = self;
  v21.super_class = IDSRemoteURLConnection;
  [(IDSRemoteURLConnection *)&v21 dealloc];
}

- (void)load
{
  v42 = *MEMORY[0x1E69E9840];
  if (!self->_loading)
  {
    self->_cancelled = 0;
    if ([(IDSRemoteURLConnection *)self _connect])
    {
      v3 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        request = self->_request;
        bundleIdentifierForDataUsage = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage];
        *buf = 138412802;
        v37 = request;
        v38 = 2112;
        v39 = bundleIdentifierForDataUsage;
        v40 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Sending URL request: %@ (Data usage identifier: %@)  (%p)", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v6 = self->_request;
        bundleIdentifierForDataUsage2 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage];
        sub_1A7C66C58(bundleIdentifierForDataUsage2, v8, @"Sending URL request: %@ (Data usage identifier: %@)  (%p)", v9, v10, v11, v12, v13, v6);

        v14 = self->_request;
        bundleIdentifierForDataUsage3 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage];
        sub_1A7C66CCC(bundleIdentifierForDataUsage3, v15, @"Sending URL request: %@ (Data usage identifier: %@)  (%p)", v16, v17, v18, v19, v20, v14);

        if (_IMWillLog())
        {
          bundleIdentifierForDataUsage4 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage];
          _IMAlwaysLog();
        }
      }

      self->_loading = 1;
      v21 = xpc_dictionary_create(0, 0, 0);
      v24 = self->_request;
      IMInsertKeyedCodableObjectsToXPCDictionary();
      v25 = [(IDSRemoteURLConnection *)self forceCellularIfPossible:v24];
      IMInsertBoolsToXPCDictionary();
      v26 = [(IDSRemoteURLConnection *)self requireIDSHost:v25];
      IMInsertBoolsToXPCDictionary();
      v27 = [(IDSRemoteURLConnection *)self bundleIdentifierForDataUsage:v26];
      IMInsertNSStringsToXPCDictionary();

      v28 = [(IDSRemoteURLConnection *)self shouldUsePipelining:v27];
      IMInsertBoolsToXPCDictionary();
      v29 = [(IDSRemoteURLConnection *)self concurrentConnections:v28];
      IMInsertIntsToXPCDictionary();
      v30 = [(IDSRemoteURLConnection *)self disableKeepAlive:v29];
      IMInsertBoolsToXPCDictionary();
      v31 = [(IDSRemoteURLConnection *)self keepAliveWifi:v30];
      IMInsertIntsToXPCDictionary();
      v32 = [(IDSRemoteURLConnection *)self keepAliveCell:v31];
      IMInsertIntsToXPCDictionary();
      [(IDSRemoteURLConnection *)self shouldReturnTimingData:v32];
      IMInsertBoolsToXPCDictionary();
      connection = self->_connection;
      v23 = im_primary_queue();
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1A7C6781C;
      handler[3] = &unk_1E77E2518;
      handler[4] = self;
      xpc_connection_send_message_with_reply(connection, v21, v23, handler);
    }
  }
}

- (void)cancel
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412546;
    v23 = request;
    v24 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling URL request: %@  (%p)", buf, 0x16u);
  }

  v5 = os_log_shim_legacy_logging_enabled();
  if (v5)
  {
    sub_1A7C66C58(v5, v6, @"Cancelling URL request: %@  (%p)", v7, v8, v9, v10, v11, self->_request);
    selfCopy3 = self;
    sub_1A7C66CCC(v12, v13, @"Cancelling URL request: %@  (%p)", v14, v15, v16, v17, v18, self->_request);
    if (_IMWillLog())
    {
      v20 = self->_request;
      selfCopy3 = self;
      _IMAlwaysLog();
    }
  }

  self->_cancelled = 1;
  block = self->_block;
  if (block)
  {
    self->_block = 0;
  }

  [(IDSRemoteURLConnection *)self _disconnect:v20];
}

@end