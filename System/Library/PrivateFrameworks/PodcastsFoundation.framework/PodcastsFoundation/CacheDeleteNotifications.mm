@interface CacheDeleteNotifications
- (_TtC18PodcastsFoundation24CacheDeleteNotifications)init;
- (void)cacheDeleteObserver:(id)observer didIdentifyCacheDeletedPath:(id)path deletedAtDate:(id)date;
- (void)cacheDeleteObserverBecameSynchronizedWithFileSystem:(id)system;
@end

@implementation CacheDeleteNotifications

- (void)cacheDeleteObserver:(id)observer didIdentifyCacheDeletedPath:(id)path deletedAtDate:(id)date
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1D917820C();
  v13 = v12;
  if (date)
  {
    sub_1D9176DFC();
    v14 = sub_1D9176E3C();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = sub_1D9176E3C();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  observerCopy = observer;
  selfCopy = self;
  sub_1D8E61CE8(v11, v13, v10);

  sub_1D8D08A50(v10, &qword_1ECAB75C0, &unk_1D9188A50);
}

- (void)cacheDeleteObserverBecameSynchronizedWithFileSystem:(id)system
{
  v4 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA0, &qword_1D918C568);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  sub_1D91788AC();

  (*(v8 + 8))(v10, v7);
}

- (_TtC18PodcastsFoundation24CacheDeleteNotifications)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end