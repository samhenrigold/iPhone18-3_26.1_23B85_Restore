@interface MSReviewedPlace
+ (Class)managedClass;
+ (id)strippedMapItemWith:(id)with;
- (BOOL)hasUserReviewed;
- (MSAnonymousCredential)anonymousCredential;
- (MSCommunityID)communityID;
- (MSReviewedPlace)initWithHasUserReviewed:(BOOL)reviewed lastSuggestedReviewDate:(id)date latitude:(id)latitude longitude:(id)longitude mapItemIdComparableRepresentation:(id)representation mapItemLastRefreshed:(id)refreshed mapItemStorage:(id)storage muid:(unint64_t)self0 positionIndex:(int64_t)self1 rating:(id)self2 resultProviderIdentifier:(id)self3 uploadedPhotosCount:(int)self4 version:(signed __int16)self5;
- (MSReviewedPlace)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSReviewedPlace)initWithStore:(id)store hasUserReviewed:(BOOL)reviewed lastSuggestedReviewDate:(id)date latitude:(id)latitude longitude:(id)longitude mapItemIdComparableRepresentation:(id)representation mapItemLastRefreshed:(id)refreshed mapItemStorage:(id)self0 muid:(unint64_t)self1 positionIndex:(int64_t)self2 rating:(id)self3 resultProviderIdentifier:(id)self4 uploadedPhotosCount:(int)self5 version:(signed __int16)self6;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)rating;
- (NSNumber)resultProviderIdentifier;
- (int)uploadedPhotosCount;
- (signed)version;
- (void)setAnonymousCredential:(id)credential;
- (void)setCommunityID:(id)d;
- (void)setHasUserReviewed:(BOOL)reviewed;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMuid:(unint64_t)muid;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setRating:(id)rating;
- (void)setResultProviderIdentifier:(id)identifier;
- (void)setUploadedPhotosCount:(int)count;
- (void)setVersion:(signed __int16)version;
@end

@implementation MSReviewedPlace

- (MSReviewedPlace)initWithHasUserReviewed:(BOOL)reviewed lastSuggestedReviewDate:(id)date latitude:(id)latitude longitude:(id)longitude mapItemIdComparableRepresentation:(id)representation mapItemLastRefreshed:(id)refreshed mapItemStorage:(id)storage muid:(unint64_t)self0 positionIndex:(int64_t)self1 rating:(id)self2 resultProviderIdentifier:(id)self3 uploadedPhotosCount:(int)self4 version:(signed __int16)self5
{
  reviewedCopy = reviewed;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v51 - v24;
  if (date)
  {
    sub_1B63BE974();
    v26 = sub_1B63BE994();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v27 = sub_1B63BE994();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  latitudeCopy = latitude;
  longitudeCopy = longitude;
  if (representation)
  {
    representationCopy = representation;
    refreshedCopy = refreshed;
    storageCopy = storage;
    ratingCopy = rating;
    identifierCopy = identifier;
    v33 = sub_1B63BE924();
    v52 = v34;
    v53 = v33;
  }

  else
  {
    refreshedCopy2 = refreshed;
    storageCopy2 = storage;
    ratingCopy2 = rating;
    identifierCopy2 = identifier;
    v52 = 0xF000000000000000;
    v53 = 0;
  }

  v56 = v25;
  if (refreshed)
  {
    sub_1B63BE974();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = sub_1B63BE994();
  v41 = v23;
  (*(*(v40 - 8) + 56))(v23, v39, 1, v40);
  if (storage)
  {
    v42 = sub_1B63BE924();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
  }

  v45 = latitudeCopy;
  v47 = v53;
  v46 = longitudeCopy;
  v48 = v52;
  v49 = sub_1B6319B20(reviewedCopy, v56, latitudeCopy, longitudeCopy, v53, v52, v41, v42, v44, muid, index, rating, identifier, count, version);

  sub_1B6284F64(v42, v44);
  sub_1B6284F64(v47, v48);

  return v49;
}

- (MSReviewedPlace)initWithStore:(id)store hasUserReviewed:(BOOL)reviewed lastSuggestedReviewDate:(id)date latitude:(id)latitude longitude:(id)longitude mapItemIdComparableRepresentation:(id)representation mapItemLastRefreshed:(id)refreshed mapItemStorage:(id)self0 muid:(unint64_t)self1 positionIndex:(int64_t)self2 rating:(id)self3 resultProviderIdentifier:(id)self4 uploadedPhotosCount:(int)self5 version:(signed __int16)self6
{
  reviewedCopy = reviewed;
  selfCopy = self;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v46 - v25;
  if (date)
  {
    sub_1B63BE974();
    v27 = sub_1B63BE994();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  else
  {
    v28 = sub_1B63BE994();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  }

  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  identifierCopy = identifier;
  if (representation)
  {
    representationCopy = representation;
    refreshedCopy = refreshed;
    storageCopy = storage;
    ratingCopy = rating;
    identifierCopy2 = identifier;
    v34 = sub_1B63BE924();
    v46 = v35;
    v47 = v34;

    if (refreshed)
    {
LABEL_6:
      sub_1B63BE974();

      v36 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    refreshedCopy2 = refreshed;
    storageCopy2 = storage;
    ratingCopy2 = rating;
    identifierCopy3 = identifier;
    v46 = 0xF000000000000000;
    v47 = 0;
    if (refreshed)
    {
      goto LABEL_6;
    }
  }

  v36 = 1;
LABEL_9:
  v41 = sub_1B63BE994();
  (*(*(v41 - 8) + 56))(v24, v36, 1, v41);
  if (storage)
  {
    v42 = sub_1B63BE924();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
  }

  return ReviewedPlace.init(store:hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(storeCopy, reviewedCopy, v26, latitudeCopy, longitudeCopy, v47, v46, v24, v42, v44, muid, index, rating, identifierCopy, count, version);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedReviewedPlace();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6319544(objectCopy, load);
}

- (BOOL)hasUserReviewed
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSReviewedPlace__hasUserReviewed);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHasUserReviewed:(BOOL)reviewed
{
  selfCopy = self;
  sub_1B63136AC(reviewed);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v4 = sub_1B6314258(selfCopy, v3);

  return v4;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B631A028(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v4 = sub_1B63146F4(selfCopy, v3);

  return v4;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B631A200(longitude);
}

- (void)setMuid:(unint64_t)muid
{
  selfCopy = self;
  sub_1B631696C(muid);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B6316C1C(index);
}

- (NSNumber)rating
{
  selfCopy = self;
  v4 = sub_1B6316F14(selfCopy, v3);

  return v4;
}

- (void)setRating:(id)rating
{
  ratingCopy = rating;
  selfCopy = self;
  sub_1B631A8CC(rating);
}

- (NSNumber)resultProviderIdentifier
{
  selfCopy = self;
  v4 = sub_1B63173B0(selfCopy, v3);

  return v4;
}

- (void)setResultProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1B631AAA4(identifier);
}

- (int)uploadedPhotosCount
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setUploadedPhotosCount:(int)count
{
  selfCopy = self;
  sub_1B6317A38(count);
}

- (signed)version
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSReviewedPlace__version);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setVersion:(signed __int16)version
{
  selfCopy = self;
  sub_1B6317E00(version);
}

- (MSAnonymousCredential)anonymousCredential
{
  selfCopy = self;
  v3 = sub_1B63180F0();

  return v3;
}

- (void)setAnonymousCredential:(id)credential
{
  credentialCopy = credential;
  selfCopy = self;
  sub_1B6318524(credential);
}

- (MSCommunityID)communityID
{
  selfCopy = self;
  v3 = sub_1B6318628();

  return v3;
}

- (void)setCommunityID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_1B6318B00(d);
}

- (MSReviewedPlace)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6318D18(object, store, loadCopy, parentCopy);
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