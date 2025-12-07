@interface JSVersionProvider
- (_TtC17AdPlatformsCommon17JSVersionProvider)init;
- (_TtC17AdPlatformsCommon17JSVersionProvider)initWithDirectoryURL:(id)l;
- (id)getJetPackVersion;
@end

@implementation JSVersionProvider

- (_TtC17AdPlatformsCommon17JSVersionProvider)init
{
  v3 = sub_1BB0142E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0145D8();
  (*(v4 + 32))(self + OBJC_IVAR____TtC17AdPlatformsCommon17JSVersionProvider_directoryURL, v6, v3);
  v7 = type metadata accessor for JSVersionProvider(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(JSVersionProvider *)&v9 init];
}

- (_TtC17AdPlatformsCommon17JSVersionProvider)initWithDirectoryURL:(id)l
{
  v4 = sub_1BB0142E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0142C8();
  (*(v5 + 16))(self + OBJC_IVAR____TtC17AdPlatformsCommon17JSVersionProvider_directoryURL, v7, v4);
  v8 = type metadata accessor for JSVersionProvider(0);
  v11.receiver = self;
  v11.super_class = v8;
  v9 = [(JSVersionProvider *)&v11 init];
  (*(v5 + 8))(v7, v4);
  return v9;
}

- (id)getJetPackVersion
{
  selfCopy = self;
  sub_1BAFEB0DC();

  v3 = sub_1BB014B38();

  return v3;
}

@end