@interface AppInstallationSettingsViewModel
- (_TtC23AppInstallationSettings32AppInstallationSettingsViewModel)init;
- (void)lowPowerModeChanged;
@end

@implementation AppInstallationSettingsViewModel

- (_TtC23AppInstallationSettings32AppInstallationSettingsViewModel)init
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_CC5C();

  return v2;
}

- (void)lowPowerModeChanged
{
  v3 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1EA68();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1EA48();
  selfCopy = self;
  v8 = sub_1EA38();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_F71C(0, 0, v5, &unk_1FF00, v9);
}

@end