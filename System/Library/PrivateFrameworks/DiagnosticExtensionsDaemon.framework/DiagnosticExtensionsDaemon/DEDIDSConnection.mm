@interface DEDIDSConnection
+ (id)archivedClasses;
+ (id)packPayload:(id)payload;
+ (id)unpackProtobuf:(id)protobuf;
- (BOOL)sendMessage:(int)message withData:(id)data forDevices:(id)devices isResponse:(BOOL)response;
- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceID:(id)d isResponse:(BOOL)response;
- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceIDs:(id)ds isResponse:(BOOL)response;
- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceIDs:(id)ds localIDSDeviceIDs:(id)iDs isResponse:(BOOL)response;
- (DEDClientProtocol)remoteSideDelegate;
- (DEDIDSConnection)initWithController:(id)controller;
- (void)discoverDevicesWithCompletion:(id)completion;
- (void)ids_didStartBugSessionWithInfo:(id)info forID:(id)d;
- (void)ids_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target;
- (void)incomingDeviceReceived:(id)received;
- (void)setDeviceCallback:(id)callback;
@end

@implementation DEDIDSConnection

+ (id)archivedClasses
{
  if (archivedClasses_onceToken_3 != -1)
  {
    +[DEDIDSConnection archivedClasses];
  }

  v3 = archivedClasses__classes_1;

  return v3;
}

void __35__DEDIDSConnection_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v11 = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  v4 = +[DEDDevice archivedClasses];
  [v11 unionSet:v4];

  v5 = +[DEDBugSessionConfiguration archivedClasses];
  [v11 unionSet:v5];

  v6 = +[DEDController archivedClasses];
  [v11 unionSet:v6];

  v7 = +[DEDIDSOutbound archivedClasses];
  [v11 unionSet:v7];

  v8 = +[DEDIDSInbound archivedClasses];
  [v11 unionSet:v8];

  v9 = [MEMORY[0x277CBEB98] setWithSet:v11];
  v10 = archivedClasses__classes_1;
  archivedClasses__classes_1 = v9;
}

+ (id)packPayload:(id)payload
{
  payloadCopy = payload;
  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DEDIDSConnection *)payloadCopy packPayload:v5, v6];
    }

    data = [MEMORY[0x277CBEA90] data];
  }

  else
  {
    data = v4;
  }

  v8 = data;

  return v8;
}

+ (id)unpackProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (protobufCopy && ([protobufCopy data], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x277CCAAC8];
    archivedClasses = [self archivedClasses];
    data = [v5 data];
    v17 = 0;
    v10 = [v7 unarchivedObjectOfClasses:archivedClasses fromData:data error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = +[DEDUtils sharedLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(DEDIDSConnection *)v5 unpackProtobuf:v11, v12];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    }

    dictionary2 = dictionary;
  }

  else
  {
    v14 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DEDIDSConnection *)v5 unpackProtobuf:v14];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  return dictionary2;
}

- (DEDIDSConnection)initWithController:(id)controller
{
  v78[31] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v76.receiver = self;
  v76.super_class = DEDIDSConnection;
  v5 = [(DEDIDSConnection *)&v76 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.ded"];
    service = v5->_service;
    v5->_service = v6;

    v8 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.ded.watch"];
    localService = v5->_localService;
    v5->_localService = v8;

    if (!v5->_service)
    {
      [DEDIDSConnection initWithController:];
    }

    v72 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create("com.apple.diagnosticextensionsd.idsqueue.discovery", v72);
    discovery_queue = v5->_discovery_queue;
    v5->_discovery_queue = v10;

    v12 = dispatch_queue_create("com.apple.diagnosticextensionsd.idsqueue", 0);
    run_queue = v5->_run_queue;
    v5->_run_queue = v12;

    v73 = controllerCopy;
    v14 = [[DEDIDSInbound alloc] initWithConnection:v5 controller:controllerCopy];
    incomingDelegate = v5->_incomingDelegate;
    v5->_incomingDelegate = v14;

    v16 = v5->_run_queue;
    v17 = dispatch_get_global_queue(2, 0);
    dispatch_set_target_queue(v16, v17);

    service = [(DEDIDSConnection *)v5 service];
    [service setProtobufAction:sel_logMalformedMessage forIncomingRequestsOfType:0];

    service2 = [(DEDIDSConnection *)v5 service];
    [service2 setProtobufAction:sel_logMalformedMessage forIncomingResponsesOfType:0];

    localService = [(DEDIDSConnection *)v5 localService];
    [localService setProtobufAction:sel_logMalformedMessage forIncomingRequestsOfType:0];

    localService2 = [(DEDIDSConnection *)v5 localService];
    [localService2 setProtobufAction:sel_logMalformedMessage forIncomingResponsesOfType:0];

    v77[0] = &unk_285B89A78;
    v71 = NSStringFromSelector(sel_remote_device_query_request_service_account_fromID_context_);
    v78[0] = v71;
    v77[1] = &unk_285B89A90;
    v70 = NSStringFromSelector(sel_remote_list_DE_service_account_fromID_context_);
    v78[1] = v70;
    v77[2] = &unk_285B89AA8;
    v69 = NSStringFromSelector(sel_device_supports_diagnostic_extensions_service_account_fromID_context_);
    v78[2] = v69;
    v77[3] = &unk_285B89AC0;
    v68 = NSStringFromSelector(sel_start_diagnostic_with_identifier_service_account_fromID_context_);
    v78[3] = v68;
    v77[4] = &unk_285B89AD8;
    v67 = NSStringFromSelector(sel_finished_diagnostic_with_identifier_service_account_fromID_context_);
    v78[4] = v67;
    v77[5] = &unk_285B89AF0;
    v66 = NSStringFromSelector(sel_start_session_service_account_fromID_context_);
    v78[5] = v66;
    v77[6] = &unk_285B89B08;
    v65 = NSStringFromSelector(sel_did_start_session_service_account_fromID_context_);
    v78[6] = v65;
    v77[7] = &unk_285B89B20;
    v64 = NSStringFromSelector(sel_session_ping_service_account_fromID_context_);
    v78[7] = v64;
    v77[8] = &unk_285B89B38;
    v63 = NSStringFromSelector(sel_session_pong_service_account_fromID_context_);
    v78[8] = v63;
    v77[9] = &unk_285B89B50;
    v62 = NSStringFromSelector(sel_terminate_diagnostic_with_identifier_service_account_fromID_context_);
    v78[9] = v62;
    v77[10] = &unk_285B89B68;
    v61 = NSStringFromSelector(sel_get_session_status_service_account_fromID_context_);
    v78[10] = v61;
    v77[11] = &unk_285B89B80;
    v60 = NSStringFromSelector(sel_did_get_session_status_service_account_fromID_context_);
    v78[11] = v60;
    v77[12] = &unk_285B89B98;
    v59 = NSStringFromSelector(sel_adopt_files_service_account_fromID_context_);
    v78[12] = v59;
    v77[13] = &unk_285B89BB0;
    v58 = NSStringFromSelector(sel_did_adopt_files_service_account_fromID_context_);
    v78[13] = v58;
    v77[14] = &unk_285B89BC8;
    v57 = NSStringFromSelector(sel_upload_progress_service_account_fromID_context_);
    v78[14] = v57;
    v77[15] = &unk_285B89BE0;
    v56 = NSStringFromSelector(sel_commit_session_service_account_fromID_context_);
    v78[15] = v56;
    v77[16] = &unk_285B89BF8;
    v55 = NSStringFromSelector(sel_did_commit_session_service_account_fromID_context_);
    v78[16] = v55;
    v77[17] = &unk_285B89C10;
    v54 = NSStringFromSelector(sel_cancel_session_service_account_fromID_context_);
    v78[17] = v54;
    v77[18] = &unk_285B89C28;
    v53 = NSStringFromSelector(sel_did_cancel_session_service_account_fromID_context_);
    v78[18] = v53;
    v77[19] = &unk_285B89C40;
    v52 = NSStringFromSelector(sel_sync_session_status_service_account_fromID_context_);
    v78[19] = v52;
    v77[20] = &unk_285B89C58;
    v51 = NSStringFromSelector(sel_did_sync_session_status_service_account_fromID_context_);
    v78[20] = v51;
    v77[21] = &unk_285B89C70;
    v50 = NSStringFromSelector(sel_get_session_state_service_account_fromID_context_);
    v78[21] = v50;
    v77[22] = &unk_285B89C88;
    v49 = NSStringFromSelector(sel_did_get_session_state_service_account_fromID_context_);
    v78[22] = v49;
    v77[23] = &unk_285B89CA0;
    v22 = NSStringFromSelector(sel_schedule_notification_service_account_fromID_context_);
    v78[23] = v22;
    v77[24] = &unk_285B89CB8;
    v23 = NSStringFromSelector(sel_unschedule_notification_service_account_fromID_context_);
    v78[24] = v23;
    v77[25] = &unk_285B89CD0;
    v24 = NSStringFromSelector(sel_present_notification_on_passthrough_daemon_service_account_fromID_context_);
    v78[25] = v24;
    v77[26] = &unk_285B89CE8;
    v25 = NSStringFromSelector(sel_remove_notification_on_passthrough_daemon_service_account_fromID_context_);
    v78[26] = v25;
    v77[27] = &unk_285B89D00;
    v26 = NSStringFromSelector(sel_add_session_data_service_account_fromID_context_);
    v78[27] = v26;
    v77[28] = &unk_285B89D18;
    v27 = NSStringFromSelector(sel_load_extension_text_data_service_account_fromID_context_);
    v78[28] = v27;
    v77[29] = &unk_285B89D30;
    v28 = NSStringFromSelector(sel_compression_progress_service_account_fromID_context_);
    v78[29] = v28;
    v77[30] = &unk_285B89D48;
    v29 = NSStringFromSelector(sel_upload_finished_service_account_fromID_context_);
    v78[30] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:31];

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __39__DEDIDSConnection_initWithController___block_invoke;
    v74[3] = &unk_278F662A0;
    v31 = v5;
    v75 = v31;
    [v30 enumerateKeysAndObjectsUsingBlock:v74];
    service3 = [(DEDIDSConnection *)v31 service];
    [service3 setProtobufAction:sel_did_present_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:28];

    service4 = [(DEDIDSConnection *)v31 service];
    [service4 setProtobufAction:sel_did_remove_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:29];

    service5 = [(DEDIDSConnection *)v31 service];
    [service5 setProtobufAction:sel_did_load_extension_text_data_service_account_fromID_context_ forIncomingResponsesOfType:31];

    service6 = [(DEDIDSConnection *)v31 service];
    [service6 setProtobufAction:sel_local_device_query_callback_service_account_fromID_context_ forIncomingResponsesOfType:1];

    localService3 = [(DEDIDSConnection *)v31 localService];
    [localService3 setProtobufAction:sel_local_device_query_callback_service_account_fromID_context_ forIncomingResponsesOfType:1];

    localService4 = [(DEDIDSConnection *)v31 localService];
    [localService4 setProtobufAction:sel_did_present_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:28];

    localService5 = [(DEDIDSConnection *)v31 localService];
    [localService5 setProtobufAction:sel_did_remove_notification_on_passthrough_daemon_service_account_fromID_context_ forIncomingResponsesOfType:29];

    localService6 = [(DEDIDSConnection *)v31 localService];
    [localService6 setProtobufAction:sel_did_load_extension_text_data_service_account_fromID_context_ forIncomingResponsesOfType:31];

    service7 = [(DEDIDSConnection *)v31 service];
    incomingDelegate = [(DEDIDSConnection *)v31 incomingDelegate];
    run_queue = [(DEDIDSConnection *)v31 run_queue];
    [service7 addDelegate:incomingDelegate queue:run_queue];

    localService7 = [(DEDIDSConnection *)v31 localService];
    incomingDelegate2 = [(DEDIDSConnection *)v31 incomingDelegate];
    run_queue2 = [(DEDIDSConnection *)v31 run_queue];
    [localService7 addDelegate:incomingDelegate2 queue:run_queue2];

    v47 = DEDIDSConnectionLog(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [DEDIDSConnection initWithController:v47];
    }

    controllerCopy = v73;
  }

  return v5;
}

void __39__DEDIDSConnection_initWithController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 service];
  [v8 setProtobufAction:NSSelectorFromString(v6) forIncomingRequestsOfType:{objc_msgSend(v7, "unsignedShortValue")}];

  v11 = [*(a1 + 32) localService];
  v9 = NSSelectorFromString(v6);

  v10 = [v7 unsignedShortValue];
  [v11 setProtobufAction:v9 forIncomingRequestsOfType:v10];
}

- (void)setDeviceCallback:(id)callback
{
  v7 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = DEDIDSConnectionLog(callbackCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = callbackCopy == 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Setting device status callback. Nil? [%i]", v6, 8u);
  }

  [(DEDIDSConnection *)self setDeviceStatusCallback:callbackCopy];
}

- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceID:(id)d isResponse:(BOOL)response
{
  responseCopy = response;
  v8 = *&message;
  v10 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v12 = [v10 setWithObject:d];
  LOBYTE(responseCopy) = [(DEDIDSConnection *)self sendMessage:v8 withData:dataCopy forIDSDeviceIDs:v12 isResponse:responseCopy];

  return responseCopy;
}

- (BOOL)sendMessage:(int)message withData:(id)data forDevices:(id)devices isResponse:(BOOL)response
{
  responseCopy = response;
  v8 = *&message;
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  devicesCopy = devices;
  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(devicesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = devicesCopy;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = IDSCopyIDForDevice();
        [v12 addObject:{v18, v21}];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = [(DEDIDSConnection *)self sendMessage:v8 withData:dataCopy forIDSDeviceIDs:v12 isResponse:responseCopy];
  return v19;
}

- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceIDs:(id)ds isResponse:(BOOL)response
{
  responseCopy = response;
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dsCopy = ds;
  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
  selfCopy = self;
  localService = [(DEDIDSConnection *)self localService];
  devices = [localService devices];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = dsCopy;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    v34 = v10;
    v35 = v9;
    v32 = v12;
    do
    {
      v16 = 0;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * v16);
        if ([v17 hasPrefix:@"device"] && !objc_msgSend(v10, "count"))
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v18 = devices;
          v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v37;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v36 + 1) + 8 * i);
                v24 = IDSCopyIDForDevice();
                if ([v17 isEqualToString:v24])
                {
                  if ([v23 isActive] && objc_msgSend(v23, "isConnected"))
                  {
                    [v34 addObject:v24];
                    v9 = v35;
                  }

                  else
                  {
                    v9 = v35;
                    [v35 addObject:v17];
                  }

                  goto LABEL_25;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
              v9 = v35;
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          v10 = v34;
          v12 = v32;
        }

        else
        {
          [v9 addObject:v17];
        }

        ++v16;
      }

      while (v16 != v14);
      v25 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
      v14 = v25;
    }

    while (v25);
  }

  v26 = [(DEDIDSConnection *)selfCopy sendMessage:message withData:dataCopy forIDSDeviceIDs:v9 localIDSDeviceIDs:v10 isResponse:responseCopy];
  return v26;
}

- (BOOL)sendMessage:(int)message withData:(id)data forIDSDeviceIDs:(id)ds localIDSDeviceIDs:(id)iDs isResponse:(BOOL)response
{
  responseCopy = response;
  v50[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  v14 = *MEMORY[0x277D18650];
  v50[0] = &unk_285B89D60;
  v15 = *MEMORY[0x277D185C0];
  v49[0] = v14;
  v49[1] = v15;
  v16 = MEMORY[0x277CCABB0];
  dataCopy = data;
  v18 = [v16 numberWithBool:message == 17];
  v50[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

  v20 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:dataCopy type:message isResponse:responseCopy];
  v38 = v19;
  if ([dsCopy count])
  {
    service = [(DEDIDSConnection *)self service];
    v41 = 0;
    v42 = 0;
    [service sendProtobuf:v20 toDestinations:dsCopy priority:300 options:v19 identifier:&v42 error:&v41];
    v22 = v42;
    v23 = v41;

    v25 = DEDIDSConnectionLog(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = DEDIDSCommandString(message);
      *buf = 136446722;
      v44 = v26;
      v45 = 2114;
      v46 = v22;
      v47 = 1024;
      v48 = responseCopy;
      _os_log_impl(&dword_248AD7000, v25, OS_LOG_TYPE_DEFAULT, "Sending IDS command: [%{public}s] with guid: [%{public}@] is response? [%i]", buf, 0x1Cu);
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  if ([iDsCopy count])
  {
    localService = [(DEDIDSConnection *)self localService];
    v39 = 0;
    v40 = 0;
    [localService sendProtobuf:v20 toDestinations:iDsCopy priority:300 options:v38 identifier:&v40 error:&v39];
    v28 = v40;
    v29 = v39;

    v31 = DEDIDSConnectionLog(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = DEDIDSCommandString(message);
      *buf = 136446722;
      v44 = v32;
      v45 = 2114;
      v46 = v28;
      v47 = 1024;
      v48 = responseCopy;
      _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_DEFAULT, "Sending IDS command: [%{public}s] with guid: [%{public}@] is response? [%i] (local service)", buf, 0x1Cu);
    }
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  if ([dsCopy count] && (v33 = objc_msgSend(v22, "length")) == 0)
  {
    v34 = 0;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v33 = [iDsCopy count];
    if (v33)
    {
      v33 = [v28 length];
      v34 = v33 != 0;
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v34 = 1;
      if (!v23)
      {
        goto LABEL_22;
      }
    }
  }

  v35 = DEDIDSConnectionLog(v33);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [DEDIDSConnection sendMessage:withData:forIDSDeviceIDs:localIDSDeviceIDs:isResponse:];
  }

  v34 = 0;
LABEL_22:
  if (v29)
  {
    v36 = DEDIDSConnectionLog(v33);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSConnection sendMessage:withData:forIDSDeviceIDs:localIDSDeviceIDs:isResponse:];
    }

    v34 = 0;
  }

  return v34;
}

- (void)ids_startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20[0] = @"targetDevice";
  v20[1] = @"sessionID";
  v21[0] = target;
  v21[1] = identifier;
  v20[2] = @"config";
  v20[3] = @"callingDevice";
  v21[2] = configuration;
  v21[3] = caller;
  v10 = MEMORY[0x277CBEAC0];
  targetCopy = target;
  callerCopy = caller;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v15 = [v10 dictionaryWithObjects:v21 forKeys:v20 count:4];
  v16 = [DEDIDSConnection packPayload:v15];
  v17 = MEMORY[0x277CBEB98];
  address = [targetCopy address];
  v19 = [v17 setWithObject:address];

  [(DEDIDSConnection *)self sendMessage:8 withData:v16 forIDSDeviceIDs:v19 isResponse:0];
}

- (void)ids_didStartBugSessionWithInfo:(id)info forID:(id)d
{
  dCopy = d;
  v8 = [DEDIDSConnection packPayload:info];
  v7 = [MEMORY[0x277CBEB98] setWithObject:dCopy];

  [(DEDIDSConnection *)self sendMessage:9 withData:v8 forIDSDeviceIDs:v7 isResponse:0];
}

- (void)discoverDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  discovery_queue = [(DEDIDSConnection *)self discovery_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__DEDIDSConnection_discoverDevicesWithCompletion___block_invoke;
  v7[3] = &unk_278F65B20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(discovery_queue, v7);
}

void __50__DEDIDSConnection_discoverDevicesWithCompletion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = DEDIDSConnectionLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Sending device pings", buf, 2u);
  }

  v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  v3 = [*(a1 + 32) service];

  if (v3)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = a1;
    v5 = [*(a1 + 32) service];
    v6 = [v5 devices];

    v7 = v6;
    v8 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
    v9 = v31;
    if (v8)
    {
      v10 = v8;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = DEDAddressForIDSDevice();
          v15 = [DEDDevice deviceWithIDSDevice:v13 address:v14];
          v16 = DEDIDSConnectionLog(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v13 name];
            v18 = [v15 idsIdentifier];
            *buf = 138478339;
            v37 = v17;
            v38 = 2113;
            v39 = v14;
            v40 = 2114;
            v41 = v18;
            _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Ping sent: device name: %{private}@ targetID: %{private}@ | [%{public}@]", buf, 0x20u);

            v9 = v31;
          }

          [v9 addObject:v15];
        }

        v10 = [v7 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v10);
    }

    v19 = v9;
    v20 = *(v30 + 32);
    v21 = [MEMORY[0x277CBEA90] data];
    v22 = MEMORY[0x277CBEB98];
    v23 = [*(v30 + 32) service];
    v24 = [v23 devices];
    v25 = [v22 setWithArray:v24];
    [v20 sendMessage:1 withData:v21 forDevices:v25 isResponse:0];

    v26 = *(v30 + 40);
    v27 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
    (*(v26 + 16))(v26, v27);
  }

  else
  {
    v28 = DEDIDSConnectionLog(v4);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __50__DEDIDSConnection_discoverDevicesWithCompletion___block_invoke_cold_1();
    }

    v29 = *(a1 + 40);
    v27 = objc_opt_new();
    (*(v29 + 16))(v29, v27);
    v19 = v31;
  }
}

- (void)incomingDeviceReceived:(id)received
{
  v15 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  v5 = DEDIDSConnectionLog(receivedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    publicLogDescription = [receivedCopy publicLogDescription];
    identifier = [receivedCopy identifier];
    v11 = 138543618;
    v12 = publicLogDescription;
    v13 = 2114;
    v14 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Got device ping for device [%{public}@] identifier: [%{public}@]", &v11, 0x16u);
  }

  deviceStatusCallback = [(DEDIDSConnection *)self deviceStatusCallback];

  if (deviceStatusCallback)
  {
    deviceStatusCallback2 = [(DEDIDSConnection *)self deviceStatusCallback];
    (*(deviceStatusCallback2 + 16))(deviceStatusCallback2, receivedCopy, 1);
  }

  else
  {
    deviceStatusCallback2 = DEDIDSConnectionLog(v9);
    if (os_log_type_enabled(deviceStatusCallback2, OS_LOG_TYPE_ERROR))
    {
      [DEDIDSConnection incomingDeviceReceived:];
    }
  }
}

- (DEDClientProtocol)remoteSideDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteSideDelegate);

  return WeakRetained;
}

+ (void)packPayload:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_248AD7000, log, OS_LOG_TYPE_ERROR, "error archiving payload [%{public}@] with error: [%{public}@]", &v3, 0x16u);
}

+ (void)unpackProtobuf:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 67109378;
  v5[1] = [a1 type];
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "failed to unpack protobuf data [%hu] with error [%{public}@]", v5, 0x12u);
}

+ (void)unpackProtobuf:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 type];
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "failed to unpack protobuf [%hu] with error: protobuf or protobuf data is nil ", v3, 8u);
}

@end