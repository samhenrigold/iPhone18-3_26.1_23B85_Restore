@interface IMExpirableMessageChatItem
- (BOOL)isPlayed;
- (BOOL)isSaved;
@end

@implementation IMExpirableMessageChatItem

- (BOOL)isPlayed
{
  _item = [(IMChatItem *)self _item];
  isPlayed = [_item isPlayed];

  return isPlayed;
}

- (BOOL)isSaved
{
  _item = [(IMChatItem *)self _item];
  v3 = [_item expireState] == 3;

  return v3;
}

@end