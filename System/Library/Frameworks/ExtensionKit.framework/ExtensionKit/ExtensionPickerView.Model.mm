@interface ExtensionPickerView.Model
- (void)prepareSceneWithConfig:(id)config reply:(id)reply;
@end

@implementation ExtensionPickerView.Model

- (void)prepareSceneWithConfig:(id)config reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = v10[2];
  configCopy = config;
  selfCopy = self;
  v11(v10);
  _Block_release(v10);
  v14 = sub_1D2A00568();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = configCopy;
  v15[5] = selfCopy;
  sub_1D29E0BF0(0, 0, v9, &unk_1D2A03B78, v15);
}

@end