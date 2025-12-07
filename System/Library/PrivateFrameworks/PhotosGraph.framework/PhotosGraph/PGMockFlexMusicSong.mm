@interface PGMockFlexMusicSong
- (NSDictionary)weightedKeywords;
- (NSString)description;
- (PGMockFlexMusicSong)init;
- (id)regions;
@end

@implementation PGMockFlexMusicSong

- (NSDictionary)weightedKeywords
{
  sub_22F170D8C();

  v2 = sub_22F740C80();

  return v2;
}

- (id)regions
{

  sub_22F1B9D70(v2);
  v3 = sub_22F741410();

  return v3;
}

- (PGMockFlexMusicSong)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  MockFlexMusicSong.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

@end