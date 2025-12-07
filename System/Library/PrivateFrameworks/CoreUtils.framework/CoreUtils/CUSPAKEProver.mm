@interface CUSPAKEProver
- (CUSPAKEProver)initWithPasswordCString:(const char *)string;
- (CUSPAKEProver)initWithPasswordPtr:(const void *)ptr passwordLength:(unint64_t)length;
- (CUSPAKEProver)initWithPasswordString:(id)string;
- (id)finishAndReturnError:(id *)error;
- (id)generateM1AndReturnError:(id *)error;
- (id)generateM3WithM2:(id)m2 error:(id *)error;
- (void)dealloc;
@end

@implementation CUSPAKEProver

- (id)finishAndReturnError:(id *)error
{
  v5 = self->_sessionKey;
  if (v5)
  {
    sessionKey = self->_sessionKey;
    self->_sessionKey = 0;

    v7 = v5;
  }

  else if (error)
  {
    *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "no session key");
  }

  return v5;
}

- (id)generateM3WithM2:(id)m2 error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  m2Copy = m2;
  if (!self->_spakeContext)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960551, "no spake context");
LABEL_22:
      *error = v16 = 0;
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  ccspake_cp_256_rfc();
  shareVData = [m2Copy shareVData];
  [shareVData length];
  shareVData2 = [m2Copy shareVData];
  [shareVData2 bytes];
  v9 = ccspake_kex_process();

  if (v9)
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v19 = *MEMORY[0x1E696A768];
    v22 = v9;
    v20 = "ccspake_kex_process failed: %d";
LABEL_18:
    v21 = 4294960596;
LABEL_21:
    NSErrorF_safe(v19, v21, v20, v22);
    goto LABEL_22;
  }

  v10 = ccspake_mac_compute();
  if (v10)
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v22 = v10;
    v20 = "ccspake_mac_compute failed: %d";
    v19 = *MEMORY[0x1E696A768];
    goto LABEL_18;
  }

  confirmVData = [m2Copy confirmVData];
  [confirmVData length];
  confirmVData2 = [m2Copy confirmVData];
  [confirmVData2 bytes];
  session_key = ccspake_mac_verify_and_get_session_key();

  if (session_key)
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v19 = *MEMORY[0x1E696A768];
    v22 = session_key;
    v20 = "ccspake verify failed: %d";
    goto LABEL_18;
  }

  v14 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v23 length:32];
  sessionKey = self->_sessionKey;
  self->_sessionKey = v14;

  cc_clear();
  if (self->_sessionKey)
  {
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
    self->_spakeContext = 0;
    v16 = objc_alloc_init(CUSPAKEM3);
    v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v24 length:32];
    [(CUSPAKEM3 *)v16 setConfirmPData:v17];

    goto LABEL_7;
  }

  if (error)
  {
    v19 = *MEMORY[0x1E696A768];
    v20 = "generate session key failed";
    v21 = 4294960568;
    goto LABEL_21;
  }

LABEL_23:
  v16 = 0;
LABEL_7:

  return v16;
}

- (id)generateM1AndReturnError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  ccspake_cp_256_rfc();
  if (![CUSPAKECommon scryptWithPasswordData:"scryptWithPasswordData:outputPtr:outputLen:error:" outputPtr:self->_passwordData outputLen:v12 - ((2 * (ccspake_sizeof_w() + 8) + 15) & 0xFFFFFFFFFFFFFFF0) error:?])
  {
    goto LABEL_25;
  }

  if (ccspake_reduce_w())
  {
    if (!error)
    {
      goto LABEL_25;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w0: %d");
    v11 = LABEL_23:;
    goto LABEL_24;
  }

  if (ccspake_reduce_w())
  {
    if (!error)
    {
      goto LABEL_25;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_reduce_w failed w1: %d");
    goto LABEL_23;
  }

  if (self->_spakeContext)
  {
    ccspake_sizeof_ctx();
    cc_clear();
    free(self->_spakeContext);
  }

  v5 = ccspake_sizeof_ctx();
  v6 = malloc_type_malloc(v5, 0x1060040E1C2CD2EuLL);
  self->_spakeContext = v6;
  if (!v6)
  {
    if (error)
    {
      v11 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960568, "ccspake_ctx malloc failed");
LABEL_24:
      v8 = 0;
      *error = v11;
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  ccspake_mac_hkdf_hmac_sha256();
  ccrng();
  if (ccspake_prover_initialize())
  {
    if (!error)
    {
      goto LABEL_25;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_prover_initialize failed: %d");
    goto LABEL_23;
  }

  v7 = ccspake_sizeof_point();
  if (!ccspake_kex_generate())
  {
    v8 = objc_alloc_init(CUSPAKEM1);
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) length:v7];
    [(CUSPAKEM1 *)v8 setSharePData:v9];

    goto LABEL_10;
  }

  if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "ccspake_kex_generate failed: %d");
    goto LABEL_23;
  }

LABEL_25:
  v8 = 0;
LABEL_10:

  return v8;
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
  v3.super_class = CUSPAKEProver;
  [(CUSPAKEProver *)&v3 dealloc];
}

- (CUSPAKEProver)initWithPasswordString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = CUSPAKEProver;
  v5 = [(CUSPAKEProver *)&v11 init];
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

- (CUSPAKEProver)initWithPasswordPtr:(const void *)ptr passwordLength:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = CUSPAKEProver;
  v6 = [(CUSPAKEProver *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:ptr length:length];
    passwordData = v6->_passwordData;
    v6->_passwordData = v7;

    v9 = v6;
  }

  return v6;
}

- (CUSPAKEProver)initWithPasswordCString:(const char *)string
{
  v9.receiver = self;
  v9.super_class = CUSPAKEProver;
  v4 = [(CUSPAKEProver *)&v9 init];
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