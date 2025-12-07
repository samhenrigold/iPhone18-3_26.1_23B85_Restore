@interface ICASStreamUpdateData
- (ICASStreamUpdateData)initWithHasUpdates:(id)updates;
- (id)toDict;
@end

@implementation ICASStreamUpdateData

- (ICASStreamUpdateData)initWithHasUpdates:(id)updates
{
  updatesCopy = updates;
  v9.receiver = self;
  v9.super_class = ICASStreamUpdateData;
  v6 = [(ICASStreamUpdateData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hasUpdates, updates);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"hasUpdates";
  hasUpdates = [(ICASStreamUpdateData *)self hasUpdates];
  if (hasUpdates)
  {
    hasUpdates2 = [(ICASStreamUpdateData *)self hasUpdates];
  }

  else
  {
    hasUpdates2 = objc_opt_new();
  }

  v5 = hasUpdates2;
  v9[0] = hasUpdates2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end