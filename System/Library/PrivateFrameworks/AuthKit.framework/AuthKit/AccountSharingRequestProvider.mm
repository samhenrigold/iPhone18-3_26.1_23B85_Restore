@interface AccountSharingRequestProvider
- (BOOL)validateResponseData:(id)data error:(id *)error;
- (_TtC3akd29AccountSharingRequestProvider)init;
- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context url:(id)url;
- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource;
- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource accountManager:(id)manager;
- (_TtC3akd29AccountSharingRequestProvider)initWithUrlBagKey:(id)key;
@end

@implementation AccountSharingRequestProvider

- (BOOL)validateResponseData:(id)data error:(id *)error
{
  if (data)
  {
    selfCopy = self;
    dataCopy = data;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  sub_1001ADD0C(v8, v10);

  sub_1001AE1E4(v8, v10);
  return 1;
}

- (_TtC3akd29AccountSharingRequestProvider)initWithUrlBagKey:(id)key
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AccountSharingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v5 initWithUrlBagKey:key];
}

- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccountSharingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v7 initWithContext:context urlBagKey:key];
}

- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AccountSharingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v9 initWithContext:context urlBagKey:key shouldCacheResource:resourceCopy];
}

- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource accountManager:(id)manager
{
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AccountSharingRequestProvider();
  return [(AKURLRequestProviderImpl *)&v11 initWithContext:context urlBagKey:key shouldCacheResource:resourceCopy accountManager:manager];
}

- (_TtC3akd29AccountSharingRequestProvider)initWithContext:(id)context url:(id)url
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = type metadata accessor for AccountSharingRequestProvider();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(AKURLRequestProviderImpl *)&v16 initWithContext:context url:v12];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
  return v14;
}

- (_TtC3akd29AccountSharingRequestProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccountSharingRequestProvider();
  return [(AccountSharingRequestProvider *)&v3 init];
}

@end