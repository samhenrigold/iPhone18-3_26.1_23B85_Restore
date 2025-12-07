@interface TrendsOnBoardingActivityTile
- (_TtC10FitnessApp28TrendsOnBoardingActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didTapGetStartedButton;
- (void)prepareForReuse;
@end

@implementation TrendsOnBoardingActivityTile

- (_TtC10FitnessApp28TrendsOnBoardingActivityTile)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002C58BC(style, identifier, v6);
}

- (void)didTapGetStartedButton
{
  v2 = self + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration;
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration);
  if (v3 - 1 >= 2)
  {
    v4 = *(v2 + 1);
    if (v3)
    {
      selfCopy = self;
      v6 = sub_1002C79D8(v3, v4);
      v3(v6);

      sub_100282D3C(v3, v4);
    }

    else
    {
      v7 = *(v2 + 1);

      sub_10000B210(0, v7);
    }
  }
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002C7578(selfCopy);
}

@end