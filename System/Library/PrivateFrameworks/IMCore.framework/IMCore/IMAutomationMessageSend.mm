@interface IMAutomationMessageSend
- (IMAutomationMessageSend)init;
- (id)_sendIMMessage:(id)message chat:(id)chat service:(id)service timeOut:(double)out resultDict:(id)dict error:(id *)error;
- (id)appendFilePathsWithGUIDs:(id)ds withText:(id)text;
- (id)clearAttachmentsUploadedToCloudkit;
- (id)copyFilePathsToTmpLocation:(id)location;
- (id)createIMMessageToSendWithMessage:(id)message filePaths:(id)paths bundleID:(id)d attributionInfoName:(id)name isAudioMessage:(BOOL)audioMessage threadIdentifier:(id)identifier;
- (id)deleteAttachmentWithMessageGUID:(id)d andFilePathIndex:(int64_t)index;
- (id)dictionaryFromGUID:(id)d;
- (id)fileSizeForMessageGUID:(id)d withFilePathIndex:(int64_t)index;
- (id)loadHighResolutionFileForMessageGUID:(id)d withFilePathIndex:(int64_t)index;
- (id)sendMessage:(id)message destinationID:(id)d filePaths:(id)paths isAudioMessage:(BOOL)audioMessage groupID:(id)iD bundleID:(id)bundleID attributionInfoName:(id)name service:(id)self0 timeOut:(double)self1 threadIdentifier:(id)self2 error:(id *)self3;
- (id)uploadAttachmentToCloudkitWithMessageGUID:(id)d andFilePathIndex:(int64_t)index;
- (void)deleteTmpFilePath:(id)path;
@end

@implementation IMAutomationMessageSend

- (IMAutomationMessageSend)init
{
  v8.receiver = self;
  v8.super_class = IMAutomationMessageSend;
  v2 = [(IMAutomationMessageSend *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingSendGUIDs = v2->_pendingSendGUIDs;
    v2->_pendingSendGUIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sentMessageInfo = v2->_sentMessageInfo;
    v2->_sentMessageInfo = v5;
  }

  return v2;
}

- (id)createIMMessageToSendWithMessage:(id)message filePaths:(id)paths bundleID:(id)d attributionInfoName:(id)name isAudioMessage:(BOOL)audioMessage threadIdentifier:(id)identifier
{
  audioMessageCopy = audioMessage;
  v50 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  pathsCopy = paths;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([pathsCopy count])
  {
    v14 = 0;
    v39 = *MEMORY[0x1E69A6FB0];
    v38 = *MEMORY[0x1E69A6FA8];
    v37 = *MEMORY[0x1E69A6FA0];
    do
    {
      v15 = MEMORY[0x1E695DFF8];
      v16 = [pathsCopy objectAtIndex:v14];
      v17 = [v15 fileURLWithPath:v16];

      v18 = +[IMFileTransferCenter sharedInstance];
      v19 = [v18 createNewOutgoingTransferWithLocalFileURL:v17];

      if ([dCopy length] && objc_msgSend(nameCopy, "length"))
      {
        v20 = +[IMFileTransferCenter sharedInstance];
        v21 = [v20 transferForGUID:v19];

        v22 = IMBalloonExtensionIDWithSuffix();
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v45 = v22;
            v46 = 2112;
            v47 = nameCopy;
            v48 = 2112;
            v49 = v19;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "createIMMessageToSendWithMessage, setting bundleID value to %@ and attribution info name %@ on transferGUID %@", buf, 0x20u);
          }
        }

        v42[0] = v39;
        v42[1] = v38;
        v43[0] = v22;
        v43[1] = nameCopy;
        v42[2] = v37;
        v43[2] = &unk_1F1BA1830;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
        [v21 setAttributionInfo:v24];

        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            attributionInfo = [v21 attributionInfo];
            *buf = 138412290;
            v45 = attributionInfo;
            _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "createIMMessageToSendWithMessage, attribution info %@", buf, 0xCu);
          }
        }
      }

      [v40 addObject:v19];
      v27 = +[IMFileTransferCenter sharedInstance];
      [v27 registerTransferWithDaemon:v19];

      ++v14;
    }

    while ([pathsCopy count] > v14);
  }

  if ([v40 count])
  {
    v28 = [(IMAutomationMessageSend *)self appendFilePathsWithGUIDs:v40 withText:messageCopy];
    if (audioMessageCopy)
    {
      v29 = 2097157;
    }

    else
    {
      v29 = 5;
    }

    v30 = [IMMessage instantMessageWithText:v28 messageSubject:0 fileTransferGUIDs:v40 flags:v29 threadIdentifier:identifierCopy];
    goto LABEL_22;
  }

  if ([messageCopy length])
  {
    v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:messageCopy attributes:0];
    v30 = [IMMessage instantMessageWithText:v28 flags:5 threadIdentifier:identifierCopy];
LABEL_22:
    v31 = v30;

    goto LABEL_23;
  }

  v31 = 0;
LABEL_23:

  return v31;
}

- (id)sendMessage:(id)message destinationID:(id)d filePaths:(id)paths isAudioMessage:(BOOL)audioMessage groupID:(id)iD bundleID:(id)bundleID attributionInfoName:(id)name service:(id)self0 timeOut:(double)self1 threadIdentifier:(id)self2 error:(id *)self3
{
  audioMessageCopy = audioMessage;
  v62 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  pathsCopy = paths;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  nameCopy = name;
  serviceCopy = service;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413570;
      v51 = messageCopy;
      v52 = 2112;
      v53 = dCopy;
      v54 = 2112;
      v55 = pathsCopy;
      v56 = 2112;
      v57 = bundleIDCopy;
      v58 = 2112;
      v59 = nameCopy;
      v60 = 2048;
      outCopy = out;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "sendMessageSync messageText %@ handle %@ filePaths %@ bundleID %@ attributionInfoName %@ timeout: %f", buf, 0x3Eu);
    }
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v24 = [iDCopy length];
  v25 = [messageCopy length];
  if (v24)
  {
    if (pathsCopy && v25)
    {
LABEL_8:
      v26 = v24 == 0;
      v42 = [(IMAutomationMessageSend *)self copyFilePathsToTmpLocation:pathsCopy];
      if (serviceCopy)
      {
        v27 = serviceCopy;
      }

      else
      {
        v27 = *MEMORY[0x1E69A7AF0];
      }

      v28 = [IMServiceImpl serviceWithInternalName:v27, v42];
      if (v26)
      {
        v35 = +[IMAccountController sharedInstance];
        v29 = [v35 bestAccountForService:v28];

        v36 = [v29 imHandleWithID:dCopy];
        v37 = +[IMChatRegistry sharedRegistry];
        v30 = [v37 chatWithHandle:v36];
      }

      else
      {
        v29 = +[IMChatRegistry sharedRegistry];
        v30 = [v29 existingChatWithGroupID:iDCopy];
      }

      if (v30)
      {
        v38 = [(IMAutomationMessageSend *)self createIMMessageToSendWithMessage:messageCopy filePaths:v43 bundleID:bundleIDCopy attributionInfoName:nameCopy isAudioMessage:audioMessageCopy threadIdentifier:identifierCopy];
        v39 = [(IMAutomationMessageSend *)self _sendIMMessage:v38 chat:v30 service:v28 timeOut:v23 resultDict:error error:out];

        v23 = v39;
      }

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v23;
          _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "SendMessage returning resultDir:%@", buf, 0xCu);
        }
      }

      v34 = v23;

      goto LABEL_34;
    }
  }

  else
  {
    v31 = pathsCopy == 0;
    if ([messageCopy length])
    {
      v31 = 0;
    }

    if ([dCopy length])
    {
      v32 = v31;
    }

    else
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
    }
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.private.IMCore.IMAutomationMessageSend" code:2 userInfo:0];
  }

  v34 = v23;
LABEL_34:

  return v34;
}

- (id)_sendIMMessage:(id)message chat:(id)chat service:(id)service timeOut:(double)out resultDict:(id)dict error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  serviceCopy = service;
  dictCopy = dict;
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:dictCopy];
  guid = [messageCopy guid];
  [(__CFString *)v16 setObject:guid forKey:@"GUID"];
  pendingSendGUIDs = [(IMAutomationMessageSend *)self pendingSendGUIDs];
  [pendingSendGUIDs addObject:guid];

  v19 = +[IMChatRegistry sharedRegistry];
  [v19 _setPostMessageSentNotifications:1];

  [chatCopy refreshServiceForSending];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      plainBody = [messageCopy plainBody];
      if ([messageCopy isTypingMessage])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(messageCopy, "flags")}];
      v26 = 138412802;
      v27 = plainBody;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "messageToSend body:%@ isTyping message %@ flags %@", &v26, 0x20u);
    }
  }

  if (serviceCopy)
  {
    [chatCopy sendMessage:messageCopy onService:serviceCopy];
  }

  else
  {
    [chatCopy sendMessage:messageCopy];
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = guid;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Sent IMmessage %@ resultDir:%@", &v26, 0x16u);
    }
  }

  return v16;
}

- (id)loadHighResolutionFileForMessageGUID:(id)d withFilePathIndex:(int64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8259C10;
  v17 = sub_1A825AF34;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = IMDMessageRecordCopyMessageForGUID();
  if (v6)
  {
    v7 = IMDMessageRecordCopyAttachments();
    v8 = v7;
    if (index < 0 || !v7)
    {
      if (!v7)
      {
LABEL_8:
        CFRelease(v6);
        goto LABEL_9;
      }
    }

    else if (CFArrayGetCount(v7) > index)
    {
      CFArrayGetValueAtIndex(v8, index);
      v12 = 0;
      cf = 0;
      _IMDAttachmentRecordBulkCopy();
    }

    CFRelease(v8);
    goto LABEL_8;
  }

LABEL_9:
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)deleteAttachmentWithMessageGUID:(id)d andFilePathIndex:(int64_t)index
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v4;
}

- (id)clearAttachmentsUploadedToCloudkit
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (id)uploadAttachmentToCloudkitWithMessageGUID:(id)d andFilePathIndex:(int64_t)index
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v4;
}

- (id)fileSizeForMessageGUID:(id)d withFilePathIndex:(int64_t)index
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = IMDMessageRecordCopyMessageForGUID();
  if (!v7)
  {
    [v6 setObject:@"Could not find IMDMessageRecordRef with message guid" forKeyedSubscript:@"error"];
    goto LABEL_10;
  }

  v8 = v7;
  v9 = IMDMessageRecordCopyAttachments();
  v10 = v9;
  if ((index & 0x8000000000000000) == 0 && v9)
  {
    if (CFArrayGetCount(v9) > index)
    {
      CFArrayGetValueAtIndex(v10, index);
      v12 = 0;
      v13 = 0;
      _IMDAttachmentRecordBulkCopy();
    }

    goto LABEL_8;
  }

  if (v9)
  {
LABEL_8:
    CFRelease(v10);
  }

  CFRelease(v8);
LABEL_10:

  return v6;
}

- (id)dictionaryFromGUID:(id)d
{
  dCopy = d;
  if (qword_1EB2EA3F0 != -1)
  {
    sub_1A84E1F68();
  }

  if (qword_1EB2EA400 != -1)
  {
    sub_1A84E1F7C();
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = off_1EB2EA3E8(dCopy);
  if (v5)
  {
    v6 = v5;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v46 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v34 = 0u;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    cf = 0;
    v29 = 0;
    off_1EB2EA3F8(v5, &v43, &v63, &v62, &v61, &v60, &v59, &v58, &v57, &v56, &v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v47, &v46 + 1, &v46, &v45, &v41, &v42, &v38, &v39, &v40, &v44, &v37, &v36, &v35, &v34, 0, &cf, &v33, &v32, &v30, 0, 0, 0, 0, &v29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v61)
    {
      if (v43)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v7 forKeyedSubscript:@"itemType"];
      }

      if (v63)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v8 forKeyedSubscript:@"messageID"];
      }

      if (v62)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v9 forKeyedSubscript:@"replaceID"];
      }

      if (v61)
      {
        [v4 setObject:v61 forKeyedSubscript:@"GUID"];
      }

      if (v60)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v10 forKeyedSubscript:@"date"];
      }

      if (v59)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v11 forKeyedSubscript:@"date-read"];
      }

      if (v58)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v12 forKeyedSubscript:@"date-delivered"];
      }

      if (v57)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v13 forKeyedSubscript:@"datePlayed"];
      }

      if (v56)
      {
        [v4 setObject:v56 forKeyedSubscript:@"body"];
      }

      if (v55)
      {
        [v4 setObject:v55 forKeyedSubscript:@"attributedBody"];
      }

      if (v54)
      {
        [v4 setObject:v54 forKeyedSubscript:@"flags"];
      }

      if (v53)
      {
        [v4 setObject:v53 forKeyedSubscript:@"service"];
      }

      if (v52)
      {
        [v4 setObject:v52 forKeyedSubscript:@"account"];
      }

      if (v51)
      {
        [v4 setObject:v51 forKeyedSubscript:@"accountGUID"];
      }

      if (v50)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v14 forKeyedSubscript:@"handleID"];
      }

      if (v49)
      {
        [v4 setObject:v49 forKeyedSubscript:@"messageSubject"];
      }

      if (v48)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v15 forKeyedSubscript:@"error"];
      }

      if (v47)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v16 forKeyedSubscript:@"type"];
      }

      v17 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v46) != 0];
      [v4 setObject:v17 forKeyedSubscript:@"hasAttachments"];

      v18 = [MEMORY[0x1E696AD98] numberWithBool:v46 != 0];
      [v4 setObject:v18 forKeyedSubscript:@"wasDDScanned"];

      if (v45)
      {
        [v4 setObject:v45 forKeyedSubscript:@"roomnames"];
      }

      if (v41)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v19 forKeyedSubscript:@"otherHandleID"];
      }

      if (v42)
      {
        [v4 setObject:v42 forKeyedSubscript:@"groupTitle"];
      }

      if (v38)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v20 forKeyedSubscript:@"groupActionType"];
      }

      if (v39)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v21 forKeyedSubscript:@"shareStatus"];
      }

      if (v40)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v22 forKeyedSubscript:@"shareDirection"];
      }

      if (v44)
      {
        v23 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v23 forKeyedSubscript:@"expireState"];
      }

      if (v37)
      {
        v24 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v24 forKeyedSubscript:@"messageActionType"];
      }

      if (v36)
      {
        [v4 setObject:v36 forKeyedSubscript:@"associatedMessageGUID"];
      }

      if (v35)
      {
        v25 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v25 forKeyedSubscript:@"associatedMessageType"];
      }

      if (cf)
      {
        [v4 setObject:cf forKeyedSubscript:@"payloadData"];
      }

      if (v33)
      {
        [v4 setObject:v33 forKeyedSubscript:@"expressiveSendStyleID"];
      }

      if (v32)
      {
        v26 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
        [v4 setObject:v26 forKeyedSubscript:@"timePlayedExpressiveSend"];
      }

      if (v30)
      {
        [v4 setObject:v30 forKeyedSubscript:@"messageSummaryInfo"];
      }

      if (v29)
      {
        [v4 setObject:v29 forKeyedSubscript:@"destinationCallerID"];
      }

      if (v61)
      {
        CFRelease(v61);
      }
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v55)
    {
      CFRelease(v55);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    CFRelease(v6);
  }

  v27 = v4;

  return v4;
}

- (id)copyFilePathsToTmpLocation:(id)location
{
  v32 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = locationCopy;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v4)
  {
    v6 = *v25;
    *&v5 = 138412290;
    v19 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 componentsSeparatedByString:{@"/", v19}];
        v10 = IMSafeTemporaryDirectory();
        lastObject = [v9 lastObject];
        v30 = lastObject;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        v13 = [v10 im_URLByAppendingPathComponents:v12];
        path = [v13 path];

        [(IMAutomationMessageSend *)self deleteTmpFilePath:path];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v23 = 0;
        LODWORD(lastObject) = [defaultManager copyItemAtPath:v8 toPath:path error:&v23];
        v16 = v23;

        if (lastObject)
        {
          [v20 addObject:path];
        }

        else if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v29 = v16;
            _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Error occurred copying attachment files to tmp path: %@", buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v4);
  }

  return v20;
}

- (void)deleteTmpFilePath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = 0;
    v6 = [defaultManager2 removeItemAtPath:pathCopy error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Error occurred deleting tmp attachment file: %@", buf, 0xCu);
      }
    }
  }

  else
  {

    v7 = 0;
  }
}

- (id)appendFilePathsWithGUIDs:(id)ds withText:(id)text
{
  dsCopy = ds;
  textCopy = text;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [textCopy length];
  v10 = MEMORY[0x1E69A5FD8];
  v11 = 0x1E696A000uLL;
  v25 = textCopy;
  if (v9)
  {
    NSLog(&cfstr_ValidText.isa);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    [v8 setObject:v12 forKey:*v10];

    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy attributes:v8];
    [v7 appendAttributedString:v13];

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v26 = v7;
  if ([dsCopy count])
  {
    v15 = 0;
    v16 = *v10;
    v17 = *MEMORY[0x1E69A5F68];
    do
    {
      v18 = [dsCopy objectAtIndex:v15];
      if (v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);

        v20 = [*(v11 + 3480) numberWithUnsignedInteger:v14];
        [v19 setObject:v20 forKey:v16];

        [v19 setObject:v18 forKey:v17];
        ++v14;
        v27 = -4;
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v27 length:1];
        v22 = v11;
        v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v19];
        [v26 appendAttributedString:v23];

        v11 = v22;
        v8 = v19;
      }

      ++v15;
    }

    while ([dsCopy count] > v15);
  }

  return v26;
}

@end