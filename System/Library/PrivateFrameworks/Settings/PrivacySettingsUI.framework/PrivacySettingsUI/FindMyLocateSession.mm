@interface FindMyLocateSession
- (id)meDeviceUpdateCallback;
- (id)shareMyLocationUpdateCallback;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler;
- (void)isMyLocationEnabledWithCompletionHandler:(id)handler;
- (void)setMeDeviceUpdateCallback:(id)callback;
- (void)setShareMyLocationUpdateCallback:(id)callback;
- (void)startMonitoringPrefrenceChangesWithCompletionHandler:(id)handler;
- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (id)meDeviceUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26585C13C;
    aBlock[3] = &block_descriptor_104;
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
    v4 = sub_265862218;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_265800D20(v7, v8);
}

- (id)shareMyLocationUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26585C5B4;
    aBlock[3] = &block_descriptor;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShareMyLocationUpdateCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2658621E8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_265800D20(v7, v8);
}

- (void)startMonitoringPrefrenceChangesWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_265864E50();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_26586A178;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A180;
  v11[5] = v10;
  selfCopy = self;
  sub_265860B24(0, 0, v6, &unk_26586A188, v11);
}

- (void)stopMonitoringPreferenceChangesWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_265864E50();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_26586A158;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A160;
  v11[5] = v10;
  selfCopy = self;
  sub_265860B24(0, 0, v6, &unk_26586A168, v11);
}

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_265864E50();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_26586A138;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A140;
  v11[5] = v10;
  selfCopy = self;
  sub_265860B24(0, 0, v6, &unk_26586A148, v11);
}

- (void)isMyLocationEnabledWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_265864E50();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_26586A0F0;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26586A100;
  v11[5] = v10;
  selfCopy = self;
  sub_265860B24(0, 0, v6, &unk_26586A110, v11);
}

@end