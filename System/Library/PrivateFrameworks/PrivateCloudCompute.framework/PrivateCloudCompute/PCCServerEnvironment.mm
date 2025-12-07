@interface PCCServerEnvironment
- (PCCServerEnvironment)init;
- (void)selectedEnvironmentNameWithCompletionHandler:(id)handler;
@end

@implementation PCCServerEnvironment

- (PCCServerEnvironment)init
{
  v3.receiver = self;
  v3.super_class = PCCServerEnvironment;
  return [(PCCServerEnvironment *)&v3 init];
}

- (void)selectedEnvironmentNameWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1CEFA84F0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1CEFA9840;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1CEFA9850;
  v12[5] = v11;
  selfCopy = self;
  sub_1CEF3C270(0, 0, v7, &unk_1CEFA9860, v12);
}

@end