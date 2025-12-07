@interface IMSatelliteAvailabilityChatItem
- (id)_initWithHandle:(id)handle;
@end

@implementation IMSatelliteAvailabilityChatItem

- (id)_initWithHandle:(id)handle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = IMSatelliteAvailabilityChatItem;
  v6 = [(IMChatItem *)&v11 _initWithItem:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 7, handle);
    v8 = [v7[7] ID];
    v9 = sub_1A83AC604();

    [v7 _setGUID:v9];
  }

  return v7;
}

@end