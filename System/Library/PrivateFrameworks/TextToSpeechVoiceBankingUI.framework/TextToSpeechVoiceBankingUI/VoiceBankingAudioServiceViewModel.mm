@interface VoiceBankingAudioServiceViewModel
- (void)applicationDidResign;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
@end

@implementation VoiceBankingAudioServiceViewModel

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_26EF3B30C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_26EF3B2DC();
  selfCopy = self;
  v11 = sub_26EF3B2CC();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = successfully;
  *(v12 + 40) = selfCopy;
  sub_26EE2C388(0, 0, v8, &unk_26EF44460, v12);
}

- (void)applicationDidResign
{
  selfCopy = self;
  sub_26EF1E0A0();
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  synthesizerCopy = synthesizer;
  utteranceCopy = utterance;
  selfCopy = self;
  sub_26EF214E0();
}

@end