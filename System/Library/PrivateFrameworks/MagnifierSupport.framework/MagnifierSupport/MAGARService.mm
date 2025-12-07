@interface MAGARService
- (_TtC16MagnifierSupport12MAGARService)init;
- (void)replayConfigurationDidFinishReplaying:(id)replaying;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
@end

@implementation MAGARService

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_257D1C38C(sessionCopy, frameCopy);
}

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  sub_257D1D31C(interruptedCopy);
}

- (void)sessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_257D1D48C(endedCopy);
}

- (_TtC16MagnifierSupport12MAGARService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)replayConfigurationDidFinishReplaying:(id)replaying
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = &v14 - v9;
  swift_beginAccess();
  if (byte_27F8F87B0 == 1)
  {
    byte_27F8F87B0 = 0;
  }

  else
  {
    v11 = sub_257ECF930();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = self;
    selfCopy = self;
    sub_257E81524(0, 0, v10, &unk_257EE3C60, v12);
  }
}

@end