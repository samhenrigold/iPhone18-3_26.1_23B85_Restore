@interface AXLiveCaptions
+ (AXLiveCaptions)shared;
+ (id)formattedLocaleIDsFrom:(id)from;
+ (void)defaultLocaleWithCompletion:(id)completion;
+ (void)installedLocalesWithCompletion:(id)completion;
+ (void)supportedLocalesWithCompletion:(id)completion;
- (AXLiveCaptions)init;
- (BOOL)startWithSource:(int64_t)source locale:(id)locale sharedRoute:(BOOL)route excludePIDs:(id)ds error:(id *)error transcriptionResult:(id)result;
- (BOOL)stop:(int64_t)stop error:(id *)error;
- (void)liveCaptionsResult:(id)result;
@end

@implementation AXLiveCaptions

+ (AXLiveCaptions)shared
{
  if (qword_27F825638 != -1)
  {
    swift_once();
  }

  v3 = qword_27F825700;

  return v3;
}

+ (void)supportedLocalesWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_256055C98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256055CA0;
  v12[5] = v11;
  sub_25604B208(0, 0, v7, &unk_256055CA8, v12);
}

+ (void)installedLocalesWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_256055C78;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256055C80;
  v12[5] = v11;
  sub_25604B208(0, 0, v7, &unk_256055C88, v12);
}

+ (void)defaultLocaleWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2560537AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_256055C58;
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
  _s17LiveTranscription14AXLiveCaptionsC18formattedLocaleIDs4fromSaySSGSay10Foundation0F0VG_tFZ_0(v3);

  v4 = sub_25605374C();

  return v4;
}

- (AXLiveCaptions)init
{
  *(&self->super.isa + OBJC_IVAR___AXLiveCaptions_clients) = MEMORY[0x277D84F98];
  initWithDelegate_ = [objc_allocWithZone(AXLTSpeechTranscriber) initWithDelegate_];
  *(&self->super.isa + OBJC_IVAR___AXLiveCaptions_micTranscriber) = initWithDelegate_;
  sharedInstance = [objc_opt_self() sharedInstance];
  *(&self->super.isa + OBJC_IVAR___AXLiveCaptions_audioTranscriber) = sharedInstance;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AXLiveCaptions();
  return [(AXLiveCaptions *)&v6 init];
}

- (BOOL)startWithSource:(int64_t)source locale:(id)locale sharedRoute:(BOOL)route excludePIDs:(id)ds error:(id *)error transcriptionResult:(id)result
{
  v25[0] = error;
  routeCopy = route;
  v14 = sub_25605347C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v25 - v19;
  v21 = _Block_copy(result);
  if (locale)
  {
    sub_25605342C();
    (*(v15 + 32))(v20, v17, v14);
    (*(v15 + 56))(v20, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v20, 1, 1, v14);
  }

  if (ds)
  {
    sub_256036FD0();
    sub_25605375C();
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  selfCopy = self;
  sub_2560362AC(source, v20, routeCopy, sub_256036FC8, v22);
  sub_256033238(v20, &qword_27F8256A8, &qword_2560559A0);

  return 1;
}

- (BOOL)stop:(int64_t)stop error:(id *)error
{
  selfCopy = self;
  sub_256034FB0(stop);

  return 1;
}

- (void)liveCaptionsResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  AXLiveCaptions.liveCaptionsResult(_:)(resultCopy);
}

@end