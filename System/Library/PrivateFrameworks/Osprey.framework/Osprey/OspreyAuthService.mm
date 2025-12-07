@interface OspreyAuthService
- (OspreyAuthService)initWithChannel:(id)channel authStrategyVersion:(unint64_t)version;
- (void)certificateDataWithSuccess:(id)success failure:(id)failure;
- (void)createClientSessionWithData:(id)data success:(id)success failure:(id)failure;
@end

@implementation OspreyAuthService

- (OspreyAuthService)initWithChannel:(id)channel authStrategyVersion:(unint64_t)version
{
  channelCopy = channel;
  v13.receiver = self;
  v13.super_class = OspreyAuthService;
  v8 = [(OspreyAuthService *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channel, channel);
    uUID = [MEMORY[0x277CCAD78] UUID];
    authUUID = v9->_authUUID;
    v9->_authUUID = uUID;

    v9->_authStrategyVersion = version;
  }

  return v9;
}

- (void)certificateDataWithSuccess:(id)success failure:(id)failure
{
  successCopy = success;
  failureCopy = failure;
  OspreyLoggingInit(failureCopy, v8);
  v9 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyAuthService *)v9 certificateDataWithSuccess:v10 failure:v11, v12, v13, v14, v15, v16];
  }

  v30 = 0;
  v31 = 0;
  v32 = xmmword_25DE49DA0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = 1;
  v37 = 256;
  v38 = 0;
  flatbuffers::FlatBufferBuilder::NotNested(&v30);
  BYTE6(v35) = 1;
  v17 = flatbuffers::FlatBufferBuilder::EndTable(&v30, v33 - v34 + DWORD2(v33));
  flatbuffers::FlatBufferBuilder::Finish(&v30, v17, 0, 0);
  v18 = objc_alloc(MEMORY[0x277CBEA90]);
  BufferPointer = flatbuffers::FlatBufferBuilder::GetBufferPointer(&v30);
  v20 = [v18 initWithBytes:BufferPointer length:(v33 - v34 + DWORD2(v33))];
  v21 = [OspreyRequest requestWithMethodName:@"/siri.sidecars.auth.AuthSession/GetCertificate"];
  uUIDString = [(NSUUID *)self->_authUUID UUIDString];
  [v21 setClientTraceId:uUIDString];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_authStrategyVersion];
  [v21 setDeviceAuthenticationVersion:v23];

  channel = self->_channel;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke;
  v27[3] = &unk_2799F2070;
  v25 = failureCopy;
  v28 = v25;
  v26 = successCopy;
  v29 = v26;
  [(OspreyGRPCChannel *)channel unaryRequest:v21 requestData:v20 responseHandler:v27];

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v30);
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    OspreyLoggingInit(v6, v7);
    v9 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_1(v10, v26);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = [v5 length];
    if (v11)
    {
      OspreyLoggingInit(v11, v12);
      v13 = OspreyLogContextAbsinthe;
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
      {
        __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v21 = v5;
      v22 = [v5 bytes];
      v23 = (v22 + *v22 + *(v22 + *v22 - *(v22 + *v22) + 4));
      v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v23 + *v23 + 4 length:*(v23 + *v23)];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      OspreyLoggingInit(0, v12);
      v25 = OspreyLogContextAbsinthe;
      if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
      {
        __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_3(v25);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)createClientSessionWithData:(id)data success:(id)success failure:(id)failure
{
  dataCopy = data;
  successCopy = success;
  failureCopy = failure;
  OspreyLoggingInit(failureCopy, v11);
  v12 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyAuthService *)v12 createClientSessionWithData:v13 success:v14 failure:v15, v16, v17, v18, v19];
  }

  bytes = [dataCopy bytes];
  v21 = [dataCopy length];
  v49 = 0;
  v50 = 0;
  v51 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v49, bytes, bytes + v21, v21);
  v40 = 0;
  v41 = 0;
  v42 = xmmword_25DE49DA0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  v46 = 1;
  v47 = 256;
  if (v50 == v49)
  {
    v22 = &flatbuffers::data<unsigned char,std::allocator<unsigned char>>(std::vector<unsigned char> const&)::t;
  }

  else
  {
    v22 = v49;
  }

  v48 = 0;
  v23 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(&v40, v22, v50 - v49);
  flatbuffers::FlatBufferBuilder::NotNested(&v40);
  BYTE6(v45) = 1;
  v24 = DWORD2(v43);
  v25 = v44;
  v26 = v43;
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(&v40, 4, v23);
  v27 = flatbuffers::FlatBufferBuilder::EndTable(&v40, v26 - v25 + v24);
  flatbuffers::FlatBufferBuilder::Finish(&v40, v27, 0, 0);
  v28 = MEMORY[0x277CBEA90];
  BufferPointer = flatbuffers::FlatBufferBuilder::GetBufferPointer(&v40);
  v30 = [v28 dataWithBytes:BufferPointer length:(v43 - v44 + DWORD2(v43))];
  v31 = [OspreyRequest requestWithMethodName:@"/siri.sidecars.auth.AuthSession/CreateSession"];
  uUIDString = [(NSUUID *)self->_authUUID UUIDString];
  [v31 setClientTraceId:uUIDString];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_authStrategyVersion];
  [v31 setDeviceAuthenticationVersion:v33];

  channel = self->_channel;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke;
  v37[3] = &unk_2799F2070;
  v35 = failureCopy;
  v38 = v35;
  v36 = successCopy;
  v39 = v36;
  [(OspreyGRPCChannel *)channel unaryRequest:v31 requestData:v30 responseHandler:v37];

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v40);
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    OspreyLoggingInit(v6, v7);
    v9 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_1(v10, v36);
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_21;
  }

  if (!v5 || (v6 = [v5 length]) == 0)
  {
    OspreyLoggingInit(v6, v7);
    v30 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_4(v30);
    }

    goto LABEL_20;
  }

  v11 = [v5 bytes];
  v13 = (v11 + *v11);
  v14 = (v13 - *v13);
  if (*v14 < 5u || (v15 = v14[2]) == 0)
  {
    v16 = 0;
LABEL_18:
    OspreyLoggingInit(v11, v12);
    v31 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_3(v16, v31);
    }

LABEL_20:
    (*(*(a1 + 32) + 16))();
    goto LABEL_21;
  }

  v16 = *(v13 + v15);
  if (v16 != 1)
  {
    goto LABEL_18;
  }

  OspreyLoggingInit(v11, v12);
  v17 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v25 = *v13;
  v26 = v13 - v25;
  v27 = *(v13 - v25);
  v28 = *(v13 - v25 + 6);
  if (*(v13 - v25 + 6))
  {
    v25 = *(v13 + v28);
    v29 = v13 + v28 + v25;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v25 = v25;
  }

  v32 = 0.0;
  if (v27 >= 9)
  {
    v33 = *(v26 + 4);
    if (v33)
    {
      v32 = *(v13 + v33);
    }
  }

  v34 = *(a1 + 40);
  v35 = [MEMORY[0x277CBEA90] dataWithBytes:v29 + 4 length:*(v13 + v28 + v25)];
  (*(v34 + 16))(v34, v35, v32);

LABEL_21:
}

- (void)certificateDataWithSuccess:(uint64_t)a3 failure:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyAuthService certificateDataWithSuccess:failure:]";
  OUTLINED_FUNCTION_0_3(&dword_25DDE6000, a1, a3, "%s Fetching cert from server...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_1(void *a1, _DWORD *a2)
{
  *a2 = 136315394;
  OUTLINED_FUNCTION_1_4(a1, a2, "[OspreyAuthService certificateDataWithSuccess:failure:]_block_invoke");
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Error fetching cert from auth service! Error: %@", v4, 0x16u);
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyAuthService certificateDataWithSuccess:failure:]_block_invoke";
  OUTLINED_FUNCTION_0_3(&dword_25DDE6000, a1, a3, "%s Successfully fetched certificate!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyAuthService certificateDataWithSuccess:failure:]_block_invoke";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Certificate data was empty!", &v1, 0xCu);
}

- (void)createClientSessionWithData:(uint64_t)a3 success:(uint64_t)a4 failure:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyAuthService createClientSessionWithData:success:failure:]";
  OUTLINED_FUNCTION_0_3(&dword_25DDE6000, a1, a3, "%s Creating client session...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_1(void *a1, _DWORD *a2)
{
  *a2 = 136315394;
  OUTLINED_FUNCTION_1_4(a1, a2, "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke");
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Error getting session info response from auth service! Error: %@", v4, 0x16u);
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke";
  OUTLINED_FUNCTION_0_3(&dword_25DDE6000, a1, a3, "%s Successfully created client session!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_3(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_25DDE6000, a2, OS_LOG_TYPE_ERROR, "%s Auth server responded with non 1 code. Code: %d", &v2, 0x12u);
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Could not get signed session info from auth service!", &v1, 0xCu);
}

@end