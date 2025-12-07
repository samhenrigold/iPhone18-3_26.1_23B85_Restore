@interface AISAppleIDSignInConfiguration
+ (NSArray)defaultServiceTypes;
+ (NSString)defaultPrivacyIdentifier;
- (AIDAServiceContext)aidaServiceContext;
- (BOOL)allowSkip;
- (BOOL)canEditUsername;
- (BOOL)isProximitySetupEnabled;
- (BOOL)shouldShowSystemBackButton;
- (NSArray)privacyLinkIdentifiers;
- (NSArray)serviceTypes;
- (NSDate)ageMigrationPendingDOB;
- (NSString)username;
- (int64_t)signInFlowType;
- (unint64_t)userAgeRange;
- (void)setAgeMigrationPendingDOB:(id)b;
- (void)setAidaServiceContext:(id)context;
- (void)setAllowSkip:(BOOL)skip;
- (void)setCanEditUsername:(BOOL)username;
- (void)setIsProximitySetupEnabled:(BOOL)enabled;
- (void)setPrivacyLinkIdentifiers:(id)identifiers;
- (void)setServiceTypes:(id)types;
- (void)setShouldShowSystemBackButton:(BOOL)button;
- (void)setSignInFlowType:(int64_t)type;
- (void)setUserAgeRange:(unint64_t)range;
- (void)setUsername:(id)username;
@end

@implementation AISAppleIDSignInConfiguration

- (NSString)username
{
  v2 = self + OBJC_IVAR___AISAppleIDSignInConfiguration_username;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_240A2BF1C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsername:(id)username
{
  if (username)
  {
    v4 = sub_240A2BF4C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)canEditUsername
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanEditUsername:(BOOL)username
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  *(self + v5) = username;
}

- (BOOL)allowSkip
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowSkip:(BOOL)skip
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  *(self + v5) = skip;
}

- (BOOL)shouldShowSystemBackButton
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShowSystemBackButton:(BOOL)button
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  *(self + v5) = button;
}

- (NSArray)serviceTypes
{
  swift_beginAccess();
  type metadata accessor for AIDAServiceType(0);

  v2 = sub_240A2C15C();

  return v2;
}

- (void)setServiceTypes:(id)types
{
  type metadata accessor for AIDAServiceType(0);
  v4 = sub_240A2C16C();
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_serviceTypes;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)isProximitySetupEnabled
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsProximitySetupEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (NSArray)privacyLinkIdentifiers
{
  swift_beginAccess();

  v2 = sub_240A2C15C();

  return v2;
}

- (void)setPrivacyLinkIdentifiers:(id)identifiers
{
  v4 = sub_240A2C16C();
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (AIDAServiceContext)aidaServiceContext
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAidaServiceContext:(id)context
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = context;
  contextCopy = context;
}

- (int64_t)signInFlowType
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSignInFlowType:(int64_t)type
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSDate)ageMigrationPendingDOB
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_2409BF428(self + v6, v5);
  v7 = sub_240A2962C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_240A295EC();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setAgeMigrationPendingDOB:(id)b
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (b)
  {
    sub_240A295FC();
    v8 = sub_240A2962C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_240A2962C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  selfCopy = self;
  sub_240963E78(v7, self + v10);
  swift_endAccess();
}

- (unint64_t)userAgeRange
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserAgeRange:(unint64_t)range
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  *(self + v5) = range;
}

+ (NSArray)defaultServiceTypes
{
  if (qword_27E50AFB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AIDAServiceType(0);
  v2 = sub_240A2C15C();

  return v2;
}

+ (NSString)defaultPrivacyIdentifier
{
  v2 = sub_240A2BF1C();

  return v2;
}

@end