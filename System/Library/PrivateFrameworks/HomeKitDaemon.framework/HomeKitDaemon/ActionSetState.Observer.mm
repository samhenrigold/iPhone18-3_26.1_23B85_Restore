@interface ActionSetState.Observer
- (_TtCC13HomeKitDaemon14ActionSetState8Observer)init;
- (void)currentStateForActionSetUUIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)handleWithCharacteristicsChangedNotification:(id)notification;
- (void)stateRegistrationsDidChangeForActionSetUUIDs:(id)ds;
- (void)stopMonitoringActionSet:(id)set;
- (void)timerDidFire:(id)fire;
@end

@implementation ActionSetState.Observer

- (void)stopMonitoringActionSet:(id)set
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = set;
  setCopy = set;

  sub_22957F3C0(0, 0, v7, &unk_22A581EC0, v9);
}

- (void)stateRegistrationsDidChangeForActionSetUUIDs:(id)ds
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22A4DB7DC();
  v7 = sub_22A4DD83C();
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = v7;

  sub_22957F3C0(0, 0, v6, &unk_22A5832D0, v9);
}

- (void)handleWithCharacteristicsChangedNotification:(id)notification
{
  v3 = sub_22A4DB21C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();

  sub_22974FE88(v6);

  (*(v4 + 8))(v6, v3);
}

- (void)currentStateForActionSetUUIDs:(NSArray *)ds completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = ds;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A581EA8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B590;
  v14[5] = v13;
  dsCopy = ds;

  sub_229859F70(0, 0, v9, &unk_22A581CC0, v14);
}

- (void)timerDidFire:(id)fire
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = ObjectType;

  sub_22957F3C0(0, 0, v7, &unk_22A581E98, v9);
}

- (_TtCC13HomeKitDaemon14ActionSetState8Observer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  deviceCopy = device;

  sub_22975C8B8(deviceCopy, changed);
}

@end