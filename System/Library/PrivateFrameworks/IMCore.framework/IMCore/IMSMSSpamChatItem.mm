@interface IMSMSSpamChatItem
- (id)_initWithItem:(id)item withExtensionName:(id)name;
@end

@implementation IMSMSSpamChatItem

- (id)_initWithItem:(id)item withExtensionName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = IMSMSSpamChatItem;
  v8 = [(IMChatItem *)&v11 _initWithItem:item];
  v9 = v8;
  if (v8)
  {
    [v8 _setGUID:@"ss:"];
    objc_storeStrong(v9 + 7, name);
  }

  return v9;
}

@end