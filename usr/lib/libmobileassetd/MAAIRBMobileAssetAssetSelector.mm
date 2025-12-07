@interface MAAIRBMobileAssetAssetSelector
- (MAAIRBMobileAssetAssetSelector)init;
- (MAAIRBMobileAssetAssetSelector)initWithAssetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version;
@end

@implementation MAAIRBMobileAssetAssetSelector

- (MAAIRBMobileAssetAssetSelector)initWithAssetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version
{
  specifierCopy = specifier;
  if (type)
  {
    v7 = sub_303948();
    v9 = v8;
    if (specifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (version)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    v14 = 0;
    return sub_250E2C(v7, v9, specifierCopy, v11, v12, v14);
  }

  v7 = 0;
  v9 = 0;
  if (!specifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  specifierCopy = sub_303948();
  v11 = v10;
  if (!version)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = sub_303948();
  v14 = v13;
  return sub_250E2C(v7, v9, specifierCopy, v11, v12, v14);
}

- (MAAIRBMobileAssetAssetSelector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end