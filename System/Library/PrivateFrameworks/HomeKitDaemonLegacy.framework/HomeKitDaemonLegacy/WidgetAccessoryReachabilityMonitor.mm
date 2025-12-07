@interface WidgetAccessoryReachabilityMonitor
- (BOOL)isAccessoryReachable:(id)reachable;
- (_TtC19HomeKitDaemonLegacy34WidgetAccessoryReachabilityMonitor)init;
- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler;
@end

@implementation WidgetAccessoryReachabilityMonitor

- (BOOL)isAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  home = [reachableCopy home];
  if (home)
  {
    v5 = home;
    isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];
    v7 = &selRef_isReachable;
    if (!isCurrentDevicePrimaryResident)
    {
      v7 = &selRef_isRemotelyReachable;
    }

    v8 = [reachableCopy *v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startMonitoringAccessories:(id)accessories stopMonitoring:(id)monitoring completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  sub_25320C584();
  v11 = sub_253CD0BF8();
  v12 = sub_253CD0BF8();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = sub_253CD0B58();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = v12;
  v15[7] = sub_25320C5F4;
  v15[8] = v13;

  sub_25324690C(0, 0, v9, &unk_253D488C0, v15);
}

- (_TtC19HomeKitDaemonLegacy34WidgetAccessoryReachabilityMonitor)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end