@interface TTSAURenderer
+ (void)formatForVoice:(AVSpeechSynthesisProviderVoice *)voice completionHandler:(id)handler;
@end

@implementation TTSAURenderer

+ (void)formatForVoice:(AVSpeechSynthesisProviderVoice *)voice completionHandler:(id)handler
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
  v13[4] = &unk_1A9589908;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A9589918;
  v14[5] = v13;
  voiceCopy = voice;
  sub_1A93CC8FC(0, 0, v9, &unk_1A9589928, v14);
}

@end