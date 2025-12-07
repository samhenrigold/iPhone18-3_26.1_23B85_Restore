@interface AKApplicationMetadataRequestProvider
- (AKApplicationMetadataRequestProvider)init;
- (AKApplicationMetadataRequestProvider)initWithContext:(id)context url:(id)url;
- (AKApplicationMetadataRequestProvider)initWithContext:(id)context urlBagKey:(id)key;
- (AKApplicationMetadataRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource;
- (AKApplicationMetadataRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource accountManager:(id)manager;
- (AKApplicationMetadataRequestProvider)initWithUrlBagKey:(id)key;
- (BOOL)signRequest:(id)request error:(id *)error;
- (BOOL)validateResponseData:(id)data error:(id *)error;
@end

@implementation AKApplicationMetadataRequestProvider

- (BOOL)signRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;
  sub_100200B74(requestCopy);

  return 1;
}

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

  sub_100200D44(v8, v10);

  sub_1001AE1E4(v8, v10);
  return 1;
}

- (AKApplicationMetadataRequestProvider)initWithUrlBagKey:(id)key
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v6 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(AKURLRequestProviderImpl *)&v8 initWithUrlBagKey:key];
}

- (AKApplicationMetadataRequestProvider)initWithContext:(id)context urlBagKey:(id)key
{
  v7 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v8 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(AKURLRequestProviderImpl *)&v10 initWithContext:context urlBagKey:key];
}

- (AKApplicationMetadataRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource
{
  resourceCopy = resource;
  v9 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v10 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = v10;
  return [(AKURLRequestProviderImpl *)&v12 initWithContext:context urlBagKey:key shouldCacheResource:resourceCopy];
}

- (AKApplicationMetadataRequestProvider)initWithContext:(id)context urlBagKey:(id)key shouldCacheResource:(BOOL)resource accountManager:(id)manager
{
  resourceCopy = resource;
  v11 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v12 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v11 = 0;
  v11[1] = 0;
  v14.receiver = self;
  v14.super_class = v12;
  return [(AKURLRequestProviderImpl *)&v14 initWithContext:context urlBagKey:key shouldCacheResource:resourceCopy accountManager:manager];
}

- (AKApplicationMetadataRequestProvider)initWithContext:(id)context url:(id)url
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectRetain();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = type metadata accessor for ApplicationMetadataRequestProvider();
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(AKURLRequestProviderImpl *)&v17 initWithContext:context url:v13];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
  return v15;
}

- (AKApplicationMetadataRequestProvider)init
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID);
  v4 = type metadata accessor for ApplicationMetadataRequestProvider();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(AKApplicationMetadataRequestProvider *)&v6 init];
}

@end