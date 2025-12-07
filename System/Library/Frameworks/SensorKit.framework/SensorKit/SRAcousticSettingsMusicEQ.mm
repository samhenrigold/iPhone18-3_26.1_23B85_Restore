@interface SRAcousticSettingsMusicEQ
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRAcousticSettingsMusicEQ)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRAcousticSettingsMusicEQ)initWithCoder:(id)coder;
- (SRAcousticSettingsMusicEQ)initWithSoundCheckEnabled:(BOOL)enabled lateNightModeEnabled:(BOOL)modeEnabled;
- (id)binarySampleRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRAcousticSettingsMusicEQ

- (SRAcousticSettingsMusicEQ)initWithSoundCheckEnabled:(BOOL)enabled lateNightModeEnabled:(BOOL)modeEnabled
{
  v7.receiver = self;
  v7.super_class = SRAcousticSettingsMusicEQ;
  result = [(SRAcousticSettingsMusicEQ *)&v7 init];
  if (result)
  {
    result->_soundCheckEnabled = enabled;
    result->_lateNightModeEnabled = modeEnabled;
  }

  return result;
}

- (SRAcousticSettingsMusicEQ)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v15 = *MEMORY[0x1E69E9840];
  if ([representation length])
  {
    v12.receiver = self;
    v12.super_class = SRAcousticSettingsMusicEQ;
    result = [(SRAcousticSettingsMusicEQ *)&v12 init];
    if (!result)
    {
      return result;
    }

    self = result;
    v11 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v11];
    if (v8)
    {
      v9 = v8;

      return v9;
    }

    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v11;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }
  }

  return 0;
}

- (id)binarySampleRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (!v4)
  {
    v5 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  soundCheckEnabled = self->_soundCheckEnabled;
  if (soundCheckEnabled != [equal isSoundCheckEnabled])
  {
    return 0;
  }

  lateNightModeEnabled = self->_lateNightModeEnabled;
  return lateNightModeEnabled == [equal isLateNightModeEnabled];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {Music EQ Settings soundCheckEnabled: %d, lateNightModeEnabled: %d}", NSStringFromClass(v4), self, -[SRAcousticSettingsMusicEQ isSoundCheckEnabled](self, "isSoundCheckEnabled"), -[SRAcousticSettingsMusicEQ isLateNightModeEnabled](self, "isLateNightModeEnabled")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeBool:-[SRAcousticSettingsMusicEQ isSoundCheckEnabled](self forKey:{"isSoundCheckEnabled"), @"soundCheckEnabled"}];
  isLateNightModeEnabled = [(SRAcousticSettingsMusicEQ *)self isLateNightModeEnabled];

  [coder encodeBool:isLateNightModeEnabled forKey:@"lateNightModeEnabled"];
}

- (SRAcousticSettingsMusicEQ)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeBoolForKey:@"soundCheckEnabled"];
  v7 = [coder decodeBoolForKey:@"lateNightModeEnabled"];

  v8 = [SRAcousticSettingsMusicEQ alloc];

  return [(SRAcousticSettingsMusicEQ *)v8 initWithSoundCheckEnabled:v6 lateNightModeEnabled:v7];
}

@end