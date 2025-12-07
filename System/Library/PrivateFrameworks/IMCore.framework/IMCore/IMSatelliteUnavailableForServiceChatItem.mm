@interface IMSatelliteUnavailableForServiceChatItem
- (id)_initWithItem:(id)item service:(id)service recipientID:(id)d isGroupChat:(BOOL)chat;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSatelliteUnavailableForServiceChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item];

  return v6;
}

- (id)_initWithItem:(id)item service:(id)service recipientID:(id)d isGroupChat:(BOOL)chat
{
  serviceCopy = service;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = IMSatelliteUnavailableForServiceChatItem;
  v13 = [(IMChatItem *)&v16 _initWithItem:item];
  v14 = v13;
  if (v13)
  {
    [v13 _setGUID:@"ug:"];
    objc_storeStrong(v14 + 8, service);
    objc_storeStrong(v14 + 9, d);
    *(v14 + 56) = chat;
  }

  return v14;
}

@end