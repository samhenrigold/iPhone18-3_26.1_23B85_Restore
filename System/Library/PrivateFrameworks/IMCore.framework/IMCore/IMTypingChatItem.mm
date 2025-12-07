@interface IMTypingChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMTypingChatItem

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = IMTypingChatItem;
  v5 = [(IMChatItem *)&v8 _initWithItem:itemCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"t:%d/%d", objc_msgSend(itemCopy, "isAudioMessage"), objc_msgSend(itemCopy, "isFromMe")];
    [v5 _setGUID:v6];
  }

  return v5;
}

@end