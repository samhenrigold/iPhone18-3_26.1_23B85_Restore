@interface CoreCryptoP256Private
+ (id)generate;
+ (void)generate;
- (CoreCryptoP256Private)initWithData:(id)data error:(id *)error;
- (CoreCryptoP256Private)initWithKey:(ccec_full_ctx *)key;
- (id)keyAgreement:(id)agreement error:(id *)error;
- (id)keychainData;
- (id)publicKey;
- (id)signData:(id)data error:(id *)error;
- (void)dealloc;
@end

@implementation CoreCryptoP256Private

- (CoreCryptoP256Private)initWithKey:(ccec_full_ctx *)key
{
  v5.receiver = self;
  v5.super_class = CoreCryptoP256Private;
  result = [(CoreCryptoP256Private *)&v5 init];
  if (result)
  {
    result->_full_key = key;
  }

  return result;
}

+ (id)generate
{
  v3 = MEMORY[0x2318925A0](self, a2);
  v4 = malloc_type_malloc((32 * *v3) | 0x10, 0x60040B37CB4BBuLL);
  ccrng();
  key = ccec_compact_generate_key();
  if (key)
  {
    v7 = key;
    v8 = MessageProtectionLog(key);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(CoreCryptoP256Private *)v7];
    }

    free(v4);
    v6 = 0;
  }

  else
  {
    v6 = [[self alloc] initWithKey:v4];
  }

  return v6;
}

- (id)keyAgreement:(id)agreement error:(id *)error
{
  dataRepresentation = [agreement dataRepresentation];
  if (!dataRepresentation)
  {
    MPLogAndAssignError(7, error, @"Failed to obtain data for the public key.");
    v7 = 0;
    goto LABEL_12;
  }

  v6 = MEMORY[0x2318925A0]();
  MEMORY[0x28223BE20](v6);
  [dataRepresentation length];
  [dataRepresentation bytes];
  if (ccec_compact_import_pub())
  {
    MPLogAndAssignError(7, error, @"Failed to initialize compact corecrypto public key.");
    v7 = 0;
    goto LABEL_12;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  if (!ccrng())
  {
    v9 = @"Failed to initialize masking rng for corecrypto key agreement.";
    v10 = 7;
LABEL_10:
    MPLogAndAssignError(v10, error, v9);
    v7 = 0;
    goto LABEL_11;
  }

  [v8 mutableBytes];
  if (ccecdh_compute_shared_secret())
  {
    v9 = @"Failure to compute a shared secret with corecrypto.";
    v10 = 405;
    goto LABEL_10;
  }

  v7 = v8;
LABEL_11:

LABEL_12:

  return v7;
}

- (id)publicKey
{
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(cczp_bitlen() + 7) >> 3];
  [v2 mutableBytes];
  ccec_compact_export_pub();
  v5 = 0;
  v3 = [[SecKeyP256Public alloc] initWithData:v2 error:&v5];

  return v3;
}

- (void)dealloc
{
  full_key = self->_full_key;
  if (full_key)
  {
    free(full_key);
  }

  v4.receiver = self;
  v4.super_class = CoreCryptoP256Private;
  [(CoreCryptoP256Private *)&v4 dealloc];
}

- (id)keychainData
{
  v2 = MessageProtectionLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(CoreCryptoP256Private *)v2 keychainData:v3];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEA90]);

  return v10;
}

- (id)signData:(id)data error:(id *)error
{
  v4 = MessageProtectionLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(CoreCryptoP256Private *)v4 signData:v5 error:v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (CoreCryptoP256Private)initWithData:(id)data error:(id *)error
{
  v5 = MessageProtectionLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(CoreCryptoP256Private *)v5 initWithData:v6 error:v7, v8, v9, v10, v11, v12];
  }

  return 0;
}

+ (void)generate
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to generate an ephemeral ECDH key error code: %i", v2, 8u);
}

@end