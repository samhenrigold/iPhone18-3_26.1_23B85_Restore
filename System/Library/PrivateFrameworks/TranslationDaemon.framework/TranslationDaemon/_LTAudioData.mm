@interface _LTAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)_populateWithOpusData:(id)data;
- (_LTAudioData)initWithASBD:(AudioStreamBasicDescription *)d rawData:(id)data wordTimingInfo:(id)info;
- (void)writeToURL:(id)l;
@end

@implementation _LTAudioData

- (_LTAudioData)initWithASBD:(AudioStreamBasicDescription *)d rawData:(id)data wordTimingInfo:(id)info
{
  dataCopy = data;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = _LTAudioData;
  v11 = [(_LTAudioData *)&v19 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  v13 = *&d->mSampleRate;
  v14 = *&d->mBytesPerPacket;
  *(v11 + 5) = *&d->mBitsPerChannel;
  *(v11 + 24) = v14;
  *(v11 + 8) = v13;
  objc_storeStrong(v11 + 6, data);
  objc_storeStrong(v12 + 9, info);
  mFormatID = d->mFormatID;
  if (mFormatID != 1869641075)
  {
    if (mFormatID == 1819304813)
    {
      v16 = v12[8];
      v12[7] = 0;
      v12[8] = 0;
    }

    goto LABEL_6;
  }

  if (![v12 _populateWithOpusData:dataCopy])
  {
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v17 = v12;
LABEL_8:

  return v17;
}

- (BOOL)_populateWithOpusData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  v6 = [dataCopy length];
  bytes = [dataCopy bytes];
  if (v6)
  {
    v9 = bytes;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LODWORD(v12) = 0;
      v13 = (v9 + v11);
      do
      {
        v14 = *v13++;
        v12 = v14 & 0x7Fu | (v12 << 7);
        ++v11;
      }

      while (v14 < 0);
      v15 = v11 + v12;
      if (!v12 || v15 > v6)
      {
        break;
      }

      *buf = 0;
      v22 = 0;
      *buf = [data length];
      LODWORD(v22) = 0;
      HIDWORD(v22) = v12;
      [data2 appendBytes:buf length:16];
      bytes = [data appendBytes:v13 length:v12];
      ++v10;
      v11 += v12;
      if (v15 >= v6)
      {
        goto LABEL_15;
      }
    }

    v17 = _LTOSLogSpeech(bytes, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v12;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v11;
      HIWORD(v22) = 1024;
      v23 = v6;
      _os_log_error_impl(&dword_232E53000, v17, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", buf, 0x14u);
    }

    v18 = 0;
  }

  else
  {
    v10 = 0;
LABEL_15:
    self->_packetCount = v10;
    objc_storeStrong(&self->_packetDescriptions, data2);
    objc_storeStrong(&self->_rawData, data);
    v18 = 1;
  }

  return v18;
}

- (void)writeToURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];

    if ([defaultManager fileExistsAtPath:path])
    {
      v9 = 0;
    }

    else
    {
      v20 = 0;
      [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v20];
      v11 = v20;
      v9 = v11;
      if (v11)
      {
        v13 = _LTOSLogSpeech(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [_LTAudioData writeToURL:];
        }
      }
    }

    rawData = self->_rawData;
    v19 = 0;
    [(NSData *)rawData writeToURL:lCopy options:0 error:&v19];
    v15 = v19;
    v17 = v15;
    if (v15)
    {
      v18 = _LTOSLogSpeech(v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LTAudioData writeToURL:];
      }
    }
  }

  else
  {
    v10 = _LTOSLogSpeech(0, v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTAudioData writeToURL:v10];
    }
  }
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

@end