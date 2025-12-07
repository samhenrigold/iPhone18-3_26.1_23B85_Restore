@interface IMStewieStoppedSharingChatItem
- (IMChat)chat;
- (id)_initWithItem:(id)item emergencyUserHandle:(id)handle chat:(id)chat;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMStewieStoppedSharingChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  handle = self->_handle;
  chat = [(IMStewieStoppedSharingChatItem *)self chat];
  v8 = [v4 _initWithItem:_item emergencyUserHandle:handle chat:chat];

  return v8;
}

- (id)_initWithItem:(id)item emergencyUserHandle:(id)handle chat:(id)chat
{
  itemCopy = item;
  handleCopy = handle;
  chatCopy = chat;
  v16.receiver = self;
  v16.super_class = IMStewieStoppedSharingChatItem;
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