@interface ProductionProfileExtension
- (_TtC19HealthBalanceDaemon26ProductionProfileExtension)init;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier;
@end

@implementation ProductionProfileExtension

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)identifier
{
  v4 = sub_22892F0C8();
  v6 = v5;
  if (v4 == sub_22892F0C8() && v6 == v7)
  {
    selfCopy = self;
  }

  else
  {
    v9 = sub_22892F818();
    selfCopy2 = self;

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  v11 = *(&self->super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepingSampleAnalysisFeatureAvailabilityManager);
LABEL_9:

  return v11;
}

- (_TtC19HealthBalanceDaemon26ProductionProfileExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end