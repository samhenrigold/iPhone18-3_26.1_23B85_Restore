@interface CarrySettings.MessageChannel
- (void)channel:(id)channel didAddConsumer:(id)consumer;
- (void)channel:(id)channel didAddProducer:(id)producer;
- (void)consumer:(COMessageSessionConsumer *)consumer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member request:(COMessageSessionRequest *)request completionHandler:(id)handler;
- (void)consumer:(id)consumer didStartSession:(id)session;
- (void)consumer:(id)consumer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error;
- (void)producer:(COMessageSessionProducer *)producer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member completionHandler:(id)handler;
- (void)producer:(id)producer didFailToStartSessionWithMember:(id)member error:(id)error;
- (void)producer:(id)producer didStartSession:(id)session member:(id)member response:(id)response;
- (void)producer:(id)producer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error;
@end

@implementation CarrySettings.MessageChannel

- (void)channel:(id)channel didAddConsumer:(id)consumer
{
  channelCopy = channel;
  consumerCopy = consumer;
  selfCopy = self;
  sub_2542CD2B8(channelCopy, consumerCopy);
}

- (void)consumer:(id)consumer didStartSession:(id)session
{
  consumerCopy = consumer;
  sessionCopy = session;
  selfCopy = self;
  sub_2542CD5B4(consumerCopy, sessionCopy);
}

- (void)consumer:(id)consumer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error
{
  consumerCopy = consumer;
  sessionCopy = session;
  initiatorCopy = initiator;
  noticeCopy = notice;
  selfCopy = self;
  errorCopy = error;
  sub_2542CD848(consumerCopy, sessionCopy);
}

- (void)consumer:(COMessageSessionConsumer *)consumer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member request:(COMessageSessionRequest *)request completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = consumer;
  v11[3] = member;
  v11[4] = request;
  v11[5] = v10;
  v11[6] = self;
  consumerCopy = consumer;
  memberCopy = member;
  requestCopy = request;
  selfCopy = self;

  sub_254366AA8(&unk_2543A6CC8, v11);
}

- (void)channel:(id)channel didAddProducer:(id)producer
{
  channelCopy = channel;
  producerCopy = producer;
  selfCopy = self;
  sub_2542CE1DC(channelCopy, producerCopy);
}

- (void)producer:(id)producer didFailToStartSessionWithMember:(id)member error:(id)error
{
  producerCopy = producer;
  memberCopy = member;
  errorCopy = error;
  selfCopy = self;
  sub_2542CE6E0(producerCopy, memberCopy, errorCopy);
}

- (void)producer:(id)producer didStartSession:(id)session member:(id)member response:(id)response
{
  producerCopy = producer;
  sessionCopy = session;
  memberCopy = member;
  responseCopy = response;
  selfCopy = self;
  sub_2542CE970(producerCopy, sessionCopy, memberCopy);
}

- (void)producer:(id)producer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error
{
  producerCopy = producer;
  sessionCopy = session;
  initiatorCopy = initiator;
  noticeCopy = notice;
  selfCopy = self;
  errorCopy = error;
  sub_2542CEE44(producerCopy, sessionCopy, initiator);
}

- (void)producer:(COMessageSessionProducer *)producer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = producer;
  v9[3] = member;
  v9[4] = v8;
  v9[5] = self;
  producerCopy = producer;
  memberCopy = member;
  selfCopy = self;

  sub_254366AA8(&unk_2543A6CB8, v9);
}

@end