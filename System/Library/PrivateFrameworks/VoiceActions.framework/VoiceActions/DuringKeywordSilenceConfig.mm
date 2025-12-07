@interface DuringKeywordSilenceConfig
- (DuringKeywordSilenceConfig)init;
- (NSString)description;
- (float)minPercentageOfNonSilenceFrames;
- (float)silenceProbability;
- (void)setMinPercentageOfNonSilenceFrames:(float)frames;
- (void)setSilenceProbability:(float)probability;
@end

@implementation DuringKeywordSilenceConfig

- (float)minPercentageOfNonSilenceFrames
{
  v2 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames);
  swift_beginAccess();
  return *v2;
}

- (void)setMinPercentageOfNonSilenceFrames:(float)frames
{
  v4 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames);
  swift_beginAccess();
  *v4 = frames;
}

- (float)silenceProbability
{
  v2 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  return *v2;
}

- (void)setSilenceProbability:(float)probability
{
  v4 = (self + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  *v4 = probability;
}

- (DuringKeywordSilenceConfig)init
{
  *(&self->super.isa + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames) = 1056964608;
  *(&self->super.isa + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability) = 1056964608;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DuringKeywordSilence();
  return [(DuringKeywordSilenceConfig *)&v3 init];
}

- (NSString)description
{
  v3 = sub_27237788C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_272376B3C();
  swift_allocObject();
  selfCopy = self;
  sub_272376B2C();
  type metadata accessor for DuringKeywordSilence();
  sub_27227DA80(&qword_2808822B8, v5, type metadata accessor for DuringKeywordSilence, &protocol conformance descriptor for DuringKeywordSilence);
  v6 = sub_272376B1C();
  v8 = v7;

  sub_27237787C();
  sub_27237784C();
  if (v9)
  {
    sub_2721F05C8(v6, v8);

    v10 = sub_2723777FC();

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

@end