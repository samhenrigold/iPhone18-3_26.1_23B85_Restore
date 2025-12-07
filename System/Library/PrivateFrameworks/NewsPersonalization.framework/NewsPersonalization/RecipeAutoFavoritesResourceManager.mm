@interface RecipeAutoFavoritesResourceManager
- (FCPersonalizationBundleIDMapping)bundleIDMapping;
- (FCPersonalizationURLMapping)urlMapping;
- (FCPersonalizationWhitelist)allowlist;
- (unint64_t)allowlistLevelForTagID:(id)d;
@end

@implementation RecipeAutoFavoritesResourceManager

- (FCPersonalizationWhitelist)allowlist
{

  sub_1C6D781A0();

  return v3;
}

- (unint64_t)allowlistLevelForTagID:(id)d
{
  v3 = sub_1C6D795A0();
  v5 = v4;

  v6 = sub_1C6BC0618(v3, v5);

  return v6;
}

- (FCPersonalizationBundleIDMapping)bundleIDMapping
{

  sub_1C6D781A0();

  return v3;
}

- (FCPersonalizationURLMapping)urlMapping
{

  sub_1C6D781A0();

  return v3;
}

@end