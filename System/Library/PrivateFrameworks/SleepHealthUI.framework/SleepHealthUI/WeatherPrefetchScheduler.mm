@interface WeatherPrefetchScheduler
- (_TtC13SleepHealthUI24WeatherPrefetchScheduler)init;
- (void)dealloc;
- (void)sleepStore:(id)store sleepEventDidOccur:(id)occur;
- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change;
- (void)sleepStore:(id)store sleepScheduleStateDidChange:(unint64_t)change;
@end

@implementation WeatherPrefetchScheduler

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 24));
  sub_269D11174((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for WeatherPrefetchScheduler(0);
  [(WeatherPrefetchScheduler *)&v4 dealloc];
}

- (_TtC13SleepHealthUI24WeatherPrefetchScheduler)init
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = sub_269D9A900();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_269D9A8E0();
  selfCopy = self;
  v12 = sub_269D9A8D0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = ObjectType;
  sub_269C79F94(0, 0, v9, &unk_269DA7400, v13);
}

- (void)sleepStore:(id)store sleepScheduleStateDidChange:(unint64_t)change
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = sub_269D9A900();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_269D9A8E0();
  selfCopy = self;
  v13 = sub_269D9A8D0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = change;
  v14[5] = selfCopy;
  v14[6] = ObjectType;
  sub_269C79F94(0, 0, v10, &unk_269DA73F8, v14);
}

- (void)sleepStore:(id)store sleepEventDidOccur:(id)occur
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = sub_269D9A900();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_269D9A8E0();
  occurCopy = occur;
  selfCopy = self;
  v14 = occurCopy;
  v15 = selfCopy;
  v16 = sub_269D9A8D0();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = v15;
  v17[6] = ObjectType;
  sub_269C79F94(0, 0, v10, &unk_269DA73F0, v17);
}

@end