@interface HindsightCloudShareManagerEnergyKitDataSource
- (BOOL)shouldCreateZoneForHome:(id)home;
- (BOOL)shouldGrantWriteAccessToUser:(id)user;
- (BOOL)shouldShareWithUser:(id)user;
- (HMDHomeKitVersion)minimumHomeKitVersion;
- (_TtC13HomeKitDaemon45HindsightCloudShareManagerEnergyKitDataSource)init;
- (id)zoneUUIDForHome:(id)home;
@end

@implementation HindsightCloudShareManagerEnergyKitDataSource

- (_TtC13HomeKitDaemon45HindsightCloudShareManagerEnergyKitDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HindsightCloudShareManagerEnergyKitDataSource();
  return [(HindsightCloudShareManagerEnergyKitDataSource *)&v3 init];
}

- (HMDHomeKitVersion)minimumHomeKitVersion
{
  version13_0 = [objc_opt_self() version13_0];

  return version13_0;
}

- (id)zoneUUIDForHome:(id)home
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_22A4DBDAC();
  homeCopy = home;
  spiClientIdentifier = [homeCopy spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DBD9C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v14 = sub_22A4DB77C();
  v13(v10, v4);

  return v14;
}

- (BOOL)shouldCreateZoneForHome:(id)home
{
  homeCopy = home;
  v4 = [objc_msgSend(homeCopy featuresDataSource)];

  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)shouldShareWithUser:(id)user
{
  userCopy = user;
  if ([userCopy isAllowedToAccessActivityHistory] && (v4 = objc_msgSend(userCopy, sel_home)) != 0)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 featuresDataSource)];

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldGrantWriteAccessToUser:(id)user
{
  userCopy = user;
  home = [userCopy home];
  if (home)
  {
    v5 = home;
    v6 = [objc_msgSend(home featuresDataSource)];

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end