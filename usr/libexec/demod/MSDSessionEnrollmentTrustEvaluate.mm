@interface MSDSessionEnrollmentTrustEvaluate
- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect;
@end

@implementation MSDSessionEnrollmentTrustEvaluate

- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect
{
  v7.receiver = self;
  v7.super_class = MSDSessionEnrollmentTrustEvaluate;
  if ([(MSDSessionBaseTrustEvaluate *)&v7 trustServer:server isRedirect:redirect]|| [(MSDSessionBaseTrustEvaluate *)self isDone]|| (v5 = [(MSDSessionBaseTrustEvaluate *)self saveHubCertificateIdentifer:[(MSDSessionBaseTrustEvaluate *)self leafCertificate] applePKI:[(MSDSessionBaseTrustEvaluate *)self applePKI]]))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end