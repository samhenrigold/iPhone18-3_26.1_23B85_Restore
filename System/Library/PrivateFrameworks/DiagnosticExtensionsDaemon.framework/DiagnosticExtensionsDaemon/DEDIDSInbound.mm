@interface DEDIDSInbound
+ (id)archivedClasses;
- (DEDIDSConnection)connection;
- (DEDIDSInbound)init;
- (DEDIDSInbound)initWithConnection:(id)connection controller:(id)controller;
- (DEDIDSInboundDelegate)delegate;
- (void)add_session_data:(id)add_session_data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)adopt_files:(id)adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)cancel_session:(id)cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)commit_session:(id)commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)compression_progress:(id)compression_progress service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)device_supports_diagnostic_extensions:(id)device_supports_diagnostic_extensions service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_adopt_files:(id)did_adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_cancel_session:(id)did_cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_commit_session:(id)did_commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_get_session_state:(id)did_get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_get_session_status:(id)did_get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_load_extension_text_data:(id)did_load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_present_notification_on_passthrough_daemon:(id)did_present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_remove_notification_on_passthrough_daemon:(id)did_remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_start_session:(id)did_start_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)did_sync_session_status:(id)did_sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)finished_diagnostic_with_identifier:(id)finished_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)get_session_state:(id)get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)get_session_status:(id)get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)load_extension_text_data:(id)load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)local_device_query_callback:(id)local_device_query_callback service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)logMalformedMessage;
- (void)present_notification_on_passthrough_daemon:(id)present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)remote_device_query_request:(id)remote_device_query_request service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)remote_list_DE:(id)e service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)remove_notification_on_passthrough_daemon:(id)remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)schedule_notification:(id)schedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options;
- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)session_ping:(id)session_ping service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)session_pong:(id)session_pong service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)start_diagnostic_with_identifier:(id)start_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)start_session:(id)start_session service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)sync_session_status:(id)sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)terminate_diagnostic_with_identifier:(id)terminate_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)unschedule_notification:(id)unschedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)upload_finished:(id)upload_finished service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)upload_progress:(id)upload_progress service:(id)service account:(id)account fromID:(id)d context:(id)context;
@end

@implementation DEDIDSInbound

- (DEDIDSInbound)init
{
  v6.receiver = self;
  v6.super_class = DEDIDSInbound;
  v2 = [(DEDIDSInbound *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = Log_2(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSInbound init];
    }
  }

  return v3;
}

- (DEDIDSInbound)initWithConnection:(id)connection controller:(id)controller
{
  connectionCopy = connection;
  controllerCopy = controller;
  v8 = objc_alloc_init(DEDIDSInbound);

  if (v8)
  {
    [(DEDIDSInbound *)v8 setConnection:connectionCopy];
    [(DEDIDSInbound *)v8 setDelegate:controllerCopy];
  }

  return v8;
}

- (void)logMalformedMessage
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)archivedClasses
{
  if (archivedClasses_onceToken_4 != -1)
  {
    +[DEDIDSInbound archivedClasses];
  }

  v3 = archivedClasses__classes_2;

  return v3;
}

void __32__DEDIDSInbound_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = +[DEDExtensionIdentifier archivedClasses];
  [v5 unionSet:v2];

  v3 = [MEMORY[0x277CBEB98] setWithSet:v5];
  v4 = archivedClasses__classes_2;
  archivedClasses__classes_2 = v3;
}

- (void)local_device_query_callback:(id)local_device_query_callback service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  local_device_query_callbackCopy = local_device_query_callback;
  dCopy = d;
  contextCopy = context;
  v14 = isKnownDevice(service, dCopy);
  if (v14)
  {
    v15 = Log_2(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
    }

    v16 = [DEDIDSConnection unpackProtobuf:local_device_query_callbackCopy];
    if (v16)
    {
      v17 = [DEDDevice deviceWithDictionary:v16];
      [v17 setTransport:4];
      [v17 setRemoteTransport:4];
      v18 = Log_2([v17 setAddress:dCopy]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v17 identifier];
        serviceIdentifier = [contextCopy serviceIdentifier];
        v25 = 138543618;
        v26 = identifier;
        v27 = 2114;
        v28 = serviceIdentifier;
        _os_log_impl(&dword_248AD7000, v18, OS_LOG_TYPE_DEFAULT, "local_device_query_callback: IDS device ready [%{public}@] on service [%{public}@]", &v25, 0x16u);
      }

      connection = [(DEDIDSInbound *)self connection];

      if (!connection)
      {
        v23 = Log_2(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
        }
      }

      connection2 = [(DEDIDSInbound *)self connection];
      [connection2 incomingDeviceReceived:v17];
    }

    else
    {
      v17 = Log_2(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound local_device_query_callback:service:account:fromID:context:];
      }
    }
  }
}

- (void)start_session:(id)start_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  start_sessionCopy = start_session;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "start_session", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:start_sessionCopy];
    v15 = [v14 objectForKeyedSubscript:@"config"];
    v16 = [v14 objectForKeyedSubscript:@"callingDevice"];
    v17 = [v14 objectForKeyedSubscript:@"targetDevice"];
    v18 = [v14 objectForKeyedSubscript:@"sessionID"];
    [v16 setTransport:4];
    [v16 setAddress:dCopy];
    delegate = [(DEDIDSInbound *)self delegate];
    [delegate idsInbound_startBugSessionWithIdentifier:v18 configuration:v15 caller:v16 target:v17];
  }
}

- (void)did_start_session:(id)did_start_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_start_sessionCopy = did_start_session;
  v11 = isKnownDevice(service, d);
  if (v11)
  {
    v12 = Log_2(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "did_start_session", v15, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:did_start_sessionCopy];
    delegate = [(DEDIDSInbound *)self delegate];
    [delegate idsInbound_didStartBugSessionWithInfo:v13];
  }
}

- (void)session_ping:(id)session_ping service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  session_pingCopy = session_ping;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "session_ping", v19, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:session_pingCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:connection];
      [v18 pingWithCallback:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)session_pong:(id)session_pong service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  session_pongCopy = session_pong;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "session_pong", v19, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:session_pongCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:connection];
      [v18 pong];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)remote_list_DE:(id)e service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  eCopy = e;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "remote_list_DE", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:eCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 listDiagnosticExtensionsWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)device_supports_diagnostic_extensions:(id)device_supports_diagnostic_extensions service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  device_supports_diagnostic_extensionsCopy = device_supports_diagnostic_extensions;
  v11 = isKnownDevice(service, d);
  if (v11)
  {
    v12 = Log_2(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "device_supports_diagnostic_extensions", buf, 2u);
    }

    v13 = [DEDIDSConnection unpackProtobuf:device_supports_diagnostic_extensionsCopy];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"getDEList"];
      v27 = [v14 objectForKeyedSubscript:@"sessionID"];
      v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [DEDExtension extensionWithDictionary:*(*(&v28 + 1) + 8 * i)];
            [v16 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v19);
      }

      v23 = [v16 copy];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v26 = [delegate2 idsInbound_sessionForIdentifier:v27];
        [v26 supportsDiagnostics:v23];
      }
    }
  }
}

- (void)start_diagnostic_with_identifier:(id)start_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  start_diagnostic_with_identifierCopy = start_diagnostic_with_identifier;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "start_diagnostic_with_identifier", buf, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:start_diagnostic_with_identifierCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"triggerDE"];
      v18 = [v15 objectForKeyedSubscript:@"triggerDEParams"];
      v19 = [v15 objectForKeyedSubscript:@"triggerDERunDate"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        v27 = v18;
        v21 = [[DEDExtensionIdentifier alloc] initWithString:data];
        delegate2 = [(DEDIDSInbound *)self delegate];
        v23 = [delegate2 idsInbound_sessionForIdentifier:connection];
        extensionIdentifier = [(DEDExtensionIdentifier *)v21 extensionIdentifier];
        if (v19)
        {
          v25 = [v23 startDiagnosticExtensionWithIdentifier:extensionIdentifier parameters:v27 deferRunUntil:v19 completion:0];
        }

        else
        {
          v26 = [v23 startDiagnosticExtensionWithIdentifier:extensionIdentifier parameters:v27 completion:0];
        }

        v18 = v27;
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)finished_diagnostic_with_identifier:(id)finished_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  finished_diagnostic_with_identifierCopy = finished_diagnostic_with_identifier;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "finished_diagnostic_with_identifier", v23, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:finished_diagnostic_with_identifierCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"triggerDE"];
      v18 = [v15 objectForKeyedSubscript:@"finishedDEDGroups"];
      v19 = [DEDAttachmentGroup groupWithDictionary:v18];

      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v22 finishedDiagnosticWithIdentifier:data result:v19];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)remote_device_query_request:(id)remote_device_query_request service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v10 = isKnownDevice(service, dCopy);
  if (v10)
  {
    v11 = Log_2(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = dCopy;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "remote_device_query_request from %@", buf, 0xCu);
    }

    v12 = +[DEDDevice currentDeviceWithDaemonInfo];
    v13 = MEMORY[0x277CCAAB0];
    serialize = [v12 serialize];
    v19 = 0;
    v15 = [v13 archivedDataWithRootObject:serialize requiringSecureCoding:1 error:&v19];
    v16 = v19;

    if (v16)
    {
      connection = Log_2(v17);
      if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound remote_device_query_request:service:account:fromID:context:];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      [connection sendMessage:1 withData:v15 forIDSDeviceID:dCopy isResponse:1];
    }
  }
}

- (void)terminate_diagnostic_with_identifier:(id)terminate_diagnostic_with_identifier service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  terminate_diagnostic_with_identifierCopy = terminate_diagnostic_with_identifier;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "terminate_diagnostic_with_identifier", v23, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:terminate_diagnostic_with_identifierCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"triggerDE"];
      v18 = [v15 objectForKeyedSubscript:@"triggerDEParams"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v22 terminateExtension:data withInfo:v18];
      }

      else
      {
        delegate2 = Log_2(v20);
        if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
        {
          [DEDIDSInbound terminate_diagnostic_with_identifier:service:account:fromID:context:];
        }
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)get_session_state:(id)get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  get_session_stateCopy = get_session_state;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "get_session_state", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:get_session_stateCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 getStateWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_get_session_state:(id)did_get_session_state service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_get_session_stateCopy = did_get_session_state;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_get_session_state", v23, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_get_session_stateCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      v17 = [v15 objectForKeyedSubscript:@"sessionState"];
      integerValue = [v17 integerValue];

      data = [v15 objectForKeyedSubscript:@"sessionStateInfo"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v22 didGetState:integerValue info:data];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)add_session_data:(id)add_session_data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  add_session_dataCopy = add_session_data;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "add_session_data", v22, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:add_session_dataCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"sessionData"];
      v18 = [v15 objectForKeyedSubscript:@"sessionDataFilename"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v21 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v21 addData:data withFilename:v18];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)get_session_status:(id)get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  get_session_statusCopy = get_session_status;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "get_session_status", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:get_session_statusCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 getSessionStatusWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)sync_session_status:(id)sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  sync_session_statusCopy = sync_session_status;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "sync_session_status", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:sync_session_statusCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 synchronizeSessionStatusWithCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_get_session_status:(id)did_get_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_get_session_statusCopy = did_get_session_status;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_get_session_status", v24, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_get_session_statusCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      v17 = [v15 objectForKeyedSubscript:@"finishedDEDGroups"];
      data = [v17 ded_mapWithBlock:&__block_literal_global_67];

      v19 = [v15 objectForKeyedSubscript:@"runningDEs"];
      v20 = [v19 ded_mapWithBlock:&__block_literal_global_72];

      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v23 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v23 hasCollected:data isCollecting:v20];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_sync_session_status:(id)did_sync_session_status service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_sync_session_statusCopy = did_sync_session_status;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_sync_session_status", v26, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_sync_session_statusCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      v17 = [v15 objectForKeyedSubscript:@"finishedDEDGroups"];
      data = [v17 ded_mapWithBlock:&__block_literal_global_74];

      v19 = [v15 objectForKeyedSubscript:@"runningDEs"];
      v20 = [v19 ded_mapWithBlock:&__block_literal_global_76];

      v21 = [v15 objectForKeyedSubscript:@"extensionIdentifiers"];
      v22 = [v21 ded_mapWithBlock:&__block_literal_global_81];

      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v25 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v25 hasCollected:data isCollecting:v20 identifiers:v22];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

DEDExtensionIdentifier *__72__DEDIDSInbound_did_sync_session_status_service_account_fromID_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[DEDExtensionIdentifier alloc] initWithString:v2];

  return v3;
}

- (void)adopt_files:(id)adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  adopt_filesCopy = adopt_files;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "adopt_files", v21, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:adopt_filesCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"filesForAdopt"];
      v18 = Log_2(data);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [DEDIDSInbound adopt_files:service:account:fromID:context:];
      }

      delegate = [(DEDIDSInbound *)self delegate];
      v20 = [delegate idsInbound_sessionForIdentifier:connection];
      [v20 adoptFiles:data withCompletion:0];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_adopt_files:(id)did_adopt_files service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_adopt_filesCopy = did_adopt_files;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_adopt_files", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_adopt_filesCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"error"];
      delegate = [(DEDIDSInbound *)self delegate];
      v19 = [delegate idsInbound_sessionForIdentifier:connection];
      [v19 didAdoptFilesWithError:data];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)compression_progress:(id)compression_progress service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  compression_progressCopy = compression_progress;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = [DEDIDSConnection unpackProtobuf:compression_progressCopy];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"sessionID"];
      v15 = Log_2(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDIDSInbound compression_progress:service:account:fromID:context:];
      }

      v16 = [v13 objectForKeyedSubscript:@"compressedBytes"];
      unsignedLongLongValue = [v16 unsignedLongLongValue];

      v18 = [v13 objectForKeyedSubscript:@"totalBytes"];
      unsignedLongLongValue2 = [v18 unsignedLongLongValue];

      delegate = [(DEDIDSInbound *)self delegate];
      v21 = [delegate idsInbound_sessionForIdentifier:v14];
      [v21 compressionProgress:unsignedLongLongValue total:unsignedLongLongValue2];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)upload_progress:(id)upload_progress service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  upload_progressCopy = upload_progress;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = [DEDIDSConnection unpackProtobuf:upload_progressCopy];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"sessionID"];
      v15 = Log_2(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDIDSInbound upload_progress:service:account:fromID:context:];
      }

      v16 = [v13 objectForKeyedSubscript:@"uploadedBytes"];
      longLongValue = [v16 longLongValue];

      v18 = [v13 objectForKeyedSubscript:@"totalBytes"];
      longLongValue2 = [v18 longLongValue];

      delegate = [(DEDIDSInbound *)self delegate];
      v21 = [delegate idsInbound_sessionForIdentifier:v14];
      [v21 uploadProgress:longLongValue total:longLongValue2];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)upload_finished:(id)upload_finished service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  upload_finishedCopy = upload_finished;
  dCopy = d;
  if (isKnownDevice(service, dCopy))
  {
    v12 = [DEDIDSConnection unpackProtobuf:upload_finishedCopy];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"sessionID"];
      v15 = Log_2(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDIDSInbound upload_finished:service:account:fromID:context:];
      }

      v16 = [v13 objectForKeyedSubscript:@"error"];
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:v14];
      [v18 didFinishUploadingWithError:v16];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)commit_session:(id)commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  commit_sessionCopy = commit_session;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "commit_session", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:commit_sessionCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 commit];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_commit_session:(id)did_commit_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_commit_sessionCopy = did_commit_session;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_commit_session", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_commit_sessionCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 didCommit];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)cancel_session:(id)cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  cancel_sessionCopy = cancel_session;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "cancel_session", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:cancel_sessionCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 cancel];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)did_cancel_session:(id)did_cancel_session service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_cancel_sessionCopy = did_cancel_session;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_cancel_session", v19, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_cancel_sessionCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      [delegate2 idsInbound_didAbortSessionWithID:connection];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)schedule_notification:(id)schedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  schedule_notificationCopy = schedule_notification;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "schedule_notification", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:schedule_notificationCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 scheduleNotification];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)unschedule_notification:(id)unschedule_notification service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  unschedule_notificationCopy = unschedule_notification;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "unschedule_notification", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:unschedule_notificationCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 clearNotification];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)present_notification_on_passthrough_daemon:(id)present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  present_notification_on_passthrough_daemonCopy = present_notification_on_passthrough_daemon;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "present_notification_on_passthrough_daemon", v21, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:present_notification_on_passthrough_daemonCopy];
    v15 = v14;
    if (v14)
    {
      connection2 = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:connection2];
      [v18 idsInbound_presentNotificationOnFilingDevice];

      connection = [(DEDIDSInbound *)self connection];
      v20 = [DEDIDSConnection packPayload:v15];
      [connection sendMessage:28 withData:v20 forIDSDeviceID:dCopy isResponse:1];
    }

    else
    {
      connection2 = [(DEDIDSInbound *)self connection];
      connection = [MEMORY[0x277CBEA90] data];
      [connection2 sendMessage:0 withData:connection forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_present_notification_on_passthrough_daemon:(id)did_present_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_present_notification_on_passthrough_daemonCopy = did_present_notification_on_passthrough_daemon;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_present_notification_on_passthrough_daemon", v19, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_present_notification_on_passthrough_daemonCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];
      v18 = [delegate idsInbound_sessionForIdentifier:connection];
      [v18 idsInbound_didPresentNotificationOnFilingDevice];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)remove_notification_on_passthrough_daemon:(id)remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  remove_notification_on_passthrough_daemonCopy = remove_notification_on_passthrough_daemon;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "remove_notification_on_passthrough_daemon", v22, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:remove_notification_on_passthrough_daemonCopy];
    v15 = v14;
    if (v14)
    {
      connection2 = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v19 = [delegate2 idsInbound_sessionForIdentifier:connection2];
        [v19 idsInbound_clearNotificationOnFilingDevice];
      }

      connection = [(DEDIDSInbound *)self connection];
      v21 = [DEDIDSConnection packPayload:v15];
      [connection sendMessage:29 withData:v21 forIDSDeviceID:dCopy isResponse:1];
    }

    else
    {
      connection2 = [(DEDIDSInbound *)self connection];
      connection = [MEMORY[0x277CBEA90] data];
      [connection2 sendMessage:0 withData:connection forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_remove_notification_on_passthrough_daemon:(id)did_remove_notification_on_passthrough_daemon service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_remove_notification_on_passthrough_daemonCopy = did_remove_notification_on_passthrough_daemon;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_remove_notification_on_passthrough_daemon", v20, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_remove_notification_on_passthrough_daemonCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      delegate = [(DEDIDSInbound *)self delegate];

      if (!delegate)
      {
LABEL_9:

        goto LABEL_10;
      }

      delegate2 = [(DEDIDSInbound *)self delegate];
      v19 = [delegate2 idsInbound_sessionForIdentifier:connection];
      [v19 idsInbound_didClearNotificationOnFilingDevice];
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      delegate2 = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:delegate2 forIDSDeviceID:dCopy isResponse:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)load_extension_text_data:(id)load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  load_extension_text_dataCopy = load_extension_text_data;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "load_extension_text_data", v23, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:load_extension_text_dataCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"localization"];
      v18 = [v15 objectForKeyedSubscript:@"extensions"];
      v19 = [v18 ded_flatMapWithBlock:&__block_literal_global_105];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v22 loadTextDataForExtensions:v19 localization:data completion:0];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)did_load_extension_text_data:(id)did_load_extension_text_data service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  did_load_extension_text_dataCopy = did_load_extension_text_data;
  dCopy = d;
  v12 = isKnownDevice(service, dCopy);
  if (v12)
  {
    v13 = Log_2(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "did_load_extension_text_data", v23, 2u);
    }

    v14 = [DEDIDSConnection unpackProtobuf:did_load_extension_text_dataCopy];
    v15 = v14;
    if (v14)
    {
      connection = [v14 objectForKeyedSubscript:@"sessionID"];
      data = [v15 objectForKeyedSubscript:@"localization"];
      v18 = [v15 objectForKeyedSubscript:@"extensions"];
      v19 = [v18 ded_flatMapWithBlock:&__block_literal_global_107];
      delegate = [(DEDIDSInbound *)self delegate];

      if (delegate)
      {
        delegate2 = [(DEDIDSInbound *)self delegate];
        v22 = [delegate2 idsInbound_sessionForIdentifier:connection];
        [v22 didLoadTextDataForExtensions:v19 localization:data];
      }
    }

    else
    {
      connection = [(DEDIDSInbound *)self connection];
      data = [MEMORY[0x277CBEA90] data];
      [connection sendMessage:0 withData:data forIDSDeviceID:dCopy isResponse:0];
    }
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  v8 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingMessage:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dCopy = d;
  v8 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingData:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  v10 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:protobufCopy account:dCopy incomingUnhandledProtobuf:v10 fromID:? context:?];
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  lCopy = l;
  dCopy = d;
  v10 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:incomingResourceAtURL:fromID:context:];
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  v13 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412802;
    v15 = lCopy;
    v16 = 2112;
    v17 = metadataCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_debug_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEBUG, "incoming resource [%@] metadata [%@] from [%@]", &v14, 0x20u);
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  v5 = IDSDelLog(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:activeAccountsChanged:];
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = IDSDelLog(changedCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Devices changed", &v11, 2u);
  }

  delegate = [(DEDIDSInbound *)self delegate];

  if (delegate)
  {
    v9 = [changedCopy ded_mapWithBlock:&__block_literal_global_110];
    delegate2 = [(DEDIDSInbound *)self delegate];
    [delegate2 idsInbound_devicesChanged:v9];
  }

  else
  {
    v9 = IDSDelLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[DEDIDSInbound service:devicesChanged:]";
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "no delegate set for %s", &v11, 0xCu);
    }
  }
}

id __40__DEDIDSInbound_service_devicesChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DEDAddressForIDSDevice();
  v4 = [DEDDevice deviceWithIDSDevice:v2 address:v3];

  return v4;
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = IDSDelLog(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:nearbyDevicesChanged:];
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = IDSDelLog(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:connectedDevicesChanged:];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  identifierCopy = identifier;
  errorCopy = error;
  v13 = DEDIDSConnectionLog(errorCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    serviceDomain = [serviceCopy serviceDomain];
    v17 = 138543874;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = serviceDomain;
    v21 = 1024;
    v22 = successCopy;
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Did send IDS command with guid: [%{public}@] on service [%{public}@], success? [%i]", &v17, 0x1Cu);
  }

  if (errorCopy)
  {
    v16 = IDSDelLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSInbound service:account:identifier:didSendWithSuccess:error:];
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v14 = DEDIDSConnectionLog(errorCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    v18 = 138543874;
    v19 = identifierCopy;
    v20 = 2114;
    v21 = serviceName;
    v22 = 1024;
    v23 = successCopy;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Did send message with guid [%{public}@] on service [%{public}@], success? [%i]", &v18, 0x1Cu);
  }

  if (errorCopy)
  {
    v17 = IDSDelLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSInbound service:account:identifier:didSendWithSuccess:error:];
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier sentBytes:(int64_t)bytes totalBytes:(int64_t)totalBytes
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = IDSDelLog(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    bytesCopy = bytes;
    v13 = 2048;
    totalBytesCopy = totalBytes;
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_debug_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEBUG, "sent bytes [%li] total [%li] identifier [%@]", &v11, 0x20u);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  v7 = IDSDelLog(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:identifier:hasBeenDeliveredWithContext:];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  dCopy = d;
  v10 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:identifier:fromID:hasBeenDeliveredWithContext:];
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d
{
  dCopy = d;
  v7 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:];
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withOptions:(id)options
{
  dCopy = d;
  optionsCopy = options;
  v10 = IDSDelLog(optionsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:withOptions:];
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  dCopy = d;
  v8 = IDSDelLog(dCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:inviteReceivedForSession:fromID:withContext:];
  }
}

- (void)service:(id)service account:(id)account receivedGroupSessionParticipantUpdate:(id)update
{
  v5 = IDSDelLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:account:receivedGroupSessionParticipantUpdate:];
  }
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v4 = IDSDelLog(availableCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound serviceSpaceDidBecomeAvailable:];
  }
}

- (void)serviceAllowedTrafficClassifiersDidReset:(id)reset
{
  resetCopy = reset;
  v4 = IDSDelLog(resetCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound serviceAllowedTrafficClassifiersDidReset:];
  }
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  v8 = IDSDelLog(blockCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDIDSInbound service:didSwitchActivePairedDevice:acknowledgementBlock:];
  }

  blockCopy[2](blockCopy);
}

- (DEDIDSConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (DEDIDSInboundDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)local_device_query_callback:service:account:fromID:context:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)local_device_query_callback:service:account:fromID:context:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)remote_device_query_request:service:account:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)terminate_diagnostic_with_identifier:service:account:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adopt_files:service:account:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)service:(NSObject *)a3 account:incomingUnhandledProtobuf:fromID:context:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 67109378;
  v5[1] = [a1 type];
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_248AD7000, a3, OS_LOG_TYPE_DEBUG, "Incoming unhandled protobuf of type [%hu] from [%@]", v5, 0x12u);
}

- (void)service:account:incomingResourceAtURL:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_0(&dword_248AD7000, v0, v1, "incoming resource [%@] from [%@]");
}

- (void)service:account:identifier:fromID:hasBeenDeliveredWithContext:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_0(&dword_248AD7000, v0, v1, "identifier [%@] from id [%@] has been delivered");
}

- (void)service:account:inviteReceivedForSession:fromID:withOptions:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_0(&dword_248AD7000, v0, v1, "invite received from id [%@] with options [%@]");
}

@end