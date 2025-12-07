@interface RDSAPISwiftSpeechAnalyzer
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)init;
- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)initWithDelegate:(id)delegate locale:(id)locale highPriority:(BOOL)priority farField:(BOOL)field supportEmojiRecognition:(BOOL)recognition;
- (void)addAudioSamplesPCMWithAudio:(id)audio;
- (void)addAudioSamplesWithAudio:(id)audio;
- (void)attachAnalysisContextWithCompletionHandler:(id)handler;
- (void)attachTranscriberWithTask:(NSString *)task completionHandler:(id)handler;
- (void)cancelRecognition;
- (void)endAudio;
- (void)setRecognitionReplacementsWithUseRecognitionReplacements:(BOOL)replacements completionHandler:(id)handler;
- (void)setTextWithLeftContextText:(id)text;
- (void)startRecognitionFromFile;
- (void)startRecognitionWithTranscriberModuleWrapper:(id)wrapper;
- (void)useRecognitionReplacements;
@end

@implementation RDSAPISwiftSpeechAnalyzer

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)initWithDelegate:(id)delegate locale:(id)locale highPriority:(BOOL)priority farField:(BOOL)field supportEmojiRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  fieldCopy = field;
  priorityCopy = priority;
  delegateCopy = delegate;
  localeCopy = locale;
  v13 = sub_10006CC3C(delegateCopy, localeCopy, priorityCopy, fieldCopy, recognitionCopy);

  return v13;
}

- (void)attachAnalysisContextWithCompletionHandler:(id)handler
{
  v5 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_1000C9C34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D2000;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D2008;
  v14[5] = v13;
  selfCopy = self;
  sub_100068BCC(0, 0, v9, &unk_1000D2010, v14);
}

- (void)attachTranscriberWithTask:(NSString *)task completionHandler:(id)handler
{
  v7 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = task;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_1000C9C34();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000D1FE0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000D1FE8;
  v16[5] = v15;
  taskCopy = task;
  selfCopy = self;
  sub_100068BCC(0, 0, v11, &unk_1000D1FF0, v16);
}

- (void)setRecognitionReplacementsWithUseRecognitionReplacements:(BOOL)replacements completionHandler:(id)handler
{
  v7 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v7 - 8, v8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = replacements;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_1000C9C34();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000D1F98;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000D1FA8;
  v16[5] = v15;
  selfCopy = self;
  sub_100068BCC(0, 0, v11, &unk_1000D1FB8, v16);
}

- (void)cancelRecognition
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.cancelRecognition()();
}

- (void)setTextWithLeftContextText:(id)text
{
  v4 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v4 - 8, v5, v6);
  v8 = &v15 - v7;
  v9 = sub_1000C9B04();
  v11 = v10;
  v12 = sub_1000C9C34();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = v9;
  v13[6] = v11;
  selfCopy = self;
  sub_100055D64(0, 0, v8, &unk_1000D1F88, v13);
}

- (void)useRecognitionReplacements
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.useRecognitionReplacements()();
}

- (void)addAudioSamplesWithAudio:(id)audio
{
  v4 = sub_1000C9B74();
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.addAudioSamples(audio:)(v4);
}

- (void)endAudio
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.endAudio()();
}

- (void)addAudioSamplesPCMWithAudio:(id)audio
{
  v5 = sub_1000C98A4();
  __chkstk_darwin(v5 - 8, v6, v7);
  v8 = sub_100052CBC(&qword_10010DF48, &qword_1000D1E00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10, v11);
  v13 = &v22 - v12;
  v14 = sub_100052CBC(&qword_10010DF68, &qword_1000D1E88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16, v17);
  v19 = &v22 - v18;
  (*(v9 + 16))(v13, self + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__inputStreamBuilder, v8);
  audioCopy = audio;
  selfCopy = self;
  CMTimeMake(&v23, 0, 1);
  sub_1000C9884();
  sub_1000C9C54();

  (*(v9 + 8))(v13, v8);
  (*(v15 + 8))(v19, v14);
}

- (void)startRecognitionWithTranscriberModuleWrapper:(id)wrapper
{
  v5 = sub_100052CBC(&qword_10010DCC0, &qword_1000D1B20);
  __chkstk_darwin(v5 - 8, v6, v7);
  v9 = &v14 - v8;
  v10 = sub_1000C9C34();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = wrapper;
  selfCopy = self;
  wrapperCopy = wrapper;
  *(&selfCopy->super.isa + OBJC_IVAR____TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer__recognitionTask) = sub_100055D64(0, 0, v9, &unk_1000D1F70, v11);
}

- (void)startRecognitionFromFile
{
  selfCopy = self;
  RDSAPISwiftSpeechAnalyzer.startRecognitionFromFile()();
}

- (_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end