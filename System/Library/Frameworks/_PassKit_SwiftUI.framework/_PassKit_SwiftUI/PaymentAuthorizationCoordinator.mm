@interface PaymentAuthorizationCoordinator
- (_TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didChangeCouponCode:(NSString *)code handler:(id)handler;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didRequestMerchantSessionUpdate:(id)update;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingContact:(PKContact *)contact handler:(id)handler;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingMethod:(PKShippingMethod *)method handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)paymentAuthorizationControllerWillAuthorizePayment:(id)payment;
@end

@implementation PaymentAuthorizationCoordinator

- (_TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerWillAuthorizePayment:(id)payment
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  memset(v5, 0, sizeof(v5));
  selfCopy = self;
  v3(v5);
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  paymentCopy = payment;
  v13 = sub_23B7F67B8;
  v14 = v8;
  paymentCopy2 = payment;
  selfCopy = self;

  v9(&paymentCopy);

  sub_23B7F67CC(paymentCopy, v13, v14);
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  selfCopy = self;
  sub_23B7F1780();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didRequestMerchantSessionUpdate:(id)update
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(update);
  v11 = swift_allocObject();
  v11[2] = controller;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23B802660();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B804A60;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B804A68;
  v14[5] = v13;
  controllerCopy = controller;
  selfCopy = self;
  sub_23B7F5308(0, 0, v9, &unk_23B804A70, v14);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = method;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23B802660();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B804A38;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B804A40;
  v16[5] = v15;
  controllerCopy = controller;
  methodCopy = method;
  selfCopy = self;
  sub_23B7F5308(0, 0, v11, &unk_23B804A48, v16);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingContact:(PKContact *)contact handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = contact;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23B802660();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B804A10;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B804A18;
  v16[5] = v15;
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  sub_23B7F5308(0, 0, v11, &unk_23B804A20, v16);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingMethod:(PKShippingMethod *)method handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = method;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23B802660();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B8049E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B8049F0;
  v16[5] = v15;
  controllerCopy = controller;
  methodCopy = method;
  selfCopy = self;
  sub_23B7F5308(0, 0, v11, &unk_23B8049F8, v16);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didChangeCouponCode:(NSString *)code handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = code;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23B802660();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B804980;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B804990;
  v16[5] = v15;
  controllerCopy = controller;
  codeCopy = code;
  selfCopy = self;
  sub_23B7F5308(0, 0, v11, &unk_23B8049A0, v16);
}

@end