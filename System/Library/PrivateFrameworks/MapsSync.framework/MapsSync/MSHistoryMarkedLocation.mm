@interface MSHistoryMarkedLocation
+ (Class)managedClass;
- (GEOMapItemStorage)mapItemStorage;
- (MSHistoryMarkedLocation)initWithCustomName:(id)name floorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid;
- (MSHistoryMarkedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryMarkedLocation)initWithStore:(id)store customName:(id)name floorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSString)customName;
- (int)floorOrdinal;
- (void)setCustomName:(id)name;
- (void)setFloorOrdinal:(int)ordinal;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSHistoryMarkedLocation

- (MSHistoryMarkedLocation)initWithCustomName:(id)name floorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid
{
  v12 = *&ordinal;
  if (name)
  {
    sub_1B63BEBD4();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = qword_1EDB0F2A0;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  storageCopy = storage;
  muidCopy = muid;
  if (v16 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDB0F2A8;
  if (v15)
  {
    v22 = sub_1B63BEBC4();
  }

  else
  {
    v22 = 0;
  }

  v23 = [(MSHistoryMarkedLocation *)self initWithStore:v21 customName:v22 floorOrdinal:v12 latitude:latitudeCopy longitude:longitudeCopy mapItemStorage:storageCopy muid:muidCopy];

  return v23;
}

- (MSHistoryMarkedLocation)initWithStore:(id)store customName:(id)name floorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid
{
  if (name)
  {
    v14 = sub_1B63BEBD4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  storageCopy = storage;
  muidCopy = muid;
  return HistoryMarkedLocation.init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(storeCopy, v14, v16, ordinal, latitude, longitude, storage, muid);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62F45C0(objectCopy, load);
}

- (NSString)customName
{
  selfCopy = self;
  sub_1B62F1900(selfCopy, v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_1B63BEBC4();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCustomName:(id)name
{
  if (name)
  {
    v4 = sub_1B63BEBD4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B62F1D0C(v4, v6);
}

- (int)floorOrdinal
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setFloorOrdinal:(int)ordinal
{
  selfCopy = self;
  sub_1B62F2278(ordinal);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v4 = sub_1B62F2568(selfCopy, v3);

  return v4;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62F4858(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v4 = sub_1B62F2A04(selfCopy, v3);

  return v4;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62F4A30(longitude);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v4 = sub_1B62F2F20(selfCopy, v3);

  return v4;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62F35B0(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSNumber)muid
{
  selfCopy = self;
  v4 = sub_1B62F3CD0(selfCopy, v3);

  return v4;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62F4C14(muid);
}

- (MSHistoryMarkedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  v10 = (&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__muid) = 0;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end