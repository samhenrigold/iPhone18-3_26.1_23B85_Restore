@interface ICASViewRefData
- (ICASViewRefData)initWithLinkedNoteId:(id)id;
- (id)toDict;
@end

@implementation ICASViewRefData

- (ICASViewRefData)initWithLinkedNoteId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = ICASViewRefData;
  v6 = [(ICASViewRefData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkedNoteId, id);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"linkedNoteId";
  linkedNoteId = [(ICASViewRefData *)self linkedNoteId];
  if (linkedNoteId)
  {
    linkedNoteId2 = [(ICASViewRefData *)self linkedNoteId];
  }

  else
  {
    linkedNoteId2 = objc_opt_new();
  }

  v5 = linkedNoteId2;
  v9[0] = linkedNoteId2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end