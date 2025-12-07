@interface MSHistoryMultiPointRoute
+ (Class)managedClass;
- (BOOL)navigationInterrupted;
- (GEOStorageRouteRequestStorage)routeRequestStorage;
- (MSHistoryMultiPointRoute)initWithNavigationInterrupted:(BOOL)interrupted requiredCharge:(id)charge routeProgressWaypointIndex:(signed __int16)index routeRequestStorage:(id)storage sharedETAData:(id)data type:(signed __int16)type vehicleIdentifier:(id)identifier;
- (MSHistoryMultiPointRoute)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryMultiPointRoute)initWithStore:(id)store navigationInterrupted:(BOOL)interrupted requiredCharge:(id)charge routeProgressWaypointIndex:(signed __int16)index routeRequestStorage:(id)storage sharedETAData:(id)data type:(signed __int16)type vehicleIdentifier:(id)self0;
- (NSData)sharedETAData;
- (NSNumber)requiredCharge;
- (NSString)vehicleIdentifier;
- (void)setNavigationInterrupted:(BOOL)interrupted;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setRequiredCharge:(id)charge;
- (void)setRouteProgressWaypointIndex:(signed __int16)index;
- (void)setRouteRequestStorage:(id)storage;
- (void)setSharedETAData:(id)data;
- (void)setType:(signed __int16)type;
- (void)setVehicleIdentifier:(id)identifier;
@end

@implementation MSHistoryMultiPointRoute

- (MSHistoryMultiPointRoute)initWithNavigationInterrupted:(BOOL)interrupted requiredCharge:(id)charge routeProgressWaypointIndex:(signed __int16)index routeRequestStorage:(id)storage sharedETAData:(id)data type:(signed __int16)type vehicleIdentifier:(id)identifier
{
  dataCopy = data;
  if (!data)
  {
    chargeCopy = charge;
    storageCopy = storage;
    identifierCopy = identifier;
    v19 = 0xF000000000000000;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    v22 = 0;
    return HistoryMultiPointRoute.init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(interrupted, charge, index, storage, dataCopy, v19, type, v20, v22);
  }

  chargeCopy2 = charge;
  storageCopy2 = storage;
  identifierCopy2 = identifier;
  v17 = dataCopy;
  dataCopy = sub_1B63BE924();
  v19 = v18;

  if (!identifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_1B63BEBD4();
  v22 = v21;

  return HistoryMultiPointRoute.init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(interrupted, charge, index, storage, dataCopy, v19, type, v20, v22);
}

- (MSHistoryMultiPointRoute)initWithStore:(id)store navigationInterrupted:(BOOL)interrupted requiredCharge:(id)charge routeProgressWaypointIndex:(signed __int16)index routeRequestStorage:(id)storage sharedETAData:(id)data type:(signed __int16)type vehicleIdentifier:(id)self0
{
  dataCopy = data;
  if (!data)
  {
    storeCopy = store;
    chargeCopy = charge;
    storageCopy = storage;
    identifierCopy = identifier;
    v21 = 0xF000000000000000;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v24 = 0;
    return HistoryMultiPointRoute.init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(store, interrupted, charge, index, storage, dataCopy, v21, type, v22, v24);
  }

  storeCopy2 = store;
  chargeCopy2 = charge;
  storageCopy2 = storage;
  identifierCopy2 = identifier;
  v19 = dataCopy;
  dataCopy = sub_1B63BE924();
  v21 = v20;

  if (!identifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  return HistoryMultiPointRoute.init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(store, interrupted, charge, index, storage, dataCopy, v21, type, v22, v24);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62F9098(objectCopy, load);
}

- (BOOL)navigationInterrupted
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setNavigationInterrupted:(BOOL)interrupted
{
  selfCopy = self;
  sub_1B62F623C(interrupted);
}

- (NSNumber)requiredCharge
{
  selfCopy = self;
  v4 = sub_1B62F653C(selfCopy, v3);

  return v4;
}

- (void)setRequiredCharge:(id)charge
{
  chargeCopy = charge;
  selfCopy = self;
  sub_1B62F9340(charge);
}

- (void)setRouteProgressWaypointIndex:(signed __int16)index
{
  selfCopy = self;
  sub_1B62F6BC4(index);
}

- (GEOStorageRouteRequestStorage)routeRequestStorage
{
  selfCopy = self;
  v4 = sub_1B62F6E60(selfCopy, v3);

  return v4;
}

- (void)setRouteRequestStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62F73CC(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSData)sharedETAData
{
  selfCopy = self;
  v4 = sub_1B62F79F8(selfCopy, v3);
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

  sub_1B62F9574(dataCopy, v7);
  sub_1B6284F64(dataCopy, v7);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  sub_1B62F81F8(type);
}

- (NSString)vehicleIdentifier
{
  selfCopy = self;
  sub_1B62F8538(selfCopy, v3);
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

- (void)setVehicleIdentifier:(id)identifier
{
  if (identifier)
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
  sub_1B62F8944(v4, v6);
}

- (MSHistoryMultiPointRoute)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__type) = 0;
  v10 = (&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
  *v10 = 0;
  v10[1] = 0;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end