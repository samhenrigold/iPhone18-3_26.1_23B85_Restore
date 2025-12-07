@interface VoicemailDetailContainerViewModel
- (void)messageStoreDidUpdateMessages:(id)messages;
@end

@implementation VoicemailDetailContainerViewModel

- (void)messageStoreDidUpdateMessages:(id)messages
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1CFC9D698();
  v7 = sub_1CFC9F8A8();
  v8 = sub_1CFC9F998();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1CFC9F968();
  swift_retain_n();
  v9 = sub_1CFC9F958();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = self;
  sub_1CFBDC030(0, 0, v6, &unk_1CFCA4FA8, v10);
}

@end