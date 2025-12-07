@interface MSCachedCuratedCollection
+ (Class)managedClass;
- (BOOL)isTombstone;
- (MSCachedCuratedCollection)initWithCollectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)changeDate placesCount:(int)self0 positionIndex:(int64_t)self1 publisherAttribution:(id)self2 resultProviderIdentifier:(int)self3 title:(id)self4 titleLocale:(id)self5;
- (MSCachedCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCachedCuratedCollection)initWithStore:(id)store collectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)self0 placesCount:(int)self1 positionIndex:(int64_t)self2 publisherAttribution:(id)self3 resultProviderIdentifier:(int)self4 title:(id)self5 titleLocale:(id)self6;
- (NSData)image;
- (void)setCuratedCollectionIdentifier:(unint64_t)identifier;
- (void)setImage:(id)image;
- (void)setIsTombstone:(BOOL)tombstone;
- (void)setPlacesCount:(int)count;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setResultProviderIdentifier:(int)identifier;
@end

@implementation MSCachedCuratedCollection

- (MSCachedCuratedCollection)initWithCollectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)changeDate placesCount:(int)self0 positionIndex:(int64_t)self1 publisherAttribution:(id)self2 resultProviderIdentifier:(int)self3 title:(id)self4 titleLocale:(id)self5
{
  tombstoneCopy = tombstone;
  identifierCopy = identifier;
  selfCopy = self;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  if (description)
  {
    v25 = sub_1B63BEBD4();
    v68 = v26;
    v69 = v25;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if (image)
  {
    imageCopy = image;
    urlCopy = url;
    dateCopy = date;
    changeDateCopy = changeDate;
    attributionCopy = attribution;
    titleCopy = title;
    localeCopy = locale;
    v34 = sub_1B63BE924();
    v66 = v35;
    v67 = v34;

    if (url)
    {
      goto LABEL_6;
    }

LABEL_9:
    v64 = 0;
    v65 = 0;
    if (date)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  urlCopy2 = url;
  dateCopy2 = date;
  changeDateCopy2 = changeDate;
  attributionCopy2 = attribution;
  titleCopy2 = title;
  localeCopy2 = locale;
  v66 = 0xF000000000000000;
  v67 = 0;
  if (!url)
  {
    goto LABEL_9;
  }

LABEL_6:
  v36 = sub_1B63BEBD4();
  v64 = v37;
  v65 = v36;

  if (date)
  {
LABEL_7:
    sub_1B63BE974();

    v38 = sub_1B63BE994();
    (*(*(v38 - 8) + 56))(v24, 0, 1, v38);
    goto LABEL_11;
  }

LABEL_10:
  v45 = sub_1B63BE994();
  (*(*(v45 - 8) + 56))(v24, 1, 1, v45);
LABEL_11:
  if (changeDate)
  {
    sub_1B63BE974();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = sub_1B63BE994();
  (*(*(v47 - 8) + 56))(v22, v46, 1, v47);
  if (attribution)
  {
    v48 = sub_1B63BEBD4();
    v62 = v49;
    v63 = v48;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v50 = v22;
  if (title)
  {
    v51 = sub_1B63BEBD4();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  if (locale)
  {
    v54 = sub_1B63BEBD4();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v58 = v66;
  v57 = v67;
  v59 = sub_1B62C120C(v69, v68, identifierCopy, v67, v66, v65, v64, tombstoneCopy, v24, v50, count, index, v63, v62, providerIdentifier, v51, v53, v54, v56);
  sub_1B6284F64(v57, v58);
  return v59;
}

- (MSCachedCuratedCollection)initWithStore:(id)store collectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)self0 placesCount:(int)self1 positionIndex:(int64_t)self2 publisherAttribution:(id)self3 resultProviderIdentifier:(int)self4 title:(id)self5 titleLocale:(id)self6
{
  tombstoneCopy = tombstone;
  identifierCopy = identifier;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  if (description)
  {
    v26 = sub_1B63BEBD4();
    v65 = v27;
    v66 = v26;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  storeCopy = store;
  if (image)
  {
    imageCopy = image;
    urlCopy = url;
    dateCopy = date;
    changeDateCopy = changeDate;
    attributionCopy = attribution;
    titleCopy = title;
    localeCopy = locale;
    v35 = sub_1B63BE924();
    v62 = v36;
    v63 = v35;

    if (url)
    {
      goto LABEL_6;
    }

LABEL_9:
    v60 = 0;
    v61 = 0;
    if (date)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  urlCopy2 = url;
  dateCopy2 = date;
  changeDateCopy2 = changeDate;
  attributionCopy2 = attribution;
  titleCopy2 = title;
  localeCopy2 = locale;
  v62 = 0xF000000000000000;
  v63 = 0;
  if (!url)
  {
    goto LABEL_9;
  }

LABEL_6:
  v37 = sub_1B63BEBD4();
  v60 = v38;
  v61 = v37;

  if (date)
  {
LABEL_7:
    sub_1B63BE974();

    v39 = sub_1B63BE994();
    (*(*(v39 - 8) + 56))(v25, 0, 1, v39);
    goto LABEL_11;
  }

LABEL_10:
  v46 = sub_1B63BE994();
  (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
LABEL_11:
  if (changeDate)
  {
    sub_1B63BE974();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = sub_1B63BE994();
  (*(*(v48 - 8) + 56))(v23, v47, 1, v48);
  if (attribution)
  {
    v49 = sub_1B63BEBD4();
    v58 = v50;
    v59 = v49;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  if (title)
  {
    v51 = sub_1B63BEBD4();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  if (locale)
  {
    v54 = sub_1B63BEBD4();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  return CachedCuratedCollection.init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(storeCopy, v66, v65, identifierCopy, v63, v62, v61, v60, tombstoneCopy, v25, v23, count, index, v59, v58, providerIdentifier, v51, v53, v54, v56);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62C0B98(objectCopy, load);
}

- (void)setCuratedCollectionIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  sub_1B62BB7E0(identifier);
}

- (NSData)image
{
  selfCopy = self;
  v4 = sub_1B62BBAA8(selfCopy, v3);
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

- (void)setImage:(id)image
{
  imageCopy = image;
  if (image)
  {
    selfCopy = self;
    v5 = imageCopy;
    imageCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62C17A8(imageCopy, v7);
  sub_1B6284F64(imageCopy, v7);
}

- (BOOL)isTombstone
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setIsTombstone:(BOOL)tombstone
{
  selfCopy = self;
  sub_1B62BC92C(tombstone);
}

- (void)setPlacesCount:(int)count
{
  selfCopy = self;
  sub_1B62BE508(count);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62BE7BC(index);
}

- (void)setResultProviderIdentifier:(int)identifier
{
  selfCopy = self;
  sub_1B62BF188(identifier);
}

- (MSCachedCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62C0344(object, store, loadCopy, parentCopy);
}

@end