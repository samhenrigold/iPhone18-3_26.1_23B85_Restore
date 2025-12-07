@interface DMCAppWait
+ (void)waitForDDMAppConfigurationsWithProfileIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)waitForMADAppStatusWithCompletionHandler:(id)handler;
- (DMCAppWait)init;
@end

@implementation DMCAppWait

+ (void)waitForDDMAppConfigurationsWithProfileIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8B0, &qword_247ED4420);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_247ECC784();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_247ED4480;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_247ED4488;
  v14[5] = v13;
  identifierCopy = identifier;
  sub_247EC6A04(0, 0, v9, &unk_247ED4490, v14);
}

+ (void)waitForMADAppStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8B0, &qword_247ED4420);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_247ECC784();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_247ED4430;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_247ED4440;
  v12[5] = v11;
  sub_247EC6A04(0, 0, v7, &unk_247ED4450, v12);
}

- (DMCAppWait)init
{
  v3.receiver = self;
  v3.super_class = DMCAppWait;
  return [(DMCAppWait *)&v3 init];
}

@end