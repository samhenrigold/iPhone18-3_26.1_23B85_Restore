@interface DAEASOAuthMigrationRequest
+ (id)urlRequestForOAuthTokenFromUsername:(id)username password:(id)password scope:(id)scope;
@end

@implementation DAEASOAuthMigrationRequest

+ (id)urlRequestForOAuthTokenFromUsername:(id)username password:(id)password scope:(id)scope
{
  v26[6] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEBC0];
  scopeCopy = scope;
  passwordCopy = password;
  usernameCopy = username;
  v25 = [v7 URLWithString:@"https://login.live.com/oauth20_token.srf"];
  v11 = [MEMORY[0x277CCAB70] requestWithURL:v25];
  v12 = [scopeCopy componentsJoinedByString:@" "];

  v26[0] = @"response_type=code";
  v13 = MEMORY[0x277CCACA8];
  v14 = [DAEASOAuthClient clientIDForOAuthType:1];
  v15 = [v13 stringWithFormat:@"client_id=%@", v14];
  v26[1] = v15;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"grant_type=%@", @"password"];
  v26[2] = v16;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"scope=%@", v12];
  v26[3] = v17;
  usernameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"username=%@", usernameCopy];

  v26[4] = usernameCopy;
  passwordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"password=%@", passwordCopy];

  v26[5] = passwordCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];

  v21 = [v20 componentsJoinedByString:@"&"];
  v22 = [v21 stringByAddingPercentEscapesUsingEncoding:4];

  v23 = [v22 dataUsingEncoding:4];
  [v11 setHTTPBody:v23];

  [v11 setCachePolicy:1];
  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v11;
}

@end