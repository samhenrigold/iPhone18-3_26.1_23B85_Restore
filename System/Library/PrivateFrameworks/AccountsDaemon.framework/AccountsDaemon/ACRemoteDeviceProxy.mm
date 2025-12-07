@interface ACRemoteDeviceProxy
- (ACRemoteDeviceProxy)init;
- (BOOL)_isValidCommandForOutgoingMessage:(id)message;
- (BOOL)_sendMessageData:(id)data toDestination:(id)destination withPriority:(int64_t)priority bypassDuet:(BOOL)duet transportID:(id *)d error:(id *)error;
- (int64_t)_priorityForMessageCarryingCommand:(id)command;
- (void)_dequeueCompletionHandlersForMessageWithInternalID:(id)d success:(BOOL)success result:(id)result error:(id)error;
- (void)_dequeueCompletionHandlersForMessageWithTransportID:(id)d success:(BOOL)success result:(id)result error:(id)error;
- (void)_enqueueCompletionHandler:(id)handler forMessageWithInternalID:(id)d transportID:(id)iD;
- (void)_sendReplyForMessage:(id)message toDestination:(id)destination withSuccess:(BOOL)success result:(id)result error:(id)error;
- (void)sendCommand:(id)command withAccount:(id)account options:(id)options completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation ACRemoteDeviceProxy

- (ACRemoteDeviceProxy)init
{
  v21.receiver = self;
  v21.super_class = ACRemoteDeviceProxy;
  v2 = [(ACRemoteDeviceProxy *)&v21 init];
  if (v2)
  {
    v3 = _ACLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ACRemoteDeviceProxy *)v3 init];
    }

    v4 = objc_alloc_init(ACRemoteCommandHandler);
    remoteCommandHandler = v2->_remoteCommandHandler;
    v2->_remoteCommandHandler = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    completionHandlersByInternalMessageID = v2->_completionHandlersByInternalMessageID;
    v2->_completionHandlersByInternalMessageID = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    internalMessageIDsByTransportID = v2->_internalMessageIDsByTransportID;
    v2->_internalMessageIDsByTransportID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    completionHandlersLock = v2->_completionHandlersLock;
    v2->_completionHandlersLock = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.accounts.IDSQ", v12);
    messageSendingQueue = v2->_messageSendingQueue;
    v2->_messageSendingQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.accounts.IDS.commandProcessing", v15);
    commandProcessingQueue = v2->_commandProcessingQueue;
    v2->_commandProcessingQueue = v16;

    v18 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.accountssync"];
    messageSendingService = v2->_messageSendingService;
    v2->_messageSendingService = v18;

    [(IDSService *)v2->_messageSendingService addDelegate:v2 queue:v2->_messageSendingQueue];
  }

  return v2;
}

- (void)sendCommand:(id)command withAccount:(id)account options:(id)options completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v14 = _ACLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteDeviceProxy sendCommand:withAccount:options:completion:];
  }

  v16 = _ACDNotificationSignpostSystem(v15);
  v17 = _ACSignpostCreate();
  v19 = v18;

  v21 = _ACDNotificationSignpostSystem(v20);
  v22 = v21;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 138412546;
    v49 = accountCopy;
    v50 = 2112;
    v51 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SendRemoteCommand", "%@: %@", buf, 0x16u);
  }

  v24 = _ACDNotificationSignpostSystem(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v49 = v17;
    v50 = 2112;
    v51 = accountCopy;
    v52 = 2112;
    v53 = optionsCopy;
    _os_log_debug_impl(&dword_221D2F000, v24, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: SendRemoteCommand %@: %@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke;
  aBlock[3] = &unk_27848CAA8;
  v46 = v17;
  v47 = v19;
  v25 = completionCopy;
  v45 = v25;
  v26 = _Block_copy(aBlock);
  if ([(ACRemoteDeviceProxy *)self _isValidCommandForOutgoingMessage:commandCopy])
  {
    v27 = [ACRemoteDeviceMessage actionMessageWithCommand:commandCopy account:accountCopy options:optionsCopy];
    v28 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CB8EE8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v28 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (([commandCopy isEqual:*MEMORY[0x277CB8EA0]] & 1) == 0 && (objc_msgSend(commandCopy, "isEqual:", *MEMORY[0x277CB8EC8]) & 1) == 0 && (objc_msgSend(commandCopy, "isEqual:", *MEMORY[0x277CB8ED0]) & 1) == 0 && (objc_msgSend(commandCopy, "isEqual:", *MEMORY[0x277CB8ED8]) & 1) == 0 && !objc_msgSend(commandCopy, "isEqual:", *MEMORY[0x277CB8EB8]))
    {
      v31 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v31 = 1;
    [v27 setNeedsReply:1];
LABEL_22:
    data = [v27 data];
    if (data)
    {
      messageSendingQueue = self->_messageSendingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18;
      block[3] = &unk_27848CAD0;
      v36 = optionsCopy;
      selfCopy = self;
      v41 = v26;
      v38 = commandCopy;
      v39 = v27;
      v40 = data;
      v43 = v31;
      v42 = v25;
      dispatch_async(messageSendingQueue, block);

      v34 = v36;
    }

    else
    {
      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:19 userInfo:0];
      (*(v26 + 2))(v26, 0, 0, v34);
    }

    goto LABEL_26;
  }

  v30 = _ACLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = commandCopy;
    _os_log_impl(&dword_221D2F000, v30, OS_LOG_TYPE_DEFAULT, "Command %@ cannot be sent from this platform.", buf, 0xCu);
  }

  v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:20 userInfo:0];
  (*(v26 + 2))(v26, 0, 0, v27);
LABEL_26:
}

void __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  Nanoseconds = _ACSignpostGetNanoseconds();
  v10 = _ACDNotificationSignpostSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[5];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = @"NO";
    if (a2)
    {
      v13 = @"YES";
    }

    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = *&v8;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SendRemoteCommand", "%{public}@ (%@)", &v18, 0x16u);
  }

  v15 = _ACDNotificationSignpostSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134218754;
    v19 = a1[5];
    v20 = 2048;
    v21 = Nanoseconds / 1000000000.0;
    if (a2)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v22 = 2114;
    v23 = v17;
    v24 = 2112;
    v25 = v8;
    _os_log_debug_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: SendRemoteCommand %{public}@ (%@)", &v18, 0x2Au);
  }

  v16 = a1[4];
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v7, v8);
  }
}

void __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CB8EF8]];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
    v4 = [*(*(a1 + 40) + 8) devicesForBTUUID:v3];
    if ([v4 count] != 1)
    {
      v14 = _ACLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 32);
        *buf = 138412802;
        v57 = v4;
        v58 = 2112;
        v59 = v3;
        v60 = 2112;
        v61 = v40;
        _os_log_error_impl(&dword_221D2F000, v14, OS_LOG_TYPE_ERROR, "BTUUID matched 0 or multiple devices, which shouldn't be the case, matches: %@, BTUUID: %@, options: %@", buf, 0x20u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:20 userInfo:0];
      (*(*(a1 + 72) + 16))();

      v6 = v3;
      goto LABEL_52;
    }

    v5 = [v4 anyObject];
    v6 = IDSCopyIDForDevice();
    v7 = _ACLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18_cold_1();
    }

    if (v6)
    {
      goto LABEL_20;
    }
  }

  [*(*(a1 + 40) + 8) linkedDevicesWithRelationship:1];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v53 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v50 + 1) + 8 * v12);
      if ([v13 isActive])
      {
        if ([v13 isLocallyPaired])
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v10)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    v6 = IDSCopyIDForDevice();

    if (!v6)
    {
      goto LABEL_44;
    }

LABEL_20:
    v16 = [*(a1 + 40) _priorityForMessageCarryingCommand:*(a1 + 48)];
    v17 = _ACLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v19 = *(a1 + 56);
      *buf = 138412802;
      v57 = v6;
      v58 = 2112;
      v59 = v18;
      v60 = 2112;
      v61 = v19;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Message is about to be sent to %@ with priority %@: %@", buf, 0x20u);
    }

    v20 = *(a1 + 40);
    v21 = *(a1 + 64);
    v48 = 0;
    v49 = 0;
    v22 = [v20 _sendMessageData:v21 toDestination:v6 withPriority:v16 bypassDuet:1 transportID:&v49 error:&v48];
    v23 = v49;
    v24 = v48;
    if (v22)
    {
      if (!v23)
      {
        v39 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:21 userInfo:0];
        (*(*(a1 + 72) + 16))();

        goto LABEL_51;
      }

      if ([*(a1 + 48) isEqualToString:*MEMORY[0x277CB8EA8]])
      {
        v41 = v24;
        v42 = v23;
        v43 = v2;
        v25 = _ACLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEFAULT, "Command message is deletion. Will also send to non-active paired devices.", buf, 2u);
        }

        v26 = [*(*(a1 + 40) + 8) devices];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v27 = [v26 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v45;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v45 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v44 + 1) + 8 * i);
              if (([v31 isActive] & 1) == 0)
              {
                v32 = IDSCopyIDForDevice();
                if (v32)
                {
                  [*(a1 + 40) _sendMessageData:*(a1 + 64) toDestination:v32 withPriority:v16 bypassDuet:0 transportID:0 error:0];
                }

                else
                {
                  v33 = _ACLogSystem();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v57 = v31;
                    _os_log_error_impl(&dword_221D2F000, v33, OS_LOG_TYPE_ERROR, "IDSCopyIDForDevice failed for inactive paired device: %@", buf, 0xCu);
                  }
                }
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v44 objects:v54 count:16];
          }

          while (v28);
        }

        v23 = v42;
        v2 = v43;
        v24 = v41;
      }

      if (*(a1 + 88) == 1)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 80);
        v36 = [*(a1 + 56) identifier];
        [v34 _enqueueCompletionHandler:v35 forMessageWithInternalID:v36 transportID:v23];

LABEL_51:
        goto LABEL_52;
      }

      v38 = *(*(a1 + 72) + 16);
    }

    else
    {
      v38 = *(*(a1 + 72) + 16);
    }

    v38();
    goto LABEL_51;
  }

LABEL_15:

LABEL_44:
  v37 = _ACLogSystem();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v37, OS_LOG_TYPE_DEFAULT, "Attempted to send remote proxy message with no paired device to target", buf, 2u);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:20 userInfo:0];
  (*(*(a1 + 72) + 16))();
LABEL_52:
}

- (BOOL)_sendMessageData:(id)data toDestination:(id)destination withPriority:(int64_t)priority bypassDuet:(BOOL)duet transportID:(id *)d error:(id *)error
{
  duetCopy = duet;
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  destinationCopy = destination;
  v15 = _ACLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:priority];
    *buf = 138412802;
    v35 = v16;
    v36 = 2112;
    v37 = destinationCopy;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEFAULT, "IDSService send request: %@ bytes to destination %@ with priority %@.", buf, 0x20u);
  }

  messageSendingService = self->_messageSendingService;
  v19 = [MEMORY[0x277CBEB98] setWithObject:destinationCopy];
  v32[0] = *MEMORY[0x277D18580];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:duetCopy];
  v32[1] = *MEMORY[0x277D185A0];
  v33[0] = v20;
  v33[1] = MEMORY[0x277CBEC28];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v30 = 0;
  v31 = 0;
  v22 = [(IDSService *)messageSendingService sendData:dataCopy toDestinations:v19 priority:priority options:v21 identifier:&v31 error:&v30];
  v23 = v31;
  v24 = v30;

  v25 = _ACLogSystem();
  v26 = v25;
  if (v22)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v23;
      _os_log_impl(&dword_221D2F000, v26, OS_LOG_TYPE_DEFAULT, "IDSService send request succeeded. Transport ID for sent message: %@", buf, 0xCu);
    }

    v27 = v23;
    error = d;
    if (!d)
    {
      goto LABEL_12;
    }

LABEL_11:
    *error = v27;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [ACRemoteDeviceProxy _sendMessageData:toDestination:withPriority:bypassDuet:transportID:error:];
  }

  v27 = v24;
  if (error)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v22;
}

- (void)_sendReplyForMessage:(id)message toDestination:(id)destination withSuccess:(BOOL)success result:(id)result error:(id)error
{
  successCopy = success;
  v34[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destinationCopy = destination;
  v14 = [ACRemoteDeviceMessage replyForMessage:messageCopy withSuccess:successCopy result:result error:error];
  data = [v14 data];
  if (data)
  {
    messageSendingService = self->_messageSendingService;
    v17 = [MEMORY[0x277CBEB98] setWithObject:destinationCopy];
    v18 = *MEMORY[0x277D185A0];
    v33[0] = *MEMORY[0x277D18580];
    v33[1] = v18;
    v34[0] = MEMORY[0x277CBEC38];
    v34[1] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v25 = 0;
    v26 = 0;
    v20 = [(IDSService *)messageSendingService sendData:data toDestinations:v17 priority:200 options:v19 identifier:&v26 error:&v25];
    v21 = v26;
    v22 = v25;

    v23 = _ACLogSystem();
    v24 = v23;
    if (v20)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v28 = v14;
        v29 = 2112;
        v30 = messageCopy;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&dword_221D2F000, v24, OS_LOG_TYPE_DEFAULT, "Reply %@ successfully sent in response to message %@. Transport ID: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy _sendMessageData:toDestination:withPriority:bypassDuet:transportID:error:];
    }
  }

  else
  {
    v21 = _ACLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy _sendReplyForMessage:toDestination:withSuccess:result:error:];
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = _ACLogSystem();
  v17 = v16;
  if (!identifierCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy service:v17 account:? identifier:? didSendWithSuccess:? error:?];
    }

    goto LABEL_7;
  }

  if (success)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = identifierCopy;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Success for message with Transport ID %@!", &v18, 0xCu);
    }

LABEL_7:

    goto LABEL_11;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ACRemoteDeviceProxy service:account:identifier:didSendWithSuccess:error:];
  }

  [(ACRemoteDeviceProxy *)self _dequeueCompletionHandlersForMessageWithTransportID:identifierCopy success:0 result:0 error:errorCopy];
LABEL_11:
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteDeviceProxy service:account:incomingData:fromID:context:];
  }

  if (dataCopy)
  {
    v12 = [[ACRemoteDeviceMessage alloc] initWithData:dataCopy];
    if ([(ACRemoteDeviceMessage *)v12 isReply])
    {
      sentMessageIdentifier = [(ACRemoteDeviceMessage *)v12 sentMessageIdentifier];
      v14 = _ACLogSystem();
      p_super = v14;
      if (sentMessageIdentifier)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v12;
          _os_log_impl(&dword_221D2F000, p_super, OS_LOG_TYPE_DEFAULT, "Reply message succesfully received. %@", buf, 0xCu);
        }

        success = [(ACRemoteDeviceMessage *)v12 success];
        p_super = [(ACRemoteDeviceMessage *)v12 result];
        error = [(ACRemoteDeviceMessage *)v12 error];
        [(ACRemoteDeviceProxy *)self _dequeueCompletionHandlersForMessageWithInternalID:sentMessageIdentifier success:success result:p_super error:error];
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACRemoteDeviceProxy service:account:incomingData:fromID:context:];
      }
    }

    else
    {
      v18 = _ACLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEFAULT, "Action message received. Dispatching to handler. %@", buf, 0xCu);
      }

      v19 = os_transaction_create();
      commandProcessingQueue = self->_commandProcessingQueue;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke;
      v21[3] = &unk_27848CB20;
      v22 = v12;
      selfCopy = self;
      v24 = dCopy;
      v25 = v19;
      sentMessageIdentifier = v19;
      dispatch_async(commandProcessingQueue, v21);

      p_super = &v22->super;
    }
  }

  else
  {
    v12 = _ACLogSystem();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy service:? account:? incomingData:? fromID:? context:?];
    }
  }
}

void __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Processing: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 40) + 32);
  v6 = [*(a1 + 32) command];
  v7 = [*(a1 + 32) account];
  v8 = [*(a1 + 32) options];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke_25;
  v15[3] = &unk_27848CAF8;
  *&v9 = *(a1 + 32);
  *(&v9 + 1) = *(a1 + 40);
  v14 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v16 = v14;
  v17 = v12;
  v18 = v2;
  v13 = v2;
  [v5 handleCommand:v6 forAccount:v7 options:v8 completion:v15];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
}

void __67__ACRemoteDeviceProxy_service_account_incomingData_fromID_context___block_invoke_25(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) needsReply];
  v10 = _ACLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Processed message that requires a reply. %@", &v15, 0xCu);
    }

    [*(a1 + 40) _sendReplyForMessage:*(a1 + 32) toDestination:*(a1 + 48) withSuccess:a2 result:v7 error:v8];
  }

  else
  {
    if (v11)
    {
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v15 = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Processed message that does not need a reply. %@. Success: %@. Error: %@", &v15, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

- (void)_enqueueCompletionHandler:(id)handler forMessageWithInternalID:(id)d transportID:(id)iD
{
  handlerCopy = handler;
  dCopy = d;
  iDCopy = iD;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACRemoteDeviceProxy _enqueueCompletionHandler:forMessageWithInternalID:transportID:];
  }

  [(NSLock *)self->_completionHandlersLock lock];
  [(NSMutableDictionary *)self->_internalMessageIDsByTransportID setObject:dCopy forKeyedSubscript:iDCopy];

  v12 = [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID objectForKey:dCopy];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v13 = _Block_copy(handlerCopy);
  [v12 addObject:v13];

  [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID setObject:v12 forKey:dCopy];
  [(NSLock *)self->_completionHandlersLock unlock];
}

- (void)_dequeueCompletionHandlersForMessageWithInternalID:(id)d success:(BOOL)success result:(id)result error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultCopy = result;
  errorCopy = error;
  [(NSLock *)self->_completionHandlersLock lock];
  v12 = [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID objectForKey:dCopy];
  [(NSMutableDictionary *)self->_completionHandlersByInternalMessageID removeObjectForKey:dCopy];
  [(NSLock *)self->_completionHandlersLock unlock];
  v13 = _ACLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Calling out to %@ pending completions about message with ID %@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v20 + 1) + 8 * v19) + 16))(*(*(&v20 + 1) + 8 * v19));
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)_dequeueCompletionHandlersForMessageWithTransportID:(id)d success:(BOOL)success result:(id)result error:(id)error
{
  successCopy = success;
  dCopy = d;
  resultCopy = result;
  errorCopy = error;
  [(NSLock *)self->_completionHandlersLock lock];
  v13 = [(NSMutableDictionary *)self->_internalMessageIDsByTransportID objectForKeyedSubscript:dCopy];
  [(NSLock *)self->_completionHandlersLock unlock];
  if (v13)
  {
    [(ACRemoteDeviceProxy *)self _dequeueCompletionHandlersForMessageWithInternalID:v13 success:successCopy result:resultCopy error:errorCopy];
  }

  else
  {
    v14 = _ACLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ACRemoteDeviceProxy _dequeueCompletionHandlersForMessageWithTransportID:success:result:error:];
    }
  }
}

- (BOOL)_isValidCommandForOutgoingMessage:(id)message
{
  v3 = MEMORY[0x277CBEB98];
  v4 = *MEMORY[0x277CB8EC8];
  v5 = *MEMORY[0x277CB8EB8];
  v6 = *MEMORY[0x277CB8EA0];
  v7 = *MEMORY[0x277CB8ED0];
  v8 = *MEMORY[0x277CB8EA8];
  v9 = *MEMORY[0x277CB8ED8];
  v10 = *MEMORY[0x277CB8EB0];
  v11 = *MEMORY[0x277CB8EC0];
  messageCopy = message;
  v13 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, 0}];
  LOBYTE(v4) = [v13 containsObject:messageCopy];

  return v4;
}

- (int64_t)_priorityForMessageCarryingCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy isEqualToString:*MEMORY[0x277CB8EC8]] & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", *MEMORY[0x277CB8EA0]) & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", *MEMORY[0x277CB8EB0]) & 1) != 0 || (objc_msgSend(commandCopy, "isEqualToString:", *MEMORY[0x277CB8EA8]))
  {
    v4 = 200;
  }

  else if ([commandCopy isEqualToString:*MEMORY[0x277CB8EB8]])
  {
    v4 = 200;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (void)sendCommand:withAccount:options:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136381443;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called (%@, %@)", v3, 0x26u);
}

void __66__ACRemoteDeviceProxy_sendCommand_withAccount_options_completion___block_invoke_18_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_221D2F000, v1, OS_LOG_TYPE_DEBUG, "Resolved target remote device to: %@ from btUUID: %@", v2, 0x16u);
}

- (void)service:account:incomingData:fromID:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136380931;
  OUTLINED_FUNCTION_0_1();
  *(&v1[3] + 2) = 265;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called", v1, 0x12u);
}

- (void)_enqueueCompletionHandler:forMessageWithInternalID:transportID:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136381187;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called (%@)", v1, 0x1Cu);
}

@end