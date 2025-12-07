@interface DIPURLCache
- (_TtC8coreidvd11DIPURLCache)init;
- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l;
- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path;
- (id)cachedResponseForRequest:(id)request;
- (void)storeCachedResponse:(id)response forDataTask:(id)task;
- (void)storeCachedResponse:(id)response forRequest:(id)request;
@end

@implementation DIPURLCache

- (id)cachedResponseForRequest:(id)request
{
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_1005FEBE8(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (void)storeCachedResponse:(id)response forDataTask:(id)task
{
  ObjectType = swift_getObjectType();
  responseCopy = response;
  taskCopy = task;
  selfCopy = self;
  v10 = sub_100600EC4(responseCopy, 0, 1);
  if (v10)
  {
    v11 = v10;
    v13.receiver = selfCopy;
    v13.super_class = ObjectType;
    [(DIPURLCache *)&v13 storeCachedResponse:v10 forDataTask:taskCopy];
  }

  else
  {
  }
}

- (void)storeCachedResponse:(id)response forRequest:(id)request
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  responseCopy = response;
  selfCopy = self;
  v13 = sub_100600EC4(responseCopy, 0, 1);
  if (v13)
  {
    v14 = v13;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v16.receiver = selfCopy;
    v16.super_class = ObjectType;
    [(DIPURLCache *)&v16 storeCachedResponse:v14 forRequest:isa];

    responseCopy = v14;
    selfCopy = isa;
  }

  (*(v8 + 8))(v10, v7);
}

- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8coreidvd11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l
{
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    v11 = 0;
    v10 = (*(v9 - 8) + 56);
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = (*(v9 - 8) + 56);
    v11 = 1;
  }

  (*v10)(v8, v11, 1, v9);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8coreidvd11DIPURLCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end