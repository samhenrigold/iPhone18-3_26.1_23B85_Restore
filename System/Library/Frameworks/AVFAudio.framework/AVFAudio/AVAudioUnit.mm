@interface AVAudioUnit
+ (void)instantiateWithComponentDescription:(AudioComponentDescription *)audioComponentDescription options:(AudioComponentInstantiationOptions)options completionHandler:(void *)completionHandler;
- (AudioComponentDescription)audioComponentDescription;
- (AudioUnit)audioUnit;
- (BOOL)loadAudioUnitPresetAtURL:(NSURL *)url error:(NSError *)outError;
- (BOOL)setValue:(float)value forParam:(unsigned int)param;
- (NSString)manufacturerName;
- (NSString)name;
- (NSUInteger)version;
- (float)valueForParam:(unsigned int)param;
@end

@implementation AVAudioUnit

- (float)valueForParam:(unsigned int)param
{
  v3 = *&param;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super._impl);
  v7 = 0.0;
  (*(*self->super._impl + 136))(self->super._impl, v3, 0, 0, &v7);
  v5 = v7;
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  return v5;
}

- (BOOL)setValue:(float)value forParam:(unsigned int)param
{
  v4 = *&param;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super._impl);
  v7 = (*(*self->super._impl + 128))(self->super._impl, v4, 0, 0, value);
  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v7;
}

- (NSUInteger)version
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->super._impl);
  outVersion = 0;
  v3 = (*(*self->super._impl + 256))();
  v4 = *v3;
  v8.componentFlagsMask = *(v3 + 16);
  *&v8.componentType = v4;
  Next = AudioComponentFindNext(0, &v8);
  if (Next)
  {
    AudioComponentGetVersion(Next, &outVersion);
    v6 = outVersion;
  }

  else
  {
    v6 = 0;
  }

  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  return v6;
}

- (NSString)manufacturerName
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->super._impl);
  v3 = (*(*self->super._impl + 256))();
  v4 = *v3;
  inDesc.componentFlagsMask = *(v3 + 16);
  *&inDesc.componentType = v4;
  Next = AudioComponentFindNext(0, &inDesc);
  if (Next && (outName = 0, AudioComponentCopyName(Next, &outName), outName))
  {
    v6 = [(__CFString *)outName componentsSeparatedByString:@": "];
    CFRelease(outName);
    if (v6)
    {
      v6 = [v6 objectAtIndex:0];
    }
  }

  else
  {
    v6 = 0;
  }

  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  return v6;
}

- (NSString)name
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->super._impl);
  v3 = (*(*self->super._impl + 256))();
  v4 = *v3;
  inDesc.componentFlagsMask = *(v3 + 16);
  *&inDesc.componentType = v4;
  Next = AudioComponentFindNext(0, &inDesc);
  if (Next && (outName = 0, AudioComponentCopyName(Next, &outName), outName))
  {
    v6 = [(__CFString *)outName componentsSeparatedByString:@": "];
    CFRelease(outName);
    if (v6)
    {
      v6 = [v6 objectAtIndex:1];
    }
  }

  else
  {
    v6 = 0;
  }

  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  return v6;
}

- (AudioComponentDescription)audioComponentDescription
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super._impl);
  result = (*(*self->super._impl + 256))(self->super._impl);
  *retstr = *result;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    v6 = v7;

    std::recursive_mutex::unlock(v6);
  }

  return result;
}

- (AudioUnit)audioUnit
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = (*(*self->super._impl + 224))(self->super._impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (BOOL)loadAudioUnitPresetAtURL:(NSURL *)url error:(NSError *)outError
{
  if (outError)
  {
    *outError = 0;
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:url];
  if (!v13)
  {
    if (outError)
    {
      v9 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A768];
      v8 = -50;
      goto LABEL_9;
    }

    return 0;
  }

  v6 = (*(*self->super._impl + 160))(self->super._impl, 0, 0, 0, &v13, 8);
  if (v6)
  {
    if (outError)
    {
      v7 = *MEMORY[0x1E696A768];
      v8 = v6;
      v9 = MEMORY[0x1E696ABC0];
LABEL_9:
      v10 = [v9 errorWithDomain:v7 code:v8 userInfo:0];
      result = 0;
      *outError = v10;
      return result;
    }

    return 0;
  }

  v12.mAudioUnit = [(AVAudioUnit *)self audioUnit];
  v12.mParameterID = -1;
  AUParameterListenerNotify(0, 0, &v12);
  return 1;
}

+ (void)instantiateWithComponentDescription:(AudioComponentDescription *)audioComponentDescription options:(AudioComponentInstantiationOptions)options completionHandler:(void *)completionHandler
{
  v8 = objc_opt_class();
  Next = AudioComponentFindNext(0, audioComponentDescription);
  if (Next)
  {
    inCompletionHandler[0] = MEMORY[0x1E69E9820];
    inCompletionHandler[1] = 3221225472;
    inCompletionHandler[2] = __77__AVAudioUnit_instantiateWithComponentDescription_options_completionHandler___block_invoke;
    inCompletionHandler[3] = &unk_1E7EF6918;
    v13 = *&audioComponentDescription->componentType;
    componentFlagsMask = audioComponentDescription->componentFlagsMask;
    inCompletionHandler[4] = v8;
    inCompletionHandler[5] = completionHandler;
    AudioComponentInstantiate(Next, options, inCompletionHandler);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-3000 userInfo:0];
    v11 = *(completionHandler + 2);

    v11(completionHandler, 0, v10);
  }
}

void __77__AVAudioUnit_instantiateWithComponentDescription_options_completionHandler___block_invoke(uint64_t a1, OpaqueAudioComponentInstance *a2, int a3)
{
  if (a2)
  {
    operator new();
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:0];
  v5 = *(v3 + 16);

  v5(v3, 0, v4);
}

@end