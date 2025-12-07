@interface Daemon
- (NSDate)nextEventDate;
- (_TtC12AlarmKitCore6Daemon)init;
- (_TtP12AlarmKitCore14DaemonDelegate_)delegate;
- (void)start;
@end

@implementation Daemon

- (_TtP12AlarmKitCore14DaemonDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSDate)nextEventDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  if (*(self + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager))
  {
    selfCopy = self;

    sub_22D72E600();

    v7 = sub_22D72D730();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = 0;
    if (v9 != 1)
    {
      v11 = sub_22D72D6B0();
      (*(v8 + 8))(v5, v7);
      v10 = v11;
    }
  }

  else
  {
    v12 = sub_22D72D730();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v10 = 0;
  }

  return v10;
}

- (void)start
{
  selfCopy = self;
  sub_22D71ED88();
}

- (_TtC12AlarmKitCore6Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end