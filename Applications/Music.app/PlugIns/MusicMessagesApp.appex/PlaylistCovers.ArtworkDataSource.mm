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
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = catalog;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1004DDA8C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100522BF8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100522C08;
  v13[5] = v12;
  catalogCopy = catalog;
  selfCopy = self;
  sub_100243DBC(0, 0, v8, &unk_100522C18, v13);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  sub_1004DE8DC();
  swift_unknownObjectRelease();

  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtCO9MusicCore14PlaylistCovers17ArtworkDataSource)init
{
  v3 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *(&self->super.isa + v3) = [objc_allocWithZone(NSCache) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return [(PlaylistCovers.ArtworkDataSource *)&v5 init];
}

@end