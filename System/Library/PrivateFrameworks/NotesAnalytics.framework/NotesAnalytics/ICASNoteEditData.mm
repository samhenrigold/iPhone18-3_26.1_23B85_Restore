@interface ICASNoteEditData
- (ICASNoteEditData)initWithNoteEditContext:(id)context;
- (id)toDict;
@end

@implementation ICASNoteEditData

- (ICASNoteEditData)initWithNoteEditContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICASNoteEditData;
  v6 = [(ICASNoteEditData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteEditContext, context);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"noteEditContext";
  noteEditContext = [(ICASNoteEditData *)self noteEditContext];
  if (noteEditContext)
  {
    noteEditContext2 = [(ICASNoteEditData *)self noteEditContext];
  }

  else
  {
    noteEditContext2 = objc_opt_new();
  }

  v5 = noteEditContext2;
  v9[0] = noteEditContext2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end