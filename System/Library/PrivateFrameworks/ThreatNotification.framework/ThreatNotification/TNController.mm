@interface TNController
+ (TNController)sharedInstance;
- (BOOL)clearFollowUpItemWithError:(id *)error;
- (BOOL)isFollowUpItemPending;
- (BOOL)isOnBoardingFlowRequired;
- (BOOL)postFollowUpItemWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)repostFollowUpItemIfNeededWithError:(id *)error;
@end

@implementation TNController

+ (TNController)sharedInstance
{
  if (qword_2806D1158 != -1)
  {
    swift_once();
  }

  v3 = qword_2806D1160;

  return v3;
}

- (BOOL)isOnBoardingFlowRequired
{
  swift_getObjectType();
  selfCopy = self;
  v4 = sub_26F0494E0();

  return v4 & 1;
}

- (BOOL)isFollowUpItemPending
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D1150, &qword_26F0499E0);
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  selfCopy = self;
  sub_26F049490();

  v6 = sub_26F049450();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_26F049360(v4, &qword_2806D1150, &qword_26F0499E0);
  return v7;
}

- (BOOL)postFollowUpItemWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_26F04859C(configurationCopy);

  return 1;
}

- (BOOL)repostFollowUpItemIfNeededWithError:(id *)error
{
  selfCopy = self;
  sub_26F048D08();

  return 1;
}

- (BOOL)clearFollowUpItemWithError:(id *)error
{
  selfCopy = self;
  sub_26F049470();

  return 1;
}

@end