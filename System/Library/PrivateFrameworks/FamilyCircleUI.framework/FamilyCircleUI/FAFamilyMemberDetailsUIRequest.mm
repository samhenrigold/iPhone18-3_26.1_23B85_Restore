@interface FAFamilyMemberDetailsUIRequest
- (id)_queryString;
- (void)URLRequestWithCompletion:(id)completion;
- (void)_queryString;
@end

@implementation FAFamilyMemberDetailsUIRequest

- (id)_queryString
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = v3;
  if (self->_memberEmail)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"invitedEmail" value:self->_memberEmail];
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [v4 setQueryItems:v6];
LABEL_5:

    goto LABEL_6;
  }

  if (self->_memberDSID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD18]);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", -[NSNumber unsignedLongLongValue](self->_memberDSID, "unsignedLongLongValue")];
    v6 = [v7 initWithName:@"memberId" value:v5];
    v14 = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v4 setQueryItems:v8];

    goto LABEL_5;
  }

  v5 = _FALogSystem(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "Error: no member DSID or email. This will go badly.", buf, 2u);
  }

LABEL_6:

  v10 = _FALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(FAFamilyMemberDetailsUIRequest *)v4 _queryString];
  }

  query = [v4 query];

  return query;
}

- (void)URLRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__FAFamilyMemberDetailsUIRequest_URLRequestWithCompletion___block_invoke;
  v7[3] = &unk_2782F4478;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = FAFamilyMemberDetailsUIRequest;
  v5 = completionCopy;
  [(FAFamilyRequest *)&v6 URLRequestWithCompletion:v7];
}

void __59__FAFamilyMemberDetailsUIRequest_URLRequestWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v8 = [a2 mutableCopy];
    [v8 setHTTPMethod:@"POST"];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [MEMORY[0x277D082E8] addMessageEligibilityToPayload:v5];
    [v8 aa_setBodyWithParameters:v5];
    v6 = *(a1 + 32);
    v7 = [v8 copy];
    (*(v6 + 16))(v6, v7, 0);
  }
}

- (void)_queryString
{
  v5 = *MEMORY[0x277D85DE8];
  query = [self query];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "Query string %@", v4, 0xCu);
}

@end