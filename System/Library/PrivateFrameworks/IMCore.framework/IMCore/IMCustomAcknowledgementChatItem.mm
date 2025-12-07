@interface IMCustomAcknowledgementChatItem
- (IMBalloonPluginDataSource)dataSource;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation IMCustomAcknowledgementChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  sender = [(IMAssociatedMessageChatItem *)self sender];
  tapback = [(IMAssociatedMessageChatItem *)self tapback];
  v8 = [v4 _initWithItem:_item sender:sender tapback:tapback];

  return v8;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = IMCustomAcknowledgementChatItem;
  v7 = [(IMAssociatedMessageChatItem *)&v11 _initWithItem:itemCopy sender:sender];
  if (v7)
  {
    message = [itemCopy message];
    v9 = v7[20];
    v7[20] = message;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_dataSource)
  {
    v3 = +[IMBalloonPluginManager sharedInstance];
    [v3 pluginChatItemRequestedReleaseDataSource:self];
  }

  v4.receiver = self;
  v4.super_class = IMCustomAcknowledgementChatItem;
  [(IMCustomAcknowledgementChatItem *)&v4 dealloc];
}

- (IMBalloonPluginDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [[IMPluginPayload alloc] initWithMessage:self->_message];
    v5 = +[IMBalloonPluginManager sharedInstance];
    v6 = [v5 dataSourceForPluginPayload:v4];
    v7 = self->_dataSource;
    self->_dataSource = v6;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

@end