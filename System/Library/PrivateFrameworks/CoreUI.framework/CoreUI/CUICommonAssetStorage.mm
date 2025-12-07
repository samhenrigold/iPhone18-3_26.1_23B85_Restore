@interface CUICommonAssetStorage
+ (BOOL)isValidAssetStorageWithBytes:(const void *)bytes length:(unint64_t)length;
+ (BOOL)isValidAssetStorageWithURL:(id)l;
- (BOOL)_buildBitmapInfoIntoDictionary:(id)dictionary;
- (BOOL)_commonInitWithStorage:(_BOMStorage *)storage forWritting:(BOOL)writting;
- (BOOL)assetExistsForKey:(id)key;
- (BOOL)assetExistsForKeyData:(const void *)data length:(unint64_t)length;
- (BOOL)enumerateColorsBlock:(id)block;
- (BOOL)enumerateKeysAndObjectsUsingBlock:(id)block;
- (BOOL)getBaselineOffset:(float *)offset forFontType:(id)type;
- (BOOL)getColor:(_colordef *)color forName:(const char *)name;
- (BOOL)getFontName:(id *)name baselineOffset:(float *)offset forFontType:(id)type;
- (BOOL)hasColorForName:(const char *)name;
- (BOOL)writeToPath:(id)path withTreePageSize:(unsigned int)size;
- (CUICommonAssetStorage)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (CUICommonAssetStorage)initWithPath:(id)path forWriting:(BOOL)writing;
- (NSDictionary)appearances;
- (const)_fontValueForFontType:(id)type;
- (const)_renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot;
- (const)keyFormat;
- (const)mainVersionString;
- (const)renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot;
- (const)versionString;
- (float)fontSizeForFontSizeType:(id)type;
- (id)_allRenditionNames;
- (id)_readAppearances;
- (id)allAssetKeys;
- (id)allRenditionNames;
- (id)assetForKey:(id)key;
- (id)assetKeysMatchingBlock:(id)block;
- (id)authoringTool;
- (id)catalogGlobalData;
- (id)deploymentPlatformString;
- (id)deploymentPlatformVersion;
- (id)description;
- (id)facetValueNameMap;
- (id)keyFormatData;
- (id)localizations;
- (id)nameForAppearanceIdentifier:(unsigned __int16)identifier;
- (id)nameForLocalizationIdentifier:(unsigned __int16)identifier;
- (id)path;
- (id)renditionInfoForIdentifier:(unsigned __int16)identifier;
- (id)renditionNameForKeyBaseList:(const _renditionkeytoken *)list;
- (id)renditionNameForKeyList:(_renditionkeytoken *)list;
- (id)renditionNamesWithKeys;
- (id)thinningArguments;
- (id)uuid;
- (int)validateBitmapInfo;
- (int)validatekeyformat;
- (int64_t)_storagefileTimestamp;
- (int64_t)deploymentPlatform;
- (int64_t)maximumRenditionKeyTokenCount;
- (int64_t)storageTimestamp;
- (unsigned)appearanceIdentifierForName:(id)name;
- (unsigned)associatedChecksum;
- (unsigned)colorSpaceID;
- (unsigned)distilledInCoreUIVersion;
- (unsigned)localizationIdentifierForName:(id)name;
- (unsigned)renditionCount;
- (unsigned)schemaVersion;
- (unsigned)storageVersion;
- (unsigned)thinnedWithCoreUIVersion;
- (void)_addBitmapIndexForNameIdentifier:(unsigned __int16)identifier attribute:(int)attribute withValue:(unsigned __int16)value toDictionary:(id)dictionary;
- (void)_bringHeaderInfoUpToDate;
- (void)_initDefaultHeaderVersion:(double)version versionString:(const char *)string;
- (void)_loadExtendedMetadata;
- (void)_swapHeader;
- (void)_swapKeyFormat;
- (void)_swapRenditionKeyArray:(unsigned __int16 *)array;
- (void)dealloc;
- (void)enumerateBitmapIndexUsingBlock:(id)block;
- (void)enumerateKeysAndObjectsWithoutIgnoringUsingBlock:(id)block;
- (void)enumerateRenditionInfosUsingBlock:(id)block;
- (void)setExternalTags:(id)tags;
@end

@implementation CUICommonAssetStorage

- (void)_bringHeaderInfoUpToDate
{
  header = self->_header;
  if (header->var2 <= 5)
  {
    header->var9 = 1;
  }
}

- (void)_loadExtendedMetadata
{
  if (!self->_extendedMetadata)
  {
    v3 = BOMTreeStorage([(CUICommonAssetStorage *)self imagedb]);
    NamedBlock = BOMStorageGetNamedBlock();
    if (NamedBlock)
    {
      v5 = NamedBlock;
      if ((*(self + 108) & 2) != 0)
      {
        self->_extendedMetadata = BOMStorageReadFromBlock(v3, NamedBlock);
      }

      else
      {
        v6 = BOMStorageSizeOfBlock(v3, NamedBlock);
        v7 = malloc_type_calloc(1uLL, 0x404uLL, 0x100004084B5CCE0uLL);
        self->_extendedMetadata = v7;
        if (v6 >= 0x404)
        {
          v8 = 1028;
        }

        else
        {
          v8 = v6;
        }

        BOMStorageCopyFromBlockRange(v3, v5, 0, v8, v7);
      }
    }
  }
}

- (id)path
{
  BOMTreeStorage(self->_imagedb);
  BOMStorageFileName();
  v3 = v2;
  v4 = +[NSFileManager defaultManager];
  v5 = strlen(v3);

  return [(NSFileManager *)v4 stringWithFileSystemRepresentation:v3 length:v5];
}

- (const)keyFormat
{
  if (self->_keyfmt)
  {
    return self->_keyfmt;
  }

  else
  {
    return CUIDefaultThemeRenditionKeyFormat(self->_header->var11, self->_header->var2);
  }
}

- (unsigned)storageVersion
{
  header = self->_header;
  if (header)
  {
    return header->var2;
  }

  else
  {
    return 1;
  }
}

- (NSDictionary)appearances
{
  result = self->_appearances;
  if (!result)
  {
    result = [-[CUICommonAssetStorage _readAppearances](self "_readAppearances")];
    self->_appearances = result;
  }

  return result;
}

- (id)localizations
{
  if (self->_localizationdb)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    for (i = BOMTreeIteratorNew(self->_localizationdb, 0, 0, 0); !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
    {
      v5 = BOMTreeIteratorValue(i);
      if (v5)
      {
        v6 = *v5;
        v7 = BOMTreeIteratorKey(i);
        v8 = [[NSString alloc] initWithBytes:v7 length:BOMTreeIteratorKeySize(i) encoding:4];
        [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v6), v8}];
      }
    }

    BOMTreeIteratorFree(i);
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {

    return v3;
  }

  else
  {

    return 0;
  }
}

- (unsigned)distilledInCoreUIVersion
{
  header = self->_header;
  if (header)
  {
    LODWORD(v2) = header->var1;
    return v2;
  }

  else
  {
    return floor(971.6);
  }
}

- (int64_t)deploymentPlatform
{
  deploymentPlatformString = [(CUICommonAssetStorage *)self deploymentPlatformString];

  return CUIPlatformForPlatformString(deploymentPlatformString);
}

- (id)deploymentPlatformString
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata || !extendedMetadata->var3[0])
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var3];
}

- (void)dealloc
{
  v3 = BOMTreeStorage(self->_imagedb);
  BOMTreeFree(self->_imagedb);
  BOMTreeFree(self->_colordb);
  BOMTreeFree(self->_fontdb);
  BOMTreeFree(self->_fontsizedb);
  BOMTreeFree(self->_facetKeysdb);
  BOMTreeFree(self->_bitmapKeydb);
  BOMTreeFree(self->_appearancedb);
  BOMTreeFree(self->_localizationdb);
  header = self->_header;
  if (header)
  {
    free(header);
  }

  keyfmt = self->_keyfmt;
  if (keyfmt)
  {
    free(keyfmt);
  }

  for (i = 0; i != 20; ++i)
  {
    v7 = (&self->super.isa + i);

    v7[20] = 0;
    self->_renditionInfoCacheLookup[i] = 0;
  }

  if (BOMStorageIsOpenForWriting(v3) || !BOMStorageMemoryMapped(v3))
  {
    extendedMetadata = self->_extendedMetadata;
    if (extendedMetadata)
    {
      free(extendedMetadata);
    }
  }

  BOMStorageFree(v3);
  v9.receiver = self;
  v9.super_class = CUICommonAssetStorage;
  [(CUICommonAssetStorage *)&v9 dealloc];
}

- (id)_readAppearances
{
  if (self->_appearancedb)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    for (i = BOMTreeIteratorNew(self->_appearancedb, 0, 0, 0); !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
    {
      v5 = BOMTreeIteratorValue(i);
      if (v5)
      {
        v6 = *v5;
        v7 = BOMTreeIteratorKey(i);
        v8 = [[NSString alloc] initWithBytes:v7 length:BOMTreeIteratorKeySize(i) encoding:4];
        [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v6), v8}];
      }
    }

    BOMTreeIteratorFree(i);
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {

    return v3;
  }

  else
  {

    return 0;
  }
}

- (unsigned)renditionCount
{
  header = self->_header;
  if (header)
  {
    return header->var4;
  }

  else
  {
    return 0;
  }
}

- (void)setExternalTags:(id)tags
{
  externalTags = self->_externalTags;
  if (externalTags != tags)
  {

    v6 = self->_externalTags;

    v7 = v6;
  }
}

- (void)_initDefaultHeaderVersion:(double)version versionString:(const char *)string
{
  *(self + 27) &= 0xFu;
  v7 = malloc_type_malloc(0x1B4uLL, 0x100004050C72333uLL);
  self->_header = v7;
  *&v7->var0 = 0u;
  *&v7->var4 = 0u;
  *&v7->var5[12] = 0u;
  *&v7->var5[28] = 0u;
  *&v7->var5[44] = 0u;
  *&v7->var5[60] = 0u;
  *&v7->var5[76] = 0u;
  *&v7->var5[92] = 0u;
  *&v7->var5[108] = 0u;
  *&v7->var5[124] = 0u;
  *&v7->var6[12] = 0u;
  *&v7->var6[28] = 0u;
  *&v7->var6[44] = 0u;
  *&v7->var6[60] = 0u;
  *&v7->var6[76] = 0u;
  *&v7->var6[92] = 0u;
  *&v7->var6[108] = 0u;
  *&v7->var6[124] = 0u;
  *&v7->var6[140] = 0u;
  *&v7->var6[156] = 0u;
  *&v7->var6[172] = 0u;
  *&v7->var6[188] = 0u;
  *&v7->var6[204] = 0u;
  *&v7->var6[220] = 0u;
  *&v7->var6[236] = 0u;
  *&v7->var6[252] = 0u;
  *&v7->var7[12] = 0u;
  v7->var11 = 0;
  header = self->_header;
  header->var0 = 1129595218;
  header->var1 = vcvtmd_u64_f64(version);
  *&header->var2 = 1;
  header->var4 = 0;
  strncpy(header->var5, string, 0x80uLL);
  uuid_generate_random(self->_header->var7);
  *&self->_header->var8 = xmmword_18E021E90;
  *&self->_lock._os_unfair_lock_opaque = 0;
}

- (void)_swapHeader
{
  header = self->_header;
  *&header->var1 = vrev32q_s8(*&header->var1);
  header->var11 = bswap32(header->var11);
  *&header->var8 = vrev32_s8(*&header->var8);
}

- (void)_swapKeyFormat
{
  keyfmt = self->_keyfmt;
  v3 = 3;
  p_var0 = &keyfmt->var0;
  do
  {
    *p_var0 = bswap32(*p_var0);
    ++p_var0;
    --v3;
  }

  while (v3);
  if (keyfmt->var2)
  {
    v5 = 0;
    do
    {
      p_var0[v5] = bswap32(p_var0[v5]);
      ++v5;
    }

    while (v5 < keyfmt->var2);
  }
}

- (CUICommonAssetStorage)initWithPath:(id)path forWriting:(BOOL)writing
{
  writingCopy = writing;
  v10.receiver = self;
  v10.super_class = CUICommonAssetStorage;
  v6 = [(CUICommonAssetStorage *)&v10 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  BOMExceptionHandlerSetDefault();
  v7 = BOMStorageOpenWithSys([path fileSystemRepresentation], writingCopy, 0);
  if (!v7)
  {
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -initWithPath: Unable to read file at '%@'", path);
LABEL_7:

    return 0;
  }

  v8 = v7;
  if (![(CUICommonAssetStorage *)v6 _commonInitWithStorage:v7 forWritting:writingCopy])
  {
    BOMStorageFree(v8);
    goto LABEL_7;
  }

LABEL_4:
  v6->_facetValueNameDict = 0;
  return v6;
}

- (CUICommonAssetStorage)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = CUICommonAssetStorage;
  v6 = [(CUICommonAssetStorage *)&v10 init];
  if (v6)
  {
    BOMExceptionHandlerSetDefault();
    v7 = BOMStorageOpenInRAM(bytes, length, 0);
    if (!v7)
    {
      _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -initWithBytes:length: unable to read bytes");
      goto LABEL_6;
    }

    v8 = v7;
    if (![(CUICommonAssetStorage *)v6 _commonInitWithStorage:v7 forWritting:0])
    {
      BOMStorageFree(v8);
LABEL_6:

      return 0;
    }
  }

  return v6;
}

+ (BOOL)isValidAssetStorageWithBytes:(const void *)bytes length:(unint64_t)length
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  BOMExceptionHandlerSet(0);
  v6 = BOMStorageOpenInRAM(bytes, length, 0);
  if (v6)
  {
    v7 = v6;
    NamedBlock = BOMStorageGetNamedBlock();
    if (NamedBlock)
    {
      if (BOMStorageSizeOfBlock(v7, NamedBlock) > 0x1B4)
      {
        LOBYTE(NamedBlock) = 0;
      }

      else
      {
        BOMStorageCopyFromBlock(v7, NamedBlock, v10);
        LOBYTE(NamedBlock) = LODWORD(v10[0]) == 1129595218;
      }
    }

    BOMStorageFree(v7);
  }

  else
  {
    LOBYTE(NamedBlock) = 0;
  }

  BOMExceptionHandlerSetDefault();
  return NamedBlock;
}

+ (BOOL)isValidAssetStorageWithURL:(id)l
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v4 = BomSys_defaultNoMMAP();
  BOMExceptionHandlerSet(0);
  v5 = BOMStorageOpenWithSys([l fileSystemRepresentation], 0, v4);
  if (v5)
  {
    v6 = v5;
    NamedBlock = BOMStorageGetNamedBlock();
    if (NamedBlock)
    {
      BOMStorageCopyFromBlock(v6, NamedBlock, v10);
      v8 = LODWORD(v10[0]) == 1129595218;
    }

    else
    {
      v8 = 0;
    }

    BOMStorageFree(v6);
  }

  else
  {
    v8 = 0;
  }

  BOMExceptionHandlerSetDefault();
  return v8;
}

- (BOOL)_commonInitWithStorage:(_BOMStorage *)storage forWritting:(BOOL)writting
{
  writtingCopy = writting;
  NamedBlock = BOMStorageGetNamedBlock();
  if (NamedBlock)
  {
    v8 = NamedBlock;
    v9 = BOMStorageSizeOfBlock(storage, NamedBlock);
    if (v9 >= 0x1B5)
    {
      BOMStorageFileName();
      _CUILog(4, "CoreUI: Car file '%s' has a malformed header(%zu) sizeof CAR_HEADER_NAME > structure used to store data(%zu)");
      return 0;
    }

    if (v9 == 436)
    {
      header = malloc_type_malloc(0x1B4uLL, 0xEF5FE7D8uLL);
      self->_header = header;
    }

    else
    {
      if (writtingCopy)
      {
        BOMStorageFileName();
        _CUILog(4, "CoreUI: Can't update header information for old version of CAR '%s'");
        return 0;
      }

      [(CUICommonAssetStorage *)self _initDefaultHeaderVersion:"@(#)PROGRAM:CoreUI  PROJECT:CoreUI-971.6\n" versionString:971.6];
      header = self->_header;
    }

    BOMStorageCopyFromBlock(storage, v8, header);
    if (self->_header->var0 == 1380013123)
    {
      [(CUICommonAssetStorage *)self _swapHeader];
      *(self + 108) |= 1u;
    }

    [(CUICommonAssetStorage *)self _bringHeaderInfoUpToDate];
  }

  else
  {
    BOMStorageFileName();
    _CUILog(4, "CoreUI: Car file '%s' has no header information.  Using default values", v10);
    [(CUICommonAssetStorage *)self _initDefaultHeaderVersion:"@(#)PROGRAM:CoreUI  PROJECT:CoreUI-971.6\n" versionString:971.6];
  }

  self->_thinnedWithCoreUIVersion = -1;
  v12 = BOMStorageGetNamedBlock();
  if (v12)
  {
    v13 = v12;
    v14 = BOMStorageSizeOfBlock(storage, v12);
    if (v14)
    {
      v15 = v14;
      v16 = malloc_type_malloc(v14, 0xD92A442DuLL);
      BOMStorageCopyFromBlock(storage, v13, v16);
      self->_globals = [[NSData alloc] initWithBytes:v16 length:v15];
      free(v16);
    }
  }

  v17 = BOMStorageGetNamedBlock();
  if (v17)
  {
    v18 = v17;
    v19 = BOMStorageSizeOfBlock(storage, v17);
    if (v19 < 0xC)
    {
      BOMStorageFileName();
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information keyformat is too short. Using CUISystemThemeRenditionKeyFormat", v23);
      p_keyfmt = &self->_keyfmt;
LABEL_26:
      *p_keyfmt = 0;
      goto LABEL_27;
    }

    v20 = v19;
    v21 = malloc_type_malloc(v19, 0x6D4D9F52uLL);
    self->_keyfmt = v21;
    p_keyfmt = &self->_keyfmt;
    BOMStorageCopyFromBlock(storage, v18, v21);
    if (*(self + 108))
    {
      [(CUICommonAssetStorage *)self _swapKeyFormat];
    }

    if (**p_keyfmt != 1801874804)
    {
      BOMStorageFileName();
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information. Using CUISystemThemeRenditionKeyFormat");
      goto LABEL_25;
    }

    if (4 * *(*p_keyfmt + 2) + 12 != v20)
    {
      BOMStorageFileName();
      _CUILog(4, "CoreUI: Car file '%s' has erroneous key format information keyformat #keys %d doesn't match size %d. Using CUISystemThemeRenditionKeyFormat");
LABEL_25:
      free(*p_keyfmt);
      goto LABEL_26;
    }
  }

LABEL_27:
  v24 = BOMStorageGetNamedBlock();
  if (v24 && self->_keyfmt)
  {
    v25 = v24;
    v26 = BOMStorageSizeOfBlock(storage, v24);
    if (v26 < 0xC)
    {
      BOMStorageFileName();
      _CUILog(4, "CoreUI: Car file '%s' KEY_FORMAT_WORKAROUND that is too short ignoring.", v35);
    }

    else
    {
      v27 = v26;
      v28 = malloc_type_malloc(v26, 0x2D84A0FBuLL);
      BOMStorageCopyFromBlock(storage, v25, v28);
      keyfmt = self->_keyfmt;
      var2 = keyfmt->var2;
      if (v27 >> 2 < var2)
      {
        var2 = v27 >> 2;
      }

      if (var2)
      {
        var3 = keyfmt->var3;
        v32 = v28;
        do
        {
          v34 = *v32++;
          v33 = v34;
          if (v34)
          {
            *var3 = v33;
          }

          ++var3;
          --var2;
        }

        while (var2);
      }

      free(v28);
    }
  }

  v36 = self->_keyfmt;
  if (v36)
  {
    CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(&self->_keyfmtindex, v36);
  }

  v37 = BOMStorageGetNamedBlock();
  if (v37)
  {
    v38 = v37;
    v39 = BOMStorageSizeOfBlock(storage, v37);
    v40 = malloc_type_malloc(v39, 0xD17EB229uLL);
    BOMStorageCopyFromBlock(storage, v38, v40);
    if (*v40 == 1163414603)
    {
      v41 = objc_alloc_init(NSMutableSet);
      if (v40[2])
      {
        v42 = 0;
        v43 = v40 + 3;
        do
        {
          v44 = [[NSString alloc] initWithUTF8String:v43 + 2];
          [(NSSet *)v41 addObject:v44];

          v43 = (v43 + v43[1] + 8);
          ++v42;
        }

        while (v42 < v40[2]);
      }

      self->_externalTags = v41;
    }

    else
    {
      BOMStorageFileName();
      _CUILog(4, "CoreUI: Car file '%s' has erroneous external tags information ignoring", v45);
    }

    free(v40);
  }

  v46 = BOMTreeOpenWithName(storage, "RENDITIONS", writtingCopy);
  if (!v46)
  {
    BOMStorageFileName();
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage No rendition tree found in '%s'");
    return 0;
  }

  self->_imagedb = v46;
  self->_colordb = BOMTreeOpenWithName(storage, "COLORS", writtingCopy);
  self->_fontdb = BOMTreeOpenWithName(storage, "FONTS", writtingCopy);
  self->_fontsizedb = BOMTreeOpenWithName(storage, "FONTSIZES", writtingCopy);
  self->_facetKeysdb = BOMTreeOpenWithName(storage, "FACETKEYS", writtingCopy);
  self->_bitmapKeydb = BOMTreeOpenWithName(storage, "BITMAPKEYS", writtingCopy);
  self->_appearancedb = BOMTreeOpenWithName(storage, "APPEARANCEKEYS", writtingCopy);
  self->_localizationdb = BOMTreeOpenWithName(storage, "LOCALIZATIONKEYS", writtingCopy);
  if (BOMStorageIsOpenForWriting(storage) || !BOMStorageMemoryMapped(storage))
  {
    v47 = *(self + 108) & 0xFD;
  }

  else
  {
    v47 = *(self + 108) | 2;
  }

  *(self + 108) = v47;
  bitmapKeydb = self->_bitmapKeydb;
  if (bitmapKeydb && !writtingCopy)
  {
    v50 = BOMTreeIteratorNew(bitmapKeydb, 0, 0, 0);
    v51 = objc_autoreleasePoolPush();
    if (!BOMTreeIteratorIsAtEnd(v50))
    {
      v52 = 22;
      do
      {
        [(CUICommonAssetStorage *)self renditionInfoForIdentifier:BOMTreeIteratorKey(v50)];
        if (!--v52)
        {
          break;
        }

        BOMTreeIteratorNext(v50);
      }

      while (!BOMTreeIteratorIsAtEnd(v50));
    }

    objc_autoreleasePoolPop(v51);
    BOMTreeIteratorFree(v50);
  }

  if (self->_appearancedb)
  {
    *(self + 108) = *(self + 108) & 0xFB | (4 * CUIRenditionKeyHasIdentifier([(CUICommonAssetStorage *)self keyFormat], 7));
  }

  *(self + 108) = *(self + 108) & 0xF7 | (8 * CUIRenditionKeyHasIdentifier([(CUICommonAssetStorage *)self keyFormat], 13));
  return 1;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  BOMTreeStorage(self->_imagedb);
  BOMStorageFileName();
  return [NSString stringWithFormat:@"<%@:%p '%s'>", v4, self, v5];
}

- (unsigned)schemaVersion
{
  header = self->_header;
  if (header)
  {
    return header->var9;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_storagefileTimestamp
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (!_storagefileTimestamp_tstamp)
  {
    BOMTreeStorage(self->_imagedb);
    BOMStorageFileName();
    memset(&v5, 0, sizeof(v5));
    stat(v3, &v5);
    _storagefileTimestamp_tstamp = v5.st_mtimespec.tv_sec;
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return _storagefileTimestamp_tstamp;
}

- (int64_t)storageTimestamp
{
  header = self->_header;
  if (header && (var3 = header->var3, var3))
  {
    return var3;
  }

  else
  {
    return [(CUICommonAssetStorage *)self _storagefileTimestamp];
  }
}

- (id)keyFormatData
{
  [(CUICommonAssetStorage *)self keyFormat];

  return [NSData dataWithBytes:"dataWithBytes:length:" length:?];
}

- (id)catalogGlobalData
{
  globals = self->_globals;
  if (globals)
  {
    v4 = [(NSData *)globals copy];

    return v4;
  }

  else
  {

    return +[NSData data];
  }
}

- (int64_t)maximumRenditionKeyTokenCount
{
  keyfmt = self->_keyfmt;
  if (keyfmt)
  {
    return keyfmt->var2;
  }

  else
  {
    return 21;
  }
}

- (const)versionString
{
  header = self->_header;
  if (header)
  {
    return header->var6;
  }

  else
  {
    return 0;
  }
}

- (const)mainVersionString
{
  header = self->_header;
  if (header)
  {
    return header->var5;
  }

  else
  {
    return 0;
  }
}

- (unsigned)thinnedWithCoreUIVersion
{
  result = self->_thinnedWithCoreUIVersion;
  if (result == -1)
  {
    thinningArguments = [(CUICommonAssetStorage *)self thinningArguments];
    result = 0x7FFFFFFF;
    self->_thinnedWithCoreUIVersion = 0x7FFFFFFF;
    if (thinningArguments)
    {
      v6 = 0;
      if ([thinningArguments hasPrefix:@"carutil"])
      {
        v5 = [NSScanner scannerWithString:thinningArguments];
        [(NSScanner *)v5 scanUpToCharactersFromSet:+[NSCharacterSet intoString:"decimalDigitCharacterSet"], 0];
        if ([(NSScanner *)v5 scanInt:&v6])
        {
          self->_thinnedWithCoreUIVersion = v6;
        }
      }

      return self->_thinnedWithCoreUIVersion;
    }
  }

  return result;
}

- (id)uuid
{
  v2 = [[NSUUID alloc] initWithUUIDBytes:self->_header->var7];

  return v2;
}

- (unsigned)associatedChecksum
{
  header = self->_header;
  if (header)
  {
    return header->var8;
  }

  else
  {
    return 0;
  }
}

- (unsigned)colorSpaceID
{
  header = self->_header;
  if (header)
  {
    return header->var10;
  }

  else
  {
    return 0;
  }
}

- (id)thinningArguments
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var1];
}

- (id)deploymentPlatformVersion
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var2];
}

- (id)authoringTool
{
  [(CUICommonAssetStorage *)self _loadExtendedMetadata];
  extendedMetadata = self->_extendedMetadata;
  if (!extendedMetadata)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:extendedMetadata->var4];
}

- (void)_swapRenditionKeyArray:(unsigned __int16 *)array
{
  maximumRenditionKeyTokenCount = [(CUICommonAssetStorage *)self maximumRenditionKeyTokenCount];
  if (maximumRenditionKeyTokenCount >= 1)
  {
    do
    {
      *array = bswap32(*array) >> 16;
      ++array;
      --maximumRenditionKeyTokenCount;
    }

    while (maximumRenditionKeyTokenCount);
  }
}

- (BOOL)assetExistsForKey:(id)key
{
  bytes = [key bytes];
  v6 = [key length];

  return [(CUICommonAssetStorage *)self assetExistsForKeyData:bytes length:v6];
}

- (BOOL)assetExistsForKeyData:(const void *)data length:(unint64_t)length
{
  [+[CUIRuntimeStatistics sharedRuntimeStatistics](CUIRuntimeStatistics "sharedRuntimeStatistics")];
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  LOBYTE(length) = BOMTreeValueExists(self->_imagedb, data, length) != 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return length;
}

- (id)assetForKey:(id)key
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  bytes = [key bytes];
  v6 = [key length];
  size = 0;
  if (BOMTreeGetValueSize(self->_imagedb, bytes, v6, &size))
  {
    goto LABEL_2;
  }

  if ((*(self + 108) & 2) != 0)
  {
    Value = BOMTreeReadValue(self->_imagedb, bytes, v6);
    if (Value)
    {
      v9 = [NSData dataWithBytesNoCopy:Value length:size freeWhenDone:0];
LABEL_9:
      v7 = v9;
      goto LABEL_10;
    }
  }

  v7 = BOMTreeGetValue(self->_imagedb, bytes, v6);
  if (!v7)
  {
    goto LABEL_10;
  }

  v10 = malloc_type_malloc(size, 0x36A11318uLL);
  __CFSetLastAllocationEventName();
  if (v10)
  {
    memcpy(v10, v7, size);
    v9 = [NSData dataWithBytesNoCopy:v10 length:size];
    goto LABEL_9;
  }

LABEL_2:
  v7 = 0;
LABEL_10:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v7;
}

- (id)allAssetKeys
{
  v3 = objc_alloc_init(NSMutableArray);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __37__CUICommonAssetStorage_allAssetKeys__block_invoke;
  v5[3] = &unk_1E7250E18;
  v5[4] = v3;
  [(CUICommonAssetStorage *)self assetKeysMatchingBlock:v5];
  return v3;
}

uint64_t __37__CUICommonAssetStorage_allAssetKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:a2];
  [*(a1 + 32) addObject:v3];

  return 0;
}

- (id)assetKeysMatchingBlock:(id)block
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  v17 = 0u;
  memset(v18, 0, 28);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  var2 = keyFormat->var2;
  if (var2 < 0x18)
  {
    v7 = &v14;
  }

  else
  {
    v7 = malloc_type_calloc(var2 + 2, 4uLL, 0x100004052888210uLL);
    var2 = keyFormat->var2;
  }

  v8 = BOMTreeIteratorNew(self->_imagedb, 0, 2 * var2, 0);
  v9 = 0;
  if (!BOMTreeIteratorIsAtEnd(v8))
  {
    v9 = 0;
    do
    {
      v10 = BOMTreeIteratorKey(v8);
      v11 = BOMTreeIteratorKeySize(v8);
      if ([(CUICommonAssetStorage *)self swapped:v14])
      {
        [(CUICommonAssetStorage *)self _swapRenditionKeyArray:v10];
      }

      CUIFillRenditionKeyForCARKeyArray(v7, v10, keyFormat);
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      v12 = (*(block + 2))(block, v7, keyFormat);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
      if (v12)
      {
        if (!v9)
        {
          v9 = objc_alloc_init(NSMutableSet);
        }

        [v9 addObject:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v10, v11)}];
      }

      if ([(CUICommonAssetStorage *)self swapped])
      {
        [(CUICommonAssetStorage *)self _swapRenditionKeyArray:v10];
      }

      BOMTreeIteratorNext(v8);
    }

    while (!BOMTreeIteratorIsAtEnd(v8));
  }

  BOMTreeIteratorFree(v8);
  if (v7 != &v14)
  {
    free(v7);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock:v14]);
  return v9;
}

- (BOOL)enumerateKeysAndObjectsUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  v6 = malloc_type_calloc(keyFormat->var2 + 1, 4uLL, 0x100004052888210uLL);
  v7 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  v8 = objc_alloc_init(NSAutoreleasePool);
  if (!BOMTreeIteratorIsAtEnd(v7))
  {
    v23 = keyFormat;
    v10 = 0;
    v9 = 1;
    while (1)
    {
      v24 = 0;
      if (v10 >= 0x65)
      {
        [v8 drain];
        v8 = objc_alloc_init(NSAutoreleasePool);
        v10 = 0;
      }

      v24 = 0;
      v11 = BOMTreeIteratorKey(v7);
      v12 = BOMTreeIteratorKeySize(v7);
      if (!v11)
      {
        v9 = 0;
        goto LABEL_24;
      }

      if ((*(self + 108) & 2) != 0)
      {
        v16 = v12;
        Value = BOMTreeReadValue(self->_imagedb, v11, v12);
        if (!BOMTreeGetValueSize(self->_imagedb, v11, v16, &v24))
        {
          v18 = [NSData alloc];
          v15 = [v18 initWithBytesNoCopy:Value length:v24 freeWhenDone:0];
          goto LABEL_12;
        }
      }

      else
      {
        v13 = BOMTreeIteratorValue(v7);
        if (v13)
        {
          v24 = BOMTreeIteratorValueSize(v7);
          v14 = [NSData alloc];
          v15 = [v14 initWithBytes:v13 length:v24];
LABEL_12:
          v19 = v15;
          goto LABEL_15;
        }

        _CUILog(4, "CoreUI: %s invalid value skipping", "[CUICommonAssetStorage enumerateKeysAndObjectsUsingBlock:]");
        v9 = 0;
      }

      v19 = 0;
LABEL_15:
      bytes = [v19 bytes];
      if (!bytes)
      {
        _CUILog(4, "CoreUI: %s can't get size of value skipping [data size:%d ptr:%p]");
LABEL_20:
        v9 = 0;
        goto LABEL_21;
      }

      if (*bytes != 1129599817)
      {
        _CUILog(4, "CoreUI: %s skipping invalid CSIHeader [signature:%d]");
        goto LABEL_20;
      }

      CUIFillRenditionKeyForCARKeyArray(v6, v11, v23);
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      v21 = objc_autoreleasePoolPush();
      (*(block + 2))(block, v6, v19);
      objc_autoreleasePoolPop(v21);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
LABEL_21:

      BOMTreeIteratorNext(v7);
      ++v10;
      if (BOMTreeIteratorIsAtEnd(v7))
      {
        goto LABEL_24;
      }
    }
  }

  v9 = 1;
LABEL_24:
  free(v6);
  BOMTreeIteratorFree(v7);
  [v8 drain];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v9 & 1;
}

- (void)enumerateKeysAndObjectsWithoutIgnoringUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  v6 = malloc_type_calloc(keyFormat->var2 + 1, 4uLL, 0x100004052888210uLL);
  v7 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  v8 = objc_alloc_init(NSAutoreleasePool);
  if (!BOMTreeIteratorIsAtEnd(v7))
  {
    v21 = keyFormat;
    v9 = 0;
    do
    {
      v22 = 0;
      if (v9 >= 0x3E9)
      {
        [v8 drain];
        v8 = objc_alloc_init(NSAutoreleasePool);
        v9 = 0;
      }

      v10 = BOMTreeIteratorKey(v7);
      v11 = BOMTreeIteratorKeySize(v7);
      if ((*(self + 108) & 2) != 0)
      {
        v15 = v11;
        Value = BOMTreeReadValue(self->_imagedb, v10, v11);
        if (BOMTreeGetValueSize(self->_imagedb, v10, v15, &v22))
        {
          v17 = 0;
          goto LABEL_11;
        }

        v18 = [NSData alloc];
        v14 = [v18 initWithBytesNoCopy:Value length:v22 freeWhenDone:0];
      }

      else
      {
        v12 = BOMTreeIteratorValue(v7);
        v22 = BOMTreeIteratorValueSize(v7);
        v13 = [NSData alloc];
        v14 = [v13 initWithBytes:v12 length:v22];
      }

      v17 = v14;
LABEL_11:
      bytes = [v17 bytes];
      if (!bytes)
      {
        _CUILog(4, "CoreUI: %s can't get size of value skipping");
LABEL_16:
        v20 = 0;
        goto LABEL_17;
      }

      if (*bytes != 1129599817)
      {
        _CUILog(4, "CoreUI: %s skipping invalid CSIHeader");
        goto LABEL_16;
      }

      CUIFillRenditionKeyForCARKeyArray(v6, v10, v21);
      v20 = v17;
LABEL_17:
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      (*(block + 2))(block, v6, v20);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);

      BOMTreeIteratorNext(v7);
      ++v9;
    }

    while (!BOMTreeIteratorIsAtEnd(v7));
  }

  free(v6);
  BOMTreeIteratorFree(v7);
  [v8 drain];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
}

- (BOOL)enumerateColorsBlock:(id)block
{
  colordb = self->_colordb;
  if (colordb)
  {
    for (i = BOMTreeIteratorNew(colordb, 0, 0, 0); !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
    {
      v6 = BOMTreeIteratorKey(i);
      v7 = BOMTreeIteratorValue(i);
      v8 = [[NSString alloc] initWithUTF8String:v6 + 4];
      (*(block + 2))(block, v8, BYTE2(*(v7 + 8)), BYTE1(*(v7 + 8)), *(v7 + 8), HIBYTE(*(v7 + 8)));
    }

    BOMTreeIteratorFree(i);
  }

  return 1;
}

- (id)renditionInfoForIdentifier:(unsigned __int16)identifier
{
  if (!self->_bitmapKeydb)
  {
    return 0;
  }

  identifierCopy = identifier;
  v21 = 0;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
  v5 = 0;
  while (self->_renditionInfoCacheLookup[v5] != identifierCopy)
  {
    if (++v5 == 20)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  v6 = self->_renditionInfoCache[v5];
LABEL_8:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
  if (!v6)
  {
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    bitmapKeydb = self->_bitmapKeydb;
    if ((*(self + 108) & 2) != 0)
    {
      Value = BOMTreeReadValue(bitmapKeydb, identifierCopy, 2uLL);
    }

    else
    {
      Value = BOMTreeGetValue(bitmapKeydb, identifierCopy, 2uLL);
    }

    v6 = Value;
    if (Value)
    {
      if (BOMTreeGetValueSize(self->_bitmapKeydb, identifierCopy, 2uLL, &v21))
      {
        v6 = 0;
      }

      else
      {
        v9 = *(self + 108);
        v10 = [NSData alloc];
        if ((v9 & 2) != 0)
        {
          v11 = [v10 initWithBytesNoCopy:v6 length:v21 freeWhenDone:0];
        }

        else
        {
          v11 = [v10 initWithBytes:v6 length:v21];
        }

        v12 = v11;
        v6 = [[CUINamedRenditionInfo alloc] initWithData:v11 keyFormat:[(CUICommonAssetStorage *)self keyFormat] andPlatform:[(CUICommonAssetStorage *)self deploymentPlatform]];

        if (v6)
        {
          os_unfair_lock_lock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
          for (i = 0; i != 20; ++i)
          {
            v14 = self + 2 * i;
            if (!*(v14 + 60))
            {
              *(v14 + 60) = identifierCopy;
              self->_renditionInfoCache[i] = v6;
              goto LABEL_26;
            }
          }

          v15 = &self->_renditionInfoCache[1];
          v16 = &self->_renditionInfoCacheLookup[1];
          v17 = 19;
          do
          {
            *(v16 - 1) = *v16;
            v18 = *(v15 - 1);
            *(v15 - 1) = *v15;
            *v15 = 0;
            *v16++ = 0;
            ++v15;
            --v17;
          }

          while (v17);
          self->_renditionInfoCacheLookup[19] = identifierCopy;
          self->_renditionInfoCache[19] = v6;
LABEL_26:
          os_unfair_lock_unlock([(CUICommonAssetStorage *)self renditionInfoCacheLock]);
          v19 = v6;
        }
      }
    }

    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  return v6;
}

- (void)enumerateRenditionInfosUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  v6 = BOMTreeIteratorNew(self->_bitmapKeydb, 0, 0, 0);
  v13 = objc_alloc_init(NSAutoreleasePool);
  while (!BOMTreeIteratorIsAtEnd(v6))
  {
    v7 = BOMTreeIteratorKey(v6);
    v8 = BOMTreeIteratorValue(v6);
    v9 = BOMTreeIteratorValueSize(v6);
    if (v8 && v9)
    {
      v10 = [[NSData alloc] initWithBytes:v8 length:v9];
      v11 = [[CUINamedRenditionInfo alloc] initWithData:v10 keyFormat:keyFormat andPlatform:[(CUICommonAssetStorage *)self deploymentPlatform]];
      if (v11)
      {
        (*(block + 2))(block, v7, v11);
      }
    }

    BOMTreeIteratorNext(v6);
  }

  BOMTreeIteratorFree(v6);
  [v13 drain];
  lock = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (const)renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v7 = [(CUICommonAssetStorage *)self _renditionKeyForName:name hotSpot:spot];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v7;
}

- (const)_renditionKeyForName:(const char *)name hotSpot:(CGPoint *)spot
{
  v21 = 0;
  v20 = 0;
  v5 = -1.0;
  if (!name)
  {
    v7 = -1.0;
    goto LABEL_6;
  }

  v7 = -1.0;
  if (!self->_facetKeysdb)
  {
LABEL_6:
    v12 = [NSMutableData dataWithBytes:&v21 length:4];
LABEL_7:
    if (spot)
    {
      spot->x = v7;
      spot->y = v5;
    }

    return [(NSMutableData *)v12 bytes];
  }

  swapped = [(CUICommonAssetStorage *)self swapped];
  v10 = strlen(name);
  if (BOMTreeGetValueSize(self->_facetKeysdb, name, v10, &v20))
  {
    return 0;
  }

  if ((*(self + 108) & 2) == 0 || (Value = BOMTreeReadValue(self->_facetKeysdb, name, v10)) == 0)
  {
    Value = BOMTreeGetValue(self->_facetKeysdb, name, v10);
  }

  result = 0;
  if (Value && v20)
  {
    v14 = *Value;
    if (swapped)
    {
      v5 = (bswap32(*(Value + 2)) >> 16);
      v7 = __rev16(v14);
      LODWORD(v15) = bswap32(*(Value + 4)) >> 16;
    }

    else
    {
      v7 = v14;
      v5 = *(Value + 2);
      LODWORD(v15) = *(Value + 4);
    }

    v12 = [NSMutableData dataWithCapacity:4 * v15 + 4];
    __CFSetLastAllocationEventName();
    if (v15)
    {
      v15 = v15;
      v16 = (Value + 6);
      do
      {
        v19 = 0;
        v18 = *v16++;
        v17 = v18;
        if (swapped)
        {
          Value = Value & 0xFFFFFFFF00000000 | v17;
          LODWORD(v17) = [(CUICommonAssetStorage *)self _swapRenditionKeyToken:Value];
        }

        v19 = v17;
        [(NSMutableData *)v12 appendBytes:&v19 length:4];
        --v15;
      }

      while (v15);
    }

    [(NSMutableData *)v12 appendBytes:&v21 length:4];
    if (v20)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  return result;
}

- (id)_allRenditionNames
{
  v3 = +[NSMutableArray array];
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v5 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v6 = v5;
    if (v5 && !BOMTreeIteratorIsAtEnd(v5))
    {
      do
      {
        v7 = BOMTreeIteratorKeySize(v6);
        v8 = BOMTreeIteratorKey(v6);
        if (v7)
        {
          v9 = [[NSString alloc] initWithBytes:v8 length:v7 encoding:4];
          if (v9)
          {
            v10 = v9;
            [v3 addObject:v9];
          }
        }

        BOMTreeIteratorNext(v6);
      }

      while (!BOMTreeIteratorIsAtEnd(v6));
    }

    BOMTreeIteratorFree(v6);
  }

  return v3;
}

- (id)allRenditionNames
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  _allRenditionNames = [(CUICommonAssetStorage *)self _allRenditionNames];
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return _allRenditionNames;
}

- (id)facetValueNameMap
{
  v3 = objc_alloc_init(NSMutableDictionary);
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v5 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v6 = v5;
    if (v5 && !BOMTreeIteratorIsAtEnd(v5))
    {
      do
      {
        v7 = BOMTreeIteratorValue(v6);
        v8 = BOMTreeIteratorKeySize(v6);
        v9 = [[NSString alloc] initWithBytes:BOMTreeIteratorKey(v6) length:v8 encoding:4];
        v10 = *(v7 + 4);
        if (v10)
        {
          v11 = 0;
          v12 = (v7 + 8);
          do
          {
            if (*(v12 - 1) == 17)
            {
              [v3 setObject:v9 forKeyedSubscript:{+[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", *v12)}];
              v10 = *(v7 + 4);
            }

            ++v11;
            v12 += 2;
          }

          while (v11 < v10);
        }

        BOMTreeIteratorNext(v6);
      }

      while (!BOMTreeIteratorIsAtEnd(v6));
    }

    BOMTreeIteratorFree(v6);
  }

  return v3;
}

- (id)renditionNameForKeyList:(_renditionkeytoken *)list
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v6 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v7 = v6;
    if (v6 && !BOMTreeIteratorIsAtEnd(v6))
    {
      do
      {
        v8 = BOMTreeIteratorKeySize(v7);
        v9 = BOMTreeIteratorKey(v7);
        v10 = BOMTreeIteratorValue(v7);
        if (*(v10 + 4))
        {
          v11 = v10;
          v12 = 0;
          v13 = (v10 + 8);
          while (1)
          {
            v14 = *v13;
            if (v14 != CUIRenditionKeyValueForAttribute(&list->identifier, *(v13 - 1)))
            {
              break;
            }

            v13 += 2;
            if (++v12 >= *(v11 + 4))
            {
              v15 = [[NSString alloc] initWithBytes:v9 length:v8 encoding:4];
              if (!v15)
              {
                break;
              }

              v16 = v15;
              goto LABEL_11;
            }
          }
        }

        BOMTreeIteratorNext(v7);
      }

      while (!BOMTreeIteratorIsAtEnd(v7));
    }

    v16 = 0;
LABEL_11:
    BOMTreeIteratorFree(v7);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v16;
}

- (id)renditionNamesWithKeys
{
  v3 = +[NSMutableDictionary dictionary];
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  facetKeysdb = self->_facetKeysdb;
  if (facetKeysdb)
  {
    v5 = BOMTreeIteratorNew(facetKeysdb, 0, 0, 0);
    v6 = v5;
    if (v5 && !BOMTreeIteratorIsAtEnd(v5))
    {
      do
      {
        v7 = BOMTreeIteratorValue(v6);
        v8 = BOMTreeIteratorKeySize(v6);
        v9 = [[NSString alloc] initWithBytes:BOMTreeIteratorKey(v6) length:v8 encoding:4];
        v10 = +[NSMutableString string];
        if (*(v7 + 4))
        {
          v11 = 0;
          v12 = (v7 + 8);
          do
          {
            [v10 appendFormat:@"%s:%d", CUIThemeAttributeNameToString(*(v12 - 1)), *v12];
            v13 = *(v7 + 4);
            if (v11 != v13 - 1)
            {
              [v10 appendString:{@", "}];
              v13 = *(v7 + 4);
            }

            v12 += 2;
            ++v11;
          }

          while (v11 < v13);
        }

        [v3 setObject:v10 forKey:v9];

        BOMTreeIteratorNext(v6);
      }

      while (!BOMTreeIteratorIsAtEnd(v6));
    }

    BOMTreeIteratorFree(v6);
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v3;
}

- (id)renditionNameForKeyBaseList:(const _renditionkeytoken *)list
{
  v4 = CUIRenditionKeyValueForAttribute(&list->identifier, 17);
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (self->_facetKeysdb)
  {
    if ([(CUICommonAssetStorage *)self facetValueNameDict])
    {
      facetValueNameDict = self->_facetValueNameDict;
    }

    else
    {
      facetValueNameDict = [(CUICommonAssetStorage *)self facetValueNameMap];
      self->_facetValueNameDict = facetValueNameDict;
    }

    v6 = [(NSDictionary *)facetValueNameDict objectForKeyedSubscript:[NSNumber numberWithUnsignedShort:v4]];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v6;
}

- (BOOL)getColor:(_colordef *)color forName:(const char *)name
{
  v12 = 0;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (!name || !self->_colordb)
  {
    goto LABEL_12;
  }

  v14 = 0;
  memset(__s1, 0, sizeof(__s1));
  __strlcpy_chk();
  colordb = self->_colordb;
  if ((*(self + 108) & 2) == 0)
  {
    Value = BOMTreeGetValue(colordb, __s1, 0x84uLL);
    if (Value)
    {
      goto LABEL_5;
    }

LABEL_12:
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return 0;
  }

  Value = BOMTreeReadValue(colordb, __s1, 0x84uLL);
  if (!Value)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = Value;
  if (color && !BOMTreeGetValueSize(self->_colordb, __s1, 0x84uLL, &v12) && v12 == 12)
  {
    v10 = *v9;
    color->var2 = *(v9 + 8);
    *&color->var0 = v10;
    if (*(self + 108))
    {
      color->var2 = bswap32(*&color->var2);
      *&color->var0 = vrev32_s8(*&color->var0);
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return 1;
}

- (BOOL)hasColorForName:(const char *)name
{
  if (!name || !self->_colordb)
  {
    return 0;
  }

  LODWORD(v7) = 0;
  __strlcpy_chk();
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock:0]);
  v4 = BOMTreeValueExists(self->_colordb, &v6, 0x84uLL) != 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v4;
}

- (const)_fontValueForFontType:(id)type
{
  if (!type)
  {
    return 0;
  }

  if (!self->_fontdb)
  {
    return 0;
  }

  memset(__s1, 0, sizeof(__s1));
  if (![type getBytes:__s1 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(type, "length"), 0}])
  {
    return 0;
  }

  v6 = 0;
  ValueSize = BOMTreeGetValueSize(self->_fontdb, __s1, 0x80uLL, &v6);
  result = 0;
  if (!ValueSize && v6 == 132)
  {
    return BOMTreeGetValue(self->_fontdb, __s1, 0x80uLL);
  }

  return result;
}

- (BOOL)getFontName:(id *)name baselineOffset:(float *)offset forFontType:(id)type
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v9 = [(CUICommonAssetStorage *)self _fontValueForFontType:type];
  if (v9)
  {
    if (name)
    {
      *name = [[NSString alloc] initWithBytes:v9 length:strlen(v9->var0) encoding:1];
    }

    if (offset)
    {
      *offset = v9->var1;
    }
  }

  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v9 != 0;
}

- (BOOL)getBaselineOffset:(float *)offset forFontType:(id)type
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v7 = [(CUICommonAssetStorage *)self _fontValueForFontType:type];
  if (offset && v7)
  {
    *offset = v7->var1;
  }

  v8 = v7 != 0;
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v8;
}

- (float)fontSizeForFontSizeType:(id)type
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  if (type && self->_fontsizedb && (memset(__s1, 0, sizeof(__s1)), ([type getBytes:__s1 maxLength:128 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(type, "length"), 0}] & 1) != 0) && (v8 = 0, !BOMTreeGetValueSize(self->_fontsizedb, __s1, 0x80uLL, &v8)) && v8 == 4 && (Value = BOMTreeGetValue(self->_fontsizedb, __s1, 0x80uLL)) != 0)
  {
    v6 = Value;
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return *v6;
  }

  else
  {
    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
    return 0.0;
  }
}

- (void)enumerateBitmapIndexUsingBlock:(id)block
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  deploymentPlatform = [(CUICommonAssetStorage *)self deploymentPlatform];
  bitmapKeydb = self->_bitmapKeydb;
  if (bitmapKeydb)
  {
    for (i = BOMTreeIteratorNew(bitmapKeydb, 0, 0, 0); !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
    {
      v9 = BOMTreeIteratorKey(i);
      v10 = BOMTreeIteratorValue(i);
      v11 = [[NSData alloc] initWithBytesNoCopy:v10 length:BOMTreeIteratorValueSize(i) freeWhenDone:0];
      v12 = [[CUINamedRenditionInfo alloc] initWithData:v11 keyFormat:keyFormat andPlatform:deploymentPlatform];
      os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
      (*(block + 2))(block, v9, v12);
      os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    }

    BOMTreeIteratorFree(i);
  }

  lock = [(CUICommonAssetStorage *)self lock];

  os_unfair_lock_unlock(lock);
}

- (void)_addBitmapIndexForNameIdentifier:(unsigned __int16)identifier attribute:(int)attribute withValue:(unsigned __int16)value toDictionary:(id)dictionary
{
  valueCopy = value;
  v8 = *&attribute;
  v11 = [[NSNumber alloc] initWithInt:identifier];
  v10 = [dictionary objectForKey:?];
  if (!v10)
  {
    v10 = [[CUINamedRenditionInfo alloc] initWithKeyFormat:[(CUICommonAssetStorage *)self keyFormat] andPlatform:[(CUICommonAssetStorage *)self deploymentPlatform]];
    [dictionary setObject:v10 forKey:v11];
  }

  [(CUINamedRenditionInfo *)v10 setAttributePresent:v8 withValue:valueCopy];
}

- (BOOL)_buildBitmapInfoIntoDictionary:(id)dictionary
{
  keyFormat = [(CUICommonAssetStorage *)self keyFormat];
  self->_header->var4 = 0;
  v6 = BOMTreeIteratorNew(self->_imagedb, 0, 0, 0);
  if (BOMTreeIteratorIsAtEnd(v6))
  {
    v7 = 1;
  }

  else
  {
    do
    {
      v8 = BOMTreeIteratorKey(v6);
      v7 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v9 = v8;
      var2 = keyFormat->var2;
      var3 = keyFormat->var3;
      v12 = v8;
      if (var2)
      {
        while (1)
        {
          v13 = *var3++;
          if (v13 == 17)
          {
            break;
          }

          v12 = (v12 + 2);
          if (!--var2)
          {
            goto LABEL_11;
          }
        }

        v14 = *v12;
        if (*v12)
        {
          v15 = 0;
          do
          {
            [(CUICommonAssetStorage *)self _addBitmapIndexForNameIdentifier:v14 attribute:keyFormat->var3[v15] withValue:*(v9 + v15) toDictionary:dictionary];
            ++v15;
          }

          while (v15 < keyFormat->var2);
        }
      }

LABEL_11:
      ++self->_header->var4;
      BOMTreeIteratorNext(v6);
    }

    while (!BOMTreeIteratorIsAtEnd(v6));
  }

  BOMTreeIteratorFree(v6);
  return v7;
}

- (int)validateBitmapInfo
{
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  deploymentPlatform = [(CUICommonAssetStorage *)self deploymentPlatform];
  if (self->_bitmapKeydb)
  {
    v4 = deploymentPlatform;
    v5 = objc_alloc_init(NSMutableDictionary);
    [(CUICommonAssetStorage *)self _buildBitmapInfoIntoDictionary:v5];
    v6 = BOMTreeIteratorNew(self->_bitmapKeydb, 0, 0, 0);
    if (BOMTreeIteratorIsAtEnd(v6))
    {
      BOMTreeIteratorFree(v6);
    }

    else
    {
      v8 = 1;
      do
      {
        v9 = BOMTreeIteratorKey(v6);
        v10 = BOMTreeIteratorValue(v6);
        v11 = [[NSData alloc] initWithBytes:v10 length:BOMTreeIteratorValueSize(v6)];
        v12 = [[CUINamedRenditionInfo alloc] initWithData:v11 keyFormat:[(CUICommonAssetStorage *)self keyFormat] andPlatform:v4];
        v13 = [[NSNumber alloc] initWithInt:v9];
        v14 = [v5 objectForKey:v13];
        if (v14 && [(CUINamedRenditionInfo *)v12 isEqualToNamedRenditionInfo:v14])
        {
          [v5 removeObjectForKey:v13];
        }

        else
        {
          v8 = 0;
        }

        BOMTreeIteratorNext(v6);
      }

      while (!BOMTreeIteratorIsAtEnd(v6));
      BOMTreeIteratorFree(v6);
      if (!v8)
      {
        v7 = 0;
        goto LABEL_13;
      }
    }

    v7 = [v5 count] == 0;
LABEL_13:

    goto LABEL_14;
  }

  v7 = -1;
LABEL_14:
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v7;
}

- (int)validatekeyformat
{
  [(CUICommonAssetStorage *)self _bomStorage];
  if (!BOMStorageGetNamedBlock())
  {
    return -1;
  }

  [(CUICommonAssetStorage *)self _bomStorage];
  NamedBlock = BOMStorageGetNamedBlock();
  if (!NamedBlock)
  {
    return 0;
  }

  v4 = NamedBlock;
  v5 = BOMStorageSizeOfBlock([(CUICommonAssetStorage *)self _bomStorage], NamedBlock);
  v6 = malloc_type_malloc(v5, 0x8106E4EAuLL);
  BOMStorageCopyFromBlock([(CUICommonAssetStorage *)self _bomStorage], v4, v6);
  v7 = v6[2];
  if (v7)
  {
    v8 = v6 + 3;
    while (1)
    {
      v9 = *v8++;
      if (v9 >= 0x18)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_7:
    v10 = 1;
  }

  free(v6);
  return v10;
}

- (unsigned)appearanceIdentifierForName:(id)name
{
  if ((*(self + 108) & 4) != 0)
  {
    v3 = [(NSDictionary *)[(CUICommonAssetStorage *)self appearances] objectForKey:name];
    if (v3)
    {
      LOWORD(v3) = [v3 unsignedIntegerValue];
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

- (id)nameForAppearanceIdentifier:(unsigned __int16)identifier
{
  if (!self->_appearancedb)
  {
    return &stru_1F00D74D0;
  }

  identifierCopy = identifier;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = BOMTreeIteratorNew(self->_appearancedb, 0, 0, 0);
  v6 = &stru_1F00D74D0;
  if (!BOMTreeIteratorIsAtEnd(v5))
  {
    while (1)
    {
      v7 = BOMTreeIteratorValue(v5);
      if (v7)
      {
        if (*v7 == identifierCopy)
        {
          break;
        }
      }

      BOMTreeIteratorNext(v5);
      if (BOMTreeIteratorIsAtEnd(v5))
      {
        goto LABEL_9;
      }
    }

    v8 = BOMTreeIteratorKey(v5);
    v6 = [[NSString alloc] initWithBytes:v8 length:BOMTreeIteratorKeySize(v5) encoding:4];
    v9 = v6;
  }

LABEL_9:
  BOMTreeIteratorFree(v5);
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v6;
}

- (unsigned)localizationIdentifierForName:(id)name
{
  if ((*(self + 108) & 8) == 0)
  {
    return 0;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(name);
  v7 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x339A4ECBuLL);
  if (CFStringGetFileSystemRepresentation(name, v7, MaximumSizeOfFileSystemRepresentation))
  {
    os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
    localizationdb = [(CUICommonAssetStorage *)self localizationdb];
    v9 = strlen(v7);
    Value = BOMTreeReadValue(localizationdb, v7, v9);
    if (Value)
    {
      v3 = *Value;
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  }

  else
  {
    v3 = 0;
  }

  free(v7);
  return v3;
}

- (id)nameForLocalizationIdentifier:(unsigned __int16)identifier
{
  if (!self->_localizationdb)
  {
    return &stru_1F00D74D0;
  }

  identifierCopy = identifier;
  os_unfair_lock_lock([(CUICommonAssetStorage *)self lock]);
  v5 = BOMTreeIteratorNew(self->_localizationdb, 0, 0, 0);
  v6 = &stru_1F00D74D0;
  if (!BOMTreeIteratorIsAtEnd(v5))
  {
    while (1)
    {
      v7 = BOMTreeIteratorValue(v5);
      if (v7)
      {
        if (*v7 == identifierCopy)
        {
          break;
        }
      }

      BOMTreeIteratorNext(v5);
      if (BOMTreeIteratorIsAtEnd(v5))
      {
        goto LABEL_9;
      }
    }

    v8 = BOMTreeIteratorKey(v5);
    v6 = [[NSString alloc] initWithBytes:v8 length:BOMTreeIteratorKeySize(v5) encoding:4];
    v9 = v6;
  }

LABEL_9:
  BOMTreeIteratorFree(v5);
  os_unfair_lock_unlock([(CUICommonAssetStorage *)self lock]);
  return v6;
}

- (BOOL)writeToPath:(id)path withTreePageSize:(unsigned int)size
{
  v6 = BOMTreeStorage(self->_imagedb);
  v7 = BOMStorageNewWithOptionsAndSys([path fileSystemRepresentation], 0, 0);
  if (!v7)
  {
    _CUILog(4, "CoreUI: Error: CUICommonAssetStorage -writeToPath:withTreePageSize: write file at '%@'", path);
    return 0;
  }

  v8 = v7;
  if (!__copyBlock(v6, v7, "CARHEADER") || !__copyBlock(v6, v8, "CARGLOBALS") || !__copyBlock(v6, v8, "KEYFORMAT") || !__copyBlock(v6, v8, "KEYFORMATWORKAROUND") || !__copyBlock(v6, v8, "EXTERNAL_KEYS") || !__copyBlock(v6, v8, "EXTENDED_METADATA") || !__copyTree(v6, v8, "RENDITIONS", size) || !__copyTree(v6, v8, "COLORS", size) || !__copyTree(v6, v8, "FONTS", size) || !__copyTree(v6, v8, "FONTSIZES", size) || !__copyTree(v6, v8, "BEZELS", size) || !__copyTree(v6, v8, "FACETKEYS", size) || !__copyTree(v6, v8, "BITMAPKEYS", size) || !__copyTree(v6, v8, "APPEARANCEKEYS", size))
  {
    return 0;
  }

  return __copyTree(v6, v8, "LOCALIZATIONKEYS", size);
}

@end