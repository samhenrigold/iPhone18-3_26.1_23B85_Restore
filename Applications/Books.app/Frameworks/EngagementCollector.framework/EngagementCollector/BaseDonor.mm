@interface BaseDonor
- (BOOL)isObservedBy:(id)by;
- (NSArray)eventConfigurations;
- (NSString)type;
- (_TtC19EngagementCollector9BaseDonor)init;
- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block;
- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration;
- (void)setEventConfigurations:(id)configurations;
- (void)setType:(id)type;
@end

@implementation BaseDonor

- (NSString)type
{
  swift_beginAccess();

  v2 = sub_31300();

  return v2;
}

- (void)setType:(id)type
{
  v4 = sub_31320();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC19EngagementCollector9BaseDonor_type);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)eventConfigurations
{
  swift_beginAccess();
  type metadata accessor for BasePropertyConfiguration();

  v2.super.isa = sub_313D0().super.isa;

  return v2.super.isa;
}

- (void)setEventConfigurations:(id)configurations
{
  type metadata accessor for BasePropertyConfiguration();
  v4 = sub_313E0();
  v5 = OBJC_IVAR____TtC19EngagementCollector9BaseDonor_eventConfigurations;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block
{
  _Block_copy(block);
  sub_317A0();
  __break(1u);
}

- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration
{
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  sub_24508(change, configurationCopy);
  swift_unknownObjectRelease();
}

- (_TtC19EngagementCollector9BaseDonor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isObservedBy:(id)by
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = BaseDonor.isObserved(by:)(by);
  swift_unknownObjectRelease();

  return v6 & 1;
}

@end