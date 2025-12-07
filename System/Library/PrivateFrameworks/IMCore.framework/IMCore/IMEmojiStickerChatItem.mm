@interface IMEmojiStickerChatItem
- (NSString)emojiString;
- (id)_initWithItem:(id)item sender:(id)sender transferGUID:(id)d emojiSticker:(id)sticker;
@end

@implementation IMEmojiStickerChatItem

- (id)_initWithItem:(id)item sender:(id)sender transferGUID:(id)d emojiSticker:(id)sticker
{
  stickerCopy = sticker;
  v14.receiver = self;
  v14.super_class = IMEmojiStickerChatItem;
  v11 = [(IMAssociatedStickerChatItem *)&v14 _initWithItem:item sender:sender transferGUID:d];
  v12 = v11;
  if (v11)
  {
    [v11 setEmojiSticker:stickerCopy];
  }

  return v12;
}

- (NSString)emojiString
{
  emojiSticker = [(IMAssociatedMessageChatItem *)self emojiSticker];
  emojiString = [emojiSticker emojiString];

  return emojiString;
}

@end