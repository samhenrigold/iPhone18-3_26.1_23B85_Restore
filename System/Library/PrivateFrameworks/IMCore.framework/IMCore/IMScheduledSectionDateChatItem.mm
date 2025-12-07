@interface IMScheduledSectionDateChatItem
- (IMScheduledSectionDateChatItem)initWithItem:(id)item;
@end

@implementation IMScheduledSectionDateChatItem

- (IMScheduledSectionDateChatItem)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = IMScheduledSectionDateChatItem;
  v5 = [(IMChatItem *)&v9 _initWithItem:itemCopy];
  if (v5)
  {
    time = [itemCopy time];
    date = v5->_date;
    v5->_date = time;
  }

  return v5;
}

@end