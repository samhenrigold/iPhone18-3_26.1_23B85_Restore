@interface BetaEnrollmentNetworkingSession
- (void)channel:(id)channel didAddProducer:(id)producer;
- (void)channel:(id)channel didFailToAddProducerWithSubTopic:(id)topic error:(id)error;
- (void)producer:(COMessageSessionProducer *)producer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member completionHandler:(id)handler;
- (void)producer:(id)producer didFailToStartSessionWithMember:(id)member error:(id)error;
- (void)producer:(id)producer didStartSession:(id)session member:(id)member response:(id)response;
- (void)producer:(id)producer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error;
@end

@implementation BetaEnrollmentNetworkingSession

- (void)channel:(id)channel didAddProducer:(id)producer
{
  channelCopy = channel;
  producerCopy = producer;

  sub_100041208(channelCopy, producerCopy);
}

- (void)channel:(id)channel didFailToAddProducerWithSubTopic:(id)topic error:(id)error
{
  v7 = sub_10008715C();
  v9 = v8;
  channelCopy = channel;
  errorCopy = error;

  sub_10004133C(channelCopy, v7, v9, errorCopy);
}

- (void)producer:(id)producer didFailToStartSessionWithMember:(id)member error:(id)error
{
  producerCopy = producer;
  memberCopy = member;
  errorCopy = error;

  sub_100041568(producerCopy, memberCopy, errorCopy);
}

- (void)producer:(id)producer didStartSession:(id)session member:(id)member response:(id)response
{
  v11 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_10008742C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = producer;
  v15[6] = session;
  v15[7] = member;
  v15[8] = response;
  producerCopy = producer;
  sessionCopy = session;
  memberCopy = member;
  responseCopy = response;

  sub_100016C64(0, 0, v13, &unk_10008B168, v15);
}

- (void)producer:(id)producer didStopSession:(id)session initiator:(id)initiator notice:(id)notice error:(id)error
{
  v13 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_10008742C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = self;
  v17[5] = producer;
  v17[6] = session;
  v17[7] = initiator;
  v17[8] = notice;
  v17[9] = error;
  producerCopy = producer;
  sessionCopy = session;
  initiatorCopy = initiator;
  noticeCopy = notice;

  errorCopy = error;
  sub_100016C64(0, 0, v15, &unk_10008B158, v17);
}

- (void)producer:(COMessageSessionProducer *)producer shouldStartSessionWithMember:(COClusterMemberRoleSnapshot *)member completionHandler:(id)handler
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = producer;
  v13[3] = member;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10008742C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008B118;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100089CC8;
  v16[5] = v15;
  producerCopy = producer;
  memberCopy = member;

  sub_100040A24(0, 0, v11, &unk_100089CD0, v16);
}

@end