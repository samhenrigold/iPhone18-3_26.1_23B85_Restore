@interface IOSurfaceWiringAssertion
- (IOSurfaceWiringAssertion)initWithIOSurfaceClient:(__IOSurfaceClient *)client;
- (void)dealloc;
@end

@implementation IOSurfaceWiringAssertion

- (IOSurfaceWiringAssertion)initWithIOSurfaceClient:(__IOSurfaceClient *)client
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = IOSurfaceWiringAssertion;
  v4 = [(IOSurfaceWiringAssertion *)&v7 init];
  MachPortWithOptions = IOSurfaceClientCreateMachPortWithOptions(client, 1uLL);
  v4->_mach_port = MachPortWithOptions;
  if (!MachPortWithOptions)
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  mach_port = self->_mach_port;
  if (mach_port)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], mach_port, 0, -1);
    self->_mach_port = 0;
  }

  v4.receiver = self;
  v4.super_class = IOSurfaceWiringAssertion;
  [(IOSurfaceWiringAssertion *)&v4 dealloc];
}

@end