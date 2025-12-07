@interface PasscodeSettingsApplicator
+ (id)supportedConfigurationTypes;
- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)init;
- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates;
@end

@implementation PasscodeSettingsApplicator

- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)init
{
  v4 = [objc_allocWithZone(type metadata accessor for PasscodeSettingsAdapter(0 a2];
  v9.receiver = self;
  v9.super_class = type metadata accessor for PasscodeSettingsApplicator(v4, v5, v6);
  v7 = [(PasscodeSettingsApplicator *)&v9 initWithAdapter:v4 inPlaceUpdates:1];

  return v7;
}

+ (id)supportedConfigurationTypes
{
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000B5C0;
  registeredIdentifier = [objc_opt_self() registeredIdentifier];
  v4 = sub_10000AA8C();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_100009A7C(inited);
  swift_setDeallocating();
  sub_100007AF0(inited + 32);
  v7.super.isa = sub_10000AB6C().super.isa;

  return v7.super.isa;
}

- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end