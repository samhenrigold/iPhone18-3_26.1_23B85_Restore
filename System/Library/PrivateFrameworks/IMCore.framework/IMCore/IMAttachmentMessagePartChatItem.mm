@interface IMAttachmentMessagePartChatItem
- (BOOL)_wantsAttachmentContiguousForType:(id)type;
- (BOOL)isAttachmentContiguousWithChatItem:(id)item;
- (BOOL)parentChatIsSpam;
- (BOOL)supportsSuggestedActionsMenu;
- (id)_initWithItem:(id)item text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)d chatContext:(id)context visibleAssociatedMessageChatItems:(id)items;
- (id)commSafetyMessageGUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)layoutGroupIdentifier;
- (id)messageSummaryInfo;
- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context;
- (int64_t)syndicationBehavior;
- (unsigned)contentType;
@end

@implementation IMAttachmentMessagePartChatItem

- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context
{
  replyCopy = reply;
  v18 = [IMReplyContextAttachmentMessagePartChatItem alloc];
  _item = [(IMChatItem *)self _item];
  guid = [replyCopy guid];
  isFromMe = [replyCopy isFromMe];
  text = [(IMMessagePartChatItem *)self text];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v13 = v12;
  transferGUID = [(IMAttachmentMessagePartChatItem *)self transferGUID];
  chatContext = [(IMTranscriptChatItem *)self chatContext];
  v16 = [(IMReplyContextAttachmentMessagePartChatItem *)v18 _initWithItem:_item parentItem:replyCopy replyMessageGUID:guid replyIsFromMe:isFromMe text:text index:index messagePartRange:messagePartRange transferGUID:v13 chatContext:transferGUID, chatContext];

  return v16;
}

- (BOOL)supportsSuggestedActionsMenu
{
  v3 = +[IMFileTransferCenter sharedInstance];
  transferGUID = [(IMAttachmentMessagePartChatItem *)self transferGUID];
  v5 = [v3 transferForGUID:transferGUID];

  LOBYTE(transferGUID) = [v5 isSticker];
  return transferGUID ^ 1;
}

- (id)commSafetyMessageGUID
{
  message = [(IMMessageChatItem *)self message];
  guid = [message guid];

  return guid;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMAttachmentMessagePartChatItem;
  v4 = [(IMMessagePartChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] transferGUID: %@]", v4, self->_transferGUID];

  return v5;
}

- (id)layoutGroupIdentifier
{
  v4.receiver = self;
  v4.super_class = IMAttachmentMessagePartChatItem;
  layoutGroupIdentifier = [(IMTranscriptChatItem *)&v4 layoutGroupIdentifier];

  return layoutGroupIdentifier;
}

- (BOOL)parentChatIsSpam
{
  chatContext = [(IMTranscriptChatItem *)self chatContext];
  isSpam = [chatContext isSpam];

  return isSpam;
}

- (int64_t)syndicationBehavior
{
  _item = [(IMChatItem *)self _item];
  isFileAttachment = [_item isFileAttachment];

  if (!isFileAttachment)
  {
    return 0;
  }

  v5 = +[IMFileTransferCenter sharedInstance];
  transferGUID = [(IMAttachmentMessagePartChatItem *)self transferGUID];
  v7 = [v5 transferForGUID:transferGUID];

  filename = [v7 filename];
  v9 = IMUTITypeForFilename();

  if ([v7 isFromMomentShare])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v11 = ((isKindOfClass | IMUTITypeIsSupportedByPhotos()) & 1) == 0;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  text = [(IMMessagePartChatItem *)self text];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v10 = v9;
  transferGUID = self->_transferGUID;
  chatContext = [(IMTranscriptChatItem *)self chatContext];
  visibleAssociatedMessageChatItems = [(IMMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v14 = [v4 _initWithItem:_item text:text index:index messagePartRange:messagePartRange transferGUID:v10 chatContext:transferGUID visibleAssociatedMessageChatItems:{chatContext, visibleAssociatedMessageChatItems}];

  return v14;
}

- (BOOL)isAttachmentContiguousWithChatItem:(id)item
{
  itemCopy = item;
  if ([(IMTranscriptChatItem *)self isContiguousWithChatItem:itemCopy])
  {
    v5 = +[IMFileTransferCenter sharedInstance];
    transferGUID = [(IMAttachmentMessagePartChatItem *)self transferGUID];
    v7 = [v5 transferForGUID:transferGUID];

    filename = [v7 filename];
    v9 = IMUTITypeForFilename();

    if ([v7 isFromMomentShare])
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    IsSupportedByPhotos = IMUTITypeIsSupportedByPhotos();
    v11 = 0;
    if (([v9 isEqualToString:@"com.apple.pkpass"] & 1) == 0 && (IsSupportedByPhotos & 1) == 0 && (isKindOfClass & 1) == 0)
    {
      if (self->_wantsAttachmentContiguous && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = itemCopy[184];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)_initWithItem:(id)item text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUID:(id)d chatContext:(id)context visibleAssociatedMessageChatItems:(id)items
{
  length = range.length;
  location = range.location;
  dCopy = d;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = IMAttachmentMessagePartChatItem;
  items = [(IMMessagePartChatItem *)&v27 _initWithItem:item text:text index:index messagePartRange:location visibleAssociatedMessageChatItems:length, items];
  if (items)
  {
    v18 = [dCopy copy];
    v19 = items[24];
    items[24] = v18;

    v20 = [contextCopy copy];
    [items setChatContext:v20];

    v21 = +[IMFileTransferCenter sharedInstance];
    v22 = [v21 transferForGUID:dCopy];

    type = [v22 type];
    lowercaseString = [type lowercaseString];

    *(items + 184) = [items _wantsAttachmentContiguousForType:lowercaseString];
    if (!items[24])
    {
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1A84DFE9C(items, v25);
      }
    }
  }

  return items;
}

- (BOOL)_wantsAttachmentContiguousForType:(id)type
{
  typeCopy = type;
  if ([typeCopy hasSuffix:@".gif"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [typeCopy hasSuffix:@".apng"] ^ 1;
  }

  return v4;
}

- (unsigned)contentType
{
  v3 = +[IMFileTransferCenter sharedInstance];
  transferGUID = [(IMAttachmentMessagePartChatItem *)self transferGUID];
  v5 = [v3 transferForGUID:transferGUID];

  type = [v5 type];
  if (IMUTTypeIsImage() & 1) != 0 || (IMUTTypeIsSupportedAnimatedImage())
  {
    v7 = 3;
  }

  else if (IMUTTypeIsMovie())
  {
    v7 = 7;
  }

  else if (IMUTTypeIsVCard())
  {
    v7 = 4;
  }

  else if (IMUTTypeIsAudio())
  {
    v7 = 2;
  }

  else if (IMUTTypeIsMap())
  {
    v7 = 6;
  }

  else if (IMUTTypeIsCalendar())
  {
    v7 = 5;
  }

  else if (IMUTTypeIsPass())
  {
    v7 = 8;
  }

  else if (IMUTTypeIsWalletOrder())
  {
    v7 = 10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)messageSummaryInfo
{
  if ([(IMAttachmentMessagePartChatItem *)self contentType])
  {
    balloonBundleID = [(IMChatItem *)self balloonBundleID];
    v4 = *MEMORY[0x1E69A6A08];
    v5 = IMBalloonExtensionIDWithSuffix();
    v6 = [balloonBundleID isEqualToString:v5];

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v10 = MEMORY[0x1E695DF20];
    contentType = [(IMAttachmentMessagePartChatItem *)self contentType];
    messageItem = [(IMMessageChatItem *)self messageItem];
    expressiveSendStyleID = [messageItem expressiveSendStyleID];
    v9 = [v10 dictionaryWithAssociatedMessageSummary:0 contentType:contentType associatedMessagePartText:0 pluginBundleID:v7 pluginDisplayName:0 messageEffect:expressiveSendStyleID];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E28E0();
    }

    v9 = 0;
  }

  return v9;
}

@end