@interface SFCertificateManager
+ (BOOL)isQwacStatementEnabled;
- (BOOL)isQWAC;
- (BOOL)isRoot;
- (BOOL)isValid;
- (NSArray)certificates;
- (NSDate)expiration;
- (NSString)issuerName;
- (NSString)subtitle;
- (NSString)title;
- (SFCertificateManager)initWithTrust:(__SecTrust *)trust;
- (id)expirationDateForCertificate:(__SecCertificate *)certificate;
- (id)issuerNameForCertificate:(__SecCertificate *)certificate;
- (id)titleForCertificate:(__SecCertificate *)certificate;
- (void)dealloc;
- (void)isValid;
@end

@implementation SFCertificateManager

- (SFCertificateManager)initWithTrust:(__SecTrust *)trust
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = SFLogSFCertificateManager(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SFCertificateManager initWithTrust:]";
    _os_log_impl(&dword_23AA9F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = SFCertificateManager;
  v6 = [(SFCertificateManager *)&v9 init];
  v7 = v6;
  if (trust && v6)
  {
    v6->_trust = CFRetain(trust);
    [(SFCertificateManager *)v7 isValid];
  }

  return v7;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SFLogSFCertificateManager(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SFCertificateManager dealloc]";
    _os_log_impl(&dword_23AA9F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  trust = self->_trust;
  if (trust)
  {
    CFRelease(trust);
  }

  v5.receiver = self;
  v5.super_class = SFCertificateManager;
  [(SFCertificateManager *)&v5 dealloc];
}

+ (BOOL)isQwacStatementEnabled
{
  if (isQwacStatementEnabled_onceToken != -1)
  {
    +[SFCertificateManager isQwacStatementEnabled];
  }

  return isQwacStatementEnabled_isQwacStatementEnabled;
}

uint64_t __46__SFCertificateManager_isQwacStatementEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    isQwacStatementEnabled_isQwacStatementEnabled = 1;
  }

  return result;
}

- (NSString)issuerName
{
  v3 = SecTrustCopyCertificateChain(self->_trust);
  v4 = v3;
  if (v3 && [(__CFArray *)v3 count])
  {
    v5 = [(__CFArray *)v4 objectAtIndexedSubscript:0];

    v6 = [(SFCertificateManager *)self issuerNameForCertificate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)issuerNameForCertificate:(__SecCertificate *)certificate
{
  v3 = SecCertificateCopyIssuerSummary();

  return v3;
}

- (NSString)title
{
  v3 = SecTrustCopyCertificateChain(self->_trust);
  v4 = v3;
  if (v3 && [(__CFArray *)v3 count])
  {
    v5 = [(__CFArray *)v4 objectAtIndexedSubscript:0];

    v6 = [(SFCertificateManager *)self titleForCertificate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)titleForCertificate:(__SecCertificate *)certificate
{
  v3 = SecCertificateCopySubjectSummary(certificate);

  return v3;
}

- (NSString)subtitle
{
  v2 = SecTrustCopyCertificateChain(self->_trust);
  v3 = v2;
  if (v2 && [(__CFArray *)v2 count]>= 2)
  {
    v4 = [(__CFArray *)v3 objectAtIndexedSubscript:[(__CFArray *)v3 count]- 1];

    v5 = SecCertificateCopySubjectSummary(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)expiration
{
  v2 = SecTrustCopyCertificateChain(self->_trust);
  v3 = [(__CFArray *)v2 count];
  if (v3 < 1)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x277CBECC8];
  do
  {
    v8 = [(__CFArray *)v2 objectAtIndexedSubscript:v6];

    if (v8)
    {
      SecCertificateNotValidAfter();
      if ((v5 & (v9 >= v7)) == 0)
      {
        v7 = v9;
      }

      v5 = 1;
    }

    ++v6;
  }

  while (v4 != v6);
  if (v5)
  {
    v10 = CFDateCreate(*MEMORY[0x277CBECE8], v7);
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

- (id)expirationDateForCertificate:(__SecCertificate *)certificate
{
  v3 = *MEMORY[0x277CBECE8];
  SecCertificateNotValidAfter();
  v5 = CFDateCreate(v3, v4);

  return v5;
}

- (BOOL)isRoot
{
  v3 = SecTrustCopyCertificateChain(self->_trust);
  v4 = v3;
  if (v3 && [(__CFArray *)v3 count])
  {
    v5 = [(__CFArray *)v4 objectAtIndexedSubscript:0];

    v6 = [(SFCertificateManager *)self isRootCertificate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)certificates
{
  v2 = SecTrustCopyCertificateChain(self->_trust);

  return v2;
}

- (BOOL)isQWAC
{
  if (!+[SFCertificateManager isQwacStatementEnabled])
  {
    return 0;
  }

  v3 = SecTrustCopyResult(self->_trust);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"TrustQWACValidation"];
  v5 = v4 == *MEMORY[0x277CBED28];

  return v5;
}

- (BOOL)isValid
{
  error = 0;
  v2 = SecTrustEvaluateWithError(self->_trust, &error);
  v3 = v2;
  if (v2)
  {
    v4 = SFLogSFCertificateManager(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23AA9F000, v4, OS_LOG_TYPE_DEFAULT, "Certificate is valid.", v7, 2u);
    }
  }

  else if (error)
  {
    v4 = error;
    v5 = SFLogSFCertificateManager(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SFCertificateManager *)v4 isValid];
    }
  }

  else
  {
    v4 = SFLogSFCertificateManager(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SFCertificateManager *)v4 isValid];
    }
  }

  return v3;
}

- (void)isValid
{
  v6 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  v4 = 138412290;
  v5 = localizedDescription;
  _os_log_error_impl(&dword_23AA9F000, a2, OS_LOG_TYPE_ERROR, "Certificate is not valid: %@", &v4, 0xCu);
}

@end