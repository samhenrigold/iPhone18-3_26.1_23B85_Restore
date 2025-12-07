@interface ICASFolderContentData
- (ICASFolderContentData)initWithNoteCount:(id)count;
- (id)toDict;
@end

@implementation ICASFolderContentData

- (ICASFolderContentData)initWithNoteCount:(id)count
{
  countCopy = count;
  v9.receiver = self;
  v9.super_class = ICASFolderContentData;
  v6 = [(ICASFolderContentData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteCount, count);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"noteCount";
  noteCount = [(ICASFolderContentData *)self noteCount];
  if (noteCount)
  {
    noteCount2 = [(ICASFolderContentData *)self noteCount];
  }

  else
  {
    noteCount2 = objc_opt_new();
  }

  v5 = noteCount2;
  v9[0] = noteCount2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end