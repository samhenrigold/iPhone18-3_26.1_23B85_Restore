@interface RGCachedComputeCommandEncoder
- (RGCachedComputeCommandEncoder)init;
- (void)beginEncodingWithCommandBuffer:(id)buffer label:(id)label;
- (void)dealloc;
- (void)dispatch:(id)dispatch onTexture2D:(id)d;
- (void)dispatch:(id)dispatch threadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatch:(id)dispatch threadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchOnGrid2D:(id *)d;
- (void)dispatchOnGrid3D:(id *)d;
- (void)dispatchOnTexture2D:(id)d;
- (void)dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid:(id)grid;
- (void)dispatchOnTexture3D:(id)d;
- (void)dispatchOnTextureCube:(id)cube;
- (void)dispatchOnVertices:(id)vertices vertexCount:(unsigned int)count;
- (void)dispatchOne:(id)one;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)endEncoding;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferSlice:(id)slice atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setEncoder:(id)encoder;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
@end

@implementation RGCachedComputeCommandEncoder

- (RGCachedComputeCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = RGCachedComputeCommandEncoder;
  return [(RGCachedComputeCommandEncoder *)&v3 init];
}

- (void)dealloc
{
  objc_msgSend_setEncoder_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = RGCachedComputeCommandEncoder;
  [(RGCachedComputeCommandEncoder *)&v3 dealloc];
}

- (void)beginEncodingWithCommandBuffer:(id)buffer label:(id)label
{
  v6 = objc_msgSend_computeCommandEncoder(buffer, a2, buffer);
  objc_msgSend_setEncoder_(self, v7, v6);
  encoder = self->_encoder;

  objc_msgSend_setLabel_(encoder, v8, label);
}

- (void)setEncoder:(id)encoder
{
  encoderCopy = encoder;

  self->_encoder = encoder;

  objc_msgSend_resetCache(self, v6, v7);
}

- (void)endEncoding
{
  objc_msgSend_endEncoding(self->_encoder, a2, v2);

  objc_msgSend_setEncoder_(self, v4, 0);
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  v6 = *threadgroups;
  v5 = *threadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, a2, &v6, &v5);
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  v6 = *threadgroup;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(encoder, a2, buffer, offset, &v6);
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  encoder = self->_encoder;
  v6 = *threads;
  v5 = *threadgroup;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(encoder, a2, &v6, &v5);
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self->_cache.geometry + index) == buffer)
  {
    if (*(&self[1]._cache.node + index) != offset)
    {
      *(&self[1]._cache.node + index) = offset;
      objc_msgSend_setBufferOffset_atIndex_(self->_encoder, a2, offset, index);
    }
  }

  else
  {
    *(&self->_cache.geometry + index) = buffer;
    *(&self[1]._cache.node + index) = offset;
    objc_msgSend_setBuffer_offset_atIndex_(self->_encoder, a2, buffer);
  }
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self[1]._cache.node + index) != offset)
  {
    *(&self[1]._cache.node + index) = offset;
    objc_msgSend_setBufferOffset_atIndex_(self->_encoder, a2, offset);
  }
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v11 = *buffers++;
      v10 = v11;
      v12 = *offsets++;
      objc_msgSend_setBuffer_offset_atIndex_(self, a2, v10, v12, location++);
      --length;
    }

    while (length);
  }
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v5 = &self->super.isa + index;
  v5[3] = 0;
  v5[34] = 0;
  objc_msgSend_setBytes_length_atIndex_(self->_encoder, a2, bytes, length);
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v6 = &self->super.isa + index;
  v6[3] = 0;
  v6[34] = 0;
  MEMORY[0x1EEE66B58](self->_encoder, sel_setBytes_length_attributeStride_atIndex_, bytes);
}

- (void)setComputePipelineState:(id)state
{
  if (self->_cache.rasterizerStates != state)
  {
    self->_cache.rasterizerStates = state;
    objc_msgSend_setComputePipelineState_(self->_encoder, a2, state);
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  if (*(&self[9]._cache.colorBufferWriteMask + index) != state)
  {
    *(&self[9]._cache.colorBufferWriteMask + index) = state;
    objc_msgSend_setSamplerState_atIndex_(self->_encoder, a2, state);
  }
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  memcpy(&self[9]._cache.colorBufferWriteMask + 8 * range.location, states, 8 * range.length);
  encoder = self->_encoder;

  MEMORY[0x1EEE66B58](encoder, sel_setSamplerStates_lodMinClamps_lodMaxClamps_withRange_, states);
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  memcpy(&self[9]._cache.colorBufferWriteMask + 8 * range.location, states, 8 * range.length);
  encoder = self->_encoder;

  objc_msgSend_setSamplerStates_withRange_(encoder, v8, states, location, length);
}

- (void)setStageInRegion:(id *)region
{
  encoder = self->_encoder;
  v4 = *&region->var0.var2;
  v5[0] = *&region->var0.var0;
  v5[1] = v4;
  v5[2] = *&region->var1.var1;
  objc_msgSend_setStageInRegion_(encoder, a2, v5);
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  if (*(&self[3]._cache.meshElement + index) != texture)
  {
    *(&self[3]._cache.meshElement + index) = texture;
    objc_msgSend_setTexture_atIndex_(self->_encoder, a2, texture);
  }
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    for (i = 0; i != length; ++i)
    {
      objc_msgSend_setTexture_atIndex_(self, a2, textures[i], i);
    }
  }
}

- (void)dispatch:(id)dispatch threadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  objc_msgSend_setComputePipelineState_(self, a2, dispatch);
  v10 = *threadgroups;
  v9 = *threadgroup;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(self, v8, &v10, &v9);
}

- (void)dispatch:(id)dispatch threadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  objc_msgSend_setComputePipelineState_(self, a2, dispatch);
  v11 = *threadgroup;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(self, v10, buffer, offset, &v11);
}

- (void)dispatchOne:(id)one
{
  objc_msgSend_setComputePipelineState_(self, a2, one);
  v7 = vdupq_n_s64(1uLL);
  v8 = 1;
  v5 = v7;
  v6 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(self, v4, &v7, &v5);
}

- (void)dispatchOnVertices:(id)vertices vertexCount:(unsigned int)count
{
  objc_msgSend_setComputePipelineState_(self, a2, vertices);
  encoder = self->_encoder;

  RGMTLComputeCommandEncoderDispatchOnGrid1D(encoder, vertices, count);
}

- (void)dispatch:(id)dispatch onTexture2D:(id)d
{
  v7 = objc_msgSend_width(d, a2, dispatch);
  v10 = objc_msgSend_height(d, v8, v9);
  objc_msgSend_setComputePipelineState_(self, v11, dispatch);
  encoder = self->_encoder;
  *&v13 = v7;
  *(&v13 + 1) = v10;
  v14 = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, dispatch, &v13, 1);
}

- (void)dispatchOnGrid2D:(id *)d
{
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v5 = *d;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, &v5, 1);
}

- (void)dispatchOnGrid3D:(id *)d
{
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v5 = *d;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, &v5.var0);
}

- (void)dispatchOnTexture2D:(id)d
{
  v5 = objc_msgSend_width(d, a2, d);
  v8 = objc_msgSend_height(d, v6, v7);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  *&v11 = v5;
  *(&v11 + 1) = v8;
  v12 = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, &v11, 1);
}

- (void)dispatchOnTexture2DWithoutOptimizedThreadGroupPerGrid:(id)grid
{
  v5 = objc_msgSend_width(grid, a2, grid);
  v8 = objc_msgSend_height(grid, v6, v7);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  *&v11 = v5;
  *(&v11 + 1) = v8;
  v12 = 1;
  RGMTLComputeCommandEncoderDispatchOnGrid2D(encoder, rasterizerStates, &v11, 0);
}

- (void)dispatchOnTexture3D:(id)d
{
  v5 = objc_msgSend_width(d, a2, d);
  v8 = objc_msgSend_height(d, v6, v7);
  v11 = objc_msgSend_depth(d, v9, v10);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v14[0] = v5;
  v14[1] = v8;
  v14[2] = v11;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, v14);
}

- (void)dispatchOnTextureCube:(id)cube
{
  v5 = objc_msgSend_width(cube, a2, cube);
  v8 = objc_msgSend_height(cube, v6, v7);
  encoder = self->_encoder;
  rasterizerStates = self->_cache.rasterizerStates;
  v11[0] = v5;
  v11[1] = v8;
  v11[2] = 6;
  RGMTLComputeCommandEncoderDispatchOnGrid3D(encoder, rasterizerStates, v11);
}

- (void)setBufferSlice:(id)slice atIndex:(unint64_t)index
{
  var1 = slice.var1;
  CFXBufferSliceGetMTLBuffer();

  objc_msgSend_setBuffer_offset_atIndex_(self, v8, v7, var1, index);
}

@end