@interface HiddenAppsSettingsListViewModel
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
@end

@implementation HiddenAppsSettingsListViewModel

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13InstalledApps31HiddenAppsSettingsListViewModel_subscription);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(HiddenAppsSettingsListViewModel *)&v6 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v5 = sub_2B4C(&unk_38E10, &qword_2B770);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  selfCopy = self;
  sub_2A4A4();
  v9 = sub_2A4C4();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = selfCopy;
  v11 = selfCopy;
  sub_642C(0, 0, v7, &unk_2B780, v10);

  sub_6958(v7);
}

@end