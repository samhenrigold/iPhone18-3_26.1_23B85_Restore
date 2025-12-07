@interface WLSRPServer
- (BOOL)didReceiveClientPublicKey_A:(id)a proofOfMatch_M:(id)m;
- (BOOL)isHmacData:(id)data validForData:(id)forData;
- (WLSRPServer)initWithUsername:(id)username password:(id)password;
- (void)dealloc;
@end

@implementation WLSRPServer

- (WLSRPServer)initWithUsername:(id)username password:(id)password
{
  v17 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  passwordCopy = password;
  v15.receiver = self;
  v15.super_class = WLSRPServer;
  v8 = [(WLSRPServer *)&v15 init];
  if (v8)
  {
    SRP6a_server_method();
    v9 = SRP_new();
    v8->_session = v9;
    if (v9)
    {
      [usernameCopy UTF8String];
      if (!SRP_set_username() && !CCRandomGenerateBytes(bytes, 0x10uLL))
      {
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
        salt_s = v8->_salt_s;
        v8->_salt_s = v10;

        if (!SRP_set_params())
        {
          [passwordCopy UTF8String];
          if (!SRP_set_auth_password() && !SRP_gen_pub())
          {
            v13 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0] length:MEMORY[8]];
            serverPublicKey_B = v8->_serverPublicKey_B;
            v8->_serverPublicKey_B = v13;

            cstr_free();
            goto LABEL_10;
          }
        }
      }

      SRP_free();
      v8->_session = 0;
    }

    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (void)dealloc
{
  SRP_free();
  self->_session = 0;
  v3.receiver = self;
  v3.super_class = WLSRPServer;
  [(WLSRPServer *)&v3 dealloc];
}

- (BOOL)didReceiveClientPublicKey_A:(id)a proofOfMatch_M:(id)m
{
  mCopy = m;
  aCopy = a;
  aCopy2 = a;
  [aCopy2 bytes];
  [aCopy2 length];

  if (SRP_compute_key())
  {
    v9 = 0;
  }

  else
  {
    v9 = MEMORY[8] != 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  _WLLog();

  if (v9 && ([MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0] length:{MEMORY[8], v18}], v10 = objc_claimAutoreleasedReturnValue(), sharedKey_K = self->_sharedKey_K, self->_sharedKey_K = v10, sharedKey_K, -[NSData wl_hexEncodedString](self->_sharedKey_K, "wl_hexEncodedString"), v19 = objc_claimAutoreleasedReturnValue(), _WLLog(), v19, cstr_free(), objc_msgSend(mCopy, "bytes", v19), objc_msgSend(mCopy, "length"), v12 = SRP_verify(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v12 == 0), v20 = objc_claimAutoreleasedReturnValue(), _WLLog(), v20, !v12))
  {
    v15 = SRP_respond();
    v13 = v15 == 0;
    v21 = [MEMORY[0x277CCABB0] numberWithBool:{v13, v20}];
    _WLLog();

    if (!v15)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0] length:{MEMORY[8], v21}];
      hashOfProofOfMatch_HAMK = self->_hashOfProofOfMatch_HAMK;
      self->_hashOfProofOfMatch_HAMK = v16;

      cstr_free();
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)isHmacData:(id)data validForData:(id)forData
{
  dataCopy = data;
  v7 = [(WLSRPServer *)self hmacDataForData:forData];
  wl_hexEncodedString = [dataCopy wl_hexEncodedString];
  _WLLog();

  wl_hexEncodedString2 = [v7 wl_hexEncodedString];
  _WLLog();

  v8 = [v7 isEqualToData:{dataCopy, wl_hexEncodedString2}];
  return v8;
}

@end