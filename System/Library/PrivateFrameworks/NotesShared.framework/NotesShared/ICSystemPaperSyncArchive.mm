@interface ICSystemPaperSyncArchive
- (ICSystemPaperSyncArchive)init;
- (ICSystemPaperSyncArchive)initWithDatabaseArchive:(id)archive assetArchives:(id)archives;
- (NSArray)assetArchives;
- (NSString)description;
- (NSURL)databaseArchive;
@end

@implementation ICSystemPaperSyncArchive

- (NSURL)databaseArchive
{
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive, v3);
  v8 = sub_2150A36B0();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSArray)assetArchives
{
  sub_2150A3750();

  v2 = sub_2150A4EB0();

  return v2;
}

- (ICSystemPaperSyncArchive)initWithDatabaseArchive:(id)archive assetArchives:(id)archives
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v10 = sub_2150A4ED0();
  (*(v6 + 16))(self + OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive, v9, v5);
  *(self + OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives) = v10;
  v11 = type metadata accessor for SystemPaperSyncArchive(0);
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(ICSystemPaperSyncArchive *)&v14 init];
  (*(v6 + 8))(v9, v5);
  return v12;
}

- (NSString)description
{
  selfCopy = self;
  sub_214FD32EC();

  v3 = sub_2150A4A90();

  return v3;
}

- (ICSystemPaperSyncArchive)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end