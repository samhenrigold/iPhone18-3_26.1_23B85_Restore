@interface SettingsProtocolDispatch
- (_TtP8Settings20SettingsHostProtocol_)settingsHost;
- (void)handshakeWithEndPoint:(id)point;
- (void)isCloudSyncEnabled:(id)enabled;
- (void)popNavigationStack;
- (void)setCloudSyncEnabled:(BOOL)enabled;
- (void)willSelectWithNavigationPath:(id)path;
- (void)willSelectWithRevealElementKey:(id)key;
@end

@implementation SettingsProtocolDispatch

- (_TtP8Settings20SettingsHostProtocol_)settingsHost
{
  settingsHost = [*self->target settingsHost];

  return settingsHost;
}

- (void)willSelectWithRevealElementKey:(id)key
{
  if (key)
  {
    v3 = sub_21CE6CC50();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_21CE2DAFC(v3, v5);
}

- (void)willSelectWithNavigationPath:(id)path
{
  pathCopy = path;

  sub_21CE2E030(pathCopy);
}

- (void)handshakeWithEndPoint:(id)point
{
  pointCopy = point;

  sub_21CE31F34(pointCopy);
}

- (void)isCloudSyncEnabled:(id)enabled
{
  v3 = _Block_copy(enabled);
  _Block_copy(v3);

  sub_21CE32418(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)setCloudSyncEnabled:(BOOL)enabled
{

  sub_21CE2F4B4(enabled);
}

- (void)popNavigationStack
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  if ([objc_opt_self() isMainThread])
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v3 = sub_21CE6BDA0();
    __swift_project_value_buffer(v3, qword_27CE412C0);
    v18 = sub_21CE6BD80();
    v4 = sub_21CE6CF30();
    if (os_log_type_enabled(v18, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446978;
      v7 = sub_21CE6D2B0();
      v9 = sub_21CDF2CC8(v7, v8, &v19);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2048;
      *(v5 + 14) = 298;
      *(v5 + 22) = 2082;
      v10 = sub_21CE6D2B0();
      v12 = sub_21CDF2CC8(v10, v11, &v19);

      *(v5 + 24) = v12;
      *(v5 + 32) = 2082;
      *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v19);
      _os_log_impl(&dword_21CDE1000, v18, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v6, -1, -1);
      MEMORY[0x21CF1BD50](v5, -1, -1);
    }

    else
    {
      v17 = v18;
    }
  }

  else
  {
    v13 = sub_21CE6CE20();
    (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
    sub_21CE6CDE0();
    v14 = sub_21CE6CDD0();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = sub_21CE2E65C;
    v15[5] = 0;
    sub_21CE11F34(0, 0, v2, &unk_21CE72DA8, v15);
  }
}

@end