@interface RTTServer
+ (id)sharedInstance;
- (BOOL)contactIsTTYContact:(id)contact;
- (BOOL)deleteConversationWithCallUID:(id)d;
- (BOOL)isEmergencyNumber:(id)number;
- (RTTServer)init;
- (id)_createSandboxUrlForVoicemailMessage:(id)message;
- (id)valueForTTYSetting:(id)setting;
- (void)_managerAXPIDState:(BOOL)state;
- (void)_takeStackshot;
- (void)cancelCallPromptDisplay;
- (void)dealloc;
- (void)displayCallPromptForContact:(id)contact withCompletion:(id)completion;
- (void)findConversationForCallUID:(id)d andResult:(id)result;
- (void)handleMessageError:(id)error destructive:(BOOL)destructive;
- (void)handleMessageWithPayload:(id)payload forIdentifier:(unint64_t)identifier;
- (void)primeRTTServer;
- (void)registerForRemoteUpdates:(id)updates forCallUID:(id)d;
- (void)registerForServiceUpdates:(id)updates forCallUID:(id)d;
- (void)registerForUpdates:(id)updates forCallUID:(id)d;
- (void)registerForUpdatesWithTranslation:(id)translation forCallUID:(id)d;
- (void)registerResponseBlock:(id)block forUUID:(id)d;
- (void)resetConnection;
- (void)sendConversationUpdate:(id)update;
- (void)sendMessageWithPayload:(id)payload andIdentifier:(unint64_t)identifier;
- (void)sendString:(id)string forCallUID:(id)d;
- (void)sendTranscription:(id)transcription forCallUUID:(id)d isNew:(BOOL)new;
- (void)setShouldSuppressIncomingNotification:(BOOL)notification;
- (void)setSystemOutputAudioMuted:(BOOL)muted withCallID:(id)d;
- (void)setTTYDictionaryAvailability:(BOOL)availability;
- (void)setViewControllerIsVisible:(BOOL)visible withCallID:(id)d;
- (void)shouldRestartOnInterruption:(id)interruption;
- (void)terminateConnectionAndNotify:(BOOL)notify;
@end

@implementation RTTServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[RTTServer sharedInstance];
  }

  v3 = sharedInstance_Server;

  return v3;
}

uint64_t __27__RTTServer_sharedInstance__block_invoke()
{
  sharedInstance_Server = objc_alloc_init(RTTServer);

  return MEMORY[0x2821F96F8]();
}

- (RTTServer)init
{
  v14.receiver = self;
  v14.super_class = RTTServer;
  v2 = [(HCServer *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    databaseResponseBlocks = v2->_databaseResponseBlocks;
    v2->_databaseResponseBlocks = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    dataResponseBlocksLock = v2->_dataResponseBlocksLock;
    v2->_dataResponseBlocksLock = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("tty_common_queue", v7);
    commonRequestQueue = v2->_commonRequestQueue;
    v2->_commonRequestQueue = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v11 = dispatch_queue_create("tty_msg_processing_queue", v10);
    messageProcessingQueue = v2->_messageProcessingQueue;
    v2->_messageProcessingQueue = v11;

    [(RTTServer *)v2 _registerForServerSettingsUpdates];
  }

  return v2;
}

- (void)dealloc
{
  [(RTTServer *)self setActionCompletionBlock:0];
  assertionInCallService = [(RTTServer *)self assertionInCallService];
  if (assertionInCallService)
  {
    v4 = assertionInCallService;
    assertionInCallService2 = [(RTTServer *)self assertionInCallService];
    isValid = [assertionInCallService2 isValid];

    if (isValid)
    {
      assertionInCallService3 = [(RTTServer *)self assertionInCallService];
      [assertionInCallService3 invalidate];
    }
  }

  v8.receiver = self;
  v8.super_class = RTTServer;
  [(HCServer *)&v8 dealloc];
}

- (void)terminateConnectionAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = RTTServer;
  [(HCServer *)&v6 terminateConnectionAndNotify:?];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = notifyCopy;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Terminate and notify about heard: %d", buf, 8u);
  }

  if (!notifyCopy)
  {
    v5 = +[RTTSettings sharedInstance];
    [v5 clearAllServerSettingsCache];
  }
}

void __46__RTTServer__registerForServerSettingsUpdates__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Received server settings update for %@", &v11, 0xCu);
  }

  v4 = +[RTTSettings sharedInstance];
  v5 = [v2 objectForKeyedSubscript:@"preferenceKey"];
  [v4 clearServerSettingsCacheForKey:v5];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = +[RTTSettings sharedInstance];
  v8 = +[RTTSettings sharedInstance];
  v9 = [v2 objectForKeyedSubscript:@"preferenceKey"];
  v10 = [v7 notificationForSelector:{objc_msgSend(v8, "selectorForPreferenceKey:", v9)}];
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v10, 0, 0, 1u);
}

- (void)resetConnection
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Connection reset", buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = RTTServer;
  [(HCServer *)&v14 resetConnection];
  [(NSLock *)self->_dataResponseBlocksLock lock];
  array = [MEMORY[0x277CBEB18] array];
  databaseResponseBlocks = self->_databaseResponseBlocks;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __28__RTTServer_resetConnection__block_invoke;
  v11 = &unk_279AE7B60;
  selfCopy = self;
  v13 = array;
  v6 = array;
  [(NSMutableDictionary *)databaseResponseBlocks enumerateKeysAndObjectsUsingBlock:&v8];
  [(NSMutableDictionary *)self->_databaseResponseBlocks removeObjectsForKeys:v6, v8, v9, v10, v11, selfCopy];
  [(NSLock *)self->_dataResponseBlocksLock unlock];
  v7 = +[RTTSettings sharedInstance];
  [v7 clearAllServerSettingsCache];
}

void __28__RTTServer_resetConnection__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasPrefix:@"axtty_conversation_updates"])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_", @"axtty_conversation_updates"];
    v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_2873FC590];

    v6 = *(a1 + 32);
    v10 = v5;
    v11 = @"axtty_conversation_updates";
    v9 = @"axtty_callID";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v6 sendMessageWithPayload:v8 andIdentifier:0x800000000];
  }

  if ([v3 hasPrefix:@"axtty_settings_key"])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)_managerAXPIDState:(BOOL)state
{
  stateCopy = state;
  if (_AXSVoiceOverTouchEnabled() || _AXSAssistiveTouchScannerEnabled())
  {
    CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.25, 0);
  }

  v4 = getpid();
  if (stateCopy)
  {

    MEMORY[0x282138FC0](v4, 0);
  }

  else
  {

    MEMORY[0x282138FC8](v4, 0);
  }
}

- (void)sendMessageWithPayload:(id)payload andIdentifier:(unint64_t)identifier
{
  payloadCopy = payload;
  if (identifier == 0x200000000000)
  {
    v7 = [(RTTServer *)self _createSandboxUrlForVoicemailMessage:payloadCopy];

    payloadCopy = v7;
  }

  v8.receiver = self;
  v8.super_class = RTTServer;
  [(HCServer *)&v8 sendMessageWithPayload:payloadCopy andIdentifier:identifier];
}

- (void)handleMessageWithPayload:(id)payload forIdentifier:(unint64_t)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v7 = payloadCopy;
  if (identifier > 0xFFFFFFFFFFLL)
  {
    if (identifier == 0x10000000000 || identifier == 0x20000000000)
    {
      goto LABEL_9;
    }

    v8 = 0x40000000000;
  }

  else
  {
    if (identifier == 0x800000000)
    {
LABEL_9:
      v9 = AXLogRTT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v25) = identifier;
        _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Handling message update: %d", buf, 8u);
      }

      messageProcessingQueue = self->_messageProcessingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_55;
      block[3] = &unk_279AE7BB0;
      v15 = v7;
      selfCopy = self;
      identifierCopy = identifier;
      dispatch_async(messageProcessingQueue, block);
      v11 = v15;
LABEL_12:

      goto LABEL_13;
    }

    if (identifier == 0x1000000000)
    {
      v12 = [payloadCopy valueForKey:@"result"];
      v13 = AXLogRTT();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Got result for action sheet: %@", buf, 0xCu);
      }

      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke;
      v21 = &unk_279AE7760;
      v22 = v12;
      selfCopy2 = self;
      v11 = v12;
      AXPerformBlockAsynchronouslyOnMainThread();

      goto LABEL_12;
    }

    v8 = 0x4000000000;
  }

  if (identifier == v8)
  {
    goto LABEL_9;
  }

LABEL_13:
}

void __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) actionCompletionBlock];

    if (v2)
    {
      [*(a1 + 40) _managerAXPIDState:0];
      v3 = [*(a1 + 40) actionCompletionBlock];
      v3[2](v3, [*(a1 + 32) unsignedIntegerValue]);

      v4 = *(a1 + 40);

      [v4 setActionCompletionBlock:0];
    }
  }
}

void *__52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_55(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_2;
  v6[3] = &unk_279AE7B88;
  v6[4] = *(a1 + 40);
  result = [v2 enumerateKeysAndObjectsUsingBlock:v6];
  if (*(a1 + 48) == 0x4000000000)
  {
    [*(*(a1 + 40) + 56) lock];
    v4 = *(*(a1 + 40) + 64);
    v5 = [*(a1 + 32) allKeys];
    [v4 removeObjectsForKeys:v5];

    return [*(*(a1 + 40) + 56) unlock];
  }

  return result;
}

void __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 56) lock];
  v7 = [*(*(a1 + 32) + 64) objectForKey:v5];
  v8 = [v7 copy];

  [*(*(a1 + 32) + 56) unlock];
  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = _Block_copy(v8);
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Handling response for %@ with %@", &v11, 0x16u);
  }

  if (v8)
  {
    (v8)[2](v8, v6);
  }
}

- (void)handleMessageError:(id)error destructive:(BOOL)destructive
{
  errorCopy = error;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [RTTServer handleMessageError:destructive:];
  }
}

- (void)shouldRestartOnInterruption:(id)interruption
{
  v3 = MEMORY[0x277D12B60];
  interruptionCopy = interruption;
  interruptionCopy[2](interruptionCopy, [v3 currentProcessIsInCallService]);
}

- (BOOL)isEmergencyNumber:(id)number
{
  v22 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = [objc_alloc(MEMORY[0x277D6EE28]) init];
  telephonyProvider = [v4 telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];

  v7 = [objc_alloc(MEMORY[0x277D6EF38]) init];
  if ([prioritizedSenderIdentities count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = prioritizedSenderIdentities;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          uUID = [*(*(&v17 + 1) + 8 * i) UUID];
          v14 = [v7 isEmergencyNumberForDigits:numberCopy senderIdentityUUID:uUID];

          if (v14)
          {

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_14;
  }

  if (([v7 isEmergencyNumberForDigits:numberCopy senderIdentityUUID:0] & 1) == 0)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v15 = 1;
LABEL_15:

  return v15;
}

- (void)displayCallPromptForContact:(id)contact withCompletion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  completionCopy = completion;
  if ([(RTTServer *)self isEmergencyNumber:contactCopy])
  {
    if (+[RTTTelephonyUtilities isEmergencyRTTSupported](RTTTelephonyUtilities, "isEmergencyRTTSupported") || +[RTTTelephonyUtilities isTTYSupported])
    {
      v8 = AXLogRTT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = contactCopy;
        _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_DEFAULT, "Contact matching emergency number, dialing through RTT immediately: %@", buf, 0xCu);
      }

      if (+[RTTTelephonyUtilities shouldUseRTT])
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      completionCopy[2](completionCopy, v9);
    }

    else
    {
      v29 = AXLogRTT();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = contactCopy;
        _os_log_impl(&dword_261754000, v29, OS_LOG_TYPE_DEFAULT, "Contact matching emergency number but emergency RTT isn't supported, dialing as voice call immediately: %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(RTTServer *)self _managerAXPIDState:1];
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = contactCopy;
      _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Display call prompt for %@", buf, 0xCu);
    }

    v11 = contactCopy;
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &stru_2873FC590;
    }

    objc_initWeak(&location, self);
    assertionInCallService = [(RTTServer *)self assertionInCallService];
    if (assertionInCallService)
    {
      assertionInCallService2 = [(RTTServer *)self assertionInCallService];
      isValid = [assertionInCallService2 isValid];

      if (isValid)
      {
        assertionInCallService3 = [(RTTServer *)self assertionInCallService];
        [assertionInCallService3 invalidate];
      }
    }

    v17 = [MEMORY[0x277D47008] targetWithPid:getpid()];
    v18 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.Accessibility" name:@"CallTypeSelection"];
    v19 = objc_alloc(MEMORY[0x277D46DB8]);
    v37 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v21 = [v19 initWithExplanation:@"Prevent InCallService from sleeping to receive call type selection" target:v17 attributes:v20];
    [(RTTServer *)self setAssertionInCallService:v21];

    assertionInCallService4 = [(RTTServer *)self assertionInCallService];
    v33 = 0;
    v23 = [assertionInCallService4 acquireWithError:&v33];
    v24 = v33;

    if (v23)
    {
      assertionInCallService6 = AXLogRTT();
      if (os_log_type_enabled(assertionInCallService6, OS_LOG_TYPE_INFO))
      {
        assertionInCallService5 = [(RTTServer *)self assertionInCallService];
        *buf = 138412290;
        v39 = assertionInCallService5;
        _os_log_impl(&dword_261754000, assertionInCallService6, OS_LOG_TYPE_INFO, "Took out assertion so that InCallService doesn't go to sleep on us: %@", buf, 0xCu);
      }
    }

    else
    {
      v27 = AXLogRTT();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [RTTServer displayCallPromptForContact:withCompletion:];
      }

      assertionInCallService6 = [(RTTServer *)self assertionInCallService];
      [assertionInCallService6 invalidate];
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __56__RTTServer_displayCallPromptForContact_withCompletion___block_invoke;
    v30[3] = &unk_279AE7BD8;
    v31 = completionCopy;
    objc_copyWeak(&v32, &location);
    [(RTTServer *)self setActionCompletionBlock:v30];
    v35[0] = @"shouldShow";
    v35[1] = @"title";
    v36[0] = MEMORY[0x277CBEC38];
    v36[1] = v12;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [(RTTServer *)self sendMessageWithPayload:v28 andIdentifier:0x1000000000];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

void __56__RTTServer_displayCallPromptForContact_withCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained assertionInCallService];
  [v2 invalidate];
}

- (void)cancelCallPromptDisplay
{
  [(RTTServer *)self _managerAXPIDState:0];

  [(RTTServer *)self sendMessageWithPayload:&unk_2873FFCD0 andIdentifier:0x1000000000];
}

- (void)setShouldSuppressIncomingNotification:(BOOL)notification
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"shouldSuppress";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:notification];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(RTTServer *)self sendMessageWithPayload:v5 andIdentifier:0x8000000000];
}

- (void)registerResponseBlock:(id)block forUUID:(id)d
{
  blockCopy = block;
  dCopy = d;
  if (blockCopy && [dCopy length])
  {
    v7 = [blockCopy copy];
    [(NSLock *)self->_dataResponseBlocksLock lock];
    databaseResponseBlocks = self->_databaseResponseBlocks;
    v9 = _Block_copy(v7);
    [(NSMutableDictionary *)databaseResponseBlocks setObject:v9 forKey:dCopy];

    [(NSLock *)self->_dataResponseBlocksLock unlock];
  }
}

- (id)_createSandboxUrlForVoicemailMessage:(id)message
{
  messageCopy = message;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:messageCopy];
  v5 = [messageCopy objectForKey:@"axtty_voicemail_message_url"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6EF28]) initWithURL:v5 withExtensionType:0];
    v14 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = AXLogRTT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RTTServer _createSandboxUrlForVoicemailMessage:];
      }

      v10 = messageCopy;
    }

    else
    {
      [v4 setValue:v7 forKey:@"axtty_voicemail_message_url"];
      v10 = v4;
    }

    v12 = v10;
  }

  else
  {
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RTTServer _createSandboxUrlForVoicemailMessage:];
    }

    v12 = messageCopy;
  }

  return v12;
}

- (void)findConversationForCallUID:(id)d andResult:(id)result
{
  dCopy = d;
  resultCopy = result;
  v8 = [dCopy length];
  if (resultCopy && v8)
  {
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__RTTServer_findConversationForCallUID_andResult___block_invoke;
    block[3] = &unk_279AE7C28;
    v11 = dCopy;
    selfCopy = self;
    v13 = resultCopy;
    dispatch_async(v9, block);
  }
}

void __50__RTTServer_findConversationForCallUID_andResult___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_read_action", *(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2;
  v8[3] = &unk_279AE7C00;
  v3 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v3 registerResponseBlock:v8 forUUID:v2];
  v12 = @"axtty_read_action";
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = @"axtty_callID";
  v11 = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v5 sendMessageWithPayload:v7 andIdentifier:0x800000000];
}

void __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"axtty_conversation"];
  v5 = [MEMORY[0x277CBEB68] null];

  if (v4 == v5)
  {
    v11 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAAC8]);
    v7 = [v3 objectForKey:@"axtty_conversation"];
    v13 = 0;
    v8 = [v6 initForReadingFromData:v7 error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = AXLogRTT();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2_cold_1();
      }

      v11 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v11 = [v8 decodeObjectOfClasses:v12 forKey:*MEMORY[0x277CCA308]];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setSystemOutputAudioMuted:(BOOL)muted withCallID:(id)d
{
  mutedCopy = muted;
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v16 = mutedCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "requesting server to toggle mute: %d %@", buf, 0x12u);
  }

  v13 = @"axtty_media_action";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{mutedCopy, @"axtty_value"}];
  v11[1] = @"axtty_callID";
  v12[0] = v8;
  v12[1] = dCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(RTTServer *)self sendMessageWithPayload:v10 andIdentifier:0x80000000000];
}

- (void)setViewControllerIsVisible:(BOOL)visible withCallID:(id)d
{
  visibleCopy = visible;
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = AXLogRTT();
  v8 = v7;
  if (dCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v13 = visibleCopy;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Requesting server to toggle view visibility: %d %@", buf, 0x12u);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithBool:{visibleCopy, @"axtty_callID", @"axtty_is_viewcontrollervisible_key", dCopy}];
    v11[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:2];
    [(RTTServer *)self sendMessageWithPayload:v9 andIdentifier:0x100000000000];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [RTTServer setViewControllerIsVisible:withCallID:];
  }
}

- (void)sendString:(id)string forCallUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D12B60];
  dCopy = d;
  stringCopy = string;
  currentProcessIsRTTExternsion = [v6 currentProcessIsRTTExternsion];
  v15 = @"axtty_conversation_updates";
  v13[0] = @"axtty_callID";
  v13[1] = @"axtty_value";
  v14[0] = dCopy;
  v14[1] = stringCopy;
  v10 = &unk_2873FFDD0;
  if (!currentProcessIsRTTExternsion)
  {
    v10 = &unk_2873FFDE8;
  }

  v13[2] = @"axtty_sender_type";
  v13[3] = @"axtty_message_type";
  v14[2] = v10;
  v14[3] = &unk_2873FFDE8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [(RTTServer *)self sendMessageWithPayload:v12 andIdentifier:0x800000000];
}

- (void)sendTranscription:(id)transcription forCallUUID:(id)d isNew:(BOOL)new
{
  newCopy = new;
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D12B60];
  dCopy = d;
  transcriptionCopy = transcription;
  currentProcessIsRTTExternsion = [v8 currentProcessIsRTTExternsion];
  v18 = @"axtty_conversation_updates";
  v16[0] = @"axtty_callID";
  v16[1] = @"axtty_value";
  v17[0] = dCopy;
  v17[1] = transcriptionCopy;
  v12 = &unk_2873FFDE8;
  if (currentProcessIsRTTExternsion)
  {
    v12 = &unk_2873FFDD0;
  }

  v16[2] = @"axtty_sender_type";
  v16[3] = @"axtty_message_type";
  v13 = &unk_2873FFE00;
  if (newCopy)
  {
    v13 = &unk_2873FFDD0;
  }

  v17[2] = v12;
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  [(RTTServer *)self sendMessageWithPayload:v15 andIdentifier:0x800000000];
}

- (void)sendConversationUpdate:(id)update
{
  v13[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v9 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:updateCopy requiringSecureCoding:1 error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [RTTServer sendConversationUpdate:];
    }
  }

  else
  {
    v11 = v5;
    v12 = @"axtty_write_action";
    v10 = @"axtty_conversation";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(RTTServer *)self sendMessageWithPayload:v8 andIdentifier:0x800000000];
  }
}

- (void)registerForUpdates:(id)updates forCallUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  dCopy = d;
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_conversation_updates", dCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__RTTServer_registerForUpdates_forCallUID___block_invoke;
    v11[3] = &unk_279AE7C00;
    v12 = updatesCopy;
    [(RTTServer *)self registerResponseBlock:v11 forUUID:dCopy];
    v14 = dCopy;
    v15 = @"axtty_conversation_updates";
    v13 = @"axtty_callID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [(RTTServer *)self sendMessageWithPayload:v10 andIdentifier:0x800000000];
  }

  else
  {
    dCopy = AXLogRTT();
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_ERROR))
    {
      [RTTServer registerForUpdates:forCallUID:];
    }
  }
}

void __43__RTTServer_registerForUpdates_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];

  (*(*(a1 + 32) + 16))();
}

- (void)registerForUpdatesWithTranslation:(id)translation forCallUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  translationCopy = translation;
  dCopy = d;
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_conversation_updates", dCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__RTTServer_registerForUpdatesWithTranslation_forCallUID___block_invoke;
    v11[3] = &unk_279AE7C00;
    v12 = translationCopy;
    [(RTTServer *)self registerResponseBlock:v11 forUUID:dCopy];
    v14 = dCopy;
    v15 = @"axtty_conversation_updates";
    v13 = @"axtty_callID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [(RTTServer *)self sendMessageWithPayload:v10 andIdentifier:0x800000000];
  }

  else
  {
    dCopy = AXLogRTT();
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_ERROR))
    {
      [RTTServer registerForUpdates:forCallUID:];
    }
  }
}

void __58__RTTServer_registerForUpdatesWithTranslation_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];
  v5 = [v3 objectForKey:@"axtty_translated_message_text"];

  (*(*(a1 + 32) + 16))();
}

- (void)registerForRemoteUpdates:(id)updates forCallUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  dCopy = d;
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_remote_conversation_updates", dCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__RTTServer_registerForRemoteUpdates_forCallUID___block_invoke;
    v12[3] = &unk_279AE7C00;
    v13 = updatesCopy;
    [(RTTServer *)self registerResponseBlock:v12 forUUID:dCopy];
    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = dCopy;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Registered for remote updates for: %@", buf, 0xCu);
    }

    v15 = dCopy;
    v16 = @"axtty_remote_conversation_updates";
    v14 = @"axtty_callID";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [(RTTServer *)self sendMessageWithPayload:v11 andIdentifier:0x10000000000];
  }

  else
  {
    dCopy = AXLogRTT();
    if (os_log_type_enabled(dCopy, OS_LOG_TYPE_ERROR))
    {
      [RTTServer registerForUpdates:forCallUID:];
    }
  }
}

void __49__RTTServer_registerForRemoteUpdates_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];
  v5 = [v3 objectForKey:@"axtty_translated_message_text"];
  v6 = [v3 objectForKey:@"axtty_message_type"];

  [v6 integerValue];
  (*(*(a1 + 32) + 16))();
}

- (void)registerForServiceUpdates:(id)updates forCallUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  dCopy = d;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_service_message_updates", dCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__RTTServer_registerForServiceUpdates_forCallUID___block_invoke;
  v13[3] = &unk_279AE7C00;
  v14 = updatesCopy;
  v9 = updatesCopy;
  [(RTTServer *)self registerResponseBlock:v13 forUUID:dCopy];
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = dCopy;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Registered for service updates for: %@", buf, 0xCu);
  }

  v16 = dCopy;
  v17 = @"axtty_service_message_updates";
  v15 = @"axtty_callID";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [(RTTServer *)self sendMessageWithPayload:v12 andIdentifier:0x20000000000];
}

void __50__RTTServer_registerForServiceUpdates_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];
  v5 = [v3 objectForKey:@"axtty_set_visible_service_update"];

  [v5 BOOLValue];
  (*(*(a1 + 32) + 16))();
}

- (BOOL)deleteConversationWithCallUID:(id)d
{
  v12[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = @"axtty_delete_action";
  v9 = @"axtty_callID";
  v4 = MEMORY[0x277CBEAC0];
  dCopy2 = d;
  v6 = [v4 dictionaryWithObjects:&dCopy forKeys:&v9 count:1];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(RTTServer *)self sendMessageWithPayload:v7 andIdentifier:0x800000000];
  return 1;
}

- (BOOL)contactIsTTYContact:(id)contact
{
  contactCopy = contact;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  identifier = [contactCopy identifier];
  v6 = [identifier length];

  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    commonRequestQueue = self->_commonRequestQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__RTTServer_contactIsTTYContact___block_invoke;
    v13[3] = &unk_279AE7C78;
    v14 = contactCopy;
    selfCopy = self;
    v16 = v7;
    v17 = &v18;
    v9 = v7;
    dispatch_async(commonRequestQueue, v13);
    v10 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v9, v10);
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __33__RTTServer_contactIsTTYContact___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CBD098];
  v37[0] = *MEMORY[0x277CBD098];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  LODWORD(v3) = [v3 areKeysAvailable:v5];

  if (v3)
  {
    v6 = [*(a1 + 32) phoneNumbers];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __33__RTTServer_contactIsTTYContact___block_invoke_2;
    v29[3] = &unk_279AE79C0;
    v7 = &v30;
    v30 = v2;
    [v6 enumerateObjectsUsingBlock:v29];
  }

  else
  {
    v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v8 = [v6 contactStore];
    v9 = MEMORY[0x277CBDA58];
    v10 = [*(a1 + 32) identifier];
    v36 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v12 = [v9 predicateForContactsWithIdentifiers:v11];
    v35 = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v14 = [v8 unifiedContactsMatchingPredicate:v12 keysToFetch:v13 error:0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __33__RTTServer_contactIsTTYContact___block_invoke_3;
    v27[3] = &unk_279AE79E8;
    v7 = &v28;
    v28 = v2;
    [v14 enumerateObjectsUsingBlock:v27];
  }

  if ([v2 count])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [*(a1 + 32) identifier];
    v17 = [v15 stringWithFormat:@"%@_%@", @"axtty_contact_path_search_action", v16];

    v18 = *(a1 + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __33__RTTServer_contactIsTTYContact___block_invoke_5;
    v25[3] = &unk_279AE7C50;
    v24 = *(a1 + 48);
    v19 = v24;
    v26 = v24;
    [v18 registerResponseBlock:v25 forUUID:v17];
    v33 = @"axtty_contact_path_search_action";
    v31[0] = @"axtty_contactID";
    v20 = *(a1 + 40);
    v21 = [*(a1 + 32) identifier];
    v31[1] = @"axtty_value";
    v32[0] = v21;
    v32[1] = v2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v34 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v20 sendMessageWithPayload:v23 andIdentifier:0x800000000];
  }
}

void __33__RTTServer_contactIsTTYContact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

void __33__RTTServer_contactIsTTYContact___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 phoneNumbers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__RTTServer_contactIsTTYContact___block_invoke_4;
  v4[3] = &unk_279AE79C0;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __33__RTTServer_contactIsTTYContact___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

intptr_t __33__RTTServer_contactIsTTYContact___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"axtty_result"];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)valueForTTYSetting:(id)setting
{
  v32 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  if ([settingCopy length])
  {
    v5 = dispatch_get_current_queue();
    specific = dispatch_queue_get_specific(v5, &valueForTTYSetting__SemaphoreKey);
    if (specific)
    {
      v7 = specific;
    }

    else
    {
      v7 = dispatch_semaphore_create(0);
      dispatch_queue_set_specific(v5, &valueForTTYSetting__SemaphoreKey, v7, destructor);
      v8 = AXLogRTT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = settingCopy;
        _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Making new semaphore for this request: %@", buf, 0xCu);
      }
    }

    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = settingCopy;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Requesting value remotely: %@", buf, 0xCu);
    }

    commonRequestQueue = self->_commonRequestQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __32__RTTServer_valueForTTYSetting___block_invoke;
    v19 = &unk_279AE7CC8;
    selfCopy = self;
    v23 = &v24;
    v21 = settingCopy;
    v11 = v7;
    v22 = v11;
    dispatch_async(commonRequestQueue, &v16);
    v12 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v11, v12))
    {
      v13 = AXLogRTT();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [RTTServer valueForTTYSetting:];
      }

      dispatch_queue_set_specific(v5, &valueForTTYSetting__SemaphoreKey, 0, destructor);
      if ([MEMORY[0x277D12B60] isInternalInstall])
      {
        [(RTTServer *)self _takeStackshot];
      }
    }
  }

  v14 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v14;
}

void __32__RTTServer_valueForTTYSetting___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lld", @"axtty_settings_key", ++valueForTTYSetting__AtomicCount];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__RTTServer_valueForTTYSetting___block_invoke_2;
  v7[3] = &unk_279AE7CA0;
  v10 = *(a1 + 56);
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v3 registerResponseBlock:v7 forUUID:v2];
  v13[0] = @"axtty_uuid";
  v13[1] = @"axtty_settings_key";
  v4 = *(a1 + 40);
  v14[0] = v2;
  v14[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Dispatch requesting: %@", buf, 0xCu);
  }

  [*(a1 + 32) sendMessageWithPayload:v5 andIdentifier:0x4000000000];
}

void __32__RTTServer_valueForTTYSetting___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKey:@"axtty_result"];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Received remote RTT setting: %@={%@}", &v9, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_takeStackshot
{
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Writing out stackshot", v6, 2u);
  }

  v3 = _takeStackshot___gWriteStackshotReportFunction;
  if (_takeStackshot___gWriteStackshotReportFunction)
  {
    goto LABEL_7;
  }

  v4 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  if (v4)
  {
    v5 = v4;
    _takeStackshot___gWriteStackshotReportFunction = dlsym(v4, "WriteStackshotReport");
    dlclose(v5);
  }

  v3 = _takeStackshot___gWriteStackshotReportFunction;
  if (_takeStackshot___gWriteStackshotReportFunction)
  {
LABEL_7:
    v3(@"Timeout waiting for heard to respond", 3131746989);
  }
}

- (void)setTTYDictionaryAvailability:(BOOL)availability
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"shouldBeAvailable";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:availability];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(RTTServer *)self sendMessageWithPayload:v5 andIdentifier:0x2000000000];
}

- (void)primeRTTServer
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"axtty_uuid";
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6[1] = @"axtty_settings_key";
  v7[0] = uUIDString;
  v7[1] = kAXSRTTSettingsVersionPreference;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [(RTTServer *)self sendMessageWithPayload:v5 andIdentifier:0x4000000000];
}

- (void)handleMessageError:destructive:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)displayCallPromptForContact:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createSandboxUrlForVoicemailMessage:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_createSandboxUrlForVoicemailMessage:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setViewControllerIsVisible:withCallID:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendConversationUpdate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_261754000, v1, OS_LOG_TYPE_ERROR, "Failed to archive RTTConversation %@ with error %@", v2, 0x16u);
}

- (void)registerForUpdates:forCallUID:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)valueForTTYSetting:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end