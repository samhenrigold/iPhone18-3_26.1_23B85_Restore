@interface HFHomeEnergyManager
+ (void)utilityConfiguration:(NSString *)configuration completionHandler:(id)handler;
- (BOOL)cachedHasEnergySite;
- (BOOL)cachedHasUtilitySubscription;
- (BOOL)effectiveGridForecastSupported;
- (BOOL)hasElectricityRatesEnabled;
- (BOOL)isGridForecastEnabled;
- (BOOL)isGridForecastVisible;
- (BOOL)isHomeElectricitySupported;
- (BOOL)isHomeEnergyVisible;
- (CLLocation)temporaryLocation;
- (_TtC4Home19HFHomeEnergyManager)init;
- (_TtC4Home19HFHomeEnergyManager)initWithHome:(id)home;
- (void)createUtilitySubscriptionWithHomeID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken address:(NSString *)address utilityCustomerName:(NSString *)self0 completionHandler:(id)self1;
- (void)homeRegionWithCompletionHandler:(id)handler;
- (void)isGridForecastSupportedInHomeRegionWithCompletionHandler:(id)handler;
- (void)isHomeElectricitySupportedInHomeRegionWithCompletionHandler:(id)handler;
- (void)revokeSubscriptionWithCompletionHandler:(id)handler;
- (void)setCachedHasEnergySite:(BOOL)site;
- (void)setHasElectricityRatesEnabled:(BOOL)enabled;
- (void)setIsGridForecastEnabled:(BOOL)enabled;
- (void)setIsHomeElectricitySupported:(BOOL)supported;
- (void)setTemporaryLocation:(id)location;
- (void)updateHomeEnergyAvailableFeaturesWithCompletionHandler:(id)handler;
- (void)updateIncludeElectricityRates:(BOOL)rates completionHandler:(id)handler;
- (void)utilityDetailsWithCompletionHandler:(id)handler;
@end

@implementation HFHomeEnergyManager

- (_TtC4Home19HFHomeEnergyManager)initWithHome:(id)home
{
  v4 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
  homeCopy = home;
  v6 = [v4 init];
  type metadata accessor for RealUtilityServices();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  v9 = sub_20DAB3898(homeCopy, v6, v7, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (CLLocation)temporaryLocation
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTemporaryLocation:(id)location
{
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = location;
  locationCopy = location;
}

- (BOOL)isGridForecastVisible
{
  selfCopy = self;
  v3 = sub_20DAA35CC();

  return v3 & 1;
}

- (BOOL)isGridForecastEnabled
{
  selfCopy = self;
  v3 = sub_20DAA36DC();

  return v3 & 1;
}

- (void)setIsGridForecastEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_20DAA3940(enabled);
}

- (BOOL)effectiveGridForecastSupported
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4 == 2)
  {
    selfCopy = self;
    LOBYTE(v4) = sub_20DAA3D58();
  }

  return v4 & 1;
}

- (void)updateHomeEnergyAvailableFeaturesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD97120;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD97128;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD97130, v12);
}

- (BOOL)isHomeElectricitySupported
{
  selfCopy = self;
  v3 = sub_20DAA4D14();

  return v3 & 1;
}

- (void)setIsHomeElectricitySupported:(BOOL)supported
{
  selfCopy = self;
  sub_20DAA4D74(supported);
}

- (BOOL)cachedHasEnergySite
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCachedHasEnergySite:(BOOL)site
{
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  swift_beginAccess();
  *(&self->super.isa + v5) = site;
}

- (BOOL)cachedHasUtilitySubscription
{
  selfCopy = self;
  v3 = sub_20DAA519C();

  return v3 & 1;
}

- (BOOL)isHomeEnergyVisible
{
  selfCopy = self;
  if (sub_20DAA35CC())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_20DAA519C();
  }

  return v3 & 1;
}

- (BOOL)hasElectricityRatesEnabled
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHasElectricityRatesEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = enabled;
  selfCopy = self;
  sub_20DAA59DC();
}

- (void)updateIncludeElectricityRates:(BOOL)rates completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = rates;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD97100;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD97108;
  v14[5] = v13;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v9, &unk_20DD97110, v14);
}

- (void)isHomeElectricitySupportedInHomeRegionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD970E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD970E8;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD970F0, v12);
}

- (void)utilityDetailsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD970C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD970C8;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD970D0, v12);
}

- (void)revokeSubscriptionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD970A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD970A8;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD970B0, v12);
}

- (void)isGridForecastSupportedInHomeRegionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD97080;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD97088;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD97090, v12);
}

- (void)homeRegionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD97060;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD97068;
  v12[5] = v11;
  selfCopy = self;
  sub_20DAB35AC(0, 0, v7, &unk_20DD97070, v12);
}

+ (void)utilityConfiguration:(NSString *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20DD65114();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD97140;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD97148;
  v14[5] = v13;
  configurationCopy = configuration;
  sub_20DAB35AC(0, 0, v9, &unk_20DD97150, v14);
}

- (void)createUtilitySubscriptionWithHomeID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken address:(NSString *)address utilityCustomerName:(NSString *)self0 completionHandler:(id)self1
{
  selfCopy = self;
  refreshTokenCopy = refreshToken;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &selfCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = d;
  v20[3] = iD;
  v20[4] = locationID;
  v20[5] = token;
  v21 = selfCopy;
  v22 = refreshTokenCopy;
  v20[6] = date;
  v20[7] = v22;
  v20[8] = address;
  v20[9] = name;
  v20[10] = v19;
  v20[11] = v21;
  v23 = sub_20DD65114();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_20DD97018;
  v24[5] = v20;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_20DD94D90;
  v25[5] = v24;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  dateCopy = date;
  v31 = refreshTokenCopy;
  addressCopy = address;
  nameCopy = name;
  v34 = selfCopy;
  sub_20DAB35AC(0, 0, v18, &unk_20DD95520, v25);
}

- (_TtC4Home19HFHomeEnergyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end