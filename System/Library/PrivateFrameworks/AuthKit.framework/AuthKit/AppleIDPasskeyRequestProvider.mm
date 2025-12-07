@interface AppleIDPasskeyRequestProvider
- (_TtC3akd29AppleIDPasskeyRequestProvider)init;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context url:(id)url;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource accountManager:(id)manager;
- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithUrlBagKey:(id)key;
@end

@implementation AppleIDPasskeyRequestProvider

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithUrlBagKey:(id)key
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AKURLRequestProviderImpl *)&v5 initWithUrlBagKey:key];
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AKURLRequestProviderImpl *)&v7 initWithContext:context urlBagKey:key];
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AKURLRequestProviderImpl *)&v9 initWithContext:context urlBagKey:key shouldCacheResource:resourceCopy];
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource accountManager:(id)manager
{
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AKURLRequestProviderImpl *)&v11 initWithContext:context urlBagKey:key shouldCacheResource:resourceCopy accountManager:manager];
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)initWithContext:(id)context url:(id)url
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = type metadata accessor for AppleIDPasskeyRequestProvider();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(AKURLRequestProviderImpl *)&v16 initWithContext:context url:v12];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
  return v14;
}

- (_TtC3akd29AppleIDPasskeyRequestProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleIDPasskeyRequestProvider();
  return [(AppleIDPasskeyRequestProvider *)&v3 init];
}

@end