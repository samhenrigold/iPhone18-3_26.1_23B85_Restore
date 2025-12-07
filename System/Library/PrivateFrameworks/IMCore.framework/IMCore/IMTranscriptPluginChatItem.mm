@interface IMTranscriptPluginChatItem
- (BOOL)isDataSourceInitialized;
- (BOOL)isPlayed;
- (BOOL)isSaved;
- (BOOL)wantsAutoPlayback;
- (IMBalloonPluginDataSource)dataSource;
- (NSString)description;
- (NSString)pluginSessionGUID;
- (id)_initWithItem:(id)item initialPayload:(id)payload index:(int64_t)index messagePartRange:(_NSRange)range parentChatHasKnownParticipants:(BOOL)participants;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageSummaryInfo;
- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context;
- (unint64_t)playbackType;
- (unsigned)contentType;
@end

@implementation IMTranscriptPluginChatItem

- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context
{
  contextCopy = context;
  replyCopy = reply;
  v19 = [IMReplyContextTranscriptPluginChatItem alloc];
  _item = [(IMChatItem *)self _item];
  guid = [replyCopy guid];
  isFromMe = [replyCopy isFromMe];
  initialPayload = [(IMTranscriptPluginChatItem *)self initialPayload];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v15 = v14;
  LOBYTE(v18) = [(IMTranscriptPluginChatItem *)self parentChatHasKnownParticipants];
  contextCopy = [(IMReplyContextTranscriptPluginChatItem *)v19 _initWithItem:_item parentItem:replyCopy replyMessageGUID:guid replyIsFromMe:isFromMe initialPayload:initialPayload index:index messagePartRange:messagePartRange parentChatHasKnownParticipants:v15 chatContext:v18, contextCopy];

  return contextCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMTranscriptPluginChatItem;
  v4 = [(IMMessagePartChatItem *)&v8 description];
  type = [(IMTranscriptPluginChatItem *)self type];
  v6 = [v3 stringWithFormat:@"[{%@] type:%@ payload", v4, type];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  initialPayload = [(IMTranscriptPluginChatItem *)self initialPayload];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v10 = [v4 _initWithItem:_item initialPayload:initialPayload index:index messagePartRange:messagePartRange parentChatHasKnownParticipants:{v9, -[IMTranscriptPluginChatItem parentChatHasKnownParticipants](self, "parentChatHasKnownParticipants")}];

  return v10;
}

- (id)_initWithItem:(id)item initialPayload:(id)payload index:(int64_t)index messagePartRange:(_NSRange)range parentChatHasKnownParticipants:(BOOL)participants
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  payloadCopy = payload;
  pluginBundleID = [payloadCopy pluginBundleID];
  v17 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A18]];
  if (v17)
  {
    message = [itemCopy message];
    subject = [message subject];
    v18 = [subject isBusiness] ^ 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(IMMessagePartChatItem *)self _initWithItem:itemCopy index:index messagePartRange:location syndicationBehavior:length, v18];
  if (v17)
  {
  }

  if (v19)
  {
    guid = [itemCopy guid];
    v21 = sub_1A83AC604();

    [v19 _setGUID:v21];
    [v19 setInitialPayload:payloadCopy];
    pluginBundleID2 = [payloadCopy pluginBundleID];
    [v19 setBundleIdentifier:pluginBundleID2];

    v19[186] = participants;
    _item = [v19 _item];
    isBreadcrumb = [_item isBreadcrumb];

    if (isBreadcrumb)
    {
      dataSource = [v19 dataSource];
    }
  }

  return v19;
}

- (BOOL)isDataSourceInitialized
{
  v3 = +[IMBalloonPluginManager sharedInstance];
  initialPayload = [(IMTranscriptPluginChatItem *)self initialPayload];
  pluginSessionGUID = [initialPayload pluginSessionGUID];
  bundleIdentifier = [(IMTranscriptPluginChatItem *)self bundleIdentifier];
  v7 = [v3 existingDataSourceForMessageGUID:pluginSessionGUID bundleID:bundleIdentifier];

  return v7 != 0;
}

- (NSString)pluginSessionGUID
{
  _item = [(IMChatItem *)self _item];
  pluginSessionGUID = [_item pluginSessionGUID];

  return pluginSessionGUID;
}

- (unint64_t)playbackType
{
  type = [(IMTranscriptPluginChatItem *)self type];
  v4 = [type isEqualToString:*MEMORY[0x1E69A69A8]];

  if (v4)
  {
    return 1;
  }

  type2 = [(IMTranscriptPluginChatItem *)self type];
  if ([type2 isEqualToString:*MEMORY[0x1E69A69E0]])
  {
    message = [(IMMessageChatItem *)self message];
    expressiveSendStyleID = [message expressiveSendStyleID];
    v9 = [expressiveSendStyleID isEqualToString:*MEMORY[0x1E69A7088]];

    if (v9)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

- (IMBalloonPluginDataSource)dataSource
{
  selfCopy = self;
  v41 = *MEMORY[0x1E69E9840];
  _item = [(IMChatItem *)self _item];
  v4 = +[IMBalloonPluginManager sharedInstance];
  initialPayload = [(IMTranscriptPluginChatItem *)selfCopy initialPayload];
  v6 = [v4 dataSourceForPluginPayload:initialPayload];

  if ([(IMTranscriptPluginChatItem *)selfCopy hasSetIsLastChatItemOfPluginType])
  {
    [v6 setLast:{-[IMTranscriptPluginChatItem isLastChatItemOfPluginType](selfCopy, "isLastChatItemOfPluginType")}];
  }

  LODWORD(v7) = [_item isUpdatingDataSourcePayload];
  payloadData = [_item payloadData];
  v9 = (payloadData != 0) & (v7 ^ 1);

  if ([_item associatedMessageType] == 2)
  {
    balloonBundleID = [_item balloonBundleID];
    v11 = [balloonBundleID isEqualToString:*MEMORY[0x1E69A69A8]];

    if (!v11)
    {
      [_item setUpdatingDataSourcePayload:1];
      if (!v9)
      {
        goto LABEL_29;
      }

      goto LABEL_11;
    }

    consumedSessionPayloads = [_item consumedSessionPayloads];
    if (!consumedSessionPayloads)
    {
      LOBYTE(v9) = 0;
    }
  }

  [_item setUpdatingDataSourcePayload:1];
  if (v9)
  {
LABEL_11:
    v33 = v7;
    v13 = [IMPluginPayload alloc];
    chatContext = [(IMTranscriptChatItem *)selfCopy chatContext];
    v35 = _item;
    v32 = [(IMPluginPayload *)v13 initWithMessageItem:_item chatContext:chatContext];

    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = selfCopy;
    visibleAssociatedMessageChatItems = [(IMMessagePartChatItem *)selfCopy visibleAssociatedMessageChatItems];
    v17 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = v17;
    v19 = *v37;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(visibleAssociatedMessageChatItems);
        }

        v21 = *(*(&v36 + 1) + 8 * v20);
        if ([v21 associatedMessageType] == 4000)
        {
          v22 = [IMPluginPayload alloc];
          _item2 = [v21 _item];
          v24 = [(IMPluginPayload *)v22 initWithMessageItem:_item2];

          sender = [(IMPluginPayload *)v24 sender];
          if (sender)
          {
            goto LABEL_18;
          }

          if ([v35 isFromMe])
          {
            sender2 = [v21 sender];
            sender = [sender2 ID];

            if (sender)
            {
              [(IMPluginPayload *)v24 setSender:sender];
            }

LABEL_18:
          }

          if (v24)
          {
            [array addObject:v24];
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v27 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v36 objects:v40 count:16];
      v18 = v27;
      if (!v27)
      {
LABEL_28:

        v7 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
        _item = v35;
        messageID = [v35 messageID];
        guid = [v35 guid];
        [v6 _updatePayload:v32 associatedPayloads:v7 messageID:messageID messageGUID:guid];

        [v6 setInitialMessageIsFromMe:{objc_msgSend(v35, "isFromMe")}];
        selfCopy = v34;
        LOBYTE(v7) = v33;
        break;
      }
    }
  }

LABEL_29:
  [_item setUpdatingDataSourcePayload:v7 & 1];
  if ([(IMTranscriptPluginChatItem *)selfCopy parentChatHasKnownParticipants])
  {
    v30 = 0;
  }

  else
  {
    v30 = [(IMMessageChatItem *)selfCopy isFromMe]^ 1;
  }

  [v6 setParentChatHasAllUnknownRecipients:v30];

  return v6;
}

- (BOOL)isPlayed
{
  _item = [(IMChatItem *)self _item];
  isPlayed = [_item isPlayed];

  return isPlayed;
}

- (BOOL)isSaved
{
  _item = [(IMChatItem *)self _item];
  v3 = [_item expireState] == 3;

  return v3;
}

- (BOOL)wantsAutoPlayback
{
  message = [(IMMessageChatItem *)self message];
  isSenderUnknown = [message isSenderUnknown];

  if (isSenderUnknown)
  {
    return 0;
  }

  dataSource = [(IMTranscriptPluginChatItem *)self dataSource];
  playbackType = [dataSource playbackType];
  bundleID = [dataSource bundleID];
  v9 = [bundleID isEqualToString:*MEMORY[0x1E69A69A8]];

  v10 = [(IMTranscriptPluginChatItem *)self isPlayed]& (v9 ^ 1);
  v5 = playbackType == 1 && !v10 || playbackType == 2 && !(v10 & 1 | (([dataSource isLast] & 1) == 0));

  return v5;
}

- (unsigned)contentType
{
  type = [(IMTranscriptPluginChatItem *)self type];
  v3 = [type isEqualToString:*MEMORY[0x1E69A6A18]];

  if (v3)
  {
    return 1;
  }

  else
  {
    return 9;
  }
}

- (id)messageSummaryInfo
{
  dataSource = [(IMTranscriptPluginChatItem *)self dataSource];
  if (!dataSource)
  {
    v7 = 0;
    v8 = 0;
    absoluteString = 0;
    goto LABEL_20;
  }

  type = [(IMTranscriptPluginChatItem *)self type];
  if ([type isEqualToString:*MEMORY[0x1E69A6A18]])
  {
    v5 = [dataSource url];
    absoluteString = [v5 absoluteString];
  }

  else
  {
    absoluteString = [objc_opt_class() previewSummaryForPluginBundle:type];
  }

  v8 = type;
  v9 = objc_alloc(MEMORY[0x1E696ACD0]);
  pluginPayload = [dataSource pluginPayload];
  data = [pluginPayload data];
  v25 = 0;
  v12 = [v9 initForReadingFromData:data error:&v25];
  v13 = v25;

  if (objc_opt_respondsToSelector())
  {
    [v12 _enableStrictSecureDecodingMode];
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E291C();
    }
  }

  v15 = IMExtensionPayloadUnarchivingClasses();
  v16 = [v12 decodeObjectOfClasses:v15 forKey:*MEMORY[0x1E696A508]];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E29D4();
    }

    v7 = 0;
    if (absoluteString)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v7 = [v16 objectForKey:*MEMORY[0x1E69A6EC0]];
  if (!absoluteString)
  {
LABEL_16:
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2A48();
    }
  }

LABEL_19:

LABEL_20:
  v19 = MEMORY[0x1E695DF20];
  contentType = [(IMTranscriptPluginChatItem *)self contentType];
  messageItem = [(IMMessageChatItem *)self messageItem];
  expressiveSendStyleID = [messageItem expressiveSendStyleID];
  v23 = [v19 dictionaryWithAssociatedMessageSummary:absoluteString contentType:contentType associatedMessagePartText:0 pluginBundleID:v8 pluginDisplayName:v7 messageEffect:expressiveSendStyleID];

  return v23;
}

@end