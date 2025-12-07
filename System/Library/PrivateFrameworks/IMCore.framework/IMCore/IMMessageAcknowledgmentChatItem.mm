@interface IMMessageAcknowledgmentChatItem
- (BOOL)containsTransferGUID:(id)d;
- (BOOL)isEqualToTapback:(id)tapback;
- (NSArray)fileTransferGUIDs;
- (id)_initWithItem:(id)item sender:(id)sender tapback:(id)tapback;
- (id)commSafetyTransferGUID;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageAcknowledgmentChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  sender = [(IMAssociatedMessageChatItem *)self sender];
  tapback = [(IMAssociatedMessageChatItem *)self tapback];
  v8 = [v4 _initWithItem:_item sender:sender tapback:tapback];

  return v8;
}

- (id)_initWithItem:(id)item sender:(id)sender tapback:(id)tapback
{
  tapbackCopy = tapback;
  v9 = [(IMAssociatedMessageChatItem *)self _initWithItem:item sender:sender];
  v10 = v9;
  if (v9)
  {
    [v9 setTapback:tapbackCopy];
    v12 = 10;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    [v10 _setGeometryDescriptor:&v12];
  }

  return v10;
}

- (BOOL)isEqualToTapback:(id)tapback
{
  tapbackCopy = tapback;
  associatedMessageType = [(IMAssociatedMessageChatItem *)self associatedMessageType];
  v11 = 0;
  if (associatedMessageType == [tapbackCopy associatedMessageType])
  {
    if (-[IMAssociatedMessageChatItem associatedMessageType](self, "associatedMessageType") != 2006 || (-[IMAssociatedMessageChatItem associatedMessageEmoji](self, "associatedMessageEmoji"), v6 = objc_claimAutoreleasedReturnValue(), [tapbackCopy associatedMessageEmoji], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7) || (-[IMAssociatedMessageChatItem associatedMessageEmoji](self, "associatedMessageEmoji"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(tapbackCopy, "associatedMessageEmoji"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) != 0))
    {
      v11 = 1;
    }
  }

  return v11;
}

- (BOOL)containsTransferGUID:(id)d
{
  dCopy = d;
  fileTransferGUIDs = [(IMMessageAcknowledgmentChatItem *)self fileTransferGUIDs];
  v6 = [fileTransferGUIDs containsObject:dCopy];

  return v6;
}

- (NSArray)fileTransferGUIDs
{
  _item = [(IMChatItem *)self _item];
  fileTransferGUIDs = [_item fileTransferGUIDs];

  return fileTransferGUIDs;
}

- (id)commSafetyTransferGUID
{
  tapback = [(IMAssociatedMessageChatItem *)self tapback];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tapback2 = [(IMAssociatedMessageChatItem *)self tapback];
    transferGUID = [tapback2 transferGUID];
  }

  else
  {
    transferGUID = 0;
  }

  return transferGUID;
}

@end