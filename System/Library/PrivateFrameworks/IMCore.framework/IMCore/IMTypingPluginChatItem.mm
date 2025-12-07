@interface IMTypingPluginChatItem
- (id)_initWithItem:(id)item dataSource:(id)source;
@end

@implementation IMTypingPluginChatItem

- (id)_initWithItem:(id)item dataSource:(id)source
{
  itemCopy = item;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = IMTypingPluginChatItem;
  v8 = [(IMTypingChatItem *)&v14 _initWithItem:itemCopy];
  if (v8)
  {
    guid = [itemCopy guid];
    v10 = sub_1A83AC604();

    [v8 _setGUID:v10];
    [v8 setDataSource:sourceCopy];
    typingIndicatorIcon = [itemCopy typingIndicatorIcon];
    v12 = v8[7];
    v8[7] = typingIndicatorIcon;
  }

  return v8;
}

@end