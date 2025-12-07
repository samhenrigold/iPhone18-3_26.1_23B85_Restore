@interface IMGroupTitleChangeChatItem
- (BOOL)unattributed;
- (NSString)title;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMGroupTitleChangeChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item sender:self->_sender];

  return v6;
}

- (NSString)title
{
  _item = [(IMChatItem *)self _item];
  title = [_item title];

  return title;
}

- (BOOL)unattributed
{
  _item = [(IMChatItem *)self _item];
  unattributed = [_item unattributed];

  return unattributed;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  v13.receiver = self;
  v13.super_class = IMGroupTitleChangeChatItem;
  v8 = [(IMChatItem *)&v13 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, sender);
    *(v9 + 56) = [itemCopy errorCode] != 0;
    guid = [itemCopy guid];
    v11 = sub_1A83AC604();

    [v9 _setGUID:v11];
  }

  return v9;
}

@end