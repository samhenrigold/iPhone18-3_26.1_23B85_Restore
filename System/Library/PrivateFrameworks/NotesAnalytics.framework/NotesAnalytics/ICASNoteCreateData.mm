@interface ICASNoteCreateData
- (ICASNoteCreateData)initWithNoteCreateApproach:(id)approach;
- (id)toDict;
@end

@implementation ICASNoteCreateData

- (ICASNoteCreateData)initWithNoteCreateApproach:(id)approach
{
  approachCopy = approach;
  v9.receiver = self;
  v9.super_class = ICASNoteCreateData;
  v6 = [(ICASNoteCreateData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteCreateApproach, approach);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"noteCreateApproach";
  noteCreateApproach = [(ICASNoteCreateData *)self noteCreateApproach];
  if (noteCreateApproach)
  {
    noteCreateApproach2 = [(ICASNoteCreateData *)self noteCreateApproach];
  }

  else
  {
    noteCreateApproach2 = objc_opt_new();
  }

  v5 = noteCreateApproach2;
  v9[0] = noteCreateApproach2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end