@interface MUPlaceHikingTileViewModel
- (MUPlaceHikingTileViewModel)initWithGEOTrail:(id)trail hikingItemType:(int)type;
- (NSString)tileName;
- (id)footerAttributedStringForFont:(id)font;
- (id)subtitleAttributedStringForFont:(id)font;
- (void)fetchBadgeIconWithCompletion:(id)completion;
- (void)fetchFallbackIconWithCompletion:(id)completion;
- (void)fetchImageTilewWithSize:(CGSize)size completion:(id)completion;
@end

@implementation MUPlaceHikingTileViewModel

- (id)subtitleAttributedStringForFont:(id)font
{
  v3 = objc_opt_new();

  return v3;
}

- (id)footerAttributedStringForFont:(id)font
{
  v27 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  if ([(MUPlaceHikingTileViewModel *)self hikingItemType]- 1 > 1)
  {
    factoids = 0;
  }

  else
  {
    geoTrail = [(MUPlaceHikingTileViewModel *)self geoTrail];
    factoids = [geoTrail factoids];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = factoids;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = _MUFactoidStringForFactoid(v13, fontCopy);
        [v7 addObject:{v14, v22}];

        lastObject = [v8 lastObject];

        if (v13 != lastObject)
        {
          v16 = objc_alloc(MEMORY[0x1E696AAB0]);
          v17 = _MULocalizedStringFromThisBundle(@" · [Interpunct delimeter MapsUI]");
          v18 = [v16 initWithString:v17];

          [v7 addObject:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v19 = [v7 copy];
  v20 = [MapsUILayout buildAttributedDisplayStringForComponents:v19 reverseIfRTLLayout:1];

  return v20;
}

- (void)fetchImageTilewWithSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v10 = v9;

  geoTrail = [(MUPlaceHikingTileViewModel *)self geoTrail];
  photo = [geoTrail photo];
  v13 = [photo bestPhotoForSize:1 allowSmaller:{v10 * width, v10 * height}];

  v14 = [v13 url];
  absoluteString = [v14 absoluteString];
  v16 = [absoluteString length];

  if (v16)
  {
    mEMORY[0x1E696F190] = [MEMORY[0x1E696F190] sharedImageManager];
    v18 = [v13 url];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__MUPlaceHikingTileViewModel_fetchImageTilewWithSize_completion___block_invoke;
    v19[3] = &unk_1E821A058;
    v20 = completionCopy;
    v21 = width;
    v22 = height;
    v23 = v10;
    [mEMORY[0x1E696F190] loadAppImageAtURL:v18 completionHandler:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __65__MUPlaceHikingTileViewModel_fetchImageTilewWithSize_completion___block_invoke(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a5)
  {
    v10 = *(*(a1 + 32) + 16);

    v10();
  }

  else
  {
    v8 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__MUPlaceHikingTileViewModel_fetchImageTilewWithSize_completion___block_invoke_2;
    v11[3] = &unk_1E821A030;
    v9 = *(a1 + 32);
    v12 = 0;
    v13 = v9;
    v14 = a3;
    [MapsUIUtilities resizeImageIfNeeded:a2 toFrameSize:v11 displayScale:*(a1 + 40) completion:*(a1 + 48), v8];
  }
}

- (void)fetchFallbackIconWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    geoTrail = [(MUPlaceHikingTileViewModel *)self geoTrail];
    styleAttributes = [geoTrail styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(styleAttributes, 1, completionCopy);
  }
}

- (void)fetchBadgeIconWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    geoTrail = [(MUPlaceHikingTileViewModel *)self geoTrail];
    styleAttributes = [geoTrail styleAttributes];
    _MUFetchBadgeIconWithStyleAttributes(styleAttributes, 1, completionCopy);
  }
}

- (NSString)tileName
{
  geoTrail = [(MUPlaceHikingTileViewModel *)self geoTrail];
  name = [geoTrail name];

  return name;
}

- (MUPlaceHikingTileViewModel)initWithGEOTrail:(id)trail hikingItemType:(int)type
{
  v4 = *&type;
  trailCopy = trail;
  v10.receiver = self;
  v10.super_class = MUPlaceHikingTileViewModel;
  v7 = [(MUPlaceHikingTileViewModel *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MUPlaceHikingTileViewModel *)v7 setGeoTrail:trailCopy];
    [(MUPlaceHikingTileViewModel *)v8 setHikingItemType:v4];
  }

  return v8;
}

@end