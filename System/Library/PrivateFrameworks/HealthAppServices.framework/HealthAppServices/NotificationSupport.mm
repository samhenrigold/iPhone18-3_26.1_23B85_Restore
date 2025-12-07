@interface NotificationSupport
+ (UNNotificationSound)defaultHealthAppNotificationSound;
+ (id)createNotificationUserInfoFor:(int64_t)for with:(id)with;
- (_TtC17HealthAppServices19NotificationSupport)init;
@end

@implementation NotificationSupport

+ (UNNotificationSound)defaultHealthAppNotificationSound
{
  soundWithAlertType_ = [objc_opt_self() soundWithAlertType_];

  return soundWithAlertType_;
}

+ (id)createNotificationUserInfoFor:(int64_t)for with:(id)with
{
  sub_251307374(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (with)
  {
    sub_25130EE64();
    v9 = sub_25130EEC4();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_25130EEC4();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  _s17HealthAppServices19NotificationSupportC06createD8UserInfo3for4withSDys11AnyHashableVypGSo20HKNotificationDomainV_10Foundation3URLVSgtFZ_0(for, v8);
  sub_251307430(v8, sub_251307374);
  v11 = sub_25130EF64();

  return v11;
}

- (_TtC17HealthAppServices19NotificationSupport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NotificationSupport();
  return [(NotificationSupport *)&v3 init];
}

@end