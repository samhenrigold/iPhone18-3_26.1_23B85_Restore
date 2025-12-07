@interface NEFlowDivertFileHandle
- (id)description;
- (id)dictionary;
- (id)getUnitForSocket:(int)socket;
- (id)initFlowDivertControlSocketWithParams:(BOOL)params order:(int)order;
- (id)initFlowDivertDataSocket;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation NEFlowDivertFileHandle

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  handle = [(NEFileHandle *)self handle];
  fileDescriptor = [handle fileDescriptor];
  controlUnit = [(NEFlowDivertFileHandle *)self controlUnit];
  v7 = [v3 stringWithFormat:@"Flow Divert socket (%d) control unit %@", fileDescriptor, controlUnit];

  return v7;
}

- (id)dictionary
{
  v11.receiver = self;
  v11.super_class = NEFlowDivertFileHandle;
  dictionary = [(NEFileHandle *)&v11 dictionary];
  controlUnit = [(NEFlowDivertFileHandle *)self controlUnit];
  xpc_dictionary_set_uint64(dictionary, "control-unit", [controlUnit unsignedLongLongValue]);

  keyMaterial = [(NEFlowDivertFileHandle *)self keyMaterial];
  v6 = [keyMaterial length];

  if (v6)
  {
    keyMaterial2 = [(NEFlowDivertFileHandle *)self keyMaterial];
    bytes = [keyMaterial2 bytes];
    keyMaterial3 = [(NEFlowDivertFileHandle *)self keyMaterial];
    xpc_dictionary_set_data(dictionary, "key-material", bytes, [keyMaterial3 length]);
  }

  return dictionary;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NEFlowDivertFileHandle;
  v5 = [(NEFileHandle *)&v14 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(dictionaryCopy, "control-unit");
    length = 0;
    data = xpc_dictionary_get_data(dictionaryCopy, "key-material", &length);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
    v9 = v5[3];
    v5[3] = v8;

    if (data)
    {
      if (length)
      {
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
        v11 = v5[4];
        v5[4] = v10;
      }
    }
  }

  return v5;
}

- (id)initFlowDivertDataSocket
{
  KernelControlSocket = NEHelperGetKernelControlSocket();
  if ((KernelControlSocket & 0x80000000) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v4 = KernelControlSocket;
    v10.receiver = self;
    v10.super_class = NEFlowDivertFileHandle;
    v5 = [(NEFileHandle *)&v10 initWithFileDescriptor:KernelControlSocket launchOwnerWhenReadable:1];
    if (v5)
    {
      v6 = [NEFlowDivertFileHandle getUnitForSocket:v4];
      controlUnit = v5->_controlUnit;
      v5->_controlUnit = v6;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)getUnitForSocket:(int)socket
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 32;
  v7 = 0;
  v8 = 0u;
  if (getpeername(socket, &v7, &v6))
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v10 = v5;
      _os_log_error_impl(&dword_1BA83C000, v1, OS_LOG_TYPE_ERROR, "getpeername on control socket failed: %s", buf, 0xCu);
    }

    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&v7.sa_data[6]];
  }

  return v2;
}

- (id)initFlowDivertControlSocketWithParams:(BOOL)params order:(int)order
{
  v22 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  KernelControlSocket = NEHelperGetKernelControlSocket();
  if ((KernelControlSocket & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v6 = KernelControlSocket;
  v17.receiver = self;
  v17.super_class = NEFlowDivertFileHandle;
  self = [(NEFileHandle *)&v17 initWithFileDescriptor:KernelControlSocket launchOwnerWhenReadable:1];
  if (!self)
  {
    goto LABEL_10;
  }

  v7 = [NEFlowDivertFileHandle getUnitForSocket:v6];
  controlUnit = self->_controlUnit;
  self->_controlUnit = v7;

  arc4random_buf(__buf, 0x100uLL);
  v9 = NEFlowTLVMsgCreate();
  NEFlowTLVAdd();
  nelog_is_debug_logging_enabled();
  NEFlowTLVAdd();
  NEFlowTLVAdd();
  NEFlowTLVAdd();
  v10 = send(v6, v9, 0, 0);
  if (v10 < 0)
  {
    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136315138;
      v20 = v16;
      _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, "Failed to send the FLOW_DIVERT_PKT_GROUP_INIT message: %s", buf, 0xCu);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__buf length:256];
    p_super = &self->_keyMaterial->super;
    self->_keyMaterial = v11;
  }

  if (v9)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v9);
  }

  if (v10 < 0)
  {
LABEL_11:
    selfCopy = 0;
  }

  else
  {
LABEL_10:
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

@end