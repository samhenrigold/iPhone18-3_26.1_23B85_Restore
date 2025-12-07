@interface MSVisitedLocation
+ (Class)managedClass;
+ (NSString)key;
+ (id)optionsWith:(id)with;
- (BOOL)hidden;
- (GEOMapItemStorage)mapItemStorage;
- (MSVisitedLocation)initWithEnclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemCity:(id)self0 mapItemIdentifier:(id)self1 mapItemLastRefreshed:(id)self2 mapItemName:(id)self3 mapItemStorage:(id)self4 mapItemTopLevelCategory:(int)self5 muid:(id)self6;
- (MSVisitedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSVisitedLocation)initWithStore:(id)store enclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemCity:(id)self1 mapItemIdentifier:(id)self2 mapItemLastRefreshed:(id)self3 mapItemName:(id)self4 mapItemStorage:(id)self5 mapItemTopLevelCategory:(int)self6 muid:(id)self7;
- (NSNumber)enclosingRegionMuid;
- (NSNumber)enclosingRegionProvider;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (id)fetchVisits;
- (int)mapItemTopLevelCategory;
- (void)addVisit:(id)visit;
- (void)flushChanges;
- (void)noteWithCompletionHandler:(id)handler;
- (void)removeVisit:(id)visit;
- (void)setEnclosingRegionMuid:(id)muid;
- (void)setEnclosingRegionProvider:(id)provider;
- (void)setHidden:(BOOL)hidden;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMapItemTopLevelCategory:(int)category;
- (void)setMuid:(id)muid;
- (void)setNote:(NSString *)note completionHandler:(id)handler;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSVisitedLocation

- (MSVisitedLocation)initWithEnclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemCity:(id)self0 mapItemIdentifier:(id)self1 mapItemLastRefreshed:(id)self2 mapItemName:(id)self3 mapItemStorage:(id)self4 mapItemTopLevelCategory:(int)self5 muid:(id)self6
{
  longitudeCopy = longitude;
  hiddenCopy = hidden;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v49 - v21;
  if (address)
  {
    v23 = sub_1B63BEBD4();
    v57 = v24;
    v58 = v23;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  nameCopy = name;
  if (category)
  {
    v25 = sub_1B63BEBD4();
    v55 = v26;
    v56 = v25;
    if (city)
    {
LABEL_6:
      v53 = sub_1B63BEBD4();
      v49 = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    if (city)
    {
      goto LABEL_6;
    }
  }

  v53 = 0;
  v49 = 0;
LABEL_9:
  muidCopy = muid;
  providerCopy = provider;
  latitudeCopy = latitude;
  longitudeCopy = longitudeCopy;
  identifierCopy = identifier;
  refreshedCopy = refreshed;
  v30 = nameCopy;
  storageCopy = storage;
  v32 = a16;
  if (identifierCopy)
  {
    v33 = sub_1B63BEBD4();
    v35 = v34;

    if (refreshedCopy)
    {
LABEL_11:
      sub_1B63BE974();

      v36 = sub_1B63BE994();
      (*(*(v36 - 8) + 56))(v22, 0, 1, v36);
      goto LABEL_14;
    }
  }

  else
  {
    v33 = 0;
    v35 = 0;
    if (refreshedCopy)
    {
      goto LABEL_11;
    }
  }

  v37 = sub_1B63BE994();
  (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
LABEL_14:
  if (v30)
  {
    v38 = sub_1B63BEBD4();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v48 = v22;
  v47 = v33;
  v41 = muidCopy;
  v43 = latitudeCopy;
  v42 = providerCopy;
  v44 = longitudeCopy;
  v45 = sub_1B6347EF8(muidCopy, providerCopy, hiddenCopy, latitudeCopy, longitudeCopy, v58, v57, v56, v55, v53, v49, v47, v35, v48, v38, v40, storageCopy, levelCategory, v32);

  return v45;
}

- (MSVisitedLocation)initWithStore:(id)store enclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemCity:(id)self1 mapItemIdentifier:(id)self2 mapItemLastRefreshed:(id)self3 mapItemName:(id)self4 mapItemStorage:(id)self5 mapItemTopLevelCategory:(int)self6 muid:(id)self7
{
  longitudeCopy = longitude;
  latitudeCopy = latitude;
  hiddenCopy = hidden;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v43 - v21;
  if (address)
  {
    v23 = sub_1B63BEBD4();
    v54 = v24;
    v55 = v23;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v44 = a17;
  if (category)
  {
    v25 = sub_1B63BEBD4();
    v52 = v26;
    v53 = v25;
    if (city)
    {
LABEL_6:
      v27 = sub_1B63BEBD4();
      v50 = v28;
      v51 = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v52 = 0;
    v53 = 0;
    if (city)
    {
      goto LABEL_6;
    }
  }

  v50 = 0;
  v51 = 0;
LABEL_9:
  storeCopy = store;
  muidCopy = muid;
  providerCopy = provider;
  latitudeCopy = latitudeCopy;
  longitudeCopy = longitudeCopy;
  identifierCopy = identifier;
  refreshedCopy = refreshed;
  nameCopy = name;
  storageCopy = storage;
  v33 = v44;
  if (identifierCopy)
  {
    v34 = sub_1B63BEBD4();
    v36 = v35;

    if (refreshedCopy)
    {
LABEL_11:
      sub_1B63BE974();

      v37 = sub_1B63BE994();
      (*(*(v37 - 8) + 56))(v22, 0, 1, v37);
      goto LABEL_14;
    }
  }

  else
  {
    v34 = 0;
    v36 = 0;
    if (refreshedCopy)
    {
      goto LABEL_11;
    }
  }

  v38 = sub_1B63BE994();
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
LABEL_14:
  if (nameCopy)
  {
    v39 = sub_1B63BEBD4();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  return VisitedLocation.init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(storeCopy, muidCopy, providerCopy, hiddenCopy, latitudeCopy, longitudeCopy, v55, v54, v53, v52, v51, v50, v34, v36, v22, v39, v41, storageCopy, levelCategory, v33);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedVisitedLocation();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  selfCopy = self;
  sub_1B633F278(objectCopy, loadCopy, parentCopy);
}

- (NSNumber)enclosingRegionMuid
{
  selfCopy = self;
  v4 = sub_1B633FF80(selfCopy, v3);

  return v4;
}

- (void)setEnclosingRegionMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B6348318(muid);
}

- (NSNumber)enclosingRegionProvider
{
  selfCopy = self;
  v4 = sub_1B634041C(selfCopy, v3);

  return v4;
}

- (void)setEnclosingRegionProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_1B6348500(provider);
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisitedLocation__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1B6340990(hidden);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v4 = sub_1B6341190(selfCopy, v3);

  return v4;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B6348718(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v4 = sub_1B634162C(selfCopy, v3);

  return v4;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B6348900(longitude);
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
  sub_1B6343A64(v7);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v4 = sub_1B6344B7C(selfCopy, v3);

  return v4;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B634520C(*(&self->super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.isa + v5) unlock];
}

- (int)mapItemTopLevelCategory
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setMapItemTopLevelCategory:(int)category
{
  selfCopy = self;
  sub_1B6346194(category);
}

- (NSNumber)muid
{
  selfCopy = self;
  v4 = sub_1B6346494(selfCopy, v3);

  return v4;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B6348D2C(muid);
}

- (id)fetchVisits
{
  selfCopy = self;
  sub_1B6346AF0();

  type metadata accessor for Visit(0);
  v3 = sub_1B63BEC94();

  return v3;
}

- (void)addVisit:(id)visit
{
  visitCopy = visit;
  selfCopy = self;
  sub_1B6346C30(visitCopy);
}

- (void)removeVisit:(id)visit
{
  visitCopy = visit;
  selfCopy = self;
  sub_1B6346E80(visitCopy);
}

- (MSVisitedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B63471D0(object, store, loadCopy, parentCopy);
}

+ (NSString)key
{
  v2 = sub_1B63BEBC4();

  return v2;
}

- (void)noteWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B63BED34();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B63C5130;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C5138;
  v12[5] = v11;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v7, &unk_1B63C5140, v12);
}

- (void)setNote:(NSString *)note completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = note;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C5110;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C5510;
  v14[5] = v13;
  noteCopy = note;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C5120, v14);
}

+ (id)optionsWith:(id)with
{
  withCopy = with;
  v5 = sub_1B628E52C(0xD000000000000011, 0x80000001B63CAA90, MEMORY[0x1E69E7CC0]);
  v6 = sub_1B628EC4C(with, v5, 0);

  return v6;
}

@end