@interface TMLCertificateManager
+ (id)shared;
- (__SecKey)verificationKey;
- (id)certificateForSignatureVerification;
- (void)updateCertificateFromPath:(id)path;
@end

@implementation TMLCertificateManager

+ (id)shared
{
  if (qword_2806D9108 != -1)
  {
    sub_26F200C04();
  }

  v3 = qword_2806D9100;

  return v3;
}

- (__SecKey)verificationKey
{
  verificationKey = self->_verificationKey;
  if (verificationKey)
  {
    return verificationKey;
  }

  if (!self->_certificate)
  {
    return 0;
  }

  v5 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], [(TMLCertificateManager *)self certificateForSignatureVerification]);
  BasicX509 = SecPolicyCreateBasicX509();
  v7 = BasicX509;
  if (v5)
  {
    v8 = BasicX509 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
    verificationKey = 0;
    if (!BasicX509)
    {
      goto LABEL_18;
    }
  }

  else
  {
    trust = 0;
    v9 = 0;
    if (!SecTrustCreateWithCertificates(v5, BasicX509, &trust))
    {
      v10 = 0;
      if (MEMORY[0x27438B420](trust, &v10))
      {
        v9 = 0;
      }

      else
      {
        v9 = MEMORY[0x27438B400](trust);
      }
    }

    CFRelease(trust);
  }

  CFRelease(v7);
  verificationKey = v9;
LABEL_18:
  if (v5)
  {
    CFRelease(v5);
  }

  if (verificationKey)
  {
    self->_verificationKey = verificationKey;
  }

  return verificationKey;
}

- (id)certificateForSignatureVerification
{
  if (self->_certificate)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:self->_certificate options:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateCertificateFromPath:(id)path
{
  if (path)
  {
    v7 = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:path encoding:4 error:&v7];
    v5 = v7;
    if (([v4 isEqualToString:self->_certificate] & 1) == 0)
    {
      objc_storeStrong(&self->_certificate, v4);
      self->_verificationKey = 0;
    }
  }

  else
  {
    certificate = self->_certificate;
    self->_certificate = 0;

    self->_verificationKey = 0;
  }
}

@end