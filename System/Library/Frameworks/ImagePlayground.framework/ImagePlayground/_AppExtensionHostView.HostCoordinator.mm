@interface _AppExtensionHostView.HostCoordinator
- (_TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator)init;
- (void)hostViewControllerDidActivate:(id)activate;
@end

@implementation _AppExtensionHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1D2AC6DD4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2AC6DA4();
  activateCopy = activate;
  selfCopy = self;
  v11 = activateCopy;
  v12 = sub_1D2AC6D94();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = v11;
  sub_1D2A2F088(0, 0, v7, &unk_1D2ACB758, v13);
}

- (_TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end