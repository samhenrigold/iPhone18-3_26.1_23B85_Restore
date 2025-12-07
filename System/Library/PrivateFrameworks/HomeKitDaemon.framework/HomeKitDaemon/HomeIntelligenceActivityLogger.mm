@interface HomeIntelligenceActivityLogger
- (HomeIntelligenceActivityLogger)init;
- (void)configure;
@end

@implementation HomeIntelligenceActivityLogger

- (void)configure
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_22957F3C0(0, 0, v5, &unk_22A578AB0, v7);
}

- (HomeIntelligenceActivityLogger)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end