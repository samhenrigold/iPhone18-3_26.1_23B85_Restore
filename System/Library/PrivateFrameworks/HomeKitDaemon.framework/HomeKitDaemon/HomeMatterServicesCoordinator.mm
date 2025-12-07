@interface HomeMatterServicesCoordinator
- (_TtC13HomeKitDaemon29HomeMatterServicesCoordinator)init;
- (void)startWithCompletionHandler:(id)handler;
- (void)stopWithCompletionHandler:(id)handler;
@end

@implementation HomeMatterServicesCoordinator

- (void)startWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22A582EB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A582EB8;
  v12[5] = v11;
  selfCopy = self;
  sub_229859F70(0, 0, v7, &unk_22A582EC0, v12);
}

- (void)stopWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22A582EA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A57B590;
  v12[5] = v11;
  selfCopy = self;
  sub_229859F70(0, 0, v7, &unk_22A581CC0, v12);
}

- (_TtC13HomeKitDaemon29HomeMatterServicesCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end