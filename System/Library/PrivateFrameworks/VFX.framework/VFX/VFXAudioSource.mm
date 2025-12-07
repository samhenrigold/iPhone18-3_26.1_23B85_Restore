@interface VFXAudioSource
+ (VFXAudioSource)audioSourceWithAVAudioPCMBuffer:(id)buffer;
+ (id)audioSourceNamed:(id)named;
- (VFXAudioSource)initWithAVAudioPCMBuffer:(id)buffer;
- (VFXAudioSource)initWithCoder:(id)coder;
- (VFXAudioSource)initWithFileNamed:(id)named;
- (VFXAudioSource)initWithFileNamed:(id)named inBundle:(id)bundle;
- (VFXAudioSource)initWithURL:(id)l;
- (double)duration;
- (id)audioBufferFormat;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)renderingAlgorithm;
- (void)_customDecodingOfVFXAudioSource:(id)source;
- (void)_customEncodingOfVFXAudioSource:(id)source;
- (void)_load;
- (void)_loadURLWithBundle:(id)bundle;
- (void)dealloc;
- (void)load;
- (void)loadIfNeeded;
@end

@implementation VFXAudioSource

+ (VFXAudioSource)audioSourceWithAVAudioPCMBuffer:(id)buffer
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithAVAudioPCMBuffer_(v4, v5, buffer);

  return v6;
}

- (VFXAudioSource)initWithAVAudioPCMBuffer:(id)buffer
{
  v4 = objc_msgSend_init(self, a2, buffer);
  if (v4)
  {
    v4->_audioBuffer = buffer;
    objc_msgSend_setPositional_(v4, v5, 1);
    LODWORD(v6) = 1.0;
    objc_msgSend_setVolume_(v4, v7, v8, v6);
    LODWORD(v9) = 1.0;
    objc_msgSend_setRate_(v4, v10, v11, v9);
  }

  return v4;
}

- (int64_t)renderingAlgorithm
{
  if (objc_msgSend_isPositional(self, a2, v2))
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

- (void)_loadURLWithBundle:(id)bundle
{
  p_audioName = &self->_audioName;
  audioName = self->_audioName;
  if (audioName)
  {
    v7 = objc_msgSend_pathExtension(audioName, a2, bundle);
    if (v7 && (v10 = v7, objc_msgSend_length(v7, v8, v9)))
    {
      v12 = objc_msgSend_stringByDeletingPathExtension(*p_audioName, v8, v11);
      v14 = objc_msgSend_URLForResource_withExtension_(bundle, v13, v12, v10);
    }

    else
    {
      v14 = objc_msgSend_URLForResource_withExtension_(bundle, v8, *p_audioName, @"caf");
      if (v14 || (v14 = objc_msgSend_URLForResource_withExtension_(bundle, v17, *p_audioName, @"caff")) != 0)
      {
LABEL_11:
        self->_audioURL = v14;
        return;
      }

      v14 = objc_msgSend_URLForResource_withExtension_(bundle, v18, *p_audioName, @"aiff");
    }

    if (!v14)
    {
      v16 = sub_1AF0D5194(0, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF49BC(p_audioName, v16);
      }

      v14 = 0;
    }

    goto LABEL_11;
  }
}

- (VFXAudioSource)initWithFileNamed:(id)named inBundle:(id)bundle
{
  v6 = objc_msgSend_init(self, a2, named);
  if (v6)
  {
    v6->_audioName = named;
    objc_msgSend_setPositional_(v6, v7, 1);
    LODWORD(v8) = 1.0;
    objc_msgSend_setVolume_(v6, v9, v10, v8);
    LODWORD(v11) = 1.0;
    objc_msgSend_setRate_(v6, v12, v13, v11);
    objc_msgSend__loadURLWithBundle_(v6, v14, bundle);
  }

  return v6;
}

- (VFXAudioSource)initWithFileNamed:(id)named
{
  objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, named);

  return MEMORY[0x1EEE66B58](self, sel_initWithFileNamed_inBundle_, named);
}

- (VFXAudioSource)initWithURL:(id)l
{
  v13.receiver = self;
  v13.super_class = VFXAudioSource;
  v4 = [(VFXAudioSource *)&v13 init];
  if (v4)
  {
    v4->_audioURL = l;
    objc_msgSend_setPositional_(v4, v5, 1);
    LODWORD(v6) = 1.0;
    objc_msgSend_setVolume_(v4, v7, v8, v6);
    LODWORD(v9) = 1.0;
    objc_msgSend_setRate_(v4, v10, v11, v9);
  }

  return v4;
}

+ (id)audioSourceNamed:(id)named
{
  if (qword_1EB658850 != -1)
  {
    sub_1AFDF4A38();
  }

  result = objc_msgSend_objectForKey_(qword_1EB658848, a2, named);
  if (!result)
  {
    v5 = [VFXAudioSource alloc];
    v7 = objc_msgSend_initWithFileNamed_(v5, v6, named);
    v9 = v7;
    if (named && v7)
    {
      objc_msgSend_setObject_forKey_(qword_1EB658848, v8, v7, named);
    }

    return v9;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAudioSource;
  [(VFXAudioSource *)&v3 dealloc];
}

- (void)load
{
  if (!self->_loaded)
  {
    objc_msgSend__load(self, a2, v2);
  }
}

- (void)_load
{
  self->_loaded = 1;
  if (!self->_audioURL && self->_audioName)
  {
    v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2);
    objc_msgSend__loadURLWithBundle_(self, v5, v4);
  }

  if (!self->_audioFile && self->_audioURL)
  {
    v22 = 0;
    v6 = objc_alloc(MEMORY[0x1E6958408]);
    self->_audioFile = objc_msgSend_initForReading_error_(v6, v7, self->_audioURL, &v22);
  }

  if ((objc_msgSend_shouldStream(self, a2, v2) & 1) == 0 && !self->_audioBuffer)
  {
    if (self->_audioFile)
    {
      v22 = 0;
      v8 = objc_alloc(MEMORY[0x1E6958440]);
      v11 = objc_msgSend_processingFormat(self->_audioFile, v9, v10);
      v14 = objc_msgSend_length(self->_audioFile, v12, v13);
      v16 = objc_msgSend_initWithPCMFormat_frameCapacity_(v8, v15, v11, v14);
      self->_audioBuffer = v16;
      v18 = objc_msgSend_readIntoBuffer_error_(self->_audioFile, v17, v16, &v22);
      if ((v18 & 1) == 0)
      {
        v20 = sub_1AF0D5194(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF4A4C(&v22, v20, v21);
        }
      }
    }
  }
}

- (void)loadIfNeeded
{
  if (!self->_loaded)
  {
    objc_msgSend_load(self, a2, v2);
  }
}

- (id)audioBufferFormat
{
  objc_msgSend_loadIfNeeded(self, a2, v2);
  audioBuffer = self->_audioBuffer;

  return objc_msgSend_format(audioBuffer, v4, v5);
}

- (double)duration
{
  if (objc_msgSend_loops(self, a2, v2))
  {
    return 1.79769313e308;
  }

  objc_msgSend_loadIfNeeded(self, v4, v5);
  audioFile = self->_audioFile;
  if (!audioFile)
  {
    return 0.0;
  }

  if (self->_audioBuffer)
  {
    v12 = objc_msgSend_frameLength(self->_audioBuffer, v7, v8);
  }

  else
  {
    v12 = objc_msgSend_length(audioFile, v7, v8);
  }

  v13 = objc_msgSend_fileFormat(self->_audioFile, v10, v11);
  objc_msgSend_sampleRate(v13, v14, v15);
  return v12 / v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  audioName = self->_audioName;
  if (audioName)
  {
    v5 = objc_msgSend_audioSourceNamed_(VFXAudioSource, a2, audioName);
  }

  else
  {
    if (self->_audioURL)
    {
      v8 = [VFXAudioSource alloc];
      v6 = objc_msgSend_initWithURL_(v8, v9, self->_audioURL);
      goto LABEL_6;
    }

    audioBuffer = self->_audioBuffer;
    if (!audioBuffer)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v5 = objc_msgSend_audioSourceWithAVAudioPCMBuffer_(VFXAudioSource, a2, audioBuffer);
  }

  v6 = v5;
LABEL_6:
  v10 = v6;
LABEL_7:
  isPositional = objc_msgSend_isPositional(self, a2, audioBuffer);
  objc_msgSend_setPositional_(v10, v12, isPositional);
  objc_msgSend_volume(self, v13, v14);
  objc_msgSend_setVolume_(v10, v15, v16);
  objc_msgSend_rate(self, v17, v18);
  objc_msgSend_setRate_(v10, v19, v20);
  v23 = objc_msgSend_loops(self, v21, v22);
  objc_msgSend_setLoops_(v10, v24, v23);
  shouldStream = objc_msgSend_shouldStream(self, v25, v26);
  objc_msgSend_setShouldStream_(v10, v28, shouldStream);
  return v10;
}

- (void)_customEncodingOfVFXAudioSource:(id)source
{
  audioName = self->_audioName;
  if (audioName)
  {
    objc_msgSend_encodeObject_forKey_(source, a2, audioName, @"name");
  }

  else if (self->_audioURL)
  {
    objc_msgSend_encodeObject_forKey_(source, a2, 0, @"url");
  }

  else
  {
    v27 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4ADC(v27);
    }
  }

  objc_msgSend_volume(self, v6, v7);
  objc_msgSend_encodeFloat_forKey_(source, v8, @"volume");
  objc_msgSend_rate(self, v9, v10);
  objc_msgSend_encodeFloat_forKey_(source, v11, @"rate");
  objc_msgSend_reverbBlend(self, v12, v13);
  objc_msgSend_encodeFloat_forKey_(source, v14, @"reverbBlend");
  isPositional = objc_msgSend_isPositional(self, v15, v16);
  objc_msgSend_encodeBool_forKey_(source, v18, isPositional, @"positional");
  v21 = objc_msgSend_loops(self, v19, v20);
  objc_msgSend_encodeBool_forKey_(source, v22, v21, @"loops");
  shouldStream = objc_msgSend_shouldStream(self, v23, v24);
  objc_msgSend_encodeBool_forKey_(source, v26, shouldStream, @"shouldStream");
}

- (void)_customDecodingOfVFXAudioSource:(id)source
{
  p_audioName = &self->_audioName;
  if (self->_audioName)
  {
    v6 = @"name";
  }

  else
  {
    p_audioName = &self->_audioURL;
    if (!self->_audioURL)
    {
      goto LABEL_6;
    }

    v6 = @"url";
  }

  v7 = objc_opt_class();
  *p_audioName = objc_msgSend_decodeObjectOfClass_forKey_(source, v8, v7, v6);
LABEL_6:
  objc_msgSend_decodeFloatForKey_(source, a2, @"volume");
  objc_msgSend_setVolume_(self, v9, v10);
  objc_msgSend_decodeFloatForKey_(source, v11, @"rate");
  objc_msgSend_setRate_(self, v12, v13);
  objc_msgSend_decodeFloatForKey_(source, v14, @"reverbBlend");
  objc_msgSend_setReverbBlend_(self, v15, v16);
  v18 = objc_msgSend_decodeBoolForKey_(source, v17, @"positional");
  objc_msgSend_setPositional_(self, v19, v18);
  v21 = objc_msgSend_decodeBoolForKey_(source, v20, @"loops");
  objc_msgSend_setLoops_(self, v22, v21);
  v24 = objc_msgSend_decodeBoolForKey_(source, v23, @"shouldStream");
  objc_msgSend_setShouldStream_(self, v25, v24);

  objc_msgSend_loadIfNeeded(self, v26, v27);
}

- (VFXAudioSource)initWithCoder:(id)coder
{
  v4 = objc_msgSend_init(self, a2, coder);
  v6 = v4;
  if (v4)
  {
    objc_msgSend__customDecodingOfVFXAudioSource_(v4, v5, coder);
  }

  return v6;
}

@end