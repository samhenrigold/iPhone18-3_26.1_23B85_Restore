@interface MSVQRConnection
+ (id)connectionWithDataSource:(id)source messageCoder:(id)coder;
+ (id)createFramerDefinitionWithIdentifier:(id)identifier;
- (MSVQRConnection)initWithDataSource:(id)source messageCoder:(id)coder;
- (MSVQRConnectionDelegate)delegate;
- (MSVQRConnectionReportProtocol)report;
- (void)_clearState;
- (void)_connectionStateDidChangeWithError:(id)error;
- (void)_createGroupSession;
- (void)_createQuicConnection;
- (void)_receiveNextMessage;
- (void)_sendPathWithCompletion:(id)completion;
- (void)_terminateWithError:(id)error;
- (void)dealloc;
- (void)sendMessage:(id)message;
- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info;
- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation MSVQRConnection

- (MSVQRConnectionReportProtocol)report
{
  WeakRetained = objc_loadWeakRetained(&self->_report);

  return WeakRetained;
}

- (MSVQRConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createQuicConnection
{
  v35 = *MEMORY[0x1E69E9840];
  dataSource = [(MSVQRConnection *)self dataSource];
  groupSessionIdentifier = [dataSource groupSessionIdentifier];
  uUIDString = [groupSessionIdentifier UUIDString];

  participantIdentifier = [(MSVQRConnection *)self participantIdentifier];
  queue = [(MSVQRConnection *)self queue];
  dataSource2 = [(MSVQRConnection *)self dataSource];
  applicationProtocol = [dataSource2 applicationProtocol];

  dataSource3 = [(MSVQRConnection *)self dataSource];
  trustHandler = [dataSource3 trustHandler];

  objc_initWeak(&location, self);
  v27[1] = MEMORY[0x1E69E9820];
  v27[2] = 3221225472;
  v27[3] = __40__MSVQRConnection__createQuicConnection__block_invoke;
  v27[4] = &unk_1E7982318;
  v22 = applicationProtocol;
  v28 = v22;
  v10 = trustHandler;
  v30 = v10;
  v11 = queue;
  v29 = v11;
  objc_copyWeak(&v31, &location);
  quic_stream = nw_parameters_create_quic_stream();
  v13 = nw_parameters_copy_default_protocol_stack(quic_stream);
  nw_protocol_stack_clear_application_protocols(v13);
  framerDefinition = [(MSVQRConnection *)self framerDefinition];
  options = nw_framer_create_options(framerDefinition);

  nw_protocol_stack_prepend_application_protocol(v13, options);
  v16 = [MEMORY[0x1E69A4868] augmentNetworkParametersForSession:uUIDString participantID:objc_msgSend(participantIdentifier parameters:{"integerValue"), quic_stream}];
  v17 = nw_connection_create(v16, quic_stream);
  [(MSVQRConnection *)self setConnection:v17];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __40__MSVQRConnection__createQuicConnection__block_invoke_4;
  handler[3] = &unk_1E7982340;
  objc_copyWeak(v27, &location);
  v18 = v17;
  v26 = v18;
  nw_connection_set_state_changed_handler(v18, handler);
  v19 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v19, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Starting QUIC connection.", buf, 0xCu);
  }

  report = [(MSVQRConnection *)self report];
  [report startEvent:@"Start QUIC" withParentEvent:@"Connection"];

  queue2 = [(MSVQRConnection *)self queue];
  nw_connection_set_queue(v18, queue2);

  nw_connection_start(v18);
  objc_destroyWeak(v27);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __40__MSVQRConnection__createQuicConnection__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  nw_quic_connection_set_max_datagram_frame_size();
  nw_quic_connection_set_initial_max_streams_bidirectional();
  nw_quic_connection_set_initial_max_streams_unidirectional();
  v4 = nw_quic_connection_copy_sec_protocol_options();
  sec_protocol_options_add_tls_application_protocol(v4, [a1[4] cStringUsingEncoding:4]);
  verify_block[0] = MEMORY[0x1E69E9820];
  verify_block[1] = 3221225472;
  verify_block[2] = __40__MSVQRConnection__createQuicConnection__block_invoke_2;
  verify_block[3] = &unk_1E79822F0;
  v7 = a1[6];
  v6 = a1[5];
  objc_copyWeak(&v8, a1 + 7);
  sec_protocol_options_set_verify_block(v4, verify_block, a1[5]);
  objc_destroyWeak(&v8);
}

void __40__MSVQRConnection__createQuicConnection__block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if (v5)
        {
          v9 = nw_error_copy_cf_error(v5);
        }

        else
        {
          v9 = 0;
        }

        v18 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 134218242;
          v21 = WeakRetained;
          v22 = 2114;
          v23 = v9;
          _os_log_impl(&dword_1AC81F000, v18, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Connection state .waiting. Error %{public}@", &v20, 0x16u);
        }

        v16 = MEMORY[0x1E696ABC0];
        v17 = @"NWConnection in waiting state.";
        goto LABEL_35;
      }

      if (a2 != 2)
      {
        goto LABEL_24;
      }

      v9 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v20 = 134217984;
      v21 = WeakRetained;
      v12 = "[MSVQRConnection] <%p> Connection state .preparing";
    }

    else
    {
      if (a2 != 5)
      {
        if (a2 != 4)
        {
          if (a2 == 3)
          {
            v7 = *(a1 + 32);
            v8 = nw_protocol_copy_quic_connection_definition();
            v9 = nw_connection_copy_protocol_metadata(v7, v8);

            if (v9)
            {
              v10 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v20 = 134217984;
                v21 = WeakRetained;
                _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Setting keep alive interval", &v20, 0xCu);
              }

              nw_quic_connection_set_keepalive();
            }

            v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 134217984;
              v21 = WeakRetained;
              _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Connection state .ready", &v20, 0xCu);
            }

            [WeakRetained _connectionStateDidChangeWithError:0];
            goto LABEL_36;
          }

LABEL_24:
          v9 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 134218240;
            v21 = WeakRetained;
            v22 = 1026;
            LODWORD(v23) = a2;
            v12 = "[MSVQRConnection] <%p> Connection state %{public}u";
            v13 = v9;
            v14 = 18;
            goto LABEL_26;
          }

LABEL_36:

          goto LABEL_37;
        }

        if (v5)
        {
          v9 = nw_error_copy_cf_error(v5);
        }

        else
        {
          v9 = 0;
        }

        v15 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 134218242;
          v21 = WeakRetained;
          v22 = 2114;
          v23 = v9;
          _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Connection state .failed. Error %{public}@", &v20, 0x16u);
        }

        v16 = MEMORY[0x1E696ABC0];
        v17 = @"NWConnection in failed state.";
LABEL_35:
        v19 = [v16 msv_errorWithDomain:@"MSVQRConnectionError" code:102 underlyingError:v9 debugDescription:v17];
        [WeakRetained _connectionStateDidChangeWithError:v19];

        goto LABEL_36;
      }

      v9 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v20 = 134217984;
      v21 = WeakRetained;
      v12 = "[MSVQRConnection] <%p> Connection state .cancelled";
    }

    v13 = v9;
    v14 = 12;
LABEL_26:
    _os_log_impl(&dword_1AC81F000, v13, OS_LOG_TYPE_DEFAULT, v12, &v20, v14);
    goto LABEL_36;
  }

LABEL_37:
}

void __40__MSVQRConnection__createQuicConnection__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__MSVQRConnection__createQuicConnection__block_invoke_3;
  v13[3] = &unk_1E79822C8;
  v12 = v9;
  v14 = v12;
  objc_copyWeak(&v15, (a1 + 48));
  (*(v10 + 16))(v10, v7, v8, v11, v13);
  objc_destroyWeak(&v15);
}

void __40__MSVQRConnection__createQuicConnection__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _terminateWithError:v5];
  }
}

- (void)_receiveNextMessage
{
  location[3] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MSVQRConnection *)selfCopy state]== 3)
  {
    connection = [(MSVQRConnection *)selfCopy connection];
    objc_sync_exit(selfCopy);

    objc_initWeak(location, selfCopy);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __38__MSVQRConnection__receiveNextMessage__block_invoke;
    completion[3] = &unk_1E79822A0;
    objc_copyWeak(&v6, location);
    nw_connection_receive_message(connection, completion);
    objc_destroyWeak(&v6);
    objc_destroyWeak(location);
    selfCopy = connection;
  }

  else
  {
    v4 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = selfCopy;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_ERROR, "[MSVQRConnection] <%p> Cannot receive message because connection is not started.", location, 0xCu);
    }

    objc_sync_exit(selfCopy);
  }
}

void __38__MSVQRConnection__receiveNextMessage__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v10 && (v12 = nw_error_copy_cf_error(v10)) != 0)
    {
      v13 = v12;
      [WeakRetained _terminateWithError:v12];
    }

    else
    {
      v14 = [WeakRetained framerDefinition];
      v15 = nw_content_context_copy_protocol_metadata(v9, v14);

      if (v15)
      {
        v16 = nw_framer_message_copy_object_value(v15, "Header");
        if (v16 && (_NSIsNSDictionary() & 1) != 0)
        {
          v17 = [v16 objectForKeyedSubscript:@"MessageTypeKey"];
          v18 = [v17 isEqualToString:@"Proto"];

          if (v18)
          {
            v45 = v8;
            v19 = [WeakRetained messageCoder];
            v20 = [v19 messageFromData:v45];

            v21 = [WeakRetained messageCoder];
            v22 = [v21 traceIdentifierForMessage:v20];
            v23 = v22;
            v24 = @"no-trace";
            if (v22)
            {
              v24 = v22;
            }

            v25 = v24;

            v26 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              v52 = WeakRetained;
              v53 = 2112;
              v54 = v25;
              v55 = 2114;
              v56 = v20;
              _os_log_impl(&dword_1AC81F000, v26, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Received message: [%@]%{public}@", buf, 0x20u);
            }

            v27 = [WeakRetained delegate];
            if (objc_opt_respondsToSelector())
            {
              v28 = [WeakRetained delegateQueue];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __38__MSVQRConnection__receiveNextMessage__block_invoke_106;
              block[3] = &unk_1E79821B8;
              v48 = v27;
              v49 = WeakRetained;
              v50 = v20;
              dispatch_async(v28, block);
            }

            [WeakRetained _receiveNextMessage];
          }

          else
          {
            v31 = [v16 objectForKeyedSubscript:@"MessageTypeKey"];
            v32 = [v31 isEqualToString:@"Status"];

            if (v32)
            {
              v33 = [v16 objectForKeyedSubscript:@"StatusCodeKey"];
              v34 = [v33 unsignedIntValue];
              v35 = v34;

              if (v34 >= 0x11)
              {
                v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedRpcStatusCode-%ld", v34];
              }

              else
              {
                v46 = off_1E7982448[v34];
              }

              v36 = _MSVLogCategoryQuickRelay();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v52 = WeakRetained;
                v53 = 2114;
                v54 = v46;
                _os_log_impl(&dword_1AC81F000, v36, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Received status %{public}@.", buf, 0x16u);
              }

              v37 = v8;
              v38 = v37;
              if (v37)
              {
                v39 = MEMORY[0x1E696AEC0];
                v40 = v37;
                v41 = [v39 stringWithCString:-[__CFString bytes](v38 encoding:{"bytes"), 1}];
                if (v41)
                {
                  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v46, v41];

                  v46 = v42;
                }
              }

              v43 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionRPCError" code:v35 debugDescription:{@"%@", v46}];
              v44 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:200 underlyingError:v43 debugDescription:@"Received status code from QR server."];
              [WeakRetained _terminateWithError:v44];
            }
          }
        }

        else
        {
          v29 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:200 debugDescription:@"Message has no header."];
          [WeakRetained _terminateWithError:v29];
        }
      }

      else
      {
        v30 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          v52 = WeakRetained;
          v53 = 2113;
          v54 = v8;
          _os_log_impl(&dword_1AC81F000, v30, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Ignoring message from unknown protocol. Content: %{private}@", buf, 0x16u);
        }

        [WeakRetained _receiveNextMessage];
      }
    }
  }
}

- (void)_connectionStateDidChangeWithError:(id)error
{
  errorCopy = error;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke;
  v12[3] = &unk_1E7982250;
  v12[4] = self;
  v5 = MEMORY[0x1B26EC6C0](v12);
  report = [(MSVQRConnection *)self report];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MSVQRConnection *)selfCopy state]== 2)
  {
    [report endEvent:@"Start QUIC" withError:errorCopy];
  }

  objc_sync_exit(selfCopy);

  if (((v5)[2](v5, errorCopy) & 1) == 0)
  {
    [report startEvent:@"Send Path" withParentEvent:@"Connection"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke_2;
    v8[3] = &unk_1E7982278;
    v9 = report;
    v10 = selfCopy;
    v11 = v5;
    [(MSVQRConnection *)selfCopy _sendPathWithCompletion:v8];
  }
}

uint64_t __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if ([*(a1 + 32) shouldTerminate])
  {
    [*(a1 + 32) _terminateWithError:0];
  }

  else
  {
    if (!v3)
    {
      v5 = 0;
      goto LABEL_6;
    }

    [*(a1 + 32) _terminateWithError:v3];
  }

  v5 = 1;
LABEL_6:
  objc_sync_exit(v4);

  return v5;
}

void __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) endEvent:@"Send Path" withError:v3];
  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  if ((*(*(a1 + 48) + 16))())
  {
    objc_sync_exit(v4);
  }

  else
  {
    [*(a1 + 40) setState:3];
    objc_sync_exit(v4);

    [*(a1 + 32) endEvent:@"Connection"];
    [*(a1 + 40) _receiveNextMessage];
    v5 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Started QR connection and registered for message handling.", buf, 0xCu);
    }

    v7 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 40) delegateQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__MSVQRConnection__connectionStateDidChangeWithError___block_invoke_99;
      v11[3] = &unk_1E7982B28;
      v9 = v7;
      v10 = *(a1 + 40);
      v12 = v9;
      v13 = v10;
      dispatch_async(v8, v11);
    }
  }
}

- (void)_sendPathWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v7 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    dataSource = [(MSVQRConnection *)self dataSource];
    rpcPath = [dataSource rpcPath];
    *buf = 134218498;
    selfCopy = self;
    v29 = 2114;
    v30 = rpcPath;
    v31 = 2114;
    v32 = uUIDString;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEBUG, "[MSVQRConnection] <%p> Sending path %{public}@ with traceID: %{public}@", buf, 0x20u);
  }

  dataSource2 = [(MSVQRConnection *)self dataSource];
  rpcPath2 = [dataSource2 rpcPath];
  v12 = [rpcPath2 dataUsingEncoding:4];

  bytes = [v12 bytes];
  v14 = [v12 length];
  queue = [(MSVQRConnection *)self queue];
  v16 = dispatch_data_create(bytes, v14, queue, 0);

  v17 = nw_content_context_create("PathContext");
  framerDefinition = [(MSVQRConnection *)self framerDefinition];
  message = nw_framer_protocol_create_message(framerDefinition);

  v25[0] = @"MessageTypeKey";
  v25[1] = @"TraceIdKey";
  v26[0] = @"Path";
  v26[1] = uUIDString;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  nw_framer_message_set_object_value(message, "Header", v20);

  nw_content_context_set_metadata_for_protocol(v17, message);
  connection = [(MSVQRConnection *)self connection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __43__MSVQRConnection__sendPathWithCompletion___block_invoke;
  completion[3] = &unk_1E7982228;
  v24 = completionCopy;
  v22 = completionCopy;
  nw_connection_send(connection, v16, v17, 1, completion);
}

void __43__MSVQRConnection__sendPathWithCompletion___block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v3 = error;
  (*(*(a1 + 32) + 16))();
}

- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  updateCopy = update;
  errorCopy = error;
  v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v29 = 2114;
    v30 = errorCopy;
    _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Session did join group with error %{public}@", buf, 0x16u);
  }

  guard = [(MSVQRConnection *)self guard];
  disarm = [guard disarm];

  if (disarm)
  {
    report = [(MSVQRConnection *)self report];
    [report endEvent:@"Join Group Session" withError:errorCopy];
    [(MSVQRConnection *)self setGuard:0];
    if (errorCopy)
    {
      v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 underlyingError:errorCopy debugDescription:@"GroupSession join failed with error."];
      [(MSVQRConnection *)self _terminateWithError:v15];
    }

    else
    {
      objc_initWeak(&location, self);
      v16 = [MSVBlockGuard alloc];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__MSVQRConnection_sessionDidJoinGroup_participantUpdate_error___block_invoke;
      v22[3] = &unk_1E7982200;
      v22[4] = self;
      objc_copyWeak(&v23, &location);
      v17 = [(MSVBlockGuard *)v16 initWithTimeout:v22 interruptionHandler:20.0];
      [(MSVQRConnection *)self setGuard:v17];

      [report startEvent:@"Register Plugin" withParentEvent:@"Connection"];
      v18 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_1AC81F000, v18, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Register plugin.", buf, 0xCu);
      }

      v25 = *MEMORY[0x1E69A4DA8];
      dataSource = [(MSVQRConnection *)self dataSource];
      pluginIdentifier = [dataSource pluginIdentifier];
      v26 = pluginIdentifier;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [groupCopy registerPluginWithOptions:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __63__MSVQRConnection_sessionDidJoinGroup_participantUpdate_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 debugDescription:@"Timed out waiting for plugin allocation."];
    v4 = [*(a1 + 32) report];
    [v4 endEvent:@"Register Plugin" withError:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _terminateWithError:v6];
  }
}

- (void)session:(id)session didRegisterPluginAllocationInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [info objectForKeyedSubscript:*MEMORY[0x1E69A4D98]];
  v6 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    selfCopy = self;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Registered plugin allocation info. Participant ID: %{public}@", &v11, 0x16u);
  }

  guard = [(MSVQRConnection *)self guard];
  disarm = [guard disarm];

  if (disarm)
  {
    report = [(MSVQRConnection *)self report];
    [report endEvent:@"Register Plugin" withError:0];

    [(MSVQRConnection *)self setGuard:0];
    if (v5)
    {
      [(MSVQRConnection *)self setParticipantIdentifier:v5];
      [(MSVQRConnection *)self _createQuicConnection];
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 debugDescription:@"Plugin info had no participant identifier."];
      [(MSVQRConnection *)self _terminateWithError:v10];
    }
  }
}

- (void)_createGroupSession
{
  v32 = *MEMORY[0x1E69E9840];
  dataSource = [(MSVQRConnection *)self dataSource];
  account = [dataSource account];

  if (account)
  {
    v5 = objc_alloc(MEMORY[0x1E69A4868]);
    dataSource2 = [(MSVQRConnection *)self dataSource];
    account2 = [dataSource2 account];
    dataSource3 = [(MSVQRConnection *)self dataSource];
    groupSessionOptions = [dataSource3 groupSessionOptions];
    v10 = [v5 initWithAccount:account2 options:groupSessionOptions];
    [(MSVQRConnection *)self setSession:v10];

    session = [(MSVQRConnection *)self session];
    queue = [(MSVQRConnection *)self queue];
    [session setDelegate:self queue:queue];

    objc_initWeak(&location, self);
    v13 = [MSVBlockGuard alloc];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __38__MSVQRConnection__createGroupSession__block_invoke;
    v23[3] = &unk_1E7982200;
    v23[4] = self;
    objc_copyWeak(&v24, &location);
    v14 = [(MSVBlockGuard *)v13 initWithTimeout:v23 interruptionHandler:20.0];
    [(MSVQRConnection *)self setGuard:v14];

    v15 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      dataSource4 = [(MSVQRConnection *)self dataSource];
      groupSessionIdentifier = [dataSource4 groupSessionIdentifier];
      *buf = 134218242;
      selfCopy = self;
      v30 = 2114;
      v31 = groupSessionIdentifier;
      _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Joining group session with sessionID: %{public}@.", buf, 0x16u);
    }

    report = [(MSVQRConnection *)self report];
    [report startEvent:@"Join Group Session" withParentEvent:@"Connection"];

    session2 = [(MSVQRConnection *)self session];
    v26 = *MEMORY[0x1E69A5138];
    data = [MEMORY[0x1E695DEF0] data];
    v27 = data;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [session2 joinWithOptions:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:100 debugDescription:{@"No account in data source, cannot create group session."}];
    [(MSVQRConnection *)self _terminateWithError:v22];
  }
}

void __38__MSVQRConnection__createGroupSession__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVQRConnectionError" code:102 debugDescription:@"Timed out waiting to join group session."];
    v4 = [*(a1 + 32) report];
    [v4 endEvent:@"Join Group Session" withError:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _terminateWithError:v6];
  }
}

- (void)_clearState
{
  v13 = *MEMORY[0x1E69E9840];
  [(MSVQRConnection *)self setGuard:0];
  connection = [(MSVQRConnection *)self connection];

  if (connection)
  {
    v4 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Clear connection.", &v11, 0xCu);
    }

    connection2 = [(MSVQRConnection *)self connection];
    nw_connection_set_state_changed_handler(connection2, &__block_literal_global_4085);

    connection3 = [(MSVQRConnection *)self connection];
    nw_connection_cancel(connection3);

    [(MSVQRConnection *)self setConnection:0];
  }

  session = [(MSVQRConnection *)self session];

  if (session)
  {
    v8 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Clear group session.", &v11, 0xCu);
    }

    session2 = [(MSVQRConnection *)self session];
    [session2 leaveGroupSession];

    session3 = [(MSVQRConnection *)self session];
    [session3 invalidate];

    [(MSVQRConnection *)self setSession:0];
  }

  [(MSVQRConnection *)self setShouldTerminate:0];
}

- (void)_terminateWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MSVQRConnection *)selfCopy state]== 1 || ![(MSVQRConnection *)selfCopy state])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    if ([(MSVQRConnection *)selfCopy state]== 2)
    {
      report = [(MSVQRConnection *)selfCopy report];
      [report endEvent:@"Connection" withError:errorCopy];
    }

    [(MSVQRConnection *)selfCopy setState:1];
    objc_sync_exit(selfCopy);

    v7 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v17 = selfCopy;
      v18 = 2114;
      v19 = errorCopy;
      _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Terminating with error %{public}@", buf, 0x16u);
    }

    if ([(MSVQRConnection *)selfCopy shouldTerminate])
    {
      v8 = 0;
    }

    else
    {
      v8 = errorCopy;
    }

    v9 = v8;
    [(MSVQRConnection *)selfCopy _clearState];
    [(MSVQRConnection *)selfCopy setState:0];
    delegate = [(MSVQRConnection *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = [(MSVQRConnection *)selfCopy delegateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__MSVQRConnection__terminateWithError___block_invoke;
      block[3] = &unk_1E79821B8;
      v13 = delegate;
      v14 = selfCopy;
      v15 = v9;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)sendMessage:(id)message
{
  v39 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVQRConnection.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MSVQRConnection *)selfCopy state]== 3)
  {
    connection = [(MSVQRConnection *)selfCopy connection];
    objc_sync_exit(selfCopy);

    messageCoder = [(MSVQRConnection *)selfCopy messageCoder];
    v9 = [messageCoder traceIdentifierForMessage:messageCopy];
    v10 = v9;
    v11 = @"no-trace";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218499;
      v34 = selfCopy;
      v35 = 2114;
      v36 = v12;
      v37 = 2113;
      v38 = messageCopy;
      _os_log_impl(&dword_1AC81F000, v13, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Sending message: [%{public}@]%{private}@", buf, 0x20u);
    }

    messageCoder2 = [(MSVQRConnection *)selfCopy messageCoder];
    v15 = [messageCoder2 dataFromMessage:messageCopy];

    v16 = v15;
    bytes = [v15 bytes];
    v18 = [v15 length];
    queue = [(MSVQRConnection *)selfCopy queue];
    v20 = dispatch_data_create(bytes, v18, queue, 0);

    v21 = nw_content_context_create("MessageContext");
    framerDefinition = [(MSVQRConnection *)selfCopy framerDefinition];
    message = nw_framer_protocol_create_message(framerDefinition);

    v31 = @"MessageTypeKey";
    v32 = @"Proto";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    nw_framer_message_set_object_value(message, "Header", v24);

    nw_content_context_set_metadata_for_protocol(v21, message);
    objc_initWeak(buf, selfCopy);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __31__MSVQRConnection_sendMessage___block_invoke;
    completion[3] = &unk_1E7982190;
    objc_copyWeak(&v30, buf);
    nw_connection_send(connection, v20, v21, 1, completion);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);

    selfCopy = connection;
  }

  else
  {
    v25 = os_log_create("com.apple.amp.MediaServices", "QuickRelay_Oversize");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      state = [(MSVQRConnection *)selfCopy state];
      if (state >= 4)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState-%ld", state];
      }

      else
      {
        v27 = off_1E7982428[state];
      }

      *buf = 134218498;
      v34 = selfCopy;
      v35 = 2114;
      v36 = v27;
      v37 = 2114;
      v38 = messageCopy;
      _os_log_impl(&dword_1AC81F000, v25, OS_LOG_TYPE_ERROR, "[MSVQRConnection] <%p> Connection in state %{public}@ cannot send message: %{public}@", buf, 0x20u);
    }

    objc_sync_exit(selfCopy);
  }
}

void __31__MSVQRConnection_sendMessage___block_invoke(uint64_t a1, void *a2)
{
  error = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (error)
    {
      v4 = nw_error_copy_cf_error(error);
      if (v4)
      {
        v5 = v4;
        [WeakRetained _terminateWithError:v4];
      }
    }
  }
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  if ([(MSVQRConnection *)obj state])
  {
    if ([(MSVQRConnection *)obj state]== 3)
    {
      [(MSVQRConnection *)obj _terminateWithError:0];
    }

    else
    {
      [(MSVQRConnection *)obj setShouldTerminate:1];
    }
  }

  objc_sync_exit(obj);
}

- (void)start
{
  v10 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if ([(MSVQRConnection *)obj state])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(MSVQRConnection *)obj setState:2];
    objc_sync_exit(obj);

    v2 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      dataSource = [(MSVQRConnection *)obj dataSource];
      *buf = 134218242;
      v7 = obj;
      v8 = 2112;
      v9 = dataSource;
      _os_log_impl(&dword_1AC81F000, v2, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Starting with data source: %@.", buf, 0x16u);
    }

    report = [(MSVQRConnection *)obj report];
    [report startEvent:@"Connection"];

    [(MSVQRConnection *)obj _createGroupSession];
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "[MSVQRConnection] <%p> Deallocating.", buf, 0xCu);
  }

  [(MSVQRConnection *)self _clearState];
  v4.receiver = self;
  v4.super_class = MSVQRConnection;
  [(MSVQRConnection *)&v4 dealloc];
}

- (MSVQRConnection)initWithDataSource:(id)source messageCoder:(id)coder
{
  sourceCopy = source;
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MSVQRConnection;
  v10 = [(MSVQRConnection *)&v23 init];
  if (v10)
  {
    if (sourceCopy)
    {
      if (coderCopy)
      {
LABEL_4:
        v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v12 = dispatch_queue_create("com.apple.amp.mediaservices.MSVQRConnection.serialQueue", v11);
        queue = v10->_queue;
        v10->_queue = v12;

        v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v15 = dispatch_queue_create("com.apple.amp.mediaservices.MSVQRConnection.delegateQueue", v14);
        delegateQueue = v10->_delegateQueue;
        v10->_delegateQueue = v15;

        v10->_state = 0;
        v10->_shouldTerminate = 0;
        objc_storeStrong(&v10->_dataSource, source);
        objc_storeStrong(&v10->_messageCoder, coder);
        applicationProtocol = [(MSVQRConnectionSessionDataSource *)v10->_dataSource applicationProtocol];
        v18 = [MSVQRConnection createFramerDefinitionWithIdentifier:applicationProtocol];
        framerDefinition = v10->_framerDefinition;
        v10->_framerDefinition = v18;

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"MSVQRConnection.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];

      if (coderCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"MSVQRConnection.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"coder"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

+ (id)createFramerDefinitionWithIdentifier:(id)identifier
{
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke;
  v12 = &__block_descriptor_48_e32_i16__0__NSObject_OS_nw_framer__8l;
  v13 = 4;
  selfCopy = self;
  identifierCopy = identifier;
  v4 = MEMORY[0x1B26EC6C0](&v9);
  v5 = identifierCopy;
  v6 = [v5 cStringUsingEncoding:{4, v9, v10, v11, v12, v13, selfCopy}];

  definition = nw_framer_create_definition(v6, 0, v4);

  return definition;
}

uint64_t __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  nw_framer_set_cleanup_handler(v3, &__block_literal_global_129);
  nw_framer_set_wakeup_handler(v3, &__block_literal_global_131);
  nw_framer_set_stop_handler(v3, &__block_literal_global_134);
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_5;
  input_handler[3] = &__block_descriptor_48_e32_Q16__0__NSObject_OS_nw_framer__8l;
  v4 = *(a1 + 40);
  input_handler[4] = *(a1 + 32);
  input_handler[5] = v4;
  nw_framer_set_input_handler(v3, input_handler);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_139;
  v7[3] = &__block_descriptor_48_e76_v36__0__NSObject_OS_nw_framer__8__NSObject_OS_nw_protocol_metadata__16Q24B32l;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v7[5] = v5;
  nw_framer_set_output_handler(v3, v7);

  return 1;
}

uint64_t __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_5(uint64_t a1, void *a2)
{
  v12 = a2;
  v4 = MEMORY[0x1E69E9820];
  do
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4138;
    v23 = __Block_byref_object_dispose__4139;
    v24 = 0;
    v5 = *(a1 + 32);
    parse[0] = v4;
    parse[1] = 3221225472;
    parse[2] = __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_135;
    parse[3] = &unk_1E79823A8;
    v17 = v5;
    v6 = v12;
    v14 = v6;
    v15 = &v19;
    v7 = *(a1 + 40);
    v16 = &v25;
    v18 = v7;
    if (nw_framer_parse_input(v6, v5, v5, 0, parse) && v20[5])
    {
      v8 = nw_framer_message_create(v6);
      nw_framer_message_set_object_value(v8, "Header", v20[5]);
      v9 = nw_framer_deliver_input_no_copy(v6, *(v26 + 6), v8, 1);
      v10 = v9;
      if (!v9)
      {
        v2 = 0;
      }
    }

    else
    {
      v10 = 0;
      v2 = *(a1 + 32);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  while (v10);

  return v2;
}

void __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_139(uint64_t a1, void *a2, NSObject *a3, size_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = nw_framer_message_copy_object_value(a3, "Header");
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"MessageTypeKey"];
    v11 = [v10 isEqualToString:@"Proto"];

    if (v11)
    {
      v12 = bswap32(a4);
LABEL_12:
      *buf = v12;
      nw_framer_write_output(v7, buf, *(a1 + 40));
LABEL_13:
      nw_framer_write_output_no_copy(v7, a4);
      goto LABEL_14;
    }

    v18 = [v9 objectForKeyedSubscript:@"MessageTypeKey"];
    v19 = [v18 isEqualToString:@"Status"];

    if (v19)
    {
      v20 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_ERROR, "[MSVQRConnection] <%p> Should not be sending status codes to server.", buf, 0xCu);
      }

      v22 = [v9 objectForKeyedSubscript:@"StatusCodeKey"];
      v23 = [v22 unsignedIntValue];

      v12 = bswap32(a4 | (v23 << 16) | 0x80000000);
      goto LABEL_12;
    }

    v24 = [v9 objectForKeyedSubscript:@"MessageTypeKey"];
    v25 = [v24 isEqualToString:@"Path"];

    if (v25)
    {
      v26 = [v9 objectForKeyedSubscript:@"TraceIdKey"];
      *output_buffer = bswap32(a4 + ((v26 != 0) << 15)) >> 16;
      nw_framer_write_output(v7, output_buffer, 2uLL);
      if (v26)
      {
        *buf = 0;
        *&buf[8] = 0;
        v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v26];
        [v27 getUUIDBytes:buf];

        nw_framer_write_output(v7, buf, 0x10uLL);
      }

      goto LABEL_13;
    }

    v13 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      v15 = "[MSVQRConnection] <%p> Header did not contain valid message type %{public}@";
      v16 = v13;
      v17 = 22;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 134217984;
      *&buf[4] = v14;
      v15 = "[MSVQRConnection] <%p> No header found on output message.";
      v16 = v13;
      v17 = 12;
LABEL_6:
      _os_log_impl(&dword_1AC81F000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }
  }

LABEL_14:
}

uint64_t __56__MSVQRConnection_createFramerDefinitionWithIdentifier___block_invoke_135(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (!a2 || *(a1 + 56) > a3)
  {
    return 0;
  }

  __memcpy_chk();
  v4 = bswap32(0);
  if ((v4 & 0x80000000) != 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = v4;
    v28[0] = @"MessageTypeKey";
    v28[1] = @"StatusCodeKey";
    v29[0] = @"Status";
    v6 = HIWORD(v4) & 0x7FFF;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
    v29[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 64);
      v13 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218496;
      v23 = v12;
      v24 = 1024;
      v25 = v6;
      v26 = 1024;
      v27 = v13;
      v14 = "[MSVQRConnection] <%p> Parsed status - code: %d, len: %d";
      v15 = v11;
      v16 = 24;
LABEL_11:
      _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
    }
  }

  else
  {
    if (v4 >= 0xF4241)
    {
      nw_framer_mark_failed_with_error(*(a1 + 32), 22);
      return 0;
    }

    v30 = @"MessageTypeKey";
    v31[0] = @"Proto";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *(*(*(a1 + 48) + 8) + 24) = v4;
    v11 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 64);
      v21 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 134218240;
      v23 = v20;
      v24 = 1024;
      v25 = v21;
      v14 = "[MSVQRConnection] <%p> Parsed proto - len: %d";
      v15 = v11;
      v16 = 18;
      goto LABEL_11;
    }
  }

  return *(a1 + 56);
}

+ (id)connectionWithDataSource:(id)source messageCoder:(id)coder
{
  coderCopy = coder;
  sourceCopy = source;
  v7 = [[MSVQRConnection alloc] initWithDataSource:sourceCopy messageCoder:coderCopy];

  return v7;
}

@end