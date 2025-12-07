@interface SUUIMediaLibraryInterface
- (BOOL)isItemLocalAudiobook:(id)audiobook;
- (BOOL)performActionForLibraryItem:(id)item;
- (id)_newDefaultQuery;
- (id)_storePlatformKindForMediaItem:(id)item;
- (id)stateForLibraryItem:(id)item;
- (int64_t)_availabilityForMediaItem:(id)item;
- (unint64_t)_AVTypesForMediaItem:(id)item;
- (void)_restrictQueryToLocalContent:(id)content;
- (void)enumerateStatesForLibraryItems:(id)items usingBlock:(id)block;
- (void)removeMediaItemsForLibraryItems:(id)items;
@end

@implementation SUUIMediaLibraryInterface

- (void)enumerateStatesForLibraryItems:(id)items usingBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  v9 = SUUIMediaPlayerFramework(blockCopy, v8);
  selfCopy = self;
  _newDefaultQuery = [(SUUIMediaLibraryInterface *)self _newDefaultQuery];
  v26 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v9);
  v25 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v9);
  v24 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v9);
  v22 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v9);
  v37 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = itemsCopy;
  v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = *v34;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v34 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v33 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = objc_alloc_init(SUUILibraryItemState);
      storeItemIdentifier = [v14 storeItemIdentifier];

      if (storeItemIdentifier)
      {
        storeItemIdentifier2 = [v14 storeItemIdentifier];
        v19 = [v22 predicateWithValue:storeItemIdentifier2 forProperty:v24];

        [_newDefaultQuery addFilterPredicate:v19];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __71__SUUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke;
        v28[3] = &unk_2798FD528;
        v29 = v16;
        v30 = selfCopy;
        v31 = v25;
        v32 = v26;
        [_newDefaultQuery _enumerateUnorderedItemsUsingBlock:v28];
        [_newDefaultQuery removeFilterPredicate:v19];
      }

      blockCopy[2](blockCopy, v14, v16, &v37);
      v20 = v37;

      objc_autoreleasePoolPop(v15);
      if (v20)
      {
        break;
      }

      if (v12 == ++v13)
      {
        v12 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __71__SUUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2;
    [v5 setAvailability:{objc_msgSend(v6, "_availabilityForMediaItem:", v7)}];
    [*(a1 + 32) setAVTypes:{objc_msgSend(*(a1 + 40), "_AVTypesForMediaItem:", v7)}];
    v8 = *(a1 + 32);
    v9 = [v7 valueForProperty:*(a1 + 48)];
    [v8 setHighDefinition:{objc_msgSend(v9, "BOOLValue")}];

    [*(a1 + 32) setRental:{objc_msgSend(v7, "isRental")}];
    v10 = *(a1 + 32);
    v11 = [v7 valueForProperty:*(a1 + 56)];
    [v10 setStoreAccountIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) _storePlatformKindForMediaItem:v7];

    [v12 setStorePlatformKind:v13];
    *a3 = 1;
  }
}

- (BOOL)performActionForLibraryItem:(id)item
{
  v71 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = SUUIMediaPlayerFramework(itemCopy, v5);
  v7 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v6);
  v8 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v6);
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v6);
  v10 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v6);
  v11 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v6);
  v62 = v7;
  v12 = objc_alloc_init(v7);
  v13 = itemCopy;
  storeItemIdentifier = [itemCopy storeItemIdentifier];
  v15 = v8;
  v16 = [v8 predicateWithValue:storeItemIdentifier forProperty:v9];
  [v12 addFilterPredicate:v16];

  v65 = v10;
  v17 = [MEMORY[0x277CBEB98] setWithObjects:{v9, v10, v11, 0}];
  [v12 setItemPropertiesToFetch:v17];

  selfCopy = self;
  [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v12];
  v64 = v12;
  items = [v12 items];
  firstObject = [items firstObject];

  mediaType = [firstObject mediaType];
  mediaType2 = [firstObject mediaType];
  if (firstObject && (mediaType & 0xFF00) != 0 && (mediaType2 & 0x800) == 0)
  {
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = v13;
    storeItemIdentifier2 = [v13 storeItemIdentifier];
    v26 = [v23 initWithFormat:@"videos://play?adam-id=%lld&allowCloudPlayback=1", objc_msgSend(storeItemIdentifier2, "longLongValue")];

    v27 = [MEMORY[0x277CBEBC0] URLWithString:v26];
    SUUIMetricsOpenSensitiveURL(v27, 0);

    v28 = 1;
    v29 = v65;
  }

  else
  {
    v59 = mediaType2;
    albumsQuery = [(objc_class *)v62 albumsQuery];
    [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:albumsQuery];
    v24 = v13;
    storeItemIdentifier3 = [v13 storeItemIdentifier];
    v32 = v15;
    v61 = v11;
    v33 = [v15 predicateWithValue:storeItemIdentifier3 forProperty:v11];
    [albumsQuery addFilterPredicate:v33];

    v60 = albumsQuery;
    items2 = [albumsQuery items];
    v35 = [items2 count];
    v36 = 0;
    if (!firstObject || v35)
    {
      v11 = v61;
      v29 = v65;
    }

    else
    {
      v37 = [firstObject valueForProperty:v61];
      if (v37)
      {
        if (([firstObject mediaType] & 4) != 0)
        {
          [(objc_class *)v62 audiobooksQuery];
        }

        else
        {
          [(objc_class *)v62 albumsQuery];
        }
        v38 = ;

        [(SUUIMediaLibraryInterface *)selfCopy _restrictQueryToLocalContent:v38];
        v39 = [v32 predicateWithValue:v37 forProperty:v61];
        [v38 addFilterPredicate:v39];

        items3 = [v38 items];

        v36 = [firstObject valueForProperty:v9];
        items2 = items3;
        v60 = v38;
      }

      else
      {
        v36 = 0;
      }

      v29 = v65;

      v11 = v61;
    }

    v41 = [items2 count];
    v28 = v41 != 0;
    if (v41)
    {
      v42 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Mpmediaitemcol.isa v6))];
      v43 = [SUUIWeakLinkedClassForString(&cfstr_Mpmusicplayerc.isa v6)];
      v63 = v42;
      [v43 setQueueWithItemCollection:v42];
      v44 = v59;
      if (v36)
      {
        v56 = v28;
        v57 = items2;
        v58 = v24;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v45 = items2;
        v46 = [v45 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v67;
          v55 = v43;
          while (2)
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v67 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v66 + 1) + 8 * i);
              v51 = [v50 valueForProperty:v9];
              v52 = [v51 isEqualToNumber:v36];

              if (v52)
              {
                v43 = v55;
                [v55 setNowPlayingItem:v50];
                goto LABEL_27;
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v66 objects:v70 count:16];
            v43 = v55;
            if (v47)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v24 = v58;
        v44 = v59;
        v29 = v65;
        v11 = v61;
        items2 = v57;
        v28 = v56;
      }

      [v43 play];
      if ((v44 & 0x800) != 0)
      {
        v53 = [MEMORY[0x277CBEBC0] URLWithString:@"music://tab/?tab=library&library-menu=com.apple.Music.LibraryView.MusicVideos"];
        SUUIMetricsOpenSensitiveURL(v53, 0);
      }
    }
  }

  return v28;
}

- (BOOL)isItemLocalAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  v5 = SUUIMediaPlayerFramework(audiobookCopy, v4);
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v5);
  v7 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v5);
  audiobooksQuery = [v6 audiobooksQuery];
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v5);
  storeItemIdentifier = [audiobookCopy storeItemIdentifier];

  v11 = [v7 predicateWithValue:storeItemIdentifier forProperty:v9];

  [audiobooksQuery addFilterPredicate:v11];
  items = [audiobooksQuery items];
  LOBYTE(v9) = [items count] != 0;

  return v9;
}

- (id)stateForLibraryItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(SUUILibraryItemState);
  v7 = SUUIMediaPlayerFramework(v5, v6);
  _newDefaultQuery = [(SUUIMediaLibraryInterface *)self _newDefaultQuery];
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v7);
  v10 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v7);
  v11 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v7);
  v12 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v7);
  storeItemIdentifier = [itemCopy storeItemIdentifier];

  v14 = [v12 predicateWithValue:storeItemIdentifier forProperty:v11];

  [_newDefaultQuery addFilterPredicate:v14];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__SUUIMediaLibraryInterface_stateForLibraryItem___block_invoke;
  v21[3] = &unk_2798FD528;
  v15 = v5;
  v22 = v15;
  selfCopy = self;
  v24 = v10;
  v25 = v9;
  v16 = v9;
  v17 = v10;
  [_newDefaultQuery _enumerateUnorderedItemsUsingBlock:v21];
  v18 = v25;
  v19 = v15;

  return v15;
}

void __49__SUUIMediaLibraryInterface_stateForLibraryItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2;
    [v5 setAvailability:{objc_msgSend(v6, "_availabilityForMediaItem:", v7)}];
    [*(a1 + 32) setAVTypes:{objc_msgSend(*(a1 + 40), "_AVTypesForMediaItem:", v7)}];
    v8 = *(a1 + 32);
    v9 = [v7 valueForProperty:*(a1 + 48)];
    [v8 setHighDefinition:{objc_msgSend(v9, "BOOLValue")}];

    [*(a1 + 32) setRental:{objc_msgSend(v7, "isRental")}];
    v10 = *(a1 + 32);
    v11 = [v7 valueForProperty:*(a1 + 56)];
    [v10 setStoreAccountIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) _storePlatformKindForMediaItem:v7];

    [v12 setStorePlatformKind:v13];
    *a3 = 1;
  }
}

- (void)removeMediaItemsForLibraryItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = SUUIMediaPlayerFramework(itemsCopy, v4);
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v5);
  v7 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v5);
  v20 = SUUIWeakLinkedClassForString(&cfstr_Mpmedialibrary.isa, v5);
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v5);
  v9 = objc_alloc_init(v6);
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = itemsCopy;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        storeItemIdentifier = [*(*(&v22 + 1) + 8 * v14) storeItemIdentifier];
        v16 = [v7 predicateWithValue:storeItemIdentifier forProperty:v8];

        [v9 addFilterPredicate:v16];
        items = [v9 items];
        firstObject = [items firstObject];

        if (firstObject)
        {
          [array addObject:firstObject];
        }

        [v9 removeFilterPredicate:v16];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  if ([array count])
  {
    defaultMediaLibrary = [v20 defaultMediaLibrary];
    [defaultMediaLibrary removeItems:array];
  }
}

- (int64_t)_availabilityForMediaItem:(id)item
{
  itemCopy = item;
  if (_availabilityForMediaItem__sOnce != -1)
  {
    [SUUIMediaLibraryInterface _availabilityForMediaItem:];
  }

  v4 = [itemCopy valueForProperty:_availabilityForMediaItem__sFamilyAccountIDProperty];
  if ([v4 unsignedLongLongValue] && (objc_msgSend(itemCopy, "mediaType") & 0x300) != 0)
  {
    v5 = [itemCopy valueForProperty:_availabilityForMediaItem__sFilePathProperty];
    if ([v5 length])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v5 isDirectory:0];
      v7 = [[_availabilityForMediaItem__sPlayerItemClass alloc] initWithURL:v6];
      if ([v7 isContentAuthorizedForPlayback])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

id __55__SUUIMediaLibraryInterface__availabilityForMediaItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = SUUIMediaPlayerFramework(a1, a2);
  v3 = SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreFamilyAccountID", v2);
  objc_storeStrong(&_availabilityForMediaItem__sFamilyAccountIDProperty, *v3);
  v4 = SUUIWeakLinkedSymbolForString("MPMediaItemPropertyFilePath", v2);
  objc_storeStrong(&_availabilityForMediaItem__sFilePathProperty, *v4);
  v7 = SUUIAVFoundationFramework(v5, v6);
  result = SUUIWeakLinkedClassForString(&cfstr_Avplayeritem.isa, v7);
  _availabilityForMediaItem__sPlayerItemClass = result;
  return result;
}

- (unint64_t)_AVTypesForMediaItem:(id)item
{
  if (([item mediaType] & 0xFF00) != 0)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (id)_newDefaultQuery
{
  v3 = SUUIMediaPlayerFramework(self, a2);
  v4 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v3));
  [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v3)}];
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsRental", v3)}];
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v3)}];
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v3)}];
  [v4 setItemPropertiesToFetch:v5];

  return v4;
}

- (void)_restrictQueryToLocalContent:(id)content
{
  contentCopy = content;
  v5 = SUUIMediaPlayerFramework(contentCopy, v4);
  v6 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsLocal", v5);
  v7 = [SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa v5)];

  [contentCopy addFilterPredicate:v7];
}

- (id)_storePlatformKindForMediaItem:(id)item
{
  mediaType = [item mediaType];
  result = 0;
  if (mediaType <= 255)
  {
    if (mediaType > 3)
    {
      if (mediaType == 4)
      {
        return @"book";
      }

      if (mediaType != 8)
      {
        return result;
      }
    }

    else
    {
      if (mediaType == 1)
      {
        return @"song";
      }

      if (mediaType != 2)
      {
        return result;
      }
    }

    return @"podcastEpisode";
  }

  if (mediaType <= 1023)
  {
    v5 = @"tvEpisode";
    if (mediaType != 512)
    {
      v5 = 0;
    }

    if (mediaType == 256)
    {
      return @"movie";
    }

    else
    {
      return v5;
    }
  }

  switch(mediaType)
  {
    case 1024:
      return @"podcastEpisode";
    case 2048:
      return @"musicVideo";
    case 4096:
      return @"podcastEpisode";
  }

  return result;
}

@end