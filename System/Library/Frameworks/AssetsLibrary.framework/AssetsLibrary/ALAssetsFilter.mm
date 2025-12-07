@interface ALAssetsFilter
+ (ALAssetsFilter)allAssets;
+ (ALAssetsFilter)allPhotos;
+ (ALAssetsFilter)allVideos;
- (ALAssetsFilter)init;
- (int)_filter;
- (void)_setFilter:(int)filter;
- (void)dealloc;
@end

@implementation ALAssetsFilter

- (void)_setFilter:(int)filter
{
  v3 = *&filter;
  internal = [(ALAssetsFilter *)self internal];

  [(ALAssetsFilterInternal *)internal setFilter:v3];
}

- (int)_filter
{
  internal = [(ALAssetsFilter *)self internal];

  return [(ALAssetsFilterInternal *)internal filter];
}

- (void)dealloc
{
  [(ALAssetsFilter *)self setInternal:0];
  v3.receiver = self;
  v3.super_class = ALAssetsFilter;
  [(ALAssetsFilter *)&v3 dealloc];
}

- (ALAssetsFilter)init
{
  v5.receiver = self;
  v5.super_class = ALAssetsFilter;
  v2 = [(ALAssetsFilter *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(ALAssetsFilterInternal);
    [(ALAssetsFilter *)v2 setInternal:v3];
  }

  return v2;
}

+ (ALAssetsFilter)allAssets
{
  v2 = objc_alloc_init(ALAssetsFilter);
  [(ALAssetsFilter *)v2 _setFilter:0];
  return v2;
}

+ (ALAssetsFilter)allVideos
{
  v2 = objc_alloc_init(ALAssetsFilter);
  [(ALAssetsFilter *)v2 _setFilter:2];
  return v2;
}

+ (ALAssetsFilter)allPhotos
{
  v2 = objc_alloc_init(ALAssetsFilter);
  [(ALAssetsFilter *)v2 _setFilter:1];
  return v2;
}

@end