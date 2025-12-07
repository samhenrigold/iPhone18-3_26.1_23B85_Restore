@interface IMDSpamMessageCreator
- (BOOL)_isMessageMMS:(id)s forChat:(id)chat;
- (BOOL)_textMessageReportToIDSAllowedForMessageItem:(id)item chat:(id)chat notifyInternalSecurity:(BOOL)security;
- (BOOL)hasDataDetectedInformalPayment:(id)payment;
- (BOOL)isSurfPayment:(id)payment;
- (id)_createJunkMessageDictionaryForItem:(id)item senderURI:(id)i chat:(id)chat conversationID:(id)d receiverURI:(id)rI notifyInternalSecurity:(BOOL)security reportReason:(unint64_t)reason;
- (id)_receiverURIWithItem:(id)item chat:(id)chat;
- (id)_senderURIWithItem:(id)item chat:(id)chat;
- (id)metaDataForSurfURL:(id)l;
- (id)surfURLForIMMessageItem:(id)item;
- (id)transferForGuid:(id)guid;
- (void)_addSnapNameKeysToReportMessageDictionary:(id)dictionary forSender:(id)sender;
- (void)_reportToIDSTextMessageSpam:(id)spam;
- (void)_reportToIDSiMessageSpam:(id)spam maxMessagesPerReport:(unint64_t)report;
- (void)addTextMessageJunkKeysToReportMessageDictionary:(id)dictionary forMessage:(id)message chat:(id)chat;
- (void)addiMessageJunkKeysToReportMessageDictionary:(id)dictionary forMessage:(id)message withGUID:(id)d contentLength:(unint64_t)length chat:(id)chat;
- (void)reportMessageDictionariesForMessages:(id)messages isAutoReport:(BOOL)report withChat:(id)chat conversationID:(id)d maxMessagesToReport:(unint64_t)toReport totalMessageCount:(unint64_t *)count notifyInternalSecurity:(BOOL)security isJunkReportedToCarrier:(BOOL)self0 reportReason:(unint64_t)self1;
- (void)reportMessageDictionaryToApple:(id)apple forChat:(id)chat isJunk:(BOOL)junk;
- (void)reportNotJunkToTrustKitForMessageGUID:(id)d;
@end

@implementation IMDSpamMessageCreator

- (id)transferForGuid:(id)guid
{
  guidCopy = guid;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:guidCopy];

  return v5;
}

- (id)_senderURIWithItem:(id)item chat:(id)chat
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  sender = [itemCopy sender];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMergeBusinessSenderIndiaEnabled = [mEMORY[0x277D1A9B8] isMergeBusinessSenderIndiaEnabled];

  if (isMergeBusinessSenderIndiaEnabled && [chatCopy isMergedBusinessThread])
  {
    originalUnformattedID = [itemCopy originalUnformattedID];

    sender = originalUnformattedID;
  }

  im_stripCategoryLabel = [sender im_stripCategoryLabel];
  _stripFZIDPrefix = [im_stripCategoryLabel _stripFZIDPrefix];
  _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = _bestGuessURI;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Item sender = %@", &v23, 0xCu);
    }
  }

  if ([itemCopy isFromMe] && !objc_msgSend(_bestGuessURI, "length"))
  {
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    v18 = lastAddressedLocalHandle;
    v19 = &stru_283F23018;
    if (lastAddressedLocalHandle)
    {
      v19 = lastAddressedLocalHandle;
    }

    v20 = v19;

    _stripFZIDPrefix2 = [(__CFString *)v20 _stripFZIDPrefix];
    _bestGuessURI2 = [_stripFZIDPrefix2 _bestGuessURI];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        v24 = _bestGuessURI2;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Overriding sender URI to be %@ using Last addressed handle %@", &v23, 0x16u);
      }
    }
  }

  else
  {
    _bestGuessURI2 = _bestGuessURI;
  }

  return _bestGuessURI2;
}

- (void)reportMessageDictionariesForMessages:(id)messages isAutoReport:(BOOL)report withChat:(id)chat conversationID:(id)d maxMessagesToReport:(unint64_t)toReport totalMessageCount:(unint64_t *)count notifyInternalSecurity:(BOOL)security isJunkReportedToCarrier:(BOOL)self0 reportReason:(unint64_t)self1
{
  v57 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  dCopy = d;
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = qword_2814225C0;
  qword_2814225C0 = v14;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = messagesCopy;
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  v48 = security || carrier;
  if (!v17)
  {
    v45 = 0;
    goto LABEL_54;
  }

  v45 = 0;
  v18 = *v53;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v53 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v52 + 1) + 8 * i);
      if (![v20 type] && (objc_msgSend(v20, "isTypingMessage") & 1) == 0 && (objc_msgSend(v20, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v20, "isRCSEncryptionTest") & 1) == 0)
      {
        v48 = v48 && [(IMDSpamMessageCreator *)self _textMessageReportToIDSAllowedForMessageItem:v20 chat:chatCopy notifyInternalSecurity:security];
        v21 = [(IMDSpamMessageCreator *)self _receiverURIWithItem:v20 chat:chatCopy];
        if (!v21)
        {
          goto LABEL_49;
        }

        v22 = [(IMDSpamMessageCreator *)self _senderURIWithItem:v20 chat:chatCopy];
        v23 = v22;
        if (report)
        {
          if ([v22 length])
          {
            guid = [v20 guid];
            if (guid)
            {
              v25 = [v21 length] == 0;

              if (!v25)
              {
                guid2 = [v20 guid];
                isBlackholed = [chatCopy isBlackholed];
                isOscarChat = [chatCopy isOscarChat];
                v28 = MEMORY[0x277CCABB0];
                time = [v20 time];
                [time timeIntervalSince1970];
                v30 = [v28 numberWithDouble:?];
                [(IMDSpamMessageCreator *)self reportUnknownToIDS:v23 messageID:guid2 isBlackholed:isBlackholed isiMessageJunk:isOscarChat messageServerTimestamp:v30 toURI:v21];

                goto LABEL_46;
              }
            }
          }

LABEL_48:

LABEL_49:
          continue;
        }

        guid2 = [(IMDSpamMessageCreator *)self _createJunkMessageDictionaryForItem:v20 senderURI:v22 chat:chatCopy conversationID:dCopy receiverURI:v21 notifyInternalSecurity:security reportReason:reason];
        if ([guid2 count])
        {
          v31 = +[IMDServiceController sharedController];
          service = [v20 service];
          time = [v31 serviceWithName:service];

          if ([time supportsCapability:*MEMORY[0x277D1A5D8]])
          {
            if (IMOSLoggingEnabled())
            {
              v33 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Service supports Spam Extension Filtering", buf, 2u);
              }
            }

            v34 = [v42 objectForKeyedSubscript:v21];
            if (!v34)
            {
              v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v34 addObject:guid2];
            [v42 setObject:v34 forKey:v21];
            goto LABEL_36;
          }

          if ([time supportsCapability:*MEMORY[0x277D1A530]])
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Service supports Apple Spam Filtering", buf, 2u);
              }
            }

            v34 = [v41 objectForKeyedSubscript:v21];
            if (!v34)
            {
              v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v34 addObject:guid2];
            [v41 setObject:v34 forKey:v21];
LABEL_36:
          }

          if ([time supportsCapability:*MEMORY[0x277D1A5C8]])
          {
            if (IMOSLoggingEnabled())
            {
              v36 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Service supports TrustKit", buf, 2u);
              }
            }

            v37 = [v43 objectForKeyedSubscript:@"spam-messages"];
            if (!v37)
            {
              v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v37 addObject:guid2];
            [v43 setObject:v37 forKey:@"spam-messages"];
          }

          ++v45;
LABEL_46:
        }

        goto LABEL_48;
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v17);
LABEL_54:

  if ([v41 count])
  {
    [(IMDSpamMessageCreator *)self _reportToIDSiMessageSpam:v41 maxMessagesPerReport:toReport];
  }

  if (v48)
  {
    if ([v42 count])
    {
      [(IMDSpamMessageCreator *)self _reportToIDSTextMessageSpam:v42];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "SMS/RCS Reporting to IDS disabled via carrier bag.", buf, 2u);
    }
  }

  if ([v43 count])
  {
    [(IMDSpamMessageCreator *)self reportMessageDictionaryToApple:v43 forChat:chatCopy isJunk:1];
  }

  *count = v45;
}

- (id)_receiverURIWithItem:(id)item chat:(id)chat
{
  v46 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  destinationCallerID = [itemCopy destinationCallerID];
  if ([destinationCallerID length])
  {
    lastAddressedLocalHandle = destinationCallerID;
  }

  else
  {
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = lastAddressedLocalHandle;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Falling back to lastAddressedLocalHandle: %@", buf, 0xCu);
      }
    }
  }

  if ([lastAddressedLocalHandle length])
  {
    loginID = lastAddressedLocalHandle;
  }

  else
  {
    account = [chatCopy account];
    loginID = [account loginID];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = loginID;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Falling back to chat's account's loginID: %@", buf, 0xCu);
      }
    }
  }

  if (![loginID length])
  {
    v11 = objc_alloc(MEMORY[0x277D18778]);
    v27 = [v11 initWithService:*MEMORY[0x277D186B0]];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v27 accounts];
    v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v32)
    {
      v31 = *v39;
      do
      {
        v12 = 0;
        do
        {
          if (*v39 != v31)
          {
            v13 = v12;
            objc_enumerationMutation(obj);
            v12 = v13;
          }

          v33 = v12;
          v14 = *(*(&v38 + 1) + 8 * v12);
          if ([v14 canSend])
          {
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            handles = [v14 handles];
            v16 = [handles countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v16)
            {
              v17 = *v35;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v35 != v17)
                  {
                    objc_enumerationMutation(handles);
                  }

                  v19 = *(*(&v34 + 1) + 8 * i);
                  if ([v19 isUserVisible] && objc_msgSend(v19, "validationStatus") == 3)
                  {
                    v20 = [v19 URI];
                    unprefixedURI = [v20 unprefixedURI];

                    if (IMOSLoggingEnabled())
                    {
                      v22 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v45 = unprefixedURI;
                        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Falling back to IDSHandle: %@", buf, 0xCu);
                      }
                    }

                    loginID = unprefixedURI;
                  }
                }

                v16 = [handles countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v16);
            }
          }

          v12 = v33 + 1;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v32);
    }
  }

  if (![loginID length] && IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = loginID;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Still couldn't fine a real receiver URI: %@", buf, 0xCu);
    }
  }

  _stripFZIDPrefix = [loginID _stripFZIDPrefix];

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = _stripFZIDPrefix;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Receiver URI: %@", buf, 0xCu);
    }
  }

  return _stripFZIDPrefix;
}

- (void)addiMessageJunkKeysToReportMessageDictionary:(id)dictionary forMessage:(id)message withGUID:(id)d contentLength:(unint64_t)length chat:(id)chat
{
  theDict = dictionary;
  messageCopy = message;
  dCopy = d;
  chatCopy = chat;
  CFDictionarySetValue(theDict, @"message-format-version", &unk_283F4E480);
  if (dCopy)
  {
    CFDictionarySetValue(theDict, @"message-id", dCopy);
  }

  balloonBundleID = [messageCopy balloonBundleID];
  if (balloonBundleID)
  {
    CFDictionarySetValue(theDict, @"message-app-bundle-id", balloonBundleID);
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(chatCopy, "isFiltered") == 2}];
  if (v15)
  {
    CFDictionarySetValue(theDict, @"reported-from-junk", v15);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(chatCopy, "isBlackholed")}];
  if (v16)
  {
    CFDictionarySetValue(theDict, @"reported-from-blackhole", v16);
  }

  balloonBundleID2 = [messageCopy balloonBundleID];
  v18 = [balloonBundleID2 containsString:*MEMORY[0x277D19738]];

  if (v18)
  {
    v19 = [(IMDSpamMessageCreator *)self surfURLForIMMessageItem:messageCopy];
    if (v19)
    {
      v20 = [(IMDSpamMessageCreator *)self metaDataForSurfURL:v19];
      v18 = [(IMDSpamMessageCreator *)self isSurfPayment:v19];
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  payloadData = [messageCopy payloadData];
  if (payloadData)
  {
    CFDictionarySetValue(theDict, @"message-extension-data", payloadData);
  }

  payloadData2 = [messageCopy payloadData];

  if (payloadData2)
  {
    balloonBundleID3 = [messageCopy balloonBundleID];
    if (balloonBundleID3)
    {
      CFDictionarySetValue(theDict, @"message-extension-bundle-id", balloonBundleID3);
    }
  }

  if ([messageCopy hasMessageHistoryForSpamReport])
  {
    messageHistoryForSpamReport = [messageCopy messageHistoryForSpamReport];
    if (messageHistoryForSpamReport)
    {
      CFDictionarySetValue(theDict, @"message-edits", messageHistoryForSpamReport);
    }
  }

  if (v20)
  {
    CFDictionarySetValue(theDict, @"payment-info", v20);
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  if (v25)
  {
    CFDictionarySetValue(theDict, @"is-payment", v25);
  }

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDSpamMessageCreator hasDataDetectedInformalPayment:](self, "hasDataDetectedInformalPayment:", messageCopy)}];
  if (v26)
  {
    CFDictionarySetValue(theDict, @"is-informal", v26);
  }

  if ([chatCopy isBusinessChat])
  {
    CFDictionarySetValue(theDict, @"spam-message-type", @"BusinessInitiatedAlertSpam");
  }

  sender = [messageCopy sender];
  [(IMDSpamMessageCreator *)self _addSnapNameKeysToReportMessageDictionary:theDict forSender:sender];
}

- (void)addTextMessageJunkKeysToReportMessageDictionary:(id)dictionary forMessage:(id)message chat:(id)chat
{
  theDict = dictionary;
  messageCopy = message;
  chatCopy = chat;
  v10 = MEMORY[0x277D1A8F8];
  destinationCallerID = [messageCopy destinationCallerID];
  v12 = [v10 carrierNameForPhoneNumber:destinationCallerID];

  destinationCallerID2 = [messageCopy destinationCallerID];
  v14 = IMCountryCodeForNumber();

  subject = [messageCopy subject];
  if ([subject length])
  {
    v16 = 1;
  }

  else
  {
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    if ([fileTransferGUIDs count])
    {
      v16 = 1;
    }

    else
    {
      v16 = [chatCopy style] != 45;
    }
  }

  CFDictionarySetValue(theDict, @"message-format-version", &unk_283F4E498);
  if (v12)
  {
    CFDictionarySetValue(theDict, @"carrier-name", v12);
  }

  if (v14)
  {
    CFDictionarySetValue(theDict, @"country-code", v14);
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  if (v18)
  {
    CFDictionarySetValue(theDict, @"is-message-mms", v18);
  }

  CFDictionarySetValue(theDict, @"spam-message-type", @"TextMessageSpam");
  guid = [messageCopy guid];
  if (guid)
  {
    CFDictionarySetValue(theDict, @"message-id", guid);
  }

  sender = [messageCopy sender];
  [(IMDSpamMessageCreator *)self _addSnapNameKeysToReportMessageDictionary:theDict forSender:sender];
}

- (void)_addSnapNameKeysToReportMessageDictionary:(id)dictionary forSender:(id)sender
{
  theDict = dictionary;
  senderCopy = sender;
  v6 = +[IMDNicknameController sharedInstance];
  pendingNicknameUpdates = [v6 pendingNicknameUpdates];
  v8 = [pendingNicknameUpdates valueForKey:senderCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = +[IMDNicknameController sharedInstance];
    handledNicknames = [v11 handledNicknames];
    v10 = [handledNicknames valueForKey:senderCopy];
  }

  if (v10)
  {
    v13 = [objc_alloc(MEMORY[0x277D1AAD0]) initWithDictionaryRepresentation:v10];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    firstName = [v13 firstName];
    if (firstName)
    {
      CFDictionarySetValue(v14, @"first-name", firstName);
    }

    lastName = [v13 lastName];
    if (lastName)
    {
      CFDictionarySetValue(v14, @"last-name", lastName);
    }

    recordID = [v13 recordID];
    if (recordID)
    {
      CFDictionarySetValue(v14, @"recordID", recordID);
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = +[IMDNicknameController sharedInstance];
  v19 = [v18 unknownSenderRecordInfoFor:senderCopy];

  if (v19)
  {
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    CFDictionarySetValue(v14, @"sender-records-and-keys", v19);
  }

  if (v14)
  {
    CFDictionarySetValue(theDict, @"sender-shared-name-and-photo", v14);
  }
}

- (BOOL)isSurfPayment:(id)payment
{
  paymentCopy = payment;
  if (qword_27D8CFDE8 != -1)
  {
    sub_22B7D0070();
  }

  if (off_27D8CFDE0)
  {
    v4 = off_27D8CFDE0(paymentCopy) == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)metaDataForSurfURL:(id)l
{
  lCopy = l;
  if (qword_27D8CFDF8 != -1)
  {
    sub_22B7D0084();
  }

  if (off_27D8CFDF0)
  {
    v4 = off_27D8CFDF0(lCopy, 1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasDataDetectedInformalPayment:(id)payment
{
  v3 = MEMORY[0x277D1AA70];
  body = [payment body];
  LOBYTE(v3) = [v3 messageContainsSurfDD:body];

  return v3;
}

- (id)surfURLForIMMessageItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = IMExtensionPayloadUnarchivingClasses();
  v5 = objc_alloc(MEMORY[0x277CCAAC8]);
  payloadData = [itemCopy payloadData];
  v15 = 0;
  v7 = [v5 initForReadingFromData:payloadData error:&v15];
  v8 = v15;

  if (objc_opt_respondsToSelector())
  {
    [v7 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "strict-decoding 007 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v10 = [v7 decodeObjectOfClasses:v4 forKey:*MEMORY[0x277CCA308]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 objectForKey:*MEMORY[0x277D19D88]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_reportToIDSiMessageSpam:(id)spam maxMessagesPerReport:(unint64_t)report
{
  if (spam)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_22B50CCF4;
    v4[3] = &unk_278703270;
    v4[4] = report;
    [spam enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)_reportToIDSTextMessageSpam:(id)spam
{
  spamCopy = spam;
  if (spamCopy)
  {
    if (!IMDisableIDSSMSReporting())
    {
      v6 = objc_alloc(MEMORY[0x277D18778]);
      v7 = [v6 initWithService:*MEMORY[0x277D186B0]];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_22B50CFF8;
      v8[3] = &unk_2787030B8;
      v9 = v7;
      v4 = v7;
      [spamCopy enumerateKeysAndObjectsUsingBlock:v8];

      goto LABEL_11;
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "SMS Reporting to IDS disabled via server bag.";
LABEL_9:
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Recieved empty junk message metadata dictionary while reporting to IDS server.";
      goto LABEL_9;
    }

LABEL_11:
  }
}

- (BOOL)_textMessageReportToIDSAllowedForMessageItem:(id)item chat:(id)chat notifyInternalSecurity:(BOOL)security
{
  securityCopy = security;
  v44 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8] isReportJunkEverywhereEnabled];

  if ((isReportJunkEverywhereEnabled & 1) == 0)
  {
    if (securityCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "notifyInternalSecurity is true, allowing reporting", buf, 2u);
        }
      }

      goto LABEL_2;
    }

    destinationCallerID = [itemCopy destinationCallerID];
    if (IMStringIsEmail())
    {
      v15 = 0;
      v16 = 0;
LABEL_10:
      LOBYTE(bOOLValue) = 0;
LABEL_38:

      goto LABEL_39;
    }

    v17 = MEMORY[0x231897A50](destinationCallerID);
    v18 = destinationCallerID;
    v19 = v18;
    if (v17)
    {
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }

    if (v17)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18;
    }

    v20 = IMDisableSpamReportingAllCountries();
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Spam reporting in all countries disabled, going through legacy logic", buf, 2u);
        }
      }

      v23 = [(IMDSpamMessageCreator *)self _isMessageMMS:itemCopy forChat:chatCopy];
      if (v23)
      {
        v24 = @"%@-MMS";
      }

      else
      {
        v24 = @"%@-SMS";
      }

      mEMORY[0x277D1A908] = [MEMORY[0x277CCACA8] stringWithFormat:v24, v19];
      v26 = [qword_2814225C0 objectForKeyedSubscript:mEMORY[0x277D1A908]];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = [qword_2814225C0 objectForKeyedSubscript:mEMORY[0x277D1A908]];
        LOBYTE(bOOLValue) = [v28 BOOLValue];

        goto LABEL_38;
      }

      if (v23)
      {
        v33 = &unk_283F4ED98;
      }

      else
      {
        v33 = &unk_283F4EDB0;
      }

      v34 = [MEMORY[0x277D1A8F8] carrierBundleValueForKeyHierarchy:v33 phoneNumber:v15 simID:v16];
      if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v37 = v33;
            v38 = 2112;
            v39 = v34;
            v40 = 2112;
            v41 = v15;
            v42 = 2112;
            v43 = v16;
            _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Error getting Carrier Bundle dictionary. Key Hierarchy -> %@.\nCarrier Bundle object -> %@.\nPhone number -> %@.\nSIMID -> %@", buf, 0x2Au);
          }
        }

        goto LABEL_10;
      }

      [qword_2814225C0 setObject:v34 forKeyedSubscript:mEMORY[0x277D1A908]];
      bOOLValue = [v34 BOOLValue];
    }

    else
    {
      if (v21)
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Spam reporting enabled in all countries", buf, 2u);
        }
      }

      mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
      bOOLValue = [mEMORY[0x277D1A908] numberOfSubscriptions] != 0;
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = @"NO";
        if (bOOLValue)
        {
          v31 = @"YES";
        }

        *buf = 138412290;
        v37 = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Report text message allowed to Apple - %@\n.", buf, 0xCu);
      }
    }

    goto LABEL_38;
  }

LABEL_2:
  LOBYTE(bOOLValue) = 1;
LABEL_39:

  return bOOLValue;
}

- (BOOL)_isMessageMMS:(id)s forChat:(id)chat
{
  sCopy = s;
  chatCopy = chat;
  fileTransferGUIDs = [sCopy fileTransferGUIDs];
  if ([fileTransferGUIDs count])
  {
    v8 = 1;
  }

  else
  {
    subject = [sCopy subject];
    if ([subject length])
    {
      v8 = 1;
    }

    else
    {
      v8 = [chatCopy style] != 45;
    }
  }

  return v8;
}

- (void)reportNotJunkToTrustKitForMessageGUID:(id)d
{
  v40[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 chatForMessageGUID:dCopy];

  if (v5)
  {
    style = [v5 style];
    v7 = +[IMDMessageStore sharedInstance];
    chatIdentifier = [v5 chatIdentifier];
    v9 = chatIdentifier;
    v28 = dCopy;
    if (style == 45)
    {
      v40[0] = chatIdentifier;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      serviceName = [v5 serviceName];
      v39 = serviceName;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v13 = [v7 itemsWithHandles:v10 onServices:v12 limit:30];
    }

    else
    {
      v38 = chatIdentifier;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      serviceName = [v5 serviceName];
      v37 = serviceName;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v13 = [v7 itemsWithRoomNames:v10 onServices:v12 limit:30];
    }

    v15 = v13;

    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v15;
    v17 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          if (![v21 type] && (objc_msgSend(v21, "isFromMe") & 1) == 0 && (objc_msgSend(v21, "isTypingMessage") & 1) == 0 && (objc_msgSend(v21, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v21, "isRCSEncryptionTest") & 1) == 0)
          {
            v22 = [(IMDSpamMessageCreator *)self _receiverURIWithItem:v21 chat:v5];
            v31 = [(IMDSpamMessageCreator *)self _senderURIWithItem:v21 chat:v5];
            v23 = [IMDSpamMessageCreator _createJunkMessageDictionaryForItem:"_createJunkMessageDictionaryForItem:senderURI:chat:conversationID:receiverURI:notifyInternalSecurity:reportReason:" senderURI:v21 chat:0 conversationID:? receiverURI:? notifyInternalSecurity:? reportReason:?];
            v24 = [v16 objectForKeyedSubscript:@"not-spam-messages"];
            if (!v24)
            {
              v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v24 addObject:v23];
            [v16 setObject:v24 forKey:@"not-spam-messages"];
          }
        }

        v18 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }

    v25 = [v16 objectForKeyedSubscript:@"not-spam-messages"];
    v26 = [v25 count];

    if (v26)
    {
      [(IMDSpamMessageCreator *)self reportMessageDictionaryToApple:v16 forChat:v5 isJunk:0];
      dCopy = v28;
    }

    else
    {
      v27 = IMLogHandleForCategory();
      dCopy = v28;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D0098(v28, v27);
      }
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0110(dCopy, v14);
    }
  }
}

- (id)_createJunkMessageDictionaryForItem:(id)item senderURI:(id)i chat:(id)chat conversationID:(id)d receiverURI:(id)rI notifyInternalSecurity:(BOOL)security reportReason:(unint64_t)reason
{
  securityCopy = security;
  selfCopy = self;
  v122 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  iCopy = i;
  chatCopy = chat;
  dCopy = d;
  rICopy = rI;
  v104 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v105 = itemCopy;
  guid = [itemCopy guid];
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  v17 = [fileTransferGUIDs count];

  plainBody = [itemCopy plainBody];
  if ([plainBody length])
  {
    data = [plainBody dataUsingEncoding:4];
LABEL_3:
    v19 = data;
    goto LABEL_6;
  }

  body = [v105 body];
  v21 = [body length];

  if (!v21)
  {
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_3;
  }

  body2 = [v105 body];
  string = [body2 string];

  v19 = [string dataUsingEncoding:4];
  plainBody = string;
LABEL_6:
  v102 = [v19 length];
  v99 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  v24 = [v99 objectForKey:@"max-spam-message-size"];
  v98 = v24;
  if (v24)
  {
    integerValue = [v24 integerValue];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Server Bag has no value for max-spam-message-size, using the default 50", buf, 2u);
      }
    }

    integerValue = 50;
  }

  v27 = +[IMDServiceController sharedController];
  service = [v105 service];
  v101 = [v27 serviceWithName:service];

  if (v102 > integerValue && [v101 supportsCapability:*MEMORY[0x277D1A530]])
  {
    v29 = IMOSLoggingEnabled();
    if (v29)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v121 = integerValue;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "truncating spam message length to max of %ld", buf, 0xCu);
      }
    }

    MEMORY[0x28223BE20](v29);
    bzero(&v91 - ((integerValue + 15) & 0xFFFFFFFFFFFFFFF0), integerValue);
    bzero(&v91 - ((integerValue + 15) & 0xFFFFFFFFFFFFFFF0), integerValue);
    [v19 getBytes:&v91 - ((integerValue + 15) & 0xFFFFFFFFFFFFFFF0) length:integerValue - 1];
    v31 = [MEMORY[0x277CBEA90] dataWithBytes:&v91 - ((integerValue + 15) & 0xFFFFFFFFFFFFFFF0) length:integerValue];

    v19 = v31;
  }

  v32 = iCopy;
  if (v32)
  {
    v33 = v32;
    CFDictionarySetValue(v104, @"sender-uri", v32);
    v32 = v33;
  }

  v94 = v32;

  v34 = MEMORY[0x277CCABB0];
  time = [v105 time];
  [time timeIntervalSince1970];
  v36 = [v34 numberWithDouble:?];

  if (v36)
  {
    CFDictionarySetValue(v104, @"time-of-message", v36);
  }

  v37 = [MEMORY[0x277CCABB0] numberWithBool:v17 != 0];
  if (v37)
  {
    CFDictionarySetValue(v104, @"message-has-image", v37);
  }

  v38 = v19;
  if (v38)
  {
    v39 = v38;
    CFDictionarySetValue(v104, @"message-text", v38);
    v38 = v39;
  }

  v93 = v38;

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v102];
  if (v40)
  {
    CFDictionarySetValue(v104, @"message-length", v40);
  }

  rcsAdvisedAction = [v105 rcsAdvisedAction];
  if (rcsAdvisedAction)
  {
    CFDictionarySetValue(v104, @"rcs-advised-action", rcsAdvisedAction);
  }

  spamModelVersion = [v105 spamModelVersion];
  if (spamModelVersion)
  {
    CFDictionarySetValue(v104, @"message-spam-model-version", spamModelVersion);
  }

  v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v105, "isSpam")}];
  if (v43)
  {
    CFDictionarySetValue(v104, @"message-spam-model-detected-spam", v43);
  }

  spamModelMetadata = [v105 spamModelMetadata];
  if (spamModelMetadata)
  {
    CFDictionarySetValue(v104, @"decision-info", spamModelMetadata);
  }

  v45 = dCopy;
  if (v45)
  {
    v46 = v45;
    CFDictionarySetValue(v104, @"conversation-id", v45);
    v45 = v46;
  }

  v92 = v45;

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v105, "wasEverTimeSensitive")}];
  if (v47)
  {
    CFDictionarySetValue(v104, @"time-sensitive", v47);
  }

  v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  fileTransferGUIDs2 = [v105 fileTransferGUIDs];
  v110 = [fileTransferGUIDs2 countByEnumeratingWithState:&v115 objects:v119 count:16];
  if (v110)
  {
    v108 = *v116;
    do
    {
      for (i = 0; i != v110; ++i)
      {
        if (*v116 != v108)
        {
          objc_enumerationMutation(fileTransferGUIDs2);
        }

        v49 = [(IMDSpamMessageCreator *)selfCopy transferForGuid:*(*(&v115 + 1) + 8 * i)];
        v114 = v49;
        if (v49)
        {
          userInfo = [v49 userInfo];
          v51 = [userInfo _stringForKey:@"mmcs-url"];
          v52 = [userInfo _stringForKey:@"mmcs-signature-hex"];
          v53 = [userInfo _stringForKey:@"mmcs-owner"];
          v54 = [userInfo _stringForKey:@"file-size"];
          v55 = [userInfo _stringForKey:@"decryption-key"];
          type = [v114 type];
          filename = [v114 filename];
          v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v59 = v51;
          if (v59)
          {
            v60 = v59;
            CFDictionarySetValue(v58, @"mmcs-url", v59);
            v59 = v60;
          }

          v113 = v59;

          v61 = v52;
          if (v61)
          {
            v62 = v61;
            CFDictionarySetValue(v58, @"mmcs-signature-hex", v61);
            v61 = v62;
          }

          v112 = v61;

          v63 = v53;
          if (v63)
          {
            v64 = v63;
            CFDictionarySetValue(v58, @"mmcs-owner-id", v63);
            v63 = v64;
          }

          v111 = v63;

          v65 = v54;
          if (v65)
          {
            CFDictionarySetValue(v58, @"mmcs-file-size-string", v65);
          }

          v66 = v55;
          if (v66)
          {
            CFDictionarySetValue(v58, @"mmcs-symmetric-key", v66);
          }

          v67 = type;
          if (v67)
          {
            CFDictionarySetValue(v58, @"mmcs-UTI-type", v67);
          }

          v68 = filename;
          if (v68)
          {
            CFDictionarySetValue(v58, @"mmcs-filename", v68);
          }

          v69 = [userInfo _stringForKey:@"inline-attachment"];
          if ([v69 length])
          {
            v70 = objc_alloc(MEMORY[0x277CBEA90]);
            localPath = [v114 localPath];
            v72 = [v70 initWithContentsOfFile:localPath];

            v73 = v72;
            if (v73)
            {
              CFDictionarySetValue(v58, @"inline-message-data", v73);
            }
          }

          [v107 addObject:v58];
        }

        else if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "Did not find transfer for Message, unable to include it in ReportSpam", buf, 2u);
          }
        }
      }

      v110 = [fileTransferGUIDs2 countByEnumeratingWithState:&v115 objects:v119 count:16];
    }

    while (v110);
  }

  v75 = v107;
  if (v75)
  {
    CFDictionarySetValue(v104, @"message-attachment-info", v75);
  }

  v76 = MEMORY[0x277CCABB0];
  participants = [chatCopy participants];
  v78 = [v76 numberWithUnsignedInteger:{objc_msgSend(participants, "count")}];

  if (v78)
  {
    CFDictionarySetValue(v104, @"conversation-group-size", v78);
  }

  v79 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v105, "isFromMe")}];
  if (v79)
  {
    CFDictionarySetValue(v104, @"is-self", v79);
  }

  service2 = [v105 service];
  if (service2)
  {
    CFDictionarySetValue(v104, @"message-service", service2);
  }

  service3 = [v105 service];
  v82 = [service3 isEqualToString:*MEMORY[0x277D1A608]];

  if (v82)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v105, "encrypted")}];
    if (v83)
    {
      CFDictionarySetValue(v104, @"message-encrypted", v83);
    }
  }

  if (securityCopy)
  {
    CFDictionarySetValue(v104, @"notify-security", &unk_283F4E498);
    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v84, OS_LOG_TYPE_INFO, "notify-security is ON", buf, 2u);
      }
    }
  }

  v85 = rICopy;
  if (v85)
  {
    CFDictionarySetValue(v104, @"recipient-uri", v85);
  }

  else
  {
    v86 = MEMORY[0x277D86220];
    v87 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D01BC();
    }
  }

  if ([v101 supportsCapability:*MEMORY[0x277D1A5D8]])
  {
    [(IMDSpamMessageCreator *)selfCopy addTextMessageJunkKeysToReportMessageDictionary:v104 forMessage:v105 chat:chatCopy];
  }

  else
  {
    [(IMDSpamMessageCreator *)selfCopy addiMessageJunkKeysToReportMessageDictionary:v104 forMessage:v105 withGUID:guid contentLength:v102 chat:chatCopy];
    v88 = [chatCopy isBusinessChat] ^ 1;
    if (!reason)
    {
      v88 = 1;
    }

    if ((v88 & 1) == 0 && reason <= 6)
    {
      CFDictionarySetValue(v104, @"report-spam-reason", off_278703290[reason - 1]);
    }
  }

  v89 = v104;

  return v104;
}

- (void)reportMessageDictionaryToApple:(id)apple forChat:(id)chat isJunk:(BOOL)junk
{
  v8 = sub_22B7DB588();
  chatCopy = chat;
  selfCopy = self;
  sub_22B789268(v8, chatCopy, junk);

  v8, v11, v12, v13, v14, v15, v16, v17, v19, v20;
}

@end