@interface AVTAssetLibrary
+ (id)sharedAssetLibrary;
- (id)assetWithType:(int64_t)type identifier:(id)identifier;
- (void)reload;
@end

@implementation AVTAssetLibrary

- (void)reload
{
  for (i = 0; i != 42; ++i)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_assets[i];
    self->_assets[i] = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_assetsByName[i];
    self->_assetsByName[i] = v6;
  }

  for (j = 0; j != 42; ++j)
  {
    v9 = AVTPrecompiledMemojiAssetsForComponentType(j);
    [v9 enumerateKeysAndObjectsUsingBlock:{MEMORY[0x1E69E9820], 3221225472, __25__AVTAssetLibrary_reload__block_invoke, &unk_1E7F48320, self, j}];
  }
}

void __25__AVTAssetLibrary_reload__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[AVTResourceLocator sharedResourceLocator];
  v11 = [(AVTResourceLocator *)v7 urlForMemojiAssetAtPath:v5 isDirectory:1];

  v8 = [AVTAsset alloc];
  v9 = [v11 path];
  v10 = [AVTAsset initWithType:v8 identifier:"initWithType:identifier:path:" path:?];

  [*(*(a1 + 32) + 8 * *(a1 + 40) + 8) addObject:?];
  [*(*(a1 + 32) + 8 * *(a1 + 40) + 344) setObject:? forKeyedSubscript:?];
}

+ (id)sharedAssetLibrary
{
  if (sharedAssetLibrary_onceToken != -1)
  {
    +[AVTAssetLibrary sharedAssetLibrary];
  }

  v3 = sharedAssetLibrary_sharedInstance;

  return v3;
}

void *__37__AVTAssetLibrary_sharedAssetLibrary__block_invoke()
{
  v0 = objc_alloc_init(AVTAssetLibrary);
  v1 = sharedAssetLibrary_sharedInstance;
  sharedAssetLibrary_sharedInstance = v0;

  v2 = sharedAssetLibrary_sharedInstance;

  return [v2 reload];
}

- (id)assetWithType:(int64_t)type identifier:(id)identifier
{
  if (type == 42)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_assetsByName[type] objectForKeyedSubscript:v4];
  }

  return v6;
}

@end