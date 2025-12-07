@interface MSDSessionFileDownloadTrustEvaluate
- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect;
@end

@implementation MSDSessionFileDownloadTrustEvaluate

- (BOOL)trustServer:(__SecTrust *)server isRedirect:(BOOL)redirect
{
  v6.receiver = self;
  v6.super_class = MSDSessionFileDownloadTrustEvaluate;
  if ([(MSDSessionBaseTrustEvaluate *)&v6 trustServer:server isRedirect:redirect])
  {
    return 1;
  }

  else
  {
    return ![(MSDSessionBaseTrustEvaluate *)self isDone];
  }
}

@end