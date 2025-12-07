@interface HTAudioRouteRequirementManager
- (_TtC11HearingTest30HTAudioRouteRequirementManager)init;
- (void)audioSessionRouteChangeHander:(id)hander;
@end

@implementation HTAudioRouteRequirementManager

- (void)audioSessionRouteChangeHander:(id)hander
{
  v4 = sub_25214171C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521416FC();
  selfCopy = self;
  sub_25213C570(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC11HearingTest30HTAudioRouteRequirementManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end