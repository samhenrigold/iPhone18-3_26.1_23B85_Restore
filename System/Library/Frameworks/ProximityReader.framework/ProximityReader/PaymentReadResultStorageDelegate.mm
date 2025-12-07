@interface PaymentReadResultStorageDelegate
- (void)paymentCardReadResultsWithBatch:(NSArray *)batch completionHandler:(id)handler;
@end

@implementation PaymentReadResultStorageDelegate

- (void)paymentCardReadResultsWithBatch:(NSArray *)batch completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = batch;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23A6DF7B4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A6E2308;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A6E2318;
  v14[5] = v13;
  batchCopy = batch;

  sub_23A67F270(0, 0, v9, &unk_23A6E2328, v14);
}

@end