@interface IMTransientMessagePartChatItem
- (IMTransientMessagePartChatItem)initWithGUID:(id)d;
@end

@implementation IMTransientMessagePartChatItem

- (IMTransientMessagePartChatItem)initWithGUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = IMTransientMessagePartChatItem;
  v5 = [(IMTransientMessagePartChatItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMTranscriptChatItem *)v5 _setGUID:dCopy];
  }

  return v6;
}

@end