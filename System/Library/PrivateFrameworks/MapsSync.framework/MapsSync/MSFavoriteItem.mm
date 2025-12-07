@interface MSFavoriteItem
+ (Class)managedClass;
+ (id)findDuplicatesWithContext:(id)context;
+ (id)mergeWithDuplicates:(id)duplicates;
+ (id)optionsWith:(id)with;
+ (id)strippedMapItemWith:(id)with;
- (BOOL)hidden;
- (GEOMapItemStorage)mapItemStorage;
- (MSFavoriteItem)initWithCustomName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)refreshed mapItemName:(id)self0 muid:(id)self1 originatingAddressString:(id)self2 positionIndex:(int64_t)self3 shortcutIdentifier:(id)self4 source:(signed __int16)self5 type:(signed __int16)self6 version:(signed __int16)self7;
- (MSFavoriteItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSFavoriteItem)initWithStore:(id)store customName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 originatingAddressString:(id)self3 positionIndex:(int64_t)self4 shortcutIdentifier:(id)self5 source:(signed __int16)self6 type:(signed __int16)self7 version:(signed __int16)self8;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (id)fetchContactHandles;
- (int64_t)positionIndex;
- (signed)favoriteType;
- (signed)sourceType;
- (void)flushChanges;
- (void)onFirstSaveWithObject:(id)object context:(id)context;
- (void)placeItemNoteWithCompletionHandler:(id)handler;
- (void)setFavoriteType:(signed __int16)type;
- (void)setHidden:(BOOL)hidden;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPlaceItemNote:(NSString *)note completionHandler:(id)handler;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSource:(signed __int16)source;
- (void)setSourceType:(signed __int16)type;
- (void)setType:(signed __int16)type;
- (void)setVersion:(signed __int16)version;
@end

@implementation MSFavoriteItem

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSFavoriteItem__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (id)fetchContactHandles
{
  selfCopy = self;
  sub_1B6293444();

  v3 = sub_1B63BEC94();

  return v3;
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v4 = sub_1B6296250(selfCopy, v3);

  return v4;
}

- (MSFavoriteItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6292DB0(object, store, loadCopy, parentCopy);
}

- (void)setSourceType:(signed __int16)type
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC10sourceTypeAA0cd6SourceF0Ovs_0(type);
}

- (signed)favoriteType
{
  selfCopy = self;
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy2 = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + v3);
  LOWORD(selfCopy) = *(&selfCopy2->super.super.isa + OBJC_IVAR___MSFavoriteItem__type);
  [v6 unlock];

  v7 = sub_1B6296B88(selfCopy);
  if ((v7 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (MSFavoriteItem)initWithCustomName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)refreshed mapItemName:(id)self0 muid:(id)self1 originatingAddressString:(id)self2 positionIndex:(int64_t)self3 shortcutIdentifier:(id)self4 source:(signed __int16)self5 type:(signed __int16)self6 version:(signed __int16)self7
{
  hiddenCopy = hidden;
  selfCopy = self;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v55 - v23;
  if (name)
  {
    v25 = sub_1B63BEBD4();
    v66 = v26;
    v67 = v25;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  if (address)
  {
    v27 = sub_1B63BEBD4();
    v64 = v28;
    v65 = v27;
    if (category)
    {
LABEL_6:
      v63 = sub_1B63BEBD4();
      v61 = v29;
      goto LABEL_9;
    }
  }

  else
  {
    v64 = 0;
    v65 = 0;
    if (category)
    {
      goto LABEL_6;
    }
  }

  v63 = 0;
  v61 = 0;
LABEL_9:
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  refreshedCopy = refreshed;
  itemNameCopy = itemName;
  muidCopy = muid;
  stringCopy = string;
  identifierCopy = identifier;
  if (refreshedCopy)
  {
    sub_1B63BE974();

    v33 = sub_1B63BE994();
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
  }

  else
  {
    v34 = sub_1B63BE994();
    (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  }

  if (itemNameCopy)
  {
    v35 = sub_1B63BEBD4();
    v37 = v36;

    v57 = v24;
    if (stringCopy)
    {
LABEL_14:
      v38 = sub_1B63BEBD4();
      v40 = v39;

      goto LABEL_17;
    }
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v57 = v24;
    if (stringCopy)
    {
      goto LABEL_14;
    }
  }

  v38 = 0;
  v40 = 0;
LABEL_17:
  sourceCopy2 = source;
  if (identifierCopy)
  {
    v56 = v40;
    v42 = v38;
    v43 = v37;
    v44 = v35;
    v45 = identifierCopy;
    v46 = sub_1B63BEBD4();
    v48 = v47;

    sourceCopy2 = source;
    v35 = v44;
    v37 = v43;
    v38 = v42;
    v40 = v56;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  HIWORD(v54) = type;
  LOWORD(v54) = sourceCopy2;
  v49 = muidCopy;
  v50 = latitudeCopy;
  v51 = longitudeCopy;
  v52 = sub_1B62E88B0(v67, v66, hiddenCopy, latitudeCopy, longitudeCopy, v65, v64, v63, v61, v57, v35, v37, muidCopy, v38, v40, index, v46, v48, v54, version);

  return v52;
}

- (MSFavoriteItem)initWithStore:(id)store customName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 originatingAddressString:(id)self3 positionIndex:(int64_t)self4 shortcutIdentifier:(id)self5 source:(signed __int16)self6 type:(signed __int16)self7 version:(signed __int16)self8
{
  longitudeCopy = longitude;
  hiddenCopy = hidden;
  selfCopy = self;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v50 - v23;
  if (name)
  {
    v25 = sub_1B63BEBD4();
    v61 = v26;
    v62 = v25;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  if (address)
  {
    v27 = sub_1B63BEBD4();
    v59 = v28;
    v60 = v27;
    if (category)
    {
LABEL_6:
      v29 = sub_1B63BEBD4();
      v57 = v30;
      v58 = v29;
      goto LABEL_9;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
    if (category)
    {
      goto LABEL_6;
    }
  }

  v57 = 0;
  v58 = 0;
LABEL_9:
  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitudeCopy;
  refreshedCopy = refreshed;
  itemNameCopy = itemName;
  muidCopy = muid;
  stringCopy = string;
  identifierCopy = identifier;
  if (refreshedCopy)
  {
    sub_1B63BE974();

    v34 = sub_1B63BE994();
    (*(*(v34 - 8) + 56))(v24, 0, 1, v34);
  }

  else
  {
    v35 = sub_1B63BE994();
    (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  }

  if (itemNameCopy)
  {
    v36 = sub_1B63BEBD4();
    v38 = v37;

    v51 = v24;
    if (stringCopy)
    {
LABEL_14:
      v39 = sub_1B63BEBD4();
      v41 = v40;

      goto LABEL_17;
    }
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v51 = v24;
    if (stringCopy)
    {
      goto LABEL_14;
    }
  }

  v39 = 0;
  v41 = 0;
LABEL_17:
  sourceCopy2 = source;
  if (identifierCopy)
  {
    v50 = v39;
    v43 = v38;
    v44 = v36;
    v45 = identifierCopy;
    v46 = sub_1B63BEBD4();
    v48 = v47;

    sourceCopy2 = source;
    v36 = v44;
    v38 = v43;
    v39 = v50;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  return FavoriteItem.init(store:customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(storeCopy, v62, v61, hiddenCopy, latitudeCopy, longitudeCopy, v60, v59, v58, v57, v51, v36, v38, muidCopy, v39, v41, index, v46, v48, sourceCopy2, type, version);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  selfCopy = self;

  v6 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  *(&selfCopy->super.super.isa + v6) = v4;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedFavoriteItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6293904(objectCopy, load);
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1B62E2D38(hidden);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v4 = sub_1B62A00E0(selfCopy, v3);

  return v4;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62E8D90(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v4 = sub_1B62A0488(selfCopy, v3);

  return v4;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62E8F78(longitude);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B62E405C(v5);

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
  sub_1B62E465C(v7);
}

- (NSNumber)muid
{
  selfCopy = self;
  v4 = sub_1B62E5504(selfCopy, v3);

  return v4;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62E92DC(muid);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSFavoriteItem__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62E5EBC(index);
}

- (void)setSource:(signed __int16)source
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC10sourceTypeAA0cd6SourceF0Ovs_0(source);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC12favoriteTypeAA0cdF0Ovs_0(type);
}

- (void)setVersion:(signed __int16)version
{
  selfCopy = self;
  sub_1B62E664C(version);
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62E6B74(*(&self->super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.isa + v5) unlock];
}

- (void)setFavoriteType:(signed __int16)type
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC12favoriteTypeAA0cdF0Ovs_0(type);
}

- (signed)sourceType
{
  selfCopy = self;
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy2 = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + v3);
  LOWORD(selfCopy) = *(&selfCopy2->super.super.isa + OBJC_IVAR___MSFavoriteItem__source);
  [v6 unlock];

  v7 = sub_1B634BAA0(selfCopy);
  if ((v7 & 0x10000) != 0)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (void)onFirstSaveWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  selfCopy = self;
  sub_1B63B7B48(objectCopy, contextCopy);
}

+ (id)optionsWith:(id)with
{
  withCopy = with;
  v5 = sub_1B6292014(with);

  return v5;
}

+ (id)strippedMapItemWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  result = [v4 mapItemStorageForGEOMapItem:withCopy forUseType:5];
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

+ (id)mergeWithDuplicates:(id)duplicates
{
  sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = sub_1B63BECA4();
  v4 = sub_1B63BD3E4(v3);

  return v4;
}

+ (id)findDuplicatesWithContext:(id)context
{
  swift_getObjCClassMetadata();
  contextCopy = context;
  sub_1B63B83B0(contextCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
  v5 = sub_1B63BEC94();

  return v5;
}

- (void)placeItemNoteWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1B63C7740;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C6420;
  v12[5] = v11;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v7, &unk_1B63C6428, v12);
}

- (void)setPlaceItemNote:(NSString *)note completionHandler:(id)handler
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
  v13[4] = &unk_1B63C7708;
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

@end