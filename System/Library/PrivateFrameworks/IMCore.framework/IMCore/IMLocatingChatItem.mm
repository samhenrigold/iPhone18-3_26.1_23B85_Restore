@interface IMLocatingChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMLocatingChatItem

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = IMLocatingChatItem;
  v5 = [(IMChatItem *)&v9 _initWithItem:itemCopy];
  if (v5)
  {
    guid = [itemCopy guid];
    v7 = sub_1A83AC604();

    [v5 _setGUID:v7];
  }

  return v5;
}

@end