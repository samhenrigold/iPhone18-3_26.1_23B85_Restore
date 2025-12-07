@interface _DPBAASignature
+ (id)signatureWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate;
- (_DPBAASignature)initWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate;
@end

@implementation _DPBAASignature

- (_DPBAASignature)initWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate
{
  signatureCopy = signature;
  certificateCopy = certificate;
  intermediateCertificateCopy = intermediateCertificate;
  v20.receiver = self;
  v20.super_class = _DPBAASignature;
  v11 = [(_DPBAASignature *)&v20 init];
  if (!v11 || (v12 = [signatureCopy copy], signature = v11->_signature, v11->_signature = v12, signature, v14 = objc_msgSend(certificateCopy, "copy"), leafCertificate = v11->_leafCertificate, v11->_leafCertificate = v14, leafCertificate, v16 = objc_msgSend(intermediateCertificateCopy, "copy"), intermediateCertificate = v11->_intermediateCertificate, v11->_intermediateCertificate = v16, intermediateCertificate, v11->_signature) && v11->_leafCertificate && v11->_intermediateCertificate)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)signatureWithDeviceSignature:(id)signature leafCertificate:(id)certificate intermediateCertificate:(id)intermediateCertificate
{
  intermediateCertificateCopy = intermediateCertificate;
  certificateCopy = certificate;
  signatureCopy = signature;
  v10 = [objc_alloc(objc_opt_class()) initWithDeviceSignature:signatureCopy leafCertificate:certificateCopy intermediateCertificate:intermediateCertificateCopy];

  return v10;
}

@end