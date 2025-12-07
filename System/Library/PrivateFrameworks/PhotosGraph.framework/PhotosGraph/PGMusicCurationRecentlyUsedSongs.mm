@interface PGMusicCurationRecentlyUsedSongs
- (NSString)description;
- (PGMusicCurationRecentlyUsedSongs)init;
- (id)allEntries;
- (void)addSongIDs:(id)ds date:(id)date;
- (void)addWithSongIDDateMap:(id)map;
- (void)appendWithOtherRecentlyUsed:(id)used;
@end

@implementation PGMusicCurationRecentlyUsedSongs

- (id)allEntries
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC8, &qword_22F7713B8);
  v2 = sub_22F740C80();

  return v2;
}

- (PGMusicCurationRecentlyUsedSongs)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap) = MEMORY[0x277D84F98];
  *(&self->super.isa + OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_recentlyUsedToExclude) = MEMORY[0x277D84FA0];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PGMusicCurationRecentlyUsedSongs *)&v5 init];
}

- (void)addWithSongIDDateMap:(id)map
{
  sub_22F73F690();
  v4 = sub_22F740CA0();
  selfCopy = self;
  RecentlyUsedSongs.add(songIDDateMap:)(v4);
}

- (void)addSongIDs:(id)ds date:(id)date
{
  v5 = sub_22F73F690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22F741180();
  sub_22F73F640();
  selfCopy = self;
  v11 = sub_22F15001C(MEMORY[0x277D84F90], &unk_27DAB0F80, &unk_22F771380);
  v14 = v8;
  v12 = sub_22F141AB4(v11, sub_22F1534D4, v13, v9);

  RecentlyUsedSongs.append(from:)(v12);

  (*(v6 + 8))(v8, v5);
}

- (void)appendWithOtherRecentlyUsed:(id)used
{
  swift_beginAccess();
  usedCopy = used;
  selfCopy = self;

  RecentlyUsedSongs.append(from:)(v7);
}

- (NSString)description
{
  selfCopy = self;
  RecentlyUsedSongs.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

@end