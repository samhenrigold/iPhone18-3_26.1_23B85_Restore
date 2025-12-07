@interface LegacyProfilesApplicator
+ (id)supportedConfigurationTypes;
- (_TtC24LegacyProfilesSubscriber24LegacyProfilesApplicator)init;
- (_TtC24LegacyProfilesSubscriber24LegacyProfilesApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates;
@end

@implementation LegacyProfilesApplicator

- (_TtC24LegacyProfilesSubscriber24LegacyProfilesApplicator)init
{
  ObjectType = swift_getObjectType();
  v6 = [objc_allocWithZone(type metadata accessor for LegacyProfilesAdapter(0 v4];
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(LegacyProfilesApplicator *)&v9 initWithAdapter:v6 inPlaceUpdates:1];

  [(LegacyProfilesApplicator *)v7 setRetryOnce:1];
  return v7;
}

- (_TtC24LegacyProfilesSubscriber24LegacyProfilesApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = [(LegacyProfilesApplicator *)&v8 initWithAdapter:adapter inPlaceUpdates:updatesCopy];
  [(LegacyProfilesApplicator *)v6 setRetryOnce:1, v8.receiver, v8.super_class];
  swift_unknownObjectRelease();
  return v6;
}

+ (id)supportedConfigurationTypes
{
  sub_1000012FC(&qword_100010928, &qword_1000093C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008FF0;
  registeredIdentifier = [objc_opt_self() registeredIdentifier];
  v4 = sub_10000863C();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_100008370(inited);
  swift_setDeallocating();
  sub_1000084D8(inited + 32);
  v7.super.isa = sub_1000086DC().super.isa;

  return v7.super.isa;
}

@end