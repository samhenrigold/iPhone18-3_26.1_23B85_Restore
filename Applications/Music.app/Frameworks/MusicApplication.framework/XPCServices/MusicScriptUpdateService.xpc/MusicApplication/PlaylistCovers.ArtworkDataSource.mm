@interface PlaylistCovers.ArtworkDataSource
- (_TtCO9MusicCore14PlaylistCovers17ArtworkDataSource)init;
- (id)existingRepresentationForArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler;
@end

@implementation PlaylistCovers.ArtworkDataSource

- (id)existingRepresentationForArtworkCatalog:(id)catalog
{
  catalogCopy = catalog;
  selfCopy = self;
  v6 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(catalogCopy);

  return v6;
}

- (void)loadRepresentationForArtworkCatalog:(MPArtworkCatalog *)catalog completionHandler:(id)handler
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = catalog;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1004BC4B4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004D5558;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004D5568;
  v13[5] = v12;
  catalogCopy = catalog;
  selfCopy = self;
  sub_100222194(0, 0, v8, &unk_1004D5578, v13);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  sub_1004BD284();
  swift_unknownObjectRelease();

  type metadata accessor for PlaylistCovers.ArtworkToken(v5, v6);
  if (swift_dynamicCast())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtCO9MusicCore14PlaylistCovers17ArtworkDataSource)init
{
  v3 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  v4 = [objc_allocWithZone(NSCache) init];
  *(&self->super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource(v4, v5);
  return [(PlaylistCovers.ArtworkDataSource *)&v7 init];
}

@end