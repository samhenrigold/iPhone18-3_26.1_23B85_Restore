@interface SharePlaySessionDetour
- (_TtC10Blackbeard22SharePlaySessionDetour)init;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
@end

@implementation SharePlaySessionDetour

- (_TtC10Blackbeard22SharePlaySessionDetour)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = error;
  v13[5] = self;
  v13[6] = controller;
  v13[7] = result;
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_1E64B80F8(0, 0, v11, &unk_1E65EAB58, v13);
}

@end