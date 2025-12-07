@interface MicaPlayer
- (_TtC14iCloudSettings10MicaPlayer)init;
- (id)copyWithZone:(void *)zone;
- (void)dealloc;
@end

@implementation MicaPlayer

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
    v6 = *(&self->super.isa + v3);
    *(&self->super.isa + v3) = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MicaPlayer(0);
  [(MicaPlayer *)&v7 dealloc];
}

- (id)copyWithZone:(void *)zone
{
  v4 = sub_2759B8508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_2758607AC();
  v10 = v9;
  v11 = sub_2758647C4(*(&selfCopy->super.isa + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects));
  (*(v5 + 16))(v7, selfCopy + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_url, v4);
  v12 = objc_allocWithZone(type metadata accessor for MicaPlayer(0));
  v13 = sub_275864150(v7, v10, v11);

  return v13;
}

- (_TtC14iCloudSettings10MicaPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end