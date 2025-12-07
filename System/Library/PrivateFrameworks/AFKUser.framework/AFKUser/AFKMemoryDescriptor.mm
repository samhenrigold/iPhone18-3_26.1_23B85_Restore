@interface AFKMemoryDescriptor
+ (id)withManager:(id)manager capacity:(unint64_t)capacity;
+ (id)withManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token;
- (AFKMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity buffer:(BOOL)buffer;
- (AFKMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token;
- (BOOL)isEqual:(id)equal;
- (BOOL)mapDescriptor;
- (int)assertPower:(BOOL)power;
- (int)assumeControl;
- (int)readBytes:(void *)bytes size:(unint64_t)size fromOffset:(unint64_t)offset;
- (int)releaseControl:(BOOL)control;
- (int)writeBytes:(const void *)bytes size:(unint64_t)size toOffset:(unint64_t)offset;
- (unint64_t)length;
- (void)assumeControl;
- (void)dealloc;
- (void)mapDescriptor;
- (void)setLength:(unint64_t)length;
@end

@implementation AFKMemoryDescriptor

+ (id)withManager:(id)manager capacity:(unint64_t)capacity
{
  managerCopy = manager;
  v6 = [[AFKMemoryDescriptor alloc] initWithManager:managerCopy capacity:capacity buffer:0];

  return v6;
}

- (AFKMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity buffer:(BOOL)buffer
{
  bufferCopy = buffer;
  input[2] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  input[0] = capacity;
  input[1] = bufferCopy;
  outputCnt = 1;
  v19.receiver = self;
  v19.super_class = AFKMemoryDescriptor;
  v10 = [(AFKMemoryDescriptor *)&v19 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v10->_manager, manager);
  v11->_capacity = capacity;
  v11->_regID = [managerCopy regID];
  v11->_cachedLength = 0;
  manager = [(AFKMemoryDescriptor *)v11 manager];
  v13 = IOConnectCallScalarMethod([manager connect], 0, input, 2u, &output, &outputCnt);

  if (v13)
  {
    v16 = _AFKUserLog(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)v11 regID];
      [AFKMemoryDescriptor initWithManager:capacity:buffer:];
    }

    goto LABEL_12;
  }

  if (outputCnt != 1)
  {
    v17 = _AFKUserLog(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AFKMemoryDescriptor initWithManager:v21 capacity:[(AFKMemoryDescriptor *)v11 regID] buffer:?];
    }

    goto LABEL_12;
  }

  v11->_token = output;
  if (![(AFKMemoryDescriptor *)v11 mapDescriptor])
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v11;
LABEL_13:

  return v15;
}

+ (id)withManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token
{
  managerCopy = manager;
  v8 = [[AFKMemoryDescriptor alloc] initWithManager:managerCopy capacity:capacity token:token];

  return v8;
}

- (AFKMemoryDescriptor)initWithManager:(id)manager capacity:(unint64_t)capacity token:(unint64_t)token
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = AFKMemoryDescriptor;
  v10 = [(AFKMemoryDescriptor *)&v14 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_manager, manager), v11->_token = token, v11->_cachedLength = 0, v11->_capacity = capacity, [(AFKMemoryDescriptor *)v11 mapDescriptor]))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)mapDescriptor
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  v17 = 0;
  v18 = 0;
  manager = [(AFKMemoryDescriptor *)self manager];
  v4 = IOConnectCallScalarMethod([manager connect], 1u, input, 1u, 0, 0);

  if (v4)
  {
    v13 = _AFKUserLog(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor mapDescriptor];
    }
  }

  else
  {
    manager2 = [(AFKMemoryDescriptor *)self manager];
    connect = [manager2 connect];
    v8 = MEMORY[0x23EED2FD0](connect, 0, *MEMORY[0x277D85F48], &v18, &v17, 1);

    if (v8)
    {
      v13 = _AFKUserLog(v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(AFKMemoryDescriptor *)self regID];
        [AFKMemoryDescriptor mapDescriptor];
      }
    }

    else
    {
      v10 = v17;
      self->_buffer = v18;
      capacity = [(AFKMemoryDescriptor *)self capacity];
      if (v10 == capacity)
      {
        return 1;
      }

      v13 = _AFKUserLog(capacity);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        regID = [(AFKMemoryDescriptor *)self regID];
        v15 = v17;
        capacity2 = [(AFKMemoryDescriptor *)self capacity];
        *buf = 134218496;
        v20 = regID;
        v21 = 2048;
        v22 = v15;
        v23 = 2048;
        v24 = capacity2;
        _os_log_error_impl(&dword_23C487000, v13, OS_LOG_TYPE_ERROR, "0x%llx: IOConnectMapMemory size mismatch:0x%zx,0x%zx", buf, 0x20u);
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kFreeMethod:0x%x", v3, v4);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    manager = [(AFKMemoryDescriptor *)self manager];
    manager2 = [equalCopy manager];
    if ([manager isEqual:manager2])
    {
      token = [(AFKMemoryDescriptor *)self token];
      v8 = token == [equalCopy token];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLength:(unint64_t)length
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = length;
  manager = [(AFKMemoryDescriptor *)self manager];
  v6 = IOConnectCallScalarMethod([manager connect], 2u, input, 2u, 0, 0);

  if (v6)
  {
    v8 = _AFKUserLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor setLength:];
    }
  }

  else
  {
    self->_cachedLength = length;
  }
}

- (unint64_t)length
{
  input[1] = *MEMORY[0x277D85DE8];
  result = self->_cachedLength;
  if (!result)
  {
    input[0] = [(AFKMemoryDescriptor *)self token];
    outputCnt = 1;
    manager = [(AFKMemoryDescriptor *)self manager];
    v5 = IOConnectCallScalarMethod([manager connect], 3u, input, 1u, &output, &outputCnt);

    if (v5 || outputCnt != 1)
    {
      v7 = _AFKUserLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        regID = [(AFKMemoryDescriptor *)self regID];
        *buf = 134218496;
        v11 = regID;
        v12 = 1024;
        v13 = v5;
        v14 = 1024;
        v15 = outputCnt;
        _os_log_error_impl(&dword_23C487000, v7, OS_LOG_TYPE_ERROR, "0x%llx: kGetLengthMethod:0x%x cnt:%u", buf, 0x18u);
      }

      return 0;
    }

    else
    {
      result = output;
      self->_cachedLength = output;
    }
  }

  return result;
}

- (int)assertPower:(BOOL)power
{
  powerCopy = power;
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = powerCopy;
  manager = [(AFKMemoryDescriptor *)self manager];
  v6 = IOConnectCallScalarMethod([manager connect], 0xAu, input, 2u, 0, 0);

  if (v6)
  {
    v9 = _AFKUserLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor assertPower:];
    }
  }

  return v6;
}

- (int)assumeControl
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  manager = [(AFKMemoryDescriptor *)self manager];
  v4 = IOConnectCallScalarMethod([manager connect], 4u, input, 1u, 0, 0);

  if (v4)
  {
    v7 = _AFKUserLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor assumeControl];
    }
  }

  return v4;
}

- (int)releaseControl:(BOOL)control
{
  controlCopy = control;
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = [(AFKMemoryDescriptor *)self token];
  input[1] = controlCopy;
  manager = [(AFKMemoryDescriptor *)self manager];
  v6 = IOConnectCallScalarMethod([manager connect], 5u, input, 2u, 0, 0);

  if (v6)
  {
    v9 = _AFKUserLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKMemoryDescriptor *)self regID];
      [AFKMemoryDescriptor releaseControl:];
    }
  }

  return v6;
}

- (int)readBytes:(void *)bytes size:(unint64_t)size fromOffset:(unint64_t)offset
{
  v9 = -536870206;
  if (!__CFADD__(offset, size) && offset + size <= OUTLINED_FUNCTION_4(self, a2))
  {
    memcpy(v7, ([v8 buffer] + v6), v5);
    return 0;
  }

  return v9;
}

- (int)writeBytes:(const void *)bytes size:(unint64_t)size toOffset:(unint64_t)offset
{
  v9 = -536870206;
  if (!__CFADD__(offset, size) && offset + size <= OUTLINED_FUNCTION_4(self, a2))
  {
    memcpy(([v8 buffer] + v6), v7, v5);
    return 0;
  }

  return v9;
}

- (void)initWithManager:capacity:buffer:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kCreateMethod:0x%x", v3, v4);
}

- (void)mapDescriptor
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOConnectMapMemory:0x%x", v3, v4);
}

- (void)setLength:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kSetLengthMethod:0x%x", v3, v4);
}

- (void)assertPower:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kAssertPowerMethod:0x%x", v3, v4);
}

- (void)assumeControl
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kAssumeMethod:0x%x", v3, v4);
}

- (void)releaseControl:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kReleaseMethod:0x%x", v3, v4);
}

@end