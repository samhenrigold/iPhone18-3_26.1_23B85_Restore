@interface CSFTicketManager
+ (void)getWaitlistStatusWithFeatureID:(NSString *)d completionHandler:(id)handler;
+ (void)signupForWaitlistWithFeatureID:(NSString *)d completionHandler:(id)handler;
- (CSFTicketManager)init;
- (void)getWaitlistStatusWithFeatureID:(NSString *)d completionHandler:(id)handler;
- (void)signupForWaitlistWithFeatureID:(NSString *)d completionHandler:(id)handler;
@end

@implementation CSFTicketManager

+ (void)signupForWaitlistWithFeatureID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DF564B44();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF569328;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF569330;
  v14[5] = v13;
  dCopy = d;
  sub_1DF51CC08(0, 0, v9, &unk_1DF569338, v14);
}

+ (void)getWaitlistStatusWithFeatureID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DF564B44();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF569308;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF569310;
  v14[5] = v13;
  dCopy = d;
  sub_1DF51CC08(0, 0, v9, &unk_1DF569318, v14);
}

- (void)signupForWaitlistWithFeatureID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DF564B44();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF5692E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF5692F0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1DF51CC08(0, 0, v9, &unk_1DF5692F8, v14);
}

- (void)getWaitlistStatusWithFeatureID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DF564B44();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF5692C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF5692D0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1DF51CC08(0, 0, v9, &unk_1DF56A700, v14);
}

- (CSFTicketManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end