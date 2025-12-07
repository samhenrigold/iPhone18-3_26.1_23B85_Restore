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
  sub_1004BBC44();
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  metadataCopy = metadata;
  isa = sub_1004BBC24().super.isa;

  v13.receiver = self;
  v13.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata(v9, v10);
  v11 = [(ModelObjectBackedStoreItemMetadata *)&v13 initWithStorePlatformDictionary:isa parentStoreItemMetadata:metadataCopy];

  return v11;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary expirationDate:(id)date
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_1004BBC44();
  if (date)
  {
    sub_1004B6C94();
    v8 = sub_1004B6CD4();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_1004B6CD4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  return ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(v7, v6);
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithStorePlatformDictionary:(id)dictionary parentStoreItemMetadata:(id)metadata expirationDate:(id)date
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = sub_1004BBC44();
  if (date)
  {
    sub_1004B6C94();
    v10 = sub_1004B6CD4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1004B6CD4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  metadataCopy = metadata;
  v13 = sub_1001B4320(v9, metadataCopy, v8);

  return v13;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)initWithCoder:(id)coder
{
  *&self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v3 = &self->MPStoreItemMetadata_opaque[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_1004BD624();
  __break(1u);
  return result;
}

- (id)metadataByAppendingMetadata:(id)metadata
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata(self, a2);
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
  ModelObjectBackedStoreItemMetadata.audioTraits.getter(selfCopy, v3);

  v4.super.isa = sub_1004BC284().super.isa;

  return v4.super.isa;
}

- (BOOL)isBeats1
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isBeats1.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isCompilation
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isCompilation.getter(selfCopy, v3);

  return v4 & 1;
}

- (int64_t)discCount
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.discCount.getter(selfCopy, v3);

  return v4;
}

- (int64_t)discNumber
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.discNumber.getter(selfCopy, v3);

  return v4;
}

- (double)duration
{
  selfCopy = self;
  ModelObjectBackedStoreItemMetadata.duration.getter(selfCopy, v3);
  v5 = v4;

  return v5;
}

- (int64_t)episodeCount
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.episodeCount.getter(selfCopy, v3);

  return v4;
}

- (int64_t)explicitRating
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.explicitRating.getter(selfCopy, v3);

  return v4;
}

- (NSArray)genreNames
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.genreNames.getter(selfCopy, v3);

  if (v4)
  {
    v5.super.isa = sub_1004BC284().super.isa;
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
  v4 = ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)hasLyrics
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.hasLyrics.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)hasTimeSyncedLyrics
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)hasSocialPosts
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isExplicitContent
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isExplicitContent.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isMasteredForiTunes
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isPreorder
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isPreorder.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isPrivatePerson
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isVerifiedPerson
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter(selfCopy, v3);

  return v4 & 1;
}

- (BOOL)isOnboardedPerson
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter(selfCopy, v3);

  return v4 & 1;
}

- (int64_t)movementCount
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.movementCount.getter(selfCopy, v3);

  return v4;
}

- (int64_t)movementNumber
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.movementNumber.getter(selfCopy, v3);

  return v4;
}

- (int64_t)seasonNumber
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.seasonNumber.getter(selfCopy, v3);

  return v4;
}

- (BOOL)showComposer
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.showComposer.getter(selfCopy, v3);

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

    v4 = sub_1004BD9A4();
    sub_1001B4A3C(v6);
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
  v4 = ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter(selfCopy, v3);

  return v4 & 1;
}

- (int64_t)trackCount
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.trackCount.getter(selfCopy, v3);

  return v4;
}

- (int64_t)trackNumber
{
  selfCopy = self;
  v4 = ModelObjectBackedStoreItemMetadata.trackNumber.getter(selfCopy, v3);

  return v4;
}

- (_TtC9MusicCore34ModelObjectBackedStoreItemMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end