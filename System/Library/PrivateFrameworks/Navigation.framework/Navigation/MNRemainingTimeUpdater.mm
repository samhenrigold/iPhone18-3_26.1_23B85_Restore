@interface MNRemainingTimeUpdater
- (NSDate)dateOverride;
- (_TtC10Navigation22MNRemainingTimeUpdater)init;
- (_TtP10Navigation30MNRemainingTimeUpdaterDelegate_)delegate;
- (void)dealloc;
- (void)setDateOverride:(id)override;
- (void)setNavigationSessionState:(id)state;
- (void)updateForNewETAUResponse;
@end

@implementation MNRemainingTimeUpdater

- (void)setNavigationSessionState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  MNRemainingTimeUpdater.navigationSessionState.setter(stateCopy);
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for MNRemainingTimeUpdater(0);
  [(MNRemainingTimeUpdater *)&v4 dealloc];
}

- (void)updateForNewETAUResponse
{
  selfCopy = self;
  sub_1D3131CE0();
}

- (_TtP10Navigation30MNRemainingTimeUpdaterDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSDate)dateOverride
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  sub_1D312601C(self + v6, v5, &qword_1EC75C4F0, &qword_1D328B580);
  v7 = sub_1D3276D30();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1D3276CD0();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setDateOverride:(id)override
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (override)
  {
    sub_1D3276D00();
    v8 = sub_1D3276D30();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1D3276D30();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  selfCopy = self;
  sub_1D3128E74(v7, self + v10);
  swift_endAccess();
}

- (_TtC10Navigation22MNRemainingTimeUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end