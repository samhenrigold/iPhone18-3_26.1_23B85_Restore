@interface XPCGuidanceContainer
- (_TtC17EnergyKitInternal20XPCGuidanceContainer)init;
- (_TtC17EnergyKitInternal20XPCGuidanceContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCGuidanceContainer

- (_TtC17EnergyKitInternal20XPCGuidanceContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer, &protocol conformance descriptor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance, &protocol conformance descriptor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance, "q\b/tԐ");
  coderCopy = coder;
  v5 = sub_20DF47B24();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer, &protocol conformance descriptor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance, &protocol conformance descriptor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance, "q\b/tԐ");
  coderCopy = coder;
  selfCopy = self;
  sub_20DF47B34();
}

- (_TtC17EnergyKitInternal20XPCGuidanceContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end