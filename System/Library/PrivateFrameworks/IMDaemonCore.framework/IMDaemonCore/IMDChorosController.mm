@interface IMDChorosController
+ (BOOL)needToOpenChatForService:(int64_t)service questionnaireDictionary:(id)dictionary;
+ (BOOL)supportsService:(int64_t)service;
+ (id)chatSubjectForService:(int64_t)service;
+ (id)conversationIDDefaultsKeyForService:(int64_t)service;
+ (id)conversationIDToUUIDsDefaultsKeyForService:(int64_t)service;
+ (id)generateCTStewieStartMessage:(id)message forService:(int64_t)service error:(id *)error;
+ (id)generatePresentationForEmergencyQuestionnaire:(id)questionnaire;
+ (id)generatePresentationForRoadsideQuestionnaire:(id)questionnaire;
+ (id)generatePresentationForStewieQuestionnaire:(id)questionnaire forService:(int64_t)service;
+ (id)incomingSequenceNumberDefaultsKeyForService:(int64_t)service;
+ (id)nameForService:(int64_t)service;
+ (id)outgoingSequenceNumberDefaultsKeyForService:(int64_t)service;
+ (id)roadsideProviderIDFromChatIdentifier:(id)identifier;
+ (id)sharedController;
+ (int64_t)serviceFromChatIdentifier:(id)identifier;
+ (void)recordOffGridTimeFor:(id)for;
- (BOOL)_createChatIfNecessary:(id)necessary chatIdentifier:(id)identifier service:(int64_t)service;
- (BOOL)_isMessageStewieCompatible:(id)compatible;
- (BOOL)isLiteMessageActiveOverSatellite;
- (BOOL)isSatelliteConnectionActive;
- (BOOL)isStewieActive;
- (IMDChorosController)init;
- (id)_generateLocationUpdateSentStatusItemForChat:(id)chat;
- (id)_generateStopTranscriptSharingStatusItemForChat:(id)chat;
- (id)_simNumber;
- (id)conversationIDToConversationUUIDMapForService:(int64_t)service;
- (id)conversationUUIDForConversationID:(int64_t)d service:(int64_t)service;
- (id)roadsideProviderForChatIdentifier:(id)identifier;
- (id)roadsideProviderForProviderId:(int64_t)id;
- (void)_enableEmergencyMode;
- (void)_openStewieChatWithChatIdentifier:(id)identifier keepTranscriptStatus:(BOOL)status;
- (void)_processMessageSendFailure:(id)failure forSession:(id)session;
- (void)_processMessageSent:(id)sent forSession:(id)session;
- (void)_processReceivedTextMessageForService:(int64_t)service chatIdentifier:(id)identifier conversationID:(int64_t)d sequenceNum:(int64_t)num text:(id)text;
- (void)addObserver:(id)observer;
- (void)connectedServicesChanged:(int64_t)changed;
- (void)locationUpdateDelivered:(id)delivered;
- (void)locationUpdateSent;
- (void)messageReceived:(id)received withMetadata:(id)metadata completionBlock:(id)block;
- (void)openStewieChatWithContext:(id)context;
- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)tool message:(id)message;
- (void)sendEmergencyQuestionnaire:(id)questionnaire;
- (void)sendQuestionnaire:(id)questionnaire;
- (void)sendStewieMessage:(id)message forChat:(id)chat;
- (void)setConversationIDToConversationUUIDMap:(id)map forService:(int64_t)service;
- (void)setConversationUUID:(id)d forConversationID:(int64_t)iD service:(int64_t)service;
- (void)stateChanged:(id)changed;
- (void)stopTranscriptSharingWithChat:(id)chat;
- (void)updateChatPropertiesIfRequiredForChat:(id)chat service:(int64_t)service;
- (void)updateChatPropertiesIfRequiredForEmergencyChat:(id)chat;
- (void)updateChatPropertiesIfRequiredForRoadsideChat:(id)chat;
@end

@implementation IMDChorosController

+ (id)nameForService:(int64_t)service
{
  v3 = @"Unknown service";
  if (service == 8)
  {
    v3 = @"Roadside";
  }

  if (service == 1)
  {
    return @"Emergency";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)supportsService:(int64_t)service
{
  if (service < 1)
  {
    return 0;
  }

  if (((service + 0x7FFFFFFFFFFFFFFFLL) & service) != 0)
  {
    return 0;
  }

  return (+[IMDChorosController supportedServices]& service) != 0;
}

+ (id)outgoingSequenceNumberDefaultsKeyForService:(int64_t)service
{
  if (service == 1)
  {
    return @"stewieSequenceNumber";
  }

  if (service == 8)
  {
    return @"roadsideSequenceNumber";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"outgoingSequenceNumberDefaultsKeyForService: Unsupported service type: %lld", service];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController outgoingSequenceNumberDefaultsKeyForService:]", v6, 114, service];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

+ (id)incomingSequenceNumberDefaultsKeyForService:(int64_t)service
{
  if (service == 1)
  {
    return @"stewieReceivedSequenceNumber";
  }

  if (service == 8)
  {
    return @"roadsideReceivedSequenceNumber";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"incomingSequenceNumberDefaultsKeyForService: Unsupported service type: %lld", service];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController incomingSequenceNumberDefaultsKeyForService:]", v6, 128, service];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

+ (id)conversationIDDefaultsKeyForService:(int64_t)service
{
  if (service == 1)
  {
    return @"stewieConversationID";
  }

  if (service == 8)
  {
    return @"roadsideConversationID";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"conversationIDDefaultsKeyForService: Unsupported service type: %lld", service];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController conversationIDDefaultsKeyForService:]", v6, 142, service];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

+ (id)conversationIDToUUIDsDefaultsKeyForService:(int64_t)service
{
  if (service == 1)
  {
    return @"stewieConversationUUIDs";
  }

  if (service == 8)
  {
    return @"roadsideConversationUUIDs";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"conversationIDToUUIDsDefaultsKeyForService: Unsupported service type: %lld", service];
  v8 = [v5 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController conversationIDToUUIDsDefaultsKeyForService:]", v6, 156, service];

  v9 = IMGetAssertionFailureHandler();
  if (v9)
  {
    v9(v8);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  return 0;
}

- (IMDChorosController)init
{
  v18.receiver = self;
  v18.super_class = IMDChorosController;
  v2 = [(IMDChorosController *)&v18 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  observers = v2->_observers;
  v2->_observers = v3;

  v5 = objc_alloc(MEMORY[0x277CC3728]);
  v6 = +[IMDChorosController supportedServices];
  v7 = [v5 initWithServices:v6 delegate:v2 delegateQueue:MEMORY[0x277D85CD0]];
  coreTelephonyStewieClient = v2->_coreTelephonyStewieClient;
  v2->_coreTelephonyStewieClient = v7;

  v9 = v2->_coreTelephonyStewieClient;
  if (!v9)
  {
    if (!IMOSLoggingEnabled())
    {
      return v2;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      v15 = "Failed to load data client";
LABEL_15:
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, v15, v17, 2u);
    }

LABEL_16:

    return v2;
  }

  start = [(CTStewieDataClient *)v9 start];
  v11 = IMOSLoggingEnabled();
  if ((start & 1) == 0)
  {
    if (!v11)
    {
      return v2;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      v15 = "Failed to start the data client";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Loaded data client", v17, 2u);
    }
  }

  getState = [(CTStewieDataClient *)v2->_coreTelephonyStewieClient getState];
  [IMDChorosController recordOffGridTimeFor:getState];

  return v2;
}

+ (id)sharedController
{
  if (qword_281421228 != -1)
  {
    sub_22B7D739C();
  }

  v3 = qword_281421210;

  return v3;
}

- (void)sendStewieMessage:(id)message forChat:(id)chat
{
  v72[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  v9 = [IMDChorosController serviceFromChatIdentifier:chatIdentifier];

  if ([IMDChorosController supportsService:v9])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Sending Stewie message to CT", buf, 2u);
      }
    }

    [chatCopy updateIsEmergencyChat:v9 == 1];
    body = [messageCopy body];
    string = [body string];

    if (!messageCopy || ![string length])
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D745C();
      }

      goto LABEL_61;
    }

    v13 = +[IMDAccountController sharedInstance];
    v14 = [v13 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v14)
    {
      v27 = IMLogHandleForCategory();
      v28 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7420();
        v28 = v27;
      }

      goto LABEL_60;
    }

    v56 = [(IMDChorosController *)self _isMessageStewieCompatible:messageCopy];
    if (!v56 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Content to send is not allowed", buf, 2u);
      }
    }

    time = [messageCopy time];
    v17 = time == 0;

    if (v17)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [messageCopy setTime:date];
    }

    v58 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:v9];
    v19 = IMGetDomainIntForKey();
    if (v19 + 1 <= 0)
    {
      v20 = -(-(v19 + 1) & 0x1FFF);
    }

    else
    {
      v20 = (v19 + 1) & 0x1FFF;
    }

    IMSetDomainIntForKey();
    [messageCopy setReplaceID:-1];
    v55 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:v9];
    [messageCopy setStewieSequenceNumber:IMGetDomainIntForKey()];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = v20;
        v23 = [IMDChorosController nameForService:v9];
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Generating outgoing text message for %@", buf, 0xCu);

        v20 = v22;
      }
    }

    v24 = [IMDChorosController conversationIDDefaultsKeyForService:v9];
    v57 = IMGetDomainIntForKey();

    v54 = [(IMDChorosController *)self conversationUUIDForConversationID:v57 service:v9];
    if (v9 == 8)
    {
      chatIdentifier2 = [chatCopy chatIdentifier];
      v30 = [IMDChorosController roadsideProviderIDFromChatIdentifier:chatIdentifier2];

      if (v30)
      {
        v67 = 0;
        v53 = [objc_alloc(MEMORY[0x277CC3760]) initWithConversationID:v57 providerId:objc_msgSend(v30 sequenceNum:"integerValue") text:v20 error:{string, &v67}];
        v31 = v67;
      }

      else
      {
        v38 = MEMORY[0x277CCA9B8];
        v71 = *MEMORY[0x277CCA450];
        v72[0] = @"Failed to send message. ProviderId is invalid";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v31 = [v38 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v39];

        v53 = 0;
      }

      v25 = v31;
      if (v31)
      {
LABEL_26:
        v52 = v25;
        v26 = IMLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v49 = [IMDChorosController nameForService:v9];
          localizedDescription = [v52 localizedDescription];
          *buf = 138412802;
          *&buf[4] = v49;
          *&buf[12] = 2112;
          *&buf[14] = localizedDescription;
          *&buf[22] = 2112;
          *&buf[24] = v53;
          _os_log_error_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_ERROR, "Stewie %@ text message reported error: %@, message: %@", buf, 0x20u);
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v9 != 1)
      {
        *buf = xmmword_278706AE0;
        *&buf[16] = *off_278706AF0;
        v70 = 263;
        v32 = MEMORY[0x277CCACA8];
        v33 = IMFileLocationTrimFileName();
        v34 = v70;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"outgoingSequenceNumberDefaultsKeyForService: Unsupported service type: %lld", v9];
        v36 = [v32 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "-[IMDChorosController sendStewieMessage:forChat:]", v33, v34, v35];

        v37 = IMGetAssertionFailureHandler();
        if (v37)
        {
          v37(v36);
        }

        else
        {
          warning = [MEMORY[0x277D19298] warning];
          if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D732C();
          }
        }

        v52 = 0;
        v53 = 0;
        goto LABEL_46;
      }

      v68 = 0;
      v53 = [objc_alloc(MEMORY[0x277CC3740]) initWithConversationID:v57 sequenceNum:v20 emergencyText:string error:&v68];
      v25 = v68;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    v52 = 0;
LABEL_46:
    [messageCopy setStewieConversationID:v57];
    [messageCopy setStewieConversationUUID:v54];
    [messageCopy setIsStewie:1];
    v41 = +[IMDMessageStore sharedInstance];
    LOBYTE(v51) = 0;
    v42 = [v41 storeMessage:messageCopy forceReplace:0 modifyError:0 modifyFlags:1 flagMask:objc_msgSend(messageCopy updateMessageCache:"flags") calculateUnreadCount:{1, v51}];

    guid = [messageCopy guid];
    v44 = !v56;
    if (!guid)
    {
      v44 = 1;
    }

    if ((v44 & 1) != 0 || (-[IMDChorosController _enableEmergencyMode](self, "_enableEmergencyMode"), -[IMDChorosController coreTelephonyStewieClient](self, "coreTelephonyStewieClient"), v45 = objc_claimAutoreleasedReturnValue(), v62[0] = MEMORY[0x277D85DD0], v62[1] = 3221225472, v62[2] = sub_22B63B1B4, v62[3] = &unk_278706B10, v63 = messageCopy, v64 = guid, v65 = self, v66 = v14, v46 = [v45 sendMessage:v53 completion:v62], v45, v66, v64, v63, !v46))
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v53;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "**** Failed sending message (%@)", buf, 0xCu);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B63B3AC;
      block[3] = &unk_2787038F8;
      block[4] = self;
      v60 = guid;
      v61 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Message transmitted to CT: %@", buf, 0xCu);
      }
    }

    v28 = v58;
LABEL_60:

LABEL_61:
    goto LABEL_62;
  }

  string = IMLogHandleForCategory();
  if (os_log_type_enabled(string, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D73B0();
  }

LABEL_62:
}

- (void)_processMessageSent:(id)sent forSession:(id)session
{
  v11 = *MEMORY[0x277D85DE8];
  sentCopy = sent;
  sessionCopy = session;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = sentCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "ACK - Sent message for guid: %@", &v9, 0xCu);
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  [sessionCopy didReceiveMessageDeliveryReceiptForMessageID:sentCopy date:date];
}

- (void)_processMessageSendFailure:(id)failure forSession:(id)session
{
  v10 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  sessionCopy = session;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = failureCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "ACK - Failed to send message for guid: %@", &v8, 0xCu);
    }
  }

  [sessionCopy didReceiveError:4 forMessageID:failureCopy forceError:1];
}

- (BOOL)_isMessageStewieCompatible:(id)compatible
{
  v18 = *MEMORY[0x277D85DE8];
  compatibleCopy = compatible;
  v4 = objc_opt_class();
  if ([v4 isEqual:objc_opt_class()])
  {
    fileTransferGUIDs = [compatibleCopy fileTransferGUIDs];
    v6 = [fileTransferGUIDs count];

    if (v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          fileTransferGUIDs2 = [compatibleCopy fileTransferGUIDs];
          firstObject = [fileTransferGUIDs2 firstObject];
          v16 = 138412290;
          v17 = firstObject;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Emergency stewie is not allowed to send a file: %@", &v16, 0xCu);
        }

LABEL_10:
      }
    }

    else
    {
      payloadData = [compatibleCopy payloadData];
      v14 = [payloadData length];

      if (!v14)
      {
        v11 = 1;
        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          payloadData2 = [compatibleCopy payloadData];
          v16 = 138412290;
          v17 = payloadData2;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Emergency stewie is not allowed to process payload data: %@", &v16, 0xCu);
        }

        goto LABEL_10;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v10 = v17;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Emergency stewie is not of class IMMessageItem: %@", &v16, 0xCu);
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)generatePresentationForEmergencyQuestionnaire:(id)questionnaire
{
  v44 = *MEMORY[0x277D85DE8];
  questionnaireCopy = questionnaire;
  if (questionnaireCopy)
  {
    v4 = questionnaireCopy;
    v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_283F23018];
    v32 = v4;
    v35 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC42D8]];
    v6 = [v35 length];
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = IMDaemonCoreBundle(v6);
      v9 = [v8 __im_localizedStringForKey:@"STEWIE_EMERGENCY_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-SOS"];
      v10 = [v7 localizedStringWithFormat:v9, v35];

      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10];
      [v5 appendAttributedString:v11];

      v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n"];
      [v5 appendAttributedString:v12];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "No emergency type provided", buf, 2u);
        }
      }

      v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
      [v5 appendAttributedString:v16];
    }

    v17 = IMDaemonCoreBundle(v13);
    v33 = [v17 __im_localizedStringForKey:@"STEWIE_EMERGENCY_MESSAGE_INFO" table:@"DaemonCoreLocalizable-SOS"];

    v36 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v33];
    v18 = [v36 length];
    [v36 addAttribute:*MEMORY[0x277D196A8] value:@"boldValue" range:{0, v18}];
    [v5 appendAttributedString:v36];
    v34 = [v32 objectForKeyedSubscript:*MEMORY[0x277CC42E0]];
    if ([v34 count])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v34;
      v19 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v19)
      {
        v20 = *v39;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v38 + 1) + 8 * i);
            v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
            [v5 appendAttributedString:v23];

            v24 = MEMORY[0x277CCACA8];
            v26 = IMDaemonCoreBundle(v25);
            v27 = [v26 __im_localizedStringForKey:@"STEWIE_EMERGENCY_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-SOS"];
            v28 = [v24 localizedStringWithFormat:v27, v22];

            v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v28];
            [v5 appendAttributedString:v29];
          }

          v19 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v19);
      }

      v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v5];
      __im_attributedStringByAssigningMessagePartNumbers = [v30 __im_attributedStringByAssigningMessagePartNumbers];
    }

    else
    {
      v30 = IMLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7498();
      }

      __im_attributedStringByAssigningMessagePartNumbers = 0;
    }

    questionnaireCopy = v32;
  }

  else
  {
    __im_attributedStringByAssigningMessagePartNumbers = 0;
  }

  return __im_attributedStringByAssigningMessagePartNumbers;
}

+ (id)generatePresentationForRoadsideQuestionnaire:(id)questionnaire
{
  v43 = *MEMORY[0x277D85DE8];
  questionnaireCopy = questionnaire;
  if (questionnaireCopy)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_283F23018];
    v4 = +[IMDChorosController reportTypeKey];
    v33 = [questionnaireCopy objectForKeyedSubscript:v4];

    v5 = [v33 length];
    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = IMDaemonCoreBundle(v5);
      v8 = [v7 __im_localizedStringForKey:@"STEWIE_ROADSIDE_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-Avocet"];
      v9 = [v6 localizedStringWithFormat:v8, v33];

      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9];
      [v3 appendAttributedString:v10];

      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n"];
      [v3 appendAttributedString:v11];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No roadside type provided", buf, 2u);
        }
      }

      v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
      [v3 appendAttributedString:v15];
    }

    v16 = IMDaemonCoreBundle(v12);
    v31 = [v16 __im_localizedStringForKey:@"STEWIE_ROADSIDE_MESSAGE_INFO" table:@"DaemonCoreLocalizable-Avocet"];

    v34 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v31];
    v17 = [v34 length];
    [v34 addAttribute:*MEMORY[0x277D196A8] value:@"boldValue" range:{0, v17}];
    [v3 appendAttributedString:v34];
    v32 = [questionnaireCopy objectForKeyedSubscript:*MEMORY[0x277CC42E0]];
    if ([v32 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v32;
      v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v18)
      {
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v37 + 1) + 8 * i);
            v22 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
            [v3 appendAttributedString:v22];

            v23 = MEMORY[0x277CCACA8];
            v25 = IMDaemonCoreBundle(v24);
            v26 = [v25 __im_localizedStringForKey:@"STEWIE_ROADSIDE_MESSAGE_INFO_LIST" table:@"DaemonCoreLocalizable-Avocet"];
            v27 = [v23 localizedStringWithFormat:v26, v21];

            v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v27];
            [v3 appendAttributedString:v28];
          }

          v18 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v18);
      }

      v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v3];
      __im_attributedStringByAssigningMessagePartNumbers = [v29 __im_attributedStringByAssigningMessagePartNumbers];
    }

    else
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D74D4();
      }

      __im_attributedStringByAssigningMessagePartNumbers = 0;
    }
  }

  else
  {
    __im_attributedStringByAssigningMessagePartNumbers = 0;
  }

  return __im_attributedStringByAssigningMessagePartNumbers;
}

+ (id)generatePresentationForStewieQuestionnaire:(id)questionnaire forService:(int64_t)service
{
  questionnaireCopy = questionnaire;
  if (service == 8)
  {
    v6 = [IMDChorosController generatePresentationForRoadsideQuestionnaire:questionnaireCopy];
    goto LABEL_5;
  }

  if (service == 1)
  {
    v6 = [IMDChorosController generatePresentationForEmergencyQuestionnaire:questionnaireCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_12;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"generatePresentationForStewieQuestionnaire: Unsupported service type: %lld", service];
  v11 = [v8 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController generatePresentationForStewieQuestionnaire:forService:]", v9, 448, service];

  v12 = IMGetAssertionFailureHandler();
  if (v12)
  {
    v12(v11);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

+ (id)generateCTStewieStartMessage:(id)message forService:(int64_t)service error:(id *)error
{
  messageCopy = message;
  if (service == 8)
  {
    v8 = MEMORY[0x277CC3758];
    goto LABEL_5;
  }

  if (service == 1)
  {
    v8 = MEMORY[0x277CC3738];
LABEL_5:
    v9 = [[v8 alloc] initWithDictionary:messageCopy error:error];
    goto LABEL_12;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"generateCTStewieStartMessage: Unsupported service type: %lld", service];
  v13 = [v10 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController generateCTStewieStartMessage:forService:error:]", v11, 462, service];

  v14 = IMGetAssertionFailureHandler();
  if (v14)
  {
    v14(v13);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (BOOL)needToOpenChatForService:(int64_t)service questionnaireDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (service == 1 && ([dictionaryCopy objectForKey:*MEMORY[0x277CC42F8]], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No questionnaire answers provided", v11, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)chatSubjectForService:(int64_t)service
{
  if (service == 8)
  {
    v4 = IMDaemonCoreBundle(self);
    v5 = v4;
    v6 = @"STEWIE_ROADSIDE_MESSAGE_SUBJECT";
    v7 = @"DaemonCoreLocalizable-Avocet";
    goto LABEL_5;
  }

  if (service == 1)
  {
    v4 = IMDaemonCoreBundle(self);
    v5 = v4;
    v6 = @"STEWIE_EMERGENCY_MESSAGE_SUBJECT";
    v7 = @"DaemonCoreLocalizable-SOS";
LABEL_5:
    v8 = [v4 __im_localizedStringForKey:v6 table:v7];

    goto LABEL_12;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = IMFileLocationTrimFileName();
  service = [MEMORY[0x277CCACA8] stringWithFormat:@"generateCTStewieStartMessage: Unsupported service type: %lld", service];
  v12 = [v9 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "+[IMDChorosController chatSubjectForService:]", v10, 491, service];

  v13 = IMGetAssertionFailureHandler();
  if (v13)
  {
    v13(v12);
  }

  else
  {
    warning = [MEMORY[0x277D19298] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D732C();
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)updateChatPropertiesIfRequiredForEmergencyChat:(id)chat
{
  v13 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v4 = IMDaemonCoreBundle(chatCopy);
  v5 = [v4 __im_localizedStringForKey:@"STEWIE_EMERGENCY_DISPLAY_NAME" table:@"DaemonCoreLocalizable-SOS"];

  displayName = [chatCopy displayName];
  v7 = [v5 isEqualToString:displayName];

  if ((v7 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = chatCopy;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Updating chat: %@ display name to: %@", &v9, 0x16u);
      }
    }

    [chatCopy updateDisplayName:v5];
  }
}

- (void)updateChatPropertiesIfRequiredForRoadsideChat:(id)chat
{
  v20 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  v6 = [(IMDChorosController *)self roadsideProviderForChatIdentifier:chatIdentifier];

  providerName = [v6 providerName];
  if (!providerName)
  {
    v8 = IMDaemonCoreBundle(0);
    providerName = [v8 __im_localizedStringForKey:@"STEWIE_ROADSIDE_FALLBACK_DISPLAY_NAME" table:@"DaemonCoreLocalizable-Avocet"];
  }

  displayName = [chatCopy displayName];
  v10 = [providerName isEqualToString:displayName];

  if ((v10 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v16 = 138412546;
        v17 = chatCopy;
        v18 = 2112;
        v19 = providerName;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updating chat: %@ display name to: %@", &v16, 0x16u);
      }
    }

    [chatCopy updateDisplayName:providerName];
  }

  bizId = [v6 bizId];
  if (bizId)
  {
    associatedBusinessID = [chatCopy associatedBusinessID];
    v14 = [bizId isEqualToString:associatedBusinessID];

    if ((v14 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = 138412546;
          v17 = chatCopy;
          v18 = 2112;
          v19 = bizId;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Updating chat: %@ associated business ID to: %@", &v16, 0x16u);
        }
      }

      [chatCopy updateAssociatedBusinessID:bizId];
    }
  }
}

- (void)updateChatPropertiesIfRequiredForChat:(id)chat service:(int64_t)service
{
  chatCopy = chat;
  if (service == 8)
  {
    [(IMDChorosController *)self updateChatPropertiesIfRequiredForRoadsideChat:chatCopy];
  }

  else if (service == 1)
  {
    [(IMDChorosController *)self updateChatPropertiesIfRequiredForEmergencyChat:chatCopy];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = IMFileLocationTrimFileName();
    service = [MEMORY[0x277CCACA8] stringWithFormat:@"updateChatPropertiesIfRequiredForChat: Unsupported service type: %lld", service];
    v10 = [v7 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "-[IMDChorosController updateChatPropertiesIfRequiredForChat:service:]", v8, 539, service];

    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }
  }
}

- (void)sendQuestionnaire:(id)questionnaire
{
  v88 = *MEMORY[0x277D85DE8];
  questionnaireCopy = questionnaire;
  if (questionnaireCopy)
  {
    selfCopy = self;
    v5 = +[IMDChorosController serviceTypeKey];
    v6 = [questionnaireCopy objectForKeyedSubscript:v5];

    integerValue = [v6 integerValue];
    if (![IMDChorosController supportsService:integerValue])
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7510();
      }

      goto LABEL_84;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [IMDChorosController nameForService:integerValue];
        *buf = 138412290;
        v87 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "sendQuestionnaire: invoked for service type: %@", buf, 0xCu);
      }
    }

    v10 = +[IMDAccountController sharedInstance];
    v11 = MEMORY[0x277D1A610];
    v12 = [v10 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v12)
    {
      v16 = IMLogHandleForCategory();
      v14 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D76F4();
        v14 = v16;
      }

      goto LABEL_83;
    }

    v13 = [questionnaireCopy objectForKeyedSubscript:*MEMORY[0x277CC4300]];
    v73 = [IMDChorosController generatePresentationForStewieQuestionnaire:v13 forService:integerValue];

    v14 = v73;
    if (!v73)
    {
LABEL_83:

LABEL_84:
      goto LABEL_85;
    }

    v71 = [questionnaireCopy objectForKey:*MEMORY[0x277CC42D0]];
    if (!v71)
    {
      v15 = IMLogHandleForCategory();
      v17 = v15;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_82:

        v14 = v73;
        goto LABEL_83;
      }

      sub_22B7D76B8();
LABEL_36:
      v17 = v15;
      goto LABEL_82;
    }

    if (integerValue == 1)
    {
      v70 = +[IMDChorosController chatIdentifierForEmergency];
      v15 = 0;
    }

    else
    {
      if (integerValue != 8)
      {
        v15 = 0;
LABEL_33:
        v23 = IMLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D767C();
        }

        goto LABEL_36;
      }

      v18 = [questionnaireCopy objectForKeyedSubscript:*MEMORY[0x277CC42F0]];
      v15 = v18;
      if (!v18)
      {
        v15 = IMLogHandleForCategory();
        v17 = v15;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        sub_22B7D7580();
        goto LABEL_36;
      }

      v70 = [IMDChorosController chatIdentifierForRoadside:[v18 integerValue]];
    }

    if (v70)
    {
      v66 = v15;
      integerValue2 = [v71 integerValue];
      if (integerValue2 < 0)
      {
        defaultCenter = IMLogHandleForCategory();
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D75BC();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v87 = integerValue2;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Conversation ID: %ld", buf, 0xCu);
          }
        }

        v21 = [IMDChorosController conversationIDDefaultsKeyForService:integerValue];
        IMSetDomainIntForKey();

        if (v15)
        {
          [v15 integerValue];
          IMSetDomainIntForKey();
        }

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:*MEMORY[0x277D1A6F0] object:0];
      }

      v85 = 0;
      v68 = [IMDChorosController generateCTStewieStartMessage:questionnaireCopy forService:integerValue error:&v85];
      v63 = v85;
      if (v63 || !v68)
      {
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D75F8();
        }
      }

      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [IMDChorosController nameForService:integerValue];
          *buf = 138412290;
          v87 = v26;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Sending %@ start message to CT", buf, 0xCu);
        }
      }

      date = [MEMORY[0x277CBEAA8] date];
      v65 = StringGUID();
      v72 = [objc_alloc(MEMORY[0x277D1AA70]) initWithSender:v70 time:date body:v73 attributes:0 fileTransferGUIDs:0 flags:0x200000005 error:0 guid:v65 threadIdentifier:0];
      v27 = [(IMDChorosController *)selfCopy _createChatIfNecessary:v12 chatIdentifier:v70 service:integerValue];
      v28 = +[IMDChatRegistry sharedInstance];
      account = [v12 account];
      v69 = [v28 existingChatWithIdentifier:v70 account:account];

      if (!v27)
      {
        [(IMDChorosController *)selfCopy updateChatPropertiesIfRequiredForChat:v69 service:integerValue];
      }

      if (integerValue == 1)
      {
        v30 = [questionnaireCopy objectForKeyedSubscript:*MEMORY[0x277CC42E8]];
        integerValue3 = [v30 integerValue];

        v32 = IMOSLoggingEnabled();
        if (integerValue3 == 3)
        {
          if (v32)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Transcript sharing turned on", buf, 2u);
            }
          }

          v34 = 1;
          goto LABEL_62;
        }

        if (v32)
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v87 = integerValue3;
            _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Transcript sharing off: %ld", buf, 0xCu);
          }
        }
      }

      v34 = 0;
LABEL_62:
      [v69 updateEmergencyTranscriptSharingStateChatProperty:v34];
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(IMDChorosController *)selfCopy setConversationUUID:uUID forConversationID:integerValue2 service:integerValue];
      v36 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:integerValue];
      IMSetDomainIntForKey();

      v37 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:integerValue];
      IMSetDomainIntForKey();

      lastAddressedLocalHandle = [v69 lastAddressedLocalHandle];
      if (!lastAddressedLocalHandle)
      {
        lastAddressedLocalHandle = [(IMDChorosController *)selfCopy _simNumber];
      }

      v62 = lastAddressedLocalHandle;
      [v72 setDestinationCallerID:?];
      accountID = [v12 accountID];
      [v72 setAccountID:accountID];

      [v72 setIsStewie:1];
      [v72 setService:*v11];
      [v72 setHandle:v70];
      [v72 setReplaceID:-1];
      [v72 setStewieConversationID:integerValue2];
      [v72 setStewieConversationUUID:uUID];
      v40 = [IMDChorosController chatSubjectForService:integerValue];
      [v72 setSubject:v40];

      v41 = +[IMDMessageStore sharedInstance];
      LOBYTE(v61) = 0;
      v42 = [v41 storeMessage:v72 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x200000005 updateMessageCache:1 calculateUnreadCount:v61];

      v43 = +[IMDChatRegistry sharedInstance];
      [v43 addMessage:v72 toChat:v69];

      v44 = +[IMDChatRegistry sharedInstance];
      [v44 updateStateForChat:v69 hintMessage:v72 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:0];

      [(IMDChorosController *)selfCopy _enableEmergencyMode];
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v87 = v70;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Will broadcast initialEmergencyQuestionnaireReceived for chatIdentifier: %@", buf, 0xCu);
        }
      }

      broadcasterForChatListeners = [v12 broadcasterForChatListeners];
      account2 = [v12 account];
      accountID2 = [account2 accountID];
      chatProperties = [v69 chatProperties];
      groupID = [v69 groupID];
      personCentricID = [v69 personCentricID];
      [broadcasterForChatListeners account:accountID2 chat:v70 style:45 chatProperties:chatProperties groupID:groupID chatPersonCentricID:personCentricID initialEmergencyQuestionnaireReceived:v72];

      if ((IMIsRunningInUnitTesting() & 1) == 0 && [IMDChorosController needToOpenChatForService:integerValue questionnaireDictionary:questionnaireCopy])
      {
        [(IMDChorosController *)selfCopy _openStewieChatWithChatIdentifier:v70 keepTranscriptStatus:0];
      }

      coreTelephonyStewieClient = [(IMDChorosController *)selfCopy coreTelephonyStewieClient];
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = sub_22B63D948;
      v78[3] = &unk_278706BD8;
      v53 = v72;
      v79 = v53;
      v54 = v65;
      v80 = v54;
      v81 = selfCopy;
      v55 = v12;
      v82 = v55;
      v84 = integerValue;
      v56 = v66;
      v83 = v56;
      v57 = [coreTelephonyStewieClient sendMessage:v68 completion:v78];

      v58 = IMOSLoggingEnabled();
      if (v57)
      {
        if (v58)
        {
          v59 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v87 = v68;
            _os_log_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_INFO, "Message transmitted to CT: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v58)
        {
          v60 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v87 = v68;
            _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "**** Failed sending start Stewie message (%@)", buf, 0xCu);
          }
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B63DC4C;
        block[3] = &unk_2787038F8;
        block[4] = selfCopy;
        v76 = v54;
        v77 = v55;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      v17 = v70;
      goto LABEL_82;
    }

    goto LABEL_33;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7730();
  }

LABEL_85:
}

- (void)sendEmergencyQuestionnaire:(id)questionnaire
{
  v5 = [questionnaire mutableCopy];
  v4 = +[IMDChorosController serviceTypeKey];
  [v5 setObject:&unk_283F4EB40 forKeyedSubscript:v4];

  [(IMDChorosController *)self sendQuestionnaire:v5];
}

- (void)stopTranscriptSharingWithChat:(id)chat
{
  v25 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Stopping sharing transcript", buf, 2u);
    }
  }

  v5 = +[IMDAccountController sharedInstance];
  v6 = [v5 anySessionForServiceName:*MEMORY[0x277D1A610]];

  if (v6)
  {
    v22 = 0;
    v20 = [objc_alloc(MEMORY[0x277CC3730]) initWithNotifyOption:1 error:&v22];
    v7 = v22;
    if (v7)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D776C(v7);
      }
    }

    v19 = [(IMDChorosController *)self _generateStopTranscriptSharingStatusItemForChat:chatCopy];
    [(IMDChorosController *)self _enableEmergencyMode];
    broadcasterForChatListeners = [v6 broadcasterForChatListeners];
    account = [v6 account];
    accountID = [account accountID];
    v12 = +[IMDChorosController chatIdentifierForEmergency];
    chatProperties = [chatCopy chatProperties];
    groupID = [chatCopy groupID];
    personCentricID = [chatCopy personCentricID];
    [broadcasterForChatListeners account:accountID chat:v12 style:45 chatProperties:chatProperties groupID:groupID chatPersonCentricID:personCentricID messageReceived:v19];

    coreTelephonyStewieClient = [(IMDChorosController *)self coreTelephonyStewieClient];
    LODWORD(personCentricID) = [coreTelephonyStewieClient sendMessage:v20 completion:&unk_283F1A888];

    v17 = IMOSLoggingEnabled();
    if (personCentricID)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v20;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message transmitted to CT: %@", buf, 0xCu);
        }

LABEL_20:
      }
    }

    else if (v17)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v20;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "**** Failed sending message (%@)", buf, 0xCu);
      }

      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D77F4();
  }

LABEL_22:
}

- (void)_processReceivedTextMessageForService:(int64_t)service chatIdentifier:(id)identifier conversationID:(int64_t)d sequenceNum:(int64_t)num text:(id)text
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  textCopy = text;
  if ([IMDChorosController supportsService:service])
  {
    dCopy = d;
    numCopy = num;
    v14 = +[IMDAccountController sharedInstance];
    v15 = MEMORY[0x277D1A610];
    v16 = [v14 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v16)
    {
      __im_attributedStringByAssigningMessagePartNumbers = IMLogHandleForCategory();
      if (os_log_type_enabled(__im_attributedStringByAssigningMessagePartNumbers, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7918();
      }

      goto LABEL_46;
    }

    if (!textCopy || ![textCopy length])
    {
      __im_attributedStringByAssigningMessagePartNumbers = IMLogHandleForCategory();
      if (os_log_type_enabled(__im_attributedStringByAssigningMessagePartNumbers, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D78DC();
      }

      goto LABEL_46;
    }

    if (!identifierCopy || ![identifierCopy length])
    {
      __im_attributedStringByAssigningMessagePartNumbers = IMLogHandleForCategory();
      if (os_log_type_enabled(__im_attributedStringByAssigningMessagePartNumbers, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D78A0();
      }

      goto LABEL_46;
    }

    mEMORY[0x277D1AA78] = [MEMORY[0x277D1AA78] sharedInstance];
    [mEMORY[0x277D1AA78] acquireAssertionToUnsuspendProcess];

    v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy];
    __im_attributedStringByAssigningMessagePartNumbers = [v18 __im_attributedStringByAssigningMessagePartNumbers];

    date = [MEMORY[0x277CBEAA8] date];
    v20 = objc_alloc(MEMORY[0x277D1AA70]);
    v21 = StringGUID();
    v22 = [v20 initWithSender:identifierCopy time:date body:__im_attributedStringByAssigningMessagePartNumbers attributes:0 fileTransferGUIDs:0 flags:0x200000001 error:0 guid:v21 threadIdentifier:0];

    [(IMDChorosController *)self _createChatIfNecessary:v16 chatIdentifier:identifierCopy service:service];
    [v22 setStewieSequenceNumber:numCopy];
    v39 = [(IMDChorosController *)self conversationUUIDForConversationID:dCopy service:service];
    v23 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:service];
    v38 = v22;
    v24 = IMGetDomainIntForKey();

    if (v24 < numCopy)
    {
      v25 = [IMDChorosController incomingSequenceNumberDefaultsKeyForService:service];
      IMSetDomainIntForKey();
    }

    v26 = +[IMDMessageStore sharedInstance];
    v27 = [v26 messageWithReplaceMessageID:numCopy fromHandle:identifierCopy onService:*v15];

    if (v27)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Found a message with the same sequence number", buf, 2u);
        }
      }

      if ([v27 stewieConversationID] == dCopy)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Found a message with the same Conversation ID", buf, 2u);
          }
        }

        body = [v27 body];
        string = [body string];

        LODWORD(body) = [string isEqualToString:textCopy];
        v31 = IMOSLoggingEnabled();
        if (body)
        {
          if (v31)
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Dropping message", buf, 2u);
            }
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_45;
          }

          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v45 = dCopy;
            v46 = 2048;
            v47 = numCopy;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Message has the same text, conversation ID: %lld and sequence number: %lld", buf, 0x16u);
          }

          goto LABEL_44;
        }

        if (v31)
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Text is not the same, keeping message", buf, 2u);
          }
        }
      }
    }

    string = [(IMDChorosController *)self _simNumber];
    [v38 setDestinationCallerID:string];
    accountID = [v16 accountID];
    [v38 setAccountID:accountID];

    [v38 setIsStewie:1];
    [v38 setReplaceID:numCopy];
    [v38 setStewieConversationID:dCopy];
    [v38 setStewieConversationUUID:v39];
    [(IMDChorosController *)self _enableEmergencyMode];
    mEMORY[0x277D1AA78]2 = [MEMORY[0x277D1AA78] sharedInstance];
    [mEMORY[0x277D1AA78]2 sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:identifierCopy];

    [v16 didReceiveMessage:v38 forChat:identifierCopy style:45 fromIDSID:0];
    if (!IMOSLoggingEnabled())
    {
LABEL_45:

LABEL_46:
      goto LABEL_47;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v37 = [IMDChorosController nameForService:service];
      *buf = 138412802;
      v45 = v37;
      v46 = 2048;
      v47 = dCopy;
      v48 = 2048;
      v49 = numCopy;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Session received Stewie %@ text message with Conversation ID: %lld, sequence number: %lld", buf, 0x20u);
    }

LABEL_44:

    goto LABEL_45;
  }

  v16 = IMLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7830();
  }

LABEL_47:
}

- (void)locationUpdateSent
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = +[IMDChorosController serviceTypeKey];
  v5 = v3;
  v6[0] = &unk_283F4EB40;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(IMDChorosController *)self locationUpdateDelivered:v4];
}

- (void)locationUpdateDelivered:(id)delivered
{
  v27 = *MEMORY[0x277D85DE8];
  deliveredCopy = delivered;
  v5 = +[IMDChorosController serviceTypeKey];
  v6 = [deliveredCopy objectForKeyedSubscript:v5];

  integerValue = [v6 integerValue];
  if ([IMDChorosController supportsService:integerValue])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Location update sent", buf, 2u);
      }
    }

    v9 = +[IMDAccountController sharedInstance];
    v10 = [v9 anySessionForServiceName:*MEMORY[0x277D1A610]];

    if (!v10)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7A3C();
      }

      goto LABEL_30;
    }

    if (integerValue == 8)
    {
      v12 = [deliveredCopy objectForKeyedSubscript:*MEMORY[0x277CC42F0]];
      v13 = v12;
      if (!v12)
      {
        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D79C4();
        }

        goto LABEL_30;
      }

      v11 = +[IMDChorosController chatIdentifierForRoadside:](IMDChorosController, "chatIdentifierForRoadside:", [v12 integerValue]);
    }

    else
    {
      if (integerValue != 1)
      {
        goto LABEL_28;
      }

      v11 = +[IMDChorosController chatIdentifierForEmergency];
    }

    if (v11)
    {
      v14 = [(IMDChorosController *)self _createChatIfNecessary:v10 chatIdentifier:v11 service:integerValue];
      v24 = [v10 chatForChatIdentifier:v11 style:45 updatingAccount:1];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v24;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Location sent with chat %@", buf, 0xCu);
        }
      }

      if (!v14)
      {
        [(IMDChorosController *)self updateChatPropertiesIfRequiredForChat:v24 service:integerValue];
      }

      v23 = [(IMDChorosController *)self _generateLocationUpdateSentStatusItemForChat:v24];
      [(IMDChorosController *)self _enableEmergencyMode];
      broadcasterForChatListeners = [v10 broadcasterForChatListeners];
      account = [v10 account];
      accountID = [account accountID];
      chatProperties = [v24 chatProperties];
      groupID = [v24 groupID];
      personCentricID = [v24 personCentricID];
      [broadcasterForChatListeners account:accountID chat:v11 style:45 chatProperties:chatProperties groupID:groupID chatPersonCentricID:personCentricID messageReceived:v23];

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Location update sent broadcasted to client", buf, 2u);
        }
      }

LABEL_30:
      goto LABEL_31;
    }

LABEL_28:
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7A00();
    }

    goto LABEL_30;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D7954();
  }

LABEL_31:
}

- (void)openStewieChatWithContext:(id)context
{
  contextCopy = context;
  v5 = +[IMDChorosController serviceTypeKey];
  v6 = [contextCopy objectForKeyedSubscript:v5];

  v7 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277D1A700]];
  integerValue = [v7 integerValue];
  integerValue2 = [v6 integerValue];
  if (![IMDChorosController supportsService:integerValue2])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7A78();
    }

    goto LABEL_17;
  }

  if (integerValue2 != 8)
  {
    if (integerValue2 == 1)
    {
      v10 = +[IMDChorosController chatIdentifierForEmergency];
      if (v10)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_10;
  }

  v12 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277CC42F0]];
  if (!v12)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7AE8();
    }

    goto LABEL_17;
  }

  v13 = v12;
  v10 = +[IMDChorosController chatIdentifierForRoadside:](IMDChorosController, "chatIdentifierForRoadside:", [v12 integerValue]);

  if (!v10)
  {
LABEL_10:
    v14 = MEMORY[0x277CCACA8];
    v15 = IMFileLocationTrimFileName();
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"openStewieChatWithContext: Chat identifier cannot be nil if we got here"];
    v11 = [v14 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"NO", "-[IMDChorosController openStewieChatWithContext:]", v15, 982, v16];

    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v11);
    }

    else
    {
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  [(IMDChorosController *)self _openStewieChatWithChatIdentifier:v10 keepTranscriptStatus:integerValue > 0];

LABEL_18:
}

- (void)processReceivedEmergencyMessageFromIMTool:(int64_t)tool message:(id)message
{
  messageCopy = message;
  v7 = +[IMDAccountController sharedInstance];
  v8 = [v7 anySessionForServiceName:*MEMORY[0x277D1A610]];

  v9 = +[IMDChorosController chatIdentifierForEmergency];
  [(IMDChorosController *)self _createChatIfNecessary:v8 chatIdentifier:v9 service:1];

  v10 = [IMDChorosController conversationIDDefaultsKeyForService:1];
  v11 = IMGetDomainIntForKey();

  if (v11 < 0)
  {
    v11 = arc4random_uniform(0xFAu);
    v12 = [IMDChorosController conversationIDDefaultsKeyForService:1];
    IMSetDomainIntForKey();
  }

  v13 = messageCopy;
  v24 = v13;
  if (tool == -1)
  {
    v14 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:1];
    v15 = IMGetDomainIntForKey();
    v16 = v15 + 0x2000;
    if (v15 >= -1)
    {
      v16 = v15 + 1;
    }

    tool = v16 >> 13;

    v17 = [IMDChorosController outgoingSequenceNumberDefaultsKeyForService:1];
    IMSetDomainIntForKey();

    v13 = v24;
  }

  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = @"Are you still breathing?";
  }

  v19 = [objc_alloc(MEMORY[0x277CC3740]) initWithConversationID:v11 sequenceNum:tool emergencyText:v18 error:0];
  v20 = +[IMDChorosController chatIdentifierForEmergency];
  conversationID = [v19 conversationID];
  sequenceNum = [v19 sequenceNum];
  text = [v19 text];
  [(IMDChorosController *)self _processReceivedTextMessageForService:1 chatIdentifier:v20 conversationID:conversationID sequenceNum:sequenceNum text:text];
}

+ (id)roadsideProviderIDFromChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([IMDChorosController serviceFromChatIdentifier:identifierCopy]== 8)
  {
    v4 = [identifierCopy componentsSeparatedByString:@":"];
    if ([v4 count] >= 3)
    {
      v6 = objc_opt_new();
      v7 = [v4 objectAtIndexedSubscript:2];
      v5 = [v6 numberFromString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)roadsideProviderForProviderId:(int64_t)id
{
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v5 = [v4 initWithQueue:MEMORY[0x277D85CD0]];
  v6 = objc_opt_new();
  v13 = 0;
  v7 = [v5 fetchRoadsideProvidersWithContext:v6 error:&v13];
  v8 = v13;

  if (v8)
  {
    providers = IMLogHandleForCategory();
    if (os_log_type_enabled(providers, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7B24();
    }

LABEL_4:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v7)
  {
    providers = IMLogHandleForCategory();
    if (os_log_type_enabled(providers, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7B94();
    }

    goto LABEL_4;
  }

  providers = [v7 providers];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:id];
  v10 = [providers objectForKeyedSubscript:v11];

LABEL_7:

  return v10;
}

- (id)roadsideProviderForChatIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [IMDChorosController roadsideProviderIDFromChatIdentifier:?];
    v5 = v4;
    if (v4)
    {
      v6 = -[IMDChorosController roadsideProviderForProviderId:](self, "roadsideProviderForProviderId:", [v4 integerValue]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)serviceFromChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (IMIsStringStewieEmergency())
  {
    v4 = 1;
  }

  else if (IMIsStringStewieRoadside())
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_createChatIfNecessary:(id)necessary chatIdentifier:(id)identifier service:(int64_t)service
{
  v30 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  identifierCopy = identifier;
  v10 = +[IMDChatRegistry sharedInstance];
  account = [necessaryCopy account];
  v12 = [v10 existingChatForID:identifierCopy account:account];

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"YES";
      if (!v12)
      {
        v14 = @"NO";
      }

      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found existing Stewie %@ chat: %@", buf, 0x16u);
    }
  }

  if (!v12)
  {
    v15 = *MEMORY[0x277D193A8];
    v24[0] = *MEMORY[0x277D192F8];
    v24[1] = v15;
    v25[0] = &unk_283F4EB58;
    v25[1] = identifierCopy;
    v16 = *MEMORY[0x277D193A0];
    v24[2] = *MEMORY[0x277D193C0];
    v24[3] = v16;
    v25[2] = identifierCopy;
    v25[3] = @"us";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
    v23 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [necessaryCopy didJoinChat:identifierCopy style:45 displayName:0 groupID:0 originalGroupID:0 handleInfo:v18 category:0 spamExtensionName:0];
    v19 = +[IMDChatRegistry sharedInstance];
    account2 = [necessaryCopy account];
    v21 = [v19 existingChatWithIdentifier:identifierCopy account:account2];

    [v21 updateIsEmergencyChat:service == 1];
    [v21 updateIsFiltered:0];
    [(IMDChorosController *)self updateChatPropertiesIfRequiredForChat:v21 service:service];
  }

  return v12 == 0;
}

- (id)_simNumber
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctPhoneNumber = [mEMORY[0x277D1A908] ctPhoneNumber];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = ctPhoneNumber;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "My CT Phone Number from subscription context is: %@", &v8, 0xCu);
    }
  }

  v5 = IMNormalizePhoneNumber();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "My CT SIM Phone Number is: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (void)_openStewieChatWithChatIdentifier:(id)identifier keepTranscriptStatus:(BOOL)status
{
  statusCopy = status;
  identifierCopy = identifier;
  if (qword_27D8CFF90 != -1)
  {
    sub_22B7D7BD0();
  }

  v6 = +[IMDAccountController sharedInstance];
  v7 = [v6 anySessionForServiceName:*MEMORY[0x277D1A610]];

  v8 = +[IMDChatRegistry sharedInstance];
  account = [v7 account];
  v10 = [v8 existingChatWithIdentifier:identifierCopy account:account];

  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found an emergency chat, launching messages", buf, 2u);
      }
    }

    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"messages://open?groupid=%@", identifierCopy];
    v14 = identifierCopy;
    if (statusCopy)
    {
      v15 = [(__CFString *)identifierCopy stringByAppendingString:@"&keepTranscriptStatus=true"];

      v14 = v15;
    }
  }

  else
  {
    if (v11)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No emergency chat found, launching Messages to conversation list", v19, 2u);
      }
    }

    v14 = @"messages://compose=false";
  }

  defaultWorkspace = [qword_27D8CFF88 defaultWorkspace];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:v14];
  [defaultWorkspace openURL:v18 configuration:0 completionHandler:0];
}

- (BOOL)isStewieActive
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (!stewieEnabled)
  {
    return 0;
  }

  getState = [(CTStewieDataClient *)self->_coreTelephonyStewieClient getState];
  v6 = 1;
  if (([getState isActiveService:1] & 1) == 0)
  {
    v6 = [getState isActiveService:8];
  }

  return v6;
}

- (BOOL)isSatelliteConnectionActive
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 1;
  }

  getState = [(CTStewieDataClient *)self->_coreTelephonyStewieClient getState];
  activeServices = [getState activeServices];
  transportType = [getState transportType];
  v3 = (activeServices & 0x39) != 0 && transportType == 1;

  return v3;
}

- (BOOL)isLiteMessageActiveOverSatellite
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 1;
  }

  getState = [(CTStewieDataClient *)self->_coreTelephonyStewieClient getState];
  if ([getState isActiveService:16])
  {
    isStewieActiveOverBB = [getState isStewieActiveOverBB];
  }

  else
  {
    isStewieActiveOverBB = 0;
  }

  return isStewieActiveOverBB;
}

- (id)_generateStopTranscriptSharingStatusItemForChat:(id)chat
{
  chatCopy = chat;
  v4 = chatCopy;
  if (!chatCopy)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "generateStopTranscriptSharingStatusItemForChat passed a nil chat, early returning nil", buf, 2u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (([chatCopy isStewieEmergencyChat] & 1) == 0)
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7BE4(v4);
    }

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Generating a Stewie stop sharing item", v21, 2u);
    }
  }

  v6 = objc_alloc(MEMORY[0x277D1ACA8]);
  v7 = +[IMDChorosController chatIdentifierForEmergency];
  date = [MEMORY[0x277CBEAA8] date];
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  v10 = [v6 initWithSender:v7 time:date guid:stringGUID type:7];

  [v10 setService:*MEMORY[0x277D1A610]];
  account = [v4 account];
  accountID = [account accountID];
  [v10 setAccountID:accountID];

  account2 = [v4 account];
  loginID = [account2 loginID];
  [v10 setAccount:loginID];

  v15 = +[IMDMessageStore sharedInstance];
  v16 = [v15 storeItem:v10 forceReplace:0];

  v17 = +[IMDChatStore sharedInstance];
  guid = [v16 guid];
  [v17 addMessageWithGUID:guid toChat:v4];

LABEL_15:

  return v16;
}

- (id)_generateLocationUpdateSentStatusItemForChat:(id)chat
{
  chatCopy = chat;
  v4 = IMOSLoggingEnabled();
  if (chatCopy)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Generating a Stewie location update item", v21, 2u);
      }
    }

    v6 = objc_alloc(MEMORY[0x277D1AA40]);
    chatIdentifier = [chatCopy chatIdentifier];
    date = [MEMORY[0x277CBEAA8] date];
    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    v10 = [v6 initWithSender:chatIdentifier time:date guid:stringGUID type:8];

    [v10 setService:*MEMORY[0x277D1A610]];
    account = [chatCopy account];
    accountID = [account accountID];
    [v10 setAccountID:accountID];

    account2 = [chatCopy account];
    loginID = [account2 loginID];
    [v10 setAccount:loginID];

    v15 = +[IMDMessageStore sharedInstance];
    v16 = [v15 storeItem:v10 forceReplace:0];

    v17 = +[IMDChatStore sharedInstance];
    guid = [v16 guid];
    [v17 addMessageWithGUID:guid toChat:chatCopy];
  }

  else
  {
    if (v4)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "generateLocationUpdateSentStatusItemForChat passed a nil chat, early returning nil", buf, 2u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)conversationIDToConversationUUIDMapForService:(int64_t)service
{
  v3 = [IMDChorosController conversationIDToUUIDsDefaultsKeyForService:service];
  v4 = IMGetCachedDomainValueForKey();

  return v4;
}

- (void)setConversationIDToConversationUUIDMap:(id)map forService:(int64_t)service
{
  mapCopy = map;
  v6 = [IMDChorosController conversationIDToUUIDsDefaultsKeyForService:service];
  IMSetDomainValueForKey();
}

- (id)conversationUUIDForConversationID:(int64_t)d service:(int64_t)service
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [(IMDChorosController *)self _stringKeyForConversationID:?];
  v8 = [(IMDChorosController *)self conversationIDToConversationUUIDMapForService:service];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9 || (uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9]) == 0)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(IMDChorosController *)self setConversationUUID:uUID forConversationID:d service:service];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:d];
        v14 = 138412802;
        v15 = v12;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = uUID;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No existing conversationUUID for conversationID %@ (key %@), assigning %@", &v14, 0x20u);
      }
    }
  }

  return uUID;
}

- (void)setConversationUUID:(id)d forConversationID:(int64_t)iD service:(int64_t)service
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(IMDChorosController *)self conversationIDToConversationUUIDMapForService:service];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = v12;

  v14 = [(IMDChorosController *)self _stringKeyForConversationID:iD];
  uUIDString = [dCopy UUIDString];
  [v13 setObject:uUIDString forKeyedSubscript:v14];

  [(IMDChorosController *)self setConversationIDToConversationUUIDMap:v13 forService:service];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:iD];
      v18 = 138412802;
      v19 = dCopy;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Assigning conversationUUID %@ to conversationID %@ (key %@)", &v18, 0x20u);
    }
  }
}

- (void)_enableEmergencyMode
{
  v19 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Disabling ScreenTime restrictions as sending message to an Emergency number", buf, 2u);
    }
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = qword_27D8CFF98;
  v15 = qword_27D8CFF98;
  if (!qword_27D8CFF98)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_22B641334;
    v17 = &unk_278703200;
    v18 = &v12;
    sub_22B641334(buf);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  sharedMonitor = [v3 sharedMonitor];
  v11 = 0;
  v6 = [sharedMonitor enableEmergencyModeWithError:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 1) == 0 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v6)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Enabling Emergency Mode reported %@ when sending message to an Emergency number with error: %@", buf, 0x16u);
    }
  }
}

- (void)connectedServicesChanged:(int64_t)changed
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      changedCopy = changed;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Connected services: %ld", &v5, 0xCu);
    }
  }
}

- (void)stateChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = changedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stewie state changed to: %@", buf, 0xCu);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 satelliteStateDidChange:{-[IMDChorosController isSatelliteConnectionActive](self, "isSatelliteConnectionActive", v13)}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [IMDChorosController recordOffGridTimeFor:changedCopy];
  if ([(IMDChorosController *)self isSatelliteConnectionActive]&& ![(IMDChorosController *)self wasLastStateSatelliteConnectionActive])
  {
    [(IMDChorosController *)self setWasLastStateSatelliteConnectionActive:1];
    messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
    [messagesAppDomain setInteger:0 forKey:*MEMORY[0x277D1A7C8]];

    messagesAppDomain2 = [MEMORY[0x277CBEBD0] messagesAppDomain];
    [messagesAppDomain2 setInteger:0 forKey:*MEMORY[0x277D1A450]];
  }

  else
  {
    [(IMDChorosController *)self setWasLastStateSatelliteConnectionActive:0, v13];
  }
}

- (void)messageReceived:(id)received withMetadata:(id)metadata completionBlock:(id)block
{
  receivedCopy = received;
  metadataCopy = metadata;
  blockCopy = block;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (stewieEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Received message from Stewie", buf, 2u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Processing received Stewie emergency message", buf, 2u);
        }
      }

      v15 = receivedCopy;
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v16 = +[IMDChorosController chatIdentifierForEmergency];
        conversationID = [v15 conversationID];
        sequenceNum = [v15 sequenceNum];
        text = [v15 text];
        [(IMDChorosController *)self _processReceivedTextMessageForService:1 chatIdentifier:v16 conversationID:conversationID sequenceNum:sequenceNum text:text];
      }

      else
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_22B6411EC;
        v25[3] = &unk_278702FA0;
        v25[4] = self;
        v15 = v15;
        v26 = v15;
        dispatch_sync(MEMORY[0x277D85CD0], v25);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Processing received Stewie Roadside Text Message", buf, 2u);
          }
        }

        v21 = receivedCopy;
        dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
        v15 = +[IMDChorosController chatIdentifierForRoadside:](IMDChorosController, "chatIdentifierForRoadside:", [v21 providerId]);
        conversationID2 = [v21 conversationID];
        sequenceNum2 = [v21 sequenceNum];
        text2 = [v21 text];

        [(IMDChorosController *)self _processReceivedTextMessageForService:8 chatIdentifier:v15 conversationID:conversationID2 sequenceNum:sequenceNum2 text:text2];
      }

      else
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D7C6C(receivedCopy);
        }
      }
    }

    blockCopy[2](blockCopy);
  }
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSMutableSet *)self->_observers addObject:?];
  }
}

+ (void)recordOffGridTimeFor:(id)for
{
  forCopy = for;
  _sSo19IMDChorosControllerC12IMDaemonCoreE17recordOffGridTime3forySo13CTStewieStateC_tFZ_0(forCopy);
}

@end