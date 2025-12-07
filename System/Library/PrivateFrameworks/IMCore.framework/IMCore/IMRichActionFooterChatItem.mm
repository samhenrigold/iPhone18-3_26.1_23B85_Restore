@interface IMRichActionFooterChatItem
- (BOOL)isFromMe;
- (id)_initWithItem:(id)item;
@end

@implementation IMRichActionFooterChatItem

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = IMRichActionFooterChatItem;
  v5 = [(IMChatItem *)&v11 _initWithItem:itemCopy];
  if (v5)
  {
    guid = [itemCopy guid];
    v7 = [guid stringByAppendingString:@"IMRichActionFooter"];
    [v5 _setGUID:v7];

    _senderHandle = [itemCopy _senderHandle];
    v9 = v5[7];
    v5[7] = _senderHandle;
  }

  return v5;
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

@end