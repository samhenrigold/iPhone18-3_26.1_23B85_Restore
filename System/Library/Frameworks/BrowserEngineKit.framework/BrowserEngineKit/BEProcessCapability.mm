@interface BEProcessCapability
+ (id)mediaPlaybackAndCaptureWithEnvironment:(id)environment;
- (BEProcessCapability)init;
- (id)requestWithError:(id *)error;
@end

@implementation BEProcessCapability

+ (id)mediaPlaybackAndCaptureWithEnvironment:(id)environment
{
  v4 = type metadata accessor for ProcessCapability(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D503500(environment + OBJC_IVAR___BEMediaEnvironment_inner, v6, type metadata accessor for MediaEnvironment);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for BEProcessCapability(0);
  v8 = objc_allocWithZone(v7);
  sub_19D503500(v6, v8 + OBJC_IVAR___BEProcessCapability_inner, type metadata accessor for ProcessCapability);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_19D5041C0(v6, type metadata accessor for ProcessCapability);

  return v9;
}

- (id)requestWithError:(id *)error
{
  v8[3] = &type metadata for Process;
  v8[4] = &off_1F10D2E00;
  selfCopy = self;
  sub_19D503A64(v8, 0, 0, v9);

  __swift_destroy_boxed_opaque_existential_0(v8);
  v4 = v9[0];
  v5 = v9[1];
  type metadata accessor for _BEProcessCapabilityGrant();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;

  return v6;
}

- (BEProcessCapability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end