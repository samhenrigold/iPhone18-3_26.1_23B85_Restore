@interface TTSSpeechRequest
- (TTSSpeechRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTSSpeechRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AD98];
  text = [(TTSSpeechRequest *)self text];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(text, "length")}];
  languageCode = self->_languageCode;
  voice = [(TTSSpeechRequest *)self voice];
  footprint = [voice footprint];
  if ((footprint - 1) > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E78806C0[footprint - 1];
  }

  v12 = [v3 stringWithFormat:@"[%@ %p] %@ language: %@ footprint: %@ rate: %lf pitch: %lf volume: %lf", v4, self, v7, languageCode, v11, *&self->_rate, *&self->_pitch, *&self->_volume];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  jobIdentifier = self->_jobIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:jobIdentifier forKey:@"jobIdentifier"];
  [coderCopy encodeObject:self->_languageCode forKey:@"languageCode"];
  [coderCopy encodeObject:self->_voice forKey:@"voice"];
  [coderCopy encodeInteger:self->_gender forKey:@"gender"];
  [coderCopy encodeDouble:@"rate" forKey:self->_rate];
  [coderCopy encodeDouble:@"pitch" forKey:self->_pitch];
  [coderCopy encodeDouble:@"volume" forKey:self->_volume];
  [coderCopy encodeBool:self->_maintainsInput forKey:@"maintainsInput"];
  [coderCopy encodeBool:self->_audioSessionIDIsValid forKey:@"audioSessionIDIsValid"];
  [coderCopy encodeInt32:self->_audioSessionID forKey:@"audioSessionID"];
  [coderCopy encodeInt32:self->_audioQueueFlags forKey:@"audioQueueFlags"];
  [coderCopy encodeObject:self->_synthesisProviderVoice forKey:@"synthesisProviderVoice"];
}

- (TTSSpeechRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TTSSpeechRequest;
  v5 = [(TTSSpeechRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageCode"];
    [(TTSSpeechRequest *)v5 setLanguageCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voice"];
    [(TTSSpeechRequest *)v5 setVoice:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jobIdentifier"];
    [(TTSSpeechRequest *)v5 setJobIdentifier:v8];

    -[TTSSpeechRequest setGender:](v5, "setGender:", [coderCopy decodeIntegerForKey:@"gender"]);
    [coderCopy decodeDoubleForKey:@"rate"];
    [(TTSSpeechRequest *)v5 setRate:?];
    [coderCopy decodeDoubleForKey:@"pitch"];
    [(TTSSpeechRequest *)v5 setPitch:?];
    [coderCopy decodeDoubleForKey:@"volume"];
    [(TTSSpeechRequest *)v5 setVolume:?];
    -[TTSSpeechRequest setMaintainsInput:](v5, "setMaintainsInput:", [coderCopy decodeBoolForKey:@"maintainsInput"]);
    -[TTSSpeechRequest setAudioSessionIDIsValid:](v5, "setAudioSessionIDIsValid:", [coderCopy decodeBoolForKey:@"audioSessionIDIsValid"]);
    -[TTSSpeechRequest setAudioSessionID:](v5, "setAudioSessionID:", [coderCopy decodeInt32ForKey:@"audioSessionID"]);
    -[TTSSpeechRequest setAudioQueueFlags:](v5, "setAudioQueueFlags:", [coderCopy decodeInt32ForKey:@"audioQueueFlags"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"synthesisProviderVoice"];
    [(TTSSpeechRequest *)v5 setSynthesisProviderVoice:v9];
  }

  return v5;
}

@end