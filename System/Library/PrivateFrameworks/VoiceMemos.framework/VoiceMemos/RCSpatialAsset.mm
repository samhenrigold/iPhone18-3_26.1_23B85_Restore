@interface RCSpatialAsset
- (BOOL)_descriptionIsSpatial:(opaqueCMFormatDescription *)spatial;
- (BOOL)_isSpatialTrack:(id)track;
- (RCSpatialAsset)initWithAsset:(id)asset;
- (id)_associatedTrackOfType:(id)type forTrack:(id)track;
- (id)_findOverdubTrack;
- (id)_findSpatialMetadataGroup;
- (id)_findSpatialTrack;
- (id)_metadataGroupFor:(id)for;
@end

@implementation RCSpatialAsset

- (RCSpatialAsset)initWithAsset:(id)asset
{
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = RCSpatialAsset;
  v6 = [(RCSpatialAsset *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    _findSpatialTrack = [(RCSpatialAsset *)v7 _findSpatialTrack];
    spatialTrack = v7->_spatialTrack;
    v7->_spatialTrack = _findSpatialTrack;

    if (!v7->_spatialTrack || ([(RCSpatialAsset *)v7 _associatedTrackOfType:*MEMORY[0x277CE6190] forTrack:?], v10 = objc_claimAutoreleasedReturnValue(), fallbackTrack = v7->_fallbackTrack, v7->_fallbackTrack = v10, fallbackTrack, !v7->_fallbackTrack) || ([(RCSpatialAsset *)v7 _findSpatialMetadataGroup], v12 = objc_claimAutoreleasedReturnValue(), spatialMetadataGroup = v7->_spatialMetadataGroup, v7->_spatialMetadataGroup = v12, spatialMetadataGroup, !v7->_spatialMetadataGroup))
    {
      v16 = 0;
      goto LABEL_8;
    }

    _findOverdubTrack = [(RCSpatialAsset *)v7 _findOverdubTrack];
    overdubTrack = v7->_overdubTrack;
    v7->_overdubTrack = _findOverdubTrack;
  }

  v16 = v7;
LABEL_8:

  return v16;
}

- (id)_findSpatialTrack
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tracks = [(AVAsset *)self->_asset tracks];
  v4 = [tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(tracks);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([(RCSpatialAsset *)self _isSpatialTrack:v8])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_findOverdubTrack
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tracks = [(AVAsset *)self->_asset tracks];
  v4 = [tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x277CE5E48];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(tracks);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mediaType = [v9 mediaType];
        if ([mediaType isEqualToString:v7] && objc_msgSend(v9, "isEnabled"))
        {
          trackID = [v9 trackID];
          trackID2 = [(AVAssetTrack *)self->_fallbackTrack trackID];

          if (trackID != trackID2)
          {
            v13 = v9;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v5 = [tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)_findSpatialMetadataGroup
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tracks = [(AVAsset *)self->_asset tracks];
  v4 = [tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(tracks);
        }

        v8 = [(RCSpatialAsset *)self _metadataGroupFor:*(*(&v11 + 1) + 8 * i)];
        if (v8)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)_metadataGroupFor:(id)for
{
  v37 = *MEMORY[0x277D85DE8];
  forCopy = for;
  mediaType = [forCopy mediaType];
  v6 = [mediaType isEqualToString:*MEMORY[0x277CE5E70]];

  if (!v6)
  {
    v23 = 0;
    goto LABEL_28;
  }

  v7 = [(RCSpatialAsset *)self _associatedTrackOfType:*MEMORY[0x277CE6198] forTrack:forCopy];
  v8 = v7;
  if (v7)
  {
    trackID = [v7 trackID];
    if (trackID == [(AVAssetTrack *)self->_spatialTrack trackID])
    {
      v34 = *MEMORY[0x277CC08F0];
      v35 = *(MEMORY[0x277CC08F0] + 16);
      v10 = [forCopy makeSampleCursorWithPresentationTimeStamp:&v34];
      if (!v10)
      {
        v23 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v11 = [objc_alloc(MEMORY[0x277CE6628]) initWithStartCursor:v10];
      [v11 setDirection:1];
      [v11 setPreferredMinSampleCount:1];
      [v11 setMaxSampleCount:1];
      v12 = [objc_alloc(MEMORY[0x277CE6618]) initWithAsset:self->_asset timebase:0];
      v33 = 0;
      v13 = [v12 createSampleBufferForRequest:v11 error:&v33];
      v14 = v33;
      if (v13)
      {
        v15 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:v13];
        CFRelease(v13);
        if (v15)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          items = [v15 items];
          v17 = [items countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v17)
          {
            v18 = v17;
            v25 = v15;
            v26 = v14;
            v27 = v12;
            v28 = v10;
            v19 = *v30;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v30 != v19)
                {
                  objc_enumerationMutation(items);
                }

                identifier = [*(*(&v29 + 1) + 8 * i) identifier];
                v22 = [identifier isEqualToString:@"mdta/com.apple.quicktime.cinematic-audio"];

                if (v22)
                {
                  v15 = v25;
                  v23 = v25;
                  v12 = v27;
                  v10 = v28;
                  v14 = v26;
                  goto LABEL_24;
                }
              }

              v18 = [items countByEnumeratingWithState:&v29 objects:v36 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

            v23 = 0;
            v12 = v27;
            v10 = v28;
            v15 = v25;
            v14 = v26;
          }

          else
          {
            v23 = 0;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v15 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(RCSpatialAsset *)v14 _metadataGroupFor:v15];
        }
      }

      v23 = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  v23 = 0;
LABEL_27:

LABEL_28:

  return v23;
}

- (BOOL)_isSpatialTrack:(id)track
{
  v19 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  mediaType = [trackCopy mediaType];
  v6 = [mediaType isEqualToString:*MEMORY[0x277CE5E48]];

  if (v6 && ([trackCopy isEnabled] & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    formatDescriptions = [trackCopy formatDescriptions];
    v9 = [formatDescriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(formatDescriptions);
          }

          if ([(RCSpatialAsset *)self _descriptionIsSpatial:*(*(&v14 + 1) + 8 * i)])
          {
            v7 = 1;
            goto LABEL_14;
          }
        }

        v10 = [formatDescriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_descriptionIsSpatial:(opaqueCMFormatDescription *)spatial
{
  if (CMFormatDescriptionGetMediaSubType(spatial) != 1634754915)
  {
    goto LABEL_10;
  }

  ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(spatial, 0);
  if (ChannelLayout)
  {
    if (ChannelLayout->mChannelLayoutTag)
    {
      LODWORD(ChannelLayout) = (ChannelLayout->mChannelLayoutTag >> 17) & 1;
      return ChannelLayout;
    }

    mNumberChannelDescriptions = ChannelLayout->mNumberChannelDescriptions;
    if (!mNumberChannelDescriptions)
    {
LABEL_9:
      LOBYTE(ChannelLayout) = mNumberChannelDescriptions == 4;
      return ChannelLayout;
    }

    mChannelDescriptions = ChannelLayout->mChannelDescriptions;
    v7 = ChannelLayout->mNumberChannelDescriptions;
    while ((mChannelDescriptions->mChannelLabel & 0x20000) != 0)
    {
      ++mChannelDescriptions;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    LOBYTE(ChannelLayout) = 0;
  }

  return ChannelLayout;
}

- (id)_associatedTrackOfType:(id)type forTrack:(id)track
{
  v4 = [track associatedTracksOfType:type];
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_metadataGroupFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[RCSpatialAsset _metadataGroupFor:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to create sample buffer, error: %@", &v2, 0x16u);
}

@end