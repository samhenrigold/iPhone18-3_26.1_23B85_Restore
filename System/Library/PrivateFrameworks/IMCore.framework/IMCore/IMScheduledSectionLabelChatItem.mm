@interface IMScheduledSectionLabelChatItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScheduledLabelChatItem:(id)item;
- (IMScheduledSectionLabelChatItem)initWithAssociatedDateChatItem:(id)item;
- (unint64_t)hash;
@end

@implementation IMScheduledSectionLabelChatItem

- (IMScheduledSectionLabelChatItem)initWithAssociatedDateChatItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = IMScheduledSectionLabelChatItem;
  v5 = [(IMScheduledSectionLabelChatItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMScheduledSectionLabelChatItem *)v5 setDateChatItem:itemCopy];
  }

  return v6;
}

- (unint64_t)hash
{
  dateChatItem = [(IMScheduledSectionLabelChatItem *)self dateChatItem];
  v3 = [dateChatItem hash];

  return v3;
}

- (BOOL)isEqualToScheduledLabelChatItem:(id)item
{
  itemCopy = item;
  dateChatItem = [(IMScheduledSectionLabelChatItem *)self dateChatItem];
  dateChatItem2 = [itemCopy dateChatItem];

  LOBYTE(itemCopy) = [dateChatItem isEqual:dateChatItem2];
  return itemCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMScheduledSectionLabelChatItem *)self isEqualToScheduledLabelChatItem:equalCopy];

  return v5;
}

@end