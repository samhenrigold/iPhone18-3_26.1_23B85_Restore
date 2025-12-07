@interface FADeclineFamilyInviteRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FADeclineFamilyInviteRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  declineFamilyInviteURL = [urlConfiguration declineFamilyInviteURL];

  return declineFamilyInviteURL;
}

- (id)urlRequest
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = FADeclineFamilyInviteRequest;
  urlRequest = [(AAFamilyRequest *)&v8 urlRequest];
  v4 = [urlRequest mutableCopy];

  inviteCode = self->_inviteCode;
  if (inviteCode)
  {
    v9 = @"invite-code";
    v10[0] = inviteCode;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v4 aa_setBodyWithParameters:v6];
  }

  return v4;
}

@end