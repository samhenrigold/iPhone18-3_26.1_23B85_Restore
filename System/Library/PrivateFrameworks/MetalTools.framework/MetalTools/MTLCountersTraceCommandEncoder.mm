@interface MTLCountersTraceCommandEncoder
- (_NSRange)segment;
- (id)init:(BinaryBuffer *)init flags:(unint64_t)flags;
- (void)popDebugGroup;
@end

@implementation MTLCountersTraceCommandEncoder

- (id)init:(BinaryBuffer *)init flags:(unint64_t)flags
{
  v9.receiver = self;
  v9.super_class = MTLCountersTraceCommandEncoder;
  v6 = [(MTLCountersTraceCommandEncoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_stream = init;
    v6->_flags = flags;
    v6->_segment.location = (*init->_vptr$AppendBuffer)(init);
  }

  return v7;
}

- (void)popDebugGroup
{
  v6[2] = *MEMORY[0x277D85DE8];
  stream = self->_stream;
  v6[1] = v6;
  __src = 29185;
  v4 = 16;
  v6[0] = v5;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 3uLL);
}

- (_NSRange)segment
{
  length = self->_segment.length;
  location = self->_segment.location;
  result.length = length;
  result.location = location;
  return result;
}

@end