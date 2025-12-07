@interface InteractiveLegacyProfilesApplicator
+ (id)supportedConfigurationTypes;
- (_TtC35InteractiveLegacyProfilesSubscriber35InteractiveLegacyProfilesApplicator)init;
- (_TtC35InteractiveLegacyProfilesSubscriber35InteractiveLegacyProfilesApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates;
@end

@implementation InteractiveLegacyProfilesApplicator

- (_TtC35InteractiveLegacyProfilesSubscriber35InteractiveLegacyProfilesApplicator)init
{
  ObjectType = swift_getObjectType();
  v6 = [objc_allocWithZone(type metadata accessor for InteractiveLegacyProfilesAdapter(0 v4];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(InteractiveLegacyProfilesApplicator *)&v9 initWithAdapter:v6 inPlaceUpdates:1];

  return v7;
}

- (_TtC35InteractiveLegacyProfilesSubscriber35InteractiveLegacyProfilesApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(InteractiveLegacyProfilesApplicator *)&v7 initWithAdapter:adapter inPlaceUpdates:updatesCopy];
}

+ (id)supportedConfigurationTypes
{
  sub_1000012FC(&qword_100010928, &qword_100009218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008E20;
  registeredIdentifier = [objc_opt_self() registeredIdentifier];
  v4 = sub_10000843C();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_100008170(inited);
  swift_setDeallocating();
  sub_1000082D8(inited + 32);
  v7.super.isa = sub_1000084DC().super.isa;

  return v7.super.isa;
}

@end