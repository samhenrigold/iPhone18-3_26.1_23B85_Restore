@interface FAFamilySetupBuddyMLRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FAFamilySetupBuddyMLRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  familySetupUIURL = [urlConfiguration familySetupUIURL];

  return familySetupUIURL;
}

- (id)urlRequest
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = FAFamilySetupBuddyMLRequest;
  urlRequest = [(AAFamilyRequest *)&v10 urlRequest];
  v4 = [urlRequest mutableCopy];

  if (self->_iTunesAccount)
  {
    [v4 fam_addiTunesHeadersWithAccount:?];
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "No iTunes account provided to family setup UI request.", v9, 2u);
    }
  }

  inviteCode = self->_inviteCode;
  if (inviteCode)
  {
    v11 = @"invite-code";
    v12[0] = inviteCode;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v4 aa_setBodyWithParameters:v7];
  }

  return v4;
}

@end