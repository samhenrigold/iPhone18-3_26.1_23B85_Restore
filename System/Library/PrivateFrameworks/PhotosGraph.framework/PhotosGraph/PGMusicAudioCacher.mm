@interface PGMusicAudioCacher
+ (id)songPropertiesByAdamIDCachedForPhotosWithError:(id *)error;
+ (void)_addSongsWithAdamIDs:(id)ds toPlaylist:(id)playlist inLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)cacheSongAudioForAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)removeAllSongsCachedForPhotosWithProgressReporter:(id)reporter completionHandler:(id)handler;
+ (void)removeSongsCachedForPhotosWithAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler;
@end

@implementation PGMusicAudioCacher

+ (void)_addSongsWithAdamIDs:(id)ds toPlaylist:(id)playlist inLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler
{
  dsCopy = ds;
  playlistCopy = playlist;
  libraryCopy = library;
  reporterCopy = reporter;
  handlerCopy = handler;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    v16 = [PGError errorForCode:-4];
    handlerCopy[2](handlerCopy, 0, v16);
  }

  else
  {
    v17 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v17 loggingConnection];

    v19 = os_signpost_id_generate(loggingConnection);
    v20 = loggingConnection;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "AddSongsToMusicAudioCache", "", buf, 2u);
    }

    *buf = 0;
    mach_timebase_info(buf);
    v22 = mach_absolute_time();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke;
    v24[3] = &unk_2788853E8;
    v25 = reporterCopy;
    v23 = handlerCopy;
    v30 = v19;
    v31 = *buf;
    v28 = v23;
    v29 = v22;
    v26 = v21;
    v27 = playlistCopy;
    v16 = v21;
    [libraryCopy addStoreItemIDs:dsCopy referralObject:0 andAddTracksToCloudLibrary:0 withCompletion:v24];
  }
}

void __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelledWithProgress:0.5])
  {
    v7 = *(a1 + 56);
    v8 = [PGError errorForCode:-4];
    (*(v7 + 16))(v7, 0, v8);

    v9 = mach_absolute_time();
    v10 = *(a1 + 64);
    v12 = *(a1 + 80);
    v11 = *(a1 + 84);
    v13 = *(a1 + 40);
    v14 = v13;
    v15 = *(a1 + 72);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_END, v15, "AddSongsToMusicAudioCache", "", buf, 2u);
    }

    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_13:
      *buf = 136315394;
      v33 = "AddSongsToMusicAudioCache";
      v34 = 2048;
      v35 = ((((v9 - v10) * v12) / v11) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else if (v5)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke_24;
    v25[3] = &unk_2788853C0;
    v17 = *(a1 + 48);
    v28 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = *(a1 + 64);
    v26 = v18;
    v29 = v19;
    v31 = *(a1 + 80);
    v20 = *(a1 + 40);
    v21 = *(a1 + 72);
    v27 = v20;
    v30 = v21;
    [v17 addMediaItems:v5 completionHandler:v25];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) isCancelledWithProgress:1.0];
    v9 = mach_absolute_time();
    v10 = *(a1 + 64);
    v12 = *(a1 + 80);
    v11 = *(a1 + 84);
    v22 = *(a1 + 40);
    v23 = v22;
    v24 = *(a1 + 72);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v24, "AddSongsToMusicAudioCache", "", buf, 2u);
    }

    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }
  }
}

void __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke_24(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) isCancelledWithProgress:1.0];
  v2 = mach_absolute_time();
  v3 = *(a1 + 56);
  v5 = *(a1 + 72);
  v4 = *(a1 + 76);
  v6 = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_END, v8, "AddSongsToMusicAudioCache", "", &v10, 2u);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "AddSongsToMusicAudioCache";
    v12 = 2048;
    v13 = ((((v2 - v3) * v5) / v4) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v10, 0x16u);
  }
}

+ (id)songPropertiesByAdamIDCachedForPhotosWithError:(id *)error
{
  v53[12] = *MEMORY[0x277D85DE8];
  if (+[PGMusicCatalogMonitor canAccessMediaLibrary])
  {
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (photosMemoriesPlaylist)
    {
      v34 = defaultMediaLibrary;
      v6 = *MEMORY[0x277CD56D0];
      v53[0] = *MEMORY[0x277CD58B8];
      v53[1] = v6;
      v7 = *MEMORY[0x277CD56E8];
      v53[2] = *MEMORY[0x277CD57F0];
      v53[3] = v7;
      v8 = *MEMORY[0x277CD5748];
      v53[4] = *MEMORY[0x277CD57B8];
      v53[5] = v8;
      v9 = *MEMORY[0x277CD57A0];
      v53[6] = *MEMORY[0x277CD5790];
      v53[7] = v9;
      v10 = *MEMORY[0x277CD5760];
      v53[8] = *MEMORY[0x277CD5860];
      v53[9] = v10;
      v11 = *MEMORY[0x277CD5888];
      v53[10] = *MEMORY[0x277CD5738];
      v53[11] = v11;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:12];
      v33 = photosMemoriesPlaylist;
      items = [photosMemoriesPlaylist items];
      v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(items, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = items;
      v40 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v40)
      {
        v39 = *v47;
        v38 = *MEMORY[0x277CD58A0];
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v47 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v46 + 1) + 8 * i);
            v15 = [v14 valueForProperty:v38];
            v16 = v15;
            if (v15)
            {
              v41 = v15;
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v18 = v36;
              v19 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v43;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v43 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v42 + 1) + 8 * j);
                    v24 = dictionary;
                    v25 = [v14 valueForProperty:v23];
                    if (v25)
                    {
                      [v24 setObject:v25 forKeyedSubscript:v23];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v42 objects:v51 count:16];
                }

                while (v20);
              }

              existsInLibrary = [v14 existsInLibrary];
              v27 = [MEMORY[0x277CCABB0] numberWithBool:existsInLibrary];
              [dictionary setObject:v27 forKeyedSubscript:@"ExistsInLibrary"];

              persistentID = [v14 persistentID];
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
              [dictionary setObject:v29 forKeyedSubscript:@"PersistentID"];

              v16 = v41;
              stringValue = [v41 stringValue];
              [v37 setObject:dictionary forKeyedSubscript:stringValue];
            }
          }

          v40 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v40);
      }

      photosMemoriesPlaylist = v33;
      defaultMediaLibrary = v34;
    }

    else if (error)
    {
      [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      *error = v37 = 0;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v31 = +[PGLogging memoriesMusicLogging];
    defaultMediaLibrary = [v31 loggingConnection];

    if (os_log_type_enabled(defaultMediaLibrary, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, defaultMediaLibrary, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so can not read properties of any cached songs.", buf, 2u);
    }

    v37 = MEMORY[0x277CBEC10];
  }

  return v37;
}

+ (void)removeAllSongsCachedForPhotosWithProgressReporter:(id)reporter completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  handlerCopy = handler;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    defaultMediaLibrary = [PGError errorForCode:-4];
    handlerCopy[2](handlerCopy, 0, defaultMediaLibrary);
LABEL_19:

    goto LABEL_20;
  }

  if (+[PGMusicCatalogMonitor canAccessMediaLibrary])
  {
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (photosMemoriesPlaylist)
    {
      v9 = +[PGLogging memoriesMusicLogging];
      loggingConnection = [v9 loggingConnection];

      v11 = os_signpost_id_generate(loggingConnection);
      v12 = loggingConnection;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RemoveAllSongsFromMusicAudioCache", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v14 = mach_absolute_time();
      [photosMemoriesPlaylist removeAllItems];
      v15 = mach_absolute_time();
      v16 = info;
      v17 = v13;
      v18 = v17;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_END, v11, "RemoveAllSongsFromMusicAudioCache", "", buf, 2u);
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "RemoveAllSongsFromMusicAudioCache";
        v24 = 2048;
        v25 = ((((v15 - v14) * v16.numer) / v16.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
      [reporterCopy isCancelledWithProgress:1.0];
    }

    else
    {
      v18 = [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      handlerCopy[2](handlerCopy, 0, v18);
    }

    goto LABEL_19;
  }

  v19 = +[PGLogging memoriesMusicLogging];
  loggingConnection2 = [v19 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so will not remove all cached songs from Photos memories playlist.", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_20:
}

+ (void)removeSongsCachedForPhotosWithAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  reporterCopy = reporter;
  handlerCopy = handler;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v11 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v11 loggingConnection];

    if (!+[PGMusicCatalogMonitor canAccessMediaLibrary])
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so will not remove input cached songs from Photos memories playlist.", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_37;
    }

    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (!photosMemoriesPlaylist)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to get photosMemoriesPlaylist from MediaLibrary", buf, 2u);
      }

      v34 = [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      (handlerCopy)[2](handlerCopy, 0, v34);
      goto LABEL_36;
    }

    v41 = defaultMediaLibrary;
    v42 = loggingConnection;
    v15 = loggingConnection;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v55 = [dsCopy count];
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher will remove %lu items from Photos playlist cache", buf, 0xCu);
    }

    v16 = v15;
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    v39 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RemoveSongsFromMusicAudioCache", "", buf, 2u);
    }

    spid = v17;
    v44 = v19;

    info = 0;
    mach_timebase_info(&info);
    v38 = mach_absolute_time();
    v43 = dsCopy;
    v20 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    array = [MEMORY[0x277CBEB18] array];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v40 = photosMemoriesPlaylist;
    items = [photosMemoriesPlaylist items];
    if ([items count])
    {
      v23 = 0;
      v24 = *MEMORY[0x277CD58A0];
      do
      {
        v25 = [items objectAtIndexedSubscript:{v23, spid}];
        v26 = [v25 valueForProperty:v24];
        stringValue = [v26 stringValue];
        if (stringValue && [v20 containsObject:stringValue])
        {
          [array addObject:v25];
          [indexSet addIndex:v23];
        }

        ++v23;
      }

      while (v23 < [items count]);
    }

    if ([array count])
    {
      loggingConnection = v42;
      if (![reporterCopy isCancelledWithProgress:0.4])
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __95__PGMusicAudioCacher_removeSongsCachedForPhotosWithAdamIDs_progressReporter_completionHandler___block_invoke;
        v46[3] = &unk_278885398;
        v49 = handlerCopy;
        v47 = reporterCopy;
        v50 = v38;
        v52 = info;
        v48 = v44;
        v51 = spida;
        photosMemoriesPlaylist = v40;
        [v40 removeItems:array atFilteredIndexes:indexSet completionBlock:v46];

        defaultMediaLibrary = v41;
        goto LABEL_35;
      }

      v28 = [PGError errorForCode:-4];
      (handlerCopy)[2](handlerCopy, 0, v28);

      v29 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v32 = v44;
      v33 = v32;
      photosMemoriesPlaylist = v40;
      if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, spida, "RemoveSongsFromMusicAudioCache", "", buf, 2u);
      }

      defaultMediaLibrary = v41;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 1, 0);
      [reporterCopy isCancelledWithProgress:1.0];
      v29 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v35 = v44;
      v33 = v35;
      defaultMediaLibrary = v41;
      loggingConnection = v42;
      if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, spida, "RemoveSongsFromMusicAudioCache", "", buf, 2u);
      }

      photosMemoriesPlaylist = v40;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }
    }

    *buf = 136315394;
    v55 = "RemoveSongsFromMusicAudioCache";
    v56 = 2048;
    v57 = ((((v29 - v38) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
LABEL_35:

    dsCopy = v43;
    v34 = v44;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  v10 = [PGError errorForCode:-4];
  (handlerCopy)[2](handlerCopy, 0, v10);

LABEL_38:
}

void __95__PGMusicAudioCacher_removeSongsCachedForPhotosWithAdamIDs_progressReporter_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [PGError errorWithCode:-1 description:@"[MemoriesMusic] MPMediaPlaylist -removeItems:completionBlock: call failed"];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) isCancelledWithProgress:1.0];
  v4 = mach_absolute_time();
  v5 = *(a1 + 56);
  v7 = *(a1 + 72);
  v6 = *(a1 + 76);
  v8 = *(a1 + 40);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RemoveSongsFromMusicAudioCache", "", &v12, 2u);
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "RemoveSongsFromMusicAudioCache";
    v14 = 2048;
    v15 = ((((v4 - v5) * v7) / v6) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v12, 0x16u);
  }
}

+ (void)cacheSongAudioForAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler
{
  dsCopy = ds;
  reporterCopy = reporter;
  handlerCopy = handler;
  if (+[PGMusicCatalogMonitor canAccessMediaLibrary])
  {
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (photosMemoriesPlaylist)
    {
      [self _addSongsWithAdamIDs:dsCopy toPlaylist:photosMemoriesPlaylist inLibrary:defaultMediaLibrary progressReporter:reporterCopy completionHandler:handlerCopy];
    }

    else
    {
      v15 = [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      handlerCopy[2](handlerCopy, 0, v15);
    }
  }

  else
  {
    v13 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v16[0] = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so will not cache songs in Photos memories playlist.", v16, 2u);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

@end