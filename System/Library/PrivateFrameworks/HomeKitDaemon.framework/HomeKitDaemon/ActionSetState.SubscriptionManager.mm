@interface ActionSetState.SubscriptionManager
- (BOOL)isActionSetOn:(id)on;
- (BOOL)isMonitoringActionSet:(id)set;
- (_TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager)init;
- (void)actionSetStateDidChange:(id)change state:(BOOL)state;
- (void)stopAllMonitoringForActionSetUUID:(NSUUID *)d completion:(id)completion;
@end

@implementation ActionSetState.SubscriptionManager

- (void)stopAllMonitoringForActionSetUUID:(NSUUID *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A581C58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B590;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_229859F70(0, 0, v9, &unk_22A581CC0, v14);
}

- (BOOL)isMonitoringActionSet:(id)set
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  selfCopy = self;
  v9 = sub_2297486D0(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (BOOL)isActionSetOn:(id)on
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager_monitoredActionSets);
  selfCopy = self;

  os_unfair_lock_lock(v8 + 6);
  sub_229748838(&v8[4], v7, &v12);
  os_unfair_lock_unlock(v8 + 6);
  LOBYTE(self) = v12;

  (*(v5 + 8))(v7, v4);
  return self;
}

- (void)actionSetStateDidChange:(id)change state:(BOOL)state
{
  stateCopy = state;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  selfCopy = self;
  sub_2297489C4(v9, stateCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtCC13HomeKitDaemon14ActionSetState19SubscriptionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end