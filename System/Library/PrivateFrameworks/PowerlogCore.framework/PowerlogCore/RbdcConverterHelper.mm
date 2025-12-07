@interface RbdcConverterHelper
- (BOOL)isProcessRbdcAllowed;
- (id)copyRBDCLogsToPath:(id)path withServiceType:(int)type;
- (id)createXPCConnection;
- (id)processRbdc:(id)rbdc withServiceType:(int)type;
- (void)closeXPCConnection;
- (void)isProcessRbdcAllowed;
@end

@implementation RbdcConverterHelper

- (id)copyRBDCLogsToPath:(id)path withServiceType:(int)type
{
  v4 = *&type;
  v6 = MEMORY[0x1E695DF90];
  pathCopy = path;
  v8 = objc_alloc_init(v6);
  [v8 setObject:pathCopy forKey:@"epsql_filepath"];

  v9 = [(RbdcConverterHelper *)self processRbdc:v8 withServiceType:v4];

  return v9;
}

- (BOOL)isProcessRbdcAllowed
{
  v8 = 0;
  v7 = 0;
  IOAccessoryManagerGetServiceWithPrimaryPort();
  DigitalIDAccessoryVersionInfo = IOAccesoryManagerGetDigitalIDAccessoryVersionInfo();
  if (DigitalIDAccessoryVersionInfo)
  {
    v3 = logHandleRbdcHelper(DigitalIDAccessoryVersionInfo);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [RbdcConverterHelper isProcessRbdcAllowed];
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
    if (v7 <= 1u && (v7 != 1 || BYTE1(v7) == 0))
    {
      v4 = 0;
    }

    v3 = logHandleRbdcHelper(DigitalIDAccessoryVersionInfo);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(RbdcConverterHelper *)&v7 isProcessRbdcAllowed];
    }
  }

  return v4;
}

- (id)processRbdc:(id)rbdc withServiceType:(int)type
{
  v4 = *&type;
  v53 = *MEMORY[0x1E69E9840];
  rbdcCopy = rbdc;
  v6 = logHandleRbdcHelper(rbdcCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = v4;
    LOWORD(v49) = 2112;
    *(&v49 + 2) = rbdcCopy;
    _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_INFO, "processRbdc for service type (%d) with config %@", buf, 0x12u);
  }

  date = [MEMORY[0x1E695DF00] date];
  createXPCConnection = [(RbdcConverterHelper *)self createXPCConnection];
  *buf = 0;
  *&v49 = buf;
  *(&v49 + 1) = 0x3032000000;
  v50 = __Block_byref_object_copy__17;
  v51 = __Block_byref_object_dispose__17;
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  v52 = dictionary;
  if (v4 == 1)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_16;
    v40[3] = &unk_1E851A018;
    v40[4] = buf;
    [createXPCConnection getHeatmapData:rbdcCopy withReply:v40];
  }

  else if (v4)
  {
    v8 = logHandleRbdcHelper(dictionary);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v42 = 67109120;
      LODWORD(v43) = v4;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_INFO, "Unknown service type specified: %d", v42, 8u);
    }
  }

  else
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke;
    v41[3] = &unk_1E851A018;
    v41[4] = buf;
    [createXPCConnection getRbdcData:rbdcCopy withReply:v41];
  }

  v9 = logHandleRbdcHelper([(RbdcConverterHelper *)self closeXPCConnection]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(v49 + 40);
    *v42 = 138412290;
    v43 = v10;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_INFO, "RBDC reply received: result=%@", v42, 0xCu);
  }

  date2 = [MEMORY[0x1E695DF00] date];
  v12 = [date2 timeIntervalSinceDate:date];
  v14 = v13;
  v15 = logHandleRbdcHelper(v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v42 = 134218498;
    v43 = v14;
    v44 = 2112;
    v45 = date;
    v46 = 2112;
    v47 = date2;
    _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_INFO, "Time for RBDC processing to run: %f, %@, %@", v42, 0x20u);
  }

  v16 = [rbdcCopy objectForKeyedSubscript:@"epsql_filepath"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v18 = [defaultManager attributesOfItemAtPath:v16 error:&v39];
  v19 = v39;

  if (v19)
  {
    v21 = logHandleRbdcHelper(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [RbdcConverterHelper processRbdc:withServiceType:];
    }

    fileSize = 0;
  }

  else
  {
    fileSize = [v18 fileSize];
  }

  v23 = +[PLUtilities deviceBootTime];
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  [monotonicDate timeIntervalSinceDate:v23];
  v26 = v25;
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [dictionary2 setObject:v28 forKeyedSubscript:@"serviceType"];

  v29 = [*(v49 + 40) objectForKeyedSubscript:@"rbdcStatus"];
  [dictionary2 setObject:v29 forKeyedSubscript:@"rbdcStatus"];

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [dictionary2 setObject:v30 forKeyedSubscript:@"rbdcDurationInSeconds"];

  v31 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
  [dictionary2 setObject:v31 forKeyedSubscript:@"uptimeInSeconds"];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fileSize];
  [dictionary2 setObject:v32 forKeyedSubscript:@"fileSizeInBytes"];

  v34 = logHandleRbdcHelper(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [RbdcConverterHelper processRbdc:withServiceType:];
  }

  _Block_object_dispose(buf, 8);

  return dictionary2;
}

void __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandleRbdcHelper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logHandleRbdcHelper(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__RbdcConverterHelper_processRbdc_withServiceType___block_invoke_16_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)createXPCConnection
{
  v3 = logHandleRbdcHelper(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "PL establishing a connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.rbdcConverter"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5432988];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&__block_literal_global_43_0];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&__block_literal_global_46];
  v7 = logHandleRbdcHelper([(NSXPCConnection *)self->_connectionToServer resume]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_INFO, "spinning up xpc svc", v10, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_50_0];

  return v8;
}

void __42__RbdcConverterHelper_createXPCConnection__block_invoke(uint64_t a1)
{
  v1 = logHandleRbdcHelper(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __42__RbdcConverterHelper_createXPCConnection__block_invoke_cold_1();
  }
}

void __42__RbdcConverterHelper_createXPCConnection__block_invoke_44(uint64_t a1)
{
  v1 = logHandleRbdcHelper(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __42__RbdcConverterHelper_createXPCConnection__block_invoke_44_cold_1();
  }
}

void __42__RbdcConverterHelper_createXPCConnection__block_invoke_47(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = logHandleRbdcHelper(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__SignpostReaderHelper_createXPCConnection__block_invoke_56_cold_1(v2, v3);
  }
}

- (void)closeXPCConnection
{
  [(NSXPCConnection *)self->_connectionToServer suspend];
  connectionToServer = self->_connectionToServer;

  [(NSXPCConnection *)connectionToServer invalidate];
}

- (void)isProcessRbdcAllowed
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = self[1];
  v4 = self[2];
  v5[0] = 67109632;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Battery FW version info: major=%d, minor=%d, revision=%d", v5, 0x14u);
}

- (void)processRbdc:withServiceType:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end