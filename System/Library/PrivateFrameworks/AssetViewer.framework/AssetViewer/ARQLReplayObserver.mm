@interface ARQLReplayObserver
- (_TtC11AssetViewer18ARQLReplayObserver)init;
- (void)replayConfigurationDidFinishReplaying:(id)replaying;
@end

@implementation ARQLReplayObserver

- (void)replayConfigurationDidFinishReplaying:(id)replaying
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11AssetViewer18ARQLReplayObserver_callback);
  if (v3)
  {
    v4 = *&self->callback[OBJC_IVAR____TtC11AssetViewer18ARQLReplayObserver_callback];
    selfCopy = self;
    v6 = sub_24124AD38(v3, v4);
    v3(v6);

    sub_2412186FC(v3, v4);
  }
}

- (_TtC11AssetViewer18ARQLReplayObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end