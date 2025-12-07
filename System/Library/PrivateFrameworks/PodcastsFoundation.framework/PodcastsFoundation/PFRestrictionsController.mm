@interface PFRestrictionsController
+ (BOOL)isExplicitContentAllowed;
+ (PFRestrictionsController)shared;
- (void)reload;
- (void)startListening;
- (void)stopListening;
@end

@implementation PFRestrictionsController

+ (PFRestrictionsController)shared
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1CD0;

  return v3;
}

- (void)startListening
{
  selfCopy = self;
  RestrictionsController.startListening()();
}

- (void)reload
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1D917886C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1D8E91528(0, 0, v5, &unk_1D91BED88, v7);
}

+ (BOOL)isExplicitContentAllowed
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  return v3 == 0;
}

- (void)stopListening
{
  selfCopy = self;
  RestrictionsController.stopListening()();
}

@end