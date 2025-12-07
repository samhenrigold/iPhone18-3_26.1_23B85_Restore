@interface IMParticipantChangeChatItem
- (BOOL)unattributed;
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle;
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)changeType;
@end

@implementation IMParticipantChangeChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item sender:self->_sender otherHandle:self->_otherHandle];

  return v6;
}

- (int64_t)changeType
{
  _item = [(IMChatItem *)self _item];
  changeType = [_item changeType];

  return changeType;
}

- (BOOL)unattributed
{
  _item = [(IMChatItem *)self _item];
  unattributed = [_item unattributed];

  return unattributed;
}

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle
{
  handleCopy = handle;
  senderCopy = sender;
  itemCopy = item;
  v11 = [[IMParticipantChangeChatItem alloc] _initWithItem:itemCopy sender:senderCopy otherHandle:handleCopy context:0];

  return v11;
}

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle context:(id)context
{
  itemCopy = item;
  senderCopy = sender;
  handleCopy = handle;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = IMParticipantChangeChatItem;
  v14 = [(IMChatItem *)&v20 _initWithItem:itemCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 8, sender);
    objc_storeStrong(v15 + 9, handle);
    *(v15 + 56) = [itemCopy errorCode] != 0;
    guid = [itemCopy guid];
    v17 = sub_1A83AC604();

    [v15 _setGUID:v17];
    activeTelephonyConversationUUID = [contextCopy activeTelephonyConversationUUID];
    [v15 setActiveTelephonyConversationUUID:activeTelephonyConversationUUID];
  }

  return v15;
}

@end