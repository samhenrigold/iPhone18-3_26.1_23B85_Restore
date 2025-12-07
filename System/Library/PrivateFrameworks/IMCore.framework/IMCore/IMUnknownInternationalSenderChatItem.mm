@interface IMUnknownInternationalSenderChatItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMUnknownInternationalSenderChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item];

  return v6;
}

@end