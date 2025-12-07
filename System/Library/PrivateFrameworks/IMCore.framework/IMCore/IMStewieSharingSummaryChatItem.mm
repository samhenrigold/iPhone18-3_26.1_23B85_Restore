@interface IMStewieSharingSummaryChatItem
- (IMChat)chat;
- (id)_initWithItem:(id)item emergencyUserHandle:(id)handle chat:(id)chat;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMStewieSharingSummaryChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item];

  return v6;
}

- (id)_initWithItem:(id)item emergencyUserHandle:(id)handle chat:(id)chat
{
  itemCopy = item;
  handleCopy = handle;
  chatCopy = chat;
  v16.receiver = self;
  v16.super_class = IMStewieSharingSummaryChatItem;
  v11 = [(IMChatItem *)&v16 _initWithItem:itemCopy];
  if (v11)
  {
    guid = [itemCopy guid];
    v13 = [handleCopy ID];
    v14 = sub_1A83AC604();

    [v11 _setGUID:v14];
    objc_storeStrong(v11 + 7, handle);
    objc_storeWeak(v11 + 8, chatCopy);
  }

  return v11;
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

@end