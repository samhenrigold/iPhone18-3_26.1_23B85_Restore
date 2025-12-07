@interface ControlsModel
- (_TtC17NanoControlCenter13ControlsModel)init;
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
@end

@implementation ControlsModel

- (_TtC17NanoControlCenter13ControlsModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25AF10014();

  return v2;
}

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790, &qword_25B0090E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_25B005B64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_25B005B34();
  selfCopy = self;
  v9 = sub_25B005B24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = selfCopy;
  sub_25AF6C7F8(0, 0, v6, &unk_25B009178, v10);
}

@end