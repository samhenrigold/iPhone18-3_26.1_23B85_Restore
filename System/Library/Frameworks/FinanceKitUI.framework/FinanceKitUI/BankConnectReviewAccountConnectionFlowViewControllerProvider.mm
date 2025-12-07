@interface BankConnectReviewAccountConnectionFlowViewControllerProvider
+ (id)makeViewControllerWithInstitution:(id)institution paymentPass:(id)pass previousConsentUUID:(id)d completion:(id)completion;
- (_TtC12FinanceKitUI60BankConnectReviewAccountConnectionFlowViewControllerProvider)init;
@end

@implementation BankConnectReviewAccountConnectionFlowViewControllerProvider

+ (id)makeViewControllerWithInstitution:(id)institution paymentPass:(id)pass previousConsentUUID:(id)d completion:(id)completion
{
  v10 = type metadata accessor for BankConnectReviewAccountConnectionFlowView(0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23875BCB0();
  v13 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v28[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_23875BC90();
  v28[1] = objc_allocWithZone(type metadata accessor for BankConnectReviewAccountConnectionFlowViewController(0));
  institutionCopy = institution;
  passCopy = pass;
  dCopy = d;
  sub_23875EFB0();
  v21 = v13;
  v22 = *(v13 + 16);
  v23 = v29;
  v22(&v12[v10[5]], v15, v29);
  *&v12[v10[6]] = passCopy;
  v24 = &v12[v10[7]];
  *v24 = sub_2384735C8;
  v24[1] = v17;
  v25 = passCopy;
  v26 = sub_23875D080();

  (*(v21 + 8))(v15, v23);

  return v26;
}

- (_TtC12FinanceKitUI60BankConnectReviewAccountConnectionFlowViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectReviewAccountConnectionFlowViewControllerProvider();
  v3 = [(BankConnectReviewAccountConnectionFlowViewControllerProvider *)&v5 init];

  return v3;
}

@end