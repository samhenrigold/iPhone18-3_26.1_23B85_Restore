@interface UtilityServices
+ (BOOL)isSupportedInRegion:(id)region;
+ (NSURLSession)defaultURLSession;
+ (id)environment;
+ (id)userDSID;
+ (void)allUtilitiesInRegion:(NSString *)region :(NSURLSession *)a4 completionHandler:(id)handler;
+ (void)authorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d authCode:(NSString *)code completionHandler:(id)handler;
+ (void)clearServiceConfigCache;
+ (void)configuration:(NSURLSession *)configuration completionHandler:(id)handler;
+ (void)fetchPrivateAccessToken:(NSArray *)token completionHandler:(id)handler;
+ (void)generateGrandSlamTokenWithCompletionHandler:(id)handler;
+ (void)getUtilityInformation:(NSString *)information completionHandler:(id)handler;
+ (void)internalFrameworkConfiguration:(NSURLSession *)configuration completionHandler:(id)handler;
+ (void)searchUtilitiesNearLocation:(CLLocation *)location completionHandler:(id)handler;
+ (void)subscribePremiseToUsageData:(NSString *)data utilityID:(NSString *)d utilityHomeID:(NSString *)iD completionHandler:(id)handler;
+ (void)tafAuthorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d fields:(NSDictionary *)fields completionHandler:(id)handler;
+ (void)utilityConfigurationFor:(NSString *)for withSession:(NSURLSession *)session completionHandler:(id)handler;
+ (void)utilityIDLookupFor:(CLLocationCoordinate2D)for withSession:(NSURLSession *)session completionHandler:(id)handler;
+ (void)verifyServiceAddress:(_TtC19HomeUtilityServices21UtilityServiceAddress *)address withSession:(NSURLSession *)session completionHandler:(id)handler;
- (_TtC19HomeUtilityServices15UtilityServices)init;
@end

@implementation UtilityServices

+ (void)verifyServiceAddress:(_TtC19HomeUtilityServices21UtilityServiceAddress *)address withSession:(NSURLSession *)session completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = address;
  v13[3] = session;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00B200;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00C080;
  v16[5] = v15;
  addressCopy = address;
  sessionCopy = session;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00B210, v16);
}

+ (NSURLSession)defaultURLSession
{
  ephemeralSessionConfiguration = [objc_opt_self() ephemeralSessionConfiguration];
  sessionWithConfiguration_ = [objc_opt_self() sessionWithConfiguration_];

  return sessionWithConfiguration_;
}

+ (void)configuration:(NSURLSession *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20E0094C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20E00C0F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00C0F8;
  v14[5] = v13;
  configurationCopy = configuration;
  sub_20DFF7DC8(0, 0, v9, &unk_20E00C100, v14);
}

+ (BOOL)isSupportedInRegion:(id)region
{
  v3 = sub_20E0091D4();
  v5 = v4;
  v6 = sub_20DF9D3A0();
  LOBYTE(v3) = sub_20DF6C41C(v3, v5, v6);

  return v3 & 1;
}

- (_TtC19HomeUtilityServices15UtilityServices)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UtilityServices();
  return [(UtilityServices *)&v3 init];
}

+ (void)utilityIDLookupFor:(CLLocationCoordinate2D)for withSession:(NSURLSession *)session completionHandler:(id)handler
{
  longitude = for.longitude;
  latitude = for.latitude;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = latitude;
  v14[3] = longitude;
  *(v14 + 4) = session;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00C0D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00C0D8;
  v17[5] = v16;
  sessionCopy = session;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00C0E0, v17);
}

+ (void)allUtilitiesInRegion:(NSString *)region :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = region;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00C0B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00C0B8;
  v16[5] = v15;
  regionCopy = region;
  v18 = a4;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00C0C0, v16);
}

+ (void)utilityConfigurationFor:(NSString *)for withSession:(NSURLSession *)session completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = session;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00C090;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00C098;
  v16[5] = v15;
  forCopy = for;
  sessionCopy = session;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00C0A0, v16);
}

+ (void)internalFrameworkConfiguration:(NSURLSession *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20E0094C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20E00EBA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00EBA8;
  v14[5] = v13;
  configurationCopy = configuration;
  sub_20DFF7DC8(0, 0, v9, &unk_20E00EBB0, v14);
}

+ (void)fetchPrivateAccessToken:(NSArray *)token completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20E0094C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20E00EB80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00EB88;
  v14[5] = v13;
  tokenCopy = token;
  sub_20DFF7DC8(0, 0, v9, &unk_20E00EB90, v14);
}

+ (void)clearServiceConfigCache
{
  v2 = sub_20DF9CAE0();
  v4 = v3;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CF8, &qword_20E00EB58);
  v5[0] = MEMORY[0x277D84F90];
  sub_20DF9C678(v2, v4, v5, 0xD00000000000002CLL, 0x800000020E0160E0);

  sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
}

+ (void)generateGrandSlamTokenWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20E0094C4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20E00EB70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20E00C080;
  v12[5] = v11;
  sub_20DFF7DC8(0, 0, v7, &unk_20E00B210, v12);
}

+ (id)userDSID
{
  if (qword_27C852000 != -1)
  {
    swift_once();
  }

  sub_20DF900EC(qword_27C862620);
  if (v2)
  {
    v3 = sub_20E0091C4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)environment
{
  sub_20DFE7E38();
  v2 = sub_20E0091C4();

  return v2;
}

+ (void)searchUtilitiesNearLocation:(CLLocation *)location completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = location;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20E0094C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20E0135C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00F818;
  v14[5] = v13;
  locationCopy = location;
  sub_20DFF7DC8(0, 0, v9, &unk_20E00F820, v14);
}

+ (void)getUtilityInformation:(NSString *)information completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = information;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20E0094C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20E0135A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E0135A8;
  v14[5] = v13;
  informationCopy = information;
  sub_20DFF7DC8(0, 0, v9, &unk_20E0135B0, v14);
}

+ (void)authorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d authCode:(NSString *)code completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = premise;
  v15[3] = d;
  v15[4] = code;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E013580;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013588;
  v18[5] = v17;
  premiseCopy = premise;
  dCopy = d;
  codeCopy = code;
  sub_20DFF7DC8(0, 0, v13, &unk_20E013590, v18);
}

+ (void)tafAuthorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d fields:(NSDictionary *)fields completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = premise;
  v15[3] = d;
  v15[4] = fields;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E013560;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013568;
  v18[5] = v17;
  premiseCopy = premise;
  dCopy = d;
  fieldsCopy = fields;
  sub_20DFF7DC8(0, 0, v13, &unk_20E013570, v18);
}

+ (void)subscribePremiseToUsageData:(NSString *)data utilityID:(NSString *)d utilityHomeID:(NSString *)iD completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = data;
  v15[3] = d;
  v15[4] = iD;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E013540;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013548;
  v18[5] = v17;
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  sub_20DFF7DC8(0, 0, v13, &unk_20E013550, v18);
}

@end