@interface IMSuggestedActionsMessagePartChatItem
- (BOOL)isEqual:(id)equal;
- (IMSuggestedActionsMessagePartChatItem)initWithItem:(id)item suggestedActionsList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSuggestedActionsMessagePartChatItem

- (IMSuggestedActionsMessagePartChatItem)initWithItem:(id)item suggestedActionsList:(id)list
{
  itemCopy = item;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = IMSuggestedActionsMessagePartChatItem;
  v8 = [(IMChatItem *)&v12 _initWithItem:itemCopy];
  if (v8)
  {
    guid = [itemCopy guid];
    v10 = sub_1A83AC604();
    [(IMTranscriptChatItem *)v8 _setGUID:v10];

    [(IMMessagePartChatItem *)v8 setSuggestedActionsList:listCopy];
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    guid = [(IMTranscriptChatItem *)self guid];
    guid2 = [v5 guid];
    if ([guid isEqualToString:guid2])
    {
      suggestedActionsList = [(IMMessagePartChatItem *)self suggestedActionsList];
      suggestedActionsList2 = [v5 suggestedActionsList];
      v10 = [suggestedActionsList isEqual:suggestedActionsList2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMSuggestedActionsMessagePartChatItem alloc];
  messageItem = [(IMMessageChatItem *)self messageItem];
  suggestedActionsList = [(IMMessagePartChatItem *)self suggestedActionsList];
  v7 = [(IMSuggestedActionsMessagePartChatItem *)v4 initWithItem:messageItem suggestedActionsList:suggestedActionsList];

  return v7;
}

@end