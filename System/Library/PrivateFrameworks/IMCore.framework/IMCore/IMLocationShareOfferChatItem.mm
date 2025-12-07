@interface IMLocationShareOfferChatItem
- (NSDate)time;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)offerState;
@end

@implementation IMLocationShareOfferChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item sender:self->_sender];

  [v6 _setActionableEclipsed:self->_actionableEclipsed];
  return v6;
}

- (NSDate)time
{
  _item = [(IMChatItem *)self _item];
  time = [_item time];

  return time;
}

- (int64_t)offerState
{
  _item = [(IMChatItem *)self _item];
  v4 = +[IMFMFSession sharedInstance];
  if ([v4 restrictLocationSharing])
  {
    disableLocationSharing = 1;
  }

  else
  {
    v6 = +[IMFMFSession sharedInstance];
    disableLocationSharing = [v6 disableLocationSharing];
  }

  if ([_item expired])
  {
    v7 = 2;
  }

  else
  {
    v7 = ![_item actionable] || ((self->_actionableEclipsed | disableLocationSharing) & 1) != 0;
  }

  return v7;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  v13.receiver = self;
  v13.super_class = IMLocationShareOfferChatItem;
  v8 = [(IMChatItem *)&v13 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, sender);
    guid = [itemCopy guid];
    v11 = sub_1A83AC604();

    [v9 _setGUID:v11];
  }

  return v9;
}

@end