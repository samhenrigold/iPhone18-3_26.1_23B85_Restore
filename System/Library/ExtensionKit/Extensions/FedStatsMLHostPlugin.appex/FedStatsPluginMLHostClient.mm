@interface FedStatsPluginMLHostClient
- (BOOL)fetchAssets:(id)assets error:(id *)error;
- (_TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient)init;
- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error;
- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error;
- (id)recipeIdentifiers;
- (id)treatmentIdentifierForRecipe:(id)recipe;
- (void)removeAssets;
@end

@implementation FedStatsPluginMLHostClient

- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error
{
  v5 = sub_1000137E0();
  v7 = v6;
  selfCopy = self;
  FedStatsPluginMLHostClient.recipeDictionary(forRecipe:)(v5, v7);

  v9.super.isa = sub_100013780().super.isa;

  return v9.super.isa;
}

- (id)treatmentIdentifierForRecipe:(id)recipe
{
  sub_1000137E0();
  v3 = sub_1000137D0();

  return v3;
}

- (id)recipeIdentifiers
{

  sub_10000D740(v2);
  v3.super.isa = sub_100013880().super.isa;

  return v3.super.isa;
}

- (BOOL)fetchAssets:(id)assets error:(id *)error
{
  sub_1000054F8(&unk_10001C670, &unk_1000142F0);
  v6 = sub_100013790();
  selfCopy = self;
  FedStatsPluginMLHostClient.fetchAssets(_:)(v6);

  if (v8)
  {
    if (error)
    {
      v9 = sub_100013550();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error
{
  v6 = sub_1000135D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000137E0();
  v12 = v11;
  v13 = sub_1000137E0();
  v15 = v14;
  selfCopy = self;
  FedStatsPluginMLHostClient.assetURL(forRecipe:forKey:)(v10, v12, v13, v15, v9);

  sub_1000135A0(v17);
  v19 = v18;
  (*(v7 + 8))(v9, v6);

  return v19;
}

- (void)removeAssets
{
  selfCopy = self;
  FedStatsPluginMLHostClient.removeAssets()();
}

- (_TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end