@interface GMSpecifierController
- (BOOL)featureOptInStatus;
- (_TtP24AssistantSettingsSupport29GMSpecifierControllerDelegate_)delegate;
- (void)clearCFUWithCompletionHandler:(id)handler;
- (void)enrollWithCompletionHandler:(id)handler;
- (void)fetchStatusWithCompletionHandler:(id)handler;
- (void)fetchStatusWithForceDownloadIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)setFeatureOptInStatusWithEnabled:(BOOL)enabled;
@end

@implementation GMSpecifierController

- (_TtP24AssistantSettingsSupport29GMSpecifierControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)enrollWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24140ECDC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2414137B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2414137B8;
  v12[5] = v11;
  selfCopy = self;
  sub_241405C7C(0, 0, v7, &unk_2414137C0, v12);
}

- (void)fetchStatusWithForceDownloadIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = needed;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_24140ECDC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241413790;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_241413798;
  v14[5] = v13;
  selfCopy = self;
  sub_241405C7C(0, 0, v9, &unk_2414137A0, v14);
}

- (void)fetchStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24140ECDC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_241413770;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241413778;
  v12[5] = v11;
  selfCopy = self;
  sub_241405C7C(0, 0, v7, &unk_241413780, v12);
}

- (BOOL)featureOptInStatus
{
  v3 = OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  sub_24140869C(self + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LOBYTE(v4) = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4 & 1;
}

- (void)setFeatureOptInStatusWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = self + OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 16);
  selfCopy = self;
  v8(enabledCopy, v6, v7);
  swift_endAccess();
}

- (void)clearCFUWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24140ECDC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_241413728;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241412F88;
  v12[5] = v11;
  selfCopy = self;
  sub_241405C7C(0, 0, v7, &unk_241412F90, v12);
}

@end