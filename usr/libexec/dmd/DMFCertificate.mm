@interface DMFCertificate
- (id)initWithCertificateRef:(__SecCertificate *)ref isIdentity:(BOOL)identity;
@end

@implementation DMFCertificate

- (id)initWithCertificateRef:(__SecCertificate *)ref isIdentity:(BOOL)identity
{
  identityCopy = identity;
  v7 = SecCertificateCopyCommonNames();
  v8 = SecCertificateCopyData(ref);
  if (v7)
  {
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v10 = [(DMFCertificate *)self initWithCommonName:firstObject data:v8 isIdentity:identityCopy];

  return v10;
}

@end