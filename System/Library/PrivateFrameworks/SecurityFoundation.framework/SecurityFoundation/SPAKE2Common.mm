@interface SPAKE2Common
- (BOOL)generateStateWithError:(id *)error;
- (BOOL)processMsg1:(id)msg1 error:(id *)error;
- (BOOL)processMsg2Orig:(id)orig error:(id *)error;
- (BOOL)processMsg2Web:(id)web error:(id *)error;
- (BOOL)setupProver:(id *)prover;
- (BOOL)setupRFCProver:(id *)prover;
- (BOOL)setupRFCVerifier:(id *)verifier;
- (BOOL)setupVerifier:(id *)verifier;
- (SPAKE2Common)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng cp:(ccspake_cp *)cp;
- (id)_decodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error;
- (id)_decodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error;
- (id)_decryptMessageInBase64:(id)base64 info:(id)info error:(id *)error;
- (id)_decryptMessageInBinary:(id)binary info:(id)info error:(id *)error;
- (id)_encodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error;
- (id)_encodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error;
- (id)_encryptMessageAsBase64:(id)base64 info:(id)info error:(id *)error;
- (id)_encryptMessageAsBinary:(id)binary info:(id)info error:(id *)error;
- (id)decryptMessage:(id)message error:(id *)error;
- (id)encryptMessage:(id)message error:(id *)error;
- (id)getMsg1WithError:(id *)error;
- (id)getMsg2WithError:(id *)error;
- (void)dealloc;
@end

@implementation SPAKE2Common

- (SPAKE2Common)initWithSalt:(id)salt code:(id)code rng:(ccrng_state *)rng cp:(ccspake_cp *)cp
{
  saltCopy = salt;
  codeCopy = code;
  v16.receiver = self;
  v16.super_class = SPAKE2Common;
  v12 = [(SPAKE2Common *)&v16 init];
  v13 = v12;
  if (!v12)
  {
LABEL_5:
    cp = v13;
    goto LABEL_6;
  }

  [(SPAKE2Common *)v12 setRng:rng];
  if (cp)
  {
    [(SPAKE2Common *)v13 setCp:cp];
    [(SPAKE2Common *)v13 setMac:ccspake_mac_hkdf_hmac_sha256()];
    [(SPAKE2Common *)v13 cp];
    v14 = ccspake_sizeof_ctx();
    [(SPAKE2Common *)v13 setSpake_ctx:malloc_type_malloc(v14, 0x1EB6F675uLL)];
    if (![(SPAKE2Common *)v13 spake_ctx])
    {
      cp = 0;
      goto LABEL_6;
    }

    [(SPAKE2Common *)v13 setSalt:saltCopy];
    [(SPAKE2Common *)v13 setCode:codeCopy];
    [(SPAKE2Common *)v13 cp];
    [(SPAKE2Common *)v13 setW_size:ccspake_sizeof_w()];
    [(SPAKE2Common *)v13 cp];
    [(SPAKE2Common *)v13 setPoint_size:ccspake_sizeof_point()];
    goto LABEL_5;
  }

LABEL_6:

  return cp;
}

- (BOOL)generateStateWithError:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  code = [(SPAKE2Common *)self code];
  uTF8String = [code UTF8String];

  v7 = &v25 - ((2 * [(SPAKE2Common *)self w_size]+ 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ccscrypt_storage_size();
  if ((v8 & 0x8000000000000000) != 0)
  {
    if (!error)
    {
      return 0;
    }

    v19 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31[0] = @"sscrypt_storage_size params failed";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v20 = v19;
    v21 = -1;
LABEL_10:
    [v20 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v21 userInfo:v16];
    *error = v18 = 0;
    goto LABEL_13;
  }

  v9 = malloc_type_malloc(v8, 0x59020BCFuLL);
  if (!v9)
  {
    if (!error)
    {
      return 0;
    }

    v22 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"malloc failed";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = v22;
    v21 = -8;
    goto LABEL_10;
  }

  v10 = v9;
  strlen(uTF8String);
  salt = [(SPAKE2Common *)self salt];
  [salt length];
  salt2 = [(SPAKE2Common *)self salt];
  [salt2 bytes];
  v13 = ccscrypt();

  free(v10);
  if (!v13)
  {
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:{-[SPAKE2Common w_size](self, "w_size")}];
    [(SPAKE2Common *)self setW0:v23];

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v7[-[SPAKE2Common w_size](self length:{"w_size")], -[SPAKE2Common w_size](self, "w_size")}];
    [(SPAKE2Common *)self setW1:v16];
    v18 = 1;
    goto LABEL_13;
  }

  if (error)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = v13;
    v26 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccscrypt failed: %d", v13];
    v27 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v15 userInfo:v17];

    v18 = 0;
LABEL_13:

    return v18;
  }

  return 0;
}

- (BOOL)setupProver:(id *)prover
{
  v13[1] = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self cp];
  [(SPAKE2Common *)self mac];
  [(SPAKE2Common *)self rng];
  [(SPAKE2Common *)self w_size];
  v5 = [(SPAKE2Common *)self w0];
  [v5 bytes];
  v6 = [(SPAKE2Common *)self w1];
  [v6 bytes];
  v7 = ccspake_prover_init();

  if (prover && v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_prover_init failed: %d", v7, *MEMORY[0x277CCA450]];
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *prover = [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v7 userInfo:v10];
  }

  return v7 == 0;
}

- (BOOL)setupRFCProver:(id *)prover
{
  v17[1] = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self cp];
  [(SPAKE2Common *)self mac];
  [(SPAKE2Common *)self rng];
  strlen(context);
  strlen(idProver);
  strlen(idVerifier);
  w_size = [(SPAKE2Common *)self w_size];
  v5 = [(SPAKE2Common *)self w0];
  bytes = [v5 bytes];
  v7 = [(SPAKE2Common *)self w1];
  v13 = bytes;
  bytes2 = [v7 bytes];
  v8 = ccspake_prover_initialize();

  if (prover && v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_prover_initialize failed: %d", v8, idVerifier, w_size, v13, bytes2];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *prover = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v8 userInfo:v11];
  }

  return v8 == 0;
}

- (BOOL)setupVerifier:(id *)verifier
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0xDFF5DE34uLL);
  if (v5)
  {
    v6 = v5;
    [(SPAKE2Common *)self cp];
    [(SPAKE2Common *)self w_size];
    v7 = [(SPAKE2Common *)self w1];
    [v7 bytes];
    [(SPAKE2Common *)self point_size];
    [(SPAKE2Common *)self rng];
    L = ccspake_generate_L();

    if (L)
    {
      free(v6);
      if (verifier)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = L;
        v22 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_generate_L failed: %d", L];
        v23 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *verifier = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_10:
      }
    }

    else
    {
      [(SPAKE2Common *)self spake_ctx];
      [(SPAKE2Common *)self cp];
      [(SPAKE2Common *)self mac];
      [(SPAKE2Common *)self rng];
      [(SPAKE2Common *)self w_size];
      v14 = [(SPAKE2Common *)self w0];
      [v14 bytes];
      [(SPAKE2Common *)self point_size];
      v15 = ccspake_verifier_init();

      free(v6);
      if (!v15)
      {
        return 1;
      }

      if (verifier)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = v15;
        v20 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_verifier_init failed: %d", v15, v6];
        v21 = v11;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        *verifier = [v16 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v17 userInfo:v18];

        goto LABEL_10;
      }
    }
  }

  else if (verifier)
  {
    v13 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"malloc failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *verifier = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v11];
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)setupRFCVerifier:(id *)verifier
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0x1C64FC9AuLL);
  if (v5)
  {
    v6 = v5;
    [(SPAKE2Common *)self cp];
    [(SPAKE2Common *)self w_size];
    v7 = [(SPAKE2Common *)self w1];
    [v7 bytes];
    [(SPAKE2Common *)self point_size];
    [(SPAKE2Common *)self rng];
    L = ccspake_generate_L();

    if (L)
    {
      free(v6);
      if (verifier)
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = L;
        v26 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_generate_L failed: %d", L];
        v27 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        *verifier = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_10:
      }
    }

    else
    {
      [(SPAKE2Common *)self spake_ctx];
      [(SPAKE2Common *)self cp];
      [(SPAKE2Common *)self mac];
      [(SPAKE2Common *)self rng];
      strlen(context);
      strlen(idProver);
      strlen(idVerifier);
      w_size = [(SPAKE2Common *)self w_size];
      v15 = [(SPAKE2Common *)self w0];
      bytes = [v15 bytes];
      point_size = [(SPAKE2Common *)self point_size];
      v22 = w_size;
      v17 = ccspake_verifier_initialize();

      free(v6);
      if (!v17)
      {
        return 1;
      }

      if (verifier)
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = v17;
        v24 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_verifier_initialize failed: %d", v17, idVerifier, v22, bytes, point_size, v6];
        v25 = v11;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        *verifier = [v18 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v19 userInfo:v20];

        goto LABEL_10;
      }
    }
  }

  else if (verifier)
  {
    v13 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"malloc failed";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *verifier = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v11];
    goto LABEL_10;
  }

  return 0;
}

- (void)dealloc
{
  free([(SPAKE2Common *)self spake_ctx]);
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  [raw_session_key length];
  raw_session_key2 = [(SPAKE2Common *)self raw_session_key];
  [raw_session_key2 mutableBytes];
  cc_clear();

  v5.receiver = self;
  v5.super_class = SPAKE2Common;
  [(SPAKE2Common *)&v5 dealloc];
}

- (id)getMsg1WithError:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc([(SPAKE2Common *)self point_size], 0xD365D7C2uLL);
  if (!v5)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"malloc failed";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v13 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-8 userInfo:v14];

    goto LABEL_7;
  }

  v6 = v5;
  [(SPAKE2Common *)self spake_ctx];
  [(SPAKE2Common *)self point_size];
  v7 = ccspake_kex_generate();
  if (v7)
  {
    v8 = v7;
    free(v6);
    if (!error)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = v8;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_kex_generate failed: %d", v8, *MEMORY[0x277CCA450]];
    v17 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *error = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v10 userInfo:v12];

LABEL_7:
    error = 0;
    goto LABEL_9;
  }

  error = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{-[SPAKE2Common point_size](self, "point_size")}];
  free(v6);
LABEL_9:

  return error;
}

- (BOOL)processMsg1:(id)msg1 error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  msg1Copy = msg1;
  [(SPAKE2Common *)self spake_ctx];
  [msg1Copy length];
  [msg1Copy bytes];

  v7 = ccspake_kex_process();
  v8 = v7;
  if (error && v7)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_kex_process failed: %d", v7, *MEMORY[0x277CCA450]];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v8 userInfo:v11];
  }

  return v8 == 0;
}

- (id)getMsg2WithError:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  [(SPAKE2Common *)self spake_ctx];
  v4 = ccspake_mac_compute();
  if (v4)
  {
    if (error)
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = v4;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_generate failed: %d", v4, *MEMORY[0x277CCA450]];
      v12 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *error = [v5 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v6 userInfo:v8];
    }

    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:32];
  }

  return v9;
}

- (BOOL)processMsg2Orig:(id)orig error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  origCopy = orig;
  [(SPAKE2Common *)self spake_ctx];
  [origCopy length];
  [origCopy bytes];

  session_key = ccspake_mac_verify_and_get_session_key();
  if (session_key)
  {
    if (!error)
    {
      return 0;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = session_key;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_verify_and_get_session_key failed: %d", session_key, *MEMORY[0x277CCA450]];
    v17 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v9 userInfo:v11];
    *error = v12 = 0;
  }

  else
  {
    v10 = [[_SFAESKeySpecifier alloc] initWithBitSize:0];
    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v18 length:16 freeWhenDone:0];
    v13 = [(_SFSymmetricKey *)[_SFAESKey alloc] initWithData:v11 specifier:v10 error:error];
    [(SPAKE2Common *)self setSession_key:v13];

    cc_clear();
    session_key = [(SPAKE2Common *)self session_key];
    v12 = session_key != 0;

    if (session_key)
    {
      v12 = 1;
      [(SPAKE2Common *)self setVerified:1];
    }
  }

  return v12;
}

- (BOOL)processMsg2Web:(id)web error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  webCopy = web;
  [(SPAKE2Common *)self spake_ctx];
  [webCopy length];
  [webCopy bytes];

  session_key = ccspake_mac_verify_and_get_session_key();
  if (session_key)
  {
    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccspake_mac_verify_and_get_session_key failed: %d", session_key, *MEMORY[0x277CCA450]];
      v14 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [v8 errorWithDomain:@"SFCoreCryptoErrorDomain" code:session_key userInfo:v10];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEB28] dataWithBytes:v15 length:32];
    [(SPAKE2Common *)self setRaw_session_key:v11];

    cc_clear();
    [(SPAKE2Common *)self setVerified:1];
  }

  return session_key == 0;
}

- (id)encryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v8 = [[_SFAuthenticatedEncryptionOperation alloc] initWithKeySpecifier:v7];
  getSessionKey = [(SPAKE2Common *)self getSessionKey];
  salt = [(SPAKE2Common *)self salt];
  v11 = [(_SFAuthenticatedEncryptionOperation *)v8 encrypt:messageCopy withKey:getSessionKey additionalAuthenticatedData:salt error:error];

  if (v11)
  {
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:error];
    v13 = v12;
    if (v12)
    {
      if (error)
      {
        *error = 0;
      }

      v14 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)decryptMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v7 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];
  v8 = [[_SFAuthenticatedEncryptionOperation alloc] initWithKeySpecifier:v7];
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:messageCopy error:error];

  if (v9)
  {
    getSessionKey = [(SPAKE2Common *)self getSessionKey];
    salt = [(SPAKE2Common *)self salt];
    v12 = [(_SFAuthenticatedEncryptionOperation *)v8 decrypt:v9 withKey:getSessionKey additionalAuthenticatedData:salt error:error];

    if (v12)
    {
      if (error)
      {
        *error = 0;
      }

      v13 = v12;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_encodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  binaryCopy = binary;
  infoCopy = info;
  keyCopy = key;
  ccsha256_di();
  [keyCopy length];
  [keyCopy bytes];

  [infoCopy length];
  [infoCopy UTF8String];

  v13 = cchkdf();
  if (!v13)
  {
    errorCopy = error;
    ccaes_gcm_encrypt_mode();
    v16 = [MEMORY[0x277CBEB28] dataWithLength:{12, v38}];
    v19 = [(SPAKE2Common *)self rng];
    (v19->var0)(v19, [v16 length], objc_msgSend(v16, "mutableBytes"));
    v17 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(binaryCopy, "length")}];
    v20 = [MEMORY[0x277CBEB28] dataWithLength:16];
    v33 = 0;
    [v16 length];
    [v16 bytes];
    [binaryCopy length];
    bytes = [binaryCopy bytes];
    mutableBytes = [v17 mutableBytes];
    v30 = [v20 length];
    mutableBytes2 = [v20 mutableBytes];
    v29 = mutableBytes;
    v23 = ccgcm_one_shot();
    cc_clear();
    if (v23)
    {
      if (!error)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = v23;
      v34 = *MEMORY[0x277CCA450];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccgm_one_shot failed: %d", v23, v29, v30, mutableBytes2];
      v35 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *errorCopy = [v24 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v25 userInfo:v27];

      v18 = 0;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v26 appendBytes:&v33 length:{1, bytes, v29, v30, mutableBytes2}];
      [v26 appendData:v16];
      [v26 appendData:v20];
      [v26 appendData:v17];
      v18 = [MEMORY[0x277CBEA90] dataWithData:v26];
    }

LABEL_11:
    goto LABEL_12;
  }

  if (!error)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = v13;
  v36 = *MEMORY[0x277CCA450];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"cchkdf failed: %d", v13];
  v37 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v15 userInfo:v17];
  *error = v18 = 0;
LABEL_12:

LABEL_13:

  return v18;
}

- (id)_decodeBinary:(id)binary withKey:(id)key info:(id)info error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  binaryCopy = binary;
  keyCopy = key;
  infoCopy = info;
  if ([binaryCopy length] <= 0x1C)
  {
    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"message too short";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      *error = [v12 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-163 userInfo:v13];
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v37 = *[binaryCopy bytes];
  if (v37)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown version: %d", v37];
      v44 = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *error = [v14 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-7 userInfo:v15];

      goto LABEL_7;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  ccsha256_di();
  [keyCopy length];
  [keyCopy bytes];
  [infoCopy length];
  [infoCopy UTF8String];
  v18 = cchkdf();
  if (v18)
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = v18;
    v40 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"cchkdf failed: %d", v18];
    v41 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v19 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v20 userInfo:v22];
    *error = v16 = 0;
  }

  else
  {
    ccaes_gcm_decrypt_mode();
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(binaryCopy length:{"bytes", v42) + 1, 12}];
    v22 = [MEMORY[0x277CBEB28] dataWithBytes:objc_msgSend(binaryCopy length:{"bytes") + 13, 16}];
    v24 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(binaryCopy length:{"bytes") + 29, objc_msgSend(binaryCopy, "length") - 29}];
    v25 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v24, "length")}];
    [v23 length];
    v36 = v23;
    [v23 bytes];
    [v24 length];
    bytes = [v24 bytes];
    mutableBytes = [v25 mutableBytes];
    v33 = [v22 length];
    mutableBytes2 = [v22 mutableBytes];
    v32 = mutableBytes;
    v28 = ccgcm_one_shot();
    cc_clear();
    if (v28)
    {
      if (error)
      {
        v35 = MEMORY[0x277CCA9B8];
        v29 = v28;
        v38 = *MEMORY[0x277CCA450];
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"ccgm_one_shot failed: %d", v28, v32, v33, mutableBytes2];
        v39 = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *error = [v35 errorWithDomain:@"SFCoreCryptoErrorDomain" code:v29 userInfo:v31];
      }

      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CBEA90] dataWithData:{v25, bytes, v32, v33, mutableBytes2}];
    }

    v21 = v36;
  }

LABEL_9:

  return v16;
}

- (id)_encryptMessageAsBinary:(id)binary info:(id)info error:(id *)error
{
  infoCopy = info;
  binaryCopy = binary;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _encodeBinary:binaryCopy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

- (id)_decryptMessageInBinary:(id)binary info:(id)info error:(id *)error
{
  infoCopy = info;
  binaryCopy = binary;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _decodeBinary:binaryCopy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

- (id)_encodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error
{
  v6 = [(SPAKE2Common *)self _encodeBinary:base64 withKey:key info:info error:error];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_decodeBase64:(id)base64 withKey:(id)key info:(id)info error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  infoCopy = info;
  v12 = MEMORY[0x277CBEA90];
  base64Copy = base64;
  v14 = [[v12 alloc] initWithBase64EncodedString:base64Copy options:0];

  if (v14)
  {
    error = [(SPAKE2Common *)self _decodeBinary:v14 withKey:keyCopy info:infoCopy error:error];
  }

  else if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"failed to decode base64";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v15 errorWithDomain:@"SFCoreCryptoErrorDomain" code:-7 userInfo:v16];

    error = 0;
  }

  return error;
}

- (id)_encryptMessageAsBase64:(id)base64 info:(id)info error:(id *)error
{
  infoCopy = info;
  base64Copy = base64;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _encodeBase64:base64Copy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

- (id)_decryptMessageInBase64:(id)base64 info:(id)info error:(id *)error
{
  infoCopy = info;
  base64Copy = base64;
  raw_session_key = [(SPAKE2Common *)self raw_session_key];
  v11 = [(SPAKE2Common *)self _decodeBase64:base64Copy withKey:raw_session_key info:infoCopy error:error];

  return v11;
}

@end