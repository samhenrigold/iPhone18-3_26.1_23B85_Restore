@interface TBNetworkRemoteFetchResponse
+ (id)responseWithNetworkSearchResults:(id)results;
- (TBNetworkRemoteFetchResponse)initWithNetworkSearchResults:(id)results;
@end

@implementation TBNetworkRemoteFetchResponse

+ (id)responseWithNetworkSearchResults:(id)results
{
  resultsCopy = results;
  v5 = [[self alloc] initWithNetworkSearchResults:resultsCopy];

  return v5;
}

- (TBNetworkRemoteFetchResponse)initWithNetworkSearchResults:(id)results
{
  v23[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = [resultsCopy objectAtIndexedSubscript:0];
  if ([resultsCopy count] >= 2)
  {
    NSLog(&cfstr_SGeowifiqualit.isa, "-[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]", [resultsCopy count]);
  }

  matches = [v5 matches];
  v7 = [matches objectAtIndexedSubscript:0];

  matches2 = [v5 matches];
  v9 = [matches2 count];

  if (v9 >= 2)
  {
    NSLog(&cfstr_SGeowifiessmat.isa, "-[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]", [resultsCopy count]);
  }

  NSLog(&cfstr_SResultCountLu.isa, "-[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]", [resultsCopy count]);
  if ([v7 status] != 1)
  {
    NSLog(&cfstr_SMatchStatusIs.isa, "[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]");
    v14 = [TBError alloc];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"No results returned from remote source";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [(TBError *)v14 initWithType:154 userInfo:v11];
LABEL_10:
    v13 = v15;
    v12 = 0;
    goto LABEL_11;
  }

  v10 = [v7 ess];

  if (!v10)
  {
    v21 = *MEMORY[0x277CCA450];
    v22 = @"nil ess from response";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [TBError responseErrorWithUserInfo:v11];
    goto LABEL_10;
  }

  v11 = [v7 ess];
  v23[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v13 = 0;
LABEL_11:

  v18.receiver = self;
  v18.super_class = TBNetworkRemoteFetchResponse;
  v16 = [(TBRemoteFetchResponse *)&v18 initWithResults:v12 tiles:0 error:v13];

  return v16;
}

@end