@interface IMChatItem
- (BOOL)itemIsReply;
- (BOOL)itemIsReplyContextPreview;
- (BOOL)itemIsThreadOriginatorWithThreadIdentifier:(id *)identifier;
- (NSString)balloonBundleID;
- (id)_initWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)threadGroupIdentifier;
- (void)setNeedsReloadForTransferStatusChangeWithType:(int64_t)type;
@end

@implementation IMChatItem

- (BOOL)itemIsReply
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  if ([(IMChatItem *)self isReplyContextPreview])
  {
    return 0;
  }

  threadIdentifier = [(IMChatItem *)self threadIdentifier];
  v3 = [threadIdentifier length] != 0;

  return v3;
}

- (BOOL)itemIsReplyContextPreview
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return [(IMChatItem *)self isReplyContextPreview];
}

- (BOOL)itemIsThreadOriginatorWithThreadIdentifier:(id *)identifier
{
  if ([(IMChatItem *)self isReplyContextPreview])
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    replyCount = [(IMChatItem *)selfCopy replyCount];
    v5 = replyCount != 0;
    if (!identifier || !replyCount)
    {
      goto LABEL_12;
    }

    v8 = IMCreateThreadIdentifierForMessagePartChatItem(selfCopy);
LABEL_11:
    v11 = v8;
    *identifier = v11;

    v5 = 1;
LABEL_12:

    return v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    replyCount2 = [(IMChatItem *)selfCopy2 replyCount];
    v5 = replyCount2 != 0;
    if (!identifier || !replyCount2)
    {
      goto LABEL_12;
    }

    v8 = IMCreateThreadIdentifierForRetractedMessagePartChatItem(selfCopy2);
    goto LABEL_11;
  }

  return 0;
}

- (id)threadGroupIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    threadIdentifier = [(IMChatItem *)selfCopy threadIdentifier];
    if (threadIdentifier)
    {
LABEL_10:
      v8 = threadIdentifier;
LABEL_11:

      goto LABEL_13;
    }

    isReplyContextPreview = [(IMChatItem *)selfCopy isReplyContextPreview];
    replyCount = [(IMChatItem *)selfCopy replyCount];
    if (isReplyContextPreview || replyCount)
    {
      threadIdentifier = IMCreateThreadIdentifierForMessagePartChatItem(selfCopy);
      goto LABEL_10;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    threadIdentifier = [(IMChatItem *)selfCopy2 threadIdentifier];
    if (threadIdentifier)
    {
      goto LABEL_10;
    }

    if ([(IMChatItem *)selfCopy2 replyCount])
    {
      threadIdentifier = IMCreateThreadIdentifierForRetractedMessagePartChatItem(selfCopy2);
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMChatItem;
  v4 = [(IMChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (%@)", v4, self->_item];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  item = self->_item;

  return [v4 _initWithItem:item];
}

- (void)setNeedsReloadForTransferStatusChangeWithType:(int64_t)type
{
  if (type == 1)
  {
    if (![(IMChatItem *)self supportsCommunicationSafety])
    {
      return;
    }

    type = 1;
  }

  self->_fileTransferReloadStatus = type;
}

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = IMChatItem;
  v6 = [(IMChatItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (NSString)balloonBundleID
{
  _item = [(IMChatItem *)self _item];
  balloonBundleID = [_item balloonBundleID];

  return balloonBundleID;
}

@end