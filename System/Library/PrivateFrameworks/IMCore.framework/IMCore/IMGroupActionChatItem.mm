@interface IMGroupActionChatItem
- (BOOL)unattributed;
- (NSArray)fileTransferGUIDs;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)actionType;
@end

@implementation IMGroupActionChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item sender:self->_sender];

  return v6;
}

- (int64_t)actionType
{
  _item = [(IMChatItem *)self _item];
  actionType = [_item actionType];

  return actionType;
}

- (NSArray)fileTransferGUIDs
{
  _item = [(IMChatItem *)self _item];
  fileTransferGUIDs = [_item fileTransferGUIDs];

  return fileTransferGUIDs;
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
  v16.receiver = self;
  v16.super_class = IMGroupActionChatItem;
  v8 = [(IMChatItem *)&v16 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, sender);
    *(v9 + 56) = [itemCopy errorCode] != 0;
    isBusiness = [senderCopy isBusiness];
    v11 = @"a:";
    if (isBusiness)
    {
      v11 = @"ba:";
    }

    v12 = v11;
    guid = [itemCopy guid];
    v14 = sub_1A83AC604();

    [v9 _setGUID:v14];
  }

  return v9;
}

@end