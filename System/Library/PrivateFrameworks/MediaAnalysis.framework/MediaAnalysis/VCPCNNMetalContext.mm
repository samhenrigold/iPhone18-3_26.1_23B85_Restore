@interface VCPCNNMetalContext
+ (id)sharedCommandQueue;
- (id)initNewContext:(BOOL)context;
- (int)execute;
@end

@implementation VCPCNNMetalContext

+ (id)sharedCommandQueue
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = [v2 sharedInstanceWithIdentifier:@"MTLCommandQueue" andCreationBlock:&__block_literal_global_91];

  return v3;
}

id __40__VCPCNNMetalContext_sharedCommandQueue__block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  v1 = [v0 newCommandQueue];

  return v1;
}

- (id)initNewContext:(BOOL)context
{
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = VCPCNNMetalContext;
  v4 = [(VCPCNNMetalContext *)&v22 init];
  v6 = v4;
  if (v4 && SocType(v4, v5) != 246)
  {
    if (contextCopy)
    {
      sharedCommandQueue = [objc_opt_class() sharedCommandQueue];
      commandQueue = v6->_commandQueue;
      v6->_commandQueue = sharedCommandQueue;

      device = [(MTLCommandQueue *)v6->_commandQueue device];
      device = v6->_device;
      v6->_device = device;

      v11 = v6->_commandQueue;
      objc_sync_enter(v11);
      commandBuffer = [(MTLCommandQueue *)v6->_commandQueue commandBuffer];
      commandBuffer = v6->_commandBuffer;
      v6->_commandBuffer = commandBuffer;

      objc_sync_exit(v11);
    }

    else
    {
      v14 = MTLCreateSystemDefaultDevice();
      v15 = v6->_device;
      v6->_device = v14;

      newCommandQueue = [(MTLDevice *)v6->_device newCommandQueue];
      v17 = v6->_commandQueue;
      v6->_commandQueue = newCommandQueue;

      commandBuffer2 = [(MTLCommandQueue *)v6->_commandQueue commandBuffer];
      v11 = v6->_commandBuffer;
      v6->_commandBuffer = commandBuffer2;
    }

    if (v6->_commandBuffer)
    {
      MEMORY[0x1CCA951B0](0.0);
    }
  }

  v19 = v6->_device;
  if (v19)
  {
    v19 = v6->_commandQueue;
    if (v19)
    {
      if (v6->_commandBuffer)
      {
        v19 = v6;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  v20 = v19;

  return v20;
}

- (int)execute
{
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  [(MTLCommandBuffer *)self->_commandBuffer waitUntilCompleted];
  v3 = self->_commandQueue;
  objc_sync_enter(v3);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = commandBuffer;

  if (self->_commandBuffer)
  {
    MEMORY[0x1CCA951B0](0.0);
  }

  objc_sync_exit(v3);

  if (self->_commandBuffer)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

@end