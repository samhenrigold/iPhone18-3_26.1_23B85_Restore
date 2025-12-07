@interface MSDSessionHubTrustEvaluate
- (BOOL)isHubCertificatePinnedTo:(__SecCertificate *)to applePKI:(BOOL)i;
- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect;
@end

@implementation MSDSessionHubTrustEvaluate

- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect
{
  v7.receiver = self;
  v7.super_class = MSDSessionHubTrustEvaluate;
  if ([(MSDSessionBaseTrustEvaluate *)&v7 trustServer:server isRedirect:redirect]|| [(MSDSessionBaseTrustEvaluate *)self isDone]|| (v5 = [(MSDSessionHubTrustEvaluate *)self isHubCertificatePinnedTo:[(MSDSessionBaseTrustEvaluate *)self leafCertificate] applePKI:[(MSDSessionBaseTrustEvaluate *)self applePKI]]))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isHubCertificatePinnedTo:(__SecCertificate *)to applePKI:(BOOL)i
{
  iCopy = i;
  v7 = +[MSDTargetDevice sharedInstance];
  hubCertificateIdentifier = [v7 hubCertificateIdentifier];

  v9 = [(MSDSessionBaseTrustEvaluate *)self identifierFor:to applePKI:iCopy];
  if (v9)
  {
    v10 = [hubCertificateIdentifier isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end