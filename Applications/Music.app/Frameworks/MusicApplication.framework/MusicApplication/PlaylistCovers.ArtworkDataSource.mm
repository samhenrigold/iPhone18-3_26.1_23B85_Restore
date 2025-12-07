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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = catalog;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_AB9990();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_B23E68;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_B23E78;
  v13[5] = v12;
  catalogCopy = catalog;
  selfCopy = self;
  sub_70A7A4(0, 0, v8, &unk_B23E88, v13);
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  catalogCopy = catalog;
  token = [catalogCopy token];
  sub_ABAB50();
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