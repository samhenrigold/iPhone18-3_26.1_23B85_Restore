@interface CLFPhotosSettings_GeneratedCode
+ (CLFPhotosSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFPhotosSettings_GeneratedCode)init;
- (NSArray)selectedSharedAlbumCloudIdentifiers;
- (void)setAllowPinchToZoom:(BOOL)zoom;
- (void)setIncludeSharedAlbums:(BOOL)albums;
@end

@implementation CLFPhotosSettings_GeneratedCode

+ (CLFPhotosSettings)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CLFPhotosSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_4;

  return v3;
}

- (CLFPhotosSettings_GeneratedCode)init
{
  v11.receiver = self;
  v11.super_class = CLFPhotosSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v11 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_allowPinchToZoom);
    [preferenceKeysBySelectorName setObject:@"AllowPinchToZoom" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_includeSharedAlbums);
    [preferenceKeysBySelectorName2 setObject:@"IncludeSharedAlbums" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_selectedSharedAlbumCloudIdentifiers);
    [preferenceKeysBySelectorName3 setObject:@"SelectedSharedAlbumCloudIdentifiers" forKeyedSubscript:v9];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CLFPhotosSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v9, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_allowPinchToZoom);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_includeSharedAlbums);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_selectedSharedAlbumCloudIdentifiers);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (void)setAllowPinchToZoom:(BOOL)zoom
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:zoom];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowPinchToZoom"];
}

- (void)setIncludeSharedAlbums:(BOOL)albums
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:albums];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"IncludeSharedAlbums"];
}

- (NSArray)selectedSharedAlbumCloudIdentifiers
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E695E0F0];

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"SelectedSharedAlbumCloudIdentifiers" ofClass:v3 defaultValue:v4];
}

@end