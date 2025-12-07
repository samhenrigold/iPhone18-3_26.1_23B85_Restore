@interface WidgetAccessoryReachabilityMonitor
- (BOOL)isAccessoryReachable:(id)reachable;
- (_TtC13HomeKitDaemon34WidgetAccessoryReachabilityMonitor)init;
- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler;
@end

@implementation WidgetAccessoryReachabilityMonitor

- (BOOL)isAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;

  v4 = sub_2297CD6A4(reachableCopy);

  return v4 & 1;
}

- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  sub_2297CD744();
  v11 = sub_22A4DDB6C();
  v12 = sub_22A4DDB6C();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = v12;
  v15[7] = sub_2295A1B4C;
  v15[8] = v13;

  sub_22957F3C0(0, 0, v9, &unk_22A583E48, v15);
}

- (_TtC13HomeKitDaemon34WidgetAccessoryReachabilityMonitor)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end