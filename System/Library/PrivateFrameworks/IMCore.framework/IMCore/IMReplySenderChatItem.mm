@interface IMReplySenderChatItem
- (id)_initWithItem:(id)item handle:(id)handle threadIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMReplySenderChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  handle = [(IMSenderChatItem *)self handle];
  v7 = [v4 _initWithItem:_item handle:handle];

  return v7;
}

- (id)_initWithItem:(id)item handle:(id)handle threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = IMReplySenderChatItem;
  v9 = [(IMSenderChatItem *)&v13 _initWithItem:item handle:handle];
  if (v9)
  {
    v10 = [identifierCopy copy];
    v11 = v9[11];
    v9[11] = v10;
  }

  return v9;
}

@end