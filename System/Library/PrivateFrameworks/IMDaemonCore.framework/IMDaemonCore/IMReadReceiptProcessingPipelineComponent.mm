@interface IMReadReceiptProcessingPipelineComponent
- (IMReadReceiptProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry recents:(id)recents IDSService:(id)service;
- (id)_markMessagesUpToGUID:(id)d forChat:(id)chat messageIsFromMe:(BOOL)me date:(id)date;
- (id)runIndividuallyWithInput:(id)input;
- (void)_donateReadEventForChat:(id)chat;
@end

@implementation IMReadReceiptProcessingPipelineComponent

- (IMReadReceiptProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry recents:(id)recents IDSService:(id)service
{
  storeCopy = store;
  registryCopy = registry;
  recentsCopy = recents;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = IMReadReceiptProcessingPipelineComponent;
  v15 = [(IMReadReceiptProcessingPipelineComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageStore, store);
    objc_storeStrong(&v16->_chatRegistry, registry);
    objc_storeStrong(&v16->_recents, recents);
    objc_storeStrong(&v16->_service, service);
  }

  return v16;
}

- (id)runIndividuallyWithInput:(id)input
{
  v77 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v72 = gUID;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMReadReceiptProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (!IMGetCachedDomainBoolForKey())
  {
    isFromDefaultPairedDevice = [inputCopy isFromDefaultPairedDevice];
    isFromMe = [inputCopy isFromMe];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        v12 = gUID2;
        v13 = @"NO";
        if (isFromMe)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        *buf = 138412802;
        v72 = gUID2;
        v73 = 2112;
        v74 = v14;
        if (isFromDefaultPairedDevice)
        {
          v13 = @"YES";
        }

        v75 = 2112;
        v76 = v13;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received read receipt for: %@ receipt from me: %@ isDefaultPairedDevice: %@", buf, 0x20u);
      }
    }

    v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
    gUID3 = [inputCopy GUID];
    v57 = [(IMDMessageStore *)self->_messageStore messageWithGUID:gUID3];
    isFromMe2 = [v57 isFromMe];
    v58 = [(IMDMessageStore *)self->_messageStore chatsForMessageGUID:gUID3];
    if ([v58 count])
    {
      if ((isFromMe2 | isFromMe))
      {
        v17 = MEMORY[0x277CBEAA8];
        timestamp = [inputCopy timestamp];
        v19 = [v17 __im_iMessageDateFromTimeStamp:timestamp];

        if (isFromMe)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          fromPushID = v58;
          v21 = [fromPushID countByEnumeratingWithState:&v65 objects:v70 count:16];
          if (v21)
          {
            v22 = *v66;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v66 != v22)
                {
                  objc_enumerationMutation(fromPushID);
                }

                v24 = *(*(&v65 + 1) + 8 * i);
                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v72 = gUID3;
                    v73 = 2112;
                    v74 = v24;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found chat to mark as read for messageID: %@ chat: %@", buf, 0x16u);
                  }
                }

                v26 = [(IMReadReceiptProcessingPipelineComponent *)self _markMessagesUpToGUID:gUID3 forChat:v24 messageIsFromMe:0 date:v19];
                [v60 addObjectsFromArray:v26];

                if (![v60 count] && !-[IMDMessageStore hasStoredMessageWithGUID:](self->_messageStore, "hasStoredMessageWithGUID:", gUID3))
                {
                  [(IDSService *)self->_service _IMDTrackMetric:10401 ForMessageGUID:gUID3];
                  [(IMDMessageStore *)self->_messageStore addMissingMessageReadReceipt:gUID3];
                  v38 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v39 = [v38 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
                  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v39];

                  goto LABEL_53;
                }
              }

              v21 = [fromPushID countByEnumeratingWithState:&v65 objects:v70 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          timeRead = [v57 timeRead];
          v34 = timeRead == 0;

          if (!v34)
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                gUID4 = [inputCopy GUID];
                timeRead2 = [v57 timeRead];
                *buf = 138412546;
                v72 = gUID4;
                v73 = 2112;
                v74 = timeRead2;
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Dropping repeated read receipt for: %@ as it is not from me and the message was already read at %@", buf, 0x16u);
              }
            }

            v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_53:

            goto LABEL_73;
          }

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v40 = v58;
          v41 = [v40 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v41)
          {
            v42 = *v62;
            do
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v62 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v61 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v45 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v72 = gUID3;
                    v73 = 2112;
                    v74 = v44;
                    _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Found chat to mark as read for messageID: %@ chat: %@", buf, 0x16u);
                  }
                }

                v46 = [(IMReadReceiptProcessingPipelineComponent *)self _markMessagesUpToGUID:gUID3 forChat:v44 messageIsFromMe:1 date:v19];
                [v60 addObjectsFromArray:v46];
              }

              v41 = [v40 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v41);
          }

          fromPushID = [inputCopy fromPushID];
          fromIdentifier = [inputCopy fromIdentifier];
          v48 = fromIdentifier;
          if (fromPushID && fromIdentifier)
          {
            recents = self->_recents;
            _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
            [(IMDRecentsController *)recents updateLatestActiveDestination:fromPushID ForHandle:_stripFZIDPrefix incomingType:1];

            v51 = self->_recents;
            v52 = IMSingleObjectArray();
            [(IMDRecentsController *)v51 noteRecentMessageForPeople:v52];
          }
        }

        [inputCopy setMessageItems:v60];
        firstObject = [v58 firstObject];
        [inputCopy setChat:firstObject];

        if (isFromMe)
        {
          [(IDSService *)self->_service _IMDTrackMetric:10400 ForMessageGUID:gUID3];
          firstObject2 = [v58 firstObject];
          [(IMReadReceiptProcessingPipelineComponent *)self _donateReadEventForChat:firstObject2];
        }

        v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            sender = [v57 sender];
            fromIdentifier2 = [inputCopy fromIdentifier];
            *buf = 138412546;
            v72 = sender;
            v73 = 2112;
            v74 = fromIdentifier2;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Invalid receipt sender: read receipts cannot be sent for messages not from self (%@), receipt was sent from (%@)", buf, 0x16u);
          }
        }

        v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      v8 = v32;
    }

    else
    {
      if (isFromMe && ![(IMDMessageStore *)self->_messageStore hasStoredMessageWithGUID:gUID3])
      {
        [(IDSService *)self->_service _IMDTrackMetric:10401 ForMessageGUID:gUID3];
        [(IMDMessageStore *)self->_messageStore addMissingMessageReadReceipt:gUID3];
      }

      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v28 = [v27 initWithDomain:*MEMORY[0x277D18DF8] code:8 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v28];
    }

LABEL_73:

    goto LABEL_74;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      gUID5 = [inputCopy GUID];
      *buf = 138412290;
      v72 = gUID5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring read receipt for message: %@", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_74:

  return v8;
}

- (id)_markMessagesUpToGUID:(id)d forChat:(id)chat messageIsFromMe:(BOOL)me date:(id)date
{
  meCopy = me;
  v53[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  chatCopy = chat;
  dateCopy = date;
  v36 = chatCopy;
  if (!chatCopy)
  {
    obj = 0;
    goto LABEL_41;
  }

  selfCopy = self;
  v38 = dateCopy;
  messageStore = self->_messageStore;
  guid = [chatCopy guid];
  v53[0] = guid;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v37 = [(IMDMessageStore *)messageStore markMessagesAsReadWithChatGUIDs:v14 upToGUID:dCopy readDate:v38 fromMe:meCopy];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found messages guids to mark as read: %@", buf, 0xCu);
    }
  }

  if ([v37 count])
  {
    [(IMDMessageStore *)self->_messageStore retractPostedNotificationsForMessageGUIDs:v37];
    [(IMDMessageStore *)self->_messageStore messagesWithGUIDs:v37];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    obj = v46 = 0u;
    v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = *v46;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          if (meCopy)
          {
            timeDelivered = [*(*(&v45 + 1) + 8 * i) timeDelivered];
            v24 = timeDelivered == 0;

            if (v24)
            {
              if (v38)
              {
                [v22 setTimeDelivered:?];
              }

              else
              {
                date = [MEMORY[0x277CBEAA8] date];
                [v22 setTimeDelivered:date];
              }

              v19 = 1;
            }
          }

          if ([v22 errorCode])
          {
            [v22 setErrorCode:0];
            v19 = 1;
          }

          timeRead = [v22 timeRead];
          __im_nanosecondTimeInterval = [timeRead __im_nanosecondTimeInterval];

          if (__im_nanosecondTimeInterval >= v17)
          {
            guid2 = [v22 guid];

            v17 = __im_nanosecondTimeInterval;
            v18 = guid2;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v16);

      if ((v19 & 1) == 0)
      {
        goto LABEL_37;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v29 = obj;
      v30 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v30)
      {
        v31 = *v42;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v42 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = [(IMDMessageStore *)selfCopy->_messageStore storeMessage:*(*(&v41 + 1) + 8 * j) forceReplace:0 modifyError:1 modifyFlags:0 flagMask:0];
          }

          v30 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v30);
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

LABEL_37:
    if (!meCopy)
    {
      [v36 updateLastReadMessageTimeStampIfNeeded:v17];
      [v36 updateLastSeenMessageGuidIfNeeded:v18];
    }

    [(IMDChatRegistry *)selfCopy->_chatRegistry updateStateForChat:v36 hintMessage:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];

    goto LABEL_40;
  }

  obj = 0;
LABEL_40:

  dateCopy = v38;
LABEL_41:

  return obj;
}

- (void)_donateReadEventForChat:(id)chat
{
  v15 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v4 = chatCopy;
  if (chatCopy)
  {
    chatIdentifier = [chatCopy chatIdentifier];
    v6 = [chatIdentifier copy];

    if ([v6 length])
    {
      v7 = IMBiomeQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B51D380;
      block[3] = &unk_278702FF0;
      v12 = v6;
      dispatch_async(v7, block);
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [v4 guid];
        *buf = 138412290;
        v14 = guid;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Cannot donate read receipt due to nil chat identifier for chat %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Cannot donate read receipt due to nil chat", buf, 2u);
    }
  }
}

@end