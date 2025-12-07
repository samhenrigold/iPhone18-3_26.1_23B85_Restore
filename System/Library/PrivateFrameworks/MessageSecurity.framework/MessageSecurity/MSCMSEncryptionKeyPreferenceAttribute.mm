@interface MSCMSEncryptionKeyPreferenceAttribute
- (MSCMSEncryptionKeyPreferenceAttribute)initWithAttribute:(id)attribute certificates:(id)certificates LAContext:(id)context error:(id *)error;
- (MSCMSEncryptionKeyPreferenceAttribute)initWithCertificate:(__SecCertificate *)certificate;
- (MSCMSEncryptionKeyPreferenceAttribute)initWithEmailAddress:(id)address;
- (MSCMSEncryptionKeyPreferenceAttribute)initWithIdentity:(__SecIdentity *)identity;
- (id)encodeAttributeWithError:(id *)error;
- (void)dealloc;
@end

@implementation MSCMSEncryptionKeyPreferenceAttribute

- (MSCMSEncryptionKeyPreferenceAttribute)initWithAttribute:(id)attribute certificates:(id)certificates LAContext:(id)context error:(id *)error
{
  attributeCopy = attribute;
  certificatesCopy = certificates;
  contextCopy = context;
  v32.receiver = self;
  v32.super_class = MSCMSEncryptionKeyPreferenceAttribute;
  v13 = [(MSCMSEncryptionKeyPreferenceAttribute *)&v32 init];
  attributeType = [attributeCopy attributeType];
  v15 = [attributeType isEqualToString:@"1.2.840.113549.1.9.16.2.11"];

  if (v15)
  {
    attributeValues = [attributeCopy attributeValues];
    v17 = [attributeValues count];

    if (v17 == 1)
    {
      memset(v31, 0, sizeof(v31));
      attributeValues2 = [attributeCopy attributeValues];
      v19 = [attributeValues2 objectAtIndex:0];
      v20 = nsheim_decode_SMIMEEncryptionKeyPreference(v19, v31);

      if (v20)
      {
        attributeValues3 = [attributeCopy attributeValues];
        v22 = [attributeValues3 objectAtIndex:0];
        v23 = nsheim_decode_SecCMS_SMIMEEncryptionKeyPreference(v22, v31);

        if (v23)
        {
          v30 = 0;
          asn1ErrorToNSError(v20, &v30);
          v24 = v30;
          v25 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v20 underlyingError:v24 description:@"unable to decode Encryption Key Preference Attribute"];

          goto LABEL_14;
        }
      }

      if (LODWORD(v31[0].receiver) == 3 || LODWORD(v31[0].receiver) == 2)
      {
        CertificateBySubjectKeyID = findCertificateBySubjectKeyID(&v31[0].super_class, certificatesCopy, contextCopy, error);
      }

      else
      {
        if (LODWORD(v31[0].receiver) != 1)
        {
          v25 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:0 underlyingError:0 description:@"unknown type for Encryption Key Preference Attribute"];
          goto LABEL_14;
        }

        CertificateBySubjectKeyID = findCertificateByIssuerAndSerialNumber(&v31[0].super_class, certificatesCopy, contextCopy, error);
      }

      if (CertificateBySubjectKeyID)
      {
        v13->_encryptionCertificate = CertificateBySubjectKeyID;
        free_SMIMEEncryptionKeyPreference(v31);
LABEL_17:
        v28 = v13;
        v25 = 0;
        goto LABEL_18;
      }

      [MSCMSEncryptionKeyPreferenceAttribute initWithAttribute:? certificates:? LAContext:? error:?];
    }

    else
    {
      [MSCMSEncryptionKeyPreferenceAttribute initWithAttribute:? certificates:? LAContext:? error:?];
    }
  }

  else
  {
    [MSCMSEncryptionKeyPreferenceAttribute initWithAttribute:? certificates:? LAContext:? error:?];
  }

  v25 = v33;
LABEL_14:
  free_SMIMEEncryptionKeyPreference(v31);
  if (!v25)
  {
    goto LABEL_17;
  }

  if (error)
  {
    v27 = v25;
    v28 = 0;
    *error = v25;
  }

  else
  {
    v28 = 0;
  }

LABEL_18:

  return v28;
}

- (MSCMSEncryptionKeyPreferenceAttribute)initWithCertificate:(__SecCertificate *)certificate
{
  v6.receiver = self;
  v6.super_class = MSCMSEncryptionKeyPreferenceAttribute;
  v4 = [(MSCMSEncryptionKeyPreferenceAttribute *)&v6 init];
  if (v4)
  {
    if (certificate)
    {
      CFRetain(certificate);
    }

    v4->_encryptionCertificate = certificate;
  }

  return v4;
}

- (MSCMSEncryptionKeyPreferenceAttribute)initWithIdentity:(__SecIdentity *)identity
{
  certificateRef = 0;
  if (!SecIdentityCopyCertificate(identity, &certificateRef))
  {
    self = [(MSCMSEncryptionKeyPreferenceAttribute *)self initWithCertificate:certificateRef];
  }

  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  return self;
}

- (MSCMSEncryptionKeyPreferenceAttribute)initWithEmailAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy && (CertificateByEmailAddress = findCertificateByEmailAddress(addressCopy, 0, 0)) != 0)
  {
    self->_encryptionCertificate = CertificateByEmailAddress;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAttributeWithError:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  error = 0;
  encryptionCertificate = self->_encryptionCertificate;
  if (!encryptionCertificate)
  {
    v10 = 0;
    goto LABEL_33;
  }

  v6 = SecCertificateCopyNormalizedIssuerSequence(encryptionCertificate);
  v7 = SecCertificateCopySerialNumberData(self->_encryptionCertificate, &error);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    if (error)
    {
      *error = error;
    }

    goto LABEL_32;
  }

  v32 = 0u;
  v31[0] = 1;
  v31[1] = [(__CFData *)v6 length];
  v31[2] = [(__CFData *)v6 bytes];
  v31[3] = [(__CFData *)v8 length];
  *&v32 = [(__CFData *)v8 bytes];
  DWORD2(v32) = 0;
  if (![(MSCMSEncryptionKeyPreferenceAttribute *)self legacyASN1Encoding])
  {
    v30 = 0;
    v12 = length_SMIMEEncryptionKeyPreference(v31);
    v18 = [MEMORY[0x277CBEB28] dataWithLength:v12];
    if (v18)
    {
      v14 = v18;
      v19 = encode_SMIMEEncryptionKeyPreference([v18 mutableBytes] + v12 - 1, v12, v31, &v30);
      if (!v19)
      {
        goto LABEL_20;
      }

      v20 = v19;

      v17 = v20;
      if (!error)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 12;
      if (!error)
      {
        goto LABEL_27;
      }
    }

    v21 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"Failed encoding type SMIMEEncryptionKeyPreference";
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v35;
    v24 = &v34;
    goto LABEL_26;
  }

  v30 = 0;
  v12 = length_SecCMS_SMIMEEncryptionKeyPreference(v31);
  v13 = [MEMORY[0x277CBEB28] dataWithLength:v12];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = encode_SecCMS_SMIMEEncryptionKeyPreference([v13 mutableBytes] + v12 - 1, v12, v31, &v30);
  if (v15)
  {
    v16 = v15;

    v17 = v16;
    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (v12 != v30)
  {
    asn1_abort();
LABEL_22:
    v17 = 12;
    if (error)
    {
LABEL_23:
      v21 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = @"Failed encoding type SecCMS_SMIMEEncryptionKeyPreference";
      v22 = MEMORY[0x277CBEAC0];
      v23 = v37;
      v24 = &v36;
LABEL_26:
      v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
      *error = [v21 errorWithDomain:@"com.apple.HeimASN1" code:v17 userInfo:v25];
    }

LABEL_27:
    v14 = 0;
  }

  if ([v14 length])
  {
    v26 = [MSCMSAttribute alloc];
    v27 = [MSOID OIDWithString:@"1.2.840.113549.1.9.16.2.11" error:error];
    v28 = [MEMORY[0x277CBEA60] arrayWithObject:v14];
    v10 = [(MSCMSAttribute *)v26 initWithAttributeType:v27 values:v28];
  }

  else
  {
    v10 = 0;
  }

LABEL_32:
LABEL_33:

  return v10;
}

- (void)dealloc
{
  encryptionCertificate = self->_encryptionCertificate;
  if (encryptionCertificate)
  {
    CFRelease(encryptionCertificate);
  }

  v4.receiver = self;
  v4.super_class = MSCMSEncryptionKeyPreferenceAttribute;
  [(MSCMSEncryptionKeyPreferenceAttribute *)&v4 dealloc];
}

- (uint64_t)initWithAttribute:(uint64_t *)a1 certificates:LAContext:error:.cold.1(uint64_t *a1)
{
  result = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:0 description:@"Not an Encryption Key Preference attribute according to AttributeType"];
  *a1 = result;
  return result;
}

- (uint64_t)initWithAttribute:(uint64_t *)a1 certificates:LAContext:error:.cold.2(uint64_t *a1)
{
  result = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:0 description:@"Encryption Key Preference Attribute should only have one value"];
  *a1 = result;
  return result;
}

- (uint64_t)initWithAttribute:(uint64_t *)a1 certificates:LAContext:error:.cold.3(uint64_t *a1)
{
  result = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:0 underlyingError:0 description:@"the Encryption Key Preference Attribute did not match any certificates"];
  *a1 = result;
  return result;
}

@end