@interface AVPlayerItem(TLExtensions)
- (TLAlertQueuePlayerItemHapticTracks)tl_hapticTracks;
@end

@implementation AVPlayerItem(TLExtensions)

- (TLAlertQueuePlayerItemHapticTracks)tl_hapticTracks
{
  selfCopy = self;
  v39 = *MEMORY[0x1E69E9840];
  [self tracks];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = v31 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (!v3)
  {

    v5 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  v25 = selfCopy;
  v5 = 0;
  v6 = 0;
  v7 = *v29;
  v8 = *MEMORY[0x1E69875C8];
  v26 = *MEMORY[0x1E6987580];
  obj = v2;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * i);
      assetTrack = [v10 assetTrack];
      mediaType = [assetTrack mediaType];
      v13 = [mediaType isEqualToString:v8];

      if (!v13)
      {
        goto LABEL_16;
      }

      if ([assetTrack hasMediaCharacteristic:v26])
      {
        v14 = v10;
        v15 = v6;
        v16 = v5;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v16 = v5;
        v14 = v5;
        v15 = v10;
        if (!v6)
        {
LABEL_14:
          v17 = v10;
          v16 = v14;
          v6 = v15;
          if (!v15)
          {
LABEL_15:
            v5 = v16;
            goto LABEL_16;
          }

          goto LABEL_12;
        }
      }

      if (!v6)
      {
        goto LABEL_15;
      }

LABEL_12:
      v5 = v16;
      if (v16)
      {

        v2 = obj;
        selfCopy = v25;
LABEL_19:
        v20 = [[TLAlertQueuePlayerItemHapticTracks alloc] initWithHapticPlayerItemTrack:v6 attenuatedHapticPlayerItemTrack:v5];
        v22 = TLLogPlayback(v20, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v33 = selfCopy;
          v34 = 2114;
          v35 = v6;
          v36 = 2114;
          v37 = v5;
          _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "Found haptic tracks for %{public}@. hapticPlayerItemTrack = %{public}@, attenuatedHapticPlayerItemTrack = %{public}@.", buf, 0x20u);
        }

        goto LABEL_25;
      }

LABEL_16:
    }

    v2 = obj;
    v4 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  selfCopy = v25;
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_22:
  v22 = TLLogPlayback(v18, v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v2 count];
    *buf = 138543874;
    v33 = selfCopy;
    v34 = 2048;
    v35 = v23;
    v36 = 2114;
    v37 = v2;
    _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "Cannot find any haptic tracks for %{public}@. Available tracks (%lu): %{public}@", buf, 0x20u);
  }

  v6 = 0;
  v20 = 0;
LABEL_25:

  return v20;
}

@end