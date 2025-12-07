@interface GEOTileServerLocalProxy
- (void)_registerBuiltInProviders;
- (void)_updateExpiringTilesets;
@end

@implementation GEOTileServerLocalProxy

- (void)_registerBuiltInProviders
{
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  [(GEOTileServerLocalProxy *)self registerProvider:objc_opt_class()];
  v3 = objc_opt_class();

  [(GEOTileServerLocalProxy *)self registerProvider:v3];
}

- (void)_updateExpiringTilesets
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [GEOResourceManifestManager modernManagerForConfiguration:self->super._manifestConfiguration];
  activeTileGroup = [v3 activeTileGroup];

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  tileSets = [activeTileGroup tileSets];
  v7 = [tileSets countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(tileSets);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 hasTimeToLiveSeconds] && objc_msgSend(v11, "timeToLiveSeconds"))
        {
          [array addObject:v11];
        }
      }

      v8 = [tileSets countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v12 = malloc_type_malloc(16 * [array count], 0x1000040F7F8B94BuLL);
    if ([array count])
    {
      v13 = 0;
      v14 = v12 + 1;
      do
      {
        v15 = [array objectAtIndexedSubscript:v13];
        style = [v15 style];
        scale = [v15 scale];
        *(v14 - 2) = ((style & 0x3FFF | (([v15 size] & 0xF) << 14) & 0xFFC3FFFF | ((scale & 0xF) << 18)) << 8) | 1;
        *v14 = [v15 timeToLiveSeconds];
        v14 += 2;

        ++v13;
      }

      while (v13 < [array count]);
    }

    -[GEOTileDB setExpirationRecords:count:](self->_tileCache, "setExpirationRecords:count:", v12, [array count]);
    free(v12);
  }

  else
  {
    [(GEOTileDB *)self->_tileCache setExpirationRecords:0 count:0];
  }
}

@end