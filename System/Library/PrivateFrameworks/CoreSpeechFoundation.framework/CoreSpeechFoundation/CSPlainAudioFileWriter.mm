@interface CSPlainAudioFileWriter
+ (void)saveAudioChunck:(id)chunck toURL:(id)l;
- (BOOL)addSamples:(const void *)samples numSamples:(int64_t)numSamples;
- (BOOL)endAudio;
- (CSPlainAudioFileWriter)initWithFilepath:(id)filepath;
- (CSPlainAudioFileWriter)initWithURL:(id)l;
- (CSPlainAudioFileWriter)initWithURL:(id)l inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
- (void)addContextKey:(id)key fromMetaFile:(id)file;
- (void)addContextKey:(id)key withContext:(id)context;
- (void)createAcousticMetaFileForContext:(id)context withContext:(id)withContext;
- (void)dealloc;
@end

@implementation CSPlainAudioFileWriter

- (void)addContextKey:(id)key fromMetaFile:(id)file
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  fileCopy = file;
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    if (fileCopy)
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
      if (v8)
      {
        v9 = v8;
        v15 = 0;
        v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v15];
        v11 = v15;
        v12 = v11;
        if (!v10 || v11)
        {
          v13 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v17 = "[CSPlainAudioFileWriter addContextKey:fromMetaFile:]";
            v18 = 2112;
            v19 = fileCopy;
            v20 = 2112;
            v21 = v12;
            _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Could not read existing %@ file: err: %@", buf, 0x20u);
          }

          v10 = 0;
        }

        goto LABEL_14;
      }

      v14 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[CSPlainAudioFileWriter addContextKey:fromMetaFile:]";
        v18 = 2112;
        v19 = fileCopy;
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s Unable to read data from file: %@", buf, 0x16u);
      }
    }

    v9 = 0;
    v10 = 0;
    v12 = 0;
LABEL_14:
    [(CSPlainAudioFileWriter *)self addContextKey:keyCopy withContext:v10];
  }
}

- (void)createAcousticMetaFileForContext:(id)context withContext:(id)withContext
{
  v23 = *MEMORY[0x1E69E9840];
  withContextCopy = withContext;
  lastPathComponent = [(NSURL *)self->_fileURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v8 = [stringByDeletingPathExtension stringByAppendingString:@"-SL.json"];

  uRLByDeletingLastPathComponent = [(NSURL *)self->_fileURL URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v11 = [path stringByAppendingPathComponent:v8];

  if (withContextCopy)
  {
    v16 = 0;
    v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:withContextCopy options:1 error:&v16];
    v13 = v16;
    if (v13 || !v12)
    {
      v15 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "[CSPlainAudioFileWriter createAcousticMetaFileForContext:withContext:]";
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v13;
        _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create json %{public}@ with %{public}@", buf, 0x20u);
      }
    }

    else
    {
      [v12 writeToFile:v11 atomically:0];
    }
  }

  else
  {
    v14 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[CSPlainAudioFileWriter createAcousticMetaFileForContext:withContext:]";
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s metaInfo passed is nil - Bailing out", buf, 0xCu);
    }

    v13 = 0;
  }
}

- (void)addContextKey:(id)key withContext:(id)context
{
  v60[5] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  contextCopy = context;
  uRLByDeletingPathExtension = [(NSURL *)self->_fileURL URLByDeletingPathExtension];
  v9 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v9 path];
  v12 = [defaultManager fileExistsAtPath:path];

  if (v12)
  {
    if (contextCopy)
    {
      v13 = MEMORY[0x1E695DEF0];
      path2 = [v9 path];
      v15 = [v13 dataWithContentsOfFile:path2];

      if (v15)
      {
        v51 = 0;
        v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v51];
        v17 = v51;
        v18 = v17;
        if (!v16 || v17)
        {
          v45 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v54 = "[CSPlainAudioFileWriter addContextKey:withContext:]";
            v55 = 2112;
            v56 = v9;
            v57 = 2112;
            v58 = v18;
            _os_log_error_impl(&dword_1DDA4B000, v45, OS_LOG_TYPE_ERROR, "%s Could not read existing %@ file: err: %@", buf, 0x20u);
          }
        }

        else
        {
          v19 = [v16 mutableCopy];
          [v19 setObject:contextCopy forKey:keyCopy];
          v50 = 0;
          v20 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v19 options:1 error:&v50];
          v18 = v50;
          if (v18 || !v20)
          {
            v46 = CSLogCategoryAudio;
            if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v54 = "[CSPlainAudioFileWriter addContextKey:withContext:]";
              v55 = 2114;
              v56 = v9;
              v57 = 2114;
              v58 = v18;
              _os_log_error_impl(&dword_1DDA4B000, v46, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create json %{public}@ with %{public}@", buf, 0x20u);
            }
          }

          else
          {
            path3 = [v9 path];
            [v20 writeToFile:path3 atomically:0];
          }
        }
      }

      else
      {
        v44 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "[CSPlainAudioFileWriter addContextKey:withContext:]";
          v55 = 2112;
          v56 = v9;
          _os_log_error_impl(&dword_1DDA4B000, v44, OS_LOG_TYPE_ERROR, "%s Unable to read data from file: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v43 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v54 = "[CSPlainAudioFileWriter addContextKey:withContext:]";
        _os_log_impl(&dword_1DDA4B000, v43, OS_LOG_TYPE_DEFAULT, "%s metaInfo passed is nil - Bailing out", buf, 0xCu);
      }
    }
  }

  else
  {
    v48 = keyCopy;
    v49 = contextCopy;
    v22 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v23 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v24 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v23 setLocale:v24];

    [v23 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
    v47 = v22;
    v25 = [v23 stringFromDate:v22];
    v26 = MEMORY[0x1E695DF90];
    v59[0] = @"productType";
    v27 = +[CSUtils deviceProductType];
    v60[0] = v27;
    v59[1] = @"productVersion";
    v28 = +[CSUtils deviceProductVersion];
    v60[1] = v28;
    v59[2] = @"buildVersion";
    v29 = +[CSUtils deviceBuildVersion];
    v60[2] = v29;
    v59[3] = @"liveOnHomePod";
    v30 = MEMORY[0x1E696AD98];
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    if (CSIsHorseman_isHorseman == 1 && (v31 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da")) != 0)
    {
      v32 = v31;
      v33 = [v31 isEqualToString:@"walkabout"];
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 numberWithBool:v33];
    v35 = v34;
    v59[4] = @"timeStamp";
    v36 = &stru_1F58FE330;
    if (v25)
    {
      v36 = v25;
    }

    v60[3] = v34;
    v60[4] = v36;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:5];
    v38 = [v26 dictionaryWithDictionary:v37];

    keyCopy = v48;
    if (v49)
    {
      [v38 setObject:v49 forKey:v48];
    }

    v52 = 0;
    v39 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v38 options:1 error:&v52];
    v40 = v52;
    if (v40 || !v39)
    {
      v42 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v54 = "[CSPlainAudioFileWriter addContextKey:withContext:]";
        v55 = 2114;
        v56 = v9;
        v57 = 2114;
        v58 = v40;
        _os_log_error_impl(&dword_1DDA4B000, v42, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create json %{public}@ with %{public}@", buf, 0x20u);
      }
    }

    else
    {
      path4 = [v9 path];
      [v39 writeToFile:path4 atomically:0];
    }

    contextCopy = v49;
  }
}

- (BOOL)addSamples:(const void *)samples numSamples:(int64_t)numSamples
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = 1;
  if (numSamples >= 1 && self->isWriting)
  {
    v5 = &buf[-((24 * self->inASBD.mChannelsPerFrame + 15) & 0x3FFFFFFFF0)];
    mChannelsPerFrame = self->inASBD.mChannelsPerFrame;
    v5->mNumberBuffers = mChannelsPerFrame;
    if (mChannelsPerFrame)
    {
      v7 = 0;
      v8 = self->inASBD.mBytesPerFrame * numSamples;
      p_mData = &v5->mBuffers[0].mData;
      do
      {
        *(p_mData - 2) = 1;
        *(p_mData - 1) = v8;
        *p_mData = samples + v7;
        p_mData += 2;
        v7 += v8;
        --mChannelsPerFrame;
      }

      while (mChannelsPerFrame);
    }

    v10 = ExtAudioFileWrite(self->fFile, numSamples, v5);
    v4 = v10 == 0;
    if (v10)
    {
      v11 = v10;
      v12 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[CSPlainAudioFileWriter addSamples:numSamples:]";
        v16 = 2050;
        v17 = v11;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s ::: Error writing to output wave file. : %{public}ld", buf, 0x16u);
      }
    }
  }

  return v4;
}

- (BOOL)endAudio
{
  fFile = self->fFile;
  if (fFile)
  {
    ExtAudioFileDispose(fFile);
  }

  self->isWriting = 0;
  return 1;
}

- (void)dealloc
{
  [(CSPlainAudioFileWriter *)self endAudio];
  v3.receiver = self;
  v3.super_class = CSPlainAudioFileWriter;
  [(CSPlainAudioFileWriter *)&v3 dealloc];
}

- (CSPlainAudioFileWriter)initWithURL:(id)l inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v22.receiver = self;
  v22.super_class = CSPlainAudioFileWriter;
  v9 = [(CSPlainAudioFileWriter *)&v22 init];
  v10 = v9;
  if (v9)
  {
    outputFormat->mSampleRate = format->mSampleRate;
    v11 = ExtAudioFileCreateWithURL(lCopy, 0x57415645u, outputFormat, 0, 1u, &v9->fFile);
    if (v11)
    {
      v12 = v11;
      v13 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v24 = "[CSPlainAudioFileWriter initWithURL:inputFormat:outputFormat:]";
        v25 = 2114;
        v26 = lCopy;
        v27 = 1026;
        v28 = v12;
        _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s ::: Error creating output file %{public}@, err: %{public}d", buf, 0x1Cu);
      }
    }

    if (v10->fFile)
    {
      v14 = lCopy;
    }

    else
    {
      v14 = 0;
    }

    fileURL = v10->_fileURL;
    v10->_fileURL = v14;

    fFile = v10->fFile;
    if (fFile)
    {
      ExtAudioFileSetProperty(fFile, 0x63666D74u, 0x28u, format);
    }

    v10->isWriting = 1;
    v17 = *&format->mSampleRate;
    v18 = *&format->mBytesPerPacket;
    *&v10->inASBD.mBitsPerChannel = *&format->mBitsPerChannel;
    *&v10->inASBD.mBytesPerPacket = v18;
    *&v10->inASBD.mSampleRate = v17;
    v19 = *&outputFormat->mSampleRate;
    v20 = *&outputFormat->mBytesPerPacket;
    *&v10->outASBD.mBitsPerChannel = *&outputFormat->mBitsPerChannel;
    *&v10->outASBD.mSampleRate = v19;
    *&v10->outASBD.mBytesPerPacket = v20;
  }

  return v10;
}

- (CSPlainAudioFileWriter)initWithFilepath:(id)filepath
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:filepath];
  objc_msgSend_utteranceFileASBD(CSFAudioStreamBasicDescriptionFactory);
  objc_msgSend_lpcmInt16ASBD(CSFAudioStreamBasicDescriptionFactory);
  v5 = [(CSPlainAudioFileWriter *)self initWithURL:v4 inputFormat:v8 outputFormat:&v7];

  return v5;
}

- (CSPlainAudioFileWriter)initWithURL:(id)l
{
  lCopy = l;
  objc_msgSend_utteranceFileASBD(CSFAudioStreamBasicDescriptionFactory);
  objc_msgSend_lpcmInt16ASBD(CSFAudioStreamBasicDescriptionFactory);
  v5 = [(CSPlainAudioFileWriter *)self initWithURL:lCopy inputFormat:v8 outputFormat:&v7];

  return v5;
}

+ (void)saveAudioChunck:(id)chunck toURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  chunckCopy = chunck;
  lCopy = l;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSPlainAudioFileWriter saveAudioChunck:toURL:]";
    *&buf[12] = 2114;
    *&buf[14] = lCopy;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s saveAudioChunk toURL: %{public}@", buf, 0x16u);
  }

  v27 = 0;
  memset(buf, 0, sizeof(buf));
  +[CSConfig inputRecordingSampleRate];
  v9 = v8;
  [chunckCopy numChannels];
  LODWORD(v10) = v9;
  objc_msgSend_lpcmNonInterleavedASBDWithSampleRate_numberOfChannels_(CSFAudioStreamBasicDescriptionFactory, v10);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  +[CSConfig inputRecordingSampleRate];
  v12 = v11;
  [chunckCopy numChannels];
  LODWORD(v13) = v12;
  objc_msgSend_lpcmInterleavedASBDWithSampleRate_numberOfChannels_(CSFAudioStreamBasicDescriptionFactory, v13);
  v14 = [CSPlainAudioFileWriter alloc];
  *v23 = *buf;
  v24 = *&buf[16];
  v25 = v27;
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  v15 = [(CSPlainAudioFileWriter *)v14 initWithURL:lCopy inputFormat:v23 outputFormat:v18];
  if (chunckCopy)
  {
    data = [chunckCopy data];
    -[CSPlainAudioFileWriter addSamples:numSamples:](v15, "addSamples:numSamples:", [data bytes], objc_msgSend(chunckCopy, "numSamples"));
  }

  else
  {
    v17 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315138;
      *&v23[4] = "+[CSPlainAudioFileWriter saveAudioChunck:toURL:]";
      _os_log_error_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_ERROR, "%s Invalid request: nothing to write to file", v23, 0xCu);
    }
  }

  [(CSPlainAudioFileWriter *)v15 endAudio];
}

@end