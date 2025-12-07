@interface DigitalPresentmentAuthorizationCoordinatorPrivateDelegate
- (_TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate)init;
- (uint64_t)paymentAuthorizationCoordinatorDidFinish:;
- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizeContextWithHandler:(id)handler;
- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizePayment:(PKPayment *)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator willFinishWithError:(id)error;
@end

@implementation DigitalPresentmentAuthorizationCoordinatorPrivateDelegate

- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizePayment:(PKPayment *)payment handler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = coordinator;
  v13[3] = payment;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006D91C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D91D0;
  v16[5] = v15;
  coordinatorCopy = coordinator;
  paymentCopy = payment;
  selfCopy = self;
  sub_100500D54(0, 0, v11, &unk_1006D91D8, v16);
}

- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = coordinator;
  v13[3] = method;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006D91A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D91A8;
  v16[5] = v15;
  coordinatorCopy = coordinator;
  methodCopy = method;
  selfCopy = self;
  sub_100500D54(0, 0, v11, &unk_1006D91B0, v16);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator willFinishWithError:(id)error
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  errorCopy = error;
  sub_100121450(coordinator, error);
}

- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizeContextWithHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = coordinator;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006D9178;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006D9180;
  v14[5] = v13;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_100500D54(0, 0, v9, &unk_1006E13D0, v14);
}

- (_TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)paymentAuthorizationCoordinatorDidFinish:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate paymentAuthorizationCoordinator paymentAuthorizationCoordinatorDidFinish invoked.", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

@end