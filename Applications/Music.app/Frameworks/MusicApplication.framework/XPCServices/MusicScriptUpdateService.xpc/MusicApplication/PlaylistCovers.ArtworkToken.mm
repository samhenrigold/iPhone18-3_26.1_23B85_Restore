@interface PlaylistCovers.ArtworkToken
- (_TtCO9MusicCore14PlaylistCovers12ArtworkToken)init;
- (id)copyWithZone:(void *)zone;
- (id)stringRepresentation;
@end

@implementation PlaylistCovers.ArtworkToken

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  PlaylistCovers.ArtworkToken.copy(with:)(v7, selfCopy, v4);

  sub_100009178(v7, v7[3]);
  v5 = sub_1004BD9A4();
  sub_100004C6C(v7);
  return v5;
}

- (id)stringRepresentation
{
  selfCopy = self;
  object = PlaylistCovers.ArtworkToken.stringRepresentation()().value._object;

  if (object)
  {
    v4 = sub_1004BBE24();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtCO9MusicCore14PlaylistCovers12ArtworkToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end