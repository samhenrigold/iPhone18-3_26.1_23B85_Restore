@interface MSHistoryPlaceItem
+ (Class)managedClass;
+ (id)strippedMapItemWith:(id)with;
- (GEOMapItemStorage)mapItemStorage;
- (MSHistoryPlaceItem)initWithLatitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id;
- (MSHistoryPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryPlaceItem)initWithStore:(id)store latitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSUUID)supersededSearchId;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSupersededSearchId:(id)id;
@end

@implementation MSHistoryPlaceItem

- (MSHistoryPlaceItem)initWithLatitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  if (refreshed)
  {
    sub_1B63BE974();
    v18 = sub_1B63BE994();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = sub_1B63BE994();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  if (id)
  {
    sub_1B63BE9E4();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_1B63BEA04();
  (*(*(v21 - 8) + 56))(v14, v20, 1, v21);
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  muidCopy = muid;
  v25 = sub_1B62FFC80(latitude, longitude, v17, muid, v14);

  return v25;
}

- (MSHistoryPlaceItem)initWithStore:(id)store latitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - v18;
  if (refreshed)
  {
    sub_1B63BE974();
    v20 = sub_1B63BE994();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v21 = sub_1B63BE994();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  if (id)
  {
    sub_1B63BE9E4();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1B63BEA04();
  (*(*(v23 - 8) + 56))(v16, v22, 1, v23);
  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  muidCopy = muid;
  return HistoryPlaceItem.init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(storeCopy, latitude, longitude, v19, muid, v16);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62FF724(objectCopy, load);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v4 = sub_1B62FB2CC(selfCopy, v3);

  return v4;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B6300084(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v4 = sub_1B62FB768(selfCopy, v3);

  return v4;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B630025C(longitude);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B62FBD68(v5);

  v7 = sub_1B63BE994();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1B63BE954();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setMapItemLastRefreshed:(id)refreshed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (refreshed)
  {
    sub_1B63BE974();
    v8 = sub_1B63BE994();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B63BE994();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_1B62FC368(v7);
}

- (NSNumber)muid
{
  selfCopy = self;
  v4 = sub_1B62FCAFC(selfCopy, v3);

  return v4;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B6300468(muid);
}

- (NSUUID)supersededSearchId
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B62FD200(v5);

  v7 = sub_1B63BEA04();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1B63BE9C4();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setSupersededSearchId:(id)id
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (id)
  {
    sub_1B63BE9E4();
    v8 = sub_1B63BEA04();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B63BEA04();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_1B62FD800(v7);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v4 = sub_1B62FE0DC(selfCopy, v3);

  return v4;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62FE808(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (MSHistoryPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__latitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__longitude) = 0;
  v11 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  v12 = sub_1B63BE994();
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__muid) = 0;
  v13 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  v14 = sub_1B63BEA04();
  (*(*(v14 - 8) + 56))(self + v13, 1, 1, v14);
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage) = xmmword_1B63C3E40;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

+ (id)strippedMapItemWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  result = [v4 mapItemStorageForGEOMapItem:withCopy forUseType:4];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end