@interface AVPlayerItem(PhotosPlayer)
- (BOOL)is_isHighFramerate;
- (void)is_enableColorMatching;
- (void)is_setAudioTracksEnabled:()PhotosPlayer;
@end

@implementation AVPlayerItem(PhotosPlayer)

- (void)is_setAudioTracksEnabled:()PhotosPlayer
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tracks = [self tracks];
  v5 = [tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x277CE5E48];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(tracks);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        assetTrack = [v10 assetTrack];
        mediaType = [assetTrack mediaType];
        v13 = [mediaType isEqualToString:v8];

        if (v13)
        {
          if (a3)
          {
            isEnabled = [assetTrack isEnabled];
          }

          else
          {
            isEnabled = 0;
          }

          [v10 setEnabled:isEnabled];
        }
      }

      v6 = [tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)is_enableColorMatching
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  tracks = [self tracks];
  v2 = [tracks countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(tracks);
        }

        [*(*(&v6 + 1) + 8 * v5++) setDisableColorMatching:0];
      }

      while (v3 != v5);
      v3 = [tracks countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)is_isHighFramerate
{
  asset = [self asset];
  v2 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:asset];
  firstObject = [v2 firstObject];

  [firstObject nominalFrameRate];
  v5 = v4 >= 30.0;

  return v5;
}

@end