@interface VSAudioData(SAUIAudioData)
+ (id)audioDataFromFile:()SAUIAudioData error:;
+ (id)audioDataFromPresynthesisRequest:()SAUIAudioData;
+ (id)audioDataFromSAUIAudioData:()SAUIAudioData;
+ (id)audioDataWithASBD:()SAUIAudioData rawData:;
+ (id)pcmAudioDataFromOpusAudio:()SAUIAudioData;
+ (void)asbdFromDescription:()SAUIAudioData;
- (uint64_t)populatePCMDataWithSiriOpusSData:()SAUIAudioData withOpusASBD:;
- (uint64_t)populateWithOpusData:()SAUIAudioData;
- (uint64_t)populateWithPCMData:()SAUIAudioData;
- (uint64_t)writeToFilePath:()SAUIAudioData;
@end

@implementation VSAudioData(SAUIAudioData)

- (uint64_t)writeToFilePath:()SAUIAudioData
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  audioData = [self audioData];
  memset(&inFormat, 0, sizeof(inFormat));
  [&inFormat asbd];
  [v18 asbd];
  if (v19 == 1869641075)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.mSampleRate) = 0;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Decoding opus for dumping.", &buf, 2u);
    }

    v7 = [MEMORY[0x277D79920] pcmAudioDataFromOpusAudio:?];
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.mSampleRate) = 0;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Opus decoded for dumping.", &buf, 2u);
    }

    audioData2 = [v7 audioData];

    if (v7)
    {
      [&buf asbd];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    inFormat = buf;

    audioData = audioData2;
  }

  outAudioFile = 0;
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  if (AudioFileCreateWithURL(v10, 0x57415645u, &inFormat, 1u, &outAudioFile))
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
      LODWORD(buf.mSampleRate) = 138412546;
      *(&buf.mSampleRate + 4) = v4;
      LOWORD(buf.mFormatFlags) = 2112;
      *(&buf.mFormatFlags + 2) = v12;
      v13 = "Error AudioFileCreateWithURL: '%@', code: %@";
LABEL_19:
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, v13, &buf, 0x16u);
    }
  }

  else
  {
    ioNumBytes = [audioData length];
    if (AudioFileWriteBytes(outAudioFile, 0, 0, &ioNumBytes, [audioData bytes]))
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        LODWORD(buf.mSampleRate) = 138412546;
        *(&buf.mSampleRate + 4) = v4;
        LOWORD(buf.mFormatFlags) = 2112;
        *(&buf.mFormatFlags + 2) = v12;
        v13 = "Error AudioFileWriteBytes: '%@', code: %@";
        goto LABEL_19;
      }
    }

    else
    {
      if (!AudioFileClose(outAudioFile))
      {
        v14 = 1;
        goto LABEL_21;
      }

      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:?];
        LODWORD(buf.mSampleRate) = 138412546;
        *(&buf.mSampleRate + 4) = v4;
        LOWORD(buf.mFormatFlags) = 2112;
        *(&buf.mFormatFlags + 2) = v12;
        v13 = "Error AudioFileClose: '%@', code: %@";
        goto LABEL_19;
      }
    }
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (uint64_t)populatePCMDataWithSiriOpusSData:()SAUIAudioData withOpusASBD:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  mEMORY[0x277D79960] = [MEMORY[0x277D79960] sharedInstance];
  v8 = *(a4 + 16);
  *buf = *a4;
  v28 = v8;
  v29 = *(a4 + 32);
  v9 = [mEMORY[0x277D79960] beginChunkDecoderForStreamDescription:?];

  data = [MEMORY[0x277CBEB28] data];
  v11 = [v6 length];
  bytes = [v6 bytes];
  if (v11)
  {
    v13 = bytes;
    selfCopy = self;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      do
      {
        v16 = *(v13 + v14);
        v15 = v16 & 0x7F | (v15 << 7);
        ++v14;
      }

      while (v16 < 0);
      if (!v15)
      {
        break;
      }

      v17 = v14 + v15;
      if (v17 > v11)
      {
        break;
      }

      v18 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      mEMORY[0x277D79960]2 = [MEMORY[0x277D79960] sharedInstance];
      v20 = [mEMORY[0x277D79960]2 decodeChunk:? outError:?];
      v21 = 0;

      if (v21)
      {
        v23 = VSGetLogDefault();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v21;
          _os_log_error_impl(&dword_2727E4000, v23, OS_LOG_TYPE_ERROR, "Unable to convert OPUS to PCM. %@", buf, 0xCu);
        }

        goto LABEL_15;
      }

      [data appendData:?];

      v15 = 0;
      v14 = v17;
      if (v17 >= v11)
      {
        v22 = 1;
        goto LABEL_16;
      }
    }

    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v15;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      *&buf[14] = 1024;
      LODWORD(v28) = v11;
      _os_log_error_impl(&dword_2727E4000, v18, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", buf, 0x14u);
    }

LABEL_15:

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

LABEL_16:
  mEMORY[0x277D79960]3 = [MEMORY[0x277D79960] sharedInstance];
  [mEMORY[0x277D79960]3 endChunkDecoding];

  [self setAudioData:?];
  return v22;
}

- (uint64_t)populateWithOpusData:()SAUIAudioData
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  v7 = [v4 length];
  bytes = [v4 bytes];
  if (v7)
  {
    v9 = bytes;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = 0;
      do
      {
        v13 = *(v9 + v11);
        v12 = v13 & 0x7F | (v12 << 7);
        ++v11;
      }

      while (v13 < 0);
      if (!v12)
      {
        break;
      }

      v14 = v11 + v12;
      if (v14 > v7)
      {
        break;
      }

      v15 = [data length];
      LODWORD(v20) = 0;
      HIDWORD(v20) = v12;
      [data2 appendBytes:v15 length:v20];
      [data appendBytes:? length:?];
      ++v10;
      v11 += v12;
      if (v14 >= v7)
      {
        goto LABEL_12;
      }
    }

    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 67109632;
      v19[1] = v12;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v11;
      HIWORD(v20) = 1024;
      v21 = v7;
      _os_log_error_impl(&dword_2727E4000, v16, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", v19, 0x14u);
    }

    v17 = 0;
  }

  else
  {
LABEL_12:
    [self setPacketCount:?];
    [self setPacketDescriptions:?];
    [self setAudioData:?];
    v17 = 1;
  }

  return v17;
}

- (uint64_t)populateWithPCMData:()SAUIAudioData
{
  [self setAudioData:?];
  [self setPacketCount:?];
  [self setPacketDescriptions:?];
  return 1;
}

+ (void)asbdFromDescription:()SAUIAudioData
{
  selfCopy = self;
  formatID = [selfCopy formatID];
  *(a2 + 8) = [formatID unsignedIntegerValue];

  sampleRate = [selfCopy sampleRate];
  [sampleRate doubleValue];
  *a2 = v6;

  formatFlags = [selfCopy formatFlags];
  *(a2 + 12) = [formatFlags unsignedIntValue];

  bytesPerPacket = [selfCopy bytesPerPacket];
  *(a2 + 16) = [bytesPerPacket unsignedIntValue];

  framesPerPacket = [selfCopy framesPerPacket];
  *(a2 + 20) = [framesPerPacket unsignedIntValue];

  bytesPerFrame = [selfCopy bytesPerFrame];
  *(a2 + 24) = [bytesPerFrame unsignedIntValue];

  channelsPerFrame = [selfCopy channelsPerFrame];
  *(a2 + 28) = [channelsPerFrame unsignedIntValue];

  bitsPerChannel = [selfCopy bitsPerChannel];
  *(a2 + 32) = [bitsPerChannel unsignedIntValue];

  reserved = [selfCopy reserved];

  *(a2 + 36) = [reserved unsignedIntValue];
}

+ (id)audioDataWithASBD:()SAUIAudioData rawData:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277D79920]);
  v7 = *(a3 + 16);
  *buf = *a3;
  *&buf[16] = v7;
  v23 = *(a3 + 32);
  [v6 setAsbd:?];
  if (v6)
  {
    [v20 asbd];
    if (DWORD2(v20[0]) == 1819304813)
    {
      audioData = [v6 audioData];
      [v6 populateWithPCMData:?];

LABEL_4:
      v9 = v6;
      goto LABEL_12;
    }

    [v18 asbd];
    if (DWORD2(v18[0]) == 1869641075)
    {
      if ([v6 populateWithOpusData:?])
      {
        goto LABEL_4;
      }

      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "+[VSAudioData(SAUIAudioData) audioDataWithASBD:rawData:]";
        v11 = "%s, invalid opus data";
        v12 = v10;
        v13 = 12;
LABEL_19:
        _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    memset(v18, 0, sizeof(v18));
    v19 = 0;
  }

  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (v6)
    {
      [v16 asbd];
      v15 = DWORD2(v16[0]);
    }

    else
    {
      v15 = 0;
      v17 = 0;
      memset(v16, 0, sizeof(v16));
    }

    *buf = 136315394;
    *&buf[4] = "+[VSAudioData(SAUIAudioData) audioDataWithASBD:rawData:]";
    *&buf[12] = 1024;
    *&buf[14] = v15;
    v11 = "%s, Unknown format: %d";
    v12 = v10;
    v13 = 18;
    goto LABEL_19;
  }

LABEL_11:

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)pcmAudioDataFromOpusAudio:()SAUIAudioData
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0;
  v17 = 0;
  if ([v3 packetCount] >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      packetDescriptions = [v3 packetDescriptions];
      [packetDescriptions getBytes:? range:?];

      v8 = MEMORY[0x277CBEA90];
      audioData = [v3 audioData];
      [audioData bytes];
      v10 = [v8 dataWithBytes:? length:?];

      [v4 addObject:?];
      ++v6;
      v5 += 16;
    }

    while ([v3 packetCount] > v6);
  }

  v11 = objc_alloc_init(MEMORY[0x277D79960]);
  if (v3)
  {
    [v15 asbd];
  }

  else
  {
    memset(v15, 0, 40);
  }

  v12 = [v11 decodeChunks:? streamDescription:? outError:?];
  v13 = objc_alloc_init(MEMORY[0x277D79920]);
  [v13 setAudioData:?];
  *&v15[0] = 0x40E7700000000000;
  *(v15 + 8) = xmmword_272832680;
  *(&v15[1] + 8) = xmmword_272832690;
  [v13 setAsbd:?];

  return v13;
}

+ (id)audioDataFromPresynthesisRequest:()SAUIAudioData
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D79920]);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  if (!v3)
  {
    goto LABEL_8;
  }

  [&v18 playerStreamDescription];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  [&v15 decoderStreamDescription];
  if (DWORD2(v15) == 1869641075)
  {
    v8 = *&v15;
    v9 = *&v18;
    audioData = [v3 audioData];
    if (v8 == v9)
    {
      v14 = [v4 populateWithOpusData:?];

      [v4 setAsbd:{v15, v16, v17}];
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = [v4 populatePCMDataWithSiriOpusSData:v15 withOpusASBD:{v16, v17}];

      [v4 setAsbd:{v18, v19, v20}];
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_5:
    v7 = v4;
    goto LABEL_9;
  }

  if (DWORD2(v15) == 1819304813)
  {
    [v4 setAsbd:{v15, v16, v17}];
    audioData2 = [v3 audioData];
    v6 = [v4 populateWithPCMData:?];

    if (v6)
    {
      goto LABEL_5;
    }
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v12 = v7;

  return v12;
}

+ (id)audioDataFromSAUIAudioData:()SAUIAudioData
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D79920]);
  v42 = v3;
  decoderStreamDescription = [v5 decoderStreamDescription];
  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    formatID = [decoderStreamDescription formatID];
    sampleRate = [decoderStreamDescription sampleRate];
    *buf = 138412546;
    *&buf[4] = formatID;
    *v44 = 2112;
    *&v44[2] = sampleRate;
    _os_log_debug_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEBUG, "decoderStreamDescription formatID: %@, sample rate: %@", buf, 0x16u);
  }

  formatID2 = [decoderStreamDescription formatID];
  unsignedIntegerValue = [formatID2 unsignedIntegerValue];

  sampleRate2 = [decoderStreamDescription sampleRate];
  [sampleRate2 doubleValue];
  v12 = v11;

  formatFlags = [decoderStreamDescription formatFlags];
  unsignedIntValue = [formatFlags unsignedIntValue];

  bytesPerPacket = [decoderStreamDescription bytesPerPacket];
  unsignedIntValue2 = [bytesPerPacket unsignedIntValue];

  framesPerPacket = [decoderStreamDescription framesPerPacket];
  unsignedIntValue3 = [framesPerPacket unsignedIntValue];

  bytesPerFrame = [decoderStreamDescription bytesPerFrame];
  unsignedIntValue4 = [bytesPerFrame unsignedIntValue];

  channelsPerFrame = [decoderStreamDescription channelsPerFrame];
  unsignedIntValue5 = [channelsPerFrame unsignedIntValue];

  bitsPerChannel = [decoderStreamDescription bitsPerChannel];
  unsignedIntValue6 = [bitsPerChannel unsignedIntValue];

  reserved = [decoderStreamDescription reserved];
  unsignedIntValue7 = [reserved unsignedIntValue];

  if (unsignedIntegerValue == 1869641075)
  {
    v40 = unsignedIntValue5;
    v26 = unsignedIntValue4;
    v27 = unsignedIntValue3;
    v28 = unsignedIntValue2;
    v29 = unsignedIntValue;
    [v42 audioBuffer];
    v34 = v31 = v4;
    v35 = [v31 populateWithOpusData:?];

    if (v35)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (unsignedIntegerValue == 1819304813)
  {
    v40 = unsignedIntValue5;
    v26 = unsignedIntValue4;
    v27 = unsignedIntValue3;
    v28 = unsignedIntValue2;
    v29 = unsignedIntValue;
    audioBuffer = [v42 audioBuffer];
    v31 = v4;
    v32 = [v4 populateWithPCMData:?];

    if (v32)
    {
LABEL_6:
      *buf = v12;
      *&buf[8] = unsignedIntegerValue;
      *v44 = v29;
      *&v44[4] = v28;
      *&v44[8] = v27;
      v45 = v26;
      v46 = v40;
      v47 = unsignedIntValue6;
      v48 = unsignedIntValue7;
      [v31 setAsbd:?];
      v33 = v31;
LABEL_9:
      v4 = v31;
      goto LABEL_13;
    }

LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  v36 = VSGetLogDefault();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = unsignedIntegerValue;
    _os_log_error_impl(&dword_2727E4000, v36, OS_LOG_TYPE_ERROR, "Unknown server audio format ID: %d", buf, 8u);
  }

  v33 = 0;
LABEL_13:

  return v33;
}

+ (id)audioDataFromFile:()SAUIAudioData error:
{
  outAudioFile[11] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  outAudioFile[0] = 0;
  if (AudioFileOpenURL(v5, kAudioFileReadPermission, 0, outAudioFile))
  {
    if (a4)
    {
      v6 = MEMORY[0x277CCA9B8];
      outAudioFile[9] = *MEMORY[0x277CCA470];
      outAudioFile[10] = @"AudioFileOpenURL";
      v7 = MEMORY[0x277CBEAC0];
LABEL_10:
      v8 = [v7 dictionaryWithObjects:? forKeys:? count:?];
      *a4 = [v6 errorWithDomain:? code:? userInfo:?];

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v23 = 0;
  outPropertyData = 0u;
  v22 = 0u;
  ioDataSize = 40;
  if (AudioFileGetProperty(outAudioFile[0], 0x64666D74u, &ioDataSize, &outPropertyData))
  {
    if (a4)
    {
      v6 = MEMORY[0x277CCA9B8];
      outAudioFile[7] = *MEMORY[0x277CCA470];
      outAudioFile[8] = @"AudioFileGetProperty kAudioFilePropertyDataFormat";
      v7 = MEMORY[0x277CBEAC0];
      goto LABEL_10;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  *ioNumBytes = 0;
  ioDataSize = 8;
  if (AudioFileGetProperty(outAudioFile[0], 0x62636E74u, &ioDataSize, ioNumBytes))
  {
    if (a4)
    {
      v6 = MEMORY[0x277CCA9B8];
      outAudioFile[5] = *MEMORY[0x277CCA470];
      outAudioFile[6] = @"AudioFileGetProperty kAudioFilePropertyAudioDataByteCount";
      v7 = MEMORY[0x277CBEAC0];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *ioNumPackets = 0;
  ioDataSize = 8;
  if (AudioFileGetProperty(outAudioFile[0], 0x70636E74u, &ioDataSize, ioNumPackets))
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCA9B8];
    outAudioFile[3] = *MEMORY[0x277CCA470];
    outAudioFile[4] = @"AudioFileGetProperty kAudioFilePropertyAudioDataPacketCount";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v11 errorWithDomain:? code:? userInfo:?];
    *a4 = v9 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB28] dataWithLength:?];
    mutableBytes = [v12 mutableBytes];
    v14 = [MEMORY[0x277CBEB28] dataWithLength:?];
    mutableBytes2 = [v14 mutableBytes];
    if (AudioFileReadPacketData(outAudioFile[0], 0, ioNumBytes, mutableBytes, 0, ioNumPackets, mutableBytes2))
    {
      if (a4)
      {
        v16 = MEMORY[0x277CCA9B8];
        outAudioFile[1] = *MEMORY[0x277CCA470];
        outAudioFile[2] = @"AudioFileGetProperty kAudioFilePropertyAudioDataPacketCount";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        *a4 = [v16 errorWithDomain:? code:? userInfo:?];
      }

      v9 = 0;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D79920]);
      [v9 setAsbd:{outPropertyData, v22, v23}];
      [v9 setAudioData:?];
      [v9 setPacketCount:?];
      [v9 setPacketDescriptions:?];
    }
  }

LABEL_12:

  return v9;
}

@end