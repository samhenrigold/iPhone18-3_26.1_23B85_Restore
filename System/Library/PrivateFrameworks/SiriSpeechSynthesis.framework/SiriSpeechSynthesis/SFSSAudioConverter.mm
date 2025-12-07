@interface SFSSAudioConverter
+ (id)sharedInstance;
- (id)convertChunks:(id)chunks srcAsbd:(AudioStreamBasicDescription *)asbd dstAsbd:(AudioStreamBasicDescription *)dstAsbd outError:(id *)error;
- (id)createAudioConverter:(AudioStreamBasicDescription *)converter dstAsbd:(AudioStreamBasicDescription *)asbd;
- (void)dealloc;
- (void)reset;
@end

@implementation SFSSAudioConverter

- (id)convertChunks:(id)chunks srcAsbd:(AudioStreamBasicDescription *)asbd dstAsbd:(AudioStreamBasicDescription *)dstAsbd outError:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12 = *&asbd->mBytesPerPacket;
  *outOutputData = *&asbd->mSampleRate;
  *&outOutputData[16] = v12;
  v53 = *&asbd->mBitsPerChannel;
  v13 = *&dstAsbd->mBytesPerPacket;
  *buf = *&dstAsbd->mSampleRate;
  v59 = v13;
  v60 = *&dstAsbd->mBitsPerChannel;
  if ([SFSSAudioConverter isAsbdSameAs:outOutputData dstAsbd:buf])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = chunksCopy;
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          audioData = [*(*(&v48 + 1) + 8 * i) audioData];
          [v11 appendData:audioData];
        }

        v16 = [v14 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v16);
    }
  }

  else
  {
    [(SFSSAudioConverter *)self reset];
    v20 = *&asbd->mBytesPerPacket;
    *outOutputData = *&asbd->mSampleRate;
    *&outOutputData[16] = v20;
    v53 = *&asbd->mBitsPerChannel;
    v21 = *&dstAsbd->mBytesPerPacket;
    *buf = *&dstAsbd->mSampleRate;
    v59 = v21;
    v60 = *&dstAsbd->mBitsPerChannel;
    v22 = [(SFSSAudioConverter *)self createAudioConverter:outOutputData dstAsbd:buf];
    if (v22)
    {
      v23 = v22;
      *error = v23;

      v24 = 0;
      goto LABEL_27;
    }

    ioOutputDataPacketSize = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = chunksCopy;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
    errorCopy = error;
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v44;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v25);
          }

          mFramesPerPacket = self->_srcAsbd.mFramesPerPacket;
          v28 += mFramesPerPacket * [*(*(&v43 + 1) + 8 * j) packetCount];
          ioOutputDataPacketSize = v28;
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    v32 = [[SFSSAudioDataWrapper alloc] initWithAudioChunks:v25];
    v33 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:self->_dstAsbd.mBytesPerFrame * v28];
    *outOutputData = 1;
    *&outOutputData[16] = [v33 mutableBytes];
    v34 = [v33 length];
    *&outOutputData[8] = 1;
    *&outOutputData[12] = v34;
    v35 = AudioConverterFillComplexBuffer(self->_decoder, AudioConverterFillComplexBuffer_Callback, v32, &ioOutputDataPacketSize, outOutputData, 0);
    if (v35)
    {
      v36 = v35;
      v37 = SFSSGetLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v36;
        _os_log_error_impl(&dword_269079000, v37, OS_LOG_TYPE_ERROR, "Audio converting error: %d", buf, 8u);
      }

      v38 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA470];
      v55 = @"Audio converting error.";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *errorCopy = [v38 errorWithDomain:@"SFSpeechSynthesisAudioErrorDomain" code:v36 userInfo:v39];
    }

    v40 = [MEMORY[0x277CBEA90] dataWithBytes:*&outOutputData[16] length:*&outOutputData[12]];
    [v11 appendData:v40];

    [(SFSSAudioConverter *)self reset];
  }

  v24 = v11;
LABEL_27:

  return v24;
}

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  v4.receiver = self;
  v4.super_class = SFSSAudioConverter;
  [(SFSSAudioConverter *)&v4 dealloc];
}

- (void)reset
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Reset audio decoder.", v5, 2u);
  }

  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterReset(decoder);
  }
}

- (id)createAudioConverter:(AudioStreamBasicDescription *)converter dstAsbd:(AudioStreamBasicDescription *)asbd
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = AudioConverterNew(converter, asbd, &self->_decoder);
  v8 = *&converter->mBitsPerChannel;
  v9 = *&converter->mBytesPerPacket;
  *&self->_srcAsbd.mSampleRate = *&converter->mSampleRate;
  *&self->_srcAsbd.mBytesPerPacket = v9;
  *&self->_srcAsbd.mBitsPerChannel = v8;
  v11 = *&asbd->mSampleRate;
  v10 = *&asbd->mBytesPerPacket;
  *&self->_dstAsbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_dstAsbd.mSampleRate = v11;
  *&self->_dstAsbd.mBytesPerPacket = v10;
  if (v7)
  {
    v12 = v7;
    v13 = SFSSGetLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v12;
      _os_log_error_impl(&dword_269079000, v13, OS_LOG_TYPE_ERROR, "Could not create Opus decoder: %d", buf, 8u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA470];
    v19 = @"Failed to create opus decoder";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = [v14 errorWithDomain:@"SFSpeechSynthesisAudioErrorDomain" code:v12 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1706 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1706, &__block_literal_global_1707);
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __36__SFSSAudioConverter_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(SFSSAudioConverter);

  return MEMORY[0x2821F96F8]();
}

@end