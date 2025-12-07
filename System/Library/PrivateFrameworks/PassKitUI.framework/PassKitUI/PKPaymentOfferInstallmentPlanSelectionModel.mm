@interface PKPaymentOfferInstallmentPlanSelectionModel
+ (id)initForPostPurchaseInstallmentsWithPaymentOffersController:(id)controller criteria:(id)criteria pass:(id)pass fromPushNotification:(BOOL)notification;
- (PKPaymentOfferInstallmentPlanSelectionModel)init;
- (void)startWithCompletionHandler:(id)handler viewChangedHandler:(id)changedHandler;
@end

@implementation PKPaymentOfferInstallmentPlanSelectionModel

+ (id)initForPostPurchaseInstallmentsWithPaymentOffersController:(id)controller criteria:(id)criteria pass:(id)pass fromPushNotification:(BOOL)notification
{
  passCopy = pass;
  v15 = !notification | 0xC0;
  v8 = objc_allocWithZone(swift_getObjCClassMetadata());
  controllerCopy = controller;
  criteriaCopy = criteria;
  v11 = passCopy;
  v12 = sub_1BD8D1EE0(&passCopy, controller, criteria);

  return v12;
}

- (void)startWithCompletionHandler:(id)handler viewChangedHandler:(id)changedHandler
{
  v6 = _Block_copy(handler);
  v7 = _Block_copy(changedHandler);
  v8 = swift_allocObject();
  v8[2] = v6;
  v9 = swift_allocObject();
  v9[2] = v7;
  KeyPath = swift_getKeyPath();
  sub_1BD8D2BB0(&qword_1EBD39ED8, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, &protocol conformance descriptor for PaymentOfferInstallmentPlanSelectionModel);
  selfCopy = self;
  sub_1BE04B584();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  v19[2] = sub_1BD8D386C;
  v19[3] = v8;
  sub_1BE048964();
  sub_1BD8C1B80(0, 1, sub_1BD8D4FF0, v19);

  v8, v20, v21, v22, v23, v24, v25, v26;
  v9, v27, v28, v29, v30, v31, v32, v33;
  v19, v34, v35, v36, v37, v38, v39, v40;
}

- (PKPaymentOfferInstallmentPlanSelectionModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end