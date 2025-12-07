@interface ConsiderateVolumeSettingsController
- (_TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController)init;
- (void)dealloc;
@end

@implementation ConsiderateVolumeSettingsController

- (_TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController)init
{
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = ConsiderateVolumeSettingsController.init(alwaysSynchronize:)(1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26RelevanceServicesCompanion35ConsiderateVolumeSettingsController_alwaysSynchronize);
  selfCopy = self;
  if ((v4 & 1) == 0)
  {
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(v6, selfCopy);
  }

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(ConsiderateVolumeSettingsController *)&v7 dealloc];
}

@end