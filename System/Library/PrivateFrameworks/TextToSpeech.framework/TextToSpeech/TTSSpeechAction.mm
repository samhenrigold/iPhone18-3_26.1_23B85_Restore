@interface TTSSpeechAction
+ (id)actionWithAttributedString:(id)string shouldQueue:(BOOL)queue;
+ (id)actionWithSSMLRepresentation:(id)representation shouldQueue:(BOOL)queue;
+ (id)actionWithString:(id)string shouldQueue:(BOOL)queue;
- (TTSSpeechAction)init;
- (id)_detectLanguageFromContent;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)preprocessAction;
@end

@implementation TTSSpeechAction

- (void)dealloc
{
  utterance = [(TTSSpeechAction *)self utterance];
  [utterance setAction:0];

  v4.receiver = self;
  v4.super_class = TTSSpeechAction;
  [(TTSSpeechAction *)&v4 dealloc];
}

+ (id)actionWithString:(id)string shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  stringCopy = string;
  v6 = objc_alloc_init(TTSSpeechAction);
  [(TTSSpeechAction *)v6 setString:stringCopy];

  [(TTSSpeechAction *)v6 setShouldQueue:queueCopy];

  return v6;
}

+ (id)actionWithAttributedString:(id)string shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  stringCopy = string;
  v6 = objc_alloc_init(TTSSpeechAction);
  [(TTSSpeechAction *)v6 setAttributedString:stringCopy];

  [(TTSSpeechAction *)v6 setShouldQueue:queueCopy];

  return v6;
}

+ (id)actionWithSSMLRepresentation:(id)representation shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  representationCopy = representation;
  v6 = AXLogSpeechSynthesis();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9579198();
  }

  v7 = objc_alloc_init(TTSSpeechAction);
  [(TTSSpeechAction *)v7 setString:representationCopy];
  [(TTSSpeechAction *)v7 setSsmlRepresentation:representationCopy];
  [(TTSSpeechAction *)v7 setShouldQueue:queueCopy];

  return v7;
}

- (TTSSpeechAction)init
{
  v9.receiver = self;
  v9.super_class = TTSSpeechAction;
  result = [(TTSSpeechAction *)&v9 init];
  __asm { FMOV            V0.2D, #1.0 }

  *&result->_pitch = _Q0;
  result->_shouldPrecomposeString = 1;
  v8 = 0.5;
  if (byte_1EB3910B0)
  {
    v8 = 4.0;
  }

  result->_speakingRate = v8;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TTSSpeechAction);
  string = [(TTSSpeechAction *)self string];
  v6 = [string copy];
  [(TTSSpeechAction *)v4 setString:v6];

  language = [(TTSSpeechAction *)self language];
  v8 = [language copy];
  [(TTSSpeechAction *)v4 setLanguage:v8];

  return v4;
}

- (void)preprocessAction
{
  if (self->_shouldPrecomposeString)
  {
    string = [(TTSSpeechAction *)self string];
    precomposedStringWithCanonicalMapping = [string precomposedStringWithCanonicalMapping];
    [(TTSSpeechAction *)self setString:precomposedStringWithCanonicalMapping];

    ssmlRepresentation = [(TTSSpeechAction *)self ssmlRepresentation];
    precomposedStringWithCanonicalMapping2 = [ssmlRepresentation precomposedStringWithCanonicalMapping];
    [(TTSSpeechAction *)self setSsmlRepresentation:precomposedStringWithCanonicalMapping2];
  }

  language = [(TTSSpeechAction *)self language];
  if (language)
  {
    goto LABEL_6;
  }

  if (self->_shouldDetectLanguage)
  {
    language = [(TTSSpeechAction *)self _detectLanguageFromContent];
    [(TTSSpeechAction *)self setLanguage:language];
LABEL_6:
  }

  shouldProcessEmoji = self->_shouldProcessEmoji;
  if (shouldProcessEmoji || self->_shouldProcessEmoticons)
  {
    if (self->_shouldProcessEmoticons || !shouldProcessEmoji)
    {
      v9 = shouldProcessEmoji | 2;
    }

    else
    {
      v9 = self->_shouldProcessEmoji;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    emojiRangeReplacements = self->_emojiRangeReplacements;
    self->_emojiRangeReplacements = v10;

    string2 = [(TTSSpeechAction *)self string];
    language2 = [(TTSSpeechAction *)self language];
    voiceIdentifier = [(TTSSpeechAction *)self voiceIdentifier];
    v15 = TTSSpeechTransformTextWithLanguageAndVoiceIdentifier(string2, v9, language2, voiceIdentifier, self->_emojiRangeReplacements);
    [(TTSSpeechAction *)self setProcessedString:v15];
  }

  ssmlRepresentation2 = [(TTSSpeechAction *)self ssmlRepresentation];

  if (ssmlRepresentation2)
  {
    v19 = objc_alloc_init(_TtC12TextToSpeech15SSMLVoiceTagger);
    ssmlRepresentation3 = [(TTSSpeechAction *)self ssmlRepresentation];
    v18 = [(SSMLVoiceTagger *)v19 tagSSML:ssmlRepresentation3];
    [(TTSSpeechAction *)self setTaggedSSML:v18];
  }
}

- (id)_detectLanguageFromContent
{
  v24 = *MEMORY[0x1E69E9840];
  string = [(TTSSpeechAction *)self string];

  if (!string)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"content is nil, language detection not possible"];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechAction _detectLanguageFromContent]", 231, v8];
    if (qword_1ED970350 != -1)
    {
      sub_1A957925C();
    }

    v10 = qword_1ED970348;
    if (!os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

LABEL_10:
    v11 = v9;
    v12 = v10;
    *buf = 136446210;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&dword_1A9324000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  string2 = [(TTSSpeechAction *)self string];
  v5 = [string2 length];

  if (v5 <= 0x15D)
  {
    v6 = MEMORY[0x1E696AEC0];
    string3 = [(TTSSpeechAction *)self string];
    v8 = [v6 stringWithFormat:@"Not enough characters (%lu) to accurately detect language", objc_msgSend(string3, "length")];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechAction _detectLanguageFromContent]", 238, v8];
    if (qword_1ED970350 != -1)
    {
      sub_1A9579248();
    }

    v10 = qword_1ED970348;
    if (!os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  string4 = [(TTSSpeechAction *)self string];
  string5 = [(TTSSpeechAction *)self string];
  v26.length = [string5 length];
  v26.location = 0;
  v8 = CFStringTokenizerCopyBestStringLanguage(string4, v26);

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not determine content language, returning default"];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechAction _detectLanguageFromContent]", 245, v9];
    if (qword_1ED970350 != -1)
    {
      sub_1A9579234();
    }

    v19 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v12;
      v21 = v19;
      *buf = 136446210;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&dword_1A9324000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v17 = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  v18 = v17;
  if (v17 && [v17 rangeOfString:v8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

LABEL_13:

  return v13;
}

@end