@interface MSCMSIdentifier
+ (id)decodeIdentifier:(heim_base_data *)identifier error:(id *)error;
- (MSCMSIdentifier)initWithIssuerName:(id)name serialNumber:(id)number negativeNumber:(BOOL)negativeNumber;
- (MSCMSIdentifier)initWithSkid:(id)skid;
- (id)encodeMessageSecurityObject:(id *)object;
- (void)dealloc;
@end

@implementation MSCMSIdentifier

- (void)dealloc
{
  free([(MSCMSIdentifier *)self subjectKeyId]);
  free([(MSCMSIdentifier *)self issuerAndSerialNumber]);
  v3.receiver = self;
  v3.super_class = MSCMSIdentifier;
  [(MSCMSIdentifier *)&v3 dealloc];
}

- (MSCMSIdentifier)initWithSkid:(id)skid
{
  skidCopy = skid;
  v13.receiver = self;
  v13.super_class = MSCMSIdentifier;
  v5 = [(MSCMSIdentifier *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MSCMSIdentifier *)v5 setType:2];
    [(MSCMSIdentifier *)v6 setSkidData:skidCopy];
    [(MSCMSIdentifier *)v6 setSubjectKeyId:malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL)];
    if (![(MSCMSIdentifier *)v6 subjectKeyId])
    {
      v11 = 0;
      goto LABEL_6;
    }

    skidData = [(MSCMSIdentifier *)v6 skidData];
    v8 = [skidData length];
    *[(MSCMSIdentifier *)v6 subjectKeyId]= v8;

    skidData2 = [(MSCMSIdentifier *)v6 skidData];
    bytes = [skidData2 bytes];
    *([(MSCMSIdentifier *)v6 subjectKeyId]+ 8) = bytes;
  }

  v11 = v6;
LABEL_6:

  return v11;
}

- (MSCMSIdentifier)initWithIssuerName:(id)name serialNumber:(id)number negativeNumber:(BOOL)negativeNumber
{
  negativeNumberCopy = negativeNumber;
  nameCopy = name;
  numberCopy = number;
  v22.receiver = self;
  v22.super_class = MSCMSIdentifier;
  v10 = [(MSCMSIdentifier *)&v22 init];
  v11 = v10;
  if (v10)
  {
    [(MSCMSIdentifier *)v10 setType:1];
    [(MSCMSIdentifier *)v11 setIssuerNameData:nameCopy];
    [(MSCMSIdentifier *)v11 setSerialNumberData:numberCopy];
    [(MSCMSIdentifier *)v11 setIssuerAndSerialNumber:malloc_type_malloc(0x28uLL, 0x1080040EAE5A63AuLL)];
    if (![(MSCMSIdentifier *)v11 issuerAndSerialNumber])
    {
      v20 = 0;
      goto LABEL_6;
    }

    issuerNameData = [(MSCMSIdentifier *)v11 issuerNameData];
    bytes = [issuerNameData bytes];
    *([(MSCMSIdentifier *)v11 issuerAndSerialNumber]+ 8) = bytes;

    issuerNameData2 = [(MSCMSIdentifier *)v11 issuerNameData];
    v15 = [issuerNameData2 length];
    *[(MSCMSIdentifier *)v11 issuerAndSerialNumber]= v15;

    serialNumberData = [(MSCMSIdentifier *)v11 serialNumberData];
    bytes2 = [serialNumberData bytes];
    *([(MSCMSIdentifier *)v11 issuerAndSerialNumber]+ 24) = bytes2;

    serialNumberData2 = [(MSCMSIdentifier *)v11 serialNumberData];
    v19 = [serialNumberData2 length];
    *([(MSCMSIdentifier *)v11 issuerAndSerialNumber]+ 16) = v19;

    *([(MSCMSIdentifier *)v11 issuerAndSerialNumber]+ 32) = negativeNumberCopy;
  }

  v20 = v11;
LABEL_6:

  return v20;
}

- (id)encodeMessageSecurityObject:(id *)object
{
  v26[1] = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  LODWORD(v21) = [(MSCMSIdentifier *)self type];
  type = [(MSCMSIdentifier *)self type];
  if (type == 2)
  {
    if ([(MSCMSIdentifier *)self subjectKeyId])
    {
      *&v22 = [(MSCMSIdentifier *)self subjectKeyId][8];
      *(&v21 + 1) = *[(MSCMSIdentifier *)self subjectKeyId];
      goto LABEL_7;
    }

    [MSCMSIdentifier encodeMessageSecurityObject:?];
LABEL_24:
    v8 = 0;
    v12 = v24;
    goto LABEL_14;
  }

  if (type != 1)
  {
    v12 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:0 description:@"CMSIdentifer has unknown type: %d", [(MSCMSIdentifier *)self type]];
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (![(MSCMSIdentifier *)self issuerAndSerialNumber])
  {
    [MSCMSIdentifier encodeMessageSecurityObject:?];
    goto LABEL_24;
  }

  *&v22 = [(MSCMSIdentifier *)self issuerAndSerialNumber][8];
  *(&v21 + 1) = *[(MSCMSIdentifier *)self issuerAndSerialNumber];
  *&v23 = [(MSCMSIdentifier *)self issuerAndSerialNumber][24];
  *(&v22 + 1) = [(MSCMSIdentifier *)self issuerAndSerialNumber][16];
  DWORD2(v23) = [(MSCMSIdentifier *)self issuerAndSerialNumber][32];
LABEL_7:
  v24 = 0;
  v6 = length_CMSIdentifier(&v21);
  v7 = [MEMORY[0x277CBEB28] dataWithLength:v6];
  if (!v7)
  {
    v11 = 12;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = encode_CMSIdentifier([v7 mutableBytes] + v6 - 1, v6, &v21, &v24);
  if (v9)
  {
    v10 = v9;

    v11 = v10;
LABEL_12:
    v13 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"Failed encoding type CMSIdentifier";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v12 = [v13 errorWithDomain:@"com.apple.HeimASN1" code:v11 userInfo:v14];

    goto LABEL_13;
  }

  if (v6 != v24)
  {
    v17 = asn1_abort();
    return [(MSCMSIdentifier *)v17 decodeIdentifier:v18 error:v19, v20];
  }

  v12 = 0;
LABEL_14:
  if (object && v12)
  {
    v15 = v12;
    *object = v12;
  }

  return v8;
}

+ (id)decodeIdentifier:(heim_base_data *)identifier error:(id *)error
{
  if (error && *error)
  {
    v6 = [*error copy];
  }

  else
  {
    v6 = 0;
  }

  v19 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = decode_CMSIdentifier(identifier->var1, identifier->var0, &v20, &v19);
  if (v7)
  {
    [(MSCMSIdentifier *)v7 decodeIdentifier:v6 error:&v16];
    goto LABEL_23;
  }

  if (v19 != identifier->var0)
  {
    [MSCMSIdentifier decodeIdentifier:v6 error:&v16];
    goto LABEL_23;
  }

  if (v20 == 2)
  {
    v18 = 0;
    v17 = 0;
    tag = der_get_tag();
    if (!tag)
    {
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:*(&v20 + 1)];
      v11 = [[MSCMSIdentifier alloc] initWithSkid:v8];
      goto LABEL_14;
    }

    [(MSCMSIdentifier *)tag decodeIdentifier:v6 error:&v16];
LABEL_23:
    v11 = 0;
    v6 = v16;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v20 != 1)
  {
    v13 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:0 underlyingError:v6 description:@"invalid CMS Identifier choice"];

    v11 = 0;
    v6 = v13;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:*(&v20 + 1)];
  v9 = CertificateSerialNumberData(&v21 + 8);
  v10 = [MSCMSIdentifier alloc];
  v11 = [(MSCMSIdentifier *)v10 initWithIssuerName:v8 serialNumber:v9 negativeNumber:DWORD2(v22) != 0];

LABEL_14:
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v6)
  {
    v14 = v6;
    *error = v6;
  }

LABEL_17:
  free_CMSIdentifier(&v20);

  return v11;
}

- (uint64_t)encodeMessageSecurityObject:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  result = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:0 description:@"CMSIdentifier has inconsistent type and stored values: expected subjectKeyId"];
  *a1 = result;
  return result;
}

- (uint64_t)encodeMessageSecurityObject:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  result = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:0 description:@"CMSIdentifier has inconsistent type and stored values: expected issuerAndSerialNumber"];
  *a1 = result;
  return result;
}

+ (void)decodeIdentifier:(uint64_t *)a3 error:.cold.1(int a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:a1 underlyingError:a2 description:@"unable to decode CMS Identifier"];
}

+ (void)decodeIdentifier:(void *)a1 error:(uint64_t *)a2 .cold.2(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:1859794442 underlyingError:a1 description:@"unable to decode CMS Identifier"];
}

+ (void)decodeIdentifier:(uint64_t *)a3 error:.cold.3(int a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:a1 underlyingError:a2 description:@"unable to decode CMS Identifier tag"];
}

@end