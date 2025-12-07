@interface CRKConcretePrivateKey
+ (id)privateKeyWithData:(id)data;
- (CRKConcretePrivateKey)initWithPrivateKey:(__SecKey *)key;
- (NSData)dataRepresentation;
- (void)dataRepresentation;
- (void)dealloc;
@end

@implementation CRKConcretePrivateKey

- (void)dealloc
{
  CFRelease(self->_underlyingPrivateKey);
  v3.receiver = self;
  v3.super_class = CRKConcretePrivateKey;
  [(CRKConcretePrivateKey *)&v3 dealloc];
}

- (CRKConcretePrivateKey)initWithPrivateKey:(__SecKey *)key
{
  v6.receiver = self;
  v6.super_class = CRKConcretePrivateKey;
  v4 = [(CRKConcretePrivateKey *)&v6 init];
  if (v4)
  {
    CFRetain(key);
    v4->_underlyingPrivateKey = key;
  }

  return v4;
}

+ (id)privateKeyWithData:(id)data
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDBFE0];
  v16[0] = *MEMORY[0x277CDC188];
  v16[1] = v4;
  v5 = *MEMORY[0x277CDBFF0];
  v17[0] = *MEMORY[0x277CDC060];
  v17[1] = v5;
  v6 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  v8 = [v6 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15 = 0;
  v9 = SecKeyCreateWithData(dataCopy, v8, &v15);

  if (v9)
  {
    v11 = [[self alloc] initWithPrivateKey:v9];
    CFRelease(v9);
  }

  else
  {
    v12 = v15;
    v13 = _CRKLogGeneral_17(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CRKConcretePrivateKey privateKeyWithData:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (NSData)dataRepresentation
{
  error = 0;
  v2 = SecKeyCopyExternalRepresentation([(CRKConcretePrivateKey *)self underlyingPrivateKey], &error);
  if (!v2)
  {
    v3 = error;
    v4 = _CRKLogGeneral_17(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CRKConcretePrivateKey *)v3 dataRepresentation];
    }
  }

  return v2;
}

+ (void)privateKeyWithData:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 verboseDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Error creating private key from data. Error: %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)dataRepresentation
{
  verboseDescription = [self verboseDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = verboseDescription;
  OUTLINED_FUNCTION_0_3(&dword_243550000, v2, v3, "Error occurred while getting the private key, %{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end