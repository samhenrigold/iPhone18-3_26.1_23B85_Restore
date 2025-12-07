@interface LockScreenContentModel
- (_TtC13SleepHealthUI22LockScreenContentModel)init;
- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change;
@end

@implementation LockScreenContentModel

- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D9A900();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_269D9A8E0();
  changeCopy = change;
  selfCopy = self;
  v13 = changeCopy;
  v14 = sub_269D9A8D0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = selfCopy;
  v15[5] = v13;
  sub_269C79F94(0, 0, v9, &unk_269DA2BC0, v15);
}

- (_TtC13SleepHealthUI22LockScreenContentModel)init
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

@end