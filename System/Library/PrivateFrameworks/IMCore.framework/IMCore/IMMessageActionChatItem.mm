@interface IMMessageActionChatItem
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)actionType;
@end

@implementation IMMessageActionChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item sender:self->_sender otherHandle:self->_otherHandle];

  return v6;
}

- (int64_t)actionType
{
  _item = [(IMChatItem *)self _item];
  actionType = [_item actionType];

  return actionType;
}

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle
{
  itemCopy = item;
  senderCopy = sender;
  handleCopy = handle;
  v16.receiver = self;
  v16.super_class = IMMessageActionChatItem;
  v11 = [(IMChatItem *)&v16 _initWithItem:itemCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 7, sender);
    objc_storeStrong(v12 + 8, handle);
    guid = [itemCopy guid];
    v14 = sub_1A83AC604();

    [v12 _setGUID:v14];
  }

  return v12;
}

@end