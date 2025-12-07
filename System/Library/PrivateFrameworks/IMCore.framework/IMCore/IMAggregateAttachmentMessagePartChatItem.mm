@interface IMAggregateAttachmentMessagePartChatItem
- (id)_initWithItem:(id)item text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)ds chatContext:(id)context visibleAssociatedMessageChatItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context;
@end

@implementation IMAggregateAttachmentMessagePartChatItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMAggregateAttachmentMessagePartChatItem;
  v4 = [(IMAttachmentMessagePartChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] transferGUIDs: %@]", v4, self->_transferGUIDs];

  return v5;
}

- (id)replyContextPreviewChatItemForReply:(id)reply chatContext:(id)context
{
  replyCopy = reply;
  v19 = [IMReplyContextAggregateAttachmentMessagePartChatItem alloc];
  _item = [(IMChatItem *)self _item];
  guid = [replyCopy guid];
  isFromMe = [replyCopy isFromMe];
  text = [(IMMessagePartChatItem *)self text];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v12 = v11;
  transferGUIDs = [(IMAggregateAttachmentMessagePartChatItem *)self transferGUIDs];
  chatContext = [(IMTranscriptChatItem *)self chatContext];
  v15 = [(IMReplyContextAggregateAttachmentMessagePartChatItem *)v19 _initWithItem:_item parentItem:replyCopy replyMessageGUID:guid replyIsFromMe:isFromMe text:text index:index messagePartRange:messagePartRange transferGUIDs:v12 chatContext:transferGUIDs, chatContext];

  aggregateAttachmentParts = [(IMAggregateAttachmentMessagePartChatItem *)self aggregateAttachmentParts];
  [v15 setAggregateAttachmentParts:aggregateAttachmentParts];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  text = [(IMMessagePartChatItem *)self text];
  index = [(IMMessagePartChatItem *)self index];
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v10 = v9;
  transferGUIDs = self->_transferGUIDs;
  chatContext = [(IMTranscriptChatItem *)self chatContext];
  visibleAssociatedMessageChatItems = [(IMMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v14 = [v4 _initWithItem:_item text:text index:index messagePartRange:messagePartRange transferGUIDs:v10 chatContext:transferGUIDs visibleAssociatedMessageChatItems:{chatContext, visibleAssociatedMessageChatItems}];

  aggregateAttachmentParts = [(IMAggregateAttachmentMessagePartChatItem *)self aggregateAttachmentParts];
  [v14 setAggregateAttachmentParts:aggregateAttachmentParts];

  return v14;
}

- (id)_initWithItem:(id)item text:(id)text index:(int64_t)index messagePartRange:(_NSRange)range transferGUIDs:(id)ds chatContext:(id)context visibleAssociatedMessageChatItems:(id)items
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  dsCopy = ds;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = IMAggregateAttachmentMessagePartChatItem;
  items = [(IMMessagePartChatItem *)&v26 _initWithItem:itemCopy text:text index:index messagePartRange:location visibleAssociatedMessageChatItems:length, items];
  if (items)
  {
    guid = [itemCopy guid];
    v20 = sub_1A83AC604();

    [items _setGUID:v20];
    v21 = [dsCopy copy];
    v22 = items[28];
    items[28] = v21;

    [items setChatContext:contextCopy];
    v23 = items[28];
    if (!v23 || ![v23 count])
    {
      v24 = IMLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_1A84DFF34(items, v24);
      }
    }
  }

  return items;
}

@end