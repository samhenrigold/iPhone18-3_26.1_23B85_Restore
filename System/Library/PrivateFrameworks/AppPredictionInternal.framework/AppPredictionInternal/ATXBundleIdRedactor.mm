@interface ATXBundleIdRedactor
- (ATXBundleIdRedactor)init;
- (void)redactWithBundleIds:(NSArray *)ids completionHandler:(id)handler;
@end

@implementation ATXBundleIdRedactor

- (void)redactWithBundleIds:(NSArray *)ids completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = ids;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_226836628();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2268752F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_226875308;
  v14[5] = v13;
  idsCopy = ids;
  selfCopy = self;
  sub_22679FE8C(0, 0, v9, &unk_226875318, v14);
}

- (ATXBundleIdRedactor)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___ATXBundleIdRedactor_summarizationPipelineClient;
  sub_226835F58();
  *(&self->super.isa + v4) = sub_226835F48();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ATXBundleIdRedactor *)&v6 init];
}

@end