@interface IMRichLinkCardMessagePartChatItem
- (IMRichLinkCardMessagePartChatItem)initWithItem:(id)item richCards:(id)cards selectedIndex:(int64_t)index;
@end

@implementation IMRichLinkCardMessagePartChatItem

- (IMRichLinkCardMessagePartChatItem)initWithItem:(id)item richCards:(id)cards selectedIndex:(int64_t)index
{
  itemCopy = item;
  cardsCopy = cards;
  v13.receiver = self;
  v13.super_class = IMRichLinkCardMessagePartChatItem;
  v10 = [(IMChatItem *)&v13 _initWithItem:itemCopy];
  if (v10)
  {
    guid = [itemCopy guid];
    [(IMTranscriptChatItem *)v10 _setGUID:guid];

    [(IMRichLinkCardMessagePartChatItem *)v10 _setSelectedIndex:index];
    objc_storeStrong(&v10->_richCards, cards);
  }

  return v10;
}

@end