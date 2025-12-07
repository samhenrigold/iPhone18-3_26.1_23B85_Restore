@interface AISSafetySettingsController
- (AISSafetySettingsController)init;
- (void)shouldPresentSafetySettingsUsingOnlyLocalChecksWithContext:(AISSafetySettingsContext *)context completionHandler:(id)handler;
- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completionHandler:(id)handler;
@end

@implementation AISSafetySettingsController

- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24076FBD0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24076FBD8;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076FBE0, v14);
}

- (void)shouldPresentSafetySettingsUsingOnlyLocalChecksWithContext:(AISSafetySettingsContext *)context completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24076FBB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240767F10;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076FBC0, v14);
}

- (AISSafetySettingsController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SafetySettingsController();
  return [(AISSafetySettingsController *)&v3 init];
}

@end