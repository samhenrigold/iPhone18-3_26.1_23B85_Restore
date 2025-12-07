@interface DiagnosticsService
- (void)configurationVersionWithCompletionHandler:(id)handler;
- (void)killScreenTimeAgent:(NSString *)agent completionHandler:(id)handler;
- (void)localConfigurationVersionWithCompletionHandler:(id)handler;
- (void)postNotificationWithContext:(STUserNotificationContext *)context completionHandler:(id)handler;
- (void)postWeeklyReportNotificationWithCompletionHandler:(id)handler;
- (void)removeNotificationWithContext:(STUserNotificationContext *)context completionHandler:(id)handler;
- (void)repairBlueprintsWithCompletionHandler:(id)handler;
- (void)sendBlueprintChangesWithCompletionHandler:(id)handler;
- (void)sendBlueprintsWithCompletionHandler:(id)handler;
- (void)sendCheckInRequestOnV2WithCompletionHandler:(id)handler;
- (void)sendCheckInRequestWithCompletionHandler:(id)handler;
- (void)sendSettingsChangesWithCompletionHandler:(id)handler;
- (void)sendSettingsWithCompletionHandler:(id)handler;
- (void)sendUserDeviceStateWithCompletionHandler:(id)handler;
- (void)setLocalConfigurationVersion:(NSNumber *)version completionHandler:(id)handler;
@end

@implementation DiagnosticsService

- (void)localConfigurationVersionWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141550;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001421E0;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141560, v12);
}

- (void)setLocalConfigurationVersion:(NSNumber *)version completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = version;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100141530;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100141538;
  v14[5] = v13;
  versionCopy = version;

  sub_10010D4C0(0, 0, v9, &unk_100141540, v14);
}

- (void)configurationVersionWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141510;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100141518;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141520, v12);
}

- (void)repairBlueprintsWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001414F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001414F8;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141500, v12);
}

- (void)sendCheckInRequestWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001414D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001414D8;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001414E0, v12);
}

- (void)sendCheckInRequestOnV2WithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001414B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001414B8;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001414C0, v12);
}

- (void)sendBlueprintsWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141490;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100141498;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001414A0, v12);
}

- (void)sendBlueprintChangesWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141470;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100141478;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141480, v12);
}

- (void)sendSettingsWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141450;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100141458;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141460, v12);
}

- (void)sendSettingsChangesWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141430;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100141438;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141440, v12);
}

- (void)sendUserDeviceStateWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100141410;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100141418;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141420, v12);
}

- (void)postWeeklyReportNotificationWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001413F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140E18;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100141400, v12);
}

- (void)postNotificationWithContext:(STUserNotificationContext *)context completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001413D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140E00;
  v14[5] = v13;
  contextCopy = context;

  sub_10010D4C0(0, 0, v9, &unk_1001413E0, v14);
}

- (void)removeNotificationWithContext:(STUserNotificationContext *)context completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001413B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140880;
  v14[5] = v13;
  contextCopy = context;

  sub_10010D4C0(0, 0, v9, &unk_1001413C0, v14);
}

- (void)killScreenTimeAgent:(NSString *)agent completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = agent;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100141350;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140550;
  v14[5] = v13;
  agentCopy = agent;

  sub_10010D4C0(0, 0, v9, &unk_100140230, v14);
}

@end