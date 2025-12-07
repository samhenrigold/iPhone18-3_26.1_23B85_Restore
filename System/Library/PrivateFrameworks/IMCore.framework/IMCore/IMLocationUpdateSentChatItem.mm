@interface IMLocationUpdateSentChatItem
- (id)_initWithItem:(id)item chatIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMLocationUpdateSentChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item];

  return v6;
}

- (id)_initWithItem:(id)item chatIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = IMLocationUpdateSentChatItem;
  v8 = [(IMChatItem *)&v12 _initWithItem:itemCopy];
  if (v8)
  {
    guid = [itemCopy guid];
    v10 = sub_1A83AC604();

    [v8 _setGUID:v10];
    objc_storeStrong(v8 + 7, identifier);
  }

  return v8;
}

@end