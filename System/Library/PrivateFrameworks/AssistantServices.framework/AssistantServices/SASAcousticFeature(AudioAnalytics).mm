@interface SASAcousticFeature(AudioAnalytics)
- (AFSpeechAcousticFeature)af_acousticFeature;
@end

@implementation SASAcousticFeature(AudioAnalytics)

- (AFSpeechAcousticFeature)af_acousticFeature
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  acousticFeaturePerFrame = [self acousticFeaturePerFrame];
  v4 = [v2 initWithCapacity:{objc_msgSend(acousticFeaturePerFrame, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  acousticFeaturePerFrame2 = [self acousticFeaturePerFrame];
  v6 = [acousticFeaturePerFrame2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(acousticFeaturePerFrame2);
        }

        [v4 addObject:*(*(&v14 + 1) + 8 * i)];
      }

      v7 = [acousticFeaturePerFrame2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = [AFSpeechAcousticFeature alloc];
  frameDuration = [self frameDuration];
  [frameDuration doubleValue];
  v12 = [(AFSpeechAcousticFeature *)v10 initWithAcousticFeatureValue:v4 frameDuration:?];

  return v12;
}

@end