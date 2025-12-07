@interface MNFamiliarRouteAuthorizationChecker
+ (BOOL)isAuthorizedForPurpose:(int64_t)purpose;
+ (BOOL)isEligible;
+ (BOOL)tccPrompted;
+ (MNFamiliarRouteAuthorizationChecker)shared;
+ (void)checkAuthorizationForPurpose:(int64_t)purpose completionHandler:(id)handler;
- (void)set_semaphore:(id)set_semaphore;
@end

@implementation MNFamiliarRouteAuthorizationChecker

+ (BOOL)isEligible
{
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
  }

  return _sSo35MNFamiliarRouteAuthorizationCheckerC10NavigationE10isEligibleSbvg_0() & 1;
}

+ (BOOL)tccPrompted
{
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
  }

  return *(qword_1EDBE0420 + OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__authorizationStatus + 8) != 0;
}

+ (BOOL)isAuthorizedForPurpose:(int64_t)purpose
{
  purposeCopy2 = purpose;
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
    purposeCopy2 = purpose;
  }

  MNFamiliarRouteAuthorizationChecker.authorizationStatus(for:)(purposeCopy2, &v7);
  v4 = v8 == 1;
  sub_1D31526CC(v7, v8);
  return v4;
}

+ (void)checkAuthorizationForPurpose:(int64_t)purpose completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = purpose;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D3277280();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D328BB00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D328BB08;
  v14[5] = v13;
  sub_1D3183A70(0, 0, v9, &unk_1D328BB10, v14);
}

- (void)set_semaphore:(id)set_semaphore
{
  v4 = *(&self->super.isa + OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__semaphore);
  *(&self->super.isa + OBJC_IVAR___MNFamiliarRouteAuthorizationChecker__semaphore) = set_semaphore;
  set_semaphoreCopy = set_semaphore;
}

+ (MNFamiliarRouteAuthorizationChecker)shared
{
  if (qword_1EDBE0410 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBE0420;

  return v3;
}

@end