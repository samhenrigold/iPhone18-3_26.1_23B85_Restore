@interface CUIPlaceholderCUIMutableCommonAssetStorage
- (BOOL)_removedUnusedNames;
- (BOOL)_saveBitmapInfo;
- (BOOL)_writeOutKeyFormatWithWorkaround;
- (BOOL)removeAssetName:(id)name;
- (BOOL)removeAssetNameKey:(const void *)key withLength:(unint64_t)length;
- (BOOL)setAsset:(id)asset forKey:(const void *)key withLength:(unint64_t)length;
- (BOOL)setAsset:(id)asset forKey:(id)key;
- (BOOL)updateBitmapInfo;
- (BOOL)writeToDiskAndCompact:(BOOL)compact;
- (CUIPlaceholderCUIMutableCommonAssetStorage)initWithPath:(id)path;
- (void)_allocateExtendedMetadata;
- (void)dealloc;
- (void)removeAssetForKey:(const void *)key withLength:(unint64_t)length;
- (void)removeAssetForKey:(id)key;
- (void)setAppearanceIdentifier:(unsigned __int16)identifier forName:(id)name;
- (void)setAssociatedChecksum:(unsigned int)checksum;
- (void)setAuthoringTool:(id)tool;
- (void)setCatalogGlobalData:(id)data;
- (void)setColor:(_rgbquad)color forName:(const char *)name excludeFromFilter:(BOOL)filter;
- (void)setColorSpaceID:(unsigned int)d;
- (void)setDeploymentPlatform:(id)platform;
- (void)setDeploymentPlatformVersion:(id)version;
- (void)setEnableLargeCarKeyWorkaround:(BOOL)workaround;
- (void)setExternalTags:(id)tags;
- (void)setFontName:(id)name baselineOffset:(float)offset forFontSelector:(id)selector;
- (void)setFontSize:(float)size forFontSizeSelector:(id)selector;
- (void)setKeyFormatData:(id)data;
- (void)setKeySemantics:(int)semantics;
- (void)setLocalizationIdentifier:(unsigned __int16)identifier forName:(id)name;
- (void)setRenditionCount:(unsigned int)count;
- (void)setRenditionKey:(const _renditionkeytoken *)key hotSpot:(CGPoint)spot forName:(const char *)name;
- (void)setSchemaVersion:(unsigned int)version;
- (void)setStorageVersion:(unsigned int)version;
- (void)setThinningArguments:(id)arguments;
- (void)setUuid:(id)uuid;
- (void)setVersionString:(const char *)string;
@end

@implementation CUIPlaceholderCUIMutableCommonAssetStorage

- (CUIPlaceholderCUIMutableCommonAssetStorage)initWithPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CUIPlaceholderCUIMutableCommonAssetStorage;
  v4 = [(CUIPlaceholderCUIMutableCommonAssetStorage *)&v15 init];
  if (v4)
  {
    v5 = BOMStorageNewWithOptionsAndSys([path fileSystemRepresentation], 0, 0);
    if (v5)
    {
      v6 = v5;
      *(v4 + 552) |= 1u;
      stpncpy(__dst, "EMPTY\n", 0x80uLL);
      v7 = strnlen(__dst, 0x80uLL);
      if (__dst[v7 - 1] == 10)
      {
        __dst[v7 - 1] = 0;
      }

      [(CUIPlaceholderCUICommonAssetStorage *)v4 _initDefaultHeaderVersion:__dst versionString:0.0];
      v8 = BOMStorageNewNamedBlock(v6, "CARHEADER");
      if (v8)
      {
        BOMStorageCopyToBlock(v6, v8, [(CUIPlaceholderCUICommonAssetStorage *)v4 header], 0x1B4uLL);
      }

      v9 = BOMTreeNewWithName(v6, "RENDITIONS");
      if (v9)
      {
        [(CUIPlaceholderCUICommonAssetStorage *)v4 setImagedb:v9];
        [(CUIPlaceholderCUICommonAssetStorage *)v4 setFacetKeysdb:BOMTreeNewWithName(v6, "FACETKEYS")];
        return v4;
      }

      _CUILog(4, "CoreUI: Error: unable to create image store in %@", path);
      BOMStorageFree(v6);
      v14.receiver = v4;
      v14.super_class = CUIPlaceholderCUIMutableCommonAssetStorage;
      [(CUIPlaceholderCUIMutableCommonAssetStorage *)&v14 release];
    }

    else
    {
      v10 = __error();
      v11 = strerror(*v10);
      _CUILog(4, "CoreUI: Error: unable to create storage file %@ error '%s'", path, v11);
      v13.receiver = v4;
      v13.super_class = CUIPlaceholderCUIMutableCommonAssetStorage;
      [(CUIPlaceholderCUIMutableCommonAssetStorage *)&v13 release];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPlaceholderCUIMutableCommonAssetStorage;
  [(CUIPlaceholderCUICommonAssetStorage *)&v3 dealloc];
}

- (void)setKeyFormatData:(id)data
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  keyfmt = [(CUIPlaceholderCUICommonAssetStorage *)self keyfmt];
  if (keyfmt)
  {
    free(keyfmt);
  }

  -[CUIPlaceholderCUICommonAssetStorage setKeyfmt:](self, "setKeyfmt:", malloc_type_malloc([data length], 0x10000403E1C8BA9uLL));
  [data getBytes:-[CUIPlaceholderCUICommonAssetStorage keyfmt](self length:{"keyfmt"), objc_msgSend(data, "length")}];
  v6 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
  if (!BOMStorageGetNamedBlock(v6, "KEYFORMAT"))
  {
    v7 = BOMStorageNewNamedBlock(v6, "KEYFORMAT");
    BOMStorageCopyToBlock(v6, v7, [(CUIPlaceholderCUICommonAssetStorage *)self keyfmt], 4 * ([(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8] + 3));
  }

  lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (void)setKeySemantics:(int)semantics
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    *([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 432) = semantics;
  }
}

- (void)setStorageVersion:(unsigned int)version
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    *([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 8) = version;
  }
}

- (void)setVersionString:(const char *)string
{
  header = [(CUIPlaceholderCUICommonAssetStorage *)self header];
  if (string && header)
  {
    v6 = ([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 148);

    strncpy(v6, string, 0xFFuLL);
  }
}

- (void)setSchemaVersion:(unsigned int)version
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    *([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 424) = version;
  }
}

- (void)setRenditionCount:(unsigned int)count
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    *([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 16) = count;
  }
}

- (void)setUuid:(id)uuid
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    v5 = [(CUIPlaceholderCUICommonAssetStorage *)self header]+ 404;

    [uuid getUUIDBytes:v5];
  }
}

- (void)setAssociatedChecksum:(unsigned int)checksum
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    *([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 420) = checksum;
  }
}

- (void)setColorSpaceID:(unsigned int)d
{
  if ([(CUIPlaceholderCUICommonAssetStorage *)self header])
  {
    *([(CUIPlaceholderCUICommonAssetStorage *)self header]+ 428) = d;
  }
}

- (void)setEnableLargeCarKeyWorkaround:(BOOL)workaround
{
  if (workaround)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 552) = *(self + 552) & 0xFD | v3;
}

- (void)_allocateExtendedMetadata
{
  [(CUIPlaceholderCUICommonAssetStorage *)self _loadExtendedMetadata];
  if (![(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata])
  {
    [(CUIPlaceholderCUICommonAssetStorage *)self setExtendedMetadata:malloc_type_calloc(1uLL, 0x404uLL, 0x100004084B5CCE0uLL)];
    *[(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata]= 1096041805;
  }
}

- (void)setThinningArguments:(id)arguments
{
  [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([arguments length])
  {
    extendedMetadata = [(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [arguments UTF8String];

    strncpy(extendedMetadata->var1, uTF8String, 0xFFuLL);
  }
}

- (void)setDeploymentPlatform:(id)platform
{
  [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([platform length])
  {
    extendedMetadata = [(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [platform UTF8String];

    strncpy(extendedMetadata->var3, uTF8String, 0xFFuLL);
  }
}

- (void)setDeploymentPlatformVersion:(id)version
{
  [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([version length])
  {
    extendedMetadata = [(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [version UTF8String];

    strncpy(extendedMetadata->var2, uTF8String, 0xFFuLL);
  }
}

- (void)setAuthoringTool:(id)tool
{
  [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _allocateExtendedMetadata];
  if ([tool length])
  {
    extendedMetadata = [(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata];
    uTF8String = [tool UTF8String];

    strncpy(extendedMetadata->var4, uTF8String, 0xFFuLL);
  }
}

- (BOOL)setAsset:(id)asset forKey:(id)key
{
  bytes = [key bytes];
  v8 = [key length];

  return [(CUIPlaceholderCUIMutableCommonAssetStorage *)self setAsset:asset forKey:bytes withLength:v8];
}

- (BOOL)setAsset:(id)asset forKey:(const void *)key withLength:(unint64_t)length
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v9 = BOMTreeSetValue(-[CUIPlaceholderCUICommonAssetStorage imagedb](self, "imagedb"), key, length, [asset bytes], objc_msgSend(asset, "length"));
  v10 = v9;
  if (self->_bitmapInfo)
  {
    if (v9)
    {
LABEL_3:
      _CUILog(4, "CoreUI: Error: unable to add asset to store");
      return v10 == 0;
    }
  }

  else
  {
    self->_bitmapInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  keyFormat = [(CUIPlaceholderCUICommonAssetStorage *)self keyFormat];
  var2 = keyFormat->var2;
  if (var2)
  {
    v13 = keyFormat;
    var3 = keyFormat->var3;
    v15 = keyFormat->var3;
    keyCopy = key;
    while (1)
    {
      v17 = *v15++;
      if (v17 == 17)
      {
        break;
      }

      ++keyCopy;
      if (!--var2)
      {
        goto LABEL_13;
      }
    }

    v18 = *keyCopy;
    if (*keyCopy)
    {
      v19 = 0;
      do
      {
        [(CUIPlaceholderCUICommonAssetStorage *)self _addBitmapIndexForNameIdentifier:v18 attribute:var3[v19] withValue:*(key + v19) toDictionary:self->_bitmapInfo];
        ++v19;
      }

      while (v19 < v13->var2);
    }
  }

LABEL_13:
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v10 == 0;
}

- (void)setCatalogGlobalData:(id)data
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  [(CUIPlaceholderCUICommonAssetStorage *)self setGlobals:data];
  lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (void)setAppearanceIdentifier:(unsigned __int16)identifier forName:(id)name
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(name);
  v8 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xB4D43204uLL);
  CFStringGetFileSystemRepresentation(name, v8, MaximumSizeOfFileSystemRepresentation);
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (![(CUIPlaceholderCUICommonAssetStorage *)self appearancedb])
  {
    v9 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setAppearancedb:BOMTreeNewWithName(v9, "APPEARANCEKEYS")];
  }

  appearancedb = [(CUIPlaceholderCUICommonAssetStorage *)self appearancedb];
  v11 = strlen(v8);
  if (BOMTreeSetValue(appearancedb, v8, v11, &identifierCopy2, 2uLL))
  {
    _CUILog(4, "CoreUI: Error: unable to add look identifier '%@' with value '%d' to store", name, identifierCopy);
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  free(v8);
}

- (void)setLocalizationIdentifier:(unsigned __int16)identifier forName:(id)name
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(name);
  v8 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x42ED2B6EuLL);
  CFStringGetFileSystemRepresentation(name, v8, MaximumSizeOfFileSystemRepresentation);
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (![(CUIPlaceholderCUICommonAssetStorage *)self localizationdb])
  {
    v9 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setLocalizationdb:BOMTreeNewWithName(v9, "LOCALIZATIONKEYS")];
  }

  localizationdb = [(CUIPlaceholderCUICommonAssetStorage *)self localizationdb];
  v11 = strlen(v8);
  if (BOMTreeSetValue(localizationdb, v8, v11, &identifierCopy2, 2uLL))
  {
    _CUILog(4, "CoreUI: Error: unable to add localization identifier '%@' with value '%d' to store", name, identifierCopy);
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  free(v8);
}

- (BOOL)updateBitmapInfo
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_bitmapInfo = v3;
  v4 = [(CUIPlaceholderCUICommonAssetStorage *)self _buildBitmapInfoIntoDictionary:v3];
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v4;
}

- (void)setColor:(_rgbquad)color forName:(const char *)name excludeFromFilter:(BOOL)filter
{
  filterCopy = filter;
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (![(CUIPlaceholderCUICommonAssetStorage *)self colordb])
  {
    v9 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setColordb:BOMTreeNewWithName(v9, "COLORS")];
  }

  if (name && [(CUIPlaceholderCUICommonAssetStorage *)self colordb])
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    __strlcpy_chk();
    v10[0] = 1;
    v10[1] = filterCopy;
    v10[2] = color;
    if (BOMTreeSetValue([(CUIPlaceholderCUICommonAssetStorage *)self colordb], v11, 0x84uLL, v10, 0xCuLL))
    {
      _CUILog(4, "CoreUI: Error: unable to add color to store");
    }

    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  }
}

- (void)setFontName:(id)name baselineOffset:(float)offset forFontSelector:(id)selector
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if ([(CUIPlaceholderCUICommonAssetStorage *)self fontdb])
  {
    if (!selector)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setFontdb:BOMTreeNewWithName(v9, "FONTS")];
    if (!selector)
    {
LABEL_11:
      lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

      os_unfair_lock_unlock(lock);
      return;
    }
  }

  if (![(CUIPlaceholderCUICommonAssetStorage *)self fontdb])
  {
    goto LABEL_11;
  }

  memset(v13, 0, sizeof(v13));
  if ([selector getBytes:v13 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(selector, "length"), 0}])
  {
    offsetCopy = 0.0;
    memset(v11, 0, sizeof(v11));
    if ([name getBytes:v11 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(name, "length"), 0}])
    {
      offsetCopy = offset;
      if (BOMTreeSetValue([(CUIPlaceholderCUICommonAssetStorage *)self fontdb], v13, 0x80uLL, v11, 0x84uLL))
      {
        _CUILog(4, "CoreUI: Error: unable to add font to store");
      }
    }
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
}

- (void)setFontSize:(float)size forFontSizeSelector:(id)selector
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if ([(CUIPlaceholderCUICommonAssetStorage *)self fontsizedb])
  {
    if (!selector)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setFontsizedb:BOMTreeNewWithName(v7, "FONTSIZES")];
    if (!selector)
    {
LABEL_10:
      lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

      os_unfair_lock_unlock(lock);
      return;
    }
  }

  if (![(CUIPlaceholderCUICommonAssetStorage *)self fontsizedb])
  {
    goto LABEL_10;
  }

  memset(v10, 0, sizeof(v10));
  if ([selector getBytes:v10 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(selector, "length"), 0}])
  {
    sizeCopy = size;
    if (BOMTreeSetValue([(CUIPlaceholderCUICommonAssetStorage *)self fontsizedb], v10, 0x80uLL, &sizeCopy, 4uLL))
    {
      _CUILog(4, "CoreUI: Error: unable to add font size to store");
    }
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
}

- (void)setExternalTags:(id)tags
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CUIPlaceholderCUIMutableCommonAssetStorage;
  v20 = 0;
  [(CUIPlaceholderCUICommonAssetStorage *)&v19 setExternalTags:tags];
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v21 = 1163414603;
  v22 = [-[CUIPlaceholderCUICommonAssetStorage externalTags](self "externalTags")];
  [v4 appendBytes:&v21 length:12];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  externalTags = [(CUIPlaceholderCUICommonAssetStorage *)self externalTags];
  v6 = [externalTags countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(externalTags);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v10);
        v12 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x49BD4B70uLL);
        CFStringGetFileSystemRepresentation(v10, v12, MaximumSizeOfFileSystemRepresentation);
        LODWORD(v20) = 1008;
        HIDWORD(v20) = strnlen(v12, MaximumSizeOfFileSystemRepresentation) + 1;
        [v4 appendBytes:&v20 length:8];
        [v4 appendBytes:v12 length:HIDWORD(v20)];
        free(v12);
      }

      v7 = [externalTags countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
  NamedBlock = BOMStorageGetNamedBlock(v13, "EXTERNAL_KEYS");
  if (NamedBlock || (NamedBlock = BOMStorageNewNamedBlock(v13, "EXTERNAL_KEYS"), NamedBlock))
  {
    BOMStorageCopyToBlock(v13, NamedBlock, [v4 bytes], objc_msgSend(v4, "length"));
  }
}

- (void)removeAssetForKey:(id)key
{
  bytes = [key bytes];
  v6 = [key length];

  [(CUIPlaceholderCUIMutableCommonAssetStorage *)self removeAssetForKey:bytes withLength:v6];
}

- (void)removeAssetForKey:(const void *)key withLength:(unint64_t)length
{
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  if (BOMTreeGetValue([(CUIPlaceholderCUICommonAssetStorage *)self imagedb], key, length) && BOMTreeRemoveValue([(CUIPlaceholderCUICommonAssetStorage *)self imagedb], key, length))
  {
    _CUILog(4, "CoreUI: Error: unable to remove asset from store");
  }

  lock = [(CUIPlaceholderCUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (BOOL)removeAssetName:(id)name
{
  uTF8String = [name UTF8String];
  v6 = [name length];

  return [(CUIPlaceholderCUIMutableCommonAssetStorage *)self removeAssetNameKey:uTF8String withLength:v6];
}

- (BOOL)removeAssetNameKey:(const void *)key withLength:(unint64_t)length
{
  if (key)
  {
    os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    if (BOMTreeGetValue([(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb], key, length))
    {
      if (!BOMTreeRemoveValue([(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb], key, length))
      {
        v7 = 1;
        goto LABEL_8;
      }

      _CUILog(4, "CoreUI: Error: unable to remove rendition key from store");
    }

    v7 = 0;
LABEL_8:
    os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
    return v7;
  }

  return 0;
}

- (void)setRenditionKey:(const _renditionkeytoken *)key hotSpot:(CGPoint)spot forName:(const char *)name
{
  y = spot.y;
  x = spot.x;
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v10 = CUIRenditionKeyTokenCount(key);
  v16 = v10;
  v15 = x;
  v14 = y;
  v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4 * v10 + 6];
  [v11 appendBytes:&v15 length:2];
  [v11 appendBytes:&v14 length:2];
  [v11 appendBytes:&v16 length:2];
  [v11 appendBytes:key length:4 * v16];
  facetKeysdb = [(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb];
  v13 = strlen(name);
  if (BOMTreeSetValue(facetKeysdb, name, v13, [v11 bytes], objc_msgSend(v11, "length")))
  {
    _CUILog(4, "CoreUI: Error: unable to add renditionkey to store");
  }

  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
}

- (BOOL)_saveBitmapInfo
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_bitmapInfo || (*(self + 552) & 1) == 0)
  {
    return 1;
  }

  if ([(CUIPlaceholderCUICommonAssetStorage *)self bitmapKeydb])
  {
    BOMTreeRemoveAndFree([(CUIPlaceholderCUICommonAssetStorage *)self bitmapKeydb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setBitmapKeydb:0];
  }

  if (![(CUIPlaceholderCUICommonAssetStorage *)self bitmapKeydb])
  {
    v4 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
    [(CUIPlaceholderCUICommonAssetStorage *)self setBitmapKeydb:BOMTreeNewWithOptions(v4, 0, "BITMAPKEYS", 1024, 1)];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  bitmapInfo = self->_bitmapInfo;
  v6 = [(NSMutableDictionary *)bitmapInfo countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_10:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(bitmapInfo);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      integerValue = [v10 integerValue];
      v12 = [(NSMutableDictionary *)self->_bitmapInfo objectForKey:v10];
      if ([v12 numberOfBitsSet])
      {
        archivedData = [v12 archivedData];
        if (BOMTreeSetValue(-[CUIPlaceholderCUICommonAssetStorage bitmapKeydb](self, "bitmapKeydb"), integerValue, 2uLL, [archivedData bytes], objc_msgSend(archivedData, "length")))
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)bitmapInfo countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (!BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self bitmapKeydb]))
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)_removedUnusedNames
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_bitmapInfo && (*(self + 552) & 1) != 0)
  {
    v27[0] = 0;
    v27[1] = 0;
    _allRenditionNames = [(CUIPlaceholderCUICommonAssetStorage *)self _allRenditionNames];
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:_allRenditionNames];
    if ([_allRenditionNames count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = [_allRenditionNames countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v24;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v24 != v7)
            {
              objc_enumerationMutation(_allRenditionNames);
            }

            v9 = *(*(&v23 + 1) + 8 * i);
            v10 = -[CUIPlaceholderCUICommonAssetStorage _renditionKeyForName:hotSpot:](self, "_renditionKeyForName:hotSpot:", [v9 UTF8String], v27);
            if (v10 && -[NSMutableDictionary objectForKey:](self->_bitmapInfo, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:{CUIRenditionKeyValueForAttribute(&v10->identifier, 17)}]))
            {
              [v4 removeObject:v9];
            }
          }

          v6 = [_allRenditionNames countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v6);
      }

      if ([v4 count])
      {
        v11 = [v4 count];
        if (v11 != [_allRenditionNames count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v4);
                }

                uTF8String = [*(*(&v19 + 1) + 8 * j) UTF8String];
                v17 = strlen(uTF8String);
                BOMTreeRemoveValue([(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb], uTF8String, v17);
              }

              v13 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
            }

            while (v13);
          }

          BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb]);
        }
      }
    }
  }

  return 1;
}

- (BOOL)_writeOutKeyFormatWithWorkaround
{
  v3 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
  if (![(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8])
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (([(CUIPlaceholderCUICommonAssetStorage *)self keyfmt]+ 4 * v4)[12] >= 0x18u)
    {
      if (!v5)
      {
        v5 = malloc_type_calloc([(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8], 4uLL, 0x100004052888210uLL);
      }

      v5[v4] = ([(CUIPlaceholderCUICommonAssetStorage *)self keyfmt]+ 4 * v4)[12];
    }

    ++v4;
  }

  while (v4 < [(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8]);
  if (!v5)
  {
    return 0;
  }

  NamedBlock = BOMStorageGetNamedBlock(v3, "KEYFORMAT");
  v7 = BOMStorageGetNamedBlock(v3, "KEYFORMATWORKAROUND");
  if (!v7)
  {
    v7 = BOMStorageNewNamedBlock(v3, "KEYFORMATWORKAROUND");
  }

  v8 = malloc_type_malloc(4 * [(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8] + 12, 0x10000403E1C8BA9uLL);
  memcpy(v8, [(CUIPlaceholderCUICommonAssetStorage *)self keyfmt], 4 * ([(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8] + 3));
  if ([(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8])
  {
    v9 = 0;
    do
    {
      if (v5[v9])
      {
        v8[v9 + 3] = 5;
      }

      ++v9;
    }

    while (v9 < [(CUIPlaceholderCUICommonAssetStorage *)self keyfmt][8]);
  }

  BOMStorageCopyToBlock(v3, NamedBlock, v8, 4 * (v8[2] + 3));
  BOMStorageCopyToBlock(v3, v7, v5, 4 * v8[2]);
  free(v8);
  free(v5);
  return 1;
}

- (BOOL)writeToDiskAndCompact:(BOOL)compact
{
  compactCopy = compact;
  os_unfair_lock_lock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  v5 = BOMTreeStorage([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]);
  NamedBlock = BOMStorageGetNamedBlock(v5, "CARHEADER");
  BOMStorageCopyToBlock(v5, NamedBlock, [(CUIPlaceholderCUICommonAssetStorage *)self header], 0x1B4uLL);
  if ([(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata])
  {
    v7 = BOMStorageGetNamedBlock(v5, "EXTENDED_METADATA");
    if (!v7)
    {
      v7 = BOMStorageNewNamedBlock(v5, "EXTENDED_METADATA");
    }

    BOMStorageCopyToBlock(v5, v7, [(CUIPlaceholderCUICommonAssetStorage *)self extendedMetadata], 0x404uLL);
  }

  if ([(NSData *)[(CUIPlaceholderCUICommonAssetStorage *)self globals] length])
  {
    v8 = BOMStorageGetNamedBlock(v5, "CARGLOBALS");
    if (!v8)
    {
      v8 = BOMStorageNewNamedBlock(v5, "CARGLOBALS");
    }

    BOMStorageCopyToBlock(v5, v8, [(NSData *)[(CUIPlaceholderCUICommonAssetStorage *)self globals] bytes], [(NSData *)[(CUIPlaceholderCUICommonAssetStorage *)self globals] length]);
  }

  if ((*(self + 552) & 2) != 0)
  {
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _writeOutKeyFormatWithWorkaround];
  }

  v9 = !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self imagedb]) && (![(CUIPlaceholderCUICommonAssetStorage *)self colordb]|| !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self colordb])) && (![(CUIPlaceholderCUICommonAssetStorage *)self fontdb]|| !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self fontdb])) && (![(CUIPlaceholderCUICommonAssetStorage *)self fontsizedb]|| !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self fontsizedb])) && (![(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb]|| !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self facetKeysdb])) && (![(CUIPlaceholderCUICommonAssetStorage *)self appearancedb]|| !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self appearancedb])) && (![(CUIPlaceholderCUICommonAssetStorage *)self localizationdb]|| !BOMTreeCommit([(CUIPlaceholderCUICommonAssetStorage *)self localizationdb])) && (!self->_bitmapInfo || [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _saveBitmapInfo]&& [(CUIPlaceholderCUIMutableCommonAssetStorage *)self _removedUnusedNames]) && (!compactCopy || !BOMStorageCompact(v5)) && !BOMStorageCommit(v5);
  os_unfair_lock_unlock([(CUIPlaceholderCUICommonAssetStorage *)self lock]);
  return v9;
}

@end