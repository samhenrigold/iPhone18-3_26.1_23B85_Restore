@interface SecKeyP256Public
- (BOOL)verifySignature:(id)signature data:(id)data;
- (SecKeyP256Public)initWithData:(id)data error:(id *)error;
- (SecKeyP256Public)initWithSecKeyRef:(__SecKey *)ref;
- (id)dataRepresentation;
- (void)dataRepresentation;
- (void)dealloc;
@end

@implementation SecKeyP256Public

- (void)dealloc
{
  publicKeyRef = self->_publicKeyRef;
  if (publicKeyRef)
  {
    CFRelease(publicKeyRef);
  }

  v4.receiver = self;
  v4.super_class = SecKeyP256Public;
  [(SecKeyP256Public *)&v4 dealloc];
}

- (SecKeyP256Public)initWithSecKeyRef:(__SecKey *)ref
{
  v7.receiver = self;
  v7.super_class = SecKeyP256Public;
  v4 = [(SecKeyP256Public *)&v7 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (ref)
  {
    v4->_publicKeyRef = ref;
LABEL_4:
    ref = v4;
  }

  return ref;
}

- (id)dataRepresentation
{
  error[1] = *MEMORY[0x277D85DE8];
  serializedKey = self->_serializedKey;
  if (serializedKey)
  {
    v3 = serializedKey;
  }

  else
  {
    error[0] = 0;
    v5 = SecKeyCopyExternalRepresentation([(SecKeyP256Public *)self publicKeyRef], error);
    if (v5)
    {
      v6 = MEMORY[0x2318925A0]();
      MEMORY[0x28223BE20](v6);
      [(__CFData *)v5 length];
      [(__CFData *)v5 bytes];
      v7 = ccec_x963_import_pub();
      if (v7)
      {
        v8 = MessageProtectionLog(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SecKeyP256Public dataRepresentation];
        }

        v3 = 0;
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(cczp_bitlen() + 7) >> 3];
        [(NSData *)v16 bytes];
        ccec_compact_export_pub();
        v17 = self->_serializedKey;
        self->_serializedKey = v16;
        v8 = v16;

        v3 = self->_serializedKey;
      }
    }

    else
    {
      v9 = MessageProtectionLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SecKeyP256Public *)error dataRepresentation:v9];
      }

      if (error[0])
      {
        CFRelease(error[0]);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (SecKeyP256Public)initWithData:(id)data error:(id *)error
{
  v22[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = MEMORY[0x2318925A0]();
  MEMORY[0x28223BE20](v7);
  [dataCopy length];
  [dataCopy bytes];
  if (ccec_compact_import_pub())
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [dataCopy description];
    v10 = [v8 stringWithFormat:@"Incorrect data for public key: %@", v9];
    MPLogAndAssignError(7, error, v10);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:((cczp_bitlen() + 7) >> 2) | 1];
    [v9 bytes];
    ccec_export_pub();
    v11 = *MEMORY[0x277CDC040];
    v12 = *MEMORY[0x277CDBFE0];
    v21[0] = *MEMORY[0x277CDC028];
    v21[1] = v12;
    v13 = *MEMORY[0x277CDC000];
    v22[0] = v11;
    v22[1] = v13;
    v14 = *MEMORY[0x277CDBFD0];
    v21[2] = *MEMORY[0x277CDC018];
    v21[3] = v14;
    v22[2] = &unk_283F13BB0;
    v22[3] = MEMORY[0x277CBEC28];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    error = 0;
    v15 = SecKeyCreateWithData(v9, v10, &error);
    v16 = [(SecKeyP256Public *)self init];
    self = v16;
    if (v15)
    {
      v16->_publicKeyRef = v15;
      error = v16;
      goto LABEL_6;
    }

    if (!error)
    {
      goto LABEL_6;
    }

    errorCopy = error;
    *error = errorCopy;
    v19 = MessageProtectionLog(errorCopy);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(SecKeyP256Public *)error initWithData:dataCopy error:v19];
    }
  }

  error = 0;
LABEL_6:

  return error;
}

- (BOOL)verifySignature:(id)signature data:(id)data
{
  error = 0;
  v6 = MEMORY[0x277CBEB28];
  dataCopy = data;
  signatureCopy = signature;
  v9 = [v6 dataWithLength:32];
  bytes = [dataCopy bytes];
  v11 = [dataCopy length];

  CC_SHA256(bytes, v11, [v9 bytes]);
  publicKeyRef = [(SecKeyP256Public *)self publicKeyRef];
  v13 = SecKeyVerifySignature(publicKeyRef, *MEMORY[0x277CDC318], v9, signatureCopy, &error);

  if (error)
  {
    v14 = CFErrorCopyDescription(error);
    v15 = MessageProtectionLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SecKeyP256Public verifySignature:data:];
    }

    CFRelease(error);
    v16 = 0;
  }

  else
  {
    v16 = v13 != 0;
  }

  return v16;
}

- (void)dataRepresentation
{
  v8 = *self;
  if (*self)
  {
    v9 = CFCopyDescription(*self);
  }

  else
  {
    v9 = @"No error set";
  }

  LODWORD(v10) = 138412290;
  HIDWORD(v10) = v9;
  OUTLINED_FUNCTION_1_1(&dword_22B404000, a2, a3, "Failed to get the data representation of the SecKeyP256 public key: %@", a5, a6, a7, a8, v10, HIDWORD(v9));
  if (v8)
  {
  }
}

- (void)initWithData:(os_log_t)log error:.cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22B404000, log, OS_LOG_TYPE_ERROR, "Failed to initialize public key from data with error: %@ for data: %@.", &v4, 0x16u);
}

@end