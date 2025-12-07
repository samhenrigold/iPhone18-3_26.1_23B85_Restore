@interface FAInviteFamilyMemberRequest
- (id)_queryString;
- (void)_queryString;
@end

@implementation FAInviteFamilyMemberRequest

- (id)_queryString
{
  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCAB50] URLQueryAllowedCharacterSet];
  v4 = [uRLQueryAllowedCharacterSet mutableCopy];

  [v4 removeCharactersInString:@"+"];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(NSString *)self->_inviteeEmail stringByAddingPercentEncodingWithAllowedCharacters:v4];
  v7 = [v5 stringWithFormat:@"inviteeEmail=%@", v6];

  inviteeShortName = self->_inviteeShortName;
  uRLQueryAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v10 = [(NSString *)inviteeShortName stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];

  if (v10)
  {
    v11 = [v7 stringByAppendingFormat:@"&inviteeShortName=%@", v10];

    v7 = v11;
  }

  inviteeCompositeName = self->_inviteeCompositeName;
  uRLQueryAllowedCharacterSet3 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v14 = [(NSString *)inviteeCompositeName stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet3];

  if (v14)
  {
    v16 = [v7 stringByAppendingFormat:@"&inviteeCompositeName=%@", v14];

    v7 = v16;
  }

  v17 = _FALogSystem(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [FAInviteFamilyMemberRequest _queryString];
  }

  return v7;
}

- (void)_queryString
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21BB35000, v0, OS_LOG_TYPE_DEBUG, "Query string %@", v1, 0xCu);
}

@end