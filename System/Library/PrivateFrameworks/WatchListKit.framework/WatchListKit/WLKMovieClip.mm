@interface WLKMovieClip
+ (id)movieClipsWithArray:(id)array;
- (WLKMovieClip)init;
- (WLKMovieClip)initWithDictionary:(id)dictionary;
- (WLKMovieClipAsset)preferredAsset;
- (id)_init;
- (id)preferredURL;
@end

@implementation WLKMovieClip

+ (id)movieClipsWithArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (v10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
              v12 = [WLKMovieClip alloc];
              v13 = [(WLKMovieClip *)v12 initWithDictionary:v11, v16];

              [array addObject:v13];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v14 = [array copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (WLKMovieClip)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    _init = [(WLKMovieClip *)self _init];
    if (_init)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"title"];
      v7 = [v6 copy];
      v8 = _init[1];
      _init[1] = v7;

      v9 = [dictionaryCopy wlk_dictionaryForKey:@"previewArtwork"];
      if (v9)
      {
        v10 = [[WLKMovieClipPreviewArtwork alloc] initWithDictionary:v9];
        v11 = _init[2];
        _init[2] = v10;
      }

      v12 = [dictionaryCopy wlk_arrayForKey:@"clipAssets"];
      if (v12)
      {
        v13 = [WLKMovieClipAsset movieClipAssetsWithArray:v12];
        v14 = [v13 copy];
        v15 = _init[3];
        _init[3] = v14;
      }

      v16 = [dictionaryCopy wlk_stringForKey:@"hlsUrl"];
      v17 = _init[4];
      _init[4] = v16;
    }

    self = _init;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WLKMovieClip;
  return [(WLKMovieClip *)&v3 init];
}

- (WLKMovieClip)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKMovieClip" format:@"-init is not supported. Use -initWithDictionary:"];

  return 0;
}

- (WLKMovieClipAsset)preferredAsset
{
  v17[4] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v17[0] = @"1080pHdVideo";
  v17[1] = @"720pHdVideo";
  v17[2] = @"sd480pVideo";
  v17[3] = @"sdVideo";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__WLKMovieClip_preferredAsset__block_invoke;
  v10[3] = &unk_279E605E0;
  v10[4] = self;
  v10[5] = &v11;
  [v3 enumerateObjectsUsingBlock:v10];
  v4 = v12[5];
  if (!v4)
  {
    assets = [(WLKMovieClip *)self assets];
    firstObject = [assets firstObject];
    v7 = v12[5];
    v12[5] = firstObject;

    v4 = v12[5];
  }

  v8 = v4;

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __30__WLKMovieClip_preferredAsset__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) assets];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__WLKMovieClip_preferredAsset__block_invoke_2;
  v10[3] = &unk_279E605B8;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v13 = a4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __30__WLKMovieClip_preferredAsset__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 flavor];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (id)preferredURL
{
  hlsUrl = [(WLKMovieClip *)self hlsUrl];
  if (!hlsUrl)
  {
    preferredAsset = [(WLKMovieClip *)self preferredAsset];
    hlsUrl = [preferredAsset url];
  }

  return hlsUrl;
}

@end