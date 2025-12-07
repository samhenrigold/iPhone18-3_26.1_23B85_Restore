@interface NoteCollectionObject
- (id)predicateForSearchableNotes;
@end

@implementation NoteCollectionObject

- (id)predicateForSearchableNotes
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [v3 predicateWithFormat:@"((deletedFlag == %@) AND (body.content != nil) AND (isBookkeepingEntry == %@))", v4, v5];

  predicateForNotes = [(NoteCollectionObject *)self predicateForNotes];
  v11[0] = predicateForNotes;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v9 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];

  return v9;
}

@end