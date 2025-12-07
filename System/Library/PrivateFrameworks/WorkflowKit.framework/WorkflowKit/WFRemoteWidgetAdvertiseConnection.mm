@interface WFRemoteWidgetAdvertiseConnection
+ (id)startListeningForIncomingConfigurationsWithConnectionType:(int64_t)type;
- (WFRemoteWidgetAdvertiseConnection)init;
- (WFRemoteWidgetAdvertiseConnection)initWithConnectionType:(int64_t)type;
- (WFRemoteWidgetAdvertiseConnectionDelegate)delegate;
- (id)setupAdvertiseConnectionType:(int64_t)type;
- (void)_handleNewConnection:(id)connection;
- (void)_receiveRequestOnConnection:(id)connection;
- (void)_tearDownConnection:(id)connection;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WFRemoteWidgetAdvertiseConnection

- (WFRemoteWidgetAdvertiseConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_receiveRequestOnConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke;
  completion[3] = &unk_1E837A818;
  objc_copyWeak(&v8, &location);
  v5 = connectionCopy;
  v7 = v5;
  nw_connection_receive_message(v5, completion);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Remote widget outgoing connection received message", buf, 0xCu);
    }

    if (v10)
    {
      v13 = getWFWidgetConfigurationLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Remote widget outgoing connection got error receiving data %@", buf, 0x16u);
      }

      [WeakRetained _tearDownConnection:*(a1 + 32)];
    }

    else
    {
      if (!v8)
      {
        v14 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v30 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
          _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Remote widget outgoing connection received message; no data", buf, 0xCu);
        }
      }

      v15 = [WeakRetained delegate];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = getWFWidgetConfigurationLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v30 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Remote widget outgoing connection received message; no listener delegate", buf, 0xCu);
        }
      }

      if (v8)
      {
        v18 = [WeakRetained delegate];
        v19 = v18 == 0;

        if (!v19)
        {
          v20 = v8;
          v21 = getWFWidgetConfigurationLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v30 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
            _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_INFO, "%s Remote widget outgoing connection received message; informing listener delegate", buf, 0xCu);
          }

          v22 = [WeakRetained delegate];
          v23 = MEMORY[0x1E69E9820];
          v24 = 3221225472;
          v25 = __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_266;
          v26 = &unk_1E837A7F0;
          v27 = *(a1 + 32);
          objc_copyWeak(&v28, (a1 + 40));
          [v22 remoteWidgetConnection:WeakRetained didReceiveData:v20 responseHandler:&v23];

          objc_destroyWeak(&v28);
        }
      }

      [WeakRetained _receiveRequestOnConnection:{*(a1 + 32), v23, v24, v25, v26}];
    }
  }
}

void __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_266(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Received a response from the listener delegate", buf, 0xCu);
  }

  v5 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 length];
    *buf = 136315394;
    v20 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
    v21 = 2050;
    v22 = v6;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Sending response data received from the listener delegate; data is of size %{public}ld", buf, 0x16u);
  }

  v7 = v3;
  v8 = [v3 bytes];
  v9 = [v3 length];
  v10 = dispatch_data_create(v8, v9, MEMORY[0x1E69E96A0], 0);
  v11 = WFRemoteWidgetFramer();
  message = nw_framer_protocol_create_message(v11);

  v13 = nw_content_context_create("Response");
  nw_content_context_set_metadata_for_protocol(v13, message);
  v15 = *(a1 + 32);
  v14 = (a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_268;
  v16[3] = &unk_1E837A7C8;
  objc_copyWeak(&v18, v14 + 1);
  v17 = *v14;
  nw_connection_send(v15, v10, v13, 1, v16);

  objc_destroyWeak(&v18);
}

void __65__WFRemoteWidgetAdvertiseConnection__receiveRequestOnConnection___block_invoke_268(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = getWFWidgetConfigurationLogObject();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Error when sending response data %@", &v7, 0x16u);
    }

    [WeakRetained _tearDownConnection:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[WFRemoteWidgetAdvertiseConnection _receiveRequestOnConnection:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_INFO, "%s Sent response data received from the listener delegate", &v7, 0xCu);
    }
  }
}

- (void)_handleNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __58__WFRemoteWidgetAdvertiseConnection__handleNewConnection___block_invoke;
  handler[3] = &unk_1E837A728;
  objc_copyWeak(&v11, &location);
  v5 = connectionCopy;
  v10 = v5;
  nw_connection_set_state_changed_handler(v5, handler);
  v6 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetConnection incoming connection %@", buf, 0x16u);
  }

  queue = [(WFRemoteWidgetAdvertiseConnection *)self queue];
  nw_connection_set_queue(v5, queue);

  nw_connection_start(v5);
  connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
  [connections addObject:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __58__WFRemoteWidgetAdvertiseConnection__handleNewConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((v3 - 4) < 2)
  {
    v7 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v20 = 136315650;
      v21 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v5;
      v9 = "%s Incoming connection failed or was canceled. Connection=%@ Error=%@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 32;
LABEL_11:
      _os_log_impl(&dword_1CA256000, v10, v11, v9, &v20, v12);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v13 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v20 = 136315394;
      v21 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming connection entered the ready state.  Connection=%@", &v20, 0x16u);
    }

    [WeakRetained _receiveRequestOnConnection:*(a1 + 32)];
  }

  else
  {
    v15 = getWFWidgetConfigurationLogObject();
    v7 = v15;
    if (v5)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = nw_connection_state_to_string();
        v17 = *(a1 + 32);
        v20 = 136315906;
        v21 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
        v22 = 2080;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v5;
        v9 = "%s Incoming connection entered state %s.  Connection=%@, Error=%@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 42;
        goto LABEL_11;
      }

LABEL_12:

      [WeakRetained _tearDownConnection:*(a1 + 32)];
      goto LABEL_13;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = nw_connection_state_to_string();
      v19 = *(a1 + 32);
      v20 = 136315650;
      v21 = "[WFRemoteWidgetAdvertiseConnection _handleNewConnection:]_block_invoke";
      v22 = 2080;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Incoming connection entered state %s.  Connection=%@", &v20, 0x20u);
    }
  }

LABEL_13:
}

- (void)invalidate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WFRemoteWidgetAdvertiseConnection invalidate]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Invalidating WFRemoteWidgetConnection", buf, 0xCu);
  }

  if ([(WFRemoteWidgetAdvertiseConnection *)self invalidated])
  {
    v4 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[WFRemoteWidgetAdvertiseConnection invalidate]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s WFRemoteWidgetConnection already invalidated", buf, 0xCu);
    }
  }

  else
  {
    nwListener = [(WFRemoteWidgetAdvertiseConnection *)self nwListener];

    if (nwListener)
    {
      nwListener2 = [(WFRemoteWidgetAdvertiseConnection *)self nwListener];
      nw_listener_cancel(nwListener2);

      [(WFRemoteWidgetAdvertiseConnection *)self setNwListener:0];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
    v8 = [connections countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(connections);
          }

          nw_connection_cancel(*(*(&v13 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [connections countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    connections2 = [(WFRemoteWidgetAdvertiseConnection *)self connections];
    [connections2 removeAllObjects];

    [(WFRemoteWidgetAdvertiseConnection *)self setInvalidated:1];
  }
}

- (void)_tearDownConnection:(id)connection
{
  connection = connection;
  connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
  [connections removeObject:connection];

  nw_connection_cancel(connection);
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  nwListener = [(WFRemoteWidgetAdvertiseConnection *)self nwListener];
  if (nwListener)
  {
  }

  else
  {
    connections = [(WFRemoteWidgetAdvertiseConnection *)self connections];
    v5 = [connections count];

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v6 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v9 = "[WFRemoteWidgetAdvertiseConnection dealloc]";
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s WFRemoteWidgetAdvertiseConnection deallocated without [invalidate] being called...", buf, 0xCu);
  }

LABEL_7:
  [(WFRemoteWidgetAdvertiseConnection *)self invalidate];
  v7.receiver = self;
  v7.super_class = WFRemoteWidgetAdvertiseConnection;
  [(WFRemoteWidgetAdvertiseConnection *)&v7 dealloc];
}

- (id)setupAdvertiseConnectionType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  self->_connectionType = type;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
  v7 = dispatch_queue_create("com.apple.shortcuts.WFRemoteWidgetConnection", v6);
  queue = self->_queue;
  self->_queue = v7;

  v9 = objc_opt_new();
  connections = self->_connections;
  self->_connections = v9;

  v12 = WFCreateAdvertiseParametersForConnectionType(type, v11);
  application_service = nw_advertise_descriptor_create_application_service("com.apple.workflow.remotewidgets");
  v14 = nw_listener_create(v12);
  nw_listener_set_advertise_descriptor(v14, application_service);
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__WFRemoteWidgetAdvertiseConnection_setupAdvertiseConnectionType___block_invoke;
  v18[3] = &unk_1E837A7A0;
  objc_copyWeak(&v19, &location);
  nw_listener_set_new_connection_handler(v14, v18);
  MEMORY[0x1CCAA3D40](v14, &__block_literal_global_263);
  nw_listener_set_queue(v14, self->_queue);
  nw_listener_start(v14);
  v15 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[WFRemoteWidgetAdvertiseConnection setupAdvertiseConnectionType:]";
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Listener started!", buf, 0xCu);
  }

  nwListener = self->_nwListener;
  self->_nwListener = v14;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return self;
}

void __66__WFRemoteWidgetAdvertiseConnection_setupAdvertiseConnectionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNewConnection:v3];
}

void __66__WFRemoteWidgetAdvertiseConnection_setupAdvertiseConnectionType___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a2 == 2)
  {
    v5 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[WFRemoteWidgetAdvertiseConnection setupAdvertiseConnectionType:]_block_invoke_2";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Listener entered the ready state", &v7, 0xCu);
    }
  }

  if (v4)
  {
    v6 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFRemoteWidgetAdvertiseConnection setupAdvertiseConnectionType:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Listener threw error %@", &v7, 0x16u);
    }
  }
}

- (WFRemoteWidgetAdvertiseConnection)initWithConnectionType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = WFRemoteWidgetAdvertiseConnection;
  v4 = [(WFRemoteWidgetAdvertiseConnection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(WFRemoteWidgetAdvertiseConnection *)v4 setupAdvertiseConnectionType:type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFRemoteWidgetAdvertiseConnection)init
{
  v6.receiver = self;
  v6.super_class = WFRemoteWidgetAdvertiseConnection;
  v2 = [(WFRemoteWidgetAdvertiseConnection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(WFRemoteWidgetAdvertiseConnection *)v2 setupAdvertiseConnectionType:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)startListeningForIncomingConfigurationsWithConnectionType:(int64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[WFRemoteWidgetAdvertiseConnection startListeningForIncomingConfigurationsWithConnectionType:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Start listening for incoming connections...", &v7, 0xCu);
  }

  v5 = [[WFRemoteWidgetAdvertiseConnection alloc] initWithConnectionType:type];

  return v5;
}

@end