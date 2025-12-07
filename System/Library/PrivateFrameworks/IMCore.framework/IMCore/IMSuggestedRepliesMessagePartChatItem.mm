@interface IMSuggestedRepliesMessagePartChatItem
- (BOOL)isEqual:(id)equal;
- (IMSuggestedRepliesMessagePartChatItem)initWithItem:(id)item suggestedRepliesList:(id)list selectedIndex:(int64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSuggestedRepliesMessagePartChatItem

- (IMSuggestedRepliesMessagePartChatItem)initWithItem:(id)item suggestedRepliesList:(id)list selectedIndex:(int64_t)index
{
  itemCopy = item;
  listCopy = list;
  v14.receiver = self;
  v14.super_class = IMSuggestedRepliesMessagePartChatItem;
  v10 = [(IMChatItem *)&v14 _initWithItem:itemCopy];
  if (v10)
  {
    guid = [itemCopy guid];
    v12 = [@"lre:" stringByAppendingString:guid];
    [(IMTranscriptChatItem *)v10 _setGUID:v12];

    objc_storeStrong(&v10->_suggestedRepliesList, list);
    v10->_selectedIndex = index;
  }

  return v10;
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
      suggestedRepliesList = [(IMSuggestedRepliesMessagePartChatItem *)self suggestedRepliesList];
      suggestedRepliesList2 = [v5 suggestedRepliesList];
      if ([suggestedRepliesList isEqual:suggestedRepliesList2])
      {
        selectedIndex = [(IMSuggestedRepliesMessagePartChatItem *)self selectedIndex];
        v11 = selectedIndex == [v5 selectedIndex];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  messageItem = [(IMMessageChatItem *)self messageItem];
  suggestedRepliesList = [(IMSuggestedRepliesMessagePartChatItem *)self suggestedRepliesList];
  v7 = [v4 initWithItem:messageItem suggestedRepliesList:suggestedRepliesList selectedIndex:{-[IMSuggestedRepliesMessagePartChatItem selectedIndex](self, "selectedIndex")}];

  return v7;
}

@end