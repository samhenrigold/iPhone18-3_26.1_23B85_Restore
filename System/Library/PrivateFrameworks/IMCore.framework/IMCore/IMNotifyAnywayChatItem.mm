@interface IMNotifyAnywayChatItem
- (id)_init;
@end

@implementation IMNotifyAnywayChatItem

- (id)_init
{
  v5.receiver = self;
  v5.super_class = IMNotifyAnywayChatItem;
  v2 = [(IMChatItem *)&v5 _initWithItem:0];
  v3 = v2;
  if (v2)
  {
    [v2 _setGUID:@"na:"];
  }

  return v3;
}

@end