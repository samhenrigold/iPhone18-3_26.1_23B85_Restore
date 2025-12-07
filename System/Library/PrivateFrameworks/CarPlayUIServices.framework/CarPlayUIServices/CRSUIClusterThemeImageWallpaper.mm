@interface CRSUIClusterThemeImageWallpaper
- (CRSUIClusterThemeImageWallpaper)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeImageWallpaper)initWithLightModeAsset:(id)asset darkModeAsset:(id)modeAsset supportsDynamicAppearance:(BOOL)appearance;
- (id)assetForInterfaceStyle:(int64_t)style;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeImageWallpaper

- (CRSUIClusterThemeImageWallpaper)initWithLightModeAsset:(id)asset darkModeAsset:(id)modeAsset supportsDynamicAppearance:(BOOL)appearance
{
  assetCopy = asset;
  modeAssetCopy = modeAsset;
  v14.receiver = self;
  v14.super_class = CRSUIClusterThemeImageWallpaper;
  v11 = [(CRSUIClusterThemeImageWallpaper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lightModeAsset, asset);
    objc_storeStrong(&v12->_darkModeAsset, modeAsset);
    v12->_supportsDynamicAppearance = appearance;
  }

  return v12;
}

- (id)assetForInterfaceStyle:(int64_t)style
{
  if (style == 2 && [(CRSUIClusterThemeImageWallpaper *)self supportsDynamicAppearance])
  {
    v4 = 16;
  }

  else
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  lightModeAsset = self->_lightModeAsset;
  coderCopy = coder;
  [coderCopy encodeObject:lightModeAsset forKey:@"lightModeAsset"];
  [coderCopy encodeObject:self->_darkModeAsset forKey:@"darkModeAsset"];
  [coderCopy encodeBool:-[CRSUIClusterThemeImageWallpaper supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
}

- (CRSUIClusterThemeImageWallpaper)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightModeAsset"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkModeAsset"];
  v7 = [coderCopy decodeBoolForKey:@"supportsDynamicAppearance"];

  if (v5)
  {
    self = [(CRSUIClusterThemeImageWallpaper *)self initWithLightModeAsset:v5 darkModeAsset:v6 supportsDynamicAppearance:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end