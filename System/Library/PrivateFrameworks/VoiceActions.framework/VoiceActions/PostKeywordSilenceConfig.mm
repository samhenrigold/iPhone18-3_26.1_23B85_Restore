@interface PostKeywordSilenceConfig
- (NSString)description;
- (PostKeywordSilenceConfig)init;
- (float)silenceProbability;
- (int64_t)lookForwardFrames;
- (int64_t)minSilenceFrameCountAtEndOfKeyword;
- (int64_t)minSilenceFramesExpected;
- (void)setLookForwardFrames:(int64_t)frames;
- (void)setMinSilenceFrameCountAtEndOfKeyword:(int64_t)keyword;
- (void)setMinSilenceFramesExpected:(int64_t)expected;
- (void)setSilenceProbability:(float)probability;
@end

@implementation PostKeywordSilenceConfig

- (int64_t)lookForwardFrames
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLookForwardFrames:(int64_t)frames
{
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  swift_beginAccess();
  *(&self->super.isa + v5) = frames;
}

- (int64_t)minSilenceFramesExpected
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMinSilenceFramesExpected:(int64_t)expected
{
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  swift_beginAccess();
  *(&self->super.isa + v5) = expected;
}

- (float)silenceProbability
{
  v2 = (self + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  return *v2;
}

- (void)setSilenceProbability:(float)probability
{
  v4 = (self + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability);
  swift_beginAccess();
  *v4 = probability;
}

- (int64_t)minSilenceFrameCountAtEndOfKeyword
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMinSilenceFrameCountAtEndOfKeyword:(int64_t)keyword
{
  v5 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  swift_beginAccess();
  *(&self->super.isa + v5) = keyword;
}

- (PostKeywordSilenceConfig)init
{
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames) = 8;
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected) = 2;
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability) = 1060320051;
  *(&self->super.isa + OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword) = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PostKeywordSilence();
  return [(PostKeywordSilenceConfig *)&v3 init];
}

- (NSString)description
{
  v3 = sub_27237788C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_272376B3C();
  swift_allocObject();
  selfCopy = self;
  sub_272376B2C();
  type metadata accessor for PostKeywordSilence();
  sub_27227DA80(&qword_2808822F0, v5, type metadata accessor for PostKeywordSilence, &protocol conformance descriptor for PostKeywordSilence);
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