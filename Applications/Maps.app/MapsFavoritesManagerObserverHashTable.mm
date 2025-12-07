@interface MapsFavoritesManagerObserverHashTable
- (_TtC4Maps37MapsFavoritesManagerObserverHashTable)initWithProtocol:(id)protocol queue:(id)queue;
- (void)registerObserver:(id)observer queue:(id)queue;
@end

@implementation MapsFavoritesManagerObserverHashTable

- (void)registerObserver:(id)observer queue:(id)queue
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  queueCopy = queue;
  v7 = v10.receiver;
  [(MapsFavoritesManagerObserverHashTable *)&v10 registerObserver:observer queue:queueCopy];
  v8 = *&v7[OBJC_IVAR____TtC4Maps37MapsFavoritesManagerObserverHashTable_onRegisterObserver];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC4Maps37MapsFavoritesManagerObserverHashTable_onRegisterObserver + 8];

    v8(observer);
    swift_unknownObjectRelease();

    sub_1000588AC(v8, v9);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (_TtC4Maps37MapsFavoritesManagerObserverHashTable)initWithProtocol:(id)protocol queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end