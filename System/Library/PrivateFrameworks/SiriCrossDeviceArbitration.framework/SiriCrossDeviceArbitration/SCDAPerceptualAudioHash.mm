@interface SCDAPerceptualAudioHash
+ (id)_audioHashFileBaseDirectory;
+ (id)_audioHashFilePath;
+ (id)tryToRetrieveAudioHashFromFile;
- (BOOL)isEqual:(id)equal;
- (SCDAPerceptualAudioHash)initWithCoder:(id)coder;
- (SCDAPerceptualAudioHash)initWithData:(id)data;
- (id)_initWithPhash:(unsigned __int16)phash scoreAudioIntensity:(unsigned __int8)intensity userConfidence:(unsigned __int8)confidence voiceTriggerTime:(unint64_t)time frac:(unsigned __int8)frac;
- (id)description;
@end

@implementation SCDAPerceptualAudioHash

+ (id)tryToRetrieveAudioHashFromFile
{
  v18 = *MEMORY[0x1E69E9840];
  _audioHashFilePath = [self _audioHashFilePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:_audioHashFilePath])
  {
    uTF8String = [_audioHashFilePath UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v15 = "+[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile]";
    v16 = 2081;
    v17 = uTF8String;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda BTLE opening audio file at path %{private}s", buf, 0x16u);
  }

  if (uTF8String)
  {
    v6 = open(uTF8String, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = read(v6, v13, 0xDuLL);
      v9 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "+[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile]";
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s #scda BTLE could open audio data file, MYR_EXT_FINGERPRINT_LEN: %zd", buf, 0x16u);
      }

      if (v8 <= 0xD && ((1 << v8) & 0x3010) != 0)
      {
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:v8];
        close(v7);
        goto LABEL_16;
      }

      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "+[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile]";
        _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s #scda BTLE could not read 4 bytes from audio data file", buf, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

+ (id)_audioHashFilePath
{
  v10 = *MEMORY[0x1E69E9840];
  _audioHashFileBaseDirectory = [self _audioHashFileBaseDirectory];
  v3 = [_audioHashFileBaseDirectory stringByAppendingPathComponent:@"siriBC"];
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315395;
    v7 = "+[SCDAPerceptualAudioHash _audioHashFilePath]";
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE audio hash file path %{private}@", &v6, 0x16u);
  }

  return v3;
}

+ (id)_audioHashFileBaseDirectory
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/VoiceTrigger"];
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315395;
    v7 = "+[SCDAPerceptualAudioHash _audioHashFileBaseDirectory]";
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE audio hash base directory %{private}@", &v6, 0x16u);
  }

  return v3;
}

- (SCDAPerceptualAudioHash)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAPerceptualAudioHash::data"];

  v6 = [[SCDAPerceptualAudioHash alloc] initWithData:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      data = [(SCDAPerceptualAudioHash *)equalCopy data];
      data = self->_data;
      v7 = data == data || [(NSData *)data isEqual:data];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  pHash = [(SCDAPerceptualAudioHash *)self pHash];
  scoreAudioIntensity = [(SCDAPerceptualAudioHash *)self scoreAudioIntensity];
  userConfidence = [(SCDAPerceptualAudioHash *)self userConfidence];
  frac = [(SCDAPerceptualAudioHash *)self frac];
  voiceTriggerTime = [(SCDAPerceptualAudioHash *)self voiceTriggerTime];
  [SCDAElectionWindow electionWindowTimeRemaining:[(SCDAPerceptualAudioHash *)self voiceTriggerTime] fromNow:mach_absolute_time()];
  return [v3 stringWithFormat:@"hash:%hu, audio:%d, uc:%d, frac:%d, vtt:%llu, remaining:%f", pHash, scoreAudioIntensity, userConfidence, frac, voiceTriggerTime, v9];
}

- (id)_initWithPhash:(unsigned __int16)phash scoreAudioIntensity:(unsigned __int8)intensity userConfidence:(unsigned __int8)confidence voiceTriggerTime:(unint64_t)time frac:(unsigned __int8)frac
{
  fracCopy = frac;
  confidenceCopy = confidence;
  intensityCopy = intensity;
  phashCopy = phash;
  v15.receiver = self;
  v15.super_class = SCDAPerceptualAudioHash;
  v12 = [(SCDAPerceptualAudioHash *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(SCDAPerceptualAudioHash *)v12 setPHash:phashCopy];
    [(SCDAPerceptualAudioHash *)v13 setScoreAudioIntensity:intensityCopy];
    [(SCDAPerceptualAudioHash *)v13 setUserConfidence:confidenceCopy];
    [(SCDAPerceptualAudioHash *)v13 setVoiceTriggerTime:time];
    [(SCDAPerceptualAudioHash *)v13 setFrac:fracCopy];
  }

  return v13;
}

- (SCDAPerceptualAudioHash)initWithData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = SCDAPerceptualAudioHash;
  v5 = [(SCDAPerceptualAudioHash *)&v25 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = dataCopy;
  v7 = [v6 length];
  v8 = v7;
  if (v7 <= 0xCuLL)
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v27 = "[SCDAPerceptualAudioHash initWithData:]";
      _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s Perceptual Audio hash with no VT time, trying to read from file.", buf, 0xCu);
    }

    v10 = +[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile];
    v11 = [v10 length];
    if (v11 > [v6 length])
    {
      v12 = v10;

      v8 = [v12 length];
      v6 = v12;
    }
  }

  if (v8 - 12 < 2)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_21:
    [(SCDAPerceptualAudioHash *)v5 setData:v6];
    v19 = v5;
    goto LABEL_22;
  }

  if (v8 != 4)
  {
    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SCDAPerceptualAudioHash initWithData:]";
      v28 = 2114;
      v29 = v6;
      _os_log_error_impl(&dword_1DA758000, v18, OS_LOG_TYPE_ERROR, "%s Invalid perceptual audio hash: %{public}@", buf, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_11:
  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SCDAPerceptualAudioHash initWithData:]";
    v28 = 1024;
    LODWORD(v29) = v8;
    _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s Data Length: %d", buf, 0x12u);
  }

  *(v24 + 5) = 0;
  v24[0] = 0;
  [v6 getBytes:v24 range:{0, v8}];
  [(SCDAPerceptualAudioHash *)v5 setPHash:LOWORD(v24[0])];
  [(SCDAPerceptualAudioHash *)v5 setScoreAudioIntensity:BYTE2(v24[0])];
  [(SCDAPerceptualAudioHash *)v5 setUserConfidence:BYTE3(v24[0])];
  [(SCDAPerceptualAudioHash *)v5 setVoiceTriggerTime:0];
  [(SCDAPerceptualAudioHash *)v5 setFrac:0];
  if (v8 >= 5)
  {
    v14 = *(v24 + 4);
    [SCDAElectionWindow electionWindowTimeRemaining:*(v24 + 4) fromNow:mach_absolute_time()];
    v16 = v15;
    v17 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v22 = v17;
      v23 = [v6 debugDescription];
      *buf = 136315906;
      v27 = "[SCDAPerceptualAudioHash initWithData:]";
      v28 = 2112;
      v29 = v23;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v16;
      _os_log_debug_impl(&dword_1DA758000, v22, OS_LOG_TYPE_DEBUG, "%s data=%@, voiceTriggerTimeRaw=%llu, electionTimeRemaining=%f", buf, 0x2Au);
    }

    [(SCDAPerceptualAudioHash *)v5 setVoiceTriggerTime:v14];
    if (v8 >= 0xD)
    {
      [(SCDAPerceptualAudioHash *)v5 setFrac:BYTE4(v24[1])];
    }
  }

  [(SCDAPerceptualAudioHash *)v5 setData:v6];
LABEL_22:

  if (v8 <= 0xD && ((1 << v8) & 0x3010) != 0)
  {
LABEL_24:
    v20 = v5;
  }

  return v5;
}

@end