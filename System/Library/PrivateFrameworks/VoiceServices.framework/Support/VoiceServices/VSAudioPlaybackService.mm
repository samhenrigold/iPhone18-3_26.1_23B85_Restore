@interface VSAudioPlaybackService
+ (double)durationOfAudioDataLength:(unint64_t)length withAudioDescription:(AudioStreamBasicDescription *)description;
+ (unint64_t)bytesOfDuration:(double)duration withAudioDescription:(AudioStreamBasicDescription *)description;
- (AudioStreamBasicDescription)asbd;
- (VSAudioPlaybackService)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd useAVSBAR:(BOOL)r;
- (id)start;
- (void)flushAndStop;
- (void)setTimingObserver:(id)observer;
- (void)stop;
@end

@implementation VSAudioPlaybackService

- (void)setTimingObserver:(id)observer
{
  observerCopy = observer;
  [(VSAudioPlaybackServiceProtocol *)self->_implementation removeTimeObserver:?];
  timingObserver = self->_timingObserver;
  self->_timingObserver = observerCopy;
}

- (void)stop
{
  [(VSAudioPlaybackServiceProtocol *)self->_implementation stop];
  [(VSAudioPlaybackService *)self setTimingObserver:?];
  v3 = VSGetLogDefault();
  v4 = v3;
  playbackIntervalId = self->_playbackIntervalId;
  if (playbackIntervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_2727E4000, v4, OS_SIGNPOST_INTERVAL_END, playbackIntervalId, "AudioPlayback", &unk_272838DAB, v6, 2u);
  }
}

- (void)flushAndStop
{
  [(VSAudioPlaybackServiceProtocol *)self->_implementation flushAndStop];
  [(VSAudioPlaybackService *)self setTimingObserver:?];
  v3 = VSGetLogDefault();
  v4 = v3;
  playbackIntervalId = self->_playbackIntervalId;
  if (playbackIntervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_2727E4000, v4, OS_SIGNPOST_INTERVAL_END, playbackIntervalId, "AudioPlayback", &unk_272838DAB, v6, 2u);
  }
}

- (id)start
{
  v3 = VSGetLogDefault();
  v4 = v3;
  playbackIntervalId = self->_playbackIntervalId;
  if (playbackIntervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_2727E4000, v4, OS_SIGNPOST_INTERVAL_BEGIN, playbackIntervalId, "AudioPlayback", &unk_272838DAB, v8, 2u);
  }

  start = [(VSAudioPlaybackServiceProtocol *)self->_implementation start];

  return start;
}

- (AudioStreamBasicDescription)asbd
{
  result = self->_implementation;
  if (result)
  {
    return [(AudioStreamBasicDescription *)retstr asbd];
  }

  *&retstr->mBitsPerChannel = 0;
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  return result;
}

- (VSAudioPlaybackService)initWithAudioSessionID:(unsigned int)d asbd:(AudioStreamBasicDescription *)asbd useAVSBAR:(BOOL)r
{
  rCopy = r;
  v38 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = VSAudioPlaybackService;
  v7 = [(VSAudioPlaybackService *)&v32 init];
  if (!v7)
  {
LABEL_22:
    v26 = v7;
    goto LABEL_23;
  }

  if (rCopy)
  {
    v8 = VSAudioPlaybackServiceAVSBAR;
  }

  else
  {
    v8 = VSAudioPlaybackServiceAT;
  }

  v9 = [v8 alloc];
  v10 = *&asbd->mBytesPerPacket;
  *buf = *&asbd->mSampleRate;
  v36 = v10;
  v37 = *&asbd->mBitsPerChannel;
  v11 = [v9 initWithAudioSessionID:? asbd:?];
  implementation = v7->_implementation;
  v7->_implementation = v11;

  if (v7->_implementation)
  {
    v13 = VSGetLogDefault();
    v7->_playbackIntervalId = os_signpost_id_generate(v13);

    if (rCopy)
    {
      v14 = MEMORY[0x277CB83F8];
      [(VSAudioPlaybackServiceProtocol *)v7->_implementation sessionID];
      mEMORY[0x277D26E58] = [v14 retrieveSessionWithID:?];
      currentRoute = [mEMORY[0x277D26E58] currentRoute];
      array = [MEMORY[0x277CBEB18] array];
      outputs = [currentRoute outputs];
      v19 = [outputs countByEnumeratingWithState:? objects:? count:?];
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0];
        do
        {
          for (i = 0; i != v20; i = (i + 1))
          {
            if (MEMORY[0] != v21)
            {
              objc_enumerationMutation(outputs);
            }

            portType = [*(8 * i) portType];
            [array addObject:?];
          }

          v20 = [outputs countByEnumeratingWithState:? objects:? count:?];
        }

        while (v20);
      }

      v33 = *MEMORY[0x277D26CA8];
      v24 = [array componentsJoinedByString:?];
      v34 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    }

    else
    {
      mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
      v25 = [mEMORY[0x277D26E58] attributeForKey:?];
    }

    if (v25)
    {
      v27 = [[VSAudioRouteInfo alloc] initWithRouteAttributes:?];
      outputRouteInfo = v7->_outputRouteInfo;
      v7->_outputRouteInfo = v27;
    }

    v29 = VSGetLogDefault();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      audioRouteName = [(VSAudioRouteInfo *)v7->_outputRouteInfo audioRouteName];
      *buf = 138412290;
      *&buf[4] = audioRouteName;
      _os_log_impl(&dword_2727E4000, v29, OS_LOG_TYPE_INFO, "Current audio output route: %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v26 = 0;
LABEL_23:

  return v26;
}

+ (unint64_t)bytesOfDuration:(double)duration withAudioDescription:(AudioStreamBasicDescription *)description
{
  mSampleRate = description->mSampleRate;
  LODWORD(mSampleRate) = description->mBytesPerFrame;
  return (description->mSampleRate * duration * *&mSampleRate);
}

+ (double)durationOfAudioDataLength:(unint64_t)length withAudioDescription:(AudioStreamBasicDescription *)description
{
  mBytesPerFrame = description->mBytesPerFrame;
  result = 0.0;
  if (mBytesPerFrame)
  {
    if (description->mSampleRate != 0.0)
    {
      return length / (description->mSampleRate * mBytesPerFrame);
    }
  }

  return result;
}

@end