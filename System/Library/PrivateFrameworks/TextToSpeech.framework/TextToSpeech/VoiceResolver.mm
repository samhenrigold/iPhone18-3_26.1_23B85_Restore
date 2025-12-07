@interface VoiceResolver
+ (_TtC12TextToSpeech13VoiceResolver)shared;
+ (void)setShared:(id)shared;
- (void)currentLocaleIdentifiersWithCompletionHandler:(id)handler;
- (void)currentSystemLocaleIdentifierWithCompletionHandler:(id)handler;
- (void)currentSystemLocaleWithCompletionHandler:(id)handler;
- (void)fallbackForVoice:(TTSSpeechVoice *)voice completionHandler:(id)handler;
- (void)voiceForIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)voiceForIdentifier:(id)identifier preferringLanguage:(id)language completionHandler:(id)handler;
- (void)voiceForLocale:(NSLocale *)locale completionHandler:(id)handler;
- (void)voiceForLocaleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation VoiceResolver

+ (_TtC12TextToSpeech13VoiceResolver)shared
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return v2;
}

+ (void)setShared:(id)shared
{
  v4 = qword_1EB390CF0;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB390CF8 = shared;
}

- (void)currentSystemLocaleWithCompletionHandler:(id)handler
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A958C720;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A958C728;
  v12[5] = v11;

  sub_1A93CC8FC(0, 0, v7, &unk_1A958C730, v12);
}

- (void)currentLocaleIdentifiersWithCompletionHandler:(id)handler
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->executor;
  v11 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = sub_1A9431A3C;
  v13[3] = v9;
  v13[4] = self;

  sub_1A942E63C(0, 0, v10, v11, v7, &unk_1A958C710, v13);
}

- (void)currentSystemLocaleIdentifierWithCompletionHandler:(id)handler
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A958C6F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A958C700;
  v12[5] = v11;

  sub_1A93CC8FC(0, 0, v7, &unk_1A958C708, v12);
}

- (void)voiceForIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A958C6D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A958C6E0;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_1A93CC8FC(0, 0, v9, &unk_1A958C6E8, v14);
}

- (void)voiceForLocale:(NSLocale *)locale completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = locale;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A958C6B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A958C6C0;
  v14[5] = v13;
  localeCopy = locale;

  sub_1A93CC8FC(0, 0, v9, &unk_1A958C6C8, v14);
}

- (void)voiceForLocaleIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = _Block_copy(handler);
  v10 = sub_1A957C0F8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = *self->executor;
  v15 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v16 = sub_1A957C688();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = sub_1A9431DEC;
  v17[3] = v13;
  v17[4] = self;
  v17[5] = v10;
  v17[6] = v12;

  sub_1A942E63C(0, 0, v14, v15, v8, &unk_1A958C6A8, v17);
}

- (void)voiceForIdentifier:(id)identifier preferringLanguage:(id)language completionHandler:(id)handler
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(handler);
  if (!identifier)
  {
    v14 = 0;
    if (language)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  identifier = sub_1A957C0F8();
  v14 = v13;
  if (!language)
  {
    goto LABEL_5;
  }

LABEL_3:
  language = sub_1A957C0F8();
  v16 = v15;
LABEL_6:
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = *self->executor;
  v19 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v20 = sub_1A957C688();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = sub_1A9431740;
  v21[3] = v17;
  v21[4] = self;
  v21[5] = identifier;
  v21[6] = v14;
  v21[7] = language;
  v21[8] = v16;

  sub_1A942E63C(0, 0, v18, v19, v11, &unk_1A958C690, v21);
}

- (void)fallbackForVoice:(TTSSpeechVoice *)voice completionHandler:(id)handler
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = voice;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A958C660;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A958C670;
  v14[5] = v13;
  voiceCopy = voice;

  sub_1A93CC8FC(0, 0, v9, &unk_1A958C680, v14);
}

@end