@interface NearbySharingInteractionCoordinator
- (void)collaborationMessageListener:(id)listener receivedMessage:(id)message inChat:(id)chat style:(unsigned __int8)style accountID:(id)d;
- (void)conversationsChangedForConversationManager:(id)manager;
@end

@implementation NearbySharingInteractionCoordinator

- (void)collaborationMessageListener:(id)listener receivedMessage:(id)message inChat:(id)chat style:(unsigned __int8)style accountID:(id)d
{
  listenerCopy = listener;
  messageCopy = message;
  selfCopy = self;
  sub_1000AA5C4(messageCopy);
}

- (void)conversationsChangedForConversationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1000A4C38(managerCopy);
  v6 = v5;
  sub_1000A48AC(v5);
  v6, v7, v8, v9, v10, v11, v12, v13;
}

@end