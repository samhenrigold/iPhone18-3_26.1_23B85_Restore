@interface GEOPhotoInfoSource
- (NSArray)allPhotoInfoProviders;
@end

@implementation GEOPhotoInfoSource

- (NSArray)allPhotoInfoProviders
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_ampPhotoInfoProvider)
  {
    [v3 addObject:?];
  }

  if (self->_defaultPhotoInfoProvider)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

@end