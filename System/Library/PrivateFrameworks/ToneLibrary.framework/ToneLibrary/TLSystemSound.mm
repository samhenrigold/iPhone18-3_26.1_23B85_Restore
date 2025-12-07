@interface TLSystemSound
- (BOOL)isValid;
- (TLSystemSound)initWithSoundFileURL:(id)l soundID:(unsigned int)d requiresLongFormPlayback:(BOOL)playback;
- (id)_description;
- (id)description;
- (unsigned)soundID;
- (void)_ensureUnderlyingSoundCreated;
- (void)_prepareForDealloc;
- (void)beginRequiringUnderlyingSoundLoaded;
- (void)dealloc;
@end

@implementation TLSystemSound

- (TLSystemSound)initWithSoundFileURL:(id)l soundID:(unsigned int)d requiresLongFormPlayback:(BOOL)playback
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = TLSystemSound;
  v9 = [(TLSystemSound *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [lCopy copy];
    soundFileURL = v10->_soundFileURL;
    v10->_soundFileURL = v11;

    v10->_soundID = d;
    v10->_requiresLongFormPlayback = playback;
  }

  return v10;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(TLSystemSound *)self _prepareForDealloc];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = TLSystemSound;
  [(TLSystemSound *)&v3 dealloc];
}

- (void)_prepareForDealloc
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_shouldDisposeOfSoundID)
  {
    v3 = AudioServicesDisposeSystemSoundID(self->_soundID);
    v4 = v3;
    v6 = TLLogPlayback(v3, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _description = [(TLSystemSound *)self _description];
      soundID = self->_soundID;
      v9 = 138543874;
      v10 = _description;
      v11 = 2048;
      v12 = soundID;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: -_prepareForDealloc. AudioServicesDisposeSystemSoundID for soundID = %lu returned %ld.", &v9, 0x20u);
    }
  }
}

- (id)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  _description = [(TLSystemSound *)self _description];
  os_unfair_lock_unlock(&self->_lock);

  return _description;
}

- (id)_description
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  if (self->_soundFileURL)
  {
    [v6 appendFormat:@"; soundFileURL = %@", self->_soundFileURL];
  }

  soundID = self->_soundID;
  if (soundID == kSystemSoundID_InvalidTone)
  {
    v8 = @"; wasSoundCreated = NO";
LABEL_7:
    [v6 appendString:v8];
    goto LABEL_9;
  }

  if (soundID == kSystemSoundID_NoneTone)
  {
    v8 = @"; soundID = kSystemSoundID_NoneTone";
    goto LABEL_7;
  }

  [v6 appendFormat:@"; soundID = %lu", self->_soundID];
LABEL_9:
  if (self->_requiresLongFormPlayback)
  {
    [v6 appendString:@"; requiresLongFormPlayback = YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isValid
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  soundID = [(TLSystemSound *)self soundID];
  return soundID != kSystemSoundID_NoneTone && soundID != kSystemSoundID_InvalidTone;
}

- (unsigned)soundID
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(TLSystemSound *)self _ensureUnderlyingSoundCreated];
  soundID = self->_soundID;
  os_unfair_lock_unlock(&self->_lock);
  return soundID;
}

- (void)beginRequiringUnderlyingSoundLoaded
{
  v6 = *MEMORY[0x1E69E9840];
  _description = [self _description];
  v4 = 138543362;
  v5 = _description;
  _os_log_debug_impl(&dword_1D9356000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: -beginRequiringUnderlyingSoundLoaded.", &v4, 0xCu);
}

- (void)_ensureUnderlyingSoundCreated
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_soundID == kSystemSoundID_InvalidTone)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = v3;
    soundFileURL = self->_soundFileURL;
    if (soundFileURL)
    {
      [v3 setObject:soundFileURL forKey:*MEMORY[0x1E695A898]];
    }

    if (self->_requiresLongFormPlayback)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695A8A0]];
    }

    if (![v4 count])
    {
      goto LABEL_10;
    }

    SystemSoundIDWithOptions = AudioServicesCreateSystemSoundIDWithOptions();
    v7 = SystemSoundIDWithOptions;
    v9 = TLLogPlayback(SystemSoundIDWithOptions, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _description = [(TLSystemSound *)self _description];
      v11 = self->_soundFileURL;
      soundID = self->_soundID;
      v13 = 138544130;
      v14 = _description;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = soundID;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_ensureUnderlyingSoundCreated. AudioServicesCreateSystemSoundIDWithOptions for URL %{public}@ produced soundID = %lu and returned %ld.", &v13, 0x2Au);
    }

    if (!v7)
    {
      self->_shouldDisposeOfSoundID = 1;
    }

    else
    {
LABEL_10:
      self->_soundID = kSystemSoundID_NoneTone;
    }
  }
}

@end