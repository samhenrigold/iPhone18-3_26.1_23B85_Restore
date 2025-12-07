@interface UtilityConfiguration
- (NSDictionary)alternateSuppliers;
- (NSString)name;
- (NSString)shortName;
- (NSString)termsAndAgreement;
- (NSURL)OAuthURL;
- (_TtC19HomeUtilityServices19UtilityOrganization)organizationInformation;
- (_TtC19HomeUtilityServices20UtilityConfiguration)init;
- (id)alternateSupplierNameFor:(id)for;
- (int64_t)accessTokenValidity;
- (int64_t)authorizationRefreshPeriod;
- (int64_t)initialPollDelayInSeconds;
- (int64_t)refreshTokenValidity;
- (void)trustedAccountFingerprintEnabledWithCompletionHandler:(id)handler;
@end

@implementation UtilityConfiguration

- (NSString)name
{

  v2 = sub_20E0091C4();

  return v2;
}

- (NSString)shortName
{
  v2 = *&self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 296];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *&self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 288] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    v4 = sub_20E0091C4();

    v5 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)alternateSuppliers
{
  selfCopy = self;
  v3 = sub_20DF6D7F0();

  if (v3)
  {
    v4 = sub_20E009154();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)alternateSupplierNameFor:(id)for
{
  v4 = sub_20E0091D4();
  v6 = v5;
  selfCopy = self;
  sub_20DF6DA28(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_20E0091C4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)OAuthURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_20DF6E3D0();

  v7 = sub_20E008AF4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_20E008A64();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (int64_t)accessTokenValidity
{
  v2 = *&self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 88];
  result = 3600 * v2;
  if ((v2 * 3600) >> 64 != (3600 * v2) >> 63)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)refreshTokenValidity
{
  v2 = *&self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 96];
  result = 3600 * v2;
  if ((v2 * 3600) >> 64 != (3600 * v2) >> 63)
  {
    __break(1u);
  }

  return result;
}

- (NSString)termsAndAgreement
{

  v2 = sub_20E0091C4();

  return v2;
}

- (_TtC19HomeUtilityServices19UtilityOrganization)organizationInformation
{
  selfCopy = self;
  v3 = sub_20DF6E900();

  return v3;
}

- (int64_t)initialPollDelayInSeconds
{
  if (self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 208])
  {
    return 60;
  }

  else
  {
    return *&self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 200];
  }
}

- (int64_t)authorizationRefreshPeriod
{
  if (self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 224])
  {
    return 0;
  }

  else
  {
    return *&self->config[OBJC_IVAR____TtC19HomeUtilityServices20UtilityConfiguration_config + 216];
  }
}

- (void)trustedAccountFingerprintEnabledWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20E0094C4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20E00C078;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20E00C080;
  v12[5] = v11;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v7, &unk_20E00B210, v12);
}

- (_TtC19HomeUtilityServices20UtilityConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end