@interface STDeviceActivityDataSource
+ (BOOL)hasDataForUserWithAltDSID:(id)d userDeviceStates:(id)states;
+ (NSArray)allLocallyUsedBundleIdentifiers;
+ (NSDictionary)deviceIdentifiersByUserAltDSID;
+ (id)lastUpdatedDateFor:(id)for;
+ (id)totalWeeklyUsageDuringDateInterval:(id)interval userAltDSID:(id)d error:(id *)error;
+ (void)downloadRemoteData;
+ (void)refreshAndUploadLocalDataSinceDate:(id)date completionHandler:(id)handler;
+ (void)setGenesisDate:(id)date;
- (_TtC14ScreenTimeCore26STDeviceActivityDataSource)init;
@end

@implementation STDeviceActivityDataSource

+ (NSDictionary)deviceIdentifiersByUserAltDSID
{
  _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F58, &qword_1B83E8F48);
  v2 = sub_1B83DDC6C();

  return v2;
}

+ (NSArray)allLocallyUsedBundleIdentifiers
{
  _s14ScreenTimeCore26STDeviceActivityDataSourceC31allLocallyUsedBundleIdentifiersSaySSGvgZ_0();
  v2 = sub_1B83DDDCC();

  return v2;
}

+ (void)setGenesisDate:(id)date
{
  v3 = sub_1B83DD94C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD93C();
  _s14ScreenTimeCore26STDeviceActivityDataSourceC14setGenesisDateyy10Foundation0J0VFZ_0(v6);
  (*(v4 + 8))(v6, v3);
}

+ (id)totalWeeklyUsageDuringDateInterval:(id)interval userAltDSID:(id)d error:(id *)error
{
  v6 = sub_1B83DD82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD80C();
  if (d)
  {
    v10 = sub_1B83DDCEC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_1B83C1E9C(v9, v10, v12);
  (*(v7 + 8))(v9, v6);

  return v13;
}

+ (id)lastUpdatedDateFor:(id)for
{
  v3 = sub_1B83DD82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  sub_1B83DD80C();
  static STDeviceActivityDataSource.lastUpdatedDate(for:)(v6, v9);
  (*(v4 + 8))(v6, v3);
  v10 = sub_1B83DD94C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1B83DD91C();
    (*(v11 + 8))(v9, v10);
    v13 = v14;
  }

  return v13;
}

+ (void)refreshAndUploadLocalDataSinceDate:(id)date completionHandler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F28, &qword_1B83E8E78);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  if (date)
  {
    sub_1B83DD93C();
    v17 = sub_1B83DD94C();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = sub_1B83DD94C();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = sub_1B83DDE3C();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_1B83C24E8(v15, v13);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1B83C2558(v13, v22 + v21);
  v23 = (v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1B83C2CD8;
  v23[1] = v19;

  sub_1B83B4324(0, 0, v8, &unk_1B83E8F40, v22);

  sub_1B83AD84C(v15, &qword_1EBA84F28, &qword_1B83E8E78);
}

+ (void)downloadRemoteData
{
  v2 = sub_1B83DDB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DDB5C();
  sub_1B83DDB0C();
  (*(v3 + 8))(v5, v2);
}

+ (BOOL)hasDataForUserWithAltDSID:(id)d userDeviceStates:(id)states
{
  if (d)
  {
    v5 = sub_1B83DDCEC();
    v7 = v6;
    if (states)
    {
LABEL_3:
      sub_1B83A1210(0, &qword_1EBA83718, off_1E7CE5FF8);
      sub_1B83C2C74(&qword_1EBA83710, &qword_1EBA83718, off_1E7CE5FF8);
      v8 = sub_1B83DDE7C();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (states)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = _s14ScreenTimeCore26STDeviceActivityDataSourceC30deviceIdentifiersByUserAltDSIDSDySSSaySSGGvgZ_0();
  if (qword_1ED9A0050 != -1)
  {
    swift_once();
  }

  v10 = sub_1B83DDBFC();
  __swift_project_value_buffer(v10, qword_1ED9A0058);
  v11 = sub_1B83DDBDC();
  v12 = _s14ScreenTimeCore26STDeviceActivityDataSourceC03hasF018forUserWithAltDSID16userDeviceStates019deviceIdentifiersByjlM00qrsC14DuetIdentifierSbSSSg_ShySo06STUserO5StateCGSgSDySSSaySSGGSDySSShySSGGtFZ_0(v5, v7, v8, v9, v11);

  return v12 & 1;
}

- (_TtC14ScreenTimeCore26STDeviceActivityDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STDeviceActivityDataSource();
  return [(STDeviceActivityDataSource *)&v3 init];
}

@end