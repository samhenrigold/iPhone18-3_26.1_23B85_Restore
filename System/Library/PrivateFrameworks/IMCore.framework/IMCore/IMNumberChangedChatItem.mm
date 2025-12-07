@interface IMNumberChangedChatItem
- (id)_initWithItem:(id)item senderHandle:(id)handle;
@end

@implementation IMNumberChangedChatItem

- (id)_initWithItem:(id)item senderHandle:(id)handle
{
  itemCopy = item;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = IMNumberChangedChatItem;
  v8 = [(IMChatItem *)&v14 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, handle);
    v10 = MEMORY[0x1E696AEC0];
    guid = [itemCopy guid];
    v12 = [v10 stringWithFormat:@"%@%@", @"nc:", guid];

    [v9 _setGUID:v12];
  }

  return v9;
}

@end