@interface MTLCountersTraceBlitCommandEncoder
- (id)init:(BinaryBuffer *)init;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)synchronizeResource:(id)resource;
- (void)synchronizeTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)updateFence:(id)fence;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersTraceBlitCommandEncoder

- (id)init:(BinaryBuffer *)init
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceBlitCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:init flags:1];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  v21[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v21[1] = v21;
  __src = 1;
  v9 = 109;
  bufferCopy = buffer;
  v11 = 100;
  offsetCopy = offset;
  v13 = 109;
  toBufferCopy = toBuffer;
  v15 = 100;
  destinationOffsetCopy = destinationOffset;
  v17 = 100;
  sizeCopy = size;
  v19 = 16;
  v21[0] = &v20;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x30uLL);
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  offsetCopy = offset;
  bufferCopy = buffer;
  rowCopy = row;
  textureCopy = texture;
  imageCopy = image;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,MTLSize,objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin>(self->super._stream, 1, &bufferCopy, &offsetCopy, &rowCopy, &imageCopy, size, &textureCopy, &slice, &level, origin);
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  offsetCopy = offset;
  bufferCopy = buffer;
  imageCopy = image;
  rowCopy = row;
  textureCopy = texture;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,MTLSize,objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,unsigned long>(self->super._stream, 2, &bufferCopy, &offsetCopy, &rowCopy, &imageCopy, size, &textureCopy, &slice, &level, origin, &options);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  toTextureCopy = toTexture;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*>(self->super._stream, 5, &textureCopy, &sliceCopy, &levelCopy, origin, size, &toTextureCopy, &destinationSlice, &destinationLevel, destinationOrigin);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  stream = self->super._stream;
  toTextureCopy = toTexture;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*,unsigned long>(stream, 6, &textureCopy, &sliceCopy, &levelCopy, origin, size, &toTextureCopy, &destinationSlice, &destinationLevel, destinationOrigin, &options);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  bufferCopy = buffer;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long>(self->super._stream, 3, &textureCopy, &sliceCopy, &levelCopy, origin, size, &bufferCopy, &offset, &row, &image);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  stream = self->super._stream;
  bufferCopy = buffer;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto9MTLBuffer}*,unsigned long,unsigned long,unsigned long,unsigned long>(stream, 4, &textureCopy, &sliceCopy, &levelCopy, origin, size, &bufferCopy, &offset, &row, &image, &options);
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value
{
  rangeCopy = range;
  bufferCopy = buffer;
  valueCopy = value;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,_NSRange,unsigned char>(self->super._stream, 7, &bufferCopy, &rangeCopy, &valueCopy);
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  rangeCopy = range;
  bufferCopy = buffer;
  pattern4Copy = pattern4;
  BinaryBuffer::Append<objc_object  {objcproto9MTLBuffer}*,_NSRange,unsigned int>(self->super._stream, 8, &bufferCopy, &rangeCopy, &pattern4Copy);
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  levelCopy = level;
  textureCopy = texture;
  bytesCopy = bytes;
  sliceCopy = slice;
  lengthCopy = length;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,void const*,unsigned long>(self->super._stream, 9, &textureCopy, &levelCopy, &sliceCopy, region, &bytesCopy, &lengthCopy);
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  colorCopy = color;
  levelCopy = level;
  textureCopy = texture;
  sliceCopy = slice;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,MTLClearColor>(self->super._stream, 10, &textureCopy, &levelCopy, &sliceCopy, region, &colorCopy);
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  colorCopy = color;
  levelCopy = level;
  textureCopy = texture;
  formatCopy = format;
  sliceCopy = slice;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLRegion,MTLClearColor,MTLPixelFormat>(self->super._stream, 11, &textureCopy, &levelCopy, &sliceCopy, region, &colorCopy, &formatCopy);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  destinationSliceCopy = destinationSlice;
  toTextureCopy = toTexture;
  stream = self->super._stream;
  destinationLevelCopy = destinationLevel;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,unsigned long,unsigned long>(stream, 12, &textureCopy, &sliceCopy, &levelCopy, &toTextureCopy, &destinationSliceCopy, &destinationLevelCopy, &count, &levelCount);
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  v12[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v12[1] = v12;
  __src = 3329;
  v6 = 109;
  textureCopy = texture;
  v8 = 109;
  toTextureCopy = toTexture;
  v10 = 16;
  v12[0] = v11;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x15uLL);
}

- (void)generateMipmapsForTexture:(id)texture
{
  v9[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v9[1] = v9;
  __src = 3585;
  v5 = 109;
  textureCopy = texture;
  v7 = 16;
  v9[0] = &v8;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
}

- (void)synchronizeResource:(id)resource
{
  v9[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v9[1] = v9;
  __src = 3841;
  v5 = 109;
  resourceCopy = resource;
  v7 = 16;
  v9[0] = &v8;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
}

- (void)synchronizeTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
{
  v15[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v15[1] = v15;
  __src = 4097;
  v7 = 109;
  textureCopy = texture;
  v9 = 100;
  sliceCopy = slice;
  v11 = 100;
  levelCopy = level;
  v13 = 16;
  v15[0] = &v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
}

- (void)updateFence:(id)fence
{
  v9[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v9[1] = v9;
  __src = 29697;
  v5 = 109;
  fenceCopy = fence;
  v7 = 16;
  v9[0] = &v8;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
}

- (void)waitForFence:(id)fence
{
  v9[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v9[1] = v9;
  __src = 32257;
  v5 = 109;
  fenceCopy = fence;
  v7 = 16;
  v9[0] = &v8;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  v9[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v9[1] = v9;
  __src = 4353;
  v5 = 109;
  accessCopy = access;
  v7 = 16;
  v9[0] = &v8;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  v15[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v15[1] = v15;
  __src = 4609;
  v7 = 109;
  accessCopy = access;
  v9 = 100;
  sliceCopy = slice;
  v11 = 100;
  levelCopy = level;
  v13 = 16;
  v15[0] = &v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  v9[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v9[1] = v9;
  __src = 4865;
  v5 = 109;
  accessCopy = access;
  v7 = 16;
  v9[0] = &v8;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0xCuLL);
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  v15[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v15[1] = v15;
  __src = 5121;
  v7 = 109;
  accessCopy = access;
  v9 = 100;
  sliceCopy = slice;
  v11 = 100;
  levelCopy = level;
  v13 = 16;
  v15[0] = &v14;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
}

- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset
{
  levelCopy = level;
  sliceCopy = slice;
  resetCountersCopy = resetCounters;
  bufferCopy = buffer;
  BinaryBuffer::Append<MTLRegion,unsigned long,unsigned long,BOOL,objc_object  {objcproto9MTLBuffer}*,unsigned long>(self->super._stream, 21, region, &levelCopy, &sliceCopy, &resetCountersCopy, &bufferCopy, &offset);
}

- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  v10[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v10[1] = v10;
  __src = 5633;
  v8 = 16;
  v10[0] = v9;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 3uLL);
}

@end