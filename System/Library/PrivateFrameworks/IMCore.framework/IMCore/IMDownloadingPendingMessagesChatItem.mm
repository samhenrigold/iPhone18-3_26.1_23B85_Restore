@interface IMDownloadingPendingMessagesChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMDownloadingPendingMessagesChatItem

- (id)_initWithItem:(id)item
{
  v6.receiver = self;
  v6.super_class = IMDownloadingPendingMessagesChatItem;
  v3 = [(IMChatItem *)&v6 _initWithItem:item];
  v4 = v3;
  if (v3)
  {
    [v3 _setGUID:@"spm:"];
  }

  return v4;
}

@end