@interface AXLCTranscriber
+ (_TtC17LiveTranscription15AXLCTranscriber)shared;
+ (id)formattedLocaleIDsFrom:(id)from;
+ (void)defaultLocaleWithCompletionHandler:(id)handler;
+ (void)installedLocalesWithCompletionHandler:(id)handler;
+ (void)supportedLocalesWithCompletionHandler:(id)handler;
- (void)addAudioPCMBuffer:(id)buffer for:(id)for;
- (void)resetErrorStates;
- (void)startTranscriptionFor:(id)for audioFormat:(id)format transcriberResult:(id)result;
- (void)stopTranscriptionFor:(id)for;
@end

@implementation AXLCTranscriber

+ (_TtC17LiveTranscription15AXLCTranscriber)shared
{
  if (qword_27F825640 != -1)
  {
    swift_once();
  }

  v3 = qword_27F825830;

  return v3;
}

+ (void)supportedLocalesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_256056170;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256056178;
  v12[5] = v11;
  sub_25604B208(0, 0, v7, &unk_256056180, v12);
}

+ (void)installedLocalesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_256056150;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256056158;
  v12[5] = v11;
  sub_25604B208(0, 0, v7, &unk_256056160, v12);
}

+ (void)defaultLocaleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_256056108;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256055C60;
  v12[5] = v11;
  sub_25604B208(0, 0, v7, &unk_256055C68, v12);
}

+ (id)formattedLocaleIDsFrom:(id)from
{
  sub_25605347C();
  v3 = sub_25605375C();
  _s17LiveTranscription15AXLCTranscriberC18formattedLocaleIDs4fromSaySSGSay10Foundation0E0VG_tFZ_0(v3);

  v4 = sub_25605374C();

  return v4;
}

- (void)startTranscriptionFor:(id)for audioFormat:(id)format transcriberResult:(id)result
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(result);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_2560537AC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = for;
  v15[6] = format;
  v15[7] = sub_256050CA4;
  v15[8] = v13;
  forCopy = for;
  formatCopy = format;
  selfCopy = self;
  sub_25603E5A8(0, 0, v11, &unk_2560560F8, v15);
}

- (void)stopTranscriptionFor:(id)for
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_2560537AC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = for;
  forCopy = for;
  selfCopy = self;
  sub_25603E5A8(0, 0, v7, &unk_2560560F0, v9);
}

- (void)addAudioPCMBuffer:(id)buffer for:(id)for
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = buffer;
  v11[6] = for;
  bufferCopy = buffer;
  forCopy = for;
  selfCopy = self;
  sub_25603E5A8(0, 0, v9, &unk_2560560E8, v11);
}

- (void)resetErrorStates
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2560537AC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_25603E5A8(0, 0, v5, &unk_2560560E0, v7);
}

@end