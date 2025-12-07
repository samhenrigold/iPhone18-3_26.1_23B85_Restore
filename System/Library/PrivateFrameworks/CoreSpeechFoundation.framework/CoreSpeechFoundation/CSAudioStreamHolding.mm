@interface CSAudioStreamHolding
- (CSAudioStreamHolding)initWithName:(id)name clientIdentity:(unint64_t)identity;
- (void)dealloc;
@end

@implementation CSAudioStreamHolding

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    name = [(CSAudioStreamHolding *)self name];
    *buf = 136315394;
    v8 = "[CSAudioStreamHolding dealloc]";
    v9 = 2114;
    v10 = name;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Dealloc audioStreamHolding : %{public}@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = CSAudioStreamHolding;
  [(CSAudioStreamHolding *)&v6 dealloc];
}

- (CSAudioStreamHolding)initWithName:(id)name clientIdentity:(unint64_t)identity
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CSAudioStreamHolding;
  v8 = [(CSAudioStreamHolding *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_clientIdentity = identity;
  }

  return v9;
}

@end