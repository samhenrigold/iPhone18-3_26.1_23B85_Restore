@interface ModelObjectBackedStoreItemMetadata
- (BOOL)hasArtistBiography;
- (BOOL)hasLyrics;
- (BOOL)hasSocialPosts;
- (BOOL)hasTimeSyncedLyrics;
- (BOOL)isBeats1;
- (BOOL)isCompilation;
- (BOOL)isExplicitContent;
- (BOOL)isMasteredForiTunes;
- (BOOL)isOnboardedPerson;
- (BOOL)isPreorder;
- (BOOL)isPrivatePerson;
- (BOOL)isStoreRedownloadable;
- (BOOL)isVerifiedPerson;
- (BOOL)showComposer;
- (NSArray)audioTraits;
- (NSArray)genreNames;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)init;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)coder;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata;
- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date;
- (double)duration;
- (id)metadataByAppendingMetadata:(id)metadata;
- (id)storeID;
- (int64_t)discCount;
- (int64_t)discNumber;
- (int64_t)episodeCount;
- (int64_t)explicitRating;
- (int64_t)movementCount;
- (int64_t)movementNumber;
- (int64_t)seasonNumber;
- (int64_t)trackCount;
- (int64_t)trackNumber;
@end

@implementation ModelObjectBackedStoreItemMetadata

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata
{
  sub_AB8FF0();
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  metadataCopy = metadata;
  isa = sub_AB8FD0().super.isa;

  v11.receiver = self;
  v11.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v9 = [(ModelObjectBackedStoreItemMetadata *)&v11 initWithStorePlatformDictionary:isa parentStoreItemMetadata:metadataCopy];

  return v9;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_AB8FF0();
  if (date)
  {
    sub_AB33F0();
    v8 = sub_AB3430();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_AB3430();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  return ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(v7, v6);
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60, &qword_B1BCA0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = sub_AB8FF0();
  if (date)
  {
    sub_AB33F0();
    v10 = sub_AB3430();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_AB3430();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  metadataCopy = metadata;
  v13 = sub_69D4C4(v9, metadataCopy, v8);

  return v13;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)coder
{
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v3 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (id)metadataByAppendingMetadata:(id)metadata
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v4 = v16.receiver;
  v5 = [(ModelObjectBackedStoreItemMetadata *)&v16 metadataByAppendingMetadata:metadata];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v4[v6];
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v9 = *&v5[v8];
  *&v5[v8] = v7;
  v10 = v7;

  v11 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v13 = *v11;
  v12 = *(v11 + 1);

  v14 = &v5[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v14 = v13;
  *(v14 + 1) = v12;

  return v5;
}

- (NSArray)audioTraits
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.audioTraits.getter();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (BOOL)isBeats1
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isBeats1.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isCompilation
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isCompilation.getter();
  v4 = v3;

  return v4 & 1;
}

- (int64_t)discCount
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.discCount.getter();
  v4 = v3;

  return v4;
}

- (int64_t)discNumber
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.discNumber.getter();
  v4 = v3;

  return v4;
}

- (double)duration
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.duration.getter();
  v4 = v3;

  return v4;
}

- (int64_t)episodeCount
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.episodeCount.getter();
  v4 = v3;

  return v4;
}

- (int64_t)explicitRating
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.explicitRating.getter();
  v4 = v3;

  return v4;
}

- (NSArray)genreNames
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.genreNames.getter();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (BOOL)hasArtistBiography
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)hasLyrics
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.hasLyrics.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)hasTimeSyncedLyrics
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)hasSocialPosts
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isExplicitContent
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isExplicitContent.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isMasteredForiTunes
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isPreorder
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isPreorder.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isPrivatePerson
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isVerifiedPerson
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter();
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isOnboardedPerson
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter();
  v4 = v3;

  return v4 & 1;
}

- (int64_t)movementCount
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.movementCount.getter();
  v4 = v3;

  return v4;
}

- (int64_t)movementNumber
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.movementNumber.getter();
  v4 = v3;

  return v4;
}

- (int64_t)seasonNumber
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.seasonNumber.getter();
  v4 = v3;

  return v4;
}

- (BOOL)showComposer
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.showComposer.getter();
  v4 = v3;

  return v4 & 1;
}

- (id)storeID
{
  v2 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v3 = *(v2 + 1);
  if (v3)
  {
    v6[0] = *v2;
    v6[1] = v3;

    v4 = sub_ABB3A0();
    sub_E17A4(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isStoreRedownloadable
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter();
  v4 = v3;

  return v4 & 1;
}

- (int64_t)trackCount
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.trackCount.getter();
  v4 = v3;

  return v4;
}

- (int64_t)trackNumber
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.trackNumber.getter();
  v4 = v3;

  return v4;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end