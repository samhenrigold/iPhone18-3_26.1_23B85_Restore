@interface IMSuggestedReplyMessagePartChatItem
- (BOOL)isEqual:(id)equal;
- (IMSuggestedReplyMessagePartChatItem)initWithItem:(id)item suggestedReply:(id)reply;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSuggestedReplyMessagePartChatItem

- (IMSuggestedReplyMessagePartChatItem)initWithItem:(id)item suggestedReply:(id)reply
{
  itemCopy = item;
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = IMSuggestedReplyMessagePartChatItem;
  v8 = [(IMChatItem *)&v11 _initWithItem:itemCopy];
  if (v8)
  {
    guid = [itemCopy guid];
    [(IMTranscriptChatItem *)v8 _setGUID:guid];

    objc_storeStrong(&v8->_suggestedReply, reply);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    guid = [(IMTranscriptChatItem *)self guid];
    guid2 = [v5 guid];
    if ([guid isEqualToString:guid2])
    {
      suggestedReply = [(IMSuggestedReplyMessagePartChatItem *)self suggestedReply];
      suggestedReply2 = [v5 suggestedReply];
      v10 = [suggestedReply isEqual:suggestedReply2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  messageItem = [(IMMessageChatItem *)self messageItem];
  suggestedReply = [(IMSuggestedReplyMessagePartChatItem *)self suggestedReply];
  v7 = [v4 initWithItem:messageItem suggestedReply:suggestedReply];

  return v7;
}

@end