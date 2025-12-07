@interface UtilitySubscriptionService
+ (void)fetchSubscriptionDetailsWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
+ (void)renewAccessTokenWithRefreshToken:(NSString *)token utilityID:(NSString *)d :(NSURLSession *)a5 completionHandler:(id)handler;
+ (void)renewAuthorizationTokenWithUtilityID:(NSString *)d authorizationToken:(NSString *)token accessToken:(NSString *)accessToken :(NSURLSession *)a6 completionHandler:(id)handler;
+ (void)resendHistoricalDataWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler;
+ (void)resendHistoricalDataWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler;
+ (void)revokeSubscriptionWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
+ (void)revokeSubscriptionWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
- (_TtC19HomeUtilityServices26UtilitySubscriptionService)init;
- (_TtC19HomeUtilityServices26UtilitySubscriptionService)initWithConfiguration:(id)configuration;
- (void)authorizeAccountWithTAFWithFields:(NSDictionary *)fields :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)createAccessToken:(NSString *)token :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocation:(_TtC19HomeUtilityServices22UtilityServiceLocation *)location accessToken:(NSString *)token siteID:(NSString *)d :(NSURLSession *)a6 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token :(NSURLSession *)a5 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token siteID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token zoneName:(NSString *)name :(NSURLSession *)a6 completionHandler:(id)handler;
- (void)fetchServiceLocations:(NSString *)locations :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)initiateOTPForAccountForFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)verifyOTPForAccountWithFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor oneTimePasscode:(NSString *)passcode :(NSURLSession *)a5 completionHandler:(id)handler;
@end

@implementation UtilitySubscriptionService

- (_TtC19HomeUtilityServices26UtilitySubscriptionService)initWithConfiguration:(id)configuration
{
  v5 = sub_20E008D04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (self + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  configurationCopy = configuration;
  sub_20E008CF4();
  v11 = sub_20E008CE4();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *v9 = v11;
  v9[1] = v13;
  *(&self->super.isa + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) = configurationCopy;
  v14 = type metadata accessor for UtilitySubscriptionService();
  v16.receiver = self;
  v16.super_class = v14;
  return [(UtilitySubscriptionService *)&v16 init];
}

- (void)authorizeAccountWithTAFWithFields:(NSDictionary *)fields :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = fields;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00F768;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F770;
  v16[5] = v15;
  fieldsCopy = fields;
  v18 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00F778, v16);
}

- (void)initiateOTPForAccountForFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = factor;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00F748;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F750;
  v16[5] = v15;
  factorCopy = factor;
  v18 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00F758, v16);
}

- (void)createAccessToken:(NSString *)token :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = token;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00F728;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F730;
  v16[5] = v15;
  tokenCopy = token;
  v18 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00F738, v16);
}

- (void)fetchServiceLocations:(NSString *)locations :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = locations;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20E0094C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00F708;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F710;
  v16[5] = v15;
  locationsCopy = locations;
  v18 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v11, &unk_20E00F718, v16);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token :(NSURLSession *)a5 completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = token;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00F6F8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E00C080;
  v18[5] = v17;
  dCopy = d;
  tokenCopy = token;
  v21 = a5;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v13, &unk_20E00B210, v18);
}

+ (void)renewAccessTokenWithRefreshToken:(NSString *)token utilityID:(NSString *)d :(NSURLSession *)a5 completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = token;
  v15[3] = d;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00F810;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E00F818;
  v18[5] = v17;
  tokenCopy = token;
  dCopy = d;
  v21 = a5;
  sub_20DFF7DC8(0, 0, v13, &unk_20E00F820, v18);
}

+ (void)fetchSubscriptionDetailsWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = token;
  v17[3] = d;
  v17[4] = iD;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E00F7F0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00F7F8;
  v20[5] = v19;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  v24 = a6;
  sub_20DFF7DC8(0, 0, v15, &unk_20E00F800, v20);
}

+ (void)renewAuthorizationTokenWithUtilityID:(NSString *)d authorizationToken:(NSString *)token accessToken:(NSString *)accessToken :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = d;
  v17[3] = token;
  v17[4] = accessToken;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E00F7D0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00F7D8;
  v20[5] = v19;
  dCopy = d;
  tokenCopy = token;
  accessTokenCopy = accessToken;
  v24 = a6;
  sub_20DFF7DC8(0, 0, v15, &unk_20E00F7E0, v20);
}

+ (void)revokeSubscriptionWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = token;
  v17[3] = d;
  v17[4] = iD;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E00F7B0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00F7B8;
  v20[5] = v19;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  v24 = a6;
  sub_20DFF7DC8(0, 0, v15, &unk_20E00F7C0, v20);
}

+ (void)resendHistoricalDataWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = token;
  v20[3] = d;
  v20[4] = iD;
  v20[5] = start;
  v20[6] = end;
  v20[7] = a8;
  v20[8] = v19;
  v20[9] = self;
  v21 = sub_20E0094C4();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_20E00F788;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_20E00F790;
  v23[5] = v22;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  startCopy = start;
  endCopy = end;
  v29 = a8;
  sub_20DFF7DC8(0, 0, v18, &unk_20E00F798, v23);
}

- (_TtC19HomeUtilityServices26UtilitySubscriptionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)createUtilitySubscriptionWithServiceLocation:(_TtC19HomeUtilityServices22UtilityServiceLocation *)location accessToken:(NSString *)token siteID:(NSString *)d :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = location;
  v17[3] = token;
  v17[4] = d;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E013520;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E013528;
  v20[5] = v19;
  locationCopy = location;
  tokenCopy = token;
  dCopy = d;
  v24 = a6;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v15, &unk_20E013530, v20);
}

- (void)verifyOTPForAccountWithFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor oneTimePasscode:(NSString *)passcode :(NSURLSession *)a5 completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = factor;
  v15[3] = passcode;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E013500;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013508;
  v18[5] = v17;
  factorCopy = factor;
  passcodeCopy = passcode;
  v21 = a5;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v13, &unk_20E013510, v18);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token siteID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = d;
  v17[3] = token;
  v17[4] = iD;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E0134E0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E0134E8;
  v20[5] = v19;
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  v24 = a6;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v15, &unk_20E0134F0, v20);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token zoneName:(NSString *)name :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = d;
  v17[3] = token;
  v17[4] = name;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E0134C0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E0134C8;
  v20[5] = v19;
  dCopy = d;
  tokenCopy = token;
  nameCopy = name;
  v24 = a6;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v15, &unk_20E0134D0, v20);
}

+ (void)resendHistoricalDataWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = token;
  v20[3] = d;
  v20[4] = iD;
  v20[5] = start;
  v20[6] = end;
  v20[7] = a8;
  v20[8] = v19;
  v20[9] = self;
  v21 = sub_20E0094C4();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_20E0134A0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_20E0134A8;
  v23[5] = v22;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  startCopy = start;
  endCopy = end;
  v29 = a8;
  sub_20DFF7DC8(0, 0, v18, &unk_20E0134B0, v23);
}

+ (void)revokeSubscriptionWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = token;
  v17[3] = d;
  v17[4] = iD;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20E0094C4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E013468;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00C080;
  v20[5] = v19;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  v24 = a6;
  sub_20DFF7DC8(0, 0, v15, &unk_20E00B210, v20);
}

@end