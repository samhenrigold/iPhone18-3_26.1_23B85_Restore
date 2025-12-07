@interface VSSAMLRequestFactory
+ (id)attributeQueryWithAttributeNames:(id)names channelID:(id)d authNResponse:(id)response error:(id *)error;
+ (id)authNRequestWithResponse:(id)response forced:(BOOL)forced error:(id *)error;
+ (id)logoutRequestWithError:(id *)error;
@end

@implementation VSSAMLRequestFactory

+ (id)authNRequestWithResponse:(id)response forced:(BOOL)forced error:(id *)error
{
  forcedCopy = forced;
  responseCopy = response;
  v8 = VSSharedSAMLParserController();
  v9 = [v8 newAuthNRequest:@"com.apple.VideoSubscriberAccount.SAML" error:error];

  if (responseCopy && v9)
  {
    [v9 setSubjectFromResponse:responseCopy];
    [v9 setForceAuthN:forcedCopy];
  }

  return v9;
}

+ (id)attributeQueryWithAttributeNames:(id)names channelID:(id)d authNResponse:(id)response error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dCopy = d;
  responseCopy = response;
  v12 = VSSharedSAMLParserController();
  v13 = [v12 newAttributeQuery:dCopy error:error];

  if (v13)
  {
    [v13 setSubjectFromResponse:responseCopy];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = namesCopy;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 addAttribute:{*(*(&v20 + 1) + 8 * i), v20}];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  return v13;
}

+ (id)logoutRequestWithError:(id *)error
{
  v4 = VSSharedSAMLParserController();
  v5 = [v4 newLogoutRequest:error];

  return v5;
}

@end