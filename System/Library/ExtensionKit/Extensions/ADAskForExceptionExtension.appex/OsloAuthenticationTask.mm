@interface OsloAuthenticationTask
- (_TtC26ADAskForExceptionExtension22OsloAuthenticationTask)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didAuthorizePayment:(PKPayment *)payment handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation OsloAuthenticationTask

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_100016D78();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didAuthorizePayment:(PKPayment *)payment handler:(id)handler
{
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = payment;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_100017DC0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100019638;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100019648;
  v16[5] = v15;
  controllerCopy = controller;
  paymentCopy = payment;
  selfCopy = self;
  sub_100016174(0, 0, v11, &unk_100019658, v16);
}

- (_TtC26ADAskForExceptionExtension22OsloAuthenticationTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end