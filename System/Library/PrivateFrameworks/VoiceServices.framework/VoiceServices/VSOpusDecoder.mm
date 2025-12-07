@interface VSOpusDecoder
+ (id)sharedInstance;
- (OpaqueAudioConverter)_opusDecoder:(AudioStreamBasicDescription *)decoder;
- (id)beginChunkDecoderForStreamDescription:(AudioStreamBasicDescription *)description;
- (id)decodeChunk:(id)chunk outError:(id *)error;
- (id)decodeChunks:(id)chunks streamDescription:(AudioStreamBasicDescription *)description outError:(id *)error;
- (void)dealloc;
@end

@implementation VSOpusDecoder

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  v4.receiver = self;
  v4.super_class = VSOpusDecoder;
  [(VSOpusDecoder *)&v4 dealloc];
}

- (id)decodeChunk:(id)chunk outError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * self->_asbd.mFramesPerPacket];
  *&outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mData = [v7 mutableBytes];
  outOutputData.mBuffers[0].mNumberChannels = 1;
  outOutputData.mBuffers[0].mDataByteSize = [v7 length];
  ioOutputDataPacketSize = self->_asbd.mFramesPerPacket;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 1;
  decoder = self->_decoder;
  inInputDataProcUserData[0] = MEMORY[0x277D85DD0];
  inInputDataProcUserData[1] = 3221225472;
  inInputDataProcUserData[2] = __38__VSOpusDecoder_decodeChunk_outError___block_invoke;
  inInputDataProcUserData[3] = &unk_279E4F090;
  v25 = v28;
  v27 = &v37;
  v9 = chunkCopy;
  v24 = v9;
  v26 = v29;
  v10 = AudioConverterFillComplexBuffer(decoder, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  if (v10 != 1836086393 && v10)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v10];
    v14 = [v18 stringWithFormat:@"Could not finish decoding, res %@", v19];

    v20 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA470];
    v34 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v17 = [v20 errorWithDomain:@"VSSpeechServiceDecoderErrorDomain" code:0 userInfo:v16];
  }

  else
  {
    v11 = 0;
    if (!ioOutputDataPacketSize)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 0;
    if (!outOutputData.mNumberBuffers)
    {
      goto LABEL_13;
    }

    v13 = 2 * ioOutputDataPacketSize;
    if (v13 <= outOutputData.mBuffers[0].mDataByteSize)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:outOutputData.mBuffers[0].mData length:?];
      v12 = 0;
      goto LABEL_13;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"decoder gave us %d bytes bytes but we really only expected %d", v13, outOutputData.mBuffers[0].mDataByteSize];
    v15 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA470];
    v36 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v17 = [v15 errorWithDomain:@"VSSpeechServiceDecoderErrorDomain" code:0 userInfo:v16];
  }

  v12 = v17;

  v11 = 0;
  if (error && v12)
  {
    v21 = v12;
    v11 = 0;
    *error = v12;
  }

LABEL_13:

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);

  return v11;
}

uint64_t __38__VSOpusDecoder_decodeChunk_outError___block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*(*(*(a1 + 40) + 8) + 24) >= v8)
  {
    if (v8 == 1)
    {
      v11 = [*(a1 + 32) length];
      v12 = *(a1 + 32);
      *(a3 + 16) = [v12 bytes];
      *(a3 + 12) = v11;
      if (a4)
      {
        v13 = *(a1 + 56);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 12) = v11;
        *a4 = v13;
      }

      --*(*(*(a1 + 40) + 8) + 24);
      ++*(*(*(a1 + 48) + 8) + 24);

      return 0;
    }

    else
    {
      v14 = VSGetLogDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *a2;
        v16 = 134217984;
        v17 = v15;
        _os_log_error_impl(&dword_272850000, v14, OS_LOG_TYPE_ERROR, "Only expecting to get 1 packet at a time, not %lu", &v16, 0xCu);
      }

      return 1752524863;
    }
  }

  else
  {
    result = 1836086393;
    *a2 = 0;
    *(a3 + 16) = 0;
    *(a3 + 12) = 0;
    if (a4)
    {
      v10 = *(a1 + 56);
      *v10 = 0;
      v10[1] = 0;
      *a4 = v10;
    }
  }

  return result;
}

- (id)beginChunkDecoderForStreamDescription:(AudioStreamBasicDescription *)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *&description->mBytesPerPacket;
  v8[0] = *&description->mSampleRate;
  v8[1] = v3;
  v9 = *&description->mBitsPerChannel;
  if ([(VSOpusDecoder *)self _opusDecoder:v8])
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA470];
    v11[0] = @"Failed to create opus decoder";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v5 errorWithDomain:@"VSSpeechServiceDecoderErrorDomain" code:0 userInfo:v6];
  }

  return v4;
}

- (id)decodeChunks:(id)chunks streamDescription:(AudioStreamBasicDescription *)description outError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v9 = *&description->mBytesPerPacket;
  v33[0] = *&description->mSampleRate;
  v33[1] = v9;
  v34 = *&description->mBitsPerChannel;
  v10 = [(VSOpusDecoder *)self beginChunkDecoderForStreamDescription:v33];
  v11 = v10;
  if (error && v10)
  {
    v12 = v10;
    v13 = 0;
    *error = v11;
  }

  else
  {
    mFramesPerPacket = description->mFramesPerPacket;
    v15 = 2 * mFramesPerPacket * [chunksCopy count];
    v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v15];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = chunksCopy;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = chunksCopy;
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          v22 = [(VSOpusDecoder *)self decodeChunk:v21 outError:&v28, v27];
          v23 = v28;
          if (v23)
          {
            v24 = v23;

            goto LABEL_14;
          }

          [v13 appendData:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_14:
      chunksCopy = v27;
    }

    else
    {
      v24 = 0;
    }

    [(VSOpusDecoder *)self endChunkDecoding];
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
      }

      v13 = 0;
    }
  }

  return v13;
}

- (OpaqueAudioConverter)_opusDecoder:(AudioStreamBasicDescription *)decoder
{
  v18 = *MEMORY[0x277D85DE8];
  p_decoder = &self->_decoder;
  result = self->_decoder;
  if (!result)
  {
    if (decoder->mSampleRate == 16000.0)
    {
      v7 = &VSAudioFormat16khzPCM;
    }

    else
    {
      if (decoder->mSampleRate != 48000.0)
      {
        v11 = VSGetLogDefault();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          decoderCopy = decoder;
          _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, "Invalid target asbd: %@", buf, 0xCu);
        }

LABEL_12:

        return 0;
      }

      v7 = &VSAudioFormat48khzPCM;
    }

    v8 = v7[1];
    *&v15.mSampleRate = *v7;
    *&v15.mBytesPerPacket = v8;
    *&v15.mBitsPerChannel = 16;
    v9 = AudioConverterNew(decoder, &v15, p_decoder);
    if (!v9)
    {
      v13 = *&decoder->mSampleRate;
      v14 = *&decoder->mBytesPerPacket;
      *&self->_asbd.mBitsPerChannel = *&decoder->mBitsPerChannel;
      *&self->_asbd.mSampleRate = v13;
      *&self->_asbd.mBytesPerPacket = v14;
      return self->_decoder;
    }

    v10 = v9;
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v10];
      *buf = 138543362;
      decoderCopy = v12;
      _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, "Could not create Opus decoder: %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1312);
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

void __31__VSOpusDecoder_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VSOpusDecoder);
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;
}

@end