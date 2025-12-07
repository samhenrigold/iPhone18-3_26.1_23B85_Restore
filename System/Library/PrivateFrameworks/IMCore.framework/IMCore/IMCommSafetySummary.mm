@interface IMCommSafetySummary
+ (id)primaryiCloudAccountIdentifier;
+ (id)recipientStrings:(id)strings;
+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images;
+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images childID:(id)iD deviceID:(id)deviceID senderID:(id)self0 eventSender:(id)self1;
@end

@implementation IMCommSafetySummary

+ (id)primaryiCloudAccountIdentifier
{
  if (qword_1EB2EA428 != -1)
  {
    sub_1A84E2548();
  }

  v3 = qword_1EB2EA420;

  return v3;
}

+ (id)recipientStrings:(id)strings
{
  v18 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  participants = [stringsCopy participants];
  v6 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(participants);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) ID];
        if (MEMORY[0x1AC56C3C0]())
        {
          v11 = IMFormattedDisplayStringForNumber();

          v10 = v11;
        }

        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  chatCopy = chat;
  imagesCopy = images;
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([mEMORY[0x1E69A7FC8] shouldNotifyParentAboutSensitivePhotos])
  {
    mEMORY[0x1E69A7FC8]2 = [MEMORY[0x1E69A7FC8] sharedManager];
    childIsYoungAgeGroup = [mEMORY[0x1E69A7FC8]2 childIsYoungAgeGroup];

    if (childIsYoungAgeGroup)
    {
      v25 = +[IMCommSafetySummary primaryiCloudAccountIdentifier];
      v18 = MGCopyAnswer();
      if (dCopy)
      {
        v19 = [chatCopy messageForGUID:dCopy];
        v20 = v19;
        if (v19)
        {
          sender = [v19 sender];
          v22 = [sender ID];
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      if (MEMORY[0x1AC56C3C0](v22))
      {
        v24 = IMFormattedDisplayStringForNumber();

        v22 = v24;
      }

      [self registerEvent:event eventType:type messageGUID:dCopy chat:chatCopy forImages:imagesCopy childID:v25 deviceID:v18 senderID:v22 eventSender:&unk_1F1B6F2E0];

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Not registering event %lu because setting is not enabled!", buf, 0xCu);
    }
  }

LABEL_17:
}

+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images childID:(id)iD deviceID:(id)deviceID senderID:(id)self0 eventSender:(id)self1
{
  v85 = *MEMORY[0x1E69E9840];
  dCopy = d;
  chatCopy = chat;
  imagesCopy = images;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  senderIDCopy = senderID;
  senderCopy = sender;
  v50 = +[IMChatRegistry sharedRegistry];
  chatIdentifier = [chatCopy chatIdentifier];
  v55 = [v50 messagesURLWithChat:chatCopy];
  v46 = [IMCommSafetySummary recipientStrings:chatCopy];
  if (!imagesCopy)
  {
    v15 = objc_alloc(MEMORY[0x1E698F260]);
    v16 = [MEMORY[0x1E695DF00] now];
    [v16 timeIntervalSinceReferenceDate];
    v17 = [v15 initWithChildID:iDCopy deviceID:deviceIDCopy sourceBundleID:@"com.apple.MobileSMS" absoluteTimeStamp:event eventDirection:type eventType:0 contentType:v46 contactHandles:&stru_1F1B76F98 contentID:chatIdentifier conversationID:0 imageData:0 senderHandle:0 contentURL:v55 conversationURL:?];

    senderCopy[2](senderCopy, v17, v17);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Registered event of type %lu with Biome", buf, 0xCu);
      }
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v43 = imagesCopy;
  v51 = [v43 countByEnumeratingWithState:&v66 objects:v84 count:16];
  if (v51)
  {
    v44 = *v67;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(v43);
        }

        v65 = *(*(&v66 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        imageData = [v65 imageData];
        v62 = IMRescaledImageDataFromDataForBiomeDonation();

        if (dCopy)
        {
          [v50 messagesURLWithMessageGUID:dCopy];
        }

        else
        {
          [v50 messagesURLWithChat:chatCopy];
        }
        v64 = ;
        v20 = objc_alloc(MEMORY[0x1E698F260]);
        v21 = [MEMORY[0x1E695DF00] now];
        [v21 timeIntervalSinceReferenceDate];
        v23 = v22;
        identifier = [v65 identifier];
        v25 = [v20 initWithChildID:iDCopy deviceID:deviceIDCopy sourceBundleID:@"com.apple.MobileSMS" absoluteTimeStamp:event eventDirection:type eventType:0 contentType:v23 contactHandles:v46 contentID:identifier conversationID:chatIdentifier imageData:v62 senderHandle:senderIDCopy contentURL:v64 conversationURL:v55];

        v58 = objc_alloc(MEMORY[0x1E698F260]);
        childID = [v25 childID];
        deviceID = [v25 deviceID];
        sourceBundleID = [v25 sourceBundleID];
        [v25 absoluteTimestamp];
        v27 = v26;
        eventDirection = [v25 eventDirection];
        eventType = [v25 eventType];
        contentType = [v25 contentType];
        contactHandles = [v25 contactHandles];
        contentID = [v25 contentID];
        conversationID = [v25 conversationID];
        senderHandle = [v25 senderHandle];
        contentURL = [v25 contentURL];
        conversationURL = [v25 conversationURL];
        v37 = [v58 initWithChildID:childID deviceID:deviceID sourceBundleID:sourceBundleID absoluteTimeStamp:eventDirection eventDirection:eventType eventType:contentType contentType:v27 contactHandles:contactHandles contentID:contentID conversationID:conversationID imageData:0 senderHandle:senderHandle contentURL:contentURL conversationURL:conversationURL];

        senderCopy[2](senderCopy, v25, v37);
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v65 identifier];
            absoluteString = [v64 absoluteString];
            absoluteString2 = [v55 absoluteString];
            *buf = 138413826;
            typeCopy = dCopy;
            v72 = 2048;
            typeCopy2 = type;
            v74 = 2112;
            v75 = senderIDCopy;
            v76 = 2112;
            v77 = identifier2;
            v78 = 2112;
            v79 = absoluteString;
            v80 = 2112;
            v81 = chatIdentifier;
            v82 = 2112;
            v83 = absoluteString2;
            _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Registered event with messageGUID %@, of type %lu, sender %@, contentID %@, contentURL %@, conversationID %@, conversationURL %@ with Biome", buf, 0x48u);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v51 = [v43 countByEnumeratingWithState:&v66 objects:v84 count:16];
    }

    while (v51);
  }
}

@end