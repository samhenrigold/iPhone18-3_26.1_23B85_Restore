@interface CUSPAKEVerifier
- (CUSPAKEVerifier)initWithPasswordCString:(const char *)string;
- (CUSPAKEVerifier)initWithPasswordPtr:(const void *)ptr passwordLength:(unint64_t)length;
- (CUSPAKEVerifier)initWithPasswordString:(id)string;
- (id)finishWithM3:(id)m3 error:(id *)error;
- (id)generateM2WithM1:(id)m1 error:(id *)error;
- (void)dealloc;
@end

@implementation CUSPAKEVerifier

- (id)finishWithM3:(id)m3 error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  m3Copy = m3;
  v7 = m3Copy;
  if (!self->_spakeContext)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "no spake context");
LABEL_13:
      *error = v11 = 0;
      goto LABEL_6;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_6;
  }

  confirmPData = [m3Copy confirmPData];
  [confirmPData length];
  confirmPData2 = [v7 confirmPData];
  [confirmPData2 bytes];
  session_key = ccspake_mac_verify_and_get_session_key();

  if (session_key)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake verify failed: %d");
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  ccspake_cp_256_rfc();
  ccspake_sizeof_ctx();
  cc_clear();
  free(self->_spakeContext);
  self->_spakeContext = 0;
  v11 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v14 length:32];
  cc_clear();
  if (v11)
  {
    v12 = v11;
  }

  else if (error)
  {
    *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "generate session key failed");
  }

LABEL_6:

  return v11;
}

- (id)generateM2WithM1:(id)m1 error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  m1Copy = m1;
  ccspake_cp_256_rfc();
  if (![CUSPAKECommon scryptWithPasswordData:"scryptWithPasswordData:outputPtr:outputLen:error:" outputPtr:self->_passwordData outputLen:&v18[-((2 * (ccspake_sizeof_w() + 8) + 15) & 0xFFFFFFFFFFFFFFF0) - 8] error:?])
  {
    goto LABEL_21;
  }

  if (ccspake_reduce_w())
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w0: %d");
      goto LABEL_20;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_13;
  }

  if (ccspake_reduce_w())
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w1: %d");
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v17 = &v17;
  v7 = ccspake_sizeof_point();
  ccrng();
  if (ccspake_generate_L())
  {
    if (!error)
    {
      goto LABEL_34;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_generate_L");
LABEL_20:
    *error = v13 = 0;
    goto LABEL_13;
  }

  if (self->_spakeContext)
  {
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
  }

  v8 = ccspake_sizeof_ctx();
  v9 = malloc_type_malloc(v8, 0x1060040E1C2CD2EuLL);
  self->_spakeContext = v9;
  if (!v9)
  {
    if (!error)
    {
      goto LABEL_34;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "ccspake_ctx malloc failed");
    goto LABEL_20;
  }

  ccspake_mac_hkdf_hmac_sha256();
  if (ccspake_verifier_initialize())
  {
    if (!error)
    {
      goto LABEL_34;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_prover_initialize failed: %d");
    goto LABEL_20;
  }

  if (ccspake_kex_generate())
  {
    if (!error)
    {
      goto LABEL_34;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_kex_generate failed: %d");
    goto LABEL_20;
  }

  sharePData = [m1Copy sharePData];
  [sharePData length];
  sharePData2 = [m1Copy sharePData];
  [sharePData2 bytes];
  v12 = ccspake_kex_process();

  if (!v12)
  {
    if (!ccspake_mac_compute())
    {
      v13 = objc_alloc_init(CUSPAKEM2);
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:32];
      [(CUSPAKEM2 *)v13 setConfirmVData:v14];

      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8] length:v7];
      [(CUSPAKEM2 *)v13 setShareVData:v15];

      goto LABEL_13;
    }

    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_mac_compute failed: %d");
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_kex_process failed: %d");
    goto LABEL_20;
  }

LABEL_34:
  v13 = 0;
LABEL_13:

  return v13;
}

- (void)dealloc
{
  if (self->_spakeContext)
  {
    ccspake_cp_256_rfc();
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
    self->_spakeContext = 0;
  }

  v3.receiver = self;
  v3.super_class = CUSPAKEVerifier;
  [(CUSPAKEVerifier *)&v3 dealloc];
}

- (CUSPAKEVerifier)initWithPasswordString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = CUSPAKEVerifier;
  v5 = [(CUSPAKEVerifier *)&v11 init];
  if (v5)
  {
    uTF8String = [stringCopy UTF8String];
    v7 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:uTF8String length:strlen(uTF8String)];
    passwordData = v5->_passwordData;
    v5->_passwordData = v7;

    v9 = v5;
  }

  return v5;
}

- (CUSPAKEVerifier)initWithPasswordPtr:(const void *)ptr passwordLength:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = CUSPAKEVerifier;
  v6 = [(CUSPAKEVerifier *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:ptr length:length];
    passwordData = v6->_passwordData;
    v6->_passwordData = v7;

    v9 = v6;
  }

  return v6;
}

- (CUSPAKEVerifier)initWithPasswordCString:(const char *)string
{
  v9.receiver = self;
  v9.super_class = CUSPAKEVerifier;
  v4 = [(CUSPAKEVerifier *)&v9 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:string length:strlen(string)];
    passwordData = v4->_passwordData;
    v4->_passwordData = v5;

    v7 = v4;
  }

  return v4;
}

@end