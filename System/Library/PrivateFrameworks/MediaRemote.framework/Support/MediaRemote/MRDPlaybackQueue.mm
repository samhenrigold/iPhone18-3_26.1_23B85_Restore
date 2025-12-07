@interface MRDPlaybackQueue
- (MRDPlaybackQueue)initWithPlaybackQueue:(id)queue;
- (id)createPlaybackQueueForRequest:(id)request cachingPolicy:(unsigned int)policy playerPath:(id)path partiallyCachedItems:(id *)items capabilities:(unint64_t)capabilities;
- (id)debugDescription;
- (void)clearArtwork;
- (void)clearArtworkForContentItems:(id)items;
- (void)updatePlaybackQueueWithContentItems:(id)items fromRequest:(id)request;
@end

@implementation MRDPlaybackQueue

- (MRDPlaybackQueue)initWithPlaybackQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = MRDPlaybackQueue;
  v6 = [(MRDPlaybackQueue *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackQueue, queue);
    v8 = objc_alloc_init(MRDPlaybackQueueArtworkCache);
    artworkCache = v7->_artworkCache;
    v7->_artworkCache = v8;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contentItems = [(MRPlaybackQueue *)v7->_playbackQueue contentItems];
    v11 = [contentItems countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(contentItems);
          }

          [(MRDPlaybackQueueArtworkCache *)v7->_artworkCache addArtworkFromItem:*(*(&v16 + 1) + 8 * v14) fromRequest:0];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [contentItems countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  mr_formattedDebugDescription = [(MRPlaybackQueue *)self->_playbackQueue mr_formattedDebugDescription];
  [v3 appendFormat:@"  playbackQueue = %@\n", mr_formattedDebugDescription];

  mr_formattedDebugDescription2 = [(MRDPlaybackQueueArtworkCache *)self->_artworkCache mr_formattedDebugDescription];
  [v3 appendFormat:@"  artworkCache = %@\n", mr_formattedDebugDescription2];

  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)updatePlaybackQueueWithContentItems:(id)items fromRequest:(id)request
{
  itemsCopy = items;
  requestCopy = request;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        playbackQueue = self->_playbackQueue;
        identifier = [v12 identifier];
        v15 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:identifier];

        if (v15)
        {
          [(MRDPlaybackQueueArtworkCache *)self->_artworkCache addArtworkFromItem:v12 fromRequest:requestCopy];
        }
      }

      v9 = [itemsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = [MRPlaybackQueue alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100177E00;
  v20[3] = &unk_1004BFE50;
  v21 = requestCopy;
  v17 = requestCopy;
  v18 = [itemsCopy msv_map:v20];
  v19 = [v16 initWithContentItems:v18];

  [(MRPlaybackQueue *)self->_playbackQueue mergeFrom:v19];
}

- (void)clearArtworkForContentItems:(id)items
{
  itemsCopy = items;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        playbackQueue = self->_playbackQueue;
        identifier = [*(*(&v15 + 1) + 8 * v8) identifier];
        v11 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:identifier];

        if (v11)
        {
          metadata = [v11 metadata];
          [metadata setArtworkURLTemplates:0];

          [v11 setArtwork:0];
          [v11 setArtworks:0];
          [v11 setRemoteArtworks:0];
          [v11 setAnimatedArtworks:0];
          artworkCache = self->_artworkCache;
          v19 = v11;
          v14 = [NSArray arrayWithObjects:&v19 count:1];
          [(MRDPlaybackQueueArtworkCache *)artworkCache clearArtworkForItems:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)clearArtwork
{
  v3 = objc_alloc_init(MRDPlaybackQueueArtworkCache);
  artworkCache = self->_artworkCache;
  self->_artworkCache = v3;
}

- (id)createPlaybackQueueForRequest:(id)request cachingPolicy:(unsigned int)policy playerPath:(id)path partiallyCachedItems:(id *)items capabilities:(unint64_t)capabilities
{
  requestCopy = request;
  pathCopy = path;
  requestByRemovingArtwork = [requestCopy requestByRemovingArtwork];
  selfCopy = self;
  v14 = MRPlaybackQueueCreateFromCache();
  if (v14)
  {
    if ([requestCopy includeArtwork])
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = [(MRPlaybackQueue *)selfCopy->_playbackQueue contentItems];
      v62 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v62)
      {
        v63 = 0;
        v64 = v14;
        v65 = *v79;
        itemsCopy = items;
        v61 = MRContentItemArtworkFormatStandard;
        policyCopy = policy;
        v58 = requestByRemovingArtwork;
        v59 = pathCopy;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v79 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v78 + 1) + 8 * v15);
          identifier = [v16 identifier];
          v68 = [v14 contentItemForIdentifier:identifier];

          metadata = [v16 metadata];
          if ([metadata hasArtworkAvailable])
          {
            goto LABEL_11;
          }

          availableArtworkFormats = [v16 availableArtworkFormats];
          if ([availableArtworkFormats count])
          {
            break;
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {

            goto LABEL_55;
          }

          availableAnimatedArtworkFormats = [v16 availableAnimatedArtworkFormats];
          v52 = [availableAnimatedArtworkFormats count];

          if (!v52)
          {
            items = itemsCopy;
            goto LABEL_45;
          }

LABEL_12:
          v66 = v15;
          if (_os_feature_enabled_impl() && ([requestCopy requestedAnimatedArtworkPreviewFrameFormats], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21))
          {
            metadata = objc_alloc_init(NSMutableDictionary);
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            requestedAnimatedArtworkPreviewFrameFormats = [requestCopy requestedAnimatedArtworkPreviewFrameFormats];
            v23 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v74 objects:v86 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v75;
              while (2)
              {
                for (i = 0; i != v24; i = i + 1)
                {
                  if (*v75 != v25)
                  {
                    objc_enumerationMutation(requestedAnimatedArtworkPreviewFrameFormats);
                  }

                  v27 = *(*(&v74 + 1) + 8 * i);
                  v28 = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache fittedAnimatedArtworkPreviewFrameDataForContentItem:v16 forFormat:v27 withRequest:requestCopy];
                  v29 = [[MRDataArtwork alloc] initWithImageData:v28];
                  if (!v29)
                  {

                    goto LABEL_67;
                  }

                  v30 = v29;
                  [metadata setObject:v29 forKeyedSubscript:v27];
                }

                v24 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v74 objects:v86 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            [v68 setAnimatedArtworkPreviewFrames:metadata];
            v31 = 1;
            requestByRemovingArtwork = v58;
            pathCopy = v59;
          }

          else
          {
            v31 = 0;
          }

          if (_os_feature_enabled_impl() && ([requestCopy requestedAnimatedArtworkAssetURLFormats], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count"), v32, v33))
          {
            metadata = objc_alloc_init(NSMutableDictionary);
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            requestedAnimatedArtworkPreviewFrameFormats = [requestCopy requestedAnimatedArtworkAssetURLFormats];
            v34 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v70 objects:v85 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v71;
LABEL_28:
              v37 = 0;
              while (1)
              {
                if (*v71 != v36)
                {
                  objc_enumerationMutation(requestedAnimatedArtworkPreviewFrameFormats);
                }

                v38 = *(*(&v70 + 1) + 8 * v37);
                v39 = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache animatedArtworkForContentItem:v16 forFormat:v38 withRequest:requestCopy];
                if (!v39)
                {
                  break;
                }

                v40 = v39;
                [metadata setObject:v39 forKeyedSubscript:v38];

                if (v35 == ++v37)
                {
                  v35 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v70 objects:v85 count:16];
                  if (v35)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_34;
                }
              }

LABEL_67:

              requestByRemovingArtwork = v58;
              pathCopy = v59;
LABEL_68:

LABEL_69:
              v55 = 0;
              v14 = v64;
              goto LABEL_70;
            }

LABEL_34:

            [v68 setAnimatedArtworks:metadata];
            v41 = 1;
            requestByRemovingArtwork = v58;
            pathCopy = v59;
          }

          else
          {
            v41 = 0;
          }

          requestedArtworkFormats = [requestCopy requestedArtworkFormats];
          v43 = [requestedArtworkFormats count];

          if (v43)
          {
            requestedArtworkFormats2 = [requestCopy requestedArtworkFormats];
            v84 = v61;
            v45 = [NSArray arrayWithObjects:&v84 count:1];
            v46 = [requestedArtworkFormats2 isEqualToArray:v45];

            if (!v46)
            {
              goto LABEL_69;
            }

            metadata = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache fittedArtworkDataForContentItem:v16 withRequest:requestCopy];
            v47 = [[MRDataArtwork alloc] initWithImageData:metadata];
            if (!v47)
            {
              goto LABEL_68;
            }

            v48 = v47;
            v82 = v61;
            v83 = v47;
            v49 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
            v50 = v68;
            [v68 setArtworks:v49];

            v14 = v64;
            items = itemsCopy;
            v15 = v66;
            goto LABEL_56;
          }

          if (((v31 | v41) & 1) == 0)
          {
            metadata = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache fittedArtworkDataForContentItem:v16 withRequest:requestCopy];
            v14 = v64;
            v15 = v66;
            if (metadata)
            {
              v53 = [[MRArtwork alloc] initWithImageData:metadata height:0 width:0];
              v50 = v68;
              [v68 setArtwork:v53];

              items = itemsCopy;
LABEL_56:

              goto LABEL_57;
            }

            if (policyCopy != 2)
            {
              goto LABEL_69;
            }

            items = itemsCopy;
            if (itemsCopy)
            {
              v54 = v63;
              if (!v63)
              {
                v54 = objc_alloc_init(NSMutableArray);
              }
            }

            else
            {
              v54 = v63;
            }

            v63 = v54;
            [v54 addObject:v16];
            v14 = v64;
LABEL_55:
            v50 = v68;
            goto LABEL_56;
          }

          v14 = v64;
          items = itemsCopy;
          v15 = v66;
LABEL_45:
          v50 = v68;
LABEL_57:

          if (++v15 == v62)
          {
            v62 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
            if (v62)
            {
              goto LABEL_5;
            }

            goto LABEL_63;
          }
        }

LABEL_11:
        goto LABEL_12;
      }

      v63 = 0;
LABEL_63:

      if (items)
      {
        *items = v63;
      }

      v55 = v14;
LABEL_70:
    }

    else
    {
      v55 = v14;
    }
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

@end