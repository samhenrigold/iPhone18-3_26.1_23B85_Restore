@interface TUCallSoundPlayerDescriptor
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type call:(id)call;
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type provider:(id)provider video:(BOOL)video region:(int64_t)region audioPlayingWarmupNeeded:(BOOL)needed;
- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type sound:(id)sound iterations:(unint64_t)iterations pauseDuration:(double)duration audioPlayingWarmupNeeded:(BOOL)needed;
- (id)description;
@end

@implementation TUCallSoundPlayerDescriptor

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type sound:(id)sound iterations:(unint64_t)iterations pauseDuration:(double)duration audioPlayingWarmupNeeded:(BOOL)needed
{
  soundCopy = sound;
  v17.receiver = self;
  v17.super_class = TUCallSoundPlayerDescriptor;
  v14 = [(TUCallSoundPlayerDescriptor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_soundType = type;
    objc_storeStrong(&v14->_sound, sound);
    v15->_iterations = iterations;
    v15->_pauseDuration = duration;
    v15->_audioPlayingWarmupNeeded = needed;
  }

  return v15;
}

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type call:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  isVideo = [callCopy isVideo];
  soundRegion = [callCopy soundRegion];

  v10 = [(TUCallSoundPlayerDescriptor *)self initWithSoundType:type provider:provider video:isVideo region:soundRegion audioPlayingWarmupNeeded:0];
  return v10;
}

- (TUCallSoundPlayerDescriptor)initWithSoundType:(int64_t)type provider:(id)provider video:(BOOL)video region:(int64_t)region audioPlayingWarmupNeeded:(BOOL)needed
{
  neededCopy = needed;
  providerCopy = provider;
  v13 = providerCopy;
  v14 = 0.0;
  v15 = &unk_1F09C6190;
  v16 = 1;
  switch(type)
  {
    case 1:
      v16 = -1;
      if ([providerCopy isFaceTimeProvider])
      {
        v15 = &unk_1F09C6058;
        goto LABEL_30;
      }

      if (region > 2)
      {
        switch(region)
        {
          case 3:
            v15 = &unk_1F09C60A0;
            break;
          case 4:
            v15 = &unk_1F09C60B8;
            break;
          case 5:
            v15 = &unk_1F09C60D0;
            break;
          default:
            goto LABEL_41;
        }

        goto LABEL_30;
      }

      if (region < 2)
      {
        v15 = &unk_1F09C6070;
        goto LABEL_30;
      }

      if (region == 2)
      {
        v15 = &unk_1F09C6088;
        goto LABEL_30;
      }

      goto LABEL_41;
    case 2:
      if ([providerCopy isFaceTimeProvider])
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    case 3:
      if (([providerCopy isTelephonyProvider] & 1) == 0)
      {
        goto LABEL_41;
      }

      v15 = &unk_1F09C6100;
      v16 = 3;
      goto LABEL_30;
    case 4:
      if ([providerCopy isFaceTimeProvider])
      {
        v15 = &unk_1F09C6118;
      }

      else
      {
        v15 = &unk_1F09C6130;
      }

      v14 = 3.0;
      goto LABEL_19;
    case 5:
      if (![providerCopy isFaceTimeProvider] || !video)
      {
        goto LABEL_41;
      }

      v14 = 3.0;
      v15 = &unk_1F09C6148;
LABEL_19:
      v16 = 2;
      goto LABEL_30;
    case 6:
    case 7:
      if ([providerCopy isFaceTimeProvider])
      {
        v15 = &unk_1F09C6160;
      }

      else
      {
        v15 = &unk_1F09C6178;
      }

      goto LABEL_29;
    case 8:
      goto LABEL_30;
    case 9:
      v15 = &unk_1F09C61A8;
      goto LABEL_29;
    case 10:
      v15 = &unk_1F09C61C0;
      goto LABEL_29;
    case 11:
      v15 = &unk_1F09C61D8;
      goto LABEL_29;
    case 12:
      v15 = &unk_1F09C61F0;
      goto LABEL_29;
    case 13:
    case 16:
    case 17:
      v15 = &unk_1F09C6208;
      goto LABEL_29;
    case 15:
LABEL_21:
      v15 = &unk_1F09C60E8;
      goto LABEL_29;
    case 18:
      v15 = &unk_1F09C6220;
      goto LABEL_29;
    case 19:
      v15 = &unk_1F09C6238;
      goto LABEL_29;
    case 20:
      v15 = &unk_1F09C6250;
      goto LABEL_29;
    case 21:
      v15 = &unk_1F09C6268;
      goto LABEL_29;
    case 22:
      v15 = &unk_1F09C6280;
LABEL_29:
      v16 = 1;
LABEL_30:
      v17 = [(TUCallSoundPlayerDescriptor *)self initWithSoundType:type sound:v15 iterations:v16 pauseDuration:neededCopy audioPlayingWarmupNeeded:v14];
      break;
    default:
LABEL_41:

      v17 = 0;
      break;
  }

  return v17;
}

- (id)description
{
  if ([(TUCallSoundPlayerDescriptor *)self iterations]== -1)
  {
    v3 = @"Infinite";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[TUCallSoundPlayerDescriptor iterations](self, "iterations")];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  soundType = [(TUCallSoundPlayerDescriptor *)self soundType];
  sound = [(TUCallSoundPlayerDescriptor *)self sound];
  [(TUCallSoundPlayerDescriptor *)self pauseDuration];
  v9 = [v4 stringWithFormat:@"<%@ %p soundType=%lu sound=%@ iterations=%@ pauseDuration=%f>", v5, self, soundType, sound, v3, v8];

  return v9;
}

@end