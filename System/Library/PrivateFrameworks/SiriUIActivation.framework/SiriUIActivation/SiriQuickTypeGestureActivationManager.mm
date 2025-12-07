@interface SiriQuickTypeGestureActivationManager
- (void)canActivateWithCompletionHandler:(id)handler;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler;
- (void)prewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler;
@end

@implementation SiriQuickTypeGestureActivationManager

- (void)prewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E228, &qword_21FF0E4E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21FF0B6F4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21FF0E560;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21FF0E568;
  v12[5] = v11;

  sub_21FF081AC(0, 0, v7, &unk_21FF0E570, v12);
}

- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGestureWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E228, &qword_21FF0E4E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21FF0B6F4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21FF0E540;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21FF0E548;
  v12[5] = v11;

  sub_21FF081AC(0, 0, v7, &unk_21FF0E550, v12);
}

- (void)canActivateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1E228, &qword_21FF0E4E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21FF0B6F4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21FF0E4F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21FF0E508;
  v12[5] = v11;

  sub_21FF081AC(0, 0, v7, &unk_21FF0E518, v12);
}

@end