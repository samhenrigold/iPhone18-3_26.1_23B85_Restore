@interface IMParticipantSubscriptionSwitchChatItem
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle;
@end

@implementation IMParticipantSubscriptionSwitchChatItem

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle
{
  itemCopy = item;
  senderCopy = sender;
  handleCopy = handle;
  v16.receiver = self;
  v16.super_class = IMParticipantSubscriptionSwitchChatItem;
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