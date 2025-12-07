@interface AppWorkspaceObserver
- (_TtC26VisualActionPredictionCore20AppWorkspaceObserver)init;
- (void)databaseWasRebuilt;
@end

@implementation AppWorkspaceObserver

- (_TtC26VisualActionPredictionCore20AppWorkspaceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)databaseWasRebuilt
{
  v3 = sub_22634FD8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B28, &qword_226354F08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(v4 + 104))(v6, *MEMORY[0x277D78CA8], v3);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
  sub_22635067C();

  (*(v8 + 8))(v10, v7);
}

@end