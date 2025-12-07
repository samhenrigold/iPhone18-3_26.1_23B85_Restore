@interface FindMyLocateSession
- (id)meDeviceUpdateCallback;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler;
- (void)setMeDeviceUpdateCallback:(id)callback;
- (void)startMonitoringPreferencesChangesWithCompletionHandler:(id)handler;
- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (id)meDeviceUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2491E5C18;
    aBlock[3] = &block_descriptor;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeDeviceUpdateCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2491EAE94;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC18DoNotDisturbServer19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2491E5DA4(v7, v8);
}

- (void)startMonitoringPreferencesChangesWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_2491F3E28();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2491FFE80;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2491FFE88;
  v11[5] = v10;
  selfCopy = self;
  sub_2491E9900(0, 0, v6, &unk_2491FFE90, v11);
}

- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_2491F3E28();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2491FFE60;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2491FFE68;
  v11[5] = v10;
  selfCopy = self;
  sub_2491E9900(0, 0, v6, &unk_2491FFE70, v11);
}

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEDFC90, &qword_2491FFCB8);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_2491F3E28();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2491FFE18;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2491FFE28;
  v11[5] = v10;
  selfCopy = self;
  sub_2491E9900(0, 0, v6, &unk_2491FFE38, v11);
}

@end