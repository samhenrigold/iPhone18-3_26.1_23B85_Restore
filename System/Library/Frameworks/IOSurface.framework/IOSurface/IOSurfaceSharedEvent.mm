@interface IOSurfaceSharedEvent
- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s;
- (IOSurfaceSharedEvent)initWithCoder:(id)coder;
- (IOSurfaceSharedEvent)initWithMachPort:(unsigned int)port;
- (IOSurfaceSharedEvent)initWithOptions:(unint64_t)options;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSignaledValue:(unint64_t)value;
@end

@implementation IOSurfaceSharedEvent

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  mach_port_mod_refs(*MEMORY[0x1E69E9A60], self->_eventPort, 0, -1);
  v3.receiver = self;
  v3.super_class = IOSurfaceSharedEvent;
  [(IOSurfaceSharedEvent *)&v3 dealloc];
}

- (IOSurfaceSharedEvent)initWithOptions:(unint64_t)options
{
  output[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = IOSurfaceSharedEvent;
  v4 = [(IOSurfaceSharedEvent *)&v14 init];
  if (v4)
  {
    input = options;
    outputCnt = 2;
    v5 = _ioSurfaceConnect();
    if (IOConnectCallMethod(v5, 0x24u, &input, 1u, 0, 0, output, &outputCnt, 0, 0) || (v6 = output[0], v7 = output[1], *(v4 + 2) = output[0], *(v4 + 2) = v7, v11 = v6, *v15 = 0u, v16 = 0u, v10 = 4, v8 = _ioSurfaceConnect(), IOConnectCallMethod(v8, 0x26u, &v11, 1u, 0, 0, v15, &v10, 0, 0)))
    {

      return 0;
    }

    else
    {
      *(v4 + 24) = v16;
    }
  }

  return v4;
}

- (IOSurfaceSharedEvent)initWithMachPort:(unsigned int)port
{
  v11 = *MEMORY[0x1E69E9840];
  mach_port_mod_refs(*MEMORY[0x1E69E9A60], port, 0, 1);
  self->_eventPort = port;
  input = port;
  *output = 0u;
  v10 = 0u;
  outputCnt = 4;
  v5 = _ioSurfaceConnect();
  if (IOConnectCallMethod(v5, 0x26u, &input, 1u, 0, 0, output, &outputCnt, 0, 0))
  {

    return 0;
  }

  else
  {
    self->_signaledValue = output[1];
    *&self->_globalTraceObjectID = v10;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be encoded by an NSXPCCoder."];
  }

  v4 = xpc_mach_send_create();
  [coder encodeXPCObject:v4 forKey:@"IOSurface.port"];

  xpc_release(v4);
}

- (IOSurfaceSharedEvent)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  if ([coder decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"IOSurface.port"] && (right = xpc_mach_send_get_right(), right))
  {

    return [(IOSurfaceSharedEvent *)self initWithMachPort:right];
  }

  else
  {

    return 0;
  }
}

- (void)setSignaledValue:(unint64_t)value
{
  v5 = _ioSurfaceConnect();
  eventPort = self->_eventPort;

  IOConnectTrap2(v5, 7u, eventPort, value);
}

- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s
{
  if (*self->_signaledValue >= value)
  {
    return 1;
  }

  v7 = _ioSurfaceConnect();
  return IOConnectTrap3(v7, 6u, self->_eventPort, value, s) == 0;
}

@end