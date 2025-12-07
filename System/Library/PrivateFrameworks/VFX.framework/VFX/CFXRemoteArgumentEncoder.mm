@interface CFXRemoteArgumentEncoder
- (CFXRemoteArgumentEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)builder encoder:(id)encoder;
- (void)dealloc;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range;
@end

@implementation CFXRemoteArgumentEncoder

- (CFXRemoteArgumentEncoder)initWithRemoteFrameBuilder:(__CFXRemoteFrameBuilder *)builder encoder:(id)encoder
{
  v11.receiver = self;
  v11.super_class = CFXRemoteArgumentEncoder;
  v6 = [(CFXRemoteArgumentEncoder *)&v11 init];
  v7 = v6;
  if (v6)
  {
    builder = v6->_builder;
    if (builder != builder)
    {
      if (builder)
      {
        CFRelease(builder);
        v7->_builder = 0;
      }

      if (builder)
      {
        v9 = CFRetain(builder);
      }

      else
      {
        v9 = 0;
      }

      v7->_builder = v9;
    }

    v7->_encoder = encoder;
  }

  return v7;
}

- (void)dealloc
{
  sub_1AF22DD90(self->_builder);
  builder = self->_builder;
  if (builder)
  {
    CFRelease(builder);
    self->_builder = 0;
  }

  v4.receiver = self;
  v4.super_class = CFXRemoteArgumentEncoder;
  [(CFXRemoteArgumentEncoder *)&v4 dealloc];
}

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset
{
  offsetCopy = offset;
  objc_msgSend_setArgumentBuffer_offset_(self->_encoder, a2, buffer);
  builder = self->_builder;
  v10 = objc_msgSend_encodedLength(self->_encoder, v8, v9);

  sub_1AF22DC08(builder, buffer, offsetCopy, v10);
}

- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element
{
  v5 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  indexCopy = index;
  offsetCopy = offset;
  objc_msgSend_setBuffer_offset_atIndex_(self->_encoder, a2, buffer);
  builder = self->_builder;

  sub_1AF22DC6C(builder, buffer, offsetCopy, indexCopy);
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  buffersCopy = buffers;
  objc_msgSend_setBuffers_offsets_withRange_(self->_encoder, a2, buffers);
  for (; length; --length)
  {
    v11 = *buffersCopy++;
    v10 = v11;
    v12 = *offsets++;
    sub_1AF22DC6C(self->_builder, v10, v12, location++);
  }
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  indexCopy = index;
  objc_msgSend_setSamplerState_atIndex_(self->_encoder, a2, state);
  builder = self->_builder;

  sub_1AF22DD34(builder, state, indexCopy);
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  statesCopy = states;
  objc_msgSend_setSamplerStates_withRange_(self->_encoder, a2, states);
  for (; length; --length)
  {
    v8 = *statesCopy++;
    sub_1AF22DD34(self->_builder, v8, location++);
  }
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  indexCopy = index;
  objc_msgSend_setTexture_atIndex_(self->_encoder, a2, texture);
  builder = self->_builder;

  sub_1AF22DCD8(builder, texture, indexCopy);
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  texturesCopy = textures;
  objc_msgSend_setTextures_withRange_(self->_encoder, a2, textures);
  for (; length; --length)
  {
    v8 = *texturesCopy++;
    sub_1AF22DCD8(self->_builder, v8, location++);
  }
}

- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDEC410(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

@end