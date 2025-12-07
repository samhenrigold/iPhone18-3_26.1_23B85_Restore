@interface IMTapbackSender
+ (id)_metricIdentifierForTapback:(id)tapback;
- (IMTapbackSender)initWithTapback:(id)tapback chat:(id)chat messageGUID:(id)d messagePartRange:(_NSRange)range messageSummaryInfo:(id)info threadIdentifier:(id)identifier;
- (IMTapbackSender)initWithTapback:(id)tapback chat:(id)chat messagePartChatItem:(id)item;
- (_NSRange)messagePartRange;
- (void)_trackSentTapbackWithContentType:(unsigned __int8)type serviceName:(id)name;
- (void)send;
@end

@implementation IMTapbackSender

- (IMTapbackSender)initWithTapback:(id)tapback chat:(id)chat messageGUID:(id)d messagePartRange:(_NSRange)range messageSummaryInfo:(id)info threadIdentifier:(id)identifier
{
  length = range.length;
  location = range.location;
  tapbackCopy = tapback;
  chatCopy = chat;
  dCopy = d;
  infoCopy = info;
  identifierCopy = identifier;
  v43.receiver = self;
  v43.super_class = IMTapbackSender;
  v18 = [(IMTapbackSender *)&v43 init];
  if (!v18)
  {
    goto LABEL_10;
  }

  if (!tapbackCopy)
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1044();
    }

    goto LABEL_19;
  }

  if (!chatCopy)
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1010();
    }

    goto LABEL_19;
  }

  if (!dCopy)
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0FDC();
    }

    goto LABEL_19;
  }

  if (!infoCopy)
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0FA8();
    }

LABEL_19:

    goto LABEL_20;
  }

  v36 = chatCopy;
  __im_associatedMessageContentType = [infoCopy __im_associatedMessageContentType];

  if (__im_associatedMessageContentType)
  {
    objc_storeStrong(&v18->_chat, chat);
    objc_storeStrong(&v18->_tapback, tapback);
    objc_storeStrong(&v18->_messageGUID, d);
    v18->_messagePartRange.location = location;
    v18->_messagePartRange.length = length;
    objc_storeStrong(&v18->_threadIdentifier, identifier);
    v20 = [tapbackCopy adjustMessageSummaryInfoForSending:infoCopy];
    messageSummaryInfo = v18->_messageSummaryInfo;
    v18->_messageSummaryInfo = v20;

    v22 = +[IMFileTransferCenter sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8310330;
    aBlock[3] = &unk_1E7811040;
    v23 = v22;
    v42 = v23;
    v24 = _Block_copy(aBlock);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1A8310370;
    v39[3] = &unk_1E7811040;
    v25 = v23;
    v40 = v25;
    v26 = _Block_copy(v39);
    v27 = [tapbackCopy backwardCompatibilityStringWithMessageSummaryInfo:v18->_messageSummaryInfo isAdaptiveImageGlyphProvider:v24 isCommSafetySensitiveProvider:v26];
    backwardCompatibilityString = v18->_backwardCompatibilityString;
    v18->_backwardCompatibilityString = v27;

    if (v18->_backwardCompatibilityString)
    {
      v29 = IMCreateSuperFormatStringFromPlainTextString();
      attributedContentString = v18->_attributedContentString;
      v18->_attributedContentString = v29;

      chatCopy = v36;
      if (v18->_attributedContentString)
      {

LABEL_10:
        v31 = v18;
        goto LABEL_21;
      }

      v35 = IMLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0F0C();
      }
    }

    else
    {
      v35 = IMLogHandleForCategory();
      chatCopy = v36;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0F40();
      }
    }

LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v34 = IMLogHandleForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0F74();
  }

  v31 = 0;
  chatCopy = v36;
LABEL_21:

  return v31;
}

- (IMTapbackSender)initWithTapback:(id)tapback chat:(id)chat messagePartChatItem:(id)item
{
  itemCopy = item;
  chatCopy = chat;
  tapbackCopy = tapback;
  originalMessagePartRange = [itemCopy originalMessagePartRange];
  v13 = v12;
  guid = [itemCopy guid];
  messageSummaryInfo = [itemCopy messageSummaryInfo];
  threadIdentifierForTapback = [itemCopy threadIdentifierForTapback];

  v17 = [(IMTapbackSender *)self initWithTapback:tapbackCopy chat:chatCopy messageGUID:guid messagePartRange:originalMessagePartRange messageSummaryInfo:v13 threadIdentifier:messageSummaryInfo, threadIdentifierForTapback];
  return v17;
}

- (void)send
{
  v30 = *MEMORY[0x1E69E9840];
  tapback = [(IMTapbackSender *)self tapback];
  chat = [(IMTapbackSender *)self chat];
  messageGUID = [(IMTapbackSender *)self messageGUID];
  messagePartRange = [(IMTapbackSender *)self messagePartRange];
  v8 = v7;
  messageSummaryInfo = [(IMTapbackSender *)self messageSummaryInfo];
  threadIdentifier = [(IMTapbackSender *)self threadIdentifier];
  v11 = [tapback messageForChat:chat messageGUID:messageGUID messagePartRange:messagePartRange messageSummaryInfo:v8 threadIdentifier:{messageSummaryInfo, threadIdentifier}];

  chat2 = [(IMTapbackSender *)self chat];
  account = [chat2 account];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  fileTransferGUIDs = [v11 fileTransferGUIDs];
  v15 = [fileTransferGUIDs countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(fileTransferGUIDs);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        v20 = +[IMFileTransferCenter sharedInstance];
        [v20 assignTransfer:v19 toMessage:v11 account:account];

        ++v18;
      }

      while (v16 != v18);
      v16 = [fileTransferGUIDs countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  chat3 = [(IMTapbackSender *)self chat];
  [chat3 sendMessage:v11];

  __im_associatedMessageContentType = [(NSDictionary *)self->_messageSummaryInfo __im_associatedMessageContentType];
  integerValue = [__im_associatedMessageContentType integerValue];

  serviceName = [account serviceName];
  [(IMTapbackSender *)self _trackSentTapbackWithContentType:integerValue serviceName:serviceName];
}

- (void)_trackSentTapbackWithContentType:(unsigned __int8)type serviceName:(id)name
{
  v14[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69A8168];
  nameCopy = name;
  sharedInstance = [v5 sharedInstance];
  v8 = *MEMORY[0x1E69A76C0];
  v13[0] = *MEMORY[0x1E69A76B0];
  v9 = [objc_opt_class() _metricIdentifierForTapback:self->_tapback];
  v14[0] = v9;
  v13[1] = *MEMORY[0x1E69A76B8];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMTapback isRemoved](self->_tapback, "isRemoved")}];
  v14[1] = v10;
  v13[2] = *MEMORY[0x1E69A76A8];
  v11 = IMMetricsValueForAssociatedMessageContentType();
  v13[3] = *MEMORY[0x1E69A76C8];
  v14[2] = v11;
  v14[3] = nameCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  [sharedInstance trackEvent:v8 withDictionary:v12];
}

+ (id)_metricIdentifierForTapback:(id)tapback
{
  tapbackCopy = tapback;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    visibleTapbackCounterpart = [tapbackCopy visibleTapbackCounterpart];
    associatedMessageType = [visibleTapbackCounterpart associatedMessageType];

    if ((associatedMessageType - 2000) < 6)
    {
      v6 = off_1E78122D8[associatedMessageType - 2000];
      goto LABEL_21;
    }

LABEL_11:
    v6 = @"unknown";
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"emoji";
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  transferGUID = [tapbackCopy transferGUID];
  v8 = +[IMFileTransferCenter sharedInstance];
  v9 = [v8 transferForGUID:transferGUID];

  if (v9)
  {
    if ([v9 isSticker])
    {
      stickerUserInfo = [v9 stickerUserInfo];
      v11 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];

      v12 = IMBalloonBundleIDFromExtensionID();
      if ([v12 isEqualToString:*MEMORY[0x1E69A68F8]])
      {
        v6 = @"sticker-user-generated";
      }

      else if ([v12 isEqualToString:*MEMORY[0x1E69A6980]])
      {
        v6 = @"sticker-animoji";
      }

      else if ([v9 isAdaptiveImageGlyph])
      {
        v6 = @"sticker-adaptive-glyph";
      }

      else
      {
        v6 = @"sticker-other";
      }
    }

    else
    {
      v6 = @"file-transfer-other";
    }
  }

  else
  {
    v6 = @"file-transfer-missing";
  }

LABEL_21:
  return v6;
}

- (_NSRange)messagePartRange
{
  length = self->_messagePartRange.length;
  location = self->_messagePartRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end