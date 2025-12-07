@interface SecurityApplicator
+ (id)supportedConfigurationTypes;
- (_TtC18SecuritySubscriber18SecurityApplicator)init;
- (_TtC18SecuritySubscriber18SecurityApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates;
@end

@implementation SecurityApplicator

- (_TtC18SecuritySubscriber18SecurityApplicator)init
{
  v4 = [objc_allocWithZone(type metadata accessor for SecurityAdapter(0 a2];
  v9.receiver = self;
  v9.super_class = type metadata accessor for SecurityApplicator(v4, v5, v6);
  v7 = [(SecurityApplicator *)&v9 initWithAdapter:v4 inPlaceUpdates:1];

  return v7;
}

+ (id)supportedConfigurationTypes
{
  sub_100009F44();
  v2.super.isa = sub_10000E738().super.isa;

  return v2.super.isa;
}

- (_TtC18SecuritySubscriber18SecurityApplicator)initWithAdapter:(id)adapter inPlaceUpdates:(BOOL)updates
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end