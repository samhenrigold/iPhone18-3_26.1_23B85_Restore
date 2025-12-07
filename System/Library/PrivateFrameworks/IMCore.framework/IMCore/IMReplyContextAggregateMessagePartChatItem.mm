@interface IMReplyContextAggregateMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me messagePartRange:(_NSRange)range subparts:(id)subparts;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMReplyContextAggregateMessagePartChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  parentItem = self->_parentItem;
  replyMessageGUID = self->_replyMessageGUID;
  replyIsFromMe = self->_replyIsFromMe;
  messagePartRange = [(IMMessagePartChatItem *)self messagePartRange];
  v11 = v10;
  subparts = [(IMAggregateMessagePartChatItem *)self subparts];
  v13 = [v4 _initWithItem:_item parentItem:parentItem replyMessageGUID:replyMessageGUID replyIsFromMe:replyIsFromMe messagePartRange:messagePartRange subparts:{v11, subparts}];

  return v13;
}

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me messagePartRange:(_NSRange)range subparts:(id)subparts
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  parentItemCopy = parentItem;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = IMReplyContextAggregateMessagePartChatItem;
  subparts = [(IMAggregateMessagePartChatItem *)&v21 _initWithItem:itemCopy messagePartRange:location subparts:length, subparts];
  if (subparts)
  {
    guid = [itemCopy guid];
    v19 = sub_1A83AC604();

    [subparts _setGUID:v19];
    objc_storeStrong(subparts + 27, parentItem);
    *(subparts + 208) = me;
    objc_storeStrong(subparts + 28, d);
  }

  return subparts;
}

@end