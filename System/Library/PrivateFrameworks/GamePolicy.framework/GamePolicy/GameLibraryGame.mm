@interface GameLibraryGame
- (NSString)bundleID;
- (NSString)description;
- (_TtC10GamePolicy15GameLibraryGame)init;
- (_TtC10GamePolicy15GameLibraryGame)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameLibraryGame

- (NSString)bundleID
{
  if (*(self + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID + 8))
  {

    v2 = sub_24E5D2CB0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5BF300(coderCopy);
}

- (_TtC10GamePolicy15GameLibraryGame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_24E5BF864(coderCopy);

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_24E5BF650();

  v3 = sub_24E5D2CB0();

  return v3;
}

- (_TtC10GamePolicy15GameLibraryGame)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end