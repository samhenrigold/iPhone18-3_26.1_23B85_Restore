@interface IMDAvailabilityAutoReplier
- (BOOL)_audience:(unint64_t)_audience allowsRepliesToChat:(id)chat;
- (BOOL)_chatEligibleForAvailabilityInformation:(id)information;
- (BOOL)_contactsContainsParticipants:(id)participants;
- (BOOL)_deviceIsPhone;
- (BOOL)_deviceSupportsSMSAutoReplyForChat:(id)chat;
- (BOOL)_deviceSupportsiMessageAutoReply;
- (BOOL)_favoritesContainsParticipants:(id)participants;
- (BOOL)_hasRecentOutgoingMessagesInChat:(id)chat;
- (BOOL)_haveRecentUrgentMessageInGracePeriodForChat:(id)chat;
- (BOOL)_haveRecentlySentUnavailabilityAutoReplyMessageToChat:(id)chat;
- (BOOL)_isInDrivingFocus;
- (BOOL)_isSMSChat:(id)chat;
- (BOOL)_localDeviceHasSIMMatchingChat:(id)chat;
- (BOOL)_messageIsSOS:(id)s;
- (BOOL)_messageItemSupportsBreakthroughNotification:(id)notification;
- (BOOL)_messageSenderEligibleToReceiveAvailabilityInformation:(id)information;
- (BOOL)_shouldIgnoreDoNotDisturbForMessages:(id)messages inChat:(id)chat;
- (BOOL)_shouldSendTextAutoReplyForChat:(id)chat;
- (BOOL)_sosTransportValidForMessage:(id)message;
- (BOOL)_sosURLMatchInText:(id)text;
- (BOOL)_userIsAvailableToHandle:(id)handle;
- (IMDAutoReplyDelegate)replyDelegate;
- (IMDAvailabilityAutoReplier)init;
- (id)_autoReplyMessageTextWithUrgentBreakthroughInstructions:(BOOL)instructions;
- (id)_customizedAutoReplyMessage;
- (id)_dndHandleForIMDHandle:(id)handle;
- (id)_messageGuidsForMessages:(id)messages;
- (id)_messageItemsSupportingAvailabilityReplyFromItems:(id)items;
- (id)_messageItemsSupportingBreakthroughNotifications:(id)notifications;
- (id)_stringForAutoReplyAudience:(unint64_t)audience;
- (unint64_t)_autoReplyAudience;
- (void)_processMessagesForAvailabilityAutoReply:(id)reply forIncomingMessageFromIDSID:(id)d inChat:(id)chat;
- (void)_sendDeliveredQuietelyForMessages:(id)messages forIncomingMessageFromIDSID:(id)d inChat:(id)chat;
- (void)_sendTextAutoReplyIfNecessaryForMessages:(id)messages withUrgentBreakthroughInstructions:(BOOL)instructions inChat:(id)chat;
- (void)_sendTextAutoReplyToChat:(id)chat withUrgentBreakthroughInstructions:(BOOL)instructions;
- (void)iterateRecentMessagesInChat:(id)chat withBlock:(id)block;
- (void)processMessages:(id)messages inChat:(id)chat fromIDSID:(id)d;
@end

@implementation IMDAvailabilityAutoReplier

- (IMDAvailabilityAutoReplier)init
{
  v8.receiver = self;
  v8.super_class = IMDAvailabilityAutoReplier;
  v2 = [(IMDAvailabilityAutoReplier *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.IMDAvailabilityAutoReplier", 0);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x231897B40](@"CARAutomaticDNDStatus", @"CarKit"));
    automaticDNDStatus = v2->_automaticDNDStatus;
    v2->_automaticDNDStatus = v5;
  }

  return v2;
}

- (void)processMessages:(id)messages inChat:(id)chat fromIDSID:(id)d
{
  messagesCopy = messages;
  chatCopy = chat;
  dCopy = d;
  privateWorkQueue = self->_privateWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B5A0D30;
  v15[3] = &unk_278705748;
  v15[4] = self;
  v16 = messagesCopy;
  v17 = dCopy;
  v18 = chatCopy;
  v12 = chatCopy;
  v13 = dCopy;
  v14 = messagesCopy;
  dispatch_async(privateWorkQueue, v15);
}

- (void)_processMessagesForAvailabilityAutoReply:(id)reply forIncomingMessageFromIDSID:(id)d inChat:(id)chat
{
  replyCopy = reply;
  dCopy = d;
  chatCopy = chat;
  if ([(IMDAvailabilityAutoReplier *)self _chatEligibleForAvailabilityInformation:chatCopy])
  {
    participants = [chatCopy participants];
    firstObject = [participants firstObject];

    if ([(IMDAvailabilityAutoReplier *)self _messageSenderEligibleToReceiveAvailabilityInformation:firstObject])
    {
      v13 = [(IMDAvailabilityAutoReplier *)self _messageItemsSupportingBreakthroughNotifications:replyCopy];
      v14 = [(IMDAvailabilityAutoReplier *)self _shouldIgnoreDoNotDisturbForMessages:v13 inChat:chatCopy];
      v15 = IMOSLoggingEnabled();
      if (v14)
      {
        if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Message items should break through do not disturb, sending did notify recipient receipt, and triggering urgent notifications", buf, 2u);
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_replyDelegate);
        [WeakRetained autoReplier:self sendNotifyRecipientCommandForMessages:v13 inChat:chatCopy];

        v18 = [(IMDAvailabilityAutoReplier *)self _messageGuidsForMessages:v13];
        v19 = objc_loadWeakRetained(&self->_replyDelegate);
        [v19 autoReplier:self receivedUrgentRequestForMessages:v18];
      }

      else
      {
        if (v15)
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v23 = 0;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Message items did not break through do not disturb, attempting to send unavailability receipt or SMS message", v23, 2u);
          }
        }

        v18 = [(IMDAvailabilityAutoReplier *)self _messageItemsSupportingAvailabilityReplyFromItems:replyCopy];
        if ([v18 count])
        {
          [(IMDAvailabilityAutoReplier *)self _sendDeliveredQuietelyForMessages:v18 forIncomingMessageFromIDSID:dCopy inChat:chatCopy];
        }

        else if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v22 = 0;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "No message items support availability reply, ending processing", v22, 2u);
          }
        }
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_27:

        goto LABEL_28;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Message sender not eligible for availability reply or dnd breakthrough", v25, 2u);
      }
    }

    goto LABEL_27;
  }

  if (IMOSLoggingEnabled())
  {
    firstObject = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&dword_22B4CC000, firstObject, OS_LOG_TYPE_INFO, "Chat is not eligible for availability auto replies or dnd breakthrough", v26, 2u);
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (BOOL)_userIsAvailableToHandle:(id)handle
{
  handleCopy = handle;
  v5 = MEMORY[0x231897B40](@"DNDModeConfigurationService", @"DoNotDisturb");
  if ([v5 instancesRespondToSelector:sel_isLocalUserAvailableForContactInActiveMode_error_])
  {
    v6 = [v5 serviceForClientIdentifier:@"com.apple.messages"];
    v7 = [(IMDAvailabilityAutoReplier *)self _dndHandleForIMDHandle:handleCopy];
    v11 = 0;
    LOBYTE(v8) = [v6 isLocalUserAvailableForContactInActiveMode:v7 error:&v11];
    v9 = v11;
    if (v9)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D41CC();
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LODWORD(v8) = IMGetDomainBoolForKeyWithDefaultValue() ^ 1;
  }

  return v8;
}

- (id)_dndHandleForIMDHandle:(id)handle
{
  v3 = [handle ID];
  if (IMStringIsEmail())
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = objc_alloc_init(MEMORY[0x231897B40](@"DNDMutableContactHandle", @"DoNotDisturb"));
  [v5 setType:v4];
  [v5 setValue:v3];
  v6 = [v5 copy];

  return v6;
}

- (BOOL)_chatEligibleForAvailabilityInformation:(id)information
{
  informationCopy = information;
  if ([informationCopy style] == 45)
  {
    if ([informationCopy isBusinessChat])
    {
      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v13 = 0;
          v5 = "Not processing possible availability reply for business chat";
          v6 = &v13;
LABEL_9:
          _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else
    {
      if ([informationCopy isStewieChat])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_11;
        }

        v4 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v12 = 0;
        v5 = "Not processing possible availability reply for stewie chat";
        v6 = &v12;
        goto LABEL_9;
      }

      participants = [informationCopy participants];
      v10 = [participants count];

      if (v10 == 1)
      {
        v7 = 1;
        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v11 = 0;
        v5 = "Not processing possible availability reply for chat with more than one participant";
        v6 = &v11;
        goto LABEL_9;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Not processing possible availability reply for non 1-1 chat";
      v6 = buf;
      goto LABEL_9;
    }

LABEL_10:
  }

LABEL_11:
  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)_messageSenderEligibleToReceiveAvailabilityInformation:(id)information
{
  v14[1] = *MEMORY[0x277D85DE8];
  informationCopy = information;
  v5 = [informationCopy ID];
  if (![v5 length])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not processing possible availability reply for sender with zero length handle", v13, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_18;
  }

  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = IMDAreAllAliasesUnknown();

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not processing possible availability reply for sender who is not a contact", v13, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v10 = [(IMDAvailabilityAutoReplier *)self _userIsAvailableToHandle:informationCopy];
  if (v10 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Not processing possible availability reply, DND framework says we should appear available to this user", v13, 2u);
    }
  }

  v9 = !v10;
LABEL_18:

  return v9;
}

- (id)_messageItemsSupportingAvailabilityReplyFromItems:(id)items
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 isAvailabilityReplySupported])
        {
          [v4 addObject:v9];
        }

        else if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Message item does not support availability reply", buf, 2u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  v11 = [v5 count];
  if (v11 != [v4 count] && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 count];
      v14 = [v4 count];
      *buf = 134218240;
      v22 = v13;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Reducing messages to process for availability reply from %ld messages to %ld messages.", buf, 0x16u);
    }
  }

  v15 = [v4 copy];

  return v15;
}

- (void)_sendDeliveredQuietelyForMessages:(id)messages forIncomingMessageFromIDSID:(id)d inChat:(id)chat
{
  v21 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  dCopy = d;
  chatCopy = chat;
  if ([(IMDAvailabilityAutoReplier *)self _isSMSChat:chatCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Not sending delivered quietely receipts in SMS chat", buf, 2u);
      }
    }

    [(IMDAvailabilityAutoReplier *)self _sendTextAutoReplyIfNecessaryForMessages:messagesCopy withUrgentBreakthroughInstructions:1 inChat:chatCopy];
  }

  else
  {
    v12 = [(IMDAvailabilityAutoReplier *)self _messageGuidsForMessages:messagesCopy];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Requesting delivered quietely receipt be sent to message guids: %@", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    WeakRetained = objc_loadWeakRetained(&self->_replyDelegate);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B5A1B7C;
    v15[3] = &unk_278705770;
    objc_copyWeak(&v18, buf);
    v16 = messagesCopy;
    v17 = chatCopy;
    [WeakRetained autoReplier:self sendDeliveredQuietlyReceiptForMessages:v16 forIncomingMessageFromIDSID:dCopy inChat:v17 withWillSendToDestinationsHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_sendTextAutoReplyIfNecessaryForMessages:(id)messages withUrgentBreakthroughInstructions:(BOOL)instructions inChat:(id)chat
{
  instructionsCopy = instructions;
  v18 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  v10 = [(IMDAvailabilityAutoReplier *)self _shouldSendTextAutoReplyForChat:chatCopy];
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        v16 = 138412290;
        v17 = guid;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Sending text auto reply to chat: %@", &v16, 0xCu);
      }
    }

    [(IMDAvailabilityAutoReplier *)self _sendTextAutoReplyToChat:chatCopy withUrgentBreakthroughInstructions:instructionsCopy];
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid2 = [chatCopy guid];
      v16 = 138412290;
      v17 = guid2;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Not sending text auto reply to chat: %@", &v16, 0xCu);
    }
  }
}

- (BOOL)_deviceIsPhone
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  v3 = [mEMORY[0x277D07DB0] deviceType] == 2;

  return v3;
}

- (BOOL)_deviceSupportsiMessageAutoReply
{
  _deviceIsPhone = [(IMDAvailabilityAutoReplier *)self _deviceIsPhone];
  if (!_deviceIsPhone && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Device does not support iMessage auto reply becuase it is not an iPhone", v5, 2u);
    }
  }

  return _deviceIsPhone;
}

- (BOOL)_localDeviceHasSIMMatchingChat:(id)chat
{
  v24 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  deviceSupportsMultipleSubscriptions = [mEMORY[0x277D1A908] deviceSupportsMultipleSubscriptions];

  if (deviceSupportsMultipleSubscriptions)
  {
    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    ctServiceSubscriptions = [mEMORY[0x277D1A908]2 ctServiceSubscriptions];

    lastAddressedSIMID = [chatCopy lastAddressedSIMID];
    if ([lastAddressedSIMID length])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = ctServiceSubscriptions;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = *v20;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v9);
            }

            labelID = [*(*(&v19 + 1) + 8 * i) labelID];
            if ([labelID length] && objc_msgSend(lastAddressedSIMID, "isEqualToString:", labelID))
            {

              LOBYTE(v10) = 1;
              goto LABEL_24;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D423C();
      }

      LOBYTE(v10) = 0;
    }

LABEL_24:
  }

  else
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    supportsSMS = [mEMORY[0x277D07DB0] supportsSMS];

    if (supportsSMS)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Device does not support SMS auto reply becuase it does not support SMS", v18, 2u);
        }
      }

      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (BOOL)_deviceSupportsSMSAutoReplyForChat:(id)chat
{
  chatCopy = chat;
  if (![(IMDAvailabilityAutoReplier *)self _deviceIsPhone])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        v7 = "SMS auto reply not supported becuase device is not an iPhone";
        v8 = &v11;
LABEL_10:
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
      }

LABEL_11:
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if (![(IMDAvailabilityAutoReplier *)self _localDeviceHasSIMMatchingChat:chatCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v7 = "SMS auto reply not supported becuase local device does not have a SIM matching the last addressed SIM ID";
        v8 = &v10;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = 1;
LABEL_13:

  return v5;
}

- (BOOL)_isInDrivingFocus
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x231897B40](@"DNDStateService" @"DoNotDisturb")];
  v17 = 0;
  v3 = [v2 queryCurrentStateWithError:&v17];
  v4 = v17;
  if (!v4)
  {
    if (!v3)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D42EC();
      }

      goto LABEL_4;
    }

    activeModeConfiguration = [v3 activeModeConfiguration];
    v5 = activeModeConfiguration;
    if (!activeModeConfiguration)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "DND active mode configuraiton is nil", buf, 2u);
        }
      }

      goto LABEL_4;
    }

    mode = [activeModeConfiguration mode];
    v10 = mode;
    if (mode)
    {
      semanticType = [mode semanticType];
      v12 = IMOSLoggingEnabled();
      if (semanticType == 2)
      {
        if (v12)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Driving focus is active", buf, 2u);
          }
        }

        v6 = 1;
        goto LABEL_30;
      }

      if (v12)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v19 = semanticType;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Driving focus is not active, current focus semantic type is %ld", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "DND mode is nil", buf, 2u);
      }
    }

    v6 = 0;
LABEL_30:

    goto LABEL_5;
  }

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D427C();
  }

LABEL_4:
  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)_haveRecentlySentUnavailabilityAutoReplyMessageToChat:(id)chat
{
  chatCopy = chat;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [date dateByAddingTimeInterval:-3600.0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B5A2644;
  v9[3] = &unk_278705798;
  v7 = v6;
  v10 = v7;
  v11 = &v13;
  v12 = 500;
  [(IMDAvailabilityAutoReplier *)self iterateRecentMessagesInChat:chatCopy withBlock:v9];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

- (id)_messageItemsSupportingBreakthroughNotifications:(id)notifications
{
  v27 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = notificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([(IMDAvailabilityAutoReplier *)self _messageItemSupportsBreakthroughNotification:v10, v18])
        {
          [v5 addObject:v10];
        }

        else if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Message item does not support breakthrough notification", buf, 2u);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v12 = [v6 count];
  if (v12 != [v5 count] && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v6 count];
      v15 = [v5 count];
      *buf = 134218240;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Reducing messages to process for breakthrough notifications from %ld messages to %ld messages.", buf, 0x16u);
    }
  }

  v16 = [v5 copy];

  return v16;
}

- (BOOL)_messageItemSupportsBreakthroughNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v5 = "Not processing possible dnd breakthrough for message from me";
        v6 = &v15;
LABEL_29:
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
        goto LABEL_30;
      }

      goto LABEL_30;
    }
  }

  else if ([notificationCopy isEmpty])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v5 = "Not processing possible dnd breakthrough for empty message";
        v6 = &v14;
        goto LABEL_29;
      }

LABEL_30:
    }
  }

  else if ([notificationCopy isTypingMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        v5 = "Not processing possible dnd breakthrough for typing message";
        v6 = &v13;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ([notificationCopy isLocatingMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        v5 = "Not processing possible dnd breakthrough for locating message";
        v6 = &v12;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ([notificationCopy isAutoReply])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        v5 = "Not processing possible dnd breakthrough for auto reply message";
        v6 = &v11;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if ([notificationCopy isUnfinished])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v10 = 0;
        v5 = "Not processing possible dnd breakthrough for unfinished message";
        v6 = &v10;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (![notificationCopy isSystemMessage])
    {
      v7 = 1;
      goto LABEL_32;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v9 = 0;
        v5 = "Not processing possible dnd breakthrough for system message";
        v6 = &v9;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  v7 = 0;
LABEL_32:

  return v7;
}

- (id)_messageGuidsForMessages:(id)messages
{
  v18 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        guid = [*(*(&v13 + 1) + 8 * i) guid];
        if ([guid length])
        {
          [v4 addObject:guid];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)_shouldIgnoreDoNotDisturbForMessages:(id)messages inChat:(id)chat
{
  v25 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  if (![messagesCopy count])
  {
LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = messagesCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = *v21;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      if (([v12 isFromMe] & 1) == 0 && objc_msgSend(v12, "didNotifyRecipient"))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_25;
        }

        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message is flagged to notify recipient, should ignore do not disturb", v19, 2u);
        }

        goto LABEL_24;
      }

      if ([v12 hasLegacyUrgentTriggerMatchInText])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_25;
        }

        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message has a legacy urgent trigger text, should ignore do not disturb", v19, 2u);
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v13 = [(IMDAvailabilityAutoReplier *)self _haveRecentUrgentMessageInGracePeriodForChat:chatCopy];
  v14 = IMOSLoggingEnabled();
  if (!v13)
  {
    if (v14)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Messages are not urgent, will not break though do not disturb", v19, 2u);
      }
    }

    goto LABEL_31;
  }

  if (v14)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Message received in chat that is in an urgent message grace period, should ignore do not disturb", v19, 2u);
    }

LABEL_25:
  }

  v16 = 1;
LABEL_32:

  return v16;
}

- (BOOL)_haveRecentUrgentMessageInGracePeriodForChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_22B4D7700;
  v10[4] = sub_22B4D78DC;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [date dateByAddingTimeInterval:-480.0];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v17 = 8;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Determining if we should alert for this message by checking if we are in an urgent message grace period. Looking for received urgent messages in the last %ld minutes.", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B5A35E4;
  v9[3] = &unk_2787057C0;
  v9[4] = v10;
  v9[5] = &v12;
  v9[6] = 0x407E000000000000;
  [(IMDAvailabilityAutoReplier *)self iterateRecentMessagesInChat:chatCopy withBlock:v9];
  v7 = *(v13 + 24);
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);
  return v7 & 1;
}

- (void)iterateRecentMessagesInChat:(id)chat withBlock:(id)block
{
  v62[1] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  blockCopy = block;
  if ([chatCopy style] == 45)
  {
    chatIdentifier = [chatCopy chatIdentifier];
    serviceName = [chatCopy serviceName];
    if (chatIdentifier && serviceName)
    {
      v62[0] = chatIdentifier;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
      v61 = serviceName;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v57 = 0x3032000000;
      v58 = sub_22B4D7700;
      v59 = sub_22B4D78DC;
      v60 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B5A40AC;
      aBlock[3] = &unk_2787057E8;
      p_buf = &buf;
      v19 = v7;
      v52 = v19;
      v20 = v8;
      v53 = v20;
      v55 = 5;
      block = _Block_copy(aBlock);
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        block[2]();
      }

      else
      {
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = sub_22B4D7700;
      v45 = sub_22B4D78DC;
      v46 = 0;
      v11 = MEMORY[0x277D85DD0];
      do
      {
        v12 = v42[5];
        v42[5] = 0;

        v13 = *(*(&buf + 1) + 40);
        v37[0] = v11;
        v37[1] = 3221225472;
        v37[2] = sub_22B5A4120;
        v37[3] = &unk_278705810;
        v38 = blockCopy;
        v39 = &v47;
        v40 = &v41;
        [v13 enumerateObjectsWithOptions:2 usingBlock:v37];
        if ([v42[5] length])
        {
          if ((v48[3] & 1) == 0)
          {
            v31 = 0;
            v32 = &v31;
            v33 = 0x2020000000;
            v34 = 1;
            v29[0] = 0;
            v29[1] = v29;
            v29[2] = 0x2020000000;
            v30 = 1;
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = sub_22B5A41E8;
            v21[3] = &unk_278705838;
            v24 = &buf;
            v22 = v19;
            v23 = v20;
            v25 = &v41;
            v26 = &v31;
            v27 = v29;
            v28 = 10;
            v14 = _Block_copy(v21);
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v14[2](v14);
            }

            else
            {
              dispatch_sync(MEMORY[0x277D85CD0], v14);
            }

            if (*(v32 + 24) != 1 || ![*(*(&buf + 1) + 40) count])
            {
              *(v48 + 24) = 1;
            }

            _Block_object_dispose(v29, 8);
            _Block_object_dispose(&v31, 8);
          }
        }

        else
        {
          v15 = IMLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D432C(&v35, v36, v15);
          }

          *(v48 + 24) = 1;
        }
      }

      while (*(v48 + 24) != 1);
      _Block_object_dispose(&v41, 8);

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&buf, 8);
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = chatCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Chat is missing identifier or service: %@", &buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Not checking grace period for non 1-1 chat", &buf, 2u);
    }
  }
}

- (BOOL)_isSMSChat:(id)chat
{
  serviceName = [chat serviceName];
  v4 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];

  return v4;
}

- (id)_autoReplyMessageTextWithUrgentBreakthroughInstructions:(BOOL)instructions
{
  instructionsCopy = instructions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _customizedAutoReplyMessage = [(IMDAvailabilityAutoReplier *)self _customizedAutoReplyMessage];
  stringByRemovingWhitespace = [_customizedAutoReplyMessage stringByRemovingWhitespace];
  v8 = [stringByRemovingWhitespace length];

  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:_customizedAutoReplyMessage attributes:0];
    [v5 addObject:v10];
  }

  if (instructionsCopy)
  {
    v11 = IMDaemonCoreBundle(v9);
    v12 = [v11 localizedStringForKey:@"(I’m not receiving notifications. If this is urgent value:reply “urgent” to send a notification through with your original message.)" table:{&stru_283F23018, @"DaemonCoreLocalizable"}];

    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v12 attributes:0];
    [v5 addObject:v13];
  }

  v14 = [v5 copy];

  return v14;
}

- (void)_sendTextAutoReplyToChat:(id)chat withUrgentBreakthroughInstructions:(BOOL)instructions
{
  instructionsCopy = instructions;
  v29 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v7 = [(IMDAvailabilityAutoReplier *)self _autoReplyMessageTextWithUrgentBreakthroughInstructions:instructionsCopy];
  v8 = [v7 count];
  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v7 count];
        guid = [chatCopy guid];
        *buf = 134218242;
        v26 = v11;
        v27 = 2112;
        v28 = guid;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Sending %ld auto-reply messages to chat: %@", buf, 0x16u);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          WeakRetained = objc_loadWeakRetained(&self->_replyDelegate);
          [WeakRetained autoReplier:self generatedAutoReplyText:v17 forChat:{chatCopy, v20}];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else if (v9)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "No sending auto-reply because no message text was available to send", buf, 2u);
    }
  }
}

- (BOOL)_shouldSendTextAutoReplyForChat:(id)chat
{
  v16 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (![(IMDAvailabilityAutoReplier *)self _isInDrivingFocus])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Device is not in driving focus, not sending text auto reply", &v12, 2u);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ([(IMDAvailabilityAutoReplier *)self _isSMSChat:chatCopy])
  {
    if (![(IMDAvailabilityAutoReplier *)self _deviceSupportsSMSAutoReplyForChat:chatCopy])
    {
      goto LABEL_4;
    }
  }

  else if (![(IMDAvailabilityAutoReplier *)self _deviceSupportsiMessageAutoReply])
  {
LABEL_4:
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "This device does not support text auto reply", &v12, 2u);
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (![(IMDAvailabilityAutoReplier *)self _haveRecentlySentUnavailabilityAutoReplyMessageToChat:chatCopy])
  {
    _autoReplyAudience = [(IMDAvailabilityAutoReplier *)self _autoReplyAudience];
    v9 = [(IMDAvailabilityAutoReplier *)self _stringForAutoReplyAudience:_autoReplyAudience];
    v6 = [(IMDAvailabilityAutoReplier *)self _audience:_autoReplyAudience allowsRepliesToChat:chatCopy];
    v10 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = 134218242;
          v13 = _autoReplyAudience;
          v14 = 2112;
          v15 = v9;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Auto reply audience preference matches this chat. Audience %ld=%@", &v12, 0x16u);
        }

LABEL_28:
      }
    }

    else if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 134218242;
        v13 = _autoReplyAudience;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Not sending auto reply becuase the user auto reply audience preference does not match this chat. Audience %ld=%@", &v12, 0x16u);
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "We have already sent a recent text auto reply, not auto-replying again.", &v12, 2u);
    }

    goto LABEL_17;
  }

LABEL_18:
  v6 = 0;
LABEL_19:

  return v6;
}

- (id)_stringForAutoReplyAudience:(unint64_t)audience
{
  if (audience > 4)
  {
    return 0;
  }

  else
  {
    return off_2787058A8[audience];
  }
}

- (unint64_t)_autoReplyAudience
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  automaticDNDStatus = [(IMDAvailabilityAutoReplier *)self automaticDNDStatus];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_22B5A4B7C;
  v14 = &unk_278705860;
  v16 = &v17;
  v5 = v3;
  v15 = v5;
  [automaticDNDStatus allowedAutoReplyAudience:&v11];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [(IMDAvailabilityAutoReplier *)self _stringForAutoReplyAudience:v18[3], v11, v12, v13, v14];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v18[3];
      *buf = 134218242;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Auto-reply audience is %ld=%@", buf, 0x16u);
    }
  }

  v9 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v9;
}

- (id)_customizedAutoReplyMessage
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_22B4D7700;
  v21 = sub_22B4D78DC;
  v22 = 0;
  automaticDNDStatus = [(IMDAvailabilityAutoReplier *)self automaticDNDStatus];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_22B5A4E3C;
  v14 = &unk_278705888;
  v16 = &v17;
  v5 = v3;
  v15 = v5;
  [automaticDNDStatus autoReplyMessageWithReply:&v11];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  stringByRemovingWhitespace = [v18[5] stringByRemovingWhitespace];
  [stringByRemovingWhitespace length];

  v7 = [v18[5] length];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v24 = v7 != 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Is using customized auto reply message: %ld", buf, 0xCu);
    }
  }

  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (BOOL)_audience:(unint64_t)_audience allowsRepliesToChat:(id)chat
{
  v29 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v7 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  participants = [chatCopy participants];
  v9 = [participants countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(participants);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) ID];
        [v7 addObject:v12];
      }

      v9 = [participants countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v9);
  }

  switch(_audience)
  {
    case 2uLL:
      v13 = [(IMDAvailabilityAutoReplier *)self _contactsContainsParticipants:v7];
      goto LABEL_14;
    case 3uLL:
      v13 = [(IMDAvailabilityAutoReplier *)self _hasRecentOutgoingMessagesInChat:chatCopy];
      goto LABEL_14;
    case 4uLL:
      v13 = [(IMDAvailabilityAutoReplier *)self _favoritesContainsParticipants:v7];
LABEL_14:
      v14 = v13;
      goto LABEL_16;
  }

  v14 = 0;
LABEL_16:
  v15 = [(IMDAvailabilityAutoReplier *)self _stringForAutoReplyAudience:_audience];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      _audienceCopy = _audience;
      v24 = 2112;
      v25 = v15;
      v26 = 2048;
      v27 = v14;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Audience %ld=%@ allows replies: %ld", buf, 0x20u);
    }
  }

  return v14;
}

- (BOOL)_contactsContainsParticipants:(id)participants
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  participantsCopy = participants;
  v4 = [participantsCopy countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(participantsCopy);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v19 = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:{1, v13}];
        v9 = IMDAreAllAliasesUnknown();

        if (v9)
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v18 = v7;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Participant %@ is not in contacts", buf, 0xCu);
            }
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v4 = [participantsCopy countByEnumeratingWithState:&v13 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)_favoritesContainsParticipants:(id)participants
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  participantsCopy = participants;
  v4 = [participantsCopy countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v4)
  {
    v6 = *v21;
    v7 = *MEMORY[0x277D18E68];
    *&v5 = 138412546;
    v19 = v5;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(participantsCopy);
        }

        v28 = *(*(&v20 + 1) + 8 * i);
        v9 = v28;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:{1, v19, v20}];
        v11 = IMDCNRecordIDForAliases();

        v12 = [v11 objectForKey:v9];
        v13 = v12;
        if (!v12 || ([v12 isEqualToString:v7] & 1) != 0)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v25 = v9;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Participant %@ is not a contact, and cannot be a favorite", buf, 0xCu);
            }
          }

LABEL_20:

          v16 = 0;
          goto LABEL_22;
        }

        v14 = IMDIsFavoritedContact();
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v25 = v9;
            v26 = 2048;
            v27 = v14 & 1;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Participant %@ is a favorite?: %ld", buf, 0x16u);
          }
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v4 = [participantsCopy countByEnumeratingWithState:&v20 objects:v29 count:16];
      v16 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_22:

  return v16;
}

- (BOOL)_hasRecentOutgoingMessagesInChat:(id)chat
{
  v14 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  lastSentMessageDate = [chatCopy lastSentMessageDate];
  if (lastSentMessageDate)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    if (([currentCalendar isDateInToday:lastSentMessageDate]& 1) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = [currentCalendar isDateInYesterday:lastSentMessageDate];
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        chatIdentifier = [chatCopy chatIdentifier];
        v10 = 138412546;
        v11 = chatIdentifier;
        v12 = 1024;
        v13 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "chatID %@ is recent?: %i", &v10, 0x12u);
      }
    }
  }

  else
  {
    currentCalendar = IMLogHandleForCategory();
    if (os_log_type_enabled(currentCalendar, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D444C(chatCopy, currentCalendar);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_messageIsSOS:(id)s
{
  sCopy = s;
  if ([(IMDAvailabilityAutoReplier *)self _sosTransportValidForMessage:sCopy])
  {
    body = [sCopy body];
    string = [body string];

    LODWORD(self) = [(IMDAvailabilityAutoReplier *)self _sosURLMatchInText:string];
    if (self)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message is SOS", v9, 2u);
        }
      }

      self = [MEMORY[0x277D1AAA8] sharedInstance];
      [(IMDAvailabilityAutoReplier *)self trackEvent:*MEMORY[0x277D1A230]];

      LOBYTE(self) = 1;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)_sosTransportValidForMessage:(id)message
{
  service = [message service];
  v4 = [service isEqualToString:*MEMORY[0x277D1A610]];

  if (v4)
  {
    return 1;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

- (BOOL)_sosURLMatchInText:(id)text
{
  textCopy = text;
  im_matchesSOSMapURL = [textCopy im_matchesSOSMapURL];
  if (im_matchesSOSMapURL && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Message has an SOS URL match", v7, 2u);
    }
  }

  return im_matchesSOSMapURL;
}

- (IMDAutoReplyDelegate)replyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_replyDelegate);

  return WeakRetained;
}

@end