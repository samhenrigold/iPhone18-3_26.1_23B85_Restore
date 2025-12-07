@interface CAUAssetLibrary
- (_TtC13CarAssetUtils15CAUAssetLibrary)init;
- (void)dealloc;
@end

@implementation CAUAssetLibrary

- (void)dealloc
{
  v3 = sub_242C1A380();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_basePathURL, v3);
  selfCopy = self;
  sub_242C1A330();
  (*(v4 + 8))(v6, v3);
  v8 = type metadata accessor for CAUAssetLibrary(0);
  v9.receiver = selfCopy;
  v9.super_class = v8;
  [(CAUAssetLibrary *)&v9 dealloc];
}

- (_TtC13CarAssetUtils15CAUAssetLibrary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end