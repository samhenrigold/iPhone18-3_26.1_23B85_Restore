@interface AVAudioSecureSession
- (AVAudioSecureSession)initWithIsolatedAudioUseCaseID:(unsigned int)d;
- (BOOL)setCategory:(id)category mode:(id)mode options:(unint64_t)options error:(id *)error;
- (NSArray)availableCategories;
- (NSArray)availableModes;
@end

@implementation AVAudioSecureSession

- (AVAudioSecureSession)initWithIsolatedAudioUseCaseID:(unsigned int)d
{
  v3 = *&d;
  v8.receiver = self;
  v8.super_class = AVAudioSecureSession;
  v4 = [(AVAudioSecureSession *)&v8 init];
  if (v4)
  {
    v5 = [[AVAudioSession alloc] initWithIsolatedAudioUseCaseID:v3 publishingSession:v4];
    innerSession = v4->_innerSession;
    v4->_innerSession = v5;
  }

  return v4;
}

- (NSArray)availableCategories
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"AVAudioSessionCategoryRecord";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)setCategory:(id)category mode:(id)mode options:(unint64_t)options error:(id *)error
{
  categoryCopy = category;
  modeCopy = mode;
  if (options)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [(AVAudioSession *)self->_innerSession setCategory:categoryCopy mode:modeCopy options:-1 error:error];
  }

  return v12;
}

- (NSArray)availableModes
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"AVAudioSessionModeDefault";
  v4[1] = @"AVAudioSessionModeSpeechRecognition";
  v4[2] = @"AVAudioSessionModeVoiceChat";
  v4[3] = @"AVAudioSessionModeVideoChat";
  v4[4] = @"AVAudioSessionModeGameChat";
  v4[5] = @"AVAudioSessionModeSoundRecognition";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];

  return v2;
}

@end