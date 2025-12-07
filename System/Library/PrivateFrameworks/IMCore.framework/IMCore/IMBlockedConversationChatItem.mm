@interface IMBlockedConversationChatItem
- (id)_initWithItem:(id)item blockedRecipients:(id)recipients canLeaveChat:(BOOL)chat isGroupMessage:(BOOL)message;
@end

@implementation IMBlockedConversationChatItem

- (id)_initWithItem:(id)item blockedRecipients:(id)recipients canLeaveChat:(BOOL)chat isGroupMessage:(BOOL)message
{
  recipientsCopy = recipients;
  v15.receiver = self;
  v15.super_class = IMBlockedConversationChatItem;
  v12 = [(IMChatItem *)&v15 _initWithItem:item];
  v13 = v12;
  if (v12)
  {
    [v12 _setGUID:@"bcv:"];
    objc_storeStrong(v13 + 8, recipients);
    *(v13 + 56) = chat;
    *(v13 + 57) = message;
  }

  return v13;
}

@end