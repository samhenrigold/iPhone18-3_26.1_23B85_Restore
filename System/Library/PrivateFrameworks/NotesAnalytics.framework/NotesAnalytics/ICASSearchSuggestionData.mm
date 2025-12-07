@interface ICASSearchSuggestionData
- (ICASSearchSuggestionData)initWithSearchSuggestionType:(id)type;
- (id)toDict;
@end

@implementation ICASSearchSuggestionData

- (ICASSearchSuggestionData)initWithSearchSuggestionType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASSearchSuggestionData;
  v6 = [(ICASSearchSuggestionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSuggestionType, type);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"searchSuggestionType";
  searchSuggestionType = [(ICASSearchSuggestionData *)self searchSuggestionType];
  if (searchSuggestionType)
  {
    searchSuggestionType2 = [(ICASSearchSuggestionData *)self searchSuggestionType];
  }

  else
  {
    searchSuggestionType2 = objc_opt_new();
  }

  v5 = searchSuggestionType2;
  v9[0] = searchSuggestionType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end