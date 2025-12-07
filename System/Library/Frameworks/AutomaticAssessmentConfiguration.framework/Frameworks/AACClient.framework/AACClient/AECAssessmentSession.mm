@interface AECAssessmentSession
+ (BOOL)supportsMultiAppConfiguration;
- (_TtC9AACClient26AECAssessmentConfiguration)configuration;
- (_TtP9AACClient28AECAssessmentSessionDelegate_)delegate;
- (void)setConfiguration:(id)configuration;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation AECAssessmentSession

+ (BOOL)supportsMultiAppConfiguration
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE4720]) init];
  makePrimitives = [v2 makePrimitives];

  [makePrimitives deviceType];
  swift_unknownObjectRelease();

  return AEIsMultiAppAvailableForDeviceType();
}

- (_TtC9AACClient26AECAssessmentConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = configuration;
  configurationCopy = configuration;
}

- (_TtP9AACClient28AECAssessmentSessionDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)updateWithConfiguration:(id)configuration
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = configuration;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = configuration;
  configurationCopy = configuration;
  selfCopy = self;
  sub_236E0BF88(sub_236E11034, v6, sub_236E11088, v8);
}

@end