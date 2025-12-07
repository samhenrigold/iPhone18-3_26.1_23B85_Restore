@interface TXRAssetCatalogConfig
- (TXRAssetCatalogConfig)initWithTexture:(id)texture;
- (void)addFileAttributesForLevel:(unint64_t)level;
- (void)addFileAttributesForLevel:(unint64_t)level face:(unint64_t)face;
- (void)addFileAttributesForLevel:(unint64_t)level face:(unint64_t)face fileFormat:(unint64_t)format colorSpace:(CGColorSpace *)space exifOrientation:(unsigned __int8)orientation;
- (void)addFileAttributesForLevel:(unint64_t)level fileFormat:(unint64_t)format colorSpace:(CGColorSpace *)space exifOrientation:(unsigned __int8)orientation;
@end

@implementation TXRAssetCatalogConfig

- (TXRAssetCatalogConfig)initWithTexture:(id)texture
{
  textureCopy = texture;
  v13.receiver = self;
  v13.super_class = TXRAssetCatalogConfig;
  v6 = [(TXRAssetCatalogConfig *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_texture, texture);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    fileAttributesList = v7->_fileAttributesList;
    v7->_fileAttributesList = v8;

    v10 = objc_alloc_init(TXRAssetCatalogFileAttributes);
    baseFileAttributes = v7->_baseFileAttributes;
    v7->_baseFileAttributes = v10;
  }

  return v7;
}

- (void)addFileAttributesForLevel:(unint64_t)level
{
  v9 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v9 setLevel:level];
  objectEnumerator = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    do
    {
      if ([v7 level] == level)
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v7];
      }

      nextObject2 = [objectEnumerator nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v9];
}

- (void)addFileAttributesForLevel:(unint64_t)level face:(unint64_t)face
{
  v11 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v11 setLevel:level];
  [(TXRAssetCatalogMipFileAttributes *)v11 setFace:face];
  objectEnumerator = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    do
    {
      if ([v9 level] == level && (objc_msgSend(v9, "face") == face || objc_msgSend(v9, "doesSpecifyAllFaces")))
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v9];
      }

      nextObject2 = [objectEnumerator nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v11];
}

- (void)addFileAttributesForLevel:(unint64_t)level fileFormat:(unint64_t)format colorSpace:(CGColorSpace *)space exifOrientation:(unsigned __int8)orientation
{
  orientationCopy = orientation;
  v15 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v15 setLevel:level];
  [(TXRAssetCatalogFileAttributes *)v15 setExifOrientation:orientationCopy];
  [(TXRAssetCatalogFileAttributes *)v15 setFileFormat:format];
  [(TXRAssetCatalogFileAttributes *)v15 setColorSpace:space];
  objectEnumerator = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v13 = nextObject;
    do
    {
      if ([v13 level] == level)
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v13];
      }

      nextObject2 = [objectEnumerator nextObject];

      v13 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v15];
}

- (void)addFileAttributesForLevel:(unint64_t)level face:(unint64_t)face fileFormat:(unint64_t)format colorSpace:(CGColorSpace *)space exifOrientation:(unsigned __int8)orientation
{
  orientationCopy = orientation;
  v17 = objc_alloc_init(TXRAssetCatalogMipFileAttributes);
  [(TXRAssetCatalogMipFileAttributes *)v17 setLevel:level];
  [(TXRAssetCatalogMipFileAttributes *)v17 setFace:face];
  [(TXRAssetCatalogFileAttributes *)v17 setExifOrientation:orientationCopy];
  [(TXRAssetCatalogFileAttributes *)v17 setFileFormat:format];
  [(TXRAssetCatalogFileAttributes *)v17 setColorSpace:space];
  objectEnumerator = [(NSMutableSet *)self->_fileAttributesList objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v15 = nextObject;
    do
    {
      if ([v15 level] == level && (objc_msgSend(v15, "face") == face || objc_msgSend(v15, "doesSpecifyAllFaces")))
      {
        [(NSMutableSet *)self->_fileAttributesList removeObject:v15];
      }

      nextObject2 = [objectEnumerator nextObject];

      v15 = nextObject2;
    }

    while (nextObject2);
  }

  [(NSMutableSet *)self->_fileAttributesList addObject:v17];
}

@end