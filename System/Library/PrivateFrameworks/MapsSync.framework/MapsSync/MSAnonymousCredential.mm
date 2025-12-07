@interface MSAnonymousCredential
+ (Class)managedClass;
- (MSAnonymousCredential)initWithAnonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index;
- (MSAnonymousCredential)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSAnonymousCredential)initWithStore:(id)store anonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index;
- (NSDate)mapsTokenCreatedAt;
- (id)fetchReviewedPlaces;
- (void)addReviewedPlace:(id)place;
- (void)flushChanges;
- (void)removeReviewedPlace:(id)place;
- (void)setMapsTokenCreatedAt:(id)at;
- (void)setMapsTokenTTL:(int64_t)l;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSAnonymousCredential

- (MSAnonymousCredential)initWithAnonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  if (id)
  {
    tokenCopy = token;
    atCopy = at;
    idCopy = id;
    id = sub_1B63BE924();
    v19 = v18;

    if (token)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    v22 = 0xF000000000000000;
    if (at)
    {
      goto LABEL_4;
    }

LABEL_7:
    v26 = sub_1B63BE994();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    goto LABEL_8;
  }

  tokenCopy2 = token;
  atCopy2 = at;
  v19 = 0xF000000000000000;
  if (!token)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = sub_1B63BE924();
  v22 = v21;

  if (!at)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1B63BE974();

  v23 = sub_1B63BE994();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
LABEL_8:
  v27 = sub_1B62B7F34(id, v19, v20, v22, v14, l, index);
  sub_1B6284F64(v20, v22);
  sub_1B6284F64(id, v19);
  return v27;
}

- (MSAnonymousCredential)initWithStore:(id)store anonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index
{
  indexCopy = index;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  if (id)
  {
    storeCopy = store;
    tokenCopy = token;
    atCopy = at;
    idCopy = id;
    v20 = sub_1B63BE924();
    v22 = v21;

    if (token)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = 0;
    v25 = 0xF000000000000000;
    if (at)
    {
      goto LABEL_4;
    }

LABEL_7:
    v30 = sub_1B63BE994();
    (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
    return AnonymousCredential.init(store:anonymousId:mapsToken:mapsTokenCreatedAt:mapsTokenTTL:positionIndex:)(store, v20, v22, v23, v25, v15, l, indexCopy);
  }

  storeCopy2 = store;
  tokenCopy2 = token;
  atCopy2 = at;
  v20 = 0;
  v22 = 0xF000000000000000;
  if (!token)
  {
    goto LABEL_6;
  }

LABEL_3:
  v23 = sub_1B63BE924();
  v25 = v24;

  if (!at)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1B63BE974();

  v26 = sub_1B63BE994();
  (*(*(v26 - 8) + 56))(v15, 0, 1, v26);
  return AnonymousCredential.init(store:anonymousId:mapsToken:mapsTokenCreatedAt:mapsTokenTTL:positionIndex:)(store, v20, v22, v23, v25, v15, l, indexCopy);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  selfCopy = self;

  v6 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  swift_beginAccess();
  *(&selfCopy->super.super.isa + v6) = v4;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62B7BB8(objectCopy, load);
}

- (NSDate)mapsTokenCreatedAt
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B62B4FA8(v5);

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

- (void)setMapsTokenCreatedAt:(id)at
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (at)
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
  sub_1B62B55A8(v7);
}

- (void)setMapsTokenTTL:(int64_t)l
{
  selfCopy = self;
  sub_1B62B5E84(l);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62B620C(index);
}

- (id)fetchReviewedPlaces
{
  selfCopy = self;
  sub_1B62B64C0();

  type metadata accessor for ReviewedPlace(0);
  v3 = sub_1B63BEC94();

  return v3;
}

- (void)addReviewedPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62B6D58(placeCopy, 0, sub_1B62B6C10, 0);
}

- (void)removeReviewedPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62B6D58(placeCopy, 1, sub_1B62B6CC4, 0);
}

- (MSAnonymousCredential)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62B7240(object, store, loadCopy, parentCopy);
}

@end