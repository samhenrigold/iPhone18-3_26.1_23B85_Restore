@interface SCMLPeopleDetectorImpl
- (_TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl)init;
- (id)initOnBehalfOf:(int64_t)of modelManagerServicesUseCaseID:(id)d locale:(id)locale error:(id *)error;
- (void)predictWithText:(NSString *)text completionHandler:(id)handler;
@end

@implementation SCMLPeopleDetectorImpl

- (id)initOnBehalfOf:(int64_t)of modelManagerServicesUseCaseID:(id)d locale:(id)locale error:(id *)error
{
  v7 = sub_1B8AEFCC8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8AF0668();
  v12 = v11;
  sub_1B8AEFC58();
  return SCMLPeopleDetectorImpl.init(onBehalfOf:modelManagerServicesUseCaseID:locale:)(of, v10, v12, v9);
}

- (void)predictWithText:(NSString *)text completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B88, &qword_1B8AFAB20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = text;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B8AF0888();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B8AFAB30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8AF8B60;
  v14[5] = v13;
  textCopy = text;
  selfCopy = self;
  sub_1B8AD7798(0, 0, v9, &unk_1B8AFAB40, v14);
}

- (_TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end