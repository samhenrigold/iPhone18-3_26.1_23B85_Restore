@interface IMRichActionCarouselCountChatItem
- (id)_initWithItem:(id)item selectedIndex:(int64_t)index totalCount:(int64_t)count;
@end

@implementation IMRichActionCarouselCountChatItem

- (id)_initWithItem:(id)item selectedIndex:(int64_t)index totalCount:(int64_t)count
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = IMRichActionCarouselCountChatItem;
  v9 = [(IMChatItem *)&v15 _initWithItem:itemCopy];
  if (v9)
  {
    guid = [itemCopy guid];
    v11 = [@"rcc:" stringByAppendingString:guid];
    [v9 _setGUID:v11];

    _senderHandle = [itemCopy _senderHandle];
    v13 = v9[7];
    v9[7] = _senderHandle;

    v9[8] = index;
    v9[9] = count;
  }

  return v9;
}

@end