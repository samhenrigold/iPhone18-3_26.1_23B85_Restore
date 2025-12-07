@interface STSpeechTranslatorConfiguration
- (BOOL)omitTranslatedAudio;
- (NSURL)offlineMTModel;
- (STSpeechTranslatorConfiguration)init;
- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale;
- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale offlineMTModel:(id)model taskHint:(int64_t)hint;
- (int64_t)taskHint;
- (void)encodeWithCoder:(id)coder;
- (void)setOmitTranslatedAudio:(BOOL)audio;
- (void)setTaskHint:(int64_t)hint;
@end

@implementation STSpeechTranslatorConfiguration

- (BOOL)omitTranslatedAudio
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOmitTranslatedAudio:(BOOL)audio
{
  v5 = OBJC_IVAR___STSpeechTranslatorConfiguration_omitTranslatedAudio;
  swift_beginAccess();
  *(&self->super.isa + v5) = audio;
}

- (NSURL)offlineMTModel
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  selfCopy = self;
  _offlineMTModel = [(STSpeechTranslatorConfiguration *)selfCopy _offlineMTModel];
  if (_offlineMTModel)
  {
    v11 = _offlineMTModel;
    sub_26B5E153C();

    v12 = sub_26B5E154C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {

    v12 = sub_26B5E154C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_26B5DEF90(v6, v8);
  sub_26B5E154C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_26B5E152C();
    (*(v13 + 8))(v8, v12);
    v15 = v16;
  }

  return v15;
}

- (int64_t)taskHint
{
  v3 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTaskHint:(int64_t)hint
{
  v5 = OBJC_IVAR___STSpeechTranslatorConfiguration_taskHint;
  swift_beginAccess();
  *(&self->super.isa + v5) = hint;
}

- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale
{
  v5 = sub_26B5E161C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_26B5E160C();
  sub_26B5E160C();
  v12 = sub_26B5E15FC();
  v13 = sub_26B5E15FC();
  v14 = [(STSpeechTranslatorConfiguration *)self initWithSourceLocale:v12 targetLocale:v13 offlineMTModel:0 taskHint:9];

  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v11, v5);
  return v14;
}

- (STSpeechTranslatorConfiguration)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale offlineMTModel:(id)model taskHint:(int64_t)hint
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408120, &unk_26B5E3C60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_26B5E161C();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_26B5E160C();
  sub_26B5E160C();
  if (model)
  {
    sub_26B5E153C();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_26B5E154C();
  (*(*(v18 - 8) + 56))(v10, v17, 1, v18);
  return STSpeechTranslatorConfiguration.init(source:target:offlineMTModel:taskHint:)(v16, v14, v10, hint);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  STSpeechTranslatorConfiguration.encode(with:)(coderCopy);
}

- (STSpeechTranslatorConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end