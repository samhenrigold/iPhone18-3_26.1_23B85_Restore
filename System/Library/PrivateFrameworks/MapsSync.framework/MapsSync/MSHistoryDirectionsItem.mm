@interface MSHistoryDirectionsItem
+ (Class)managedClass;
- (BOOL)navigationInterrupted;
- (GEOStorageRouteRequestStorage)routeRequestStorage;
- (MSHistoryDirectionsItem)initWithNavigationInterrupted:(BOOL)interrupted routeRequestStorage:(id)storage sharedETAData:(id)data;
- (MSHistoryDirectionsItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryDirectionsItem)initWithStore:(id)store navigationInterrupted:(BOOL)interrupted routeRequestStorage:(id)storage sharedETAData:(id)data;
- (NSData)sharedETAData;
- (void)setNavigationInterrupted:(BOOL)interrupted;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setRouteRequestStorage:(id)storage;
- (void)setSharedETAData:(id)data;
@end

@implementation MSHistoryDirectionsItem

- (MSHistoryDirectionsItem)initWithNavigationInterrupted:(BOOL)interrupted routeRequestStorage:(id)storage sharedETAData:(id)data
{
  dataCopy = data;
  interruptedCopy = interrupted;
  if (data)
  {
    storageCopy = storage;
    v10 = dataCopy;
    dataCopy = sub_1B63BE924();
    v12 = v11;
  }

  else
  {
    storageCopy2 = storage;
    v12 = 0xF000000000000000;
  }

  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB0F2A8;
  if (v12 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    sub_1B629119C(dataCopy, v12);
    v15 = sub_1B63BE904();
    sub_1B6284F64(dataCopy, v12);
  }

  v16 = [(MSHistoryDirectionsItem *)self initWithStore:v14 navigationInterrupted:interruptedCopy routeRequestStorage:storage sharedETAData:v15];
  sub_1B6284F64(dataCopy, v12);

  return v16;
}

- (MSHistoryDirectionsItem)initWithStore:(id)store navigationInterrupted:(BOOL)interrupted routeRequestStorage:(id)storage sharedETAData:(id)data
{
  dataCopy = data;
  if (data)
  {
    storeCopy = store;
    storageCopy = storage;
    v12 = dataCopy;
    dataCopy = sub_1B63BE924();
    v14 = v13;
  }

  else
  {
    storeCopy2 = store;
    storageCopy2 = storage;
    v14 = 0xF000000000000000;
  }

  return HistoryDirectionsItem.init(store:navigationInterrupted:routeRequestStorage:sharedETAData:)(store, interrupted, storage, dataCopy, v14);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62ED7B0(objectCopy, load);
}

- (BOOL)navigationInterrupted
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setNavigationInterrupted:(BOOL)interrupted
{
  selfCopy = self;
  sub_1B62EBF34(interrupted);
}

- (GEOStorageRouteRequestStorage)routeRequestStorage
{
  selfCopy = self;
  v4 = sub_1B62EC234(selfCopy, v3);

  return v4;
}

- (void)setRouteRequestStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62EC7A0(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSData)sharedETAData
{
  selfCopy = self;
  v4 = sub_1B62ECDCC(selfCopy, v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_1B63BE904();
    sub_1B6284F64(v4, v6);
    v7 = v8;
  }

  return v7;
}

- (void)setSharedETAData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62ED984(dataCopy, v7);
  sub_1B6284F64(dataCopy, v7);
}

- (MSHistoryDirectionsItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData) = xmmword_1B63C3E40;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end