@interface UARPIPDevice
- (BOOL)connect;
- (BOOL)initRecvSource;
- (BOOL)initSocketWithIPv4Address:(id)address port:(unsigned __int16)port;
- (BOOL)initSocketWithIPv6Address:(id)address port:(unsigned __int16)port;
- (BOOL)recvUARPMsg;
- (BOOL)sendData:(id)data;
- (UARPIPDevice)initWithIPAddress:(id)address port:(unsigned __int16)port delegate:(id)delegate;
- (void)connect;
- (void)dealloc;
- (void)initRecvSource;
- (void)recvUARPMsg;
@end

@implementation UARPIPDevice

- (UARPIPDevice)initWithIPAddress:(id)address port:(unsigned __int16)port delegate:(id)delegate
{
  portCopy = port;
  addressCopy = address;
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = UARPIPDevice;
  v10 = [(UARPIPDevice *)&v41 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = os_log_create("com.apple.accessoryupdater.uarp", "uarpIPDevice");
  log = v10->_log;
  v10->_log = v11;

  v13 = dispatch_queue_create("UARPIPDevice", 0);
  queue = v10->_queue;
  v10->_queue = v13;

  objc_storeWeak(&v10->_delegate, delegateCopy);
  if (![(UARPIPDevice *)v10 initSocketWithIPv4Address:addressCopy port:portCopy]&& ![(UARPIPDevice *)v10 initSocketWithIPv6Address:addressCopy port:portCopy])
  {
    v24 = v10->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)v24 initWithIPAddress:v25 port:v26 delegate:v27, v28, v29, v30, v31];
    }

    goto LABEL_13;
  }

  if (![(UARPIPDevice *)v10 initRecvSource])
  {
    v16 = v10->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)v16 initWithIPAddress:v17 port:v18 delegate:v19, v20, v21, v22, v23];
    }

    goto LABEL_13;
  }

  if (![(UARPIPDevice *)v10 connect])
  {
    v32 = v10->_log;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)v32 initWithIPAddress:v33 port:v34 delegate:v35, v36, v37, v38, v39];
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v15 = v10;
LABEL_14:

  return v15;
}

- (BOOL)initSocketWithIPv4Address:(id)address port:(unsigned __int16)port
{
  portCopy = port;
  v11 = 0;
  addressCopy = address;
  v8 = inet_pton(2, [address UTF8String], &v11);
  if (v8 == 1)
  {
    v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *(v9 + 1) = 0;
    *v9 = 528;
    *(v9 + 1) = v11;
    *(v9 + 1) = __rev16(portCopy);
    self->_socketAddressFamily = 2;
    self->_socketAddressLength = *v9;
    self->_socketAddress = v9;
    self->_socketFileDescriptor = socket(2, 1, 0);
  }

  return v8 == 1;
}

- (BOOL)initSocketWithIPv6Address:(id)address port:(unsigned __int16)port
{
  portCopy = port;
  v11 = 0uLL;
  addressCopy = address;
  v8 = inet_pton(30, [address UTF8String], &v11);
  if (v8 == 1)
  {
    v9 = malloc_type_malloc(0x1CuLL, 0x100004027586B93uLL);
    *(v9 + 4) = 0;
    *(v9 + 20) = 0;
    *(v9 + 12) = 0;
    *v9 = 7708;
    *(v9 + 8) = v11;
    *(v9 + 1) = __rev16(portCopy);
    self->_socketAddressFamily = 30;
    self->_socketAddressLength = *v9;
    self->_socketAddress = v9;
    self->_socketFileDescriptor = socket(30, 1, 0);
  }

  return v8 == 1;
}

- (BOOL)initRecvSource
{
  v3 = dispatch_source_create(MEMORY[0x277D85D28], self->_socketFileDescriptor, 0, self->_queue);
  recvSource = self->_recvSource;
  self->_recvSource = v3;

  if (!self->_recvSource)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)log initRecvSource:v7];
    }

    return 0;
  }

  v23 = 1;
  if (setsockopt(self->_socketFileDescriptor, 0xFFFF, 4130, &v23, 4u))
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)v5 initRecvSource];
    }

    return 0;
  }

  v22 = xmmword_247B3D3E0;
  v16 = setsockopt(self->_socketFileDescriptor, 0xFFFF, 4102, &v22, 0x10u);
  v14 = v16 == 0;
  if (v16)
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)v17 initRecvSource];
    }
  }

  else
  {
    v18 = self->_recvSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__UARPIPDevice_initRecvSource__block_invoke;
    handler[3] = &unk_278EC1948;
    handler[4] = self;
    dispatch_source_set_event_handler(v18, handler);
    v19 = self->_recvSource;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __30__UARPIPDevice_initRecvSource__block_invoke_4;
    v20[3] = &unk_278EC1948;
    v20[4] = self;
    dispatch_source_set_cancel_handler(v19, v20);
    dispatch_resume(self->_recvSource);
  }

  return v14;
}

void __30__UARPIPDevice_initRecvSource__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) recvUARPMsg] & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __30__UARPIPDevice_initRecvSource__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 32));
  }
}

- (void)dealloc
{
  socketAddress = self->_socketAddress;
  if (socketAddress)
  {
    free(socketAddress);
  }

  recvSource = self->_recvSource;
  if (recvSource)
  {
    dispatch_source_cancel(recvSource);
  }

  v5.receiver = self;
  v5.super_class = UARPIPDevice;
  [(UARPIPDevice *)&v5 dealloc];
}

- (BOOL)connect
{
  v3 = connect(self->_socketFileDescriptor, self->_socketAddress, self->_socketAddressLength);
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)log connect];
    }
  }

  return v3 == 0;
}

- (BOOL)sendData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__UARPIPDevice_sendData___block_invoke;
  v8[3] = &unk_278EC1140;
  v8[4] = self;
  v9 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v8);

  return 1;
}

void __25__UARPIPDevice_sendData___block_invoke(uint64_t a1)
{
  v2 = send(*(*(a1 + 32) + 48), [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), 0);
  if (v2 != [*(a1 + 40) length])
  {
    v3 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __25__UARPIPDevice_sendData___block_invoke_cold_1(v3);
    }
  }
}

- (BOOL)recvUARPMsg
{
  if (dispatch_source_get_data(self->_recvSource) < 6)
  {
    return 1;
  }

  v13 = 0;
  v12 = 0;
  if (recv(self->_socketFileDescriptor, &v12, 6uLL, 64) != 6)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPIPDevice *)log recvUARPMsg];
    }

    return 0;
  }

  v3 = uarpHtons(HIWORD(v12));
  if (v3 <= 0x8000)
  {
    v6 = v3;
    v7 = v3;
    v8 = [MEMORY[0x277CBEB28] dataWithLength:v3 + 6];
    [v8 replaceBytesInRange:0 withBytes:{6, &v12}];
    if (recv(self->_socketFileDescriptor, ([v8 mutableBytes] + 6), v7, 64) != v6)
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(UARPIPDevice *)v11 recvUARPMsg];
      }

      return 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained receivedData:v8 device:self];

    return 1;
  }

  v4 = self->_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(UARPIPDevice *)v4 recvUARPMsg];
  }

  return 0;
}

- (void)initWithIPAddress:(uint64_t)a3 port:(uint64_t)a4 delegate:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPIPDevice initWithIPAddress:port:delegate:]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Failed to initialize socket", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIPAddress:(uint64_t)a3 port:(uint64_t)a4 delegate:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPIPDevice initWithIPAddress:port:delegate:]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Failed to initialize recvSource", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithIPAddress:(uint64_t)a3 port:(uint64_t)a4 delegate:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPIPDevice initWithIPAddress:port:delegate:]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Failed to connect", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initRecvSource
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPIPDevice initRecvSource]";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, self, a3, "%s: Failed to create dispatch_source_t", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __30__UARPIPDevice_initRecvSource__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPIPDevice initRecvSource]_block_invoke";
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Failed receive UARP message, closing socket", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)connect
{
  selfCopy = self;
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __25__UARPIPDevice_sendData___block_invoke_cold_1(void *a1)
{
  v1 = a1;
  v2 = __error();
  strerror(*v2);
  __error();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

- (void)recvUARPMsg
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[UARPIPDevice recvUARPMsg]";
  v3 = 1024;
  v4 = 0x8000;
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "%s: UARP Message Payload length exceeds maximum (%u bytes)", &v1, 0x12u);
}

@end