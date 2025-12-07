@interface IMAggregateMessagePartChatItem
- (id)_initWithItem:(id)item messagePartRange:(_NSRange)range subparts:(id)subparts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context;
@end

@implementation IMAggregateMessagePartChatItem

- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context
{
  replyCopy = reply;
  v6 = [IMReplyContextAggregateMessagePartChatItem alloc];
  _item = [(IMChatItem *)self _item];
  guid = [replyCopy guid];
  isFromMe = [replyCopy isFromMe];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v12 = v11;
  subparts = [(IMAggregateMessagePartChatItem *)self subparts];
  v14 = [(IMReplyContextAggregateMessagePartChatItem *)v6 _initWithItem:_item parentItem:replyCopy replyMessageGUID:guid replyIsFromMe:isFromMe messagePartRange:messagePartRange subparts:v12, subparts];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMAggregateMessagePartChatItem;
  v4 = [(IMTextMessagePartChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] subparts: %@]", v4, self->_subparts];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v8 = [v4 _initWithItem:_item messagePartRange:messagePartRange subparts:{v7, self->_subparts}];

  visibleAssociatedMessageChatItems = [(IMMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  [v8 _setVisibleAssociatedMessageChatItems:visibleAssociatedMessageChatItems];

  return v8;
}

- (id)_initWithItem:(id)item messagePartRange:(_NSRange)range subparts:(id)subparts
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  subpartsCopy = subparts;
  subject = [itemCopy subject];
  if (subject)
  {
    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    subject2 = [itemCopy subject];
    v14 = [v12 initWithString:subject2];
  }

  else
  {
    v14 = 0;
  }

  body = [itemCopy body];
  v22.receiver = self;
  v22.super_class = IMAggregateMessagePartChatItem;
  v16 = [(IMTextMessagePartChatItem *)&v22 _initWithItem:itemCopy text:body translationSecondaryText:0 index:0 messagePartRange:location subject:length isShowingEditHistory:v14 showTranslationAlternateText:0];

  if (v16)
  {
    guid = [itemCopy guid];
    v18 = sub_1A83AC604();

    [v16 _setGUID:v18];
    v19 = [subpartsCopy copy];
    v20 = v16[25];
    v16[25] = v19;
  }

  return v16;
}

@end