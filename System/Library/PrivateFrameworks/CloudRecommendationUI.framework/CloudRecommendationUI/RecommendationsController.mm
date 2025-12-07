@interface RecommendationsController
- (_TtC21CloudRecommendationUI25RecommendationsController)initWithAccount:(id)account;
- (_TtP21CloudRecommendationUI40RecommendationSubtitleControllerDelegate_)subtitleControllerDelegate;
- (void)accountDidChange:(id)change;
- (void)fetchAllWithShouldRefreshBreakout:(BOOL)breakout;
- (void)refresh;
- (void)refreshEligibleRecommendationsWithShouldSendDisplayedStatus:(BOOL)status shouldRefreshBreakout:(BOOL)breakout;
@end

@implementation RecommendationsController

- (_TtP21CloudRecommendationUI40RecommendationSubtitleControllerDelegate_)subtitleControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC21CloudRecommendationUI25RecommendationsController)initWithAccount:(id)account
{
  sub_243AC1408();
  accountCopy = account;
  v5 = sub_243AC13F8();
  type metadata accessor for RecommendationsController(0);
  swift_allocObject();
  v6 = sub_243A45F9C(accountCopy, v5, 0);

  swift_deallocPartialClassInstance();
  return v6;
}

- (void)fetchAllWithShouldRefreshBreakout:(BOOL)breakout
{
  breakoutCopy = breakout;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;

  sub_243A35794();
  sub_243A35030(0, breakoutCopy);
  v8 = *(self + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v9 = sub_243AC2A98();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  swift_retain_n();
  sub_243A3306C(0, 0, v7, &unk_243AC58B0, v10);
}

- (void)refresh
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;

  sub_243A35030(0, 1);
  v6 = *(self + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  swift_retain_n();
  sub_243A3306C(0, 0, v5, &unk_243AC58A8, v8);
}

- (void)refreshEligibleRecommendationsWithShouldSendDisplayedStatus:(BOOL)status shouldRefreshBreakout:(BOOL)breakout
{

  sub_243A34E44(status, breakout);
}

- (void)accountDidChange:(id)change
{
  v3 = sub_243AC10C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC10A8();

  sub_243A43EDC(v6);

  (*(v4 + 8))(v6, v3);
}

@end