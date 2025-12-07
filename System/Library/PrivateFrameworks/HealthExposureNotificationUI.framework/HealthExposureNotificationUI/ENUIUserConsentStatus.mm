@interface ENUIUserConsentStatus
- (NSDate)dateConsented;
- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)init;
- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)initWithTextConsented:(id)consented versionConsented:(id)versionConsented dateConsented:(id)dateConsented;
@end

@implementation ENUIUserConsentStatus

- (NSDate)dateConsented
{
  v3 = sub_251702E24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented, v3);
  v7 = sub_251702DD4();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)initWithTextConsented:(id)consented versionConsented:(id)versionConsented dateConsented:(id)dateConsented
{
  v6 = sub_251702E24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251703164();
  v12 = v11;
  v13 = sub_251703164();
  v15 = v14;
  sub_251702E04();
  v16 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_textConsented);
  *v16 = v10;
  v16[1] = v12;
  v17 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_versionConsented);
  *v17 = v13;
  v17[1] = v15;
  (*(v7 + 16))(self + OBJC_IVAR____TtC28HealthExposureNotificationUI21ENUIUserConsentStatus_dateConsented, v9, v6);
  v18 = type metadata accessor for ENUIUserConsentStatus(0);
  v21.receiver = self;
  v21.super_class = v18;
  v19 = [(ENUIUserConsentStatus *)&v21 init];
  (*(v7 + 8))(v9, v6);
  return v19;
}

- (_TtC28HealthExposureNotificationUI21ENUIUserConsentStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end