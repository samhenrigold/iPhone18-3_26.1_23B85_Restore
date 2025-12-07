@interface ICASFindInTranscriptData
- (ICASFindInTranscriptData)initWithWasSearchQueryEntered:(id)entered;
- (id)toDict;
@end

@implementation ICASFindInTranscriptData

- (ICASFindInTranscriptData)initWithWasSearchQueryEntered:(id)entered
{
  enteredCopy = entered;
  v9.receiver = self;
  v9.super_class = ICASFindInTranscriptData;
  v6 = [(ICASFindInTranscriptData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wasSearchQueryEntered, entered);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"wasSearchQueryEntered";
  wasSearchQueryEntered = [(ICASFindInTranscriptData *)self wasSearchQueryEntered];
  if (wasSearchQueryEntered)
  {
    wasSearchQueryEntered2 = [(ICASFindInTranscriptData *)self wasSearchQueryEntered];
  }

  else
  {
    wasSearchQueryEntered2 = objc_opt_new();
  }

  v5 = wasSearchQueryEntered2;
  v9[0] = wasSearchQueryEntered2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end