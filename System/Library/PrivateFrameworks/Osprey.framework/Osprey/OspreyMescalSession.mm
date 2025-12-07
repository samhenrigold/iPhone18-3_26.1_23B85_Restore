@interface OspreyMescalSession
- (BOOL)completeWithHandshakeResponse:(id)response error:(id *)error;
- (OspreyMescalSession)init;
- (id)_exchangeData:(id)data error:(id *)error;
- (id)signData:(id)data error:(id *)error;
- (void)dealloc;
- (void)init;
- (void)invalidate;
@end

@implementation OspreyMescalSession

- (OspreyMescalSession)init
{
  v9.receiver = self;
  v9.super_class = OspreyMescalSession;
  v2 = [(OspreyMescalSession *)&v9 init];
  v3 = v2;
  if (v2)
  {
    zxcm2Qme0x(0, 0, &v2->_hardwareInfo);
    if (v4)
    {
      OspreyLoggingInit(v4, v5);
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
      {
        [OspreyMescalSession init];
      }
    }

    else
    {
      cp2g1b9ro(&v3->_fairplayContext, &v3->_hardwareInfo);
      if (!v6)
      {
        v3->_state = 1;
        return v3;
      }

      OspreyLoggingInit(v6, v7);
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
      {
        [OspreyMescalSession init];
      }
    }

    return 0;
  }

  return v3;
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  OspreyLoggingInit(self, a2);
  v3 = OspreyLogContextDeviceAuth;
  if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[OspreyMescalSession invalidate]";
    _os_log_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  self->_state = 0;
  fairplayContext = self->_fairplayContext;
  if (fairplayContext)
  {
    IPaI1oem5iL(fairplayContext);
    self->_fairplayContext = 0;
  }
}

- (void)dealloc
{
  [(OspreyMescalSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = OspreyMescalSession;
  [(OspreyMescalSession *)&v3 dealloc];
}

- (BOOL)completeWithHandshakeResponse:(id)response error:(id *)error
{
  v4 = [(OspreyMescalSession *)self _exchangeData:response error:error];
  v5 = v4 != 0;

  return v5;
}

- (id)_exchangeData:(id)data error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  fairplayContext = self->_fairplayContext;
  if (!fairplayContext)
  {
    v16 = 0;
LABEL_8:
    v17 = 0;
    goto LABEL_15;
  }

  v22 = 0;
  v21 = 0;
  v20 = -1;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  Mib5yocT(200, &self->_hardwareInfo, fairplayContext, bytes, v11, &v22, &v21, &v20);
  if (v12)
  {
    v14 = v12;
    OspreyLoggingInit(v12, v13);
    v15 = OspreyLogContextDeviceAuth;
    if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[OspreyMescalSession _exchangeData:error:]";
      v25 = 2048;
      v26 = v14;
      _os_log_error_impl(&dword_25DDE6000, v15, OS_LOG_TYPE_ERROR, "%s SAP exchange failed: %li", buf, 0x16u);
    }

    [(OspreyMescalSession *)self invalidate];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyDeviceAuthenticationErrorDomain" code:v14 userInfo:&unk_286FA6D60];
    if (error)
    {
      v16 = v16;
      v17 = 0;
      *error = v16;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v20 == 1)
  {
    v18 = 2;
    goto LABEL_13;
  }

  if (!v20)
  {
    v18 = 3;
LABEL_13:
    self->_state = v18;
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v21];
  v16 = 0;
LABEL_15:

  return v17;
}

- (id)signData:(id)data error:(id *)error
{
  fairplayContext = self->_fairplayContext;
  if (!fairplayContext)
  {
    goto LABEL_6;
  }

  v15 = 0;
  v14 = 0;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  Fc3vhtJDvr(fairplayContext, bytes, v10, &v15, &v14);
  if (!v11)
  {
    fairplayContext = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:v14];
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyDeviceAuthenticationErrorDomain" code:v11 userInfo:&unk_286FA6D88];
  if (error)
  {
    v12 = v12;
    fairplayContext = 0;
    *error = v12;
  }

  else
  {
    fairplayContext = 0;
  }

LABEL_7:

  return fairplayContext;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_ERROR, "%s Could not create SAP session: %d", v1, 0x12u);
}

@end