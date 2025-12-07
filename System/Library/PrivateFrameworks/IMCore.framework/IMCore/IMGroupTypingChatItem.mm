@interface IMGroupTypingChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMGroupTypingChatItem

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

  if (isGroupTypingIndicatorsEnabled)
  {
    v11.receiver = self;
    v11.super_class = IMGroupTypingChatItem;
    v7 = [(IMTypingChatItem *)&v11 _initWithItem:itemCopy];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"gt:%d/%d", objc_msgSend(itemCopy, "isAudioMessage"), objc_msgSend(itemCopy, "isFromMe")];
      [v7 _setGUID:v8];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end