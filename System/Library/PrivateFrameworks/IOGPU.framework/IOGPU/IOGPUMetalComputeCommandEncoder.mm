@interface IOGPUMetalComputeCommandEncoder
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
@end

@implementation IOGPUMetalComputeCommandEncoder

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  if ([(_MTLCommandEncoder *)self dispatchType]== 1)
  {
    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self memoryBarrierNotificationWithScope:scope];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    v7 = 0;
    do
    {
      ++resources;
      if (objc_opt_respondsToSelector())
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v7 |= v8;
      --countCopy;
    }

    while (countCopy);
  }

  else
  {
    v7 = 0;
  }

  [(IOGPUMetalComputeCommandEncoder *)self memoryBarrierWithScope:v7];
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(IOGPUMetalComputeCommandEncoder *)self setBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    visibleFunctionTable = [table visibleFunctionTable];

    [(IOGPUMetalComputeCommandEncoder *)self setVisibleFunctionTable:visibleFunctionTable atBufferIndex:index];
  }

  else
  {

    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12[1] = *MEMORY[0x1E69E9840];
  if (([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    if (length)
    {
      v9 = (v12 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = length;
      do
      {
        v11 = *tables++;
        *v9++ = [v11 visibleFunctionTable];
        --v10;
      }

      while (v10);
    }

    [(IOGPUMetalComputeCommandEncoder *)self setVisibleFunctionTables:v12 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  }

  else
  {

    [(IOGPUMetalComputeCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

@end