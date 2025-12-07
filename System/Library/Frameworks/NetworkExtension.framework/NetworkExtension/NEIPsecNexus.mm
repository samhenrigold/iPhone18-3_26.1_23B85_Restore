@interface NEIPsecNexus
- (BOOL)setDefaultInputHandler:(nw_protocol *)handler;
- (NEIPsecNexus)initWithName:(id)name delegate:(id)delegate enableWithChannelCount:(unsigned int)count netifRingSize:(unsigned int)size kernelPipeTxRingSize:(unsigned int)ringSize kernelPipeRxRingSize:(unsigned int)rxRingSize;
- (NEIPsecNexus)initWithName:(id)name delegate:(id)delegate enableWithChannelCount:(unsigned int)count netifRingSize:(unsigned int)size kernelPipeTxRingSize:(unsigned int)ringSize kernelPipeRxRingSize:(unsigned int)rxRingSize execUUID:(id)d;
- (NEIPsecNexus)initWithName:(id)name delegate:(id)delegate shouldCreateKernelChannel:(BOOL)channel;
- (uint64_t)initializeWithCount:(void *)count;
- (void)setRemotePacketProxy:(id)proxy;
@end

@implementation NEIPsecNexus

- (void)setRemotePacketProxy:(id)proxy
{
  proxyCopy = proxy;
  [(NEInternetNexus *)self setPacketProxy:proxyCopy];
  if (proxyCopy)
  {
    -[NEIPsecNexus setDefaultInputHandler:](self, "setDefaultInputHandler:", [proxyCopy protocol]);
    if (self)
    {
      Property = objc_getProperty(self, v5, 112, 1);
      self = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 8, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    protocol_handler = nw_channel_get_protocol_handler();

    if (protocol_handler)
    {
      [proxyCopy setDefaultOutputProtocolHandler:protocol_handler];
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Could not get kernel channel protocol", v11, 2u);
      }
    }
  }
}

- (BOOL)setDefaultInputHandler:(nw_protocol *)handler
{
  v13 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    if (self)
    {
      Property = objc_getProperty(self, a2, 112, 1);
      v6 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 8, 1);
      }
    }

    else
    {
      v6 = 0;
      Property = 0;
    }

    v7 = Property;
    protocol_handler = nw_channel_get_protocol_handler();

    if (protocol_handler)
    {
      (**(protocol_handler + 24))(protocol_handler, handler);
      return 1;
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Could not get kernel channel protocol", &v11, 2u);
    }
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[NEIPsecNexus setDefaultInputHandler:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null inputHandler", &v11, 0xCu);
    }
  }

  return 0;
}

- (NEIPsecNexus)initWithName:(id)name delegate:(id)delegate enableWithChannelCount:(unsigned int)count netifRingSize:(unsigned int)size kernelPipeTxRingSize:(unsigned int)ringSize kernelPipeRxRingSize:(unsigned int)rxRingSize execUUID:(id)d
{
  v9 = *&count;
  v16.receiver = self;
  v16.super_class = NEIPsecNexus;
  v10 = [(NENexus *)&v16 initWithLevel:2 name:name virtualInterfaceType:2 delegate:delegate channelCount:*&count netifRingSize:*&size kernelPipeTxRingSize:__PAIR64__(rxRingSize kernelPipeRxRingSize:ringSize) execUUID:d];
  v11 = v10;
  if (!v10)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super initWithLevel:name:delegate:] failed", buf, 2u);
    }

    goto LABEL_7;
  }

  if (![(NEIPsecNexus *)v10 initializeWithCount:v9])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v11;
LABEL_8:

  return v12;
}

- (uint64_t)initializeWithCount:(void *)count
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  if (![count virtualInterface])
  {
    return 1;
  }

  v4 = NEVirtualInterfaceCopyNexusInstances([count virtualInterface], v2);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count == v2)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v2)
      {
        v8 = 0;
        v9 = *MEMORY[0x1E695E480];
        v10 = v2;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
          v12 = CFUUIDCreateString(v9, ValueAtIndex);
          v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
          [v7 addObject:v13];

          ++v8;
        }

        while (v10 != v8);
      }

      CFRelease(v5);
      [count setNexusInstances:v7];

      return 1;
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17[0] = 67109634;
      v17[1] = v2;
      v18 = 1024;
      v19 = Count;
      v20 = 2112;
      v21 = v5;
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "Expected to create %u channels, created %u:%@", v17, 0x18u);
    }

    CFRelease(v5);
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "NEVirtualInterfaceCopyNexusInstances failed", v17, 2u);
    }
  }

  return 0;
}

- (NEIPsecNexus)initWithName:(id)name delegate:(id)delegate enableWithChannelCount:(unsigned int)count netifRingSize:(unsigned int)size kernelPipeTxRingSize:(unsigned int)ringSize kernelPipeRxRingSize:(unsigned int)rxRingSize
{
  v8 = *&count;
  v15.receiver = self;
  v15.super_class = NEIPsecNexus;
  v9 = [(NENexus *)&v15 initWithLevel:2 name:name virtualInterfaceType:2 delegate:delegate channelCount:*&count netifRingSize:*&size kernelPipeTxRingSize:__PAIR64__(rxRingSize kernelPipeRxRingSize:ringSize) execUUID:0];
  v10 = v9;
  if (!v9)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "[super initWithLevel:name:delegate:] failed", buf, 2u);
    }

    goto LABEL_7;
  }

  if (![(NEIPsecNexus *)v9 initializeWithCount:v8])
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v10;
LABEL_8:

  return v11;
}

- (NEIPsecNexus)initWithName:(id)name delegate:(id)delegate shouldCreateKernelChannel:(BOOL)channel
{
  channelCopy = channel;
  v19.receiver = self;
  v19.super_class = NEIPsecNexus;
  v6 = [(NENexus *)&v19 initWithLevel:2 name:name virtualInterfaceType:2 delegate:delegate channelCount:channel];
  v7 = v6;
  if (!v6)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *v18 = 0;
    v17 = "[super initWithLevel:name:delegate:] failed";
    goto LABEL_12;
  }

  if (channelCopy)
  {
    Channel = NEVirtualInterfaceCreateChannel([(NENexus *)v6 virtualInterface]);
    if (Channel)
    {
      v10 = Channel;
      v11 = objc_getProperty(v7, v9, 112, 1);
      v13 = v11;
      if (v11)
      {
        objc_setProperty_atomic(v11, v12, v10, 8);
      }

      goto LABEL_7;
    }

    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v14 = 0;
      goto LABEL_8;
    }

    *v18 = 0;
    v17 = "NEVirtualInterfaceCreateChannel failed";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, v17, v18, 2u);
    goto LABEL_10;
  }

LABEL_7:
  v14 = v7;
LABEL_8:

  return v14;
}

@end