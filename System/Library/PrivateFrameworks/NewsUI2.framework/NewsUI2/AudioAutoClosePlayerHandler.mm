@interface AudioAutoClosePlayerHandler
- (_TtC7NewsUI227AudioAutoClosePlayerHandler)init;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation AudioAutoClosePlayerHandler

- (_TtC7NewsUI227AudioAutoClosePlayerHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidDisconnect:(id)disconnect
{
  sub_2186C66AC();
  selfCopy = self;
  v5 = sub_219BF6F74();
  v6 = sub_219BF6214();
  sub_219BE5314("AudioAutoClosePlayerHandler: CarPlay session did disconnect", 59, 2, &dword_2186C1000, v5, v6, MEMORY[0x277D84F90]);

  *(swift_allocObject() + 16) = selfCopy;
  v7 = selfCopy;
  sub_219BE3494();
}

@end