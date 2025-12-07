@interface IMSPIChat
+ (void)enumerateAllChatsWithBlock:(id)block;
- (IMSPIChat)initWithChatRecord:(_IMDChatRecordStruct *)record;
- (id)description;
- (void)enumerateAllAttachmentsWithBlock:(id)block;
- (void)enumerateAllMessagesWithBlock:(id)block;
@end

@implementation IMSPIChat

+ (void)enumerateAllChatsWithBlock:(id)block
{
  blockCopy = block;
  if (qword_1EB2EA310 != -1)
  {
    sub_1A84E10A0();
  }

  v4 = off_1EB2EA308();
  if (v4)
  {
    v5 = v4;
    v10 = 0;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = [[IMSPIChat alloc] initWithChatRecord:CFArrayGetValueAtIndex(v5, v6)];
        if (v8)
        {
          blockCopy[2](blockCopy, v8, &v10);
        }

        v9 = v10;

        objc_autoreleasePoolPop(v7);
        if (v9 == 1)
        {
          break;
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(v5));
    }

    CFRelease(v5);
  }
}

- (void)enumerateAllAttachmentsWithBlock:(id)block
{
  v42[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  chatIdentifier = [(IMSPIChat *)self chatIdentifier];
  v42[0] = chatIdentifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];

  serviceName = [(IMSPIChat *)self serviceName];
  v41 = serviceName;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];

  if (qword_1EB2EA320 != -1)
  {
    sub_1A84E10B4();
  }

  v8 = off_1EB2EA318(v5, v7);
  if (v8)
  {
    v9 = v8;
    v25 = v7;
    v26 = v5;
    v40 = 0;
    if (CFArrayGetCount(v8) >= 1)
    {
      v10 = 0;
      v27 = v9;
      while (1)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = CFArrayGetValueAtIndex(v9, v10);
        v13 = [v12 objectForKeyedSubscript:@"guid"];
        if ([v13 length])
        {
          v14 = IMDAttachmentRecordCopyAttachmentForGUID();
          v38 = 0;
          v39 = 0;
          v36 = 0;
          v37 = 0;
          v35 = 0;
          v34 = 0;
          v33 = 0;
          v31 = v11;
          cf = 0;
          v30 = v12;
          if (qword_1EB2EA330 != -1)
          {
            sub_1A84E10DC();
          }

          v29 = v14;
          off_1EB2EA328(v14, 0, &v38, 0, 0, &v39, &v36, 0, &v37, &v34, 0, 0, &v34 + 1, 0, &v35, 0, 0, 0, 0, 0, 0, &v33, &cf);
          v15 = [MEMORY[0x1E695DFF8] URLWithString:v39];
          v16 = [IMSPIAttachment alloc];
          v17 = v36;
          v18 = v37;
          v19 = HIBYTE(v34) != 0;
          v20 = v34 != 0;
          v21 = v35;
          v22 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v38];
          v23 = [(IMSPIAttachment *)v16 initWithGuid:v13 fileUrl:v15 transferState:v18 uti:v17 isSticker:v19 isOutgoing:v20 attributionInfo:v21 creationDate:v22 adaptiveImageGlyphContentIdentifier:v33 adaptiveImageGlyphContentDescription:cf];

          if (v33)
          {
            CFRelease(v33);
            v33 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v12 = v30;
          if (v39)
          {
            CFRelease(v39);
            v39 = 0;
          }

          if (v36)
          {
            CFRelease(v36);
            v36 = 0;
          }

          if (v35)
          {
            CFRelease(v35);
            v35 = 0;
          }

          CFRelease(v29);
          blockCopy[2](blockCopy, v23, &v40);
          v24 = v40;

          v9 = v27;
          v11 = v31;
          if (v24)
          {
            break;
          }
        }

        objc_autoreleasePoolPop(v11);
        if (++v10 >= CFArrayGetCount(v9))
        {
          goto LABEL_23;
        }
      }

      objc_autoreleasePoolPop(v31);
    }

LABEL_23:
    CFRelease(v9);
    v7 = v25;
    v5 = v26;
  }
}

- (void)enumerateAllMessagesWithBlock:(id)block
{
  v35[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  chatIdentifier = [(IMSPIChat *)self chatIdentifier];
  v35[0] = chatIdentifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];

  serviceName = [(IMSPIChat *)self serviceName];
  v34 = serviceName;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

  v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v10 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOnlyUnreadAndLimit();
  if (v10)
  {
    v11 = v10;
    if (CFArrayGetCount(v10) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
      v13 = _IMSPIMessageFromRecord(ValueAtIndex, 0, 0, v9, QOS_CLASS_DEFAULT);
      if (v13)
      {
        v28 = v13;
        v29 = v11;
        guid = [v13 guid];
        v15 = 0;
        v33 = 0;
        v30 = v8;
        v31 = v6;
        while (1)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();
          if (!v17)
          {
            goto LABEL_19;
          }

          v18 = v17;
          Count = CFArrayGetCount(v17);
          if (CFArrayGetCount(v18) < 1)
          {
            goto LABEL_18;
          }

          v19 = 0;
          while (1)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = CFArrayGetValueAtIndex(v18, v19);
            v22 = _IMSPIMessageFromRecord(v21, 0, 0, v9, QOS_CLASS_DEFAULT);
            v23 = v22;
            if (!v22)
            {
              goto LABEL_13;
            }

            text = [v22 text];
            if (text)
            {
              break;
            }

            attributedText = [v23 attributedText];

            if (attributedText)
            {
              goto LABEL_12;
            }

LABEL_13:
            if (!v19)
            {
              guid2 = [v23 guid];

              guid = guid2;
            }

            objc_autoreleasePoolPop(v20);
            if (++v19 >= CFArrayGetCount(v18))
            {
              goto LABEL_18;
            }
          }

LABEL_12:
          blockCopy[2](blockCopy, v23, &v33);
          if ((v33 & 1) == 0)
          {
            goto LABEL_13;
          }

          objc_autoreleasePoolPop(v20);
LABEL_18:
          CFRelease(v18);
          v8 = v30;
          v6 = v31;
          v15 = Count;
LABEL_19:
          v27 = v33;
          objc_autoreleasePoolPop(v16);
          if ((v27 & 1) != 0 || v15 <= 999)
          {

            v11 = v29;
            break;
          }
        }
      }
    }

    CFRelease(v11);
  }
}

- (IMSPIChat)initWithChatRecord:(_IMDChatRecordStruct *)record
{
  v31 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = IMSPIChat;
  v4 = [(IMSPIChat *)&v26 init];
  if (!v4)
  {
LABEL_14:
    v13 = v4;
    goto LABEL_20;
  }

  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if (qword_1EB2EA4D0 != -1)
  {
    sub_1A84E440C();
  }

  off_1EB2EA4C8(record, &v21, 0, 0, 0, &v23, &v25, &v24, 0, &v22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v20, 0, 0, &v19, &v18);
  serviceName = v4->_serviceName;
  v4->_serviceName = v25;

  guid = v4->_guid;
  v4->_guid = v24;

  chatIdentifier = v4->_chatIdentifier;
  v4->_chatIdentifier = v23;

  displayName = v4->_displayName;
  v4->_displayName = v22;

  v4->_isGroup = v21 != 45;
  v4->_isBlackholed = v20 != 0;
  if (v4->_guid && v4->_serviceName)
  {
    if (qword_1EB2EA4E0 != -1)
    {
      sub_1A84E4434();
    }

    v9 = off_1EB2EA4D8(record);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v9 count])
    {
      v11 = 0;
      do
      {
        v12 = sub_1A8262D14([v9 objectAtIndex:v11]);
        if (v12)
        {
          [v10 addObject:v12];
        }

        ++v11;
      }

      while (v11 < [v9 count]);
    }

    [(IMSPIChat *)v4 setHandles:v10];

    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v4->_guid;
      v16 = v4->_serviceName;
      *buf = 138412546;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Cannot initialize chat with record: guid: %@ service: %@.", buf, 0x16u);
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  chatIdentifier = [(IMSPIChat *)self chatIdentifier];
  guid = [(IMSPIChat *)self guid];
  serviceName = [(IMSPIChat *)self serviceName];
  displayName = [(IMSPIChat *)self displayName];
  isGroup = [(IMSPIChat *)self isGroup];
  v9 = @"NO";
  if (isGroup)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"IMSPIChat: %p [ChatIdentifier: %@  guid: %@, serviceName: %@, displayName: %@, isGroup: %@]", self, chatIdentifier, guid, serviceName, displayName, v9];

  return v10;
}

@end