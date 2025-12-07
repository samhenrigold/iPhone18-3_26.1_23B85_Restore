@interface RSABSSATokenIssuer
- (RSABSSATokenIssuer)initWithKeyByteCount:(unint64_t)count;
- (id)blindSign:(id)sign error:(id *)error;
@end

@implementation RSABSSATokenIssuer

- (RSABSSATokenIssuer)initWithKeyByteCount:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = RSABSSATokenIssuer;
  v4 = [(RSABSSATokenIssuer *)&v14 init];
  if (!v4)
  {
    goto LABEL_10;
  }

  ccrng();
  switch(count)
  {
    case 0x100uLL:
      v5 = MEMORY[0x1E69E95B0];
      break;
    case 0x200uLL:
      v5 = MEMORY[0x1E69E95C0];
      break;
    case 0x180uLL:
      v5 = MEMORY[0x1E69E95B8];
      break;
    default:
      v4->_ciphersuite = 0;
      goto LABEL_12;
  }

  v4->_ciphersuite = v5;
  v4->_ciphersuiteModulusByteCount = count;
  if (ccrsa_generate_key())
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  ccrsa_ctx_public();
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:ccder_encode_rsa_pub_size()];
  [v6 mutableBytes];
  [v6 mutableBytes];
  [v6 length];
  ccder_encode_rsa_pub();
  v7 = [_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging serializeWithKeyBytes:v6 error:0];
  publicKey = v4->_publicKey;
  v4->_publicKey = v7;

  publicKey = [(RSABSSATokenIssuer *)v4 publicKey];
  v10 = [RSABSSATokenBlinder keyIDFromSPKI:publicKey];
  keyId = v4->_keyId;
  v4->_keyId = v10;

LABEL_10:
  v12 = v4;
LABEL_13:

  return v12;
}

- (id)blindSign:(id)sign error:(id *)error
{
  v14[3] = *MEMORY[0x1E69E9840];
  signCopy = sign;
  ccrng();
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:self->_ciphersuiteModulusByteCount];
  [signCopy bytes];
  [signCopy length];
  [v7 mutableBytes];
  [v7 length];
  v8 = ccrsabssa_sign_blinded_message();
  if (v8)
  {
    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v13 = @"corecrypto_error";
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v14[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = [v9 errorWithDomain:@"com.apple.cryptokit.rsabssa" code:5 userInfo:v11];

      error = 0;
    }
  }

  else
  {
    v7 = v7;
    error = v7;
  }

  return error;
}

@end