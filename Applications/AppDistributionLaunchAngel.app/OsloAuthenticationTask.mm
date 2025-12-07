@interface OsloAuthenticationTask
- (_TtC26AppDistributionLaunchAngel22OsloAuthenticationTask)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didAuthorizePayment:(PKPayment *)payment handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation OsloAuthenticationTask

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  finishCopy = finish;
  selfCopy = self;
  sub_100031B9C();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didAuthorizePayment:(PKPayment *)payment handler:(id)handler
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = payment;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100066AB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100066AC8;
  v16[5] = v15;
  controllerCopy = controller;
  paymentCopy = payment;
  selfCopy = self;
  sub_100031388(0, 0, v11, &unk_100066AD8, v16);
}

- (_TtC26AppDistributionLaunchAngel22OsloAuthenticationTask)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end