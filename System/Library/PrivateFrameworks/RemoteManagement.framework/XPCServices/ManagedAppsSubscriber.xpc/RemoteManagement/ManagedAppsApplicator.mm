@interface ManagedAppsApplicator
+ (id)supportedConfigurationTypes;
- (_TtC21ManagedAppsSubscriber21ManagedAppsApplicator)init;
- (_TtC21ManagedAppsSubscriber21ManagedAppsApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates;
@end

@implementation ManagedAppsApplicator

- (_TtC21ManagedAppsSubscriber21ManagedAppsApplicator)init
{
  v4 = [objc_allocWithZone(type metadata accessor for ManagedAppsAdapter(0 a2];
  v9.receiver = self;
  v9.super_class = type metadata accessor for ManagedAppsApplicator(v4, v5, v6);
  v7 = [(ManagedAppsApplicator *)&v9 initWithAdapter:v4 inPlaceUpdates:1];

  [(ManagedAppsApplicator *)v7 setRemoveBeforeApply:1];
  return v7;
}

+ (id)supportedConfigurationTypes
{
  sub_100001658(&qword_100020CD8, &unk_100017E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017AC0;
  registeredIdentifier = [objc_opt_self() registeredIdentifier];
  v4 = sub_100016E20();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_10000F290(inited);
  swift_setDeallocating();
  sub_10000F3F8(inited + 32);
  v7.super.isa = sub_100016FB0().super.isa;

  return v7.super.isa;
}

- (_TtC21ManagedAppsSubscriber21ManagedAppsApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end