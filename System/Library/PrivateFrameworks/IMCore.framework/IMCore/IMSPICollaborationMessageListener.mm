@interface IMSPICollaborationMessageListener
- (IMSPICollaborationMessageListener)init;
- (IMSPICollaborationMessageListenerDelegate)delegate;
- (void)didReceiveCollaborationMessage:(id)message inChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)startListening;
- (void)stopListening;
@end

@implementation IMSPICollaborationMessageListener

- (IMSPICollaborationMessageListenerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)startListening
{
  selfCopy = self;
  sub_1A84A4674();
}

- (void)stopListening
{
  *(self + OBJC_IVAR___IMSPICollaborationMessageListener_connection) = 0;
  selfCopy = self;
  swift_unknownObjectRelease();
  sharedController = [objc_opt_self() sharedController];
  listener = [sharedController listener];

  [listener removeHandler_];
}

- (void)didReceiveCollaborationMessage:(id)message inChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  messageCopy = message;
  chatCopy = chat;
  accountCopy = account;
  selfCopy = self;
  delegate = [(IMSPICollaborationMessageListener *)selfCopy delegate];
  if (delegate)
  {
    v14 = delegate;
    if (([(IMSPICollaborationMessageListenerDelegate *)delegate respondsToSelector:sel_collaborationMessageListener_receivedMessage_inChat_style_accountID_]& 1) != 0)
    {
      [(IMSPICollaborationMessageListenerDelegate *)v14 collaborationMessageListener:selfCopy receivedMessage:messageCopy inChat:chatCopy style:styleCopy accountID:accountCopy];
    }

    swift_unknownObjectRelease();
  }
}

- (IMSPICollaborationMessageListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end