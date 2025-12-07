@interface GEOPDPlace
- (GEOPDMapsIdentifier)mapsId;
- (GEOPDPlace)init;
- (NSMutableArray)components;
- (id)_entityName;
- (id)bestName;
- (id)phoneNumbers;
- (int)placeDisplayType;
- (int)status;
- (unint64_t)hash;
- (void)_readComponents;
- (void)_readMapsId;
@end

@implementation GEOPDPlace

- (id)_entityName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__56921;
  v9 = __Block_byref_object_dispose__56922;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__GEOPDPlace_PlaceDataExtras___entityName__block_invoke;
  v4[3] = &unk_1E705A158;
  v4[4] = &v5;
  [(GEOPDPlace *)self enumerateValidComponentValuesOfType:1 usingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (GEOPDPlace)init
{
  v6.receiver = self;
  v6.super_class = GEOPDPlace;
  v2 = [(GEOPDPlace *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readMapsId
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 141) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceReadSpecified(self, *(self + 8), &_readMapsId_tags_7549);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

- (GEOPDMapsIdentifier)mapsId
{
  [(GEOPDPlace *)self _readMapsId];
  mapsId = self->_mapsId;

  return mapsId;
}

- (NSMutableArray)components
{
  [(GEOPDPlace *)self _readComponents];
  components = self->_components;

  return components;
}

- (void)_readComponents
{
  if (self)
  {
    os_unfair_lock_lock((self + 112));
    if ((*(self + 141) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDPlaceReadSpecified(self, *(self + 8), &_readComponents_tags_7548);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 112));
  }
}

void __42__GEOPDPlace_PlaceDataExtras___entityName__block_invoke(uint64_t a1, id *a2, BOOL *a3)
{
  v5 = [(GEOPDComponentValue *)a2 entity];
  v9 = [v5 bestLocalizedName];

  v6 = [v9 stringValue];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (id)bestName
{
  _entityName = [(GEOPDPlace *)self _entityName];
  if ([_entityName length])
  {
    name = _entityName;
  }

  else
  {
    v5 = [GEOPDResultSnippet resultSnippetForPlaceData:self];
    v6 = v5;
    if (v5 && ([(GEOPDResultSnippet *)v5 _readName], *(v6 + 56)))
    {
      name = [(GEOPDResultSnippet *)v6 name];
    }

    else
    {
      v7 = [GEOAddressObject addressObjectForPlaceData:self];
      name = [v7 name];
    }
  }

  return name;
}

- (unint64_t)hash
{
  [(GEOPDPlace *)self readAll:1];
  flags = self->_flags;
  if ((*&flags & 2) == 0)
  {
    v25 = 0;
    if ((*&flags & 0x100) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if ((*&flags & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v25 = 2654435761u * self->_muid;
  if ((*&flags & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = 2654435761 * self->_status;
  if ((*&flags & 4) != 0)
  {
LABEL_4:
    v23 = 2654435761u * self->_preferredMuid;
    goto LABEL_8;
  }

LABEL_7:
  v23 = 0;
LABEL_8:
  v22 = [(NSMutableArray *)self->_components hash];
  v4 = self->_flags;
  if ((*&v4 & 0x80) != 0)
  {
    v21 = 2654435761 * self->_resultProviderId;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if ((*&v4 & 8) != 0)
    {
LABEL_10:
      v20 = 2654435761u * self->_updateVersion;
      goto LABEL_13;
    }
  }

  v20 = 0;
LABEL_13:
  v19 = [(GEOPDMapsIdentifier *)self->_mapsId hash];
  if (*&self->_flags)
  {
    v5 = [(GEOPDPlacecardLayoutData *)self->_placeLayoutData hash];
  }

  else
  {
    v5 = [(GEOPDPlacecardLayoutData *)self->_placeLayoutData hash];
  }

  v6 = v5;
  v7 = self->_flags;
  if ((*&v7 & 0x200) != 0)
  {
    v8 = 2654435761 * self->_isPartiallyClientizedSearchResult;
    if ((*&v7 & 0x10) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
    if ((*&v7 & 0x10) != 0)
    {
LABEL_18:
      v9 = 2654435761 * self->_mapDisplayType;
      goto LABEL_21;
    }
  }

  v9 = 0;
LABEL_21:
  v10 = [(NSMutableArray *)self->_abExpBranchIds hash];
  v11 = self->_flags;
  if ((*&v11 & 0x20) != 0)
  {
    v12 = 2654435761 * self->_rapFlowType;
    if ((*&v11 & 0x40) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    if ((*&v11 & 0x40) != 0)
    {
LABEL_23:
      v13 = 2654435761 * self->_referenceFrame;
      goto LABEL_26;
    }
  }

  v13 = 0;
LABEL_26:
  v14 = [(GEOMapItemInitialRequestData *)self->_requestData hash];
  v15 = [(NSString *)self->_placeCacheKey hash];
  if ((*(&self->_flags + 1) & 4) != 0)
  {
    v16 = 2654435761 * self->_nilPlace;
  }

  else
  {
    v16 = 0;
  }

  return v24 ^ v25 ^ v23 ^ v21 ^ v20 ^ v22 ^ v19 ^ v18 ^ v6 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (int)placeDisplayType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__GEOPDPlace_PlaceDataExtras__placeDisplayType__block_invoke;
  v4[3] = &unk_1E705A158;
  v4[4] = &v5;
  [(GEOPDPlace *)self enumerateValidComponentValuesOfType:1 usingBlock:v4];
  if (*(v6 + 6) >= 6u)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v6 + 6);
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void __47__GEOPDPlace_PlaceDataExtras__placeDisplayType__block_invoke(uint64_t a1, id *a2, BOOL *a3)
{
  v5 = [(GEOPDComponentValue *)a2 entity];
  *(*(*(a1 + 32) + 8) + 24) = [v5 placeDisplayType];
  *a3 = *(*(*(a1 + 32) + 8) + 24) != 0;
}

- (id)phoneNumbers
{
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__GEOPDPlace_PlaceDataExtras__phoneNumbers__block_invoke;
  v8[3] = &unk_1E7056A38;
  v8[4] = self;
  v4 = array;
  v9 = v4;
  [(GEOPDPlace *)self enumerateValidComponentValuesOfType:1 usingBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __43__GEOPDPlace_PlaceDataExtras__phoneNumbers__block_invoke(uint64_t a1, id *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(GEOPDComponentValue *)a2 entity];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 telephone];
    v6 = [*(a1 + 32) _cleanedPhoneNumberForPhoneNumberRepresentation:v5];
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v4 altTelephones];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 32) _cleanedPhoneNumberForPhoneNumberRepresentation:*(*(&v13 + 1) + 8 * v11)];
          if (v12)
          {
            [*(a1 + 40) addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (int)status
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x100) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

@end