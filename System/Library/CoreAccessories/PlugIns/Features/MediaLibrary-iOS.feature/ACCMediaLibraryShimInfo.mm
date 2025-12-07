@interface ACCMediaLibraryShimInfo
+ (BOOL)isItemAd:(id)ad;
+ (id)getMediaItemForContentItem:(id)item propertyList:(id)list playlistContent:(id)content;
- (ACCMediaLibraryShimInfo)initWithMediaLibrary:(id)library accessory:(id)accessory Context:(id)context LibraryType:(int)type;
- (BOOL)_isVisibleUpdate:(id)update;
- (NSString)name;
- (id)_beginMediaLibraryUpdatesWithAnchor:(id)anchor validity:(id)validity;
- (id)_getMediaItemForPersistentID:(unint64_t)d;
- (id)_getUIDString;
- (id)_handleMediaLibraryItemUpdate:(id)update forLibrary:(id)library forProperties:(id)properties success:(BOOL *)success forceDelete:(BOOL)delete;
- (id)_handleMediaLibraryPlaylistUpdate:(id)update forLibrary:(id)library forProperties:(id)properties success:(BOOL *)success;
- (id)_handlePlaylistContentForEntify:(id)entify style:(int)style revision:(id)revision;
- (id)description;
- (id)getPlaylistItems:(id)items;
- (int64_t)_attemptUpdate:(id)update;
- (int64_t)_checkAndWaitForWindowOk:(int64_t)ok;
- (void)_beginRadioLibraryUpdates;
- (void)_canShowCloudTracksDidChangeNotification:(id)notification;
- (void)_mediaLibraryChanged:(id)changed;
- (void)_radioLibraryChanged:(id)changed;
- (void)_registerForMPNotifications;
- (void)_sendRadioLibraryUpdates;
- (void)_startMLPlaybackOfAllSongsStartItem:(id)item;
- (void)_startPlaybackOfCollection:(unint64_t)collection ofType:(int)type withFirst:(id)first orIndex:(unsigned int)index;
- (void)_startPlaybackOfRadioStation:(unint64_t)station;
- (void)confirmMediaLibraryUpdateLastRevision:(id)revision updateCount:(unsigned int)count;
- (void)dealloc;
- (void)playWithQuery:(id)query andFirstItem:(id)item;
- (void)shuttingDown;
- (void)startMLPlaybackOfAllSongsStartPersistentID:(unint64_t)d;
- (void)startMLPlaybackWithResume:(BOOL)resume;
- (void)startPlaybackOfCollection:(unint64_t)collection ofType:(int)type withFirst:(unsigned int)first;
- (void)startPlaybackOfCollection:(unint64_t)collection ofType:(int)type withFirstPersistentID:(unint64_t)d;
- (void)startPlaybackOfItems:(id)items withFirst:(unsigned int)first;
- (void)startSendingMediaLibraryUpdates:(id)updates lastRevision:(id)revision requestedTransferID:(BOOL)d requestedMetaList:(BOOL)list requestedMetaProperties:(BOOL)properties;
- (void)stopSendingMediaLibraryUpdates;
@end

@implementation ACCMediaLibraryShimInfo

+ (BOOL)isItemAd:(id)ad
{
  adCopy = ad;
  v4 = objc_autoreleasePoolPush();
  v5 = [adCopy valueForProperty:*MEMORY[0x277CD5850]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isEqualToString:&stru_2848E72C8] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

+ (id)getMediaItemForContentItem:(id)item propertyList:(id)list playlistContent:(id)content
{
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  listCopy = list;
  contentCopy = content;
  v10 = 0;
  if (itemCopy && listCopy)
  {
    v11 = objc_alloc(MEMORY[0x277CE82C8]);
    mediaLibraryUID = [contentCopy mediaLibraryUID];
    v25 = contentCopy;
    v10 = [v11 initWithMediaLibrary:mediaLibraryUID persistentID:objc_msgSend(itemCopy playlistPersistentID:{"persistentID"), objc_msgSend(contentCopy, "persistentID")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = listCopy;
    v13 = listCopy;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = v14;
    v16 = *v31;
    v29 = *MEMORY[0x277CD5710];
    v28 = *MEMORY[0x277CD5750];
    v27 = *MEMORY[0x277CD56B8];
    v17 = *MEMORY[0x277CD56E8];
    v18 = *MEMORY[0x277CD56D0];
    v19 = *MEMORY[0x277CD58B8];
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        unsignedIntValue = [*(*(&v30 + 1) + 8 * i) unsignedIntValue];
        if (unsignedIntValue > 11)
        {
          if (unsignedIntValue > 15)
          {
            if (unsignedIntValue == 16)
            {
              v22 = [itemCopy valueForProperty:v28];
              if (v22)
              {
                [v10 setGenre:v22];
              }
            }

            else
            {
              if (unsignedIntValue != 18)
              {
                continue;
              }

              v22 = [itemCopy valueForProperty:v29];
              if (v22)
              {
                [v10 setComposer:v22];
              }
            }
          }

          else if (unsignedIntValue == 12)
          {
            v22 = [itemCopy valueForProperty:v17];
            if (v22)
            {
              [v10 setArtist:v22];
            }
          }

          else
          {
            if (unsignedIntValue != 14)
            {
              continue;
            }

            v22 = [itemCopy valueForProperty:v27];
            if (v22)
            {
              [v10 setAlbumArtist:v22];
            }
          }

          goto LABEL_31;
        }

        if (unsignedIntValue)
        {
          if (unsignedIntValue == 1)
          {
            v22 = [itemCopy valueForProperty:v19];
            if (v22)
            {
              [v10 setTitle:v22];
            }
          }

          else
          {
            if (unsignedIntValue != 6)
            {
              continue;
            }

            v22 = [itemCopy valueForProperty:v18];
            if (v22)
            {
              [v10 setAlbumTitle:v22];
            }
          }

LABEL_31:

          continue;
        }

        persistentID = [itemCopy persistentID];
        if (persistentID)
        {
          [v10 setPersistentID:persistentID];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v15)
      {
LABEL_34:

        contentCopy = v25;
        listCopy = v26;
        break;
      }
    }
  }

  return v10;
}

- (NSString)name
{
  mpMediaLibrary = self->_mpMediaLibrary;
  if (mpMediaLibrary)
  {
    mpMediaLibrary = [mpMediaLibrary name];
    v2 = vars8;
  }

  return mpMediaLibrary;
}

- (id)_getUIDString
{
  v11 = *MEMORY[0x277D85DE8];
  libraryType = self->_libraryType;
  if (libraryType == 2)
  {
    v4 = ACCRadioLibraryUIDString();
  }

  else if (libraryType)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_libraryType;
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "ACCMediaLibraryShimInfo _getUIDString ERROR: Invalid libraryType(%d)", v10, 8u);
    }

    v4 = &stru_2848E72C8;
  }

  else
  {
    v4 = ACCMediaLibraryShimUIDString(self->_mpMediaLibrary, [(ACCMediaLibraryShim *)self->_context subscribedToAppleMusic]);
  }

  return v4;
}

- (id)getPlaylistItems:(id)items
{
  v4 = MEMORY[0x277CD5E10];
  itemsCopy = items;
  defaultMediaLibrary = [v4 defaultMediaLibrary];
  [MEMORY[0x277CD5E10] setDefaultMediaLibrary:self->_mpMediaLibrary];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:3319];
  v8 = [MEMORY[0x277CD5E30] predicateWithValue:v7 forProperty:*MEMORY[0x277CD57C8]];
  v9 = MEMORY[0x277CCABB0];
  persistentID = [itemsCopy persistentID];

  v11 = [v9 numberWithUnsignedLongLong:persistentID];
  v12 = [MEMORY[0x277CD5E30] predicateWithValue:v11 forProperty:*MEMORY[0x277CD5940]];
  v13 = [MEMORY[0x277CBEB98] setWithObjects:{v12, v8, 0}];
  v14 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v13];
  [v14 setGroupingType:6];
  items = [v14 items];
  v16 = [MEMORY[0x277CBEB18] arrayWithArray:items];
  [MEMORY[0x277CD5E10] setDefaultMediaLibrary:defaultMediaLibrary];

  return v16;
}

- (id)_handlePlaylistContentForEntify:(id)entify style:(int)style revision:(id)revision
{
  v81 = *MEMORY[0x277D85DE8];
  entifyCopy = entify;
  revisionCopy = revision;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v76 = entifyCopy;
    v77 = 1024;
    styleCopy6 = style;
    v79 = 2112;
    v80 = revisionCopy;
    _os_log_impl(&dword_2335D3000, v12, OS_LOG_TYPE_INFO, "_handlePlaylistContentForEntify: entify=%@ contentStyle=%d revision=%@", buf, 0x1Cu);
  }

  if (!self->_enableLibraryUpdate)
  {
    v15 = 0;
    v13 = 0;
    goto LABEL_112;
  }

  v13 = dispatch_semaphore_create(0);
  v14 = entifyCopy;
  if (style == 1)
  {
    v57 = 1;
    [0 setContentStyle:1];
    v59 = 0;
LABEL_19:
    v15 = [objc_alloc(MEMORY[0x277CE82C0]) initWithMediaLibrary:self->_UIDString persistentID:objc_msgSend(v14 revision:{"persistentID"), revisionCopy}];
    v16 = [(ACCMediaLibraryShimInfo *)self getPlaylistItems:v14];
    if (v16)
    {
      v17 = v16;
      v18 = [(NSDictionary *)self->_dbUpdateList objectForKey:@"PlaylistContentItemProperty"];
      v55 = v13;
      v58 = v14;
      if (!v18)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v19 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCMediaLibraryShimInfo _getUIDString];
          }

          v19 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v76 = v58;
          v77 = 1024;
          styleCopy6 = style;
          v79 = 2112;
          v80 = revisionCopy;
          _os_log_impl(&dword_2335D3000, v19, OS_LOG_TYPE_INFO, "_handlePlaylistContentForEntify: entify=%@ contentStyle=%d revision=%@, cannot find ACC_ML_PLAYLIST_CONTENT_ITEM_PROPERTIES", buf, 0x1Cu);
        }
      }

      v56 = v17;
      if (_sendOnlyInLibraryItemsForPlaylist())
      {
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v25 = v17;
        v26 = [v25 countByEnumeratingWithState:&v68 objects:v74 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v69;
          while (2)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v69 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v68 + 1) + 8 * i);
              if (![v30 persistentID] || !objc_msgSend(v30, "existsInLibrary"))
              {
                v31 = 0;
                v17 = v56;
                goto LABEL_55;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v68 objects:v74 count:16];
            v31 = 1;
            v17 = v56;
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v31 = 1;
        }

LABEL_55:
      }

      else
      {
        v31 = 1;
      }

      if (gLogObjects)
      {
        v32 = gNumLogObjects <= 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = !v32;
      if (v57 | v31) == 1 && ((v59 ^ 1))
      {
        if (v33)
        {
          v34 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCMediaLibraryShimInfo _getUIDString];
          }

          v34 = MEMORY[0x277D86220];
          v43 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v76 = v58;
          v77 = 1024;
          styleCopy6 = style;
          v79 = 2112;
          v80 = revisionCopy;
          _os_log_impl(&dword_2335D3000, v34, OS_LOG_TYPE_INFO, "_handlePlaylistContentForEntify: entify=%@ contentStyle=%d revision=%@, PlaylistContentStylePersistentIDs", buf, 0x1Cu);
        }

        [v15 setContentStyle:1];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v44 = v17;
        v45 = [v44 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v61;
          do
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v61 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = *(*(&v60 + 1) + 8 * j);
              if ([v49 persistentID] && ((objc_msgSend(v49, "existsInLibrary") & 1) != 0 || (_sendOnlyInLibraryItemsForPlaylist() & 1) == 0))
              {
                [v15 addContentPersistentID:{objc_msgSend(v49, "persistentID")}];
              }
            }

            v46 = [v44 countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v46);
        }
      }

      else
      {
        if (v33)
        {
          v35 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCMediaLibraryShimInfo _getUIDString];
          }

          v35 = MEMORY[0x277D86220];
          v36 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v76 = v58;
          v77 = 1024;
          styleCopy6 = style;
          v79 = 2112;
          v80 = revisionCopy;
          _os_log_impl(&dword_2335D3000, v35, OS_LOG_TYPE_INFO, "_handlePlaylistContentForEntify: entify=%@ contentStyle=%d revision=%@, PlaylistContentStyleRecords", buf, 0x1Cu);
        }

        [v15 setContentStyle:2];
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v37 = v17;
        v38 = [v37 countByEnumeratingWithState:&v64 objects:v73 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v65;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v65 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = [ACCMediaLibraryShimInfo getMediaItemForContentItem:*(*(&v64 + 1) + 8 * k) propertyList:v18 playlistContent:v15];
              [v15 addContentItem:v42];
            }

            v39 = [v37 countByEnumeratingWithState:&v64 objects:v73 count:16];
          }

          while (v39);
        }
      }

      v13 = v55;
      v14 = v58;
    }

    else
    {
      if (gLogObjects)
      {
        v20 = gNumLogObjects <= 0;
      }

      else
      {
        v20 = 1;
      }

      v21 = !v20;
      if (v59)
      {
        if (v21)
        {
          v22 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCMediaLibraryShimInfo _getUIDString];
          }

          v22 = MEMORY[0x277D86220];
          v50 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v76 = v14;
          v77 = 1024;
          styleCopy6 = style;
          v79 = 2112;
          v80 = revisionCopy;
          _os_log_impl(&dword_2335D3000, v22, OS_LOG_TYPE_INFO, "_handlePlaylistContentForEntify: EMPTY! entify=%@ contentStyle=%d revision=%@, PlaylistContentStyleRecords", buf, 0x1Cu);
        }

        v51 = v15;
        v52 = 2;
      }

      else
      {
        if (v21)
        {
          v23 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCMediaLibraryShimInfo _getUIDString];
          }

          v23 = MEMORY[0x277D86220];
          v53 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v76 = v14;
          v77 = 1024;
          styleCopy6 = style;
          v79 = 2112;
          v80 = revisionCopy;
          _os_log_impl(&dword_2335D3000, v23, OS_LOG_TYPE_INFO, "_handlePlaylistContentForEntify: EMPTY! entify=%@ contentStyle=%d revision=%@, PlaylistContentStylePersistentIDs", buf, 0x1Cu);
        }

        v51 = v15;
        v52 = 1;
      }

      [v51 setContentStyle:v52];
    }

    goto LABEL_111;
  }

  if (style == 3)
  {
    v59 = 0;
    v57 = 0;
    goto LABEL_19;
  }

  v15 = 0;
  if (style == 2)
  {
    v57 = 0;
    v59 = 1;
    goto LABEL_19;
  }

LABEL_111:

LABEL_112:

  return v15;
}

- (id)_handleMediaLibraryPlaylistUpdate:(id)update forLibrary:(id)library forProperties:(id)properties success:(BOOL *)success
{
  v75 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  libraryCopy = library;
  propertiesCopy = properties;
  if (!success)
  {
    ACCMediaLibraryShimUIDString_cold_1();
  }

  v12 = propertiesCopy;
  *success = 1;
  entity = [updateCopy entity];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = entity;
      _os_log_impl(&dword_2335D3000, v18, OS_LOG_TYPE_DEFAULT, "_handleMediaLibraryPlaylistUpdate: NOT playlist entity=%@", buf, 0xCu);
    }

    v65 = 0;
    v20 = 0;
    goto LABEL_26;
  }

  v14 = *MEMORY[0x277CD5918];
  v15 = [entity valueForProperty:*MEMORY[0x277CD5918]];
  if ([v15 BOOLValue])
  {
    isGeniusMixesSupported = [(ACCMediaLibraryShim *)self->_context isGeniusMixesSupported];

    if (!isGeniusMixesSupported)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v17 = MEMORY[0x277D86220];
        v55 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v56 = "_handleMediaLibraryPlaylistUpdate: skip, GeniusMix but not supported";
LABEL_81:
      _os_log_impl(&dword_2335D3000, v17, OS_LOG_TYPE_INFO, v56, buf, 2u);
LABEL_82:

      v65 = 0;
      v20 = 0;
      v25 = 0;
      v27 = 0;
      goto LABEL_83;
    }
  }

  else
  {
  }

  v63 = v14;
  v21 = [entity valueForProperty:v14];
  if ([v21 BOOLValue])
  {
  }

  else
  {
    v22 = [entity valueForProperty:*MEMORY[0x277CD5920]];
    bOOLValue = [v22 BOOLValue];

    if (bOOLValue)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v17 = MEMORY[0x277D86220];
        v57 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_82;
      }

      *buf = 0;
      v56 = "_handleMediaLibraryPlaylistUpdates: skip, not GeniusMix && isHidden";
      goto LABEL_81;
    }
  }

  if ([updateCopy deletionType])
  {
    persistentID = [entity persistentID];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
    v65 = 0;
LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v28 = objc_alloc(MEMORY[0x277CE82B8]);
  UIDString = self->_UIDString;
  persistentID2 = [entity persistentID];
  anchor = [updateCopy anchor];
  v25 = [v28 initWithMediaLibrary:UIDString persistentID:persistentID2 revision:anchor];

  if (self->_requestedTransferID)
  {
    [v25 setContentStyle:{objc_msgSend(v25, "contentStyle") | 1}];
  }

  v60 = libraryCopy;
  v32 = v63;
  if (self->_requestedMetaList && self->_requestedMetaProperties)
  {
    [v25 setContentStyle:{objc_msgSend(v25, "contentStyle") | 2}];
  }

  v62 = updateCopy;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v59 = v12;
  v33 = v12;
  v34 = [v33 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (!v34)
  {
    v65 = 0;
    goto LABEL_87;
  }

  v35 = v34;
  v65 = 0;
  v36 = *v69;
  v37 = *MEMORY[0x277CD5910];
  v67 = *MEMORY[0x277CD5938];
  v66 = *MEMORY[0x277CD5930];
  v61 = entity;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v69 != v36)
      {
        objc_enumerationMutation(v33);
      }

      unsignedIntValue = [*(*(&v68 + 1) + 8 * i) unsignedIntValue];
      if (unsignedIntValue > 3)
      {
        switch(unsignedIntValue)
        {
          case 4:
            v44 = [entity valueForProperty:v37];
            v41 = v44;
            if (v44)
            {
              [v25 setFolder:{objc_msgSend(v44, "intValue") != 0}];
            }

            break;
          case 5:
            if (![v25 contentStyle])
            {
              continue;
            }

            v41 = [entity valueForProperty:v32];
            v46 = v37;
            v47 = [entity valueForProperty:v37];
            if ([v41 BOOLValue] & 1) != 0 || (objc_msgSend(v47, "BOOLValue"))
            {
              contentStyle2 = 0;
            }

            else
            {
              contentStyle = [v25 contentStyle];
              anchor2 = [v62 anchor];
              v51 = entity;
              v52 = anchor2;
              v53 = [(ACCMediaLibraryShimInfo *)self _handlePlaylistContentForEntify:v51 style:contentStyle revision:anchor2];

              [v25 setContent:v53];
              content = [v25 content];

              if (content)
              {
                contentStyle2 = [v53 contentStyle];
              }

              else
              {
                contentStyle2 = 0;
              }

              v65 = v53;
              v32 = v63;
              entity = v61;
            }

            [v25 setContentStyle:contentStyle2];

            v37 = v46;
            break;
          case 8:
            playlistAttributes = [entity playlistAttributes];
            v43 = [MEMORY[0x277CCABB0] numberWithBool:(playlistAttributes >> 1) & 1];
            v41 = v43;
            if (v43)
            {
              [v25 setSmartPlaylist:{objc_msgSend(v43, "intValue") != 0}];
            }

            break;
          default:
            continue;
        }
      }

      else
      {
        switch(unsignedIntValue)
        {
          case 1:
            v41 = [entity valueForProperty:v66];
            if (v41)
            {
              [v25 setName:v41];
            }

            break;
          case 2:
            v45 = [entity valueForProperty:v67];
            v41 = v45;
            if (v45)
            {
              [v25 setParentPersistentID:{objc_msgSend(v45, "unsignedLongLongValue")}];
            }

            break;
          case 3:
            v40 = [entity valueForProperty:v32];
            v41 = v40;
            if (v40)
            {
              [v25 setGeniusMix:{objc_msgSend(v40, "intValue") != 0}];
            }

            break;
          default:
            continue;
        }
      }
    }

    v35 = [v33 countByEnumeratingWithState:&v68 objects:v74 count:16];
  }

  while (v35);
LABEL_87:

  v20 = 0;
  updateCopy = v62;
  v12 = v59;
  libraryCopy = v60;
LABEL_27:
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v20;
  }

  v27 = v26;
LABEL_83:

  return v27;
}

- (id)_handleMediaLibraryItemUpdate:(id)update forLibrary:(id)library forProperties:(id)properties success:(BOOL *)success forceDelete:(BOOL)delete
{
  v75 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  propertiesCopy = properties;
  entity = [updateCopy entity];
  *success = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = entity;
      _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_DEFAULT, "_handleMediaLibraryItemUpdate: NOT mediaItem entity=%@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (delete || [updateCopy deletionType])
  {
    persistentID = [entity persistentID];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v22 = [entity valueForProperty:*MEMORY[0x277CD57C8]];
  integerValue = [v22 integerValue];

  v67 = integerValue;
  if ((integerValue & 0xCF7) == 0)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v24 = objc_alloc(MEMORY[0x277CE82A8]);
  UIDString = self->_UIDString;
  persistentID2 = [entity persistentID];
  anchor = [updateCopy anchor];
  v18 = [v24 initWithMediaLibrary:UIDString persistentID:persistentID2 revision:anchor];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v48 = propertiesCopy;
  v28 = propertiesCopy;
  v29 = [v28 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v69;
    v66 = *MEMORY[0x277CD5768];
    v65 = *MEMORY[0x277CD5770];
    v64 = *MEMORY[0x277CD5710];
    v63 = *MEMORY[0x277CD5718];
    v62 = *MEMORY[0x277CD5750];
    v61 = *MEMORY[0x277CD5758];
    v60 = *MEMORY[0x277CD56B8];
    v59 = *MEMORY[0x277CD56C0];
    v58 = *MEMORY[0x277CD56E8];
    v57 = *MEMORY[0x277CD56F0];
    v56 = *MEMORY[0x277CD5728];
    v55 = *MEMORY[0x277CD5730];
    v54 = *MEMORY[0x277CD56D8];
    v53 = *MEMORY[0x277CD56E0];
    v52 = *MEMORY[0x277CD56D0];
    v51 = *MEMORY[0x277CD56C8];
    v50 = *MEMORY[0x277CD57E8];
    v49 = *MEMORY[0x277CD5810];
    v32 = *MEMORY[0x277CD58B8];
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v69 != v31)
        {
          objc_enumerationMutation(v28);
        }

        switch([*(*(&v68 + 1) + 8 * i) unsignedIntValue])
        {
          case 1u:
            v34 = [entity valueForProperty:v32];
            if (v34)
            {
              [v18 setTitle:v34];
            }

            goto LABEL_71;
          case 2u:
            if ((v67 & 0x801) != 0)
            {
              [v18 setType:0];
            }

            if ((v67 & 0x402) != 0)
            {
              [v18 setType:1];
            }

            if ((v67 & 4) != 0)
            {
              [v18 setType:2];
            }

            continue;
          case 3u:
            v38 = [entity valueForProperty:v49];
            v34 = v38;
            if (v38)
            {
              [v18 setRating:{objc_msgSend(v38, "unsignedLongValue")}];
            }

            goto LABEL_71;
          case 4u:
            v42 = [entity valueForProperty:v50];
            v34 = v42;
            if (v42)
            {
              [v42 doubleValue];
              [v18 setDuration:(v43 * 1000.0)];
            }

            goto LABEL_71;
          case 5u:
            v44 = [entity valueForProperty:v51];
            v34 = v44;
            if (v44)
            {
              [v18 setAlbumPersistentID:{objc_msgSend(v44, "unsignedLongLongValue")}];
            }

            goto LABEL_71;
          case 6u:
            v34 = [entity valueForProperty:v52];
            if (v34)
            {
              [v18 setAlbumTitle:v34];
            }

            goto LABEL_71;
          case 7u:
            v39 = [entity valueForProperty:v53];
            v34 = v39;
            if (v39)
            {
              [v18 setAlbumTrackNumber:{objc_msgSend(v39, "unsignedIntValue")}];
            }

            goto LABEL_71;
          case 8u:
            v40 = [entity valueForProperty:v54];
            v34 = v40;
            if (v40)
            {
              [v18 setAlbumTrackCount:{objc_msgSend(v40, "unsignedIntValue")}];
            }

            goto LABEL_71;
          case 9u:
            v46 = [entity valueForProperty:v55];
            v34 = v46;
            if (v46)
            {
              [v18 setAlbumDiscNumber:{objc_msgSend(v46, "unsignedIntValue")}];
            }

            goto LABEL_71;
          case 0xAu:
            v45 = [entity valueForProperty:v56];
            v34 = v45;
            if (v45)
            {
              [v18 setAlbumDiscCount:{objc_msgSend(v45, "unsignedIntValue")}];
            }

            goto LABEL_71;
          case 0xBu:
            v36 = [entity valueForProperty:v57];
            v34 = v36;
            if (v36)
            {
              [v18 setArtistPersistentID:{objc_msgSend(v36, "unsignedLongLongValue")}];
            }

            goto LABEL_71;
          case 0xCu:
            v34 = [entity valueForProperty:v58];
            if (v34)
            {
              [v18 setArtist:v34];
            }

            goto LABEL_71;
          case 0xDu:
            v37 = [entity valueForProperty:v59];
            v34 = v37;
            if (v37)
            {
              [v18 setAlbumArtistPersistentID:{objc_msgSend(v37, "unsignedLongLongValue")}];
            }

            goto LABEL_71;
          case 0xEu:
            v34 = [entity valueForProperty:v60];
            if (v34)
            {
              [v18 setAlbumArtist:v34];
            }

            goto LABEL_71;
          case 0xFu:
            v41 = [entity valueForProperty:v61];
            v34 = v41;
            if (v41)
            {
              [v18 setGenrePersistentID:{objc_msgSend(v41, "unsignedLongLongValue")}];
            }

            goto LABEL_71;
          case 0x10u:
            v34 = [entity valueForProperty:v62];
            if (v34)
            {
              [v18 setGenre:v34];
            }

            goto LABEL_71;
          case 0x11u:
            v47 = [entity valueForProperty:v63];
            v34 = v47;
            if (v47)
            {
              [v18 setComposerPersistentID:{objc_msgSend(v47, "unsignedLongLongValue")}];
            }

            goto LABEL_71;
          case 0x12u:
            v34 = [entity valueForProperty:v64];
            if (v34)
            {
              [v18 setComposer:v34];
            }

            goto LABEL_71;
          case 0x13u:
            v35 = [entity valueForProperty:v65];
            v34 = v35;
            if (v35)
            {
              [v18 setPartOfCompilation:{objc_msgSend(v35, "intValue") != 0}];
            }

            goto LABEL_71;
          case 0x19u:
            v34 = [entity valueForProperty:v66];
            [v18 setLocal:{objc_msgSend(v34, "BOOLValue")}];
            goto LABEL_71;
          case 0x1Bu:
            v34 = [entity chaptersOfType:1];
            [v18 setChapterCount:{objc_msgSend(v34, "count")}];
LABEL_71:

            break;
          default:
            continue;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v30);
  }

  v15 = 0;
  propertiesCopy = v48;
LABEL_16:
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  v20 = v19;

  return v19;
}

- (BOOL)_isVisibleUpdate:(id)update
{
  updateCopy = update;
  v4 = updateCopy;
  if (updateCopy)
  {
    if ([updateCopy deletionType])
    {
      v5 = 1;
    }

    else
    {
      entity = [v4 entity];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [entity valueForProperty:*MEMORY[0x277CD5918]];
        if ([v7 BOOLValue])
        {

          v5 = 1;
        }

        else
        {
          v10 = [entity valueForProperty:*MEMORY[0x277CD5920]];
          bOOLValue = [v10 BOOLValue];

          v5 = bOOLValue ^ 1;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [entity valueForProperty:*MEMORY[0x277CD57C8]];
          integerValue = [v8 integerValue];

          v5 = (integerValue & 0x1CFF) != 0;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (int64_t)_checkAndWaitForWindowOk:(int64_t)ok
{
  okCopy = ok;
  v15 = *MEMORY[0x277D85DE8];
  if (ok == 2)
  {
    waitForWindowSem = self->_waitForWindowSem;
    v6 = dispatch_time(0, 5000000000);
    v7 = dispatch_semaphore_wait(waitForWindowSem, v6);
    if (self->_isShuttingDown || !self->_enableLibraryUpdate)
    {
      if (gLogObjects)
      {
        v9 = gNumLogObjects < 1;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v8 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      else
      {
        v8 = *gLogObjects;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        v14 = 2;
        _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_INFO, "_checkAndWaitForWindowOk: lastUpdateResult=%ld, not _enableLibraryUpdate after waiting on _waitForWindowSem", &v13, 0xCu);
      }

      okCopy = 3;
    }

    else
    {
      if (!v7)
      {
        return 2;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v8 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v8 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        okCopy = 2;
        v14 = 2;
        _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_INFO, "_checkAndWaitForWindowOk: lastUpdateResult=%ld, timeout waiting on _waitForWindowSem", &v13, 0xCu);
      }

      else
      {
        okCopy = 2;
      }
    }
  }

  return okCopy;
}

- (int64_t)_attemptUpdate:(id)update
{
  updateCopy = update;
  v5 = 0;
  isShuttingDown = self->_isShuttingDown;
  while (!isShuttingDown)
  {
    v7 = v5;
    if (self->_enableLibraryUpdate)
    {
      v8 = [(ACCMediaLibraryShimInfo *)self _checkAndWaitForWindowOk:updateCopy[2](updateCopy)];
      if (self->_isShuttingDown)
      {
        break;
      }

      v7 = v8;
    }

    isShuttingDown = 0;
    enableLibraryUpdate = self->_enableLibraryUpdate;
    v10 = enableLibraryUpdate && v7 == 2;
    v5 = 2;
    if (!v10)
    {
      if (enableLibraryUpdate)
      {
        goto LABEL_12;
      }

      break;
    }
  }

  v7 = 3;
LABEL_12:

  return v7;
}

- (id)_beginMediaLibraryUpdatesWithAnchor:(id)anchor validity:(id)validity
{
  v369 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  selfCopy = self;
  obj = [self->_mpMediaLibrary _syncValidity];
  measureMemoryUsage = [(ACCMediaLibraryShim *)self->_context measureMemoryUsage];
  bOOLValue = [measureMemoryUsage BOOLValue];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    *v355 = bOOLValue ^ 1;
    *&v355[4] = 2112;
    *&v355[6] = anchorCopy;
    *&v355[14] = 2112;
    *&v355[16] = validityCopy;
    *&v355[24] = 2112;
    *&v355[26] = selfCopy;
    _os_log_impl(&dword_2335D3000, v10, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: bMeasureMemoryUsage=%d anchorTo=%@ validity=%@  %@", buf, 0x26u);
  }

  if (selfCopy->_isShuttingDown)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v13 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    v278 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v355 = anchorCopy;
      *&v355[8] = 2112;
      *&v355[10] = validityCopy;
      _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: anchorTo=%@ validity=%@ ShuttingDown, ignore", buf, 0x16u);
    }

    v17 = 0;
    goto LABEL_372;
  }

  selfCopy->_processingDiffUpdate = 1;
  v278 = GetMediaLibraryHelper(v12);
  v272 = [v278 getFilteredMediaTypesMask:7423];
  v14 = anchorCopy == 0;
  if (!anchorCopy)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v355 = 0;
      *&v355[8] = 2112;
      *&v355[10] = validityCopy;
      _os_log_impl(&dword_2335D3000, v15, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: Begin Full Database Update. anchorTo=%@ validity=%@", buf, 0x16u);
    }
  }

  if ([obj isEqualToString:validityCopy])
  {
    v19 = anchorCopy;
  }

  else
  {
    v20 = anchorCopy;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v21 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
        v20 = anchorCopy;
      }

      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *v355 = v20;
      *&v355[8] = 2112;
      *&v355[10] = validityCopy;
      *&v355[18] = 2112;
      *&v355[20] = obj;
      _os_log_impl(&dword_2335D3000, v21, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: Begin Full Database Update. anchorTo=%@ validity=%@ libraryValidity=%@", buf, 0x20u);
    }

    objc_storeStrong(&selfCopy->_syncValidityPersistentID, obj);
    v19 = @"0";
    v14 = 1;
  }

  anchorCopy = v19;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v23 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v355 = v19;
    *&v355[8] = 1024;
    *&v355[10] = v272;
    _os_log_impl(&dword_2335D3000, v23, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: anchorTo=%@ call enumerateEntityChangesAfterSyncAnchor:usingBlock, validMediaTypeMask=%xh", buf, 0x12u);
  }

  v346 = 0;
  v347 = &v346;
  v348 = 0x2020000000;
  v349 = 0;
  v340 = 0;
  v341 = &v340;
  v342 = 0x3032000000;
  v343 = __Block_byref_object_copy_;
  v344 = __Block_byref_object_dispose_;
  v345 = 0;
  v336 = 0;
  v337 = &v336;
  v338 = 0x2020000000;
  v339 = 0;
  v332 = 0;
  v333 = &v332;
  v334 = 0x2020000000;
  v335 = 0;
  v328 = 0;
  v329 = &v328;
  v330 = 0x2020000000;
  v331 = 0;
  measureMemoryUsage2 = [(ACCMediaLibraryShim *)selfCopy->_context measureMemoryUsage];
  if (![measureMemoryUsage2 BOOLValue])
  {
    v282 = 0;
LABEL_60:

    goto LABEL_61;
  }

  memUse = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
  v27 = memUse == 0;

  if (!v27)
  {
    memUse2 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
    [memUse2 mark:@"mlUpdateMark"];

    memUse3 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
    v282 = [memUse3 getMark:@"mlUpdateMark"];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      measureMemoryUsage2 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      measureMemoryUsage2 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(measureMemoryUsage2, OS_LOG_TYPE_INFO))
    {
      residentMem = [v282 residentMem];
      start = [residentMem start];
      virtualMem = [v282 virtualMem];
      start2 = [virtualMem start];
      physFootprintMem = [v282 physFootprintMem];
      start3 = [physFootprintMem start];
      *buf = 138413058;
      *v355 = anchorCopy;
      *&v355[8] = 2048;
      *&v355[10] = start;
      *&v355[18] = 2048;
      *&v355[20] = start2;
      *&v355[28] = 2048;
      *&v355[30] = start3;
      _os_log_impl(&dword_2335D3000, measureMemoryUsage2, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: anchorTo=%@ memUse:[residentStart=%llu virtualStart=%llu physFootprintStart=%llu]", buf, 0x2Au);
    }

    goto LABEL_60;
  }

  v282 = 0;
LABEL_61:
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *(v337 + 24) = 1;
  mpMediaLibrary = selfCopy->_mpMediaLibrary;
  v323[0] = MEMORY[0x277D85DD0];
  v323[1] = 3221225472;
  v323[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke;
  v323[3] = &unk_2789E3338;
  v323[4] = selfCopy;
  v37 = v35;
  v324 = v37;
  v325 = &v346;
  v326 = &v340;
  v327 = &v336;
  [mpMediaLibrary enumerateEntityChangesAfterSyncAnchor:anchorCopy maximumRevisionType:1 usingBlock:v323];
  v38 = @"0";
  if (anchorCopy)
  {
    v38 = anchorCopy;
  }

  v288 = v38;
  v274 = [v37 count];
  v271 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v39 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v39 = MEMORY[0x277D86220];
    v40 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v41 = [v37 count];
    v42 = *(v337 + 24);
    *buf = 138413058;
    *v355 = v288;
    *&v355[8] = 1024;
    *&v355[10] = v274;
    *&v355[14] = 2048;
    *&v355[16] = v41;
    *&v355[24] = 1024;
    *&v355[26] = v42;
    _os_log_impl(&dword_2335D3000, v39, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: initial diffs, nextAnchor=%@ total=%d allChanges.count=%lu endOfDiffsReached=%d\n", buf, 0x22u);
  }

  if (v14)
  {
    v43 = selfCopy;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v44 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
        v43 = selfCopy;
      }

      v44 = MEMORY[0x277D86220];
      v45 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      UIDString = v43->_UIDString;
      *buf = 138412290;
      *v355 = UIDString;
      _os_log_impl(&dword_2335D3000, v44, OS_LOG_TYPE_INFO, "Full Updates! resetUpdate: %@", buf, 0xCu);
    }

    delegate = [(ACCMediaLibraryShim *)selfCopy->_context delegate];
    provider = [delegate provider];
    [provider resetUpdate:selfCopy->_UIDString accessory:selfCopy->_accessory];
  }

  v49 = selfCopy;
  if (selfCopy->_sendPlayAllSongsCapable)
  {
    if (gLogObjects)
    {
      v50 = gNumLogObjects <= 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = !v50;
    if (selfCopy->_libraryType)
    {
      if (v51)
      {
        v52 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
          v49 = selfCopy;
        }

        v52 = MEMORY[0x277D86220];
        v54 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        libraryType = v49->_libraryType;
        v56 = v49->_UIDString;
        *buf = 67109378;
        *v355 = libraryType;
        *&v355[4] = 2112;
        *&v355[6] = v56;
        _os_log_impl(&dword_2335D3000, v52, OS_LOG_TYPE_INFO, "send type=%d PlayAllSongsCapable:NO UIDString=%@", buf, 0x12u);
      }

      delegate2 = [(ACCMediaLibraryShim *)selfCopy->_context delegate];
      [delegate2 notify:selfCopy->_UIDString stateChange:1 enabled:0];
    }

    else
    {
      if (v51)
      {
        v53 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
          v49 = selfCopy;
        }

        v53 = MEMORY[0x277D86220];
        v58 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v59 = v49->_libraryType;
        v60 = v49->_UIDString;
        *buf = 67109378;
        *v355 = v59;
        *&v355[4] = 2112;
        *&v355[6] = v60;
        _os_log_impl(&dword_2335D3000, v53, OS_LOG_TYPE_INFO, "send type=%d PlayAllSongsCapable:YES UIDString=%@", buf, 0x12u);
      }

      delegate2 = [(ACCMediaLibraryShim *)selfCopy->_context delegate];
      [delegate2 notify:selfCopy->_UIDString stateChange:1 enabled:1];
    }

    v49 = selfCopy;
    selfCopy->_sendPlayAllSongsCapable = 0;
  }

  v281 = [(NSDictionary *)v49->_dbUpdateList objectForKey:@"PlaylistProperty"];
  v275 = [(NSDictionary *)v49->_dbUpdateList objectForKey:@"ItemProperty"];
  if (*(v333 + 24) > 0x63u)
  {
    v62 = 0;
    goto LABEL_304;
  }

  v62 = 0;
  v242 = *MEMORY[0x277CD5930];
  v243 = *MEMORY[0x277CD58B8];
  v63 = 10000;
  *&v61 = 67111682;
  v241 = v61;
  v64 = v37;
  do
  {
    if (v347[6] < 1 || !v49->_enableLibraryUpdate || v49->_isShuttingDown)
    {
      v37 = v64;
      break;
    }

    if (!v64)
    {
      v347[6] = 0;
      v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
      *(v337 + 24) = 1;
      v66 = v49->_mpMediaLibrary;
      v318[0] = MEMORY[0x277D85DD0];
      v318[1] = 3221225472;
      v318[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_91;
      v318[3] = &unk_2789E3338;
      v318[4] = v49;
      v64 = v65;
      v319 = v64;
      v320 = &v346;
      v321 = &v340;
      v322 = &v336;
      [v66 enumerateEntityChangesAfterSyncAnchor:v288 maximumRevisionType:1 usingBlock:v318];
      LODWORD(v66) = [v64 count];

      v274 += v66;
    }

    v316 = 0u;
    v317 = 0u;
    v314 = 0u;
    v315 = 0u;
    v283 = v64;
    v67 = [v283 countByEnumeratingWithState:&v314 objects:v368 count:16];
    if (!v67)
    {
      goto LABEL_300;
    }

    v285 = *v315;
    v68 = 1 - v274;
    while (2)
    {
      v284 = v67;
      v69 = 0;
      v286 = v63;
      v280 = v62;
      v276 = v68 + v62;
      v70 = 100 * v62 + 100;
      do
      {
        if (*v315 != v285)
        {
          objc_enumerationMutation(v283);
        }

        if (!selfCopy->_enableLibraryUpdate || selfCopy->_isShuttingDown)
        {
          v62 = v280 + v69;
          v63 = v286 + v69;
          goto LABEL_300;
        }

        v71 = *(*(&v314 + 1) + 8 * v69);
        v72 = v333;
        *(v333 + 24) = v70 / (v286 + v69 + 1);
        if (((v70 / (v286 + v69 + 1)) & 0xFC) >= 0x64 && (v337[3] & 1) == 0)
        {
          *(v72 + 24) = 99;
        }

        context = objc_autoreleasePoolPush();
        deletionType = [v71 deletionType];
        v74 = deletionType;
        if (v14 && (deletionType || ![(ACCMediaLibraryShimInfo *)selfCopy _isVisibleUpdate:v71]))
        {
          [v71 anchor];
          LOBYTE(v14) = 1;
          v288 = start2 = v288;
          goto LABEL_296;
        }

        start2 = [v71 entity];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = gLogObjects;
          v76 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v77 = *gLogObjects;
          }

          else
          {
            v81 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v355 = v75;
              *&v355[8] = 1024;
              *&v355[10] = v76;
              _os_log_error_impl(&dword_2335D3000, v81, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v82 = v81;
            v77 = v81;
          }

          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            v120 = selfCopy->_UIDString;
            anchor = [v71 anchor];
            deletionType2 = [v71 deletionType];
            persistentID = [start2 persistentID];
            physFootprintMem = [start2 name];
            *buf = 138413314;
            *v355 = v120;
            *&v355[8] = 2112;
            *&v355[10] = anchor;
            *&v355[18] = 2048;
            *&v355[20] = deletionType2;
            *&v355[28] = 2048;
            *&v355[30] = persistentID;
            *&v355[38] = 2112;
            *&v355[40] = physFootprintMem;
            _os_log_debug_impl(&dword_2335D3000, v77, OS_LOG_TYPE_DEBUG, "_beginMediaLibraryUpdatesWithAnchor: %@ revision=%@ deletionType=%ld playlist: %llu '%@'", buf, 0x34u);
          }

          if ([v281 count])
          {
            LOBYTE(v350) = 1;
            if ([v278 showMusic])
            {
              if ([v71 deletionType])
              {
                v83 = gLogObjects;
                v84 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v85 = *gLogObjects;
                }

                else
                {
                  v113 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v83;
                    *&v355[8] = 1024;
                    *&v355[10] = v84;
                    _os_log_error_impl(&dword_2335D3000, v113, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v114 = v113;
                  v85 = v113;
                }

                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                {
                  v172 = selfCopy->_UIDString;
                  anchor2 = [v71 anchor];
                  persistentID2 = [start2 persistentID];
                  v175 = *(v333 + 24);
                  accessory = selfCopy->_accessory;
                  *buf = 138413314;
                  *v355 = v172;
                  *&v355[8] = 2112;
                  *&v355[10] = anchor2;
                  *&v355[18] = 2048;
                  *&v355[20] = persistentID2;
                  *&v355[28] = 1024;
                  *&v355[30] = v175;
                  *&v355[34] = 2112;
                  *&v355[36] = accessory;
                  _os_log_debug_impl(&dword_2335D3000, v85, OS_LOG_TYPE_DEBUG, "attempt update:%@ revision:%@ deletePlaylist:%llu progress:%u accessory:%@", buf, 0x30u);
                }

                v310[0] = MEMORY[0x277D85DD0];
                v310[1] = 3221225472;
                v310[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_92;
                v310[3] = &unk_2789E3360;
                v310[4] = selfCopy;
                v310[5] = v71;
                v311 = start2;
                v312 = &v332;
                v313 = &v328;
                v115 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v310];
                v116 = gLogObjects;
                v117 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  physFootprintMem = *gLogObjects;
                }

                else
                {
                  physFootprintMem = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v116;
                    *&v355[8] = 1024;
                    *&v355[10] = v117;
                    _os_log_error_impl(&dword_2335D3000, physFootprintMem, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v118 = physFootprintMem;
                }

                if (os_log_type_enabled(physFootprintMem, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *v355 = v115;
                  _os_log_debug_impl(&dword_2335D3000, physFootprintMem, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", buf, 0xCu);
                }
              }

              else
              {
                v109 = [(ACCMediaLibraryShimInfo *)selfCopy _handleMediaLibraryPlaylistUpdate:v71 forLibrary:validityCopy forProperties:v281 success:&v350];
                v110 = gLogObjects;
                v111 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v112 = *gLogObjects;
                }

                else
                {
                  v124 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v110;
                    *&v355[8] = 1024;
                    *&v355[10] = v111;
                    _os_log_error_impl(&dword_2335D3000, v124, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v125 = v124;
                  v112 = v124;
                }

                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
                {
                  v197 = selfCopy->_UIDString;
                  revision = [v109 revision];
                  v199 = *(v333 + 24);
                  v200 = selfCopy->_accessory;
                  *buf = 138413314;
                  *v355 = v197;
                  *&v355[8] = 2112;
                  *&v355[10] = revision;
                  *&v355[18] = 2112;
                  *&v355[20] = v109;
                  *&v355[28] = 1024;
                  *&v355[30] = v199;
                  *&v355[34] = 2112;
                  *&v355[36] = v200;
                  _os_log_debug_impl(&dword_2335D3000, v112, OS_LOG_TYPE_DEBUG, "attempt update:%@ revision:%@ playlist:%@ progress:%u accessory:%@", buf, 0x30u);
                }

                v306[0] = MEMORY[0x277D85DD0];
                v306[1] = 3221225472;
                v306[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_94;
                v306[3] = &unk_2789E3388;
                v306[4] = selfCopy;
                physFootprintMem = v109;
                v307 = physFootprintMem;
                v308 = &v332;
                v309 = &v328;
                v126 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v306];
                v127 = gLogObjects;
                v128 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v129 = *gLogObjects;
                }

                else
                {
                  v129 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v127;
                    *&v355[8] = 1024;
                    *&v355[10] = v128;
                    _os_log_error_impl(&dword_2335D3000, v129, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v130 = v129;
                }

                if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *v355 = v126;
                  _os_log_debug_impl(&dword_2335D3000, v129, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", buf, 0xCu);
                }

                if (![physFootprintMem contentStyle]|| ([physFootprintMem content], v131 = objc_claimAutoreleasedReturnValue(), v132 = v131 == 0, v131, v132))
                {
                  v136 = gLogObjects;
                  v137 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 1)
                  {
                    v138 = *gLogObjects;
                  }

                  else
                  {
                    v139 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      *v355 = v136;
                      *&v355[8] = 1024;
                      *&v355[10] = v137;
                      _os_log_error_impl(&dword_2335D3000, v139, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }

                    v140 = v139;
                    v138 = v139;
                  }

                  if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
                  {
                    v141 = selfCopy->_UIDString;
                    revision2 = [physFootprintMem revision];
                    if (selfCopy->_requestedTransferID)
                    {
                      v143 = 1;
                    }

                    else
                    {
                      v143 = selfCopy->_requestedMetaList && selfCopy->_requestedMetaProperties;
                    }

                    contentStyle = [physFootprintMem contentStyle];
                    if (contentStyle)
                    {
                      content = [physFootprintMem content];
                      v178 = content != 0;
                    }

                    else
                    {
                      v178 = 0;
                    }

                    *buf = 138413058;
                    *v355 = v141;
                    *&v355[8] = 2112;
                    *&v355[10] = revision2;
                    *&v355[18] = 1024;
                    *&v355[20] = v143;
                    *&v355[24] = 1024;
                    *&v355[26] = v178;
                    _os_log_impl(&dword_2335D3000, v138, OS_LOG_TYPE_INFO, "update:%@ revision:%@ playlist content not requested(%d) or not available(%d)", buf, 0x22u);
                    if (contentStyle)
                    {
                    }
                  }
                }

                else
                {
                  v133 = gLogObjects;
                  v134 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 1)
                  {
                    v135 = *gLogObjects;
                  }

                  else
                  {
                    v155 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      *v355 = v133;
                      *&v355[8] = 1024;
                      *&v355[10] = v134;
                      _os_log_error_impl(&dword_2335D3000, v155, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }

                    v156 = v155;
                    v135 = v155;
                  }

                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
                  {
                    v205 = selfCopy->_UIDString;
                    revision3 = [physFootprintMem revision];
                    content2 = [physFootprintMem content];
                    v208 = *(v333 + 24);
                    v209 = selfCopy->_accessory;
                    *buf = 138413314;
                    *v355 = v205;
                    *&v355[8] = 2112;
                    *&v355[10] = revision3;
                    *&v355[18] = 2112;
                    *&v355[20] = content2;
                    *&v355[28] = 1024;
                    *&v355[30] = v208;
                    *&v355[34] = 2112;
                    *&v355[36] = v209;
                    _os_log_debug_impl(&dword_2335D3000, v135, OS_LOG_TYPE_DEBUG, "attempt update:%@ revision:%@ content:%@ progress:%u accessory:%@", buf, 0x30u);
                  }

                  v303[0] = MEMORY[0x277D85DD0];
                  v303[1] = 3221225472;
                  v303[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_95;
                  v303[3] = &unk_2789E33B0;
                  v303[4] = selfCopy;
                  v304 = physFootprintMem;
                  v305 = &v332;
                  v157 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v303];
                  v158 = gLogObjects;
                  v159 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 1)
                  {
                    v160 = *gLogObjects;
                  }

                  else
                  {
                    v160 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      *v355 = v158;
                      *&v355[8] = 1024;
                      *&v355[10] = v159;
                      _os_log_error_impl(&dword_2335D3000, v160, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }

                    v161 = v160;
                  }

                  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134217984;
                    *v355 = v157;
                    _os_log_debug_impl(&dword_2335D3000, v160, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", buf, 0xCu);
                  }
                }
              }
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = gLogObjects;
            v79 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v80 = *gLogObjects;
            }

            else
            {
              v89 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v355 = v78;
                *&v355[8] = 1024;
                *&v355[10] = v79;
                _os_log_error_impl(&dword_2335D3000, v89, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v90 = v89;
              v80 = v89;
            }

            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              v267 = selfCopy->_UIDString;
              anchor3 = [v71 anchor];
              deletionType3 = [v71 deletionType];
              persistentID3 = [start2 persistentID];
              physFootprintMem = [start2 title];
              *buf = 138413314;
              *v355 = v267;
              *&v355[8] = 2112;
              *&v355[10] = anchor3;
              *&v355[18] = 2048;
              *&v355[20] = deletionType3;
              *&v355[28] = 2048;
              *&v355[30] = persistentID3;
              *&v355[38] = 2112;
              *&v355[40] = physFootprintMem;
              _os_log_debug_impl(&dword_2335D3000, v80, OS_LOG_TYPE_DEBUG, "_beginMediaLibraryUpdatesWithAnchor: %@ revision=%@ deletionType=%ld item: %llu '%@'", buf, 0x34u);
            }

            if ([v275 count])
            {
              LOBYTE(v350) = 1;
              physFootprintMem = start2;
              if ([v71 deletionType] || (-[NSObject existsInLibrary](physFootprintMem, "existsInLibrary") & 1) == 0)
              {
                v95 = gLogObjects;
                v96 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v97 = *gLogObjects;
                }

                else
                {
                  v98 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v95;
                    *&v355[8] = 1024;
                    *&v355[10] = v96;
                    _os_log_error_impl(&dword_2335D3000, v98, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v99 = v98;
                  v97 = v98;
                }

                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                {
                  v162 = selfCopy->_UIDString;
                  anchor4 = [v71 anchor];
                  persistentID4 = [physFootprintMem persistentID];
                  v165 = *(v333 + 24);
                  v166 = selfCopy->_accessory;
                  *buf = 138413314;
                  *v355 = v162;
                  *&v355[8] = 2112;
                  *&v355[10] = anchor4;
                  *&v355[18] = 2048;
                  *&v355[20] = persistentID4;
                  *&v355[28] = 1024;
                  *&v355[30] = v165;
                  *&v355[34] = 2112;
                  *&v355[36] = v166;
                  _os_log_debug_impl(&dword_2335D3000, v97, OS_LOG_TYPE_DEBUG, "attempt update:%@ revision:%@ deleteItem:%llu progress:%u accessory:%@", buf, 0x30u);
                }

                v299[0] = MEMORY[0x277D85DD0];
                v299[1] = 3221225472;
                v299[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_96;
                v299[3] = &unk_2789E3360;
                v299[4] = selfCopy;
                v299[5] = v71;
                v300 = physFootprintMem;
                v301 = &v332;
                v302 = &v328;
                v100 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v299];
                v101 = gLogObjects;
                v102 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v103 = *gLogObjects;
                }

                else
                {
                  v103 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v101;
                    *&v355[8] = 1024;
                    *&v355[10] = v102;
                    _os_log_error_impl(&dword_2335D3000, v103, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v104 = v103;
                }

                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *v355 = v100;
                  _os_log_debug_impl(&dword_2335D3000, v103, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", buf, 0xCu);
                }
              }

              else
              {
                v91 = [(ACCMediaLibraryShimInfo *)selfCopy _handleMediaLibraryItemUpdate:v71 forLibrary:validityCopy forProperties:v275 success:&v350 forceDelete:v74 != 0];
                v92 = gLogObjects;
                v93 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v94 = *gLogObjects;
                }

                else
                {
                  v147 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v92;
                    *&v355[8] = 1024;
                    *&v355[10] = v93;
                    _os_log_error_impl(&dword_2335D3000, v147, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v148 = v147;
                  v94 = v147;
                }

                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                {
                  v201 = selfCopy->_UIDString;
                  revision4 = [v91 revision];
                  v203 = *(v333 + 24);
                  v204 = selfCopy->_accessory;
                  *buf = 138413314;
                  *v355 = v201;
                  *&v355[8] = 2112;
                  *&v355[10] = revision4;
                  *&v355[18] = 2112;
                  *&v355[20] = v91;
                  *&v355[28] = 1024;
                  *&v355[30] = v203;
                  *&v355[34] = 2112;
                  *&v355[36] = v204;
                  _os_log_debug_impl(&dword_2335D3000, v94, OS_LOG_TYPE_DEBUG, "attempt update:%@ revision:%@ item:[%@] progress:%u accessory:%@", buf, 0x30u);
                }

                v295[0] = MEMORY[0x277D85DD0];
                v295[1] = 3221225472;
                v295[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_97;
                v295[3] = &unk_2789E3388;
                v295[4] = selfCopy;
                v149 = v91;
                v296 = v149;
                v297 = &v332;
                v298 = &v328;
                v150 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v295];
                v151 = gLogObjects;
                v152 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v153 = *gLogObjects;
                }

                else
                {
                  v153 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v151;
                    *&v355[8] = 1024;
                    *&v355[10] = v152;
                    _os_log_error_impl(&dword_2335D3000, v153, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v154 = v153;
                }

                if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *v355 = v150;
                  _os_log_debug_impl(&dword_2335D3000, v153, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", buf, 0xCu);
                }
              }

              if ([physFootprintMem mediaType]&& (([physFootprintMem mediaType]& v272) == 0 || ([physFootprintMem mediaType]& 6) != 0))
              {
                v105 = gLogObjects;
                v106 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v107 = *gLogObjects;
                }

                else
                {
                  v107 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v355 = v105;
                    *&v355[8] = 1024;
                    *&v355[10] = v106;
                    _os_log_error_impl(&dword_2335D3000, v107, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v119 = v107;
                }

                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
                {
                  v270 = [ACCMediaLibraryShimInfo isItemAd:physFootprintMem];
                  existsInLibrary = [physFootprintMem existsInLibrary];
                  subscribedToAppleMusic = [(ACCMediaLibraryShim *)selfCopy->_context subscribedToAppleMusic];
                  requestedMetaProperties = selfCopy->_requestedMetaProperties;
                  requestedMetaList = selfCopy->_requestedMetaList;
                  persistentID5 = [physFootprintMem persistentID];
                  title = [physFootprintMem title];
                  artist = [physFootprintMem artist];
                  albumTitle = [physFootprintMem albumTitle];
                  mediaType = [physFootprintMem mediaType];
                  *buf = v241;
                  *v355 = v270;
                  *&v355[4] = 1024;
                  *&v355[6] = existsInLibrary;
                  *&v355[10] = 1024;
                  *&v355[12] = subscribedToAppleMusic;
                  *&v355[16] = 1024;
                  *&v355[18] = requestedMetaProperties;
                  *&v355[22] = 1024;
                  *&v355[24] = requestedMetaList;
                  *&v355[28] = 2048;
                  *&v355[30] = persistentID5;
                  *&v355[38] = 2112;
                  *&v355[40] = title;
                  *&v355[48] = 2112;
                  *v356 = artist;
                  *&v356[8] = 2112;
                  *&v356[10] = albumTitle;
                  *&v356[18] = 2048;
                  *&v356[20] = mediaType;
                  *&v356[28] = 1024;
                  *&v356[30] = v272;
                  _os_log_debug_impl(&dword_2335D3000, v107, OS_LOG_TYPE_DEBUG, "_beginMediaLibraryUpdatesWithAnchor: skip item update: isItemAd=%d existsInLibrary=%d subscribedToAppleMusic=%d _requestedMetaProperties=%d _requestedMetaList=%d mpItem=(persistentID=%llu title='%@' artist='%@' album='%@' type=%lxh) validMediaTypeMask=%xh", buf, 0x58u);
                }
              }
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v86 = gLogObjects;
              v87 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v88 = *gLogObjects;
              }

              else
              {
                v88 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v355 = v86;
                  *&v355[8] = 1024;
                  *&v355[10] = v87;
                  _os_log_error_impl(&dword_2335D3000, v88, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v108 = v88;
              }

              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
              {
                anchor5 = [v71 anchor];
                v264 = objc_opt_class();
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                objc_opt_class();
                v168 = objc_opt_isKindOfClass();
                physFootprintMem = [start2 persistentID];
                v169 = [start2 valueForProperty:v243];
                [start2 valueForProperty:v242];
                v171 = v170 = isKindOfClass & 1;
                *buf = 138414082;
                *v355 = anchor5;
                *&v355[8] = 2112;
                *&v355[10] = start2;
                *&v355[18] = 2112;
                *&v355[20] = v264;
                *&v355[28] = 1024;
                *&v355[30] = v170;
                *&v355[34] = 1024;
                *&v355[36] = v168 & 1;
                *&v355[40] = 2048;
                *&v355[42] = physFootprintMem;
                *v356 = 2112;
                *&v356[2] = v169;
                *&v356[10] = 2112;
                *&v356[12] = v171;
                _os_log_debug_impl(&dword_2335D3000, v88, OS_LOG_TYPE_DEBUG, "_beginMediaLibraryUpdatesWithAnchor: skip unknown update: revision=%@ entity=%@ (class=%@ (isMPItem=%d isMPPlaylist=%d) persistentID=%llu itemTitle='%@' playlistName='%@')", buf, 0x4Au);
              }
            }
          }
        }

        anchor6 = [v71 anchor];

        measureMemoryUsage3 = [(ACCMediaLibraryShim *)selfCopy->_context measureMemoryUsage];
        if ([measureMemoryUsage3 BOOLValue])
        {
          memUse4 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
          v182 = memUse4 == 0;

          if (v182 || ((v280 + v69 + 1) & 0x7F) != 0 && v276 + v69)
          {
            goto LABEL_295;
          }

          memUse5 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
          [memUse5 update];

          if (!v282)
          {
            goto LABEL_295;
          }

          [v282 timeIntervalSinceLastUpdate];
          if (v184 < 1.0)
          {
            goto LABEL_295;
          }

          v185 = gLogObjects;
          v186 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            measureMemoryUsage3 = *gLogObjects;
          }

          else
          {
            physFootprintMem = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v355 = v185;
              *&v355[8] = 1024;
              *&v355[10] = v186;
              _os_log_error_impl(&dword_2335D3000, physFootprintMem, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v187 = physFootprintMem;
            measureMemoryUsage3 = physFootprintMem;
          }

          if (os_log_type_enabled(measureMemoryUsage3, OS_LOG_TYPE_INFO))
          {
            residentMem2 = [v282 residentMem];
            last = [residentMem2 last];
            residentMem3 = [v282 residentMem];
            last2 = [residentMem3 last];
            residentMem4 = [v282 residentMem];
            v251 = [residentMem4 max];
            residentMem5 = [v282 residentMem];
            v250 = [residentMem5 max];
            virtualMem2 = [v282 virtualMem];
            last3 = [virtualMem2 last];
            virtualMem3 = [v282 virtualMem];
            last4 = [virtualMem3 last];
            virtualMem4 = [v282 virtualMem];
            v247 = [virtualMem4 max];
            virtualMem5 = [v282 virtualMem];
            v246 = [virtualMem5 max];
            physFootprintMem2 = [v282 physFootprintMem];
            last5 = [physFootprintMem2 last];
            physFootprintMem3 = [v282 physFootprintMem];
            last6 = [physFootprintMem3 last];
            physFootprintMem4 = [v282 physFootprintMem];
            physFootprintMem = [physFootprintMem4 max];
            physFootprintMem5 = [v282 physFootprintMem];
            v191 = [physFootprintMem5 max];
            *buf = 67112962;
            *v355 = v280 + v69 + 1;
            *&v355[4] = 1024;
            *&v355[6] = v274;
            *&v355[10] = 2112;
            *&v355[12] = anchorCopy;
            *&v355[20] = 2112;
            *&v355[22] = anchor6;
            *&v355[30] = 2048;
            *&v355[32] = last;
            *&v355[40] = 2048;
            *&v355[42] = last2 / 1000000.0;
            *v356 = 2048;
            *&v356[2] = v251;
            *&v356[10] = 2048;
            *&v356[12] = v250 / 1000000.0;
            *&v356[20] = 2048;
            *&v356[22] = last3;
            *&v356[30] = 2048;
            *&v356[32] = last4 / 1000000.0;
            *&v356[40] = 2048;
            v357 = v247;
            v358 = 2048;
            v359 = v246 / 1000000.0;
            v360 = 2048;
            v361 = last5;
            v362 = 2048;
            v363 = last6 / 1000000.0;
            v364 = 2048;
            v365 = physFootprintMem;
            v366 = 2048;
            v367 = v191 / 1000000.0;
            _os_log_impl(&dword_2335D3000, measureMemoryUsage3, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: %d / %d, anchorTo=%@ nextAnchor=%@ memUse:[resident=%llu(%.3fM)/%llu(%.3fM) virtual=%llu(%.3fM)/%llu(%.3fM) physFootprint=%llu(%.3fM)/%llu(%.3fM)]", buf, 0x9Au);
          }
        }

LABEL_295:
        LOBYTE(v14) = 0;
        v288 = anchor6;
LABEL_296:

        objc_autoreleasePoolPop(context);
        ++v69;
        v70 += 100;
      }

      while (v284 != v69);
      v67 = [v283 countByEnumeratingWithState:&v314 objects:v368 count:16];
      v62 = v280 + v69;
      v63 = v286 + v69;
      v68 = 1 - v274;
      if (v67)
      {
        continue;
      }

      break;
    }

    v62 = v280 + v69;
    v63 = v286 + v69;
LABEL_300:

    v64 = 0;
    v37 = 0;
    v49 = selfCopy;
  }

  while (*(v333 + 24) < 0x64u);
LABEL_304:
  if (gLogObjects)
  {
    v210 = gNumLogObjects < 1;
  }

  else
  {
    v210 = 1;
  }

  if (v210)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v212 = MEMORY[0x277D86220];
    v211 = MEMORY[0x277D86220];
  }

  else
  {
    v212 = *gLogObjects;
  }

  if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
  {
    v230 = *(v329 + 6);
    *buf = 138413314;
    *v355 = 0;
    *&v355[8] = 2112;
    *&v355[10] = v288;
    *&v355[18] = 1024;
    *&v355[20] = v62;
    *&v355[24] = 1024;
    *&v355[26] = v230;
    *&v355[30] = 1024;
    *&v355[32] = v274;
    _os_log_debug_impl(&dword_2335D3000, v212, OS_LOG_TYPE_DEBUG, "_beginMediaLibraryUpdatesWithAnchor: lastAnchor=%@ nextAnchor=%@ count=%d lastSentProgress=%d total=%d", buf, 0x28u);
  }

  v213 = selfCopy;
  v214 = [(NSDictionary *)selfCopy->_dbUpdateList objectForKey:@"Progress"];
  if (v214)
  {
    if (v62)
    {
      v215 = *(v329 + 6) < 0x64u;

      if (!v215)
      {
        v216 = 0;
        goto LABEL_337;
      }
    }

    else
    {
    }

    v217 = v288;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v218 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v218 = MEMORY[0x277D86220];
      v219 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v218, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v355 = v217;
      _os_log_impl(&dword_2335D3000, v218, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: attempt need final 100 progress update!!! lastAnchor=%@", buf, 0xCu);
    }

    v291[0] = MEMORY[0x277D85DD0];
    v291[1] = 3221225472;
    v291[2] = __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_99;
    v291[3] = &unk_2789E33B0;
    v216 = v217;
    v292 = v216;
    v293 = selfCopy;
    v294 = &v328;
    v220 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v291];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      physFootprintMem = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      physFootprintMem = MEMORY[0x277D86220];
      v221 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(physFootprintMem, OS_LOG_TYPE_DEBUG))
    {
      [ACCMediaLibraryShimInfo _beginMediaLibraryUpdatesWithAnchor:v220 validity:physFootprintMem];
    }

LABEL_337:
    v213 = selfCopy;
  }

  else
  {
    v216 = 0;
  }

  measureMemoryUsage4 = [(ACCMediaLibraryShim *)v213->_context measureMemoryUsage];
  if ([measureMemoryUsage4 BOOLValue])
  {
    memUse6 = [(ACCMediaLibraryShim *)v213->_context memUse];
    v224 = memUse6 == 0;

    if (!v224)
    {
      memUse7 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
      [memUse7 update];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v226 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v226 = MEMORY[0x277D86220];
        v227 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
      {
        if (v282)
        {
          physFootprintMem = [MEMORY[0x277CBEAA8] date];
          start2 = [v282 startTime];
          [physFootprintMem timeIntervalSinceDate:start2];
          v229 = v228;
        }

        else
        {
          v229 = 0;
        }

        v231 = v347[6];
        v232 = v341[5];
        memUse8 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
        *buf = 134220546;
        *v355 = v229;
        *&v355[8] = 2112;
        *&v355[10] = anchorCopy;
        *&v355[18] = 2112;
        *&v355[20] = v288;
        *&v355[28] = 2112;
        *&v355[30] = validityCopy;
        *&v355[38] = 1024;
        *&v355[40] = v62;
        *&v355[44] = 1024;
        *&v355[46] = v274;
        *v356 = 1024;
        *&v356[2] = v231;
        *&v356[6] = 1024;
        *&v356[8] = 500;
        *&v356[12] = 2112;
        *&v356[14] = v232;
        *&v356[22] = 2112;
        *&v356[24] = v288;
        *&v356[32] = 2112;
        *&v356[34] = memUse8;
        _os_log_impl(&dword_2335D3000, v226, OS_LOG_TYPE_DEFAULT, "_beginMediaLibraryUpdatesWithAnchor: Finished in %f sec, anchorTo=%@ nextAnchor=%@, validity=%@, count=%d / %d, numChanges=%d, kMaxChangesPerIteration=%d, lastAccumulatedRevision=%@, nextAnchor=%@, memUse: \n%@ \n", buf, 0x60u);

        if (v282)
        {
        }
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v234 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v234 = MEMORY[0x277D86220];
        v235 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v355 = v282;
        _os_log_impl(&dword_2335D3000, v234, OS_LOG_TYPE_DEFAULT, "_beginMediaLibraryUpdatesWithAnchor: statMark: \nmark: \n%@ ", buf, 0xCu);
      }

      measureMemoryUsage4 = [(ACCMediaLibraryShim *)selfCopy->_context memUse];
      [measureMemoryUsage4 removeMark:@"mlUpdateMark"];
      v282 = 0;
      goto LABEL_361;
    }
  }

  else
  {
LABEL_361:
  }

  if (v271)
  {
    v236 = v271;
    v350 = 0u;
    v351 = 0u;
    v352 = 0u;
    v353 = 0u;
    v237 = [v236 countByEnumeratingWithState:&v350 objects:buf count:16];
    if (v237)
    {
      v238 = *v351;
      do
      {
        for (i = 0; i != v237; ++i)
        {
          if (*v351 != v238)
          {
            objc_enumerationMutation(v236);
          }

          dispatch_semaphore_signal(*(*(&v350 + 1) + 8 * i));
        }

        v237 = [v236 countByEnumeratingWithState:&v350 objects:buf count:16];
      }

      while (v237);
    }

    [v236 removeAllObjects];
  }

  selfCopy->_processingDiffUpdate = 0;
  v17 = v288;

  _Block_object_dispose(&v328, 8);
  _Block_object_dispose(&v332, 8);
  _Block_object_dispose(&v336, 8);
  _Block_object_dispose(&v340, 8);

  _Block_object_dispose(&v346, 8);
LABEL_372:

  return v17;
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(v6 + 33) == 1 && (*(v6 + 32) & 1) == 0)
  {
    v12 = v5;
    if ([*(a1 + 40) count] > 0x1F3)
    {
      v11 = 0;
      v7 = 1;
    }

    else
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      [*(a1 + 40) addObject:v12];
      v8 = [v12 anchor];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = 0;
      v11 = 1;
    }

    *(*(*(a1 + 64) + 8) + 24) = v11;
    v5 = v12;
  }

  else
  {
    v7 = 1;
  }

  *a3 = v7;
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_91(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (*(v6 + 33) == 1 && (*(v6 + 32) & 1) == 0)
  {
    v12 = v5;
    if ([*(a1 + 40) count] > 0x1F3)
    {
      v11 = 0;
      v7 = 1;
    }

    else
    {
      ++*(*(*(a1 + 48) + 8) + 24);
      [*(a1 + 40) addObject:v12];
      v8 = [v12 anchor];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = 0;
      v11 = 1;
    }

    *(*(*(a1 + 64) + 8) + 24) = v11;
    v5 = v12;
  }

  else
  {
    v7 = 1;
  }

  *a3 = v7;
}

uint64_t __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_92(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_92_cold_2(a1);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 32) & 1) != 0 || *(v5 + 33) != 1)
  {
    return 3;
  }

  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
  v6 = [*(*(a1 + 32) + 40) delegate];
  v7 = [v6 provider];
  v8 = *(*(a1 + 32) + 80);
  v9 = [*(a1 + 40) anchor];
  v10 = [v7 update:v8 revision:v9 deletePlaylist:objc_msgSend(*(a1 + 48) progress:"persistentID") accessory:{*(*(*(a1 + 56) + 8) + 24), *(*(a1 + 32) + 48)}];

  return v10;
}

uint64_t __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_94(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_94_cold_2(a1);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 32) & 1) != 0 || *(v5 + 33) != 1)
  {
    return 3;
  }

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  v6 = [*(*(a1 + 32) + 40) delegate];
  v7 = [v6 provider];
  v8 = *(*(a1 + 32) + 80);
  v9 = [*(a1 + 40) revision];
  v10 = [v7 update:v8 revision:v9 playlist:*(a1 + 40) progress:*(*(*(a1 + 48) + 8) + 24) accessory:*(*(a1 + 32) + 48)];

  return v10;
}

uint64_t __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_95(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_95_cold_2(a1);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 32) & 1) != 0 || *(v5 + 33) != 1)
  {
    return 3;
  }

  v6 = [*(v5 + 40) delegate];
  v7 = [v6 provider];
  v8 = *(*(a1 + 32) + 80);
  v9 = [*(a1 + 40) revision];
  v10 = [*(a1 + 40) content];
  v11 = [v7 update:v8 revision:v9 content:v10 accessory:*(*(a1 + 32) + 48)];

  return v11;
}

uint64_t __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_96(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_96_cold_2(a1);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 32) & 1) != 0 || *(v5 + 33) != 1)
  {
    return 3;
  }

  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
  v6 = [*(*(a1 + 32) + 40) delegate];
  v7 = [v6 provider];
  v8 = *(*(a1 + 32) + 80);
  v9 = [*(a1 + 40) anchor];
  v10 = [v7 update:v8 revision:v9 deleteItem:objc_msgSend(*(a1 + 48) progress:"persistentID") accessory:{*(*(*(a1 + 56) + 8) + 24), *(*(a1 + 32) + 48)}];

  return v10;
}

uint64_t __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_97(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_97_cold_2(a1);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 32) & 1) != 0 || *(v5 + 33) != 1)
  {
    return 3;
  }

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  v6 = [*(*(a1 + 32) + 40) delegate];
  v7 = [v6 provider];
  v8 = *(*(a1 + 32) + 80);
  v9 = [*(a1 + 40) revision];
  v10 = [v7 update:v8 revision:v9 item:*(a1 + 40) progress:*(*(*(a1 + 48) + 8) + 24) accessory:*(*(a1 + 32) + 48)];

  return v10;
}

uint64_t __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_99(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = *(v6 + 32);
    LODWORD(v6) = *(v6 + 33);
    v13 = 138412802;
    v14 = v5;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&dword_2335D3000, v4, OS_LOG_TYPE_INFO, "_beginMediaLibraryUpdatesWithAnchor: need final 100 progress update!!! lastAnchor=%@, _isShuttingDown=%d _enableLibraryUpdate=%d", &v13, 0x18u);
  }

  v8 = a1[5];
  if ((*(v8 + 32) & 1) != 0 || *(v8 + 33) != 1)
  {
    return 3;
  }

  *(*(a1[6] + 8) + 24) = 100;
  v9 = [*(a1[5] + 40) delegate];
  v10 = [v9 provider];
  v11 = [v10 update:*(a1[5] + 80) revision:a1[4] progress:*(*(a1[6] + 8) + 24) accessory:*(a1[5] + 48)];

  return v11;
}

- (void)_sendRadioLibraryUpdates
{
  selfCopy = self;
  v110 = *MEMORY[0x277D85DE8];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v3 = self->_stationsGroupList;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v95;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v95 != v7)
        {
          objc_enumerationMutation(v3);
        }

        stations = [*(*(&v94 + 1) + 8 * i) stations];
        v6 += [stations count];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = __MaxTiltStations;
  if (v6 < __MaxTiltStations)
  {
    v10 = v6;
  }

  v65 = v10;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    stationsGroupList = selfCopy->_stationsGroupList;
    *buf = 67109634;
    *v100 = v65;
    *&v100[4] = 1024;
    *&v100[6] = -1;
    *&v100[10] = 2112;
    *&v100[12] = stationsGroupList;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_INFO, "_sendRadioLibraryUpdates total=%d maxPckSize=%d _stationsGroupList=%@", buf, 0x18u);
  }

  delegate = [(ACCMediaLibraryShim *)selfCopy->_context delegate];
  provider = [delegate provider];
  [provider resetUpdate:selfCopy->_UIDString accessory:selfCopy->_accessory];

  if (selfCopy->_sendPlayAllSongsCapable)
  {
    delegate2 = [(ACCMediaLibraryShim *)selfCopy->_context delegate];
    [delegate2 notify:selfCopy->_UIDString stateChange:1 enabled:0];

    selfCopy->_sendPlayAllSongsCapable = 0;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v17 = selfCopy->_stationsGroupList;
  v62 = [(NSArray *)v17 countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (!v62)
  {

LABEL_77:
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __51__ACCMediaLibraryShimInfo__sendRadioLibraryUpdates__block_invoke_112;
    v77[3] = &unk_2789E3400;
    v77[4] = selfCopy;
    v58 = [(ACCMediaLibraryShimInfo *)selfCopy _attemptUpdate:v77];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v59 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v59 = MEMORY[0x277D86220];
      v60 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [ACCMediaLibraryShimInfo _beginMediaLibraryUpdatesWithAnchor:v58 validity:v59];
    }

    return;
  }

  v18 = 0;
  LODWORD(v76) = 0;
  v61 = *v91;
  v64 = selfCopy;
  v67 = v17;
LABEL_24:
  v19 = 0;
  while (1)
  {
    if (*v91 != v61)
    {
      v20 = v19;
      objc_enumerationMutation(v17);
      v19 = v20;
    }

    if (v76 >= __MaxTiltStations)
    {
      break;
    }

    v63 = v19;
    ++v18;
    v75 = *(*(&v90 + 1) + 8 * v19);
    stations2 = [v75 stations];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = stations2;
    v70 = [obj countByEnumeratingWithState:&v86 objects:v107 count:16];
    if (v70)
    {
      v74 = 0;
      v71 = *v87;
      v68 = v18;
      v69 = v18 << 32;
LABEL_30:
      v22 = 0;
      while (1)
      {
        if (*v87 != v71)
        {
          objc_enumerationMutation(obj);
        }

        if (v76 >= __MaxTiltStations)
        {
          break;
        }

        v73 = v22;
        v23 = *(*(&v86 + 1) + 8 * v22);
        uniqueIdentifier = [v23 uniqueIdentifier];
        localizedName = [v23 localizedName];
        v26 = MEMORY[0x277CCACA8];
        localizedTitle = [v75 localizedTitle];
        v28 = [v26 stringWithFormat:@"%@ - %@", localizedName, localizedTitle];

        v29 = gLogObjects;
        v30 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v31 = *gLogObjects;
        }

        else
        {
          v31 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v100 = v29;
            *&v100[8] = 1024;
            *&v100[10] = v30;
            _os_log_error_impl(&dword_2335D3000, v31, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v32 = v31;
        }

        v76 = (v76 + 1);
        v33 = v74 + 1 + v69;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 67110402;
          *v100 = v76;
          *&v100[4] = 2112;
          *&v100[6] = v23;
          *&v100[14] = 2112;
          *&v100[16] = v28;
          v101 = 2048;
          v102 = uniqueIdentifier;
          v103 = 2048;
          v104 = v74 + 1 + v69;
          v105 = 2048;
          v106 = v104;
          _os_log_impl(&dword_2335D3000, v31, OS_LOG_TYPE_INFO, "_sendRadioLibraryUpdates: count=%d station=%@ name=%@ uniqueIdentifier=%lld uid=%lld (%llxh)", buf, 0x3Au);
        }

        if (!selfCopy->_enableLibraryUpdate || selfCopy->_isShuttingDown)
        {
          v17 = v67;
          v18 = v68;
          break;
        }

        ++v74;
        v34 = [(NSDictionary *)selfCopy->_dbUpdateList objectForKey:@"PlaylistProperty"];
        if ([v34 count])
        {
          v72 = v34;
          v35 = [(NSDictionary *)selfCopy->_dbUpdateList objectForKey:@"PlaylistProperty"];
          v36 = objc_alloc(MEMORY[0x277CE82B8]);
          UIDString = selfCopy->_UIDString;
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v76];
          v39 = [v36 initWithMediaLibrary:UIDString persistentID:v33 revision:v38];

          [v39 setRadioStation:1];
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v40 = v35;
          v41 = [v40 countByEnumeratingWithState:&v82 objects:v98 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v83;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v83 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                if ([*(*(&v82 + 1) + 8 * j) unsignedIntValue] == 1)
                {
                  localizedName2 = [v23 localizedName];
                  v46 = __MaxTiltStations;
                  v47 = MEMORY[0x277CCACA8];
                  localizedTitle2 = [v75 localizedTitle];
                  v49 = localizedTitle2;
                  if (v46 >= 100)
                  {
                    v50 = @"%03u %@ - %@";
                  }

                  else
                  {
                    v50 = @"%02u %@ - %@";
                  }

                  v51 = [v47 stringWithFormat:v50, v76, localizedName2, localizedTitle2];

                  if (v51)
                  {
                    [v39 setName:v51];
                  }
                }
              }

              v42 = [v40 countByEnumeratingWithState:&v82 objects:v98 count:16];
            }

            while (v42);
          }

          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          selfCopy = v64;
          v78[2] = __51__ACCMediaLibraryShimInfo__sendRadioLibraryUpdates__block_invoke;
          v78[3] = &unk_2789E33D8;
          v78[4] = v64;
          v80 = v76;
          v81 = v65;
          v52 = v39;
          v79 = v52;
          v53 = [(ACCMediaLibraryShimInfo *)v64 _attemptUpdate:v78];
          v54 = gLogObjects;
          v55 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v56 = *gLogObjects;
          }

          else
          {
            v56 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v100 = v54;
              *&v100[8] = 1024;
              *&v100[10] = v55;
              _os_log_error_impl(&dword_2335D3000, v56, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v57 = v56;
          }

          v34 = v72;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v100 = v53;
            _os_log_debug_impl(&dword_2335D3000, v56, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", buf, 0xCu);
          }
        }

        v22 = v73 + 1;
        v17 = v67;
        v18 = v68;
        if (v73 + 1 == v70)
        {
          v70 = [obj countByEnumeratingWithState:&v86 objects:v107 count:16];
          if (v70)
          {
            goto LABEL_30;
          }

          break;
        }
      }
    }

    v19 = v63 + 1;
    if (v63 + 1 == v62)
    {
      v62 = [(NSArray *)v17 countByEnumeratingWithState:&v90 objects:v108 count:16];
      if (v62)
      {
        goto LABEL_24;
      }

      break;
    }
  }

  if (!v76)
  {
    goto LABEL_77;
  }
}

uint64_t __51__ACCMediaLibraryShimInfo__sendRadioLibraryUpdates__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) != 0 || *(v1 + 33) != 1)
  {
    return 3;
  }

  v3 = (100 * *(a1 + 48)) / *(a1 + 52);
  v4 = [*(v1 + 40) delegate];
  v5 = [v4 provider];
  v6 = *(*(a1 + 32) + 80);
  v7 = [*(a1 + 40) revision];
  v8 = [v5 update:v6 revision:v7 playlist:*(a1 + 40) progress:v3 accessory:*(*(a1 + 32) + 48)];

  return v8;
}

uint64_t __51__ACCMediaLibraryShimInfo__sendRadioLibraryUpdates__block_invoke_112(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) != 0 || *(v1 + 33) != 1)
  {
    return 3;
  }

  v3 = [*(v1 + 40) delegate];
  v4 = [v3 provider];
  v5 = [v4 update:*(*(a1 + 32) + 80) revision:@"0" progress:100 accessory:*(*(a1 + 32) + 48)];

  return v5;
}

- (void)_beginRadioLibraryUpdates
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_libraryType != 2)
  {
    ACCMediaLibraryShimUIDString_cold_1();
  }

  if ([(ACCMediaLibraryShim *)self->_context radioIsEnabled]&& !self->_isShuttingDown)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke;
    block[3] = &unk_2789E3428;
    block[4] = self;
    v5 = v6;
    v14 = v5;
    dispatch_async(v7, block);

    v8 = dispatch_time(0, 2000000000);
    if (dispatch_semaphore_wait(v5, v8))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = 2;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, "_beginRadioLibraryUpdates:  WARNING: timed out(%d) waiting for recent stations list, give up for now", buf, 8u);
      }

      if (self->_enableLibraryUpdate && !self->_isShuttingDown)
      {
        libraryUpdateQ = self->_libraryUpdateQ;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke_116;
        v12[3] = &unk_2789E3478;
        v12[4] = self;
        dispatch_async(libraryUpdateQ, v12);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_INFO, "_beginRadioLibraryUpdates: Don't send RadioLibraryUpdates, not enabled or shuttingDown", buf, 2u);
    }
  }
}

void __52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke_2;
  v4[3] = &unk_2789E3450;
  v4[4] = v2;
  v5 = v1;
  [v3 getRecentStationGroupsWithCompletionHandler:v4];
}

void __52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "_beginRadioLibraryUpdates: recentStationsGroups=%@ error=%@", buf, 0x16u);
  }

  v10 = *(a1 + 32);
  if ((*(v10 + 32) & 1) == 0 && *(v10 + 33) == 1)
  {
    v11 = *(v10 + 72);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke_113;
    v12[3] = &unk_2789E3428;
    v12[4] = v10;
    v13 = v5;
    dispatch_async(v11, v12);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *__52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke_113(void *result)
{
  v2 = result[4];
  if (*(v2 + 33) == 1 && (*(v2 + 32) & 1) == 0)
  {
    v3 = result;
    v4 = *(v2 + 112);
    *(v2 + 112) = 0;

    objc_storeStrong((v3[4] + 112), v3[5]);
    v5 = v3[4];

    return [v5 _sendRadioLibraryUpdates];
  }

  return result;
}

_BYTE *__52__ACCMediaLibraryShimInfo__beginRadioLibraryUpdates__block_invoke_116(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[33] == 1 && (result[32] & 1) == 0)
  {
    return [result _sendRadioLibraryUpdates];
  }

  return result;
}

- (void)_radioLibraryChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = changedCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "_radioLibraryChanged: notification=%@", buf, 0xCu);
  }

  if (self->_enableLibraryUpdate && !self->_isShuttingDown)
  {
    libraryUpdateQ = self->_libraryUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ACCMediaLibraryShimInfo__radioLibraryChanged___block_invoke;
    block[3] = &unk_2789E3478;
    block[4] = self;
    dispatch_async(libraryUpdateQ, block);
  }
}

void __48__ACCMediaLibraryShimInfo__radioLibraryChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 33) == 1 && (*(v1 + 32) & 1) == 0)
  {
    if (*(v1 + 36) == 2)
    {
      v3 = objc_autoreleasePoolPush();
      [*(a1 + 32) _beginRadioLibraryUpdates];

      objc_autoreleasePoolPop(v3);
    }

    else
    {
      if (gLogObjects)
      {
        v4 = gNumLogObjects < 1;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v6 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      else
      {
        v6 = *gLogObjects;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 36);
        v8[0] = 67109120;
        v8[1] = v7;
        _os_log_impl(&dword_2335D3000, v6, OS_LOG_TYPE_DEFAULT, "_radioLibraryChanged: ERROR: Invalid libraryType(%d)", v8, 8u);
      }
    }
  }
}

- (void)_mediaLibraryChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = changedCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "_mediaLibraryChanged: notification=%@", buf, 0xCu);
  }

  if (self->_enableLibraryUpdate && !self->_isShuttingDown)
  {
    libraryUpdateQ = self->_libraryUpdateQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ACCMediaLibraryShimInfo__mediaLibraryChanged___block_invoke;
    block[3] = &unk_2789E3478;
    block[4] = self;
    dispatch_async(libraryUpdateQ, block);
  }
}

void __48__ACCMediaLibraryShimInfo__mediaLibraryChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 33) == 1 && (*(v1 + 32) & 1) == 0)
  {
    if (*(v1 + 36))
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 1;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v4 = MEMORY[0x277D86220];
      }

      else
      {
        v9 = *gLogObjects;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 36);
        v11[0] = 67109120;
        v11[1] = v10;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, "_mediaLibraryChanged: ERROR: Invalid libraryType(%d)", v11, 8u);
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [*(a1 + 32) _beginMediaLibraryUpdatesWithAnchor:*(*(a1 + 32) + 64) validity:*(*(a1 + 32) + 16)];
      v7 = *(a1 + 32);
      v8 = *(v7 + 64);
      *(v7 + 64) = v6;

      objc_autoreleasePoolPop(v5);
    }
  }
}

- (void)_canShowCloudTracksDidChangeNotification:(id)notification
{
  v49 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v42 = notificationCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "_canShowCloudTracksDidChangeNotification: notification=%@", buf, 0xCu);
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (self->_isShuttingDown)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2335D3000, v10, OS_LOG_TYPE_INFO, "_canShowCloudTracksDidChangeNotification: not enabled or shuttingDown, ignore", buf, 2u);
    }
  }

  else
  {
    if (v9)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277CD5D78] = [MEMORY[0x277CD5D78] sharedCloudController];
      v39 = notificationCopy;
      canShowCloudMusic = [mEMORY[0x277CD5D78] canShowCloudMusic];
      mEMORY[0x277CD5D78]2 = [MEMORY[0x277CD5D78] sharedCloudController];
      hasProperNetworkConditionsToPlayMedia = [mEMORY[0x277CD5D78]2 hasProperNetworkConditionsToPlayMedia];
      mEMORY[0x277CD5D78]3 = [MEMORY[0x277CD5D78] sharedCloudController];
      isCloudEnabled = [mEMORY[0x277CD5D78]3 isCloudEnabled];
      mEMORY[0x277CD5D78]4 = [MEMORY[0x277CD5D78] sharedCloudController];
      canShowCloudMusic2 = [mEMORY[0x277CD5D78]4 canShowCloudMusic];
      mEMORY[0x277CD5D78]5 = [MEMORY[0x277CD5D78] sharedCloudController];
      canShowCloudVideo = [mEMORY[0x277CD5D78]5 canShowCloudVideo];
      *buf = 67110144;
      *v42 = canShowCloudMusic;
      notificationCopy = v39;
      *&v42[4] = 1024;
      *&v42[6] = hasProperNetworkConditionsToPlayMedia;
      v43 = 1024;
      v44 = isCloudEnabled;
      v45 = 1024;
      v46 = canShowCloudMusic2;
      v47 = 1024;
      v48 = canShowCloudVideo;
      _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_DEFAULT, "_canShowCloudTracksDidChangeNotification: canShowCloudMusic=%d hasProperNetworkConditionsToPlayMedia=%d isCloudEnabled=%d canShowCloudMusic=%d canShowCloudVideo=%d", buf, 0x20u);
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v23 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277CD5D78]6 = [MEMORY[0x277CD5D78] sharedCloudController];
      hasCloudLockerAccount = [mEMORY[0x277CD5D78]6 hasCloudLockerAccount];
      mEMORY[0x277CD5D78]7 = [MEMORY[0x277CD5D78] sharedCloudController];
      isUpdateInProgress = [mEMORY[0x277CD5D78]7 isUpdateInProgress];
      mEMORY[0x277CD5D78]8 = [MEMORY[0x277CD5D78] sharedCloudController];
      isInitialImport = [mEMORY[0x277CD5D78]8 isInitialImport];
      *buf = 67109632;
      *v42 = hasCloudLockerAccount;
      *&v42[4] = 1024;
      *&v42[6] = isUpdateInProgress;
      v43 = 1024;
      v44 = isInitialImport;
      _os_log_impl(&dword_2335D3000, v23, OS_LOG_TYPE_DEFAULT, "_canShowCloudTracksDidChangeNotification: hasCloudLockerAccount=%d isUpdateInProgress=%d isInitialImport=%d", buf, 0x14u);
    }

    if (!self->_libraryType)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v31 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v31 = MEMORY[0x277D86220];
        v32 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        showCloudTracks = self->_showCloudTracks;
        mEMORY[0x277CD5D78]9 = [MEMORY[0x277CD5D78] sharedCloudController];
        canShowCloudMusic3 = [mEMORY[0x277CD5D78]9 canShowCloudMusic];
        *buf = 67109376;
        *v42 = showCloudTracks;
        *&v42[4] = 1024;
        *&v42[6] = canShowCloudMusic3;
        _os_log_impl(&dword_2335D3000, v31, OS_LOG_TYPE_DEFAULT, "_canShowCloudTracksDidChangeNotification: _showCloudTracks=%d->%d", buf, 0xEu);
      }

      mEMORY[0x277CD5D78]10 = [MEMORY[0x277CD5D78] sharedCloudController];
      self->_showCloudTracks = [mEMORY[0x277CD5D78]10 canShowCloudMusic];
    }

    if (self->_enableLibraryUpdate && !self->_isShuttingDown && self->_showCloudTracksLastSent != self->_showCloudTracks)
    {
      libraryUpdateQ = self->_libraryUpdateQ;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__ACCMediaLibraryShimInfo__canShowCloudTracksDidChangeNotification___block_invoke;
      block[3] = &unk_2789E3478;
      block[4] = self;
      dispatch_async(libraryUpdateQ, block);
    }
  }
}

void __68__ACCMediaLibraryShimInfo__canShowCloudTracksDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 33) == 1 && (*(v1 + 32) & 1) == 0 && *(v1 + 26) != *(v1 + 25))
  {
    v3 = [*(v1 + 40) delegate];
    v4 = [v3 provider];
    [v4 notify:*(*(a1 + 32) + 80) stateChange:0 enabled:(*(*(a1 + 32) + 25) & 1) == 0];

    *(*(a1 + 32) + 26) = *(*(a1 + 32) + 25);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(ACCMediaLibraryShim *)self->_context accessory];
  v5 = [v3 stringWithFormat:@"<ACCMediaLibraryShimInfo>[\n    _context.accessory=%@\n    _mpMediaLibrary=%@\n    _anchor=%@\n    _UIDString=%@\n    _libraryUpdateQ=%@\n    _isShuttingDown=%d\n    _enableLibraryUpdate=%d\n    _showCloudTracks=%d\n    _showCloudTracksLastSent=%d\n    _waitForWindowSem=%@]", accessory, self->_mpMediaLibrary, self->_anchor, self->_UIDString, self->_libraryUpdateQ, self->_isShuttingDown, self->_enableLibraryUpdate, self->_showCloudTracks, self->_showCloudTracksLastSent, self->_waitForWindowSem];

  return v5;
}

- (void)_registerForMPNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = defaultCenter;
  libraryType = self->_libraryType;
  if (libraryType == 2)
  {
    [defaultCenter addObserver:self selector:sel__radioLibraryChanged_ name:*MEMORY[0x277CD5CE8] object:0];
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      showCloudTracks = self->_showCloudTracks;
      v10[0] = 67109376;
      v10[1] = showCloudTracks;
      v11 = 1024;
      v12 = 1;
      _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_DEFAULT, "_registerForMPNotifications: Radio Library, _showCloudTracks=%d->%d", v10, 0xEu);
    }

    *&self->_showCloudTracks = 1;
  }

  else if (!libraryType)
  {
    [defaultCenter addObserver:self selector:sel__mediaLibraryChanged_ name:*MEMORY[0x277CD58D8] object:0];
    [v4 addObserver:self selector:sel__mediaLibraryChanged_ name:*MEMORY[0x277CD58E8] object:0];
    [v4 addObserver:self selector:sel__canShowCloudTracksDidChangeNotification_ name:*MEMORY[0x277CD5658] object:0];
  }
}

- (ACCMediaLibraryShimInfo)initWithMediaLibrary:(id)library accessory:(id)accessory Context:(id)context LibraryType:(int)type
{
  v49 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  accessoryCopy = accessory;
  contextCopy = context;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v42 = libraryCopy;
    v43 = 2112;
    v44 = accessoryCopy;
    v45 = 2112;
    v46 = contextCopy;
    v47 = 1024;
    typeCopy = type;
    _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_DEFAULT, "initWithMediaLibrary: %@ accessory: %@ Context: %@ LibraryType: %d", buf, 0x26u);
  }

  v40.receiver = self;
  v40.super_class = ACCMediaLibraryShimInfo;
  v17 = [(ACCMediaLibraryShimInfo *)&v40 init];
  if (v17)
  {
    if (__podcastPlaybackInMusicApp == -1)
    {
      __podcastPlaybackInMusicApp = CFPreferencesGetAppBooleanValue(@"PodcastPlaybackInMusicApp", @"com.apple.iapd", 0) != 0;
    }

    if (__MaxTiltStations == -1)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MaxTiltStations", @"com.apple.iapd", 0);
      if (AppIntegerValue >= 1)
      {
        v19 = AppIntegerValue;
      }

      else
      {
        v19 = 25;
      }

      __MaxTiltStations = v19;
    }

    *(v17 + 9) = type;
    objc_storeStrong(v17 + 6, accessory);
    v20 = dispatch_queue_create("com.apple.accml.mediaLibraryUpdateQ", 0);
    v21 = *(v17 + 9);
    *(v17 + 9) = v20;

    v22 = dispatch_semaphore_create(0);
    v23 = *(v17 + 11);
    *(v17 + 11) = v22;

    *(v17 + 16) = 0;
    v24 = *(v17 + 1);
    *(v17 + 1) = 0;

    v25 = *(v17 + 8);
    *(v17 + 8) = 0;

    *(v17 + 12) = 0;
    *(v17 + 27) = 0;
    v17[31] = 0;
    objc_storeStrong(v17 + 5, context);
    objc_storeStrong(v17 + 7, library);
    v26 = dispatch_queue_create("com.apple.accessoryd.MediaLibraryMPQ", 0);
    v27 = *(v17 + 12);
    *(v17 + 12) = v26;

    v28 = [objc_alloc(MEMORY[0x277CD5FC0]) initWithClientIdentifier:@"com.apple.accessoryd.medialibrary" queue:*(v17 + 12)];
    v29 = *(v17 + 13);
    *(v17 + 13) = v28;

    v30 = *(v17 + 14);
    *(v17 + 14) = 0;

    _getUIDString = [v17 _getUIDString];
    v32 = *(v17 + 10);
    *(v17 + 10) = _getUIDString;

    [v17 _canShowCloudTracksDidChangeNotification:0];
    v17[26] = v17[25] ^ 1;
    v33 = *(v17 + 9);
    if (v33 == 2)
    {
      [v17 _registerForMPNotifications];
    }

    else if (v33)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v36 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v36 = MEMORY[0x277D86220];
        v37 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(v17 + 9);
        *buf = 67109120;
        LODWORD(v42) = v38;
        _os_log_impl(&dword_2335D3000, v36, OS_LOG_TYPE_DEFAULT, "initWithMediaLibrary:accessory:Context:LibraryType: ERROR: Invalid libraryType(%d)", buf, 8u);
      }
    }

    else
    {
      _syncValidity = [*(v17 + 7) _syncValidity];
      v35 = *(v17 + 2);
      *(v17 + 2) = _syncValidity;

      [v17 _registerForMPNotifications];
      [*(v17 + 7) beginGeneratingLibraryChangeNotifications];
    }
  }

  return v17;
}

- (void)dealloc
{
  v33 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    enableLibraryUpdate = self->_enableLibraryUpdate;
    isShuttingDown = self->_isShuttingDown;
    *buf = 67109888;
    v26 = enableLibraryUpdate;
    v27 = 1024;
    v28 = 0;
    v29 = 1024;
    v30 = isShuttingDown;
    v31 = 1024;
    v32 = 1;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "dealloc: _enableLibraryUpdate=%d-%d _isShuttingDown=%d->%d", buf, 0x1Au);
  }

  *&self->_isShuttingDown = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  libraryType = self->_libraryType;
  if (libraryType != 2)
  {
    if (libraryType)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_libraryType;
        *buf = 67109120;
        v26 = v12;
        _os_log_impl(&dword_2335D3000, v10, OS_LOG_TYPE_DEFAULT, "dealloc: ERROR: Invalid libraryType(%d)", buf, 8u);
      }
    }

    else
    {
      [self->_mpMediaLibrary endGeneratingLibraryChangeNotifications];
    }
  }

  libraryUpdateQ = self->_libraryUpdateQ;
  self->_libraryUpdateQ = 0;
  v14 = libraryUpdateQ;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ACCMediaLibraryShimInfo_dealloc__block_invoke;
  block[3] = &unk_2789E3478;
  block[4] = self;
  dispatch_sync(v14, block);

  mpMusicPlayerControllerHandler = self->_mpMusicPlayerControllerHandler;
  self->_mpMusicPlayerControllerHandler = 0;

  waitForWindowSem = self->_waitForWindowSem;
  self->_waitForWindowSem = 0;

  syncValidityPersistentID = self->_syncValidityPersistentID;
  self->_syncValidityPersistentID = 0;

  mpMediaLibrary = self->_mpMediaLibrary;
  self->_mpMediaLibrary = 0;

  UIDString = self->_UIDString;
  self->_UIDString = 0;

  anchor = self->_anchor;
  self->_anchor = 0;

  accessory = self->_accessory;
  self->_accessory = 0;

  context = self->_context;
  self->_context = 0;

  v23.receiver = self;
  v23.super_class = ACCMediaLibraryShimInfo;
  [(ACCMediaLibraryShimInfo *)&v23 dealloc];
}

void __34__ACCMediaLibraryShimInfo_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = 0;

    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 112);
  if (v4)
  {
    *(v1 + 112) = 0;
  }
}

- (void)startSendingMediaLibraryUpdates:(id)updates lastRevision:(id)revision requestedTransferID:(BOOL)d requestedMetaList:(BOOL)list requestedMetaProperties:(BOOL)properties
{
  propertiesCopy = properties;
  listCopy = list;
  dCopy = d;
  v38 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  revisionCopy = revision;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uIDString = [(ACCMediaLibraryShimInfo *)self UIDString];
    *buf = 138413314;
    v29 = uIDString;
    v30 = 2112;
    v31 = revisionCopy;
    v32 = 1024;
    v33 = dCopy;
    v34 = 1024;
    v35 = listCopy;
    v36 = 1024;
    v37 = propertiesCopy;
    _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_DEFAULT, "startSendingMediaLibraryUpdates: %@ lastRevision=%@ requestedTransferID=%d requestedMetaList=%d requestedMetaProperties=%d\n", buf, 0x28u);
  }

  if (self->_enableLibraryUpdate)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v18 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v18 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      uIDString2 = [(ACCMediaLibraryShimInfo *)self UIDString];
      *buf = 138412290;
      v29 = uIDString2;
      _os_log_impl(&dword_2335D3000, v18, OS_LOG_TYPE_INFO, "WARNING: MediaLibraryUpdate already running for library %@\n", buf, 0xCu);
    }
  }

  else
  {
    self->_enableLibraryUpdate = 1;
    libraryUpdateQ = self->_libraryUpdateQ;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __134__ACCMediaLibraryShimInfo_startSendingMediaLibraryUpdates_lastRevision_requestedTransferID_requestedMetaList_requestedMetaProperties___block_invoke;
    v22[3] = &unk_2789E34A0;
    v22[4] = self;
    v23 = updatesCopy;
    v25 = dCopy;
    v26 = listCopy;
    v27 = propertiesCopy;
    v24 = revisionCopy;
    dispatch_async(libraryUpdateQ, v22);
  }
}

void __134__ACCMediaLibraryShimInfo_startSendingMediaLibraryUpdates_lastRevision_requestedTransferID_requestedMetaList_requestedMetaProperties___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 33) != 1 || (*(v2 + 32) & 1) != 0)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 33);
    LODWORD(v6) = *(v6 + 32);
    v34 = 67109376;
    v35 = v7;
    v36 = 1024;
    v37 = v6;
    v8 = "startSendingMediaLibraryUpdates: ERROR: MediaLibraryUpdates not started, _enableLibraryUpdate: %d, mediaLibraryInfo instance isShuttingDown: %d";
    v9 = v5;
    v10 = 14;
LABEL_13:
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, v8, &v34, v10);
LABEL_14:

    return;
  }

  if (([*(v2 + 8) isEqualToDictionary:*(a1 + 40)] & 1) == 0)
  {
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 40)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *(v12 + 8) = v11;
  }

  if ([*(a1 + 40) count])
  {
    *(*(a1 + 32) + 28) = *(a1 + 56);
    *(*(a1 + 32) + 29) = *(a1 + 57);
    *(*(a1 + 32) + 30) = *(a1 + 58);
    v14 = [*(a1 + 40) objectForKey:@"HideNonLocal"];
    *(*(a1 + 32) + 24) = [v14 BOOLValue];

    v15 = [*(a1 + 40) objectForKey:@"PlayAllSongsCapable"];
    *(*(a1 + 32) + 27) = [v15 BOOLValue];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      v19 = v18[24];
      v20 = v18[25];
      LODWORD(v18) = v18[26];
      v34 = 67109632;
      v35 = v19;
      v36 = 1024;
      v37 = v20;
      v38 = 1024;
      v39 = v18;
      _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_INFO, "startSendingMediaLibraryUpdates: _sendHideNonLocal %d, _showCloudTracks %d, _showCloudTracksLastSent %d", &v34, 0x14u);
    }

    v21 = *(a1 + 32);
    if (*(v21 + 24) == 1)
    {
      v22 = [*(v21 + 40) delegate];
      v23 = [v22 provider];
      [v23 notify:*(*(a1 + 32) + 80) stateChange:0 enabled:(*(*(a1 + 32) + 25) & 1) == 0];

      *(*(a1 + 32) + 26) = *(*(a1 + 32) + 25);
      v21 = *(a1 + 32);
    }

    v24 = *(v21 + 36);
    if (v24 == 2)
    {
      [v21 _beginRadioLibraryUpdates];
      return;
    }

    if (!v24)
    {
      v25 = objc_autoreleasePoolPush();
      objc_storeStrong((*(a1 + 32) + 64), *(a1 + 48));
      v26 = *(a1 + 32);
      v27 = *(v26 + 64);
      v28 = [*(v26 + 56) _syncValidity];
      v29 = [v26 _beginMediaLibraryUpdatesWithAnchor:v27 validity:v28];
      v30 = *(a1 + 32);
      v31 = *(v30 + 64);
      *(v30 + 64) = v29;

      objc_autoreleasePoolPop(v25);
      return;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v5 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v33 = *(*(a1 + 32) + 36);
    v34 = 67109120;
    v35 = v33;
    v8 = "startSendingMediaLibraryUpdates: ERROR: Invalid libraryType(%d)";
    v9 = v5;
    v10 = 8;
    goto LABEL_13;
  }
}

- (void)stopSendingMediaLibraryUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    enableLibraryUpdate = self->_enableLibraryUpdate;
    *buf = 67109376;
    v10 = enableLibraryUpdate;
    v11 = 1024;
    v12 = 0;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "stopSendingMediaLibraryUpdates: _enableLibraryUpdate=%d -> %d", buf, 0xEu);
  }

  self->_enableLibraryUpdate = 0;
  libraryUpdateQ = self->_libraryUpdateQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACCMediaLibraryShimInfo_stopSendingMediaLibraryUpdates__block_invoke;
  block[3] = &unk_2789E3478;
  block[4] = self;
  dispatch_sync(libraryUpdateQ, block);
  *&self->_sendHideNonLocal = 0x10000;
}

void __57__ACCMediaLibraryShimInfo_stopSendingMediaLibraryUpdates__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)shuttingDown
{
  v16 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryType = self->_libraryType;
    v14 = 67109120;
    v15 = libraryType;
    _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "stopSendingMediaLibraryUpdates: _libraryType=%d", &v14, 8u);
  }

  *&self->_isShuttingDown = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  v8 = self->_libraryType;
  if (v8 != 2)
  {
    if (v8)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_libraryType;
        v14 = 67109120;
        v15 = v11;
        _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, "stopSendingMediaLibraryUpdates: ERROR: Invalid libraryType(%d)", &v14, 8u);
      }
    }

    else
    {
      [self->_mpMediaLibrary endGeneratingLibraryChangeNotifications];
    }
  }

    ;
  }

  dispatch_sync(self->_libraryUpdateQ, &__block_literal_global);
  accessory = self->_accessory;
  self->_accessory = 0;

  context = self->_context;
  self->_context = 0;
}

- (void)_startPlaybackOfRadioStation:(unint64_t)station
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = HIDWORD(station);
  if (!HIDWORD(station))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_5;
  }

  if (v5 <= [(NSArray *)self->_stationsGroupList count])
  {
    v15 = [(NSArray *)self->_stationsGroupList objectAtIndex:v5 - 1];
    v5 = v15;
    v6 = 0;
    if (!station || !v15)
    {
      goto LABEL_5;
    }

    stations = [v15 stations];
    v17 = [stations count];

    if (station > v17)
    {
      goto LABEL_2;
    }

    stations2 = [v5 stations];
    v6 = [stations2 objectAtIndex:station - 1];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

LABEL_5:
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    stationCopy3 = station;
    v24 = 2048;
    stationCopy4 = station;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "_startPlaybackOfRadioStation: collectionPersistentID=%llu(%llxh) station=%@", buf, 0x20u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    localizedName = [v6 localizedName];
    localizedDescription = [v6 localizedDescription];
    *buf = 138412546;
    stationCopy3 = localizedName;
    v24 = 2112;
    stationCopy4 = localizedDescription;
    _os_log_impl(&dword_2335D3000, v10, OS_LOG_TYPE_INFO, "_startPlaybackOfRadioStation: station name='%@'; desc='%@'", buf, 0x16u);
  }

  if (v6)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__ACCMediaLibraryShimInfo__startPlaybackOfRadioStation___block_invoke;
    v20[3] = &unk_2789E3428;
    v20[4] = self;
    v21 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v20);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v14 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      stationCopy3 = station;
      v24 = 2048;
      stationCopy4 = station;
      _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_DEFAULT, "_startPlaybackOfRadioStation: Couldn't find station for persistentID=0x%llx(%llu)", buf, 0x16u);
    }
  }
}

void __56__ACCMediaLibraryShimInfo__startPlaybackOfRadioStation___block_invoke(uint64_t a1)
{
  v2 = GetMediaLibraryHelper(a1);
  if ([v2 showMusic])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ACCMediaLibraryShimInfo__startPlaybackOfRadioStation___block_invoke_2;
    block[3] = &unk_2789E3428;
    block[4] = v4;
    v11 = v3;
    dispatch_sync(v5, block);
  }

  else
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v8 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_DEFAULT, "_startPlaybackOfRadioStation: no systemMusicPlayer!", v9, 2u);
    }
  }
}

void __56__ACCMediaLibraryShimInfo__startPlaybackOfRadioStation___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  v3 = [v2 queueAsRadioStation];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v3 localizedName];
    v8 = [v3 localizedDescription];
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2335D3000, v6, OS_LOG_TYPE_INFO, "_startPlaybackOfRadioStation: curStation=%@ name='%@'; desc='%@'", &v9, 0x20u);
  }

  [v2 setQueueWithRadioStation:*(a1 + 40)];
  [v2 play];
}

- (void)playWithQuery:(id)query andFirstItem:(id)item
{
  v49 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  itemCopy = item;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    title = [itemCopy title];
    *buf = 138412802;
    v44 = itemCopy;
    v45 = 2112;
    v46 = title;
    v47 = 2112;
    v48 = queryCopy;
    _os_log_impl(&dword_2335D3000, v10, OS_LOG_TYPE_DEFAULT, "playWithQuery:andFirstItem=%@[%@] query=%@", buf, 0x20u);
  }

  if (__podcastPlaybackInMusicApp)
  {
    v12 = 0;
    goto LABEL_13;
  }

  [queryCopy items];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = v41 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    selfCopy = self;
    v17 = *v39;
    LOBYTE(v18) = 1;
    v19 = 1;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        if ([v21 mediaType] != 2)
        {
          v19 &= [v21 mediaType] == 1024;
        }

        v18 = ([v21 mediaType] == 4) & v18;
        if ((v19 & 1) == 0 && !v18)
        {
          v19 = 0;
          goto LABEL_39;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_39:

    if (v19)
    {
      self = selfCopy;
    }

    else
    {
      self = selfCopy;
      if (!v18)
      {

        v12 = 0;
        v23 = 0x2812FE000;
        goto LABEL_49;
      }
    }
  }

  else
  {

    v19 = 1;
    v18 = 1;
  }

  v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:queryCopy];
  v12 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetLocalQueryData();

  if ((v19 & 1) == 0)
  {
    v23 = 0x2812FE000uLL;
    if (v18)
    {
LABEL_13:
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v13 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_DEFAULT, "playWithQuery: allAudioBooks!", buf, 2u);
      }

      MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
      if (itemCopy)
      {
        [itemCopy persistentID];
        MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
      }

      goto LABEL_35;
    }

LABEL_49:
    if (gLogObjects && *(v23 + 3816) >= 1)
    {
      v26 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v26 = MEMORY[0x277D86220];
      v27 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2335D3000, v26, OS_LOG_TYPE_DEFAULT, "playWithQuery: Music!", buf, 2u);
    }

    v28 = MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
    v29 = GetMediaLibraryHelper(v28);
    if ([v29 showMusic])
    {
      mpMusicPlayerControllerQueue = self->_mpMusicPlayerControllerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ACCMediaLibraryShimInfo_playWithQuery_andFirstItem___block_invoke;
      block[3] = &unk_2789E34E8;
      block[4] = self;
      v36 = itemCopy;
      v37 = queryCopy;
      dispatch_sync(mpMusicPlayerControllerQueue, block);
    }

    else
    {
      if (gLogObjects && *(v23 + 3816) >= 1)
      {
        v31 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v31 = MEMORY[0x277D86220];
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2335D3000, v31, OS_LOG_TYPE_DEFAULT, "playWithQuery: no systemMusicPlayer!", buf, 2u);
      }
    }

    if (v12)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v25 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335D3000, v25, OS_LOG_TYPE_DEFAULT, "playWithQuery: allPodcasts!", buf, 2u);
  }

  MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
  if (itemCopy)
  {
    [itemCopy persistentID];
    MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
  }

LABEL_35:
  MRMediaRemoteSetAppPlaybackQueue();
  usleep(0x493E0u);
  MRMediaRemoteSendCommandToApp();
  if (v12)
  {
LABEL_36:
    MRSystemAppPlaybackQueueDestroy();
  }

LABEL_37:
}

void __54__ACCMediaLibraryShimInfo_playWithQuery_andFirstItem___block_invoke(void *a1)
{
  v2 = *(a1[4] + 104);
  if ([v2 playbackState])
  {
    [v2 stop];
  }

  v3 = a1[6];
  if (a1[5])
  {
    [v2 setQueueWithQuery:v3 firstItem:?];
  }

  else
  {
    [v2 setQueueWithQuery:v3];
  }

  [v2 prepareQueueForPlayback];
  if (![v2 numberOfItems])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2335D3000, v4, OS_LOG_TYPE_DEFAULT, "playWithQuery: Playback queue is empty", v6, 2u);
    }
  }

  [v2 play];
}

- (id)_getMediaItemForPersistentID:(unint64_t)d
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v4 = [MEMORY[0x277CD5E30] predicateWithValue:v3 forProperty:*MEMORY[0x277CD57D8]];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v6 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v5];
  [v6 setShouldIncludeNonLibraryEntities:1];
  if (!v6)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      items = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      items = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(items, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v3;
      _os_log_impl(&dword_2335D3000, items, OS_LOG_TYPE_DEFAULT, "_getMediaItemForPersistentID: Failed to create query for persistentIDObj=%@", &v19, 0xCu);
    }

    goto LABEL_35;
  }

  items = [v6 items];
  if ([items count]== 1)
  {
    items2 = [v6 items];
    v9 = [items2 objectAtIndex:0];

    goto LABEL_36;
  }

  v10 = [items count];
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v10 < 2)
  {
    if (v12)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v13 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v19 = 138412290;
    v20 = v3;
    v16 = "_getMediaItemForPersistentID: No item match for persistentIDObj=%@";
  }

  else
  {
    if (v12)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v19 = 138412290;
    v20 = v3;
    v16 = "_getMediaItemForPersistentID: Too many items returned!!! for persistentID=%@";
  }

  _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_DEFAULT, v16, &v19, 0xCu);
LABEL_34:

LABEL_35:
  v9 = 0;
LABEL_36:

  return v9;
}

- (void)startPlaybackOfItems:(id)items withFirst:(unsigned int)first
{
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    firstCopy = first;
    v34 = 2112;
    v35 = itemsCopy;
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, "startPlaybackOfItems:withFirst: firstItemIndex=%d items=%@", buf, 0x12u);
  }

  if (self->_libraryType)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      defaultMediaLibrary = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      defaultMediaLibrary = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(defaultMediaLibrary, OS_LOG_TYPE_DEFAULT))
    {
      libraryType = self->_libraryType;
      *buf = 67109120;
      firstCopy = libraryType;
      _os_log_impl(&dword_2335D3000, defaultMediaLibrary, OS_LOG_TYPE_DEFAULT, "WARNING: PlaybackOfItems: Not supported for type=%u!", buf, 8u);
    }
  }

  else
  {
    firstCopy2 = first;
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [MEMORY[0x277CD5E10] setDefaultMediaLibrary:self->_mpMediaLibrary];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          unsignedLongLongValue = [*(*(&v27 + 1) + 8 * i) unsignedLongLongValue];
          v18 = [objc_alloc(MEMORY[0x277CD5DE0]) initWithPersistentID:unsignedLongLongValue];
          if (v18)
          {
            [v11 addObject:v18];
          }

          else
          {
            v19 = [(ACCMediaLibraryShimInfo *)self _getMediaItemForPersistentID:unsignedLongLongValue];
            if (v19)
            {
              [v11 addObject:v19];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      if ([v11 count] <= firstCopy2)
      {
        v20 = 0;
      }

      else
      {
        v20 = firstCopy2;
      }

      v21 = [v11 objectAtIndex:v20];
      v22 = [objc_alloc(MEMORY[0x277CD5E38]) initWithEntities:v11 entityType:0];
      [v22 setShouldIncludeNonLibraryEntities:1];
      [v22 setIgnoreSystemFilterPredicates:1];
      [(ACCMediaLibraryShimInfo *)self playWithQuery:v22 andFirstItem:v21];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v21 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v21 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2335D3000, v21, OS_LOG_TYPE_DEFAULT, "WARNING: PlaybackOfItems: No valid tracks to playback!", buf, 2u);
      }
    }

    [MEMORY[0x277CD5E10] setDefaultMediaLibrary:defaultMediaLibrary];
  }
}

- (void)_startPlaybackOfCollection:(unint64_t)collection ofType:(int)type withFirst:(id)first orIndex:(unsigned int)index
{
  v68 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  if (type > 7)
  {
    v11 = -1;
  }

  else
  {
    v11 = qword_2335ED370[type];
  }

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    title = [firstCopy title];
    libraryType = self->_libraryType;
    *buf = 134219522;
    *v57 = collection;
    *&v57[8] = 2048;
    *&v57[10] = type;
    v58 = 2048;
    v59 = v11;
    v60 = 2112;
    v61 = firstCopy;
    v62 = 2112;
    v63 = title;
    v64 = 1024;
    indexCopy = index;
    v66 = 1024;
    v67 = libraryType;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "_startPlaybackOfCollection: collectionPersistentID=%llu connectionType=%lld(mp:%lld) firstItem=%@(%@) firstItemIndex=%u _libraryType=%d", buf, 0x40u);
  }

  if (self->_libraryType != 2)
  {
    v52 = objc_autoreleasePoolPush();
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [MEMORY[0x277CD5E10] setDefaultMediaLibrary:self->_mpMediaLibrary];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:collection];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:7423];
    v53 = [MEMORY[0x277CD5E30] predicateWithValue:v19 forProperty:*MEMORY[0x277CD57C8]];
    v51 = v18;
    if ((v11 - 1) >= 6)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v31 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v31 = MEMORY[0x277D86220];
        v33 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v57 = v11;
        _os_log_impl(&dword_2335D3000, v31, OS_LOG_TYPE_INFO, "_startPlaybackOfCollection: Unsupported MPMediaGrouping mp collection type %ld", buf, 0xCu);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CD5E30] predicateWithValue:v18 forProperty:**(&unk_2789E35D0 + v11 - 1)];
      if (v20)
      {
        v21 = v20;
        v22 = [MEMORY[0x277CBEB98] setWithObjects:{v20, v53, 0}];
        v50 = GetMediaLibraryHelper(v22);
        if (![v50 showMusic])
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v36 = *gLogObjects;
            v28 = v52;
            v30 = v50;
          }

          else
          {
            v30 = v50;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCMediaLibraryShimInfo _getUIDString];
            }

            v36 = MEMORY[0x277D86220];
            v37 = MEMORY[0x277D86220];
            v28 = v52;
          }

          v29 = 0x277CD5000;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2335D3000, v36, OS_LOG_TYPE_DEFAULT, "_startPlaybackOfCollection: no systemMusicPlayer!", buf, 2u);
          }

          goto LABEL_80;
        }

        if (type == 6)
        {
          goto LABEL_25;
        }

        v23 = 0x277CD5000uLL;
        if (!type)
        {
          v24 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v22];
          [v24 setGroupingType:6];
          collections = [v24 collections];
          if ([collections count])
          {
            v25 = [collections objectAtIndex:0];
            [v25 valueForProperty:*MEMORY[0x277CD5918]];
            v26 = v45 = v24;
            bOOLValue = [v26 BOOLValue];

            v23 = 0x277CD5000;
            if (bOOLValue)
            {
LABEL_25:
              mpMusicPlayerControllerQueue = self->_mpMusicPlayerControllerQueue;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __79__ACCMediaLibraryShimInfo__startPlaybackOfCollection_ofType_withFirst_orIndex___block_invoke;
              block[3] = &unk_2789E3428;
              block[4] = self;
              v55 = v21;
              dispatch_sync(mpMusicPlayerControllerQueue, block);

              v28 = v52;
              v29 = 0x277CD5000;
              v30 = v50;
LABEL_80:

LABEL_81:
              [*(v29 + 3600) setDefaultMediaLibrary:defaultMediaLibrary];

              objc_autoreleasePoolPop(v28);
              goto LABEL_82;
            }
          }

          else
          {
          }
        }

        v38 = [objc_alloc(*(v23 + 3640)) initWithFilterPredicates:v22];
        [v38 setGroupingType:0];
        v47 = v38;
        items = [v38 items];
        v40 = firstCopy;
        v49 = items;
        if ([items count])
        {
          if (!v40)
          {
            if ([items count] <= index)
            {
              indexCopy2 = 0;
            }

            else
            {
              indexCopy2 = index;
            }

            v40 = [items objectAtIndex:indexCopy2];
          }

          v42 = v47;
          [(ACCMediaLibraryShimInfo *)self playWithQuery:v47 andFirstItem:v40];
          v28 = v52;
          v30 = v50;
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v43 = *gLogObjects;
            v28 = v52;
            v30 = v50;
          }

          else
          {
            v28 = v52;
            v30 = v50;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCMediaLibraryShimInfo _getUIDString];
            }

            v43 = MEMORY[0x277D86220];
            v44 = MEMORY[0x277D86220];
          }

          v42 = v47;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2335D3000, v43, OS_LOG_TYPE_DEFAULT, "WARNING: PlaybackOfCollection: No valid tracks to playback!", buf, 2u);
          }
        }

        v29 = 0x277CD5000uLL;
        goto LABEL_80;
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v22 = *gLogObjects;
      v29 = 0x277CD5000;
    }

    else
    {
      v29 = 0x277CD5000;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v22 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v57 = v11;
      _os_log_impl(&dword_2335D3000, v22, OS_LOG_TYPE_DEFAULT, "WARNING: PlaybackOfCollection: No query found for mp collection type %ld!", buf, 0xCu);
    }

    v21 = 0;
    v28 = v52;
    goto LABEL_81;
  }

  if (type != 7 && type)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v32 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v32 = MEMORY[0x277D86220];
      v35 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v57 = type;
      *&v57[4] = 2048;
      *&v57[6] = collection;
      _os_log_impl(&dword_2335D3000, v32, OS_LOG_TYPE_DEFAULT, "WARNINGL: PlaybackOfCollection: Invalid type(%d) for collectionPersistentID=%lld", buf, 0x12u);
    }
  }

  else
  {
    [(ACCMediaLibraryShimInfo *)self _startPlaybackOfRadioStation:collection];
  }

LABEL_82:
}

void __79__ACCMediaLibraryShimInfo__startPlaybackOfCollection_ofType_withFirst_orIndex___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = [MEMORY[0x277CD5E38] geniusMixesQuery];
  [v3 addFilterPredicate:*(a1 + 40)];
  v4 = [v3 collections];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    [v2 setQueueWithGeniusMixPlaylist:v5];
    [v2 play];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v5 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: PlaybackOfCollection: Could not get playlist(geniusMix) to playback!", v7, 2u);
    }
  }
}

- (void)startPlaybackOfCollection:(unint64_t)collection ofType:(int)type withFirst:(unsigned int)first
{
  v5 = *&first;
  v6 = *&type;
  v18 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218496;
    collectionCopy = collection;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_2335D3000, v11, OS_LOG_TYPE_DEFAULT, "startPlaybackOfCollection:ofType:withFirst collectionPersistentID=%llu collectionType=%u firstItemIndex=%u", &v12, 0x18u);
  }

  [(ACCMediaLibraryShimInfo *)self _startPlaybackOfCollection:collection ofType:v6 withFirst:0 orIndex:v5];
}

- (void)startPlaybackOfCollection:(unint64_t)collection ofType:(int)type withFirstPersistentID:(unint64_t)d
{
  v6 = *&type;
  v21 = *MEMORY[0x277D85DE8];
  v9 = [(ACCMediaLibraryShimInfo *)self _getMediaItemForPersistentID:d];
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218754;
    collectionCopy = collection;
    v15 = 1024;
    v16 = v6;
    v17 = 2048;
    dCopy = d;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2335D3000, v12, OS_LOG_TYPE_DEFAULT, "startPlaybackOfCollection:ofType:withFirstPersistentID: collectionPersistentID=%llu collectionType=%u firstItemPersistentID=%llu firstItem=%@", &v13, 0x26u);
  }

  [(ACCMediaLibraryShimInfo *)self _startPlaybackOfCollection:collection ofType:v6 withFirst:v9 orIndex:0];
}

- (void)startMLPlaybackWithResume:(BOOL)resume
{
  resumeCopy = resume;
  v18 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = resumeCopy;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "startMLPlaybackWithResume: resume=%d", buf, 8u);
  }

  if ((self->_libraryType | 2) == 2)
  {
    if (!resumeCopy)
    {
      return;
    }

    v9 = GetMediaLibraryHelper(v8);
    if ([v9 showMusic])
    {
      mpMusicPlayerControllerQueue = self->_mpMusicPlayerControllerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__ACCMediaLibraryShimInfo_startMLPlaybackWithResume___block_invoke;
      block[3] = &unk_2789E3478;
      block[4] = self;
      dispatch_sync(mpMusicPlayerControllerQueue, block);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2335D3000, v13, OS_LOG_TYPE_INFO, "no systemMusicPlayer!", buf, 2u);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      libraryType = self->_libraryType;
      *buf = 67109120;
      v17 = libraryType;
      _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid libraryType(%d)", buf, 8u);
    }
  }
}

void __53__ACCMediaLibraryShimInfo_startMLPlaybackWithResume___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  if (![v2 playbackState])
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) UIDString];
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_2335D3000, v5, OS_LOG_TYPE_INFO, "startMLPlaybackWithResume stopped! prepare all tracks, libraryUID=%@", &v16, 0xCu);
    }

    v7 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    v8 = *(a1 + 32);
    if (*(v8 + 36) == 2)
    {
      v9 = [MEMORY[0x277CD6020] defaultRadioLibrary];
      v10 = [v9 stations];
      if ([v10 count])
      {
        v11 = [v10 objectAtIndex:0];
        [v2 setQueueWithRadioStation:v11];
      }
    }

    else
    {
      [MEMORY[0x277CD5E10] setDefaultMediaLibrary:*(v8 + 56)];
      v9 = [MEMORY[0x277CD5E38] songsQuery];
      [v2 setQueueWithQuery:v9];
    }

    [MEMORY[0x277CD5E10] setDefaultMediaLibrary:v7];
  }

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [*(a1 + 32) UIDString];
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&dword_2335D3000, v14, OS_LOG_TYPE_INFO, "startMLPlaybackWithResume call [musicPlayer play], libraryUID=%@", &v16, 0xCu);
  }

  [v2 play];
}

- (void)_startMLPlaybackOfAllSongsStartItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (self->_libraryType)
  {
    if (v6)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uIDString = [(ACCMediaLibraryShimInfo *)self UIDString];
      libraryType = self->_libraryType;
      *buf = 138412546;
      v21 = uIDString;
      v22 = 1024;
      v23 = libraryType;
      _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "startMLPlaybackOfAllSongs Not supported for, libraryUID=%@ _libraryType=%u", buf, 0x12u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      uIDString2 = [(ACCMediaLibraryShimInfo *)self UIDString];
      *buf = 138412290;
      v21 = uIDString2;
      _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_INFO, "startMLPlaybackOfAllSongs prepare and play all songs, libraryUID=%@", buf, 0xCu);
    }

    v7 = GetMediaLibraryHelper(v14);
    if ([v7 showMusic])
    {
      mpMusicPlayerControllerQueue = self->_mpMusicPlayerControllerQueue;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __63__ACCMediaLibraryShimInfo__startMLPlaybackOfAllSongsStartItem___block_invoke;
      v18[3] = &unk_2789E3428;
      v18[4] = self;
      v19 = itemCopy;
      dispatch_sync(mpMusicPlayerControllerQueue, v18);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCMediaLibraryShimInfo _getUIDString];
        }

        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2335D3000, v16, OS_LOG_TYPE_INFO, "no systemMusicPlayer!", buf, 2u);
      }
    }
  }
}

void __63__ACCMediaLibraryShimInfo__startMLPlaybackOfAllSongsStartItem___block_invoke(uint64_t a1)
{
  v4 = *(*(a1 + 32) + 104);
  v2 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [MEMORY[0x277CD5E10] setDefaultMediaLibrary:*(*(a1 + 32) + 56)];
  v3 = [MEMORY[0x277CD5E38] songsQuery];
  if (*(a1 + 40))
  {
    [v4 setQueueWithQuery:v3 firstItem:?];
  }

  else
  {
    [v4 setQueueWithQuery:v3];
  }

  [MEMORY[0x277CD5E10] setDefaultMediaLibrary:v2];
  [v4 play];
}

- (void)startMLPlaybackOfAllSongsStartPersistentID:(unint64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    dCopy = d;
    _os_log_impl(&dword_2335D3000, v7, OS_LOG_TYPE_DEFAULT, "startMLPlaybackOfAllSongsStartPersistentID: startingPersistentID=%llu", &v12, 0xCu);
  }

  if (self->_libraryType)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCMediaLibraryShimInfo _getUIDString];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uIDString = [(ACCMediaLibraryShimInfo *)self UIDString];
      libraryType = self->_libraryType;
      v12 = 138412546;
      dCopy = uIDString;
      v14 = 1024;
      v15 = libraryType;
      _os_log_impl(&dword_2335D3000, v8, OS_LOG_TYPE_DEFAULT, "startMLPlaybackOfAllSongs Not supported for, libraryUID=%@ _libraryType=%u", &v12, 0x12u);
    }
  }

  else
  {
    v8 = [(ACCMediaLibraryShimInfo *)self _getMediaItemForPersistentID:d];
    [(ACCMediaLibraryShimInfo *)self _startMLPlaybackOfAllSongsStartItem:v8];
  }
}

- (void)confirmMediaLibraryUpdateLastRevision:(id)revision updateCount:(unsigned int)count
{
  v14 = *MEMORY[0x277D85DE8];
  revisionCopy = revision;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCMediaLibraryShimInfo _getUIDString];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = revisionCopy;
    v12 = 1024;
    countCopy = count;
    _os_log_impl(&dword_2335D3000, v9, OS_LOG_TYPE_INFO, "confirmMediaLibraryUpdateLastRevision: lastRevision=%@ count=%u", &v10, 0x12u);
  }

  dispatch_semaphore_signal(self->_waitForWindowSem);
}

- (void)_beginMediaLibraryUpdatesWithAnchor:(uint64_t)a1 validity:(NSObject *)a2 .cold.13(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_2335D3000, a2, OS_LOG_TYPE_DEBUG, "_attemptUpdate result %ld", &v2, 0xCu);
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_92_cold_2(uint64_t a1)
{
  v3 = [OUTLINED_FUNCTION_6(a1 *MEMORY[0x277D85DE8])];
  [*(a1 + 48) persistentID];
  OUTLINED_FUNCTION_3();
  LODWORD(v10) = 138413826;
  *(&v10 + 4) = v1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_2335D3000, v4, v5, "update:%@ revision:%@ deletePlaylist:%llu progress:%u accessory:%@, _isShuttingDown=%d _enableLibraryUpdate=%d", v6, v7, v8, v9, v10, DWORD2(v10));
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_94_cold_2(uint64_t a1)
{
  [OUTLINED_FUNCTION_6(a1 *MEMORY[0x277D85DE8])];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_2335D3000, v2, v3, "update:%@ revision:%@ playlist:%@ progress:%u accessory:%@, _isShuttingDown=%d _enableLibraryUpdate=%d", v4, v5, v6, v7);
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_95_cold_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) revision];
  v4 = [*(a1 + 40) content];
  OUTLINED_FUNCTION_3();
  LODWORD(v11) = 138413826;
  *(&v11 + 4) = v2;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_2335D3000, v5, v6, "update:%@ revision:%@ content:%@ progress:%u accessory:%@, _isShuttingDown=%d _enableLibraryUpdate=%d", v7, v8, v9, v10, v11, DWORD2(v11));
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_96_cold_2(uint64_t a1)
{
  v3 = [OUTLINED_FUNCTION_6(a1 *MEMORY[0x277D85DE8])];
  [*(a1 + 48) persistentID];
  OUTLINED_FUNCTION_3();
  LODWORD(v10) = 138413826;
  *(&v10 + 4) = v1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_2335D3000, v4, v5, "update:%@ revision:%@ deleteItem:%llu progress:%u accessory:%@, _isShuttingDown=%d _enableLibraryUpdate=%d", v6, v7, v8, v9, v10, DWORD2(v10));
}

void __72__ACCMediaLibraryShimInfo__beginMediaLibraryUpdatesWithAnchor_validity___block_invoke_97_cold_2(uint64_t a1)
{
  [OUTLINED_FUNCTION_6(a1 *MEMORY[0x277D85DE8])];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_2335D3000, v2, v3, "update:%@ revision:%@ item:[%@] progress:%u accessory:%@, _isShuttingDown=%d _enableLibraryUpdate=%d", v4, v5, v6, v7);
}

@end