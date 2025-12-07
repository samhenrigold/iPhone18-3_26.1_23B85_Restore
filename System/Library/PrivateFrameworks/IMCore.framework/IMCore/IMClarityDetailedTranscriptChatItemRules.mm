@interface IMClarityDetailedTranscriptChatItemRules
- (BOOL)_shouldAppendDateForItem:(id)item previousItem:(id)previousItem;
- (id)chatItemForIMChatItem:(id)item;
@end

@implementation IMClarityDetailedTranscriptChatItemRules

- (id)chatItemForIMChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = itemCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IMClarityDetailedTranscriptChatItemRules;
    v5 = [(IMClarityTranscriptChatItemRules *)&v8 chatItemForIMChatItem:itemCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_shouldAppendDateForItem:(id)item previousItem:(id)previousItem
{
  if (previousItem)
  {
    itemCopy = item;
    time = [previousItem time];
    time2 = [itemCopy time];

    LOBYTE(itemCopy) = 1;
    if (time && time2)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v9 = [currentCalendar components:30 fromDate:time];
      v10 = [currentCalendar components:30 fromDate:time2];
      LODWORD(itemCopy) = [v9 isEqual:v10] ^ 1;
    }
  }

  else
  {
    LOBYTE(itemCopy) = 1;
  }

  return itemCopy;
}

@end