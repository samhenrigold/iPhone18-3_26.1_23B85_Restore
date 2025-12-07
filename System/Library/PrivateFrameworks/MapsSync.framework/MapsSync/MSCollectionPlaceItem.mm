@interface MSCollectionPlaceItem
+ (Class)managedClass;
+ (id)optionsWith:(id)with;
+ (id)strippedMapItemWith:(id)with;
- (BOOL)isEqualToMapItem:(id)item name:(id)name;
- (GEOMapItemStorage)mapItemStorage;
- (MSCollectionPlaceItem)initWithCustomName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 origin:(signed __int16)self3 originalIdentifier:(id)self4 placeItemNote:(id)self5 type:(signed __int16)self6;
- (MSCollectionPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCollectionPlaceItem)initWithStore:(id)store customName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemLastRefreshed:(id)self1 mapItemName:(id)self2 muid:(id)self3 origin:(signed __int16)self4 originalIdentifier:(id)self5 placeItemNote:(id)self6 type:(signed __int16)self7;
- (NSData)droppedPinCoordinate;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSUUID)originalIdentifier;
- (int)droppedPinFloorOrdinal;
- (void)setDroppedPinCoordinate:(id)coordinate;
- (void)setDroppedPinFloorOrdinal:(int)ordinal;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setOrigin:(signed __int16)origin;
- (void)setOriginalIdentifier:(id)identifier;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setType:(signed __int16)type;
@end

@implementation MSCollectionPlaceItem

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v4 = sub_1B6290B60(selfCopy, v3);

  return v4;
}

- (MSCollectionPlaceItem)initWithCustomName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 origin:(signed __int16)self3 originalIdentifier:(id)self4 placeItemNote:(id)self5 type:(signed __int16)self6
{
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  ordinalCopy = ordinal;
  selfCopy = self;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v72 - v23;
  if (name)
  {
    v25 = sub_1B63BEBD4();
    v76 = v26;
    v77 = v25;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  v78 = v21;
  muidCopy = muid;
  if (coordinate)
  {
    coordinateCopy = coordinate;
    v28 = latitudeCopy;
    v29 = longitudeCopy;
    addressCopy = address;
    categoryCopy = category;
    refreshedCopy = refreshed;
    itemNameCopy = itemName;
    muidCopy2 = muid;
    identifierCopy = identifier;
    noteCopy = note;
    v75 = sub_1B63BE924();
    v38 = v37;

    if (address)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v44 = latitudeCopy;
    v45 = longitudeCopy;
    addressCopy2 = address;
    categoryCopy2 = category;
    refreshedCopy2 = refreshed;
    itemNameCopy2 = itemName;
    muidCopy3 = muid;
    identifierCopy2 = identifier;
    noteCopy2 = note;
    v75 = 0;
    v38 = 0xF000000000000000;
    if (address)
    {
LABEL_6:
      v39 = sub_1B63BEBD4();
      v73 = v40;
      v74 = v39;

      v41 = v78;
      if (category)
      {
        goto LABEL_7;
      }

LABEL_11:
      v78 = 0;
      v72 = 0;
      if (refreshed)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v73 = 0;
  v74 = 0;
  v41 = v78;
  if (!category)
  {
    goto LABEL_11;
  }

LABEL_7:
  v78 = sub_1B63BEBD4();
  v72 = v42;

  if (refreshed)
  {
LABEL_8:
    sub_1B63BE974();

    v43 = sub_1B63BE994();
    (*(*(v43 - 8) + 56))(v24, 0, 1, v43);
    goto LABEL_13;
  }

LABEL_12:
  v53 = sub_1B63BE994();
  (*(*(v53 - 8) + 56))(v24, 1, 1, v53);
LABEL_13:
  if (itemName)
  {
    v54 = sub_1B63BEBD4();
    v56 = v55;

    if (identifier)
    {
LABEL_15:
      sub_1B63BE9E4();

      v57 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v54 = 0;
    v56 = 0;
    if (identifier)
    {
      goto LABEL_15;
    }
  }

  v57 = 1;
LABEL_18:
  v58 = sub_1B63BEA04();
  (*(*(v58 - 8) + 56))(v41, v57, 1, v58);
  if (note)
  {
    v59 = sub_1B63BEBD4();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v71 = v61;
  v70 = v41;
  v62 = muidCopy;
  v69 = v56;
  v68 = v24;
  v63 = v75;
  v65 = latitudeCopy;
  v64 = longitudeCopy;
  v66 = sub_1B62D78C4(v77, v76, v75, v38, ordinalCopy, latitudeCopy, longitudeCopy, v74, v73, v78, v72, v68, v54, v69, muidCopy, origin, v70, v59, v71, type);

  sub_1B6284F64(v63, v38);
  return v66;
}

- (MSCollectionPlaceItem)initWithStore:(id)store customName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemLastRefreshed:(id)self1 mapItemName:(id)self2 muid:(id)self3 origin:(signed __int16)self4 originalIdentifier:(id)self5 placeItemNote:(id)self6 type:(signed __int16)self7
{
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  ordinalCopy = ordinal;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v70 = &v65 - v24;
  if (name)
  {
    v25 = sub_1B63BEBD4();
    v72 = v26;
    v73 = v25;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  storeCopy = store;
  muidCopy = muid;
  if (coordinate)
  {
    coordinateCopy = coordinate;
    v28 = latitudeCopy;
    v29 = longitudeCopy;
    addressCopy = address;
    categoryCopy = category;
    refreshedCopy = refreshed;
    itemNameCopy = itemName;
    muidCopy2 = muid;
    identifierCopy = identifier;
    noteCopy = note;
    v37 = sub_1B63BE924();
    v67 = v38;
    v68 = v37;

    v39 = v22;
    if (address)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v46 = latitudeCopy;
    v47 = longitudeCopy;
    addressCopy2 = address;
    categoryCopy2 = category;
    refreshedCopy2 = refreshed;
    itemNameCopy2 = itemName;
    muidCopy3 = muid;
    identifierCopy2 = identifier;
    noteCopy2 = note;
    v67 = 0xF000000000000000;
    v68 = 0;
    v39 = v22;
    if (address)
    {
LABEL_6:
      v40 = sub_1B63BEBD4();
      v65 = v41;
      v66 = v40;

      v42 = v70;
      if (category)
      {
        goto LABEL_7;
      }

LABEL_11:
      v70 = 0;
      v44 = 0;
      if (refreshed)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v65 = 0;
  v66 = 0;
  v42 = v70;
  if (!category)
  {
    goto LABEL_11;
  }

LABEL_7:
  v70 = sub_1B63BEBD4();
  v44 = v43;

  if (refreshed)
  {
LABEL_8:
    sub_1B63BE974();

    v45 = sub_1B63BE994();
    (*(*(v45 - 8) + 56))(v42, 0, 1, v45);
    goto LABEL_13;
  }

LABEL_12:
  v55 = sub_1B63BE994();
  (*(*(v55 - 8) + 56))(v42, 1, 1, v55);
LABEL_13:
  if (itemName)
  {
    v56 = sub_1B63BEBD4();
    v58 = v57;

    if (identifier)
    {
LABEL_15:
      sub_1B63BE9E4();

      v59 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v56 = 0;
    v58 = 0;
    if (identifier)
    {
      goto LABEL_15;
    }
  }

  v59 = 1;
LABEL_18:
  v60 = sub_1B63BEA04();
  (*(*(v60 - 8) + 56))(v39, v59, 1, v60);
  if (note)
  {
    v61 = sub_1B63BEBD4();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  return CollectionPlaceItem.init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(storeCopy, v73, v72, v68, v67, ordinalCopy, latitudeCopy, longitudeCopy, v66, v65, v70, v44, v42, v56, v58, muidCopy, origin, v39, v61, v63, type);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B628BB14(objectCopy, load, parent);
}

- (NSData)droppedPinCoordinate
{
  selfCopy = self;
  v4 = sub_1B62D0BD0(selfCopy, v3);
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

- (void)setDroppedPinCoordinate:(id)coordinate
{
  coordinateCopy = coordinate;
  if (coordinate)
  {
    selfCopy = self;
    v5 = coordinateCopy;
    coordinateCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62D7EEC(coordinateCopy, v7);
  sub_1B6284F64(coordinateCopy, v7);
}

- (int)droppedPinFloorOrdinal
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setDroppedPinFloorOrdinal:(int)ordinal
{
  selfCopy = self;
  sub_1B62D1480(ordinal);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v4 = sub_1B62D1770(selfCopy, v3);

  return v4;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62D80EC(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v4 = sub_1B62D1C0C(selfCopy, v3);

  return v4;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62D82C4(longitude);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B62D2DB4(v5);

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
  sub_1B62D33B4(v7);
}

- (NSNumber)muid
{
  selfCopy = self;
  v4 = sub_1B62D411C(selfCopy, v3);

  return v4;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62D85B4(muid);
}

- (void)setOrigin:(signed __int16)origin
{
  selfCopy = self;
  sub_1B62D4764(origin);
}

- (NSUUID)originalIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B62D4AD4(v5);

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

- (void)setOriginalIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (identifier)
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
  sub_1B62D50D4(v7);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  sub_1B62D6290(type);
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62D67AC(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (MSCollectionPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62D755C(object, store, loadCopy, parentCopy);
}

+ (id)optionsWith:(id)with
{
  withCopy = with;
  v5 = sub_1B628E52C(0x206D65744970616DLL, 0xEE006C696E203D21, MEMORY[0x1E69E7CC0]);
  v6 = sub_1B628EC4C(with, v5, 0);

  return v6;
}

+ (id)strippedMapItemWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  result = [v4 mapItemStorageForGEOMapItem:withCopy forUseType:6];
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

- (BOOL)isEqualToMapItem:(id)item name:(id)name
{
  if (name)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = CollectionPlaceItem.isEqualTo(mapItem:name:)(item, v6, v8);
  swift_unknownObjectRelease();

  return v10 & 1;
}

@end