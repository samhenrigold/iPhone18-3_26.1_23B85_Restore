@interface MTLCountersTraceResourceStateCommandEncoder
- (id)init:(BinaryBuffer *)init;
- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersTraceResourceStateCommandEncoder

- (id)init:(BinaryBuffer *)init
{
  v4.receiver = self;
  v4.super_class = MTLCountersTraceResourceStateCommandEncoder;
  return [(MTLCountersTraceCommandEncoder *)&v4 init:init flags:8];
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  v22[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v22[1] = v22;
  __src = -32511;
  v10 = 100;
  modeCopy = mode;
  v12 = 109;
  regionsCopy = regions;
  v14 = 109;
  levelsCopy = levels;
  v16 = 109;
  slicesCopy = slices;
  v18 = 100;
  numRegionsCopy = numRegions;
  v20 = 16;
  v22[0] = &v21;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x30uLL);
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  modeCopy = mode;
  sliceCopy = slice;
  levelCopy = level;
  BinaryBuffer::Append<MTLSparseTextureMappingMode,MTLRegion,unsigned long,unsigned long>(self->super._stream, 128, &modeCopy, region, &levelCopy, &sliceCopy);
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  v16[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v16[1] = v16;
  __src = -32255;
  v8 = 100;
  modeCopy = mode;
  v10 = 109;
  bufferCopy = buffer;
  v12 = 100;
  offsetCopy = offset;
  v14 = 16;
  v16[0] = &v15;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x1EuLL);
}

- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles
{
  v24[2] = *MEMORY[0x277D85DE8];
  stream = self->super._stream;
  v24[1] = v24;
  __src = -31999;
  v10 = 109;
  textureCopy = texture;
  v12 = 100;
  levelCopy = level;
  v14 = 100;
  sliceCopy = slice;
  v16 = 109;
  bufferCopy = buffer;
  v18 = 100;
  offsetCopy = offset;
  v20 = 100;
  tilesCopy = tiles;
  v22 = 16;
  v24[0] = v23;
  AppendBuffer::WriteBytes(stream, &stream->stream, &__src, 0x39uLL);
}

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  sliceCopy = slice;
  textureCopy = texture;
  levelCopy = level;
  toTextureCopy = toTexture;
  BinaryBuffer::Append<objc_object  {objcproto10MTLTexture}*,unsigned long,unsigned long,MTLOrigin,MTLSize,objc_object  {objcproto10MTLTexture},unsigned long,unsigned long,objc_object  {objcproto10MTLTexture}*>(self->super._stream, 132, &textureCopy, &sliceCopy, &levelCopy, origin, size, &toTextureCopy, &destinationSlice, &destinationLevel, destinationOrigin);
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

@end