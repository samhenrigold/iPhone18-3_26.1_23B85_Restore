@interface DOCSBFolderState
- (BOOL)compareOrderedFilesToOtherOrderedFiles:(id)files;
- (DOCSBFolderState)init;
- (DOCSBFolderState)initWithIdentifier:(id)identifier fileURL:(id)l;
- (NSArray)orderedFiles;
- (NSString)folderIdentifier;
- (NSURL)folderURL;
- (void)setFolderIdentifier:(id)identifier;
- (void)setFolderURL:(id)l;
- (void)setOrderedFiles:(id)files;
- (void)set_folderURL:(id)l;
@end

@implementation DOCSBFolderState

- (NSString)folderIdentifier
{

  v2 = sub_24938A42C();

  return v2;
}

- (void)setFolderIdentifier:(id)identifier
{
  v4 = sub_24938A45C();
  v5 = (self + OBJC_IVAR___DOCSBFolderState_folderIdentifier);
  *v5 = v4;
  v5[1] = v6;
}

- (NSArray)orderedFiles
{
  sub_24938A2FC();

  v2 = sub_24938A4EC();

  return v2;
}

- (void)setOrderedFiles:(id)files
{
  sub_24938A2FC();
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles) = sub_24938A4FC();
  selfCopy = self;

  sub_24937D1BC();
}

- (NSURL)folderURL
{
  v3 = sub_24938A2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _folderURL = [(DOCSBFolderState *)selfCopy _folderURL];
  sub_24938A2DC();

  v9 = sub_24938A2CC();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (void)setFolderURL:(id)l
{
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24938A2DC();
  selfCopy = self;
  v9 = sub_24938A2CC();
  [(DOCSBFolderState *)selfCopy set_folderURL:v9];

  (*(v5 + 8))(v7, v4);
}

- (void)set_folderURL:(id)l
{
  v4 = *(self + OBJC_IVAR___DOCSBFolderState__folderURL);
  *(self + OBJC_IVAR___DOCSBFolderState__folderURL) = l;
  lCopy = l;
}

- (DOCSBFolderState)initWithIdentifier:(id)identifier fileURL:(id)l
{
  v5 = sub_24938A2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24938A45C();
  v11 = v10;
  sub_24938A2DC();
  v12 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___DOCSBFolderState_orderedFiles) = v12;
  v13 = (self + OBJC_IVAR___DOCSBFolderState_folderIdentifier);
  *v13 = v9;
  v13[1] = v11;
  *(self + OBJC_IVAR___DOCSBFolderState__folderURL) = sub_24938A2CC();
  v16.receiver = self;
  v16.super_class = DOCSBFolderState;
  v14 = [(DOCSBFolderState *)&v16 init];
  (*(v6 + 8))(v8, v5);
  return v14;
}

- (BOOL)compareOrderedFilesToOtherOrderedFiles:(id)files
{
  sub_24938A2FC();
  v4 = sub_24938A4FC();
  selfCopy = self;
  v6 = sub_24937DB50(v4);

  return v6 & 1;
}

- (DOCSBFolderState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end