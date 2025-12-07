@interface VUIPlaybackReporterVPAFPlaylist
- (TVPPlayback)player;
- (VUIPlaybackReporterVPAFPlaylist)initWithPlayer:(id)player;
- (id)itemAtOverallPosition:(unint64_t)position rangeOptions:(int64_t)options;
- (id)itemsBetweenStartOverallPosition:(unint64_t)position endOverallPosition:(unint64_t)overallPosition;
@end

@implementation VUIPlaybackReporterVPAFPlaylist

- (VUIPlaybackReporterVPAFPlaylist)initWithPlayer:(id)player
{
  v103[1] = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v94.receiver = self;
  v94.super_class = VUIPlaybackReporterVPAFPlaylist;
  v5 = [(VUIPlaybackReporterVPAFPlaylist *)&v94 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  currentMediaItem = [playerCopy currentMediaItem];
  v7 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DE0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (isKindOfClass = [v7 count]) == 0)
  {
    v27 = VUIDefaultLogObject(isKindOfClass);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Media item lacks valid VPAF dictionary. Will not track.", buf, 2u);
    }

    goto LABEL_18;
  }

  v9 = VUIDefaultLogObject(isKindOfClass);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v98 = v7;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Media item has VPAF dictionary. Will track. %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objc_storeWeak(&v5->_player, playerCopy);
  v11 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v12 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
  v13 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D28]];
  [dictionary addEntriesFromDictionary:v7];
  [dictionary vui_setObjectIfNotNil:v11 forKey:@"featureCanonicalId"];
  v14 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
  [dictionary vui_setObjectIfNotNil:v14 forKey:@"featureReferenceId"];

  v15 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  [dictionary vui_setObjectIfNotNil:v15 forKey:@"featureExternalId"];

  v16 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  [dictionary vui_setObjectIfNotNil:v16 forKey:@"brandId"];

  v80 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  [dictionary vui_setObjectIfNotNil:? forKey:?];
  v82 = v12;
  [dictionary vui_setObjectIfNotNil:v12 forKey:@"canonicalShowId"];
  v81 = v13;
  [dictionary vui_setObjectIfNotNil:v13 forKey:@"canonicalSeasonId"];
  v17 = +[VUIMetricsJetEngine sharedInstance];
  v79 = v11;
  if ([v17 isSharedContent:v11])
  {
    goto LABEL_9;
  }

  v18 = +[VUIMetricsJetEngine sharedInstance];
  if ([v18 isSharedContent:v82])
  {

LABEL_9:
LABEL_10:
    v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v19 forKey:@"sharedContent"];

    goto LABEL_11;
  }

  v70 = +[VUIMetricsJetEngine sharedInstance];
  v71 = [v70 isSharedContent:v81];

  if (v71)
  {
    goto LABEL_10;
  }

LABEL_11:
  v20 = [VUIPlaybackUtilities playerIsLive:playerCopy];
  v5->_isLive = v20;
  if (v20)
  {
    [dictionary setObject:@"live" forKeyedSubscript:@"programmingType"];
    v21 = [dictionary objectForKey:@"serviceId"];

    if (!v21)
    {
      v22 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C48]];
      [dictionary vui_setObjectIfNotNil:v22 forKey:@"serviceId"];
    }

    v23 = [[VUIPlaybackReporterVPAFPlaylistItem alloc] initWithPosition:0 duration:-1 eventData:0];
    v103[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1];
    items = v5->_items;
    v5->_items = v24;
    v26 = v79;
    goto LABEL_42;
  }

  v78 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
  [playerCopy duration];
  v30 = vcvtad_u64_f64(v29 * 1000.0);
  v77 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
  doubleValue = [(NSArray *)v77 doubleValue];
  v33 = vcvtad_u64_f64(v32 * 1000.0);
  v34 = v30 - v33;
  if (v30 <= v33)
  {
    v72 = VUIDefaultLogObject(doubleValue);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v98 = v30;
      v99 = 2048;
      v100 = v33;
      v101 = 2112;
      v102 = v78;
      _os_log_impl(&dword_1E323F000, v72, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Total duration - %lu should not be less than or equal to feature start time - %lu. Will not track VPAF for content title %@", buf, 0x20u);
    }

LABEL_18:
    v28 = 0;
    goto LABEL_48;
  }

  v75 = v5;
  v76 = playerCopy;
  [dictionary setObject:@"videoOnDemand" forKeyedSubscript:@"programmingType"];
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
  v73 = dictionary;
  [dictionary setObject:v35 forKeyedSubscript:@"overallLength"];

  v85 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{v33, v34}];
  array = [MEMORY[0x1E695DF70] array];
  v74 = currentMediaItem;
  [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v93 = 0u;
  v36 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (!v36)
  {
    goto LABEL_39;
  }

  v37 = v36;
  v86 = *v91;
  do
  {
    for (i = 0; i != v37; ++i)
    {
      if (*v91 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v90 + 1) + 8 * i);
      v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
      adamID = [v39 adamID];
      dynamicSlotDataSetId = [v39 dynamicSlotDataSetId];
      if (adamID)
      {
        [v40 setObject:adamID forKeyedSubscript:@"assetId"];
      }

      if (dynamicSlotDataSetId)
      {
        [v40 setObject:dynamicSlotDataSetId forKeyedSubscript:@"data.dynamicSlot.dataSetId"];
      }

      v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v39, "isSkippable")}];
      [v40 setObject:v43 forKeyedSubscript:@"isSkippable"];

      v44 = @"unknown";
      type = [v39 type];
      v46 = @"preroll";
      if (type == 1)
      {
        goto LABEL_34;
      }

      if (type == 3)
      {
        v46 = @"postroll";
LABEL_34:
        v47 = v46;

        v44 = v47;
        goto LABEL_35;
      }

      v46 = @"midroll";
      if (type == 2)
      {
        goto LABEL_34;
      }

LABEL_35:
      [v40 setObject:v44 forKeyedSubscript:@"assetPlacement"];
      v48 = [VUIPlaybackReporterVPAFPlaylistItem alloc];
      [v39 start];
      v50 = vcvtad_u64_f64(v49 * 1000.0);
      [v39 duration];
      v52 = [(VUIPlaybackReporterVPAFPlaylistItem *)v48 initWithPosition:v50 duration:vcvtad_u64_f64(v51 * 1000.0) eventData:v40];
      v53 = v52;
      if (v52)
      {
        timeRange = [(VUIPlaybackReporterVPAFPlaylistItem *)v52 timeRange];
        [v85 removeIndexesInRange:{timeRange, v55}];
        [array addObject:v53];
      }
    }

    v37 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
  }

  while (v37);
LABEL_39:
  v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v56 setObject:@"feature" forKeyedSubscript:@"assetPlacement"];
  v57 = VUIDefaultLogObject([v56 vui_setObjectIfNotNil:v80 forKey:@"assetId"]);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v98 = v56;
    _os_log_impl(&dword_1E323F000, v57, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Feature metrics: %@", buf, 0xCu);
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __50__VUIPlaybackReporterVPAFPlaylist_initWithPlayer___block_invoke;
  v87[3] = &unk_1E8734C90;
  v88 = v56;
  v58 = array;
  v89 = v58;
  v59 = v56;
  [v85 enumerateRangesUsingBlock:v87];
  v5 = v75;
  v60 = v75->_items;
  v75->_items = v58;
  v61 = v58;

  playerCopy = v76;
  items = v77;
  currentMediaItem = v74;
  dictionary = v73;
  v23 = v78;
  v26 = v79;
LABEL_42:

  v95 = dictionary;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  eventData = v5->_eventData;
  v5->_eventData = v62;

  hasInterstitials = [playerCopy hasInterstitials];
  v5->_hasInterstitials = hasInterstitials;
  v65 = VUIDefaultLogObject(hasInterstitials);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = v5->_items;
    *buf = 138412290;
    v98 = v66;
    _os_log_impl(&dword_1E323F000, v65, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Parsed items: %@", buf, 0xCu);
  }

  v68 = VUIDefaultLogObject(v67);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v98 = dictionary;
    _os_log_impl(&dword_1E323F000, v68, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Playlist metrics: %@", buf, 0xCu);
  }

LABEL_47:
  v28 = v5;
LABEL_48:

  return v28;
}

void __50__VUIPlaybackReporterVPAFPlaylist_initWithPlayer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[VUIPlaybackReporterVPAFPlaylistItem alloc] initWithPosition:a2 duration:a3 eventData:*(a1 + 32)];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 40) addObject:v4];
    v4 = v5;
  }
}

- (id)itemAtOverallPosition:(unint64_t)position rangeOptions:(int64_t)options
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = [(VUIPlaybackReporterVPAFPlaylist *)self items:position];
  firstObject = [v6 firstObject];

  player = [(VUIPlaybackReporterVPAFPlaylist *)self player];
  currentMediaItem = [player currentMediaItem];
  v10 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
  v11 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipDuration"];
  if (!-[VUIPlaybackReporterVPAFPlaylist isLive](self, "isLive") || ([v10 length] ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    if (![(VUIPlaybackReporterVPAFPlaylist *)self isLive])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      items = [(VUIPlaybackReporterVPAFPlaylist *)self items];
      v14 = [items countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v32 = v10;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(items);
            }

            v18 = *(*(&v33 + 1) + 8 * i);
            timeRange = [v18 timeRange];
            if (position >= timeRange && position - timeRange < v20)
            {
              v30 = v18;

              firstObject = v30;
              goto LABEL_24;
            }
          }

          v15 = [items countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v15);
LABEL_24:
        v10 = v32;
      }
    }

    firstObject = firstObject;
    v29 = firstObject;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary vui_setObjectIfNotNil:*MEMORY[0x1E69AB740] forKey:@"assetPlacement"];
    v23 = VUIDefaultLogObject([dictionary vui_setObjectIfNotNil:@"CatchUpToLive" forKey:@"extraType"]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v10;
      v40 = 2112;
      v41 = dictionary;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Clip (%@) metadata %@", buf, 0x16u);
    }

    v25 = [VUIPlaybackReporterVPAFPlaylistItem alloc];
    [v11 doubleValue];
    v27 = (v26 * 1000.0);
    v28 = [dictionary copy];
    v29 = [(VUIPlaybackReporterVPAFPlaylistItem *)v25 initWithPosition:0 duration:v27 eventData:v28];
  }

  return v29;
}

- (id)itemsBetweenStartOverallPosition:(unint64_t)position endOverallPosition:(unint64_t)overallPosition
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![(VUIPlaybackReporterVPAFPlaylist *)self isLive])
  {
    v30 = 0u;
    v31 = 0u;
    if (overallPosition >= position)
    {
      v7 = overallPosition - position;
    }

    else
    {
      v7 = position - overallPosition;
    }

    if (overallPosition >= position)
    {
      overallPositionCopy = position;
    }

    else
    {
      overallPositionCopy = overallPosition;
    }

    v25.location = overallPositionCopy;
    v25.length = v7;
    v28 = 0uLL;
    v29 = 0uLL;
    obj = [(VUIPlaybackReporterVPAFPlaylist *)self items];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v11 = v9;
      v27 = *v29;
      *&v10 = 138412290;
      v23 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          selfCopy = self;
          if (*v29 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          eventData = [v14 eventData];
          lastObject = [eventData lastObject];
          v17 = [lastObject vui_stringForKey:@"assetPlacement"];
          v18 = [v17 isEqualToString:@"preroll"];

          self = selfCopy;
          hasInterstitials = [(VUIPlaybackReporterVPAFPlaylist *)selfCopy hasInterstitials];
          if (hasInterstitials && v18)
          {
            v20 = VUIDefaultLogObject(hasInterstitials);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v33 = v14;
              _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Skip returning preroll item - %@ to Jet. Will handle transition reporting on our end", buf, 0xCu);
            }
          }

          else
          {
            v37.location = [v14 timeRange];
            v37.length = v21;
            if (NSIntersectionRange(v25, v37).length)
            {
              [v24 addObject:v14];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v11);
    }
  }

  return v24;
}

- (TVPPlayback)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end