@interface IMMessageEffectControlChatItem
- (id)_initWithItem:(id)item effectStyleID:(id)d statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageEffectControlChatItem

- (id)_initWithItem:(id)item effectStyleID:(id)d statusItemSequenceNumber:(unint64_t)number
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = IMMessageEffectControlChatItem;
  v10 = [(IMMessageStatusChatItem *)&v13 _initWithItem:item statusType:15 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, d);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v5 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem effectStyleID:self->_effectStyleID statusItemSequenceNumber:{-[IMMessageStatusChatItem statusItemSequenceNumber](self, "statusItemSequenceNumber")}];

  return v5;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v6 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem effectStyleID:self->_effectStyleID statusItemSequenceNumber:number];

  return v6;
}

@end