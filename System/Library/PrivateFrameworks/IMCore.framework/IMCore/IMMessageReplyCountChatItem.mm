@interface IMMessageReplyCountChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me count:(unint64_t)count statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageReplyCountChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me count:(unint64_t)count statusItemSequenceNumber:(unint64_t)number
{
  itemCopy = item;
  parentItemCopy = parentItem;
  identifierCopy = identifier;
  dCopy = d;
  v30.receiver = self;
  v30.super_class = IMMessageReplyCountChatItem;
  v19 = [(IMMessageStatusChatItem *)&v30 _initWithItem:itemCopy statusType:18 time:0 count:count expireStatusType:0 statusItemSequenceNumber:number];
  if (v19)
  {
    [itemCopy guid];
    v20 = v29 = me;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:number];
    [v21 stringValue];
    obj = d;
    v23 = v22 = parentItemCopy;
    v24 = sub_1A83AC604();

    parentItemCopy = v22;
    [v19 _setGUID:v24];
    objc_storeStrong(v19 + 16, parentItem);
    v25 = [identifierCopy copy];
    v26 = v19[17];
    v19[17] = v25;

    objc_storeStrong(v19 + 18, obj);
    *(v19 + 120) = v29;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v5 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem parentItem:self->_parentItem threadIdentifier:self->_threadIdentifier replyMessageGUID:self->_replyMessageGUID replyIsFromMe:self->_replyIsFromMe count:-[IMMessageStatusChatItem count](self statusItemSequenceNumber:{"count"), -[IMMessageStatusChatItem statusItemSequenceNumber](self, "statusItemSequenceNumber")}];

  return v5;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v6 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem parentItem:self->_parentItem threadIdentifier:self->_threadIdentifier replyMessageGUID:self->_replyMessageGUID replyIsFromMe:self->_replyIsFromMe count:-[IMMessageStatusChatItem count](self statusItemSequenceNumber:{"count"), number}];

  return v6;
}

@end