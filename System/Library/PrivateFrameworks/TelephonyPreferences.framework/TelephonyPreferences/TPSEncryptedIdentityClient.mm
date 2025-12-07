@interface TPSEncryptedIdentityClient
- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type;
- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type error:(id *)error;
@end

@implementation TPSEncryptedIdentityClient

- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15 = 0;
  v7 = [(TPSEncryptedIdentityClient *)self encryptedIdentityInfoForSubscriptionContext:contextCopy type:type error:&v15];
  v8 = v15;
  domain = [v8 domain];

  if (domain)
  {
    v12 = TPSLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] tps_stringWithTPSEncryptedIdentityType:type];
      *buf = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = contextCopy;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_ERROR, "Retrieving encrypted identity information of type %@ for subscription context %@ failed with error %@.", buf, 0x20u);
    }
  }

  return v7;
}

- (id)encryptedIdentityInfoForSubscriptionContext:(id)context type:(int64_t)type error:(id *)error
{
  contextCopy = context;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  v10 = [MEMORY[0x277CCACA8] tps_ctStringWithTPSEncryptedIdentityType:type];
  v11 = [telephonyClient context:contextCopy getEncryptedIdentity:v10 error:error];

  return v11;
}

@end