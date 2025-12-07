@interface VSSpeechCacheAudio
- (AudioStreamBasicDescription)asbd;
- (VSSpeechCacheAudio)initWithKey:(id)key audio:(id)audio wordTimingInfo:(id)info voiceKey:(id)voiceKey voiceResourceKey:(id)resourceKey;
- (VSSpeechCacheAudio)initWithKey:(id)key data:(id)data;
- (id)serializedData;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation VSSpeechCacheAudio

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mSampleRate = v3;
  *&self->_asbd.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mBytesPerPacket;
  *&retstr->mSampleRate = *&self[2].mSampleRate;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBitsPerChannel;
  return self;
}

- (VSSpeechCacheAudio)initWithKey:(id)key audio:(id)audio wordTimingInfo:(id)info voiceKey:(id)voiceKey voiceResourceKey:(id)resourceKey
{
  keyCopy = key;
  audioCopy = audio;
  infoCopy = info;
  voiceKeyCopy = voiceKey;
  resourceKeyCopy = resourceKey;
  v29.receiver = self;
  v29.super_class = VSSpeechCacheAudio;
  v17 = [(VSSpeechCacheAudio *)&v29 init];
  v18 = v17;
  if (v17)
  {
    v17->_magicVersion = 1869641269;
    objc_storeStrong(&v17->_key, key);
    objc_storeStrong(&v18->_audio, audio);
    if (audioCopy)
    {
      [&v26 asbd];
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }

    v19 = v27;
    *&v18->_asbd.mSampleRate = v26;
    *&v18->_asbd.mBytesPerPacket = v19;
    *&v18->_asbd.mBitsPerChannel = v28;
    audioData = [audioCopy audioData];
    audioData = v18->_audioData;
    v18->_audioData = audioData;

    v18->_packetCount = [audioCopy packetCount];
    packetDescriptions = [audioCopy packetDescriptions];
    packetDescriptions = v18->_packetDescriptions;
    v18->_packetDescriptions = packetDescriptions;

    objc_storeStrong(&v18->_timingInfos, info);
    objc_storeStrong(&v18->_voiceKey, voiceKey);
    objc_storeStrong(&v18->_voiceResourceKey, resourceKey);
  }

  return v18;
}

- (VSSpeechCacheAudio)initWithKey:(id)key data:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = VSSpeechCacheAudio;
  v9 = [(VSSpeechCacheAudio *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    [dataCopy getBytes:? range:?];
    if (v10->_magicVersion != 1869641269)
    {
      v18 = 0;
      goto LABEL_8;
    }

    [dataCopy getBytes:? range:?];
    [dataCopy getBytes:? range:?];
    *buf = 0;
    [dataCopy getBytes:? range:?];
    v11 = [dataCopy subdataWithRange:?];
    packetDescriptions = v10->_packetDescriptions;
    v10->_packetDescriptions = v11;

    [dataCopy getBytes:? range:?];
    v13 = [dataCopy subdataWithRange:?];
    audioData = v10->_audioData;
    v10->_audioData = v13;

    v15 = objc_alloc_init(MEMORY[0x277D79920]);
    audio = v10->_audio;
    v10->_audio = v15;

    [(VSAudioData *)v10->_audio setAsbd:?];
    [(VSAudioData *)v10->_audio setAudioData:?];
    [(VSAudioData *)v10->_audio setPacketCount:?];
    [(VSAudioData *)v10->_audio setPacketDescriptions:?];
    [(VSAudioData *)v10->_audio duration];
    if (v17 < 0.5)
    {
      v19 = MEMORY[0x277CBEAD8];
      v27 = *MEMORY[0x277CCA470];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:*&v17];
      v28 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v22 = [v19 exceptionWithName:? reason:? userInfo:?];
      v23 = v22;

      objc_exception_throw(v22);
    }

    [dataCopy getBytes:? range:?];
    [dataCopy getBytes:? range:?];
    [dataCopy getBytes:? range:?];
  }

  v18 = v10;
LABEL_8:

  return v18;
}

- (id)serializedData
{
  data = [MEMORY[0x277CBEB28] data];
  [data appendBytes:? length:?];
  [data appendBytes:? length:?];
  [data appendBytes:? length:?];
  [(NSData *)self->_packetDescriptions length];
  [data appendBytes:? length:?];
  [data appendData:?];
  [(NSData *)self->_audioData length];
  [data appendBytes:? length:?];
  [data appendData:?];
  if (self->_timingInfos)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    [v4 length];
    [data appendBytes:? length:?];
    [data appendData:?];
  }

  else
  {
    [data appendBytes:? length:?];
  }

  v5 = [(NSString *)self->_voiceKey dataUsingEncoding:?];
  v9 = [v5 length];
  [data appendBytes:? length:?];
  if (v9)
  {
    [data appendData:?];
  }

  v6 = [(NSString *)self->_voiceResourceKey dataUsingEncoding:?];
  v8 = [v6 length];
  [data appendBytes:? length:?];
  if (v8)
  {
    [data appendData:?];
  }

  return data;
}

@end