@interface VSStreamAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)writeWaveToFilePath:(id)path;
- (VSStreamAudioData)initWithASBD:(AudioStreamBasicDescription *)d;
- (double)duration;
- (void)appendAudioData:(id)data packetCount:(unint64_t)count packetDescriptions:(id)descriptions;
- (void)enumerateAudioWithBlock:(id)block;
@end

@implementation VSStreamAudioData

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mSampleRate;
  *&retstr->mSampleRate = *&self->mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerPacket;
  return self;
}

- (BOOL)writeWaveToFilePath:(id)path
{
  v49 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  inFormat.mSampleRate = self->_asbd.mSampleRate;
  *&inFormat.mFormatID = xmmword_272832680;
  *&inFormat.mBytesPerFrame = xmmword_272832690;
  outAudioFile = 0;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  if (AudioFileCreateWithURL(v5, 0x57415645u, &inFormat, 1u, &outAudioFile))
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      *buf = 138412546;
      *&buf[4] = pathCopy;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Error AudioFileCreateWithURL: '%@', code: %@", buf, 0x16u);
      goto LABEL_31;
    }

LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  if (self->_asbd.mFormatID == 1869641075)
  {
    v6 = objc_alloc_init(MEMORY[0x277D79960]);
    v8 = *&self->_asbd.mBytesPerPacket;
    *buf = *&self->_asbd.mSampleRate;
    *&buf[16] = v8;
    v48 = *&self->_asbd.mBitsPerChannel;
    v9 = [v6 beginChunkDecoderForStreamDescription:?];
    if (v9)
    {
      v7 = v9;
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        v29 = "Unable to begin OPUS decoder, %@";
        v30 = v10;
        v31 = 12;
        goto LABEL_44;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_mappedAudioInfo;
  v35 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (!v35)
  {
    goto LABEL_27;
  }

  v11 = 0;
  v37 = *v42;
  v33 = v5;
  v34 = pathCopy;
  while (2)
  {
    for (i = 0; i != v35; i = (i + 1))
    {
      if (*v42 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v41 + 1) + 8 * i);
      inStartingByte = v11;
      if (v6)
      {
        data = [MEMORY[0x277CBEB28] data];
        if ([v13 packetCount])
        {
          v15 = 0;
          v16 = 0;
          while (1)
          {
            mappedData = self->_mappedData;
            [v13 packetDescriptionsRange];
            [(VSMappedData *)mappedData bytesAtOffset:?];
            v18 = self->_mappedData;
            [v13 audioBytesRange];
            [(VSMappedData *)v18 bytesAtOffset:?];
            v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
            v40 = 0;
            v20 = [NSObject decodeChunk:v6 outError:"decodeChunk:outError:"];
            v21 = v40;
            if (v21)
            {
              break;
            }

            [data appendData:?];

            ++v16;
            v15 += 16;
            if ([v13 packetCount] <= v16)
            {
              v5 = v33;
              pathCopy = v34;
              goto LABEL_21;
            }
          }

          v24 = v21;
          v25 = VSGetLogDefault();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v24;
            _os_log_error_impl(&dword_2727E4000, v25, OS_LOG_TYPE_ERROR, "Error during decoding, %@", buf, 0xCu);
          }

          v5 = v33;
          pathCopy = v34;
          goto LABEL_35;
        }
      }

      else
      {
        v22 = self->_mappedData;
        [v13 audioBytesRange];
        [(VSMappedData *)v22 bytesAtOffset:?];
        v23 = MEMORY[0x277CBEA90];
        [v13 audioBytesRange];
        data = [v23 dataWithBytesNoCopy:? length:? freeWhenDone:?];
      }

LABEL_21:
      if ([data length])
      {
        ioNumBytes = [data length];
        if (AudioFileWriteBytes(outAudioFile, 0, inStartingByte, &ioNumBytes, [data bytes]))
        {
          v28 = VSGetLogDefault();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v32 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
            *buf = 138412546;
            *&buf[4] = pathCopy;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_error_impl(&dword_2727E4000, v28, OS_LOG_TYPE_ERROR, "Error AudioFileWriteBytes: '%@', code: %@", buf, 0x16u);
          }

LABEL_35:
          goto LABEL_36;
        }

        v11 = inStartingByte + ioNumBytes;
      }

      else
      {
        v11 = inStartingByte;
      }
    }

    v35 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_27:

  if (v6)
  {
    [v6 endChunkDecoding];
  }

  if (AudioFileClose(outAudioFile))
  {
    v7 = VSGetLogDefault();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      goto LABEL_36;
    }

    v10 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
    *buf = 138412546;
    *&buf[4] = pathCopy;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    v29 = "Error AudioFileClose: '%@', code: %@";
    v30 = v7;
    v31 = 22;
LABEL_44:
    _os_log_error_impl(&dword_2727E4000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
LABEL_7:

    goto LABEL_31;
  }

  v26 = 1;
LABEL_37:

  return v26;
}

- (double)duration
{
  v3 = self->_mappedAudioInfo;
  v4 = [NSMutableArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v8 = v4;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(8 * i);
        [v13 audioBytesRange];
        v10 += v14;
        v9 += [v13 packetCount];
      }

      v8 = [NSMutableArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v8);
    v6 = v9;
    v7 = v10;
  }

  mFormatID = self->_asbd.mFormatID;
  if (mFormatID == 1869641075)
  {
    mSampleRate = self->_asbd.mSampleRate;
    if (mSampleRate != 0.0)
    {
      LODWORD(v15) = self->_asbd.mFramesPerPacket;
      return v6 * v15 / mSampleRate;
    }
  }

  else if (mFormatID == 1819304813)
  {
    LODWORD(v15) = self->_asbd.mBytesPerFrame;
    v17 = self->_asbd.mSampleRate * v15;
    if (v17 != 0.0)
    {
      return v7 / v17;
    }
  }

  return v5;
}

- (void)enumerateAudioWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0;
  obj = self->_mappedAudioInfo;
  v5 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v16 = MEMORY[0];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (MEMORY[0] != v16)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(8 * v7);
      mappedData = self->_mappedData;
      [v8 audioBytesRange];
      [(VSMappedData *)mappedData bytesAtOffset:?];
      v10 = MEMORY[0x277CBEA90];
      [v8 audioBytesRange];
      v11 = [v10 dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v12 = self->_mappedData;
      [v8 packetDescriptionsRange];
      [(VSMappedData *)v12 bytesAtOffset:?];
      v13 = MEMORY[0x277CBEA90];
      [v8 packetDescriptionsRange];
      v14 = [v13 dataWithBytesNoCopy:? length:? freeWhenDone:?];
      blockCopy[2](blockCopy, v11, [v8 packetCount], v14, &v17);
      LOBYTE(v8) = v17;

      if (v8)
      {
        break;
      }

      if (v6 == ++v7)
      {
        v6 = [NSMutableArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)appendAudioData:(id)data packetCount:(unint64_t)count packetDescriptions:(id)descriptions
{
  mappedData = self->_mappedData;
  descriptionsCopy = descriptions;
  dataCopy = data;
  [(VSMappedData *)mappedData appendData:?];
  [(VSMappedData *)self->_mappedData appendData:?];
  v10 = objc_alloc_init(VSStreamAudioMappedInfo);
  [(VSMappedData *)self->_mappedData appendData:?];

  [(VSStreamAudioMappedInfo *)v10 setAudioBytesRange:?];
  [(VSStreamAudioMappedInfo *)v10 setPacketCount:?];
  [(VSMappedData *)self->_mappedData appendData:?];

  [(VSStreamAudioMappedInfo *)v10 setPacketDescriptionsRange:?];
  [(NSMutableArray *)self->_mappedAudioInfo addObject:?];
}

- (VSStreamAudioData)initWithASBD:(AudioStreamBasicDescription *)d
{
  v13.receiver = self;
  v13.super_class = VSStreamAudioData;
  v4 = [(VSStreamAudioData *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&d->mSampleRate;
    v7 = *&d->mBytesPerPacket;
    *(v4 + 7) = *&d->mBitsPerChannel;
    *(v4 + 40) = v7;
    *(v4 + 24) = v6;
    v8 = objc_alloc_init(MEMORY[0x277D79948]);
    mappedData = v5->_mappedData;
    v5->_mappedData = v8;

    array = [MEMORY[0x277CBEB18] array];
    mappedAudioInfo = v5->_mappedAudioInfo;
    v5->_mappedAudioInfo = array;
  }

  return v5;
}

@end