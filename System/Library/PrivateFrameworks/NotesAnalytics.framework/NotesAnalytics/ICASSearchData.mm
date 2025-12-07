@interface ICASSearchData
- (ICASSearchData)initWithSearchSessionID:(id)d;
- (id)toDict;
@end

@implementation ICASSearchData

- (ICASSearchData)initWithSearchSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSearchData;
  v6 = [(ICASSearchData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSessionID, d);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"searchSessionID";
  searchSessionID = [(ICASSearchData *)self searchSessionID];
  if (searchSessionID)
  {
    searchSessionID2 = [(ICASSearchData *)self searchSessionID];
  }

  else
  {
    searchSessionID2 = objc_opt_new();
  }

  v5 = searchSessionID2;
  v9[0] = searchSessionID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end