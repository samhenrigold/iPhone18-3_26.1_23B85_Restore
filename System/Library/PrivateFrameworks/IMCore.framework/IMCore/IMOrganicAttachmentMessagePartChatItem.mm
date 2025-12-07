@interface IMOrganicAttachmentMessagePartChatItem
- (id)_initWithAttachmentMessagePartChatItem:(id)item;
- (id)layoutGroupIdentifier;
@end

@implementation IMOrganicAttachmentMessagePartChatItem

- (id)_initWithAttachmentMessagePartChatItem:(id)item
{
  itemCopy = item;
  _item = [itemCopy _item];
  text = [itemCopy text];
  index = [itemCopy index];
  messagePartRange = [itemCopy messagePartRange];
  v10 = v9;
  transferGUID = [itemCopy transferGUID];
  chatContext = [itemCopy chatContext];
  visibleAssociatedMessageChatItems = [itemCopy visibleAssociatedMessageChatItems];

  v14 = [(IMAttachmentMessagePartChatItem *)self _initWithItem:_item text:text index:index messagePartRange:messagePartRange transferGUID:v10 chatContext:transferGUID visibleAssociatedMessageChatItems:chatContext, visibleAssociatedMessageChatItems];
  return v14;
}

- (id)layoutGroupIdentifier
{
  _item = [(IMChatItem *)self _item];
  guid = [_item guid];

  return guid;
}

@end